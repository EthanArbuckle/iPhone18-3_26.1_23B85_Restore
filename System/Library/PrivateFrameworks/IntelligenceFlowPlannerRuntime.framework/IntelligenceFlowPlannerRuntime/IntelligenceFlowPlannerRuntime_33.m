uint64_t sub_22C61F6CC()
{
  sub_22C36D5EC();
  v4 = v3;
  sub_22C3864E0();
  v5 = v1;
  sub_22C369970();
  *v6 = v1;
  v7 = v1[64];
  *v6 = *v2;
  v1[65] = v0;

  sub_22C6343B0();
  v9 = *(v8 + 504);
  if (v0)
  {
    v10 = v5[62];
    v11 = v5[58];
  }

  else
  {
    v12 = *(v8 + 504);

    v5[66] = v4;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_22C61F818()
{
  v430 = v0;
  v1 = v0;
  v2 = byte_22C90F000;
  if (!v0[66])
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
LABEL_63:
    v314 = *(v1 + 352);
    v313 = *(v1 + 360);
    v315 = *(v1 + 344);
    sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
    v316 = sub_22C633EBC();
    *(v1 + 536) = v316;
    v317 = sub_22C380174(v316, v2[128]);
    v318(v317);
    v319 = swift_task_alloc();
    *(v1 + 544) = v319;
    *v319 = v1;
    sub_22C375F64(v319);
    v320 = *(v1 + 88);
    sub_22C6344D4(*(v1 + 80));
LABEL_64:
    sub_22C37BEB8();

    sub_22C6230EC(v321, v322);
    return;
  }

  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[58];
  v6 = v0[44];
  v7 = *(v1 + 360);
  v8 = *(v1 + 344);
  v9 = v1;
  v10 = *(v1 + 192);
  v11 = *(v9 + 176);
  v12 = *(v9 + 184);
  v427 = v9;
  swift_isUniquelyReferenced_nonNull_native();
  v429 = v5;
  sub_22C36D39C();
  sub_22C62E500();

  v13 = *(v12 + 8);
  v14 = sub_22C3726C4();
  v15(v14);
  v16 = *(v6 + 8);
  v17 = sub_22C36CA88();
  v18(v17);
  v19 = v5;
  *(&v20 + 1) = 2;
  v398 = xmmword_22C90F800;
  *&v20 = 136315138;
  v396 = v20;
LABEL_3:
  while (2)
  {
    v1 = v427;
    v22 = *(v427 + 472);
    v21 = *(v427 + 480);
    *(v427 + 464) = v19;
    if (!v22)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v23 = *(v1 + 64);
LABEL_9:
      v25 = *(v1 + 368);
      v26 = *(v1 + 376);
      v27 = *(v1 + 344);
      v28 = *(v1 + 352);
      v29 = (*(v23 + 48) + 16 * (__clz(__rbit64(v22)) | (v21 << 6)));
      v30 = v29[1];
      v423 = *v29;
      v31 = sub_22C633D88(*(v23 + 56));
      v32(v31);
      v33 = sub_22C50B578();
      v35 = (v22 - 1) & v22;
      v36 = v21;
      v37 = sub_22C3A5908(v33, v34);
      v38 = *(v37 + 48);
      *v26 = v423;
      v26[1] = v30;
      v39 = *(v28 + 32);
      sub_22C37275C();
      v40();
      v41 = sub_22C3726A4();
      v42 = v37;
      v21 = v36;
      v43 = v35;
      sub_22C36C640(v41, v44, v45, v42);

LABEL_10:
      *(v1 + 472) = v43;
      *(v1 + 480) = v21;
      v46 = *(v1 + 376);
      v47 = *(v1 + 384);
      sub_22C3D3310();
      v48 = sub_22C50B578();
      v50 = sub_22C3A5908(v48, v49);
      v51 = sub_22C36CCF8();
      sub_22C36D0A8(v51, v52, v50);
      if (v53)
      {
        v385 = *(v1 + 464);
        v387 = *(v1 + 440);
        v389 = *(v1 + 432);
        v391 = *(v1 + 408);
        v393 = *(v1 + 384);
        v395 = *(v1 + 376);
        v297 = *(v1 + 368);
        v397 = *(v1 + 360);
        v299 = *(v1 + 344);
        v298 = *(v1 + 352);
        v399 = *(v1 + 336);
        v401 = *(v1 + 328);
        v403 = *(v1 + 312);
        v405 = *(v1 + 304);
        v407 = *(v1 + 280);
        v408 = *(v1 + 272);
        v410 = *(v1 + 264);
        v412 = *(v1 + 240);
        v413 = *(v1 + 232);
        v415 = *(v1 + 208);
        v417 = *(v1 + 200);
        v420 = *(v1 + 192);
        v422 = *(v1 + 168);
        v426 = *(v1 + 160);
        v428 = *(v1 + 136);
        v300 = *(v1 + 104);
        v301 = *(v1 + 112);
        v383 = *(v1 + 96);
        v302 = v1;
        v303 = *(v1 + 64);
        v305 = v302[6];
        v304 = v302[7];
        v306 = v302[5];

        v307 = *(v298 + 16);
        v308 = sub_22C6344C4();
        v309(v308);
        sub_22C908E7C();
        sub_22C634100();
        (*(v300 + 104))(v301, *MEMORY[0x277D1E558], v383);

        sub_22C36FC2C();
        sub_22C9085BC();
        type metadata accessor for StepResolution();
        sub_22C633E0C();
        swift_storeEnumTagMultiPayload();

        v310 = v302[1];
        sub_22C37BEB8();

        __asm { BRAA            X1, X16 }
      }

      v54 = *(v1 + 384);
      v56 = *(v1 + 352);
      v55 = *(v1 + 360);
      v57 = *(v1 + 344);
      v58 = *(v1 + 72);
      v59 = *v54;
      *(v1 + 488) = *v54;
      v60 = v54[1];
      *(v1 + 496) = v60;
      sub_22C634484(v54);
      v61();
      v404 = v60;
      v406 = v59;
      if (!*(v58 + 16))
      {
        break;
      }

      v62 = *(v1 + 72);
      sub_22C3736B4();
      v63 = sub_22C36A724();
      sub_22C36E5AC(v63, v64, v65, v66);
      if ((v67 & 1) == 0)
      {
        break;
      }

      v68 = *(v1 + 568);
      v69 = *(v1 + 328);
      v70 = *(v1 + 336);
      v71 = *(v1 + 280);
      v72 = *(v1 + 248);
      v73 = *(v1 + 256);
      v74 = *(*(v1 + 72) + 56);
      v75 = *(*(v1 + 320) + 72);
      sub_22C633B00();
      sub_22C62E98C();
      sub_22C633AE8();
      sub_22C36BA00();
      sub_22C630194();
      v76 = *(v73 + 16);
      sub_22C44178C();
      v421 = v78;
      v424 = v77;
      v78();
      v79 = *(v73 + 88);
      v80 = sub_22C36D264();
      v414 = v81;
      if (v81(v80) != v68)
      {
        (*(*(v1 + 256) + 8))(*(v1 + 280), *(v1 + 248));
LABEL_29:
        v171 = *(v1 + 464);
        v172 = *(v1 + 584);
        v173 = *(v1 + 336);
        v174 = *(v1 + 248);
        sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
        v175 = sub_22C63464C();
        sub_22C369824(v175);
        v177 = *(v176 + 72);
        sub_22C6341F0();
        v178 = v1;
        v1 = sub_22C6349A0();
        *(v1 + 16) = v398;
        sub_22C38AA18();
        v421();
        v179 = sub_22C634830();
        v180(v179);
        swift_isUniquelyReferenced_nonNull_native();
        *(v178 + 24) = v171;
        sub_22C3736B4();
        sub_22C634A00(v181, v182, v183, sub_22C36EF04);
        sub_22C369DA4();
        v2 = (v184 + v185);
        if (!__OFADD__(v184, v185))
        {
          sub_22C50B5FC();
          sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
          if (sub_22C634424())
          {
            v186 = *(v178 + 24);
            sub_22C3736B4();
            sub_22C634A00(v187, v188, v189, sub_22C36EF04);
            sub_22C388D48();
            if (!v53)
            {
              goto LABEL_67;
            }

            v172 = v190;
          }

          v192 = *(v427 + 352);
          v191 = *(v427 + 360);
          v194 = *(v427 + 336);
          v193 = *(v427 + 344);
          if (v173)
          {

            v19 = *(v427 + 24);
            sub_22C63423C();
            sub_22C633A4C();
            sub_22C62E9E0(v194, v195);
            v196 = *(v192 + 8);
            v197 = sub_22C372164();
            v198(v197);
            goto LABEL_3;
          }

          v19 = *(v427 + 24);
          sub_22C6343BC();
          sub_22C380584(v199);
          *v200 = v406;
          v200[1] = v201;
          *(*(v19 + 56) + 8 * v172) = v1;
          sub_22C633A4C();
          sub_22C62E9E0(v194, v202);
          v203 = *(v192 + 8);
          v204 = sub_22C372164();
          v205(v204);
          sub_22C6341D8();
          if (!v207)
          {
            *(v19 + 16) = v206;
            goto LABEL_3;
          }

          __break(1u);
          goto LABEL_82;
        }

        __break(1u);
LABEL_80:
        v377 = *(v1 + 136);
        (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
        v378 = *(v173 + 8);
        v379 = sub_22C36BA00();
        v380(v379);
        goto LABEL_63;
      }

      v402 = v21;
      v418 = *(v1 + 360);
      v82 = *(v1 + 312);
      v83 = *(v1 + 288);
      v84 = *(v1 + 296);
      v85 = *(v1 + 280);
      v86 = *(v1 + 248);
      v87 = *(v1 + 256);
      v88 = v1;
      v91 = v1 + 208;
      v89 = *(v1 + 208);
      v90 = *(v91 + 8);
      v92 = *(v88 + 80);
      v93 = *(v88 + 88);
      v409 = *(v87 + 96);
      v409(v85, v86);
      v94 = *v85;
      swift_projectBox();
      v95 = sub_22C6343FC();
      v96(v95);

      sub_22C621FD0();
      sub_22C63472C();
      sub_22C62242C(v97, v98, v99, v100);

      sub_22C36D0A8(v89, 1, v90);
      if (!v53)
      {
        v257 = *(v88 + 464);
        v425 = *(v88 + 580);
        v258 = *(v88 + 240);
        v260 = *(v88 + 216);
        v259 = *(v88 + 224);
        v261 = *(v88 + 208);
        v262 = sub_22C633DEC();
        v263(v262);
        sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
        v264 = sub_22C63464C();
        sub_22C369824(v264);
        v266 = *(v265 + 72);
        v267 = sub_22C633CC8();
        v275 = sub_22C633C24(v267, v268, v269, v270, v271, v272, v273, v274, v381, v382, v384, v386, v388, v390, v392, v394, v396, *(&v396 + 1), v398);
        v276(v275);
        v277 = sub_22C6346D4();
        v278(v277);
        swift_isUniquelyReferenced_nonNull_native();
        *(v88 + 32) = v257;
        sub_22C3736B4();
        sub_22C36E5AC(v406, v404, v279, sub_22C36EF04);
        sub_22C369DA4();
        if (__OFADD__(v280, v281))
        {
          goto LABEL_84;
        }

        sub_22C50B5FC();
        sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C634424())
        {
          v282 = *(v88 + 32);
          sub_22C3736B4();
          sub_22C36E5AC(v406, v404, v283, sub_22C36EF04);
          sub_22C388D48();
          if (!v53)
          {
            goto LABEL_67;
          }
        }

        v19 = *(v427 + 32);
        if (v258)
        {
          sub_22C63423C();

          goto LABEL_58;
        }

        sub_22C6343BC();
        sub_22C380584(v284);
        sub_22C633E58(v285);
        if (v207)
        {
          goto LABEL_85;
        }

        *(v19 + 16) = v286;
LABEL_58:
        v288 = *(v427 + 352);
        v287 = *(v427 + 360);
        v290 = *(v427 + 336);
        v289 = *(v427 + 344);
        v291 = *(v427 + 312);
        v292 = *(v427 + 288);
        v293 = *(v427 + 296);
        (*(*(v427 + 224) + 8))(*(v427 + 240), *(v427 + 216));
        (*(v293 + 8))(v291, v292);
        sub_22C633A4C();
        sub_22C62E9E0(v290, v294);
        v295 = sub_22C381704();
        v296(v295);
        goto LABEL_3;
      }

      v400 = v43;
      v101 = *(v88 + 312);
      sub_22C3AC228(*(v88 + 208), &qword_27D9BF4A8, &unk_22C922770);
      v102 = sub_22C90905C();
      v103 = 0;
      v419 = *(v102 + 16);
      while (v419 != v103)
      {
        v1 = v427;
        if (v103 >= *(v102 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v104 = *(v427 + 568);
        v105 = *(v427 + 264);
        v106 = *(v427 + 272);
        v107 = *(v427 + 248);
        sub_22C47278C(*(v427 + 256));
        (v421)(v106, v102 + v108 + *(v109 + 72) * v103, v107);
        v110 = sub_22C36BA00();
        (v421)(v110);
        v111 = sub_22C36BAFC();
        v112 = v414(v111);
        v113 = *(v427 + 288);
        v114 = *(v427 + 296);
        v115 = *(v427 + 264);
        v116 = *(v427 + 272);
        v117 = *(v427 + 248);
        v118 = *(v427 + 256);
        if (v112 != v104)
        {
          v164 = *(v427 + 312);

          v165 = *(v118 + 8);
          v166 = sub_22C377B94();
          v165(v166);
          v167 = *(v114 + 8);
          v168 = sub_22C372FCC();
          v169(v168);
          v170 = sub_22C36BBCC();
          v165(v170);
          goto LABEL_29;
        }

        v119 = *(v427 + 304);
        v120 = sub_22C36BBCC();
        (v409)(v120);
        v121 = *v115;
        swift_projectBox();
        v122 = sub_22C6345E8();
        v123(v122);

        sub_22C90905C();
        v125 = *(v114 + 8);
        v90 = v114 + 8;
        v124 = v125;
        ++v103;
        v126 = sub_22C372FCC();
        v125(v126);
        v127 = *(v118 + 8);
        v88 = v118 + 8;
        v128 = sub_22C377B94();
        v129(v128);
        sub_22C634714();

        if (v117)
        {
          v124(*(v427 + 312), *(v427 + 288));
          v1 = v427;

          goto LABEL_29;
        }
      }

      v130 = *(v427 + 432);

      sub_22C903F8C();

      v131 = sub_22C9063CC();
      v132 = sub_22C90AABC();

      os_log_type_enabled(v131, v132);
      sub_22C634284();
      v416 = *(v427 + 312);
      v133 = *(v427 + 288);
      v134 = *(v427 + 296);
      if (v135)
      {
        sub_22C36FB44();
        v136 = sub_22C388D58();
        *v88 = sub_22C6344B4(v136, v137, v138, v139, v140, v141, v142, v143, v381, v382, v384, v386, v388, v390, v392, v394, v396).n128_u32[0];
        v411 = v133;
        v144 = sub_22C36F9F4(v406, v404, &v429);

        *(v88 + 4) = v144;
        sub_22C5CD33C(&dword_22C366000, v131, v132, "Ignoring empty collections when resolving client action parameters for: %s");
        sub_22C36FF94(v130);
        sub_22C37E124();
        sub_22C370510();

        v145 = sub_22C36BAFC();
        (v421)(v145);
        v146 = sub_22C634844();
        v147(v146, v411);
        sub_22C633A4C();
        sub_22C62E9E0(v424, v148);
        (*(v90 + 8))(v130, v88);
      }

      else
      {

        v156 = sub_22C36BAFC();
        (v421)(v156);
        v157 = sub_22C634844();
        v158(v157, v133);
        sub_22C633A4C();
        sub_22C62E9E0(v424, v159);
        v160 = *(v90 + 8);
        v161 = sub_22C38644C();
        v163(v161, v162);
      }

      v1 = v427;
      v22 = v400;
      v21 = v402;
      if (!v400)
      {
LABEL_5:
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_71;
          }

          if (v24 >= (((1 << *(v1 + 588)) + 63) >> 6))
          {
            v149 = *(v1 + 376);
            v150 = sub_22C50B578();
            sub_22C3A5908(v150, v151);
            v152 = sub_22C3702F4();
            sub_22C36C640(v152, v153, v154, v155);
            v43 = 0;
            goto LABEL_10;
          }

          v23 = *(v1 + 64);
          v22 = *(v23 + 8 * v24 + 64);
          ++v21;
          if (v22)
          {
            v21 = v24;
            goto LABEL_9;
          }
        }
      }
    }

    v208 = *(v1 + 216);
    v209 = *(v1 + 88);
    sub_22C62242C(*(v1 + 360), MEMORY[0x277D84F90], *(v1 + 80), *(v1 + 200));
    v210 = sub_22C383C3C();
    sub_22C36D0A8(v210, v211, v208);
    if (v53)
    {
LABEL_72:
      v325 = *(v1 + 360);
      v327 = *(v1 + 168);
      v326 = *(v1 + 176);
      v328 = *(v1 + 152);
      v329 = *(v1 + 160);
      v330 = *(v1 + 144);
      v331 = *(v1 + 80);
      sub_22C3AC228(*(v1 + 200), &qword_27D9BF4A8, &unk_22C922770);
      sub_22C90878C();
      v332 = sub_22C63417C();
      sub_22C646D68(v332, v333, v334, v335, v336, v337, v338, v339, v381, v382, v384, v386, v388, v390, v392, v394, v396, *(&v396 + 1), v398, *(&v398 + 1));
      v340 = *(v328 + 8);
      v341 = sub_22C36CA88();
      v342(v341);
      sub_22C376738(v327);
      if (v53)
      {
        sub_22C3AC228(*(v1 + 168), &qword_27D9BAA18, &qword_22C911C40);
        v2 = byte_22C90F000;
        goto LABEL_63;
      }

      v343 = *(v1 + 572);
      v344 = *(v1 + 192);
      v345 = *(v1 + 168);
      v346 = *(v1 + 176);
      v348 = *(v1 + 128);
      v347 = *(v1 + 136);
      v349 = *(v1 + 120);
      v350 = sub_22C36CB30(*(v1 + 184));
      v351(v350);
      sub_22C90702C();
      v352 = *(v348 + 88);
      v353 = sub_22C36BAFC();
      v355 = v354(v353);
      v2 = byte_22C90F000;
      if (v355 != v343)
      {
        v373 = *(v1 + 128);
        v372 = *(v1 + 136);
        v374 = *(v1 + 120);
        (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
        v375 = sub_22C381704();
        v376(v375);
        goto LABEL_63;
      }

      v356 = *(v1 + 576);
      v357 = *(v1 + 136);
      v358 = *(v1 + 120);
      v359 = sub_22C634528(*(v1 + 128));
      v360(v359);
      v361 = sub_22C906F2C();
      sub_22C3699C8(v361);
      v173 = v362;
      v363 = *(v362 + 88);
      v364 = sub_22C36BA00();
      if (v365(v364) == v356)
      {
        v366 = *(v1 + 136);
        v367 = *(v173 + 96);
        v368 = sub_22C36BA00();
        v369(v368);
        *(v1 + 504) = *v366;
        v370 = swift_task_alloc();
        *(v1 + 512) = v370;
        *v370 = v1;
        sub_22C36EDAC();
        v371 = *(v1 + 88);
        sub_22C633FC0(*(v1 + 80));
        goto LABEL_64;
      }

      goto LABEL_80;
    }

    v212 = *(v1 + 464);
    v213 = *(v1 + 580);
    v215 = *(v1 + 224);
    v214 = *(v1 + 232);
    v216 = *(v1 + 216);
    v217 = *(v1 + 200);
    v218 = sub_22C633DEC();
    v219(v218);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v220 = sub_22C63464C();
    sub_22C369824(v220);
    v222 = v221;
    v224 = *(v223 + 72);
    v225 = sub_22C633CC8();
    v233 = sub_22C633C24(v225, v226, v227, v228, v229, v230, v231, v232, v381, v382, v384, v386, v388, v390, v392, v394, v396, *(&v396 + 1), v398);
    v234(v233);
    (*(v222 + 104))(v225 + v43, v213, v220);
    swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v212;
    sub_22C3736B4();
    v235 = sub_22C37F8AC();
    sub_22C36E5AC(v235, v236, v237, v238);
    sub_22C369DA4();
    if (__OFADD__(v239, v240))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    sub_22C50B5FC();
    sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C634424())
    {
      v241 = *(v1 + 16);
      sub_22C3736B4();
      v242 = sub_22C37F8AC();
      sub_22C36E5AC(v242, v243, v244, v245);
      sub_22C388D48();
      if (!v53)
      {
LABEL_67:
        sub_22C37BEB8();

        sub_22C90B54C();
        return;
      }

      v213 = v246;
    }

    v19 = *(v427 + 16);
    if (v214)
    {
      v247 = *(v19 + 56);
      v248 = *(v247 + 8 * v213);
      *(v247 + 8 * v213) = v225;

LABEL_49:
      v253 = *(v427 + 352);
      v252 = *(v427 + 360);
      v254 = *(v427 + 344);
      (*(*(v427 + 224) + 8))(*(v427 + 232), *(v427 + 216));
      v255 = sub_22C381704();
      v256(v255);
      continue;
    }

    break;
  }

  sub_22C6343BC();
  sub_22C380584(v249);
  *v250 = v406;
  v250[1] = v404;
  *(*(v19 + 56) + 8 * v213) = v225;
  sub_22C6341D8();
  if (!v207)
  {
    *(v19 + 16) = v251;
    goto LABEL_49;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t sub_22C620A10()
{
  sub_22C36D5EC();
  v4 = v3;
  sub_22C3864E0();
  v5 = v1;
  sub_22C369970();
  *v6 = v1;
  v7 = v1[68];
  *v6 = *v2;
  v1[69] = v0;

  sub_22C6343B0();
  v9 = *(v8 + 536);
  if (v0)
  {
    v10 = v5[62];
    v11 = v5[58];
  }

  else
  {
    v5[70] = v4;
  }

  swift_setDeallocating();
  sub_22C5900A4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22C620B6C()
{
  v428 = v0;
  v1 = v0;
  v2 = v0[62];
  if (v0[70])
  {
    v3 = v0[61];
    v4 = v0[58];
    v5 = v0[44];
    v6 = v1[45];
    v7 = v1[43];
    v8 = v1[58];
    swift_isUniquelyReferenced_nonNull_native();
    v427 = v4;
    sub_22C36D264();
    sub_22C62E500();

    v9 = *(v5 + 8);
    v10 = sub_22C36CA88();
    v11(v10);
    v13 = v4;
LABEL_62:
    v14 = v1[59];
    v15 = v1[60];
    v1[58] = v13;
  }

  else
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    v14 = v0[59];
    v15 = v0[60];
  }

  v16 = &qword_27D9BAA30;
  *&v12 = 136315138;
  v392 = v12;
  if (!v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v17 = v1[8];
LABEL_10:
    v19 = v1[46];
    v20 = v1[47];
    v21 = v1[43];
    v22 = v1[44];
    v400 = (v14 - 1) & v14;
    v23 = (*(v17 + 48) + 16 * (__clz(__rbit64(v14)) | (v15 << 6)));
    v25 = *v23;
    v24 = v23[1];
    v26 = sub_22C633D88(*(v17 + 56));
    v27(v26);
    v28 = sub_22C36FC74();
    v30 = sub_22C3A5908(v28, v29);
    v31 = *(v30 + 48);
    *v20 = v25;
    v20[1] = v24;
    v32 = *(v22 + 32);
    sub_22C37275C();
    v33();
    v34 = sub_22C3726A4();
    sub_22C36C640(v34, v35, v36, v30);
    v37 = v400;

LABEL_11:
    v1[59] = v37;
    v1[60] = v15;
    v38 = v1[47];
    v39 = v1[48];
    sub_22C3D3310();
    v40 = sub_22C36FC74();
    v42 = sub_22C3A5908(v40, v41);
    v43 = sub_22C36CCF8();
    sub_22C36D0A8(v43, v44, v42);
    if (v45)
    {
      v379 = v1[58];
      v381 = v1[55];
      v383 = v1[54];
      v385 = v1[51];
      v387 = v1[48];
      v389 = v1[47];
      v232 = v1[46];
      v234 = v1[43];
      v233 = v1[44];
      v391 = v1[45];
      v393 = v1[42];
      v395 = v1[41];
      v397 = v1[39];
      v399 = v1[38];
      v402 = v1[35];
      v404 = v1[34];
      v406 = v1[33];
      v407 = v1[30];
      v408 = v1[29];
      v410 = v1[26];
      v413 = v1[25];
      v415 = v1[24];
      v419 = v1[21];
      v423 = v1[20];
      v426 = v1[17];
      v236 = v1[13];
      v235 = v1[14];
      v237 = v1[12];
      v238 = v1[7];
      v239 = v1[8];
      v240 = v1;
      v241 = v1[6];
      v242 = v240[5];

      v243 = *(v233 + 16);
      v244 = sub_22C6344C4();
      v245(v244);
      sub_22C908E7C();
      sub_22C9066CC();
      (*(v236 + 104))(v235, *MEMORY[0x277D1E558], v237);

      sub_22C6348E8();
      sub_22C9085BC();
      type metadata accessor for StepResolution();
      sub_22C633E0C();
      swift_storeEnumTagMultiPayload();

      sub_22C369C50();
      sub_22C634908();

      __asm { BRAA            X1, X16 }
    }

    v46 = v1[48];
    v48 = v1[44];
    v47 = v1[45];
    v49 = v1[43];
    v50 = v1[9];
    v51 = *v46;
    v1[61] = *v46;
    v52 = v46[1];
    v1[62] = v52;
    sub_22C634484(v46);
    v53();
    v16 = byte_22C90F000;
    v396 = v51;
    v398 = v52;
    if (!*(v50 + 16))
    {
      break;
    }

    v54 = v1[9];
    sub_22C3736B4();
    v55 = sub_22C36A724();
    sub_22C36E5AC(v55, v56, v57, v58);
    if ((v59 & 1) == 0)
    {
      break;
    }

    v401 = v37;
    v60 = *(v1 + 142);
    v62 = v1[41];
    v61 = v1[42];
    v63 = v1[35];
    v65 = v1[31];
    v64 = v1[32];
    v66 = *(v1[9] + 56);
    v67 = *(v1[40] + 72);
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C633AE8();
    sub_22C630194();
    v68 = *(v64 + 16);
    v69 = sub_22C37A004();
    v421 = v70;
    (v70)(v69);
    v71 = *(v64 + 88);
    v72 = sub_22C36CA88();
    v411 = v73;
    if (v73(v72) != v60)
    {
      (*(v1[32] + 8))(v1[35], v1[31]);
LABEL_30:
      v160 = v1[58];
      v161 = *(v1 + 146);
      v162 = v1[42];
      v163 = v1[31];
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v164 = sub_22C9066DC();
      sub_22C369824(v164);
      v166 = v165;
      v168 = *(v167 + 72);
      sub_22C6341F0();
      v171 = v170 & ~v169;
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_22C90F800;
      sub_22C3839D8();
      v421();
      (*(v166 + 104))(v172 + v171, v161, v164);
      swift_isUniquelyReferenced_nonNull_native();
      v1[3] = v160;
      sub_22C3736B4();
      v173 = v396;
      v174 = sub_22C37335C();
      sub_22C36E5AC(v174, v175, v176, v177);
      sub_22C369DA4();
      v16 = (v178 + v179);
      if (!__OFADD__(v178, v179))
      {
        sub_22C50B42C();
        sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C6346A4())
        {
          v180 = v1[3];
          sub_22C3736B4();
          v181 = sub_22C37335C();
          v162 = sub_22C36E5AC(v181, v182, v183, v184);
          sub_22C385F54();
          if (!v45)
          {
            goto LABEL_63;
          }
        }

        v185 = v1[44];
        v186 = v1[45];
        v188 = v1[42];
        v187 = v1[43];
        if (v163)
        {

          v13 = v1[3];
          sub_22C634630();
          sub_22C633A4C();
          sub_22C62E9E0(v188, v189);
          v190 = *(v185 + 8);
          v191 = sub_22C379FC8();
          v192(v191);
          goto LABEL_62;
        }

        v13 = v1[3];
        sub_22C36ED48(&v13[v162 >> 6]);
        v193 = (v13[6] + 16 * v162);
        *v193 = v194;
        v193[1] = v398;
        *(v13[7] + 8 * v162) = v172;
        sub_22C633A4C();
        sub_22C62E9E0(v188, v195);
        v196 = *(v185 + 8);
        v197 = sub_22C379FC8();
        v198(v197);
        v199 = v13[2];
        v200 = __OFADD__(v199, 1);
        v201 = v199 + 1;
        if (!v200)
        {
          v13[2] = v201;
          v1 = v420;
          goto LABEL_62;
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      __break(1u);
      goto LABEL_76;
    }

    v416 = v1[45];
    v74 = v1[39];
    v76 = v1[36];
    v75 = v1[37];
    v77 = v1[35];
    v16 = v1[26];
    v78 = v1[27];
    v79 = v1[10];
    v80 = v1[11];
    v405 = *(v1[32] + 96);
    (v405)(v77, v1[31]);
    v81 = *v77;
    swift_projectBox();
    v82 = *(v75 + 16);
    v83 = sub_22C634418();
    v403 = v84;
    v84(v83);

    sub_22C621FD0();
    sub_22C62242C(v416, v85, v79, v16);

    sub_22C381514();
    sub_22C36D0A8(v86, v87, v88);
    if (!v45)
    {
      v260 = v1[58];
      v261 = *(v1 + 145);
      v262 = v1[30];
      v264 = v1[27];
      v263 = v1[28];
      v265 = v1[26];
      v266 = sub_22C6347A0();
      v267(v266);
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v268 = sub_22C9066DC();
      sub_22C369824(v268);
      v270 = v269;
      v272 = *(v271 + 72);
      sub_22C6341F0();
      v273 = sub_22C634940();
      v274 = sub_22C634558(v273, xmmword_22C90F800);
      v275(v274);
      (*(v270 + 104))(v16 + v273, v261, v268);
      swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v260;
      sub_22C3736B4();
      v276 = sub_22C37BD98();
      sub_22C36E5AC(v276, v277, v278, v279);
      sub_22C369DA4();
      if (!__OFADD__(v280, v281))
      {
        sub_22C50B42C();
        sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C6346A4())
        {
          v282 = v1[4];
          sub_22C3736B4();
          v283 = sub_22C37BD98();
          v261 = sub_22C36E5AC(v283, v284, v285, v286);
          sub_22C385F54();
          if (!v45)
          {
LABEL_63:
            sub_22C634908();

            sub_22C90B54C();
            return;
          }
        }

        v13 = v1[4];
        if (v264)
        {
          sub_22C634630();

          goto LABEL_60;
        }

        sub_22C36ED48(&v13[v261 >> 6]);
        sub_22C63419C(v287, v288, v289, v290, v291, v292, v293, v294, v377, v378, v380, v382, v384, v386, v388, v390, v392, *(&v392 + 1), v394, v396, v398);
        if (!v200)
        {
          v13[2] = v295;
LABEL_60:
          v1 = v420;
          v297 = *(v420 + 352);
          v296 = *(v420 + 360);
          v299 = *(v420 + 336);
          v298 = *(v420 + 344);
          v300 = *(v420 + 312);
          v301 = *(v420 + 288);
          v302 = *(v420 + 296);
          (*(*(v420 + 224) + 8))(*(v420 + 240), *(v420 + 216));
          v303 = *(v302 + 8);
          v304 = sub_22C36ECB4();
          v305(v304);
          sub_22C633A4C();
          sub_22C62E9E0(v299, v306);
LABEL_61:
          v307 = sub_22C381704();
          v308(v307);
          goto LABEL_62;
        }

LABEL_85:
        __break(1u);
        return;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v394 = v15;
    v89 = v1[39];
    sub_22C3AC228(v1[26], &qword_27D9BF4A8, &unk_22C922770);
    v90 = sub_22C90905C();
    v91 = 0;
    v417 = *(v90 + 16);
    v409 = v90;
    while (v417 != v91)
    {
      if (v91 >= *(v90 + 16))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v1 = v420;
      v92 = *(v420 + 568);
      v94 = *(v420 + 264);
      v93 = *(v420 + 272);
      v95 = *(v420 + 248);
      sub_22C47278C(*(v420 + 256));
      (v421)(v93, v90 + v96 + *(v97 + 72) * v91, v95);
      sub_22C44178C();
      v421();
      v98 = sub_22C36D264();
      v99 = v411(v98);
      v100 = *(v420 + 288);
      v101 = *(v420 + 296);
      v102 = *(v420 + 264);
      v103 = *(v420 + 272);
      v105 = *(v420 + 248);
      v104 = *(v420 + 256);
      if (v99 != v92)
      {
        v153 = *(v420 + 312);

        v154 = *(v104 + 8);
        v155 = sub_22C3819EC();
        v154(v155);
        v156 = *(v101 + 8);
        v157 = sub_22C36D29C();
        v158(v157);
        v159 = sub_22C372164();
        v154(v159);
        goto LABEL_30;
      }

      v106 = *(v420 + 304);
      v107 = sub_22C372164();
      v405(v107);
      v108 = *v102;
      swift_projectBox();
      v109 = sub_22C633E0C();
      v403(v109);

      sub_22C90905C();
      v16 = *(v101 + 8);
      ++v91;
      v110 = sub_22C36D29C();
      (v16)(v110);
      v111 = *(v104 + 8);
      v112 = sub_22C3819EC();
      v113(v112);
      sub_22C634714();

      v90 = v409;
      if (v104 != -8)
      {
        v1 = v420;
        (v16)(*(v420 + 312), *(v420 + 288));

        goto LABEL_30;
      }
    }

    v114 = *(v420 + 432);

    sub_22C903F8C();

    v115 = sub_22C9063CC();
    v116 = sub_22C90AABC();

    v117 = os_log_type_enabled(v115, v116);
    v118 = *(v420 + 432);
    v119 = *(v420 + 416);
    v121 = *(v420 + 352);
    v120 = *(v420 + 360);
    v422 = *(v420 + 456);
    v424 = *(v420 + 336);
    v414 = *(v420 + 312);
    v418 = *(v420 + 448);
    v122 = *(v420 + 288);
    v123 = *(v420 + 296);
    if (v117)
    {
      v412 = *(v420 + 344);
      v124 = sub_22C36FB44();
      v125 = swift_slowAlloc();
      *v124 = sub_22C6344B4(v125, v126, v127, v128, v129, v130, v131, v132, v377, v378, v380, v382, v384, v386, v388, v390, v392).n128_u32[0];
      v133 = sub_22C36F9F4(v396, v398, &v427);

      *(v124 + 4) = v133;
      _os_log_impl(&dword_22C366000, v115, v116, "Ignoring empty collections when resolving client action parameters for: %s", v124, 0xCu);
      sub_22C36FF94(v120);
      sub_22C37E124();
      sub_22C372FB0();

      v134 = sub_22C36ECB4();
      v422(v134);
      v135 = sub_22C634844();
      v136(v135, v122);
      sub_22C633A4C();
      sub_22C62E9E0(v424, v137);
      (*(v121 + 8))(v120, v412);
    }

    else
    {

      v145 = sub_22C36ECB4();
      v422(v145);
      v146 = sub_22C634844();
      v147(v146, v122);
      sub_22C633A4C();
      sub_22C62E9E0(v424, v148);
      v149 = *(v121 + 8);
      v150 = sub_22C37170C();
      v152(v150, v151);
    }

    v1 = v420;
    v15 = v394;
    v16 = &qword_27D9BAA30;
    v14 = v401;
    if (!v401)
    {
LABEL_6:
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_67;
        }

        if (v18 >= (((1 << *(v1 + 588)) + 63) >> 6))
        {
          v138 = v1[47];
          v139 = sub_22C36FC74();
          sub_22C3A5908(v139, v140);
          v141 = sub_22C3702F4();
          sub_22C36C640(v141, v142, v143, v144);
          v37 = 0;
          goto LABEL_11;
        }

        v17 = v1[8];
        v14 = *(v17 + 8 * v18 + 64);
        ++v15;
        if (v14)
        {
          v15 = v18;
          goto LABEL_10;
        }
      }
    }
  }

  v202 = v1[27];
  v203 = v1[25];
  v204 = v1[11];
  sub_22C62242C(v1[45], MEMORY[0x277D84F90], v1[10], v203);
  sub_22C376738(v203);
  if (!v45)
  {
    v205 = v1[58];
    v425 = *(v1 + 145);
    v206 = v1[28];
    v207 = v1[29];
    v208 = v1[27];
    v209 = v1[25];
    v210 = sub_22C6347A0();
    v211(v210);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v212 = sub_22C9066DC();
    sub_22C369824(v212);
    v214 = v213;
    v216 = *(v215 + 72);
    sub_22C6341F0();
    v217 = byte_22C90F000;
    v218 = sub_22C634940();
    v219 = sub_22C634558(v218, xmmword_22C90F800);
    v220(v219);
    (*(v214 + 104))(&byte_22C90F000[v218], v425, v212);
    swift_isUniquelyReferenced_nonNull_native();
    v1[2] = v205;
    sub_22C3736B4();
    v221 = sub_22C37BD98();
    sub_22C36E5AC(v221, v222, v223, v224);
    sub_22C369DA4();
    if (__OFADD__(v225, v226))
    {
      goto LABEL_82;
    }

    sub_22C50B42C();
    sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C6346A4())
    {
      v227 = v1[2];
      sub_22C3736B4();
      v228 = sub_22C37BD98();
      v217 = sub_22C36E5AC(v228, v229, v230, v231);
      sub_22C385F54();
      if (!v45)
      {
        goto LABEL_63;
      }
    }

    v13 = v1[2];
    if (v208)
    {
      sub_22C634630();
    }

    else
    {
      sub_22C36ED48(&v13[v217 >> 6]);
      sub_22C63419C(v248, v249, v250, v251, v252, v253, v254, v255, v377, v378, v380, v382, v384, v386, v388, v390, v392, *(&v392 + 1), v394, v396, v398);
      if (v200)
      {
        goto LABEL_83;
      }

      v13[2] = v256;
    }

    v1 = v420;
    v258 = *(v420 + 352);
    v257 = *(v420 + 360);
    v259 = *(v420 + 344);
    (*(*(v420 + 224) + 8))(*(v420 + 232), *(v420 + 216));
    goto LABEL_61;
  }

LABEL_68:
  v310 = v1[45];
  v312 = v1[21];
  v311 = v1[22];
  v313 = v1[19];
  v314 = v1[20];
  v315 = v1[18];
  v316 = v1[10];
  sub_22C3AC228(v1[25], &qword_27D9BF4A8, &unk_22C922770);
  sub_22C90878C();
  v317 = sub_22C63417C();
  sub_22C646D68(v317, v318, v319, v320, v321, v322, v323, v324, v377, v378, v380, v382, v384, v386, v388, v390, v392, *(&v392 + 1), v394, v396);
  v325 = *(v313 + 8);
  v326 = sub_22C36CA88();
  v327(v326);
  sub_22C376738(v312);
  if (v45)
  {
    sub_22C3AC228(v1[21], &qword_27D9BAA18, &qword_22C911C40);
    goto LABEL_77;
  }

  v328 = *(v1 + 143);
  v329 = v1[24];
  v330 = v1[21];
  v331 = v1[22];
  v333 = v1[16];
  v332 = v1[17];
  v334 = v1[15];
  v335 = sub_22C36CB30(v1[23]);
  v336(v335);
  sub_22C90702C();
  v337 = *(v333 + 88);
  v338 = sub_22C36BAFC();
  v340 = v339(v338);
  if (v340 != v328)
  {
    v358 = v1[16];
    v357 = v1[17];
    v359 = v1[15];
    (*(v1[23] + 8))(v1[24], v1[22]);
    v360 = sub_22C381704();
    v361(v360);
    goto LABEL_77;
  }

  v341 = *(v1 + 144);
  v342 = v1[17];
  v343 = v1[15];
  v344 = sub_22C634528(v1[16]);
  v345(v344);
  v346 = sub_22C906F2C();
  sub_22C3699C8(v346);
  v173 = v347;
  v348 = *(v347 + 88);
  v349 = sub_22C36BA00();
  if (v350(v349) == v341)
  {
    v351 = v1[17];
    v352 = *(v173 + 96);
    v353 = sub_22C36BA00();
    v354(v353);
    v1[63] = *v351;
    v355 = swift_task_alloc();
    v1[64] = v355;
    *v355 = v1;
    sub_22C36EDAC();
    v356 = v1[11];
    sub_22C633FC0(v1[10]);
    goto LABEL_78;
  }

LABEL_76:
  v362 = v1[17];
  (*(v1[23] + 8))(v1[24], v1[22]);
  v363 = *(v173 + 8);
  v364 = sub_22C36BA00();
  v365(v364);
LABEL_77:
  v367 = v1[44];
  v366 = v1[45];
  v368 = v1[43];
  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
  v369 = sub_22C633EBC();
  v1[67] = v369;
  v370 = sub_22C380174(v369, *(v16 + 128));
  v371(v370);
  v372 = swift_task_alloc();
  v1[68] = v372;
  *v372 = v1;
  sub_22C375F64();
  v373 = v1[11];
  sub_22C6344D4(v1[10]);
LABEL_78:
  sub_22C634908();

  sub_22C6230EC(v374, v375);
}

uint64_t sub_22C621D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v28 = v26[23];
  v27 = v26[24];
  v29 = v26[22];
  v30 = v26[8];

  v31 = *(v28 + 8);
  v32 = sub_22C36BBCC();
  v33(v32);
  v34 = sub_22C383D1C(v26[65]);
  v35(v34);

  sub_22C369A24();
  sub_22C377448();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C621EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v27 = *(v26 + 64);

  v28 = sub_22C383D1C(*(v26 + 552));
  v29(v28);

  sub_22C369A24();
  sub_22C377448();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_22C621FD0()
{
  v46 = sub_22C90906C();
  v0 = *(v46 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C9093BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v39 - v9;
  v11 = sub_22C90905C();
  v12 = *(v11 + 16);
  if (v12)
  {
    v15 = *(v4 + 16);
    v13 = v4 + 16;
    v14 = v15;
    v44 = *(v13 + 64);
    v39[1] = v11;
    v54 = (v44 + 32) & ~v44;
    v16 = v11 + v54;
    v17 = *(v13 + 56);
    v53 = (v13 + 72);
    v52 = *MEMORY[0x277D729E0];
    v51 = (v13 - 8);
    v42 = (v0 + 16);
    v43 = (v13 + 80);
    v41 = (v0 + 8);
    v18 = v17;
    v55 = MEMORY[0x277D84F90];
    v40 = xmmword_22C90F800;
    v49 = v15;
    v50 = v13;
    while (1)
    {
      v14(v10, v16, v3);
      v14(v8, v10, v3);
      v19 = (*v53)(v8, v3);
      if (v19 == v52)
      {
        (*v43)(v8, v3);
        v20 = *v8;
        v21 = swift_projectBox();
        v23 = v45;
        v22 = v46;
        (*v42)(v45, v21, v46);

        v24 = sub_22C90905C();
        (*v41)(v23, v22);
        (*v51)(v10, v3);
      }

      else
      {
        v47 = *v51;
        v47(v8, v3);
        sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
        v48 = v12;
        v25 = v3;
        v26 = v10;
        v27 = v8;
        v28 = v54;
        v24 = swift_allocObject();
        *(v24 + 16) = v40;
        v29 = v24 + v28;
        v8 = v27;
        v10 = v26;
        v3 = v25;
        v12 = v48;
        v14(v29, v10, v3);
        v47(v10, v3);
      }

      v30 = *(v24 + 16);
      v31 = *(v55 + 16);
      if (__OFADD__(v31, v30))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v55;
      if (!isUniquelyReferenced_nonNull_native || v31 + v30 > *(v55 + 24) >> 1)
      {
        sub_22C5903C0();
        v33 = v34;
      }

      v35 = *(v24 + 16);
      v55 = v33;
      if (v35)
      {
        if ((*(v33 + 24) >> 1) - *(v33 + 16) < v30)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = *(v55 + 16);
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_23;
          }

          *(v55 + 16) = v38;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_21;
        }
      }

      v16 += v18;
      --v12;
      v14 = v49;
      if (!v12)
      {

        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_22C62242C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a3;
  v117 = a1;
  v122 = a4;
  v108 = sub_22C901FAC();
  v107 = *(v108 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22C9063DC();
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22C90880C();
  v116 = *(v121 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](v121);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v107 - v14;
  v15 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = &v107 - v17;
  v118 = sub_22C90832C();
  v112 = *(v118 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x28223BE20](v118);
  v113 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_22C90977C();
  v20 = *(v137 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22C9094AC();
  v23 = *(v135 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C90952C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v107 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v107 - v35;
  v147 = sub_22C9093BC();
  v37 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  v40 = *(a2 + 16);
  if (v40)
  {
    v42 = *(v38 + 16);
    v41 = v38 + 16;
    v143 = v42;
    v43 = v20;
    v44 = v119 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v138 = *(v41 + 56);
    v141 = (v27 + 88);
    v142 = (v27 + 16);
    v140 = *MEMORY[0x277D72D18];
    v145 = (v27 + 8);
    v129 = (v27 + 32);
    v128 = (v27 + 96);
    v127 = (v23 + 16);
    v126 = (v43 + 8);
    v125 = (v23 + 8);
    v124 = *MEMORY[0x277D72D28];
    v123 = (v27 + 104);
    v144 = v41;
    v139 = (v41 - 8);
    v132 = v31;
    v133 = v7;
    v130 = v36;
    v131 = v34;
    do
    {
      v143(v146, v44, v147);
      sub_22C90935C();
      (*v142)(v31, v36, v26);
      v45 = (*v141)(v31, v26);
      if (v45 == v140)
      {
        (*v128)(v31, v26);
        v46 = *v31;
        v47 = swift_projectBox();
        v48 = v134;
        v49 = v135;
        (*v127)(v134, v47, v135);

        v50 = swift_allocObject();
        v51 = v136;
        sub_22C90948C();
        v52 = sub_22C9096FC();
        v53 = v13;
        v55 = v54;
        (*v126)(v51, v137);
        v50[2] = v52;
        v50[3] = v55;
        v56 = sub_22C90949C();
        v58 = v57;
        v59 = v48;
        v60 = v49;
        v36 = v130;
        v34 = v131;
        (*v125)(v59, v60);
        v61 = *v145;
        (*v145)(v36, v26);
        v50[4] = v56;
        v50[5] = v58;
        v13 = v53;
        *v34 = v50;
        v31 = v132;
        v7 = v133;
        (*v123)(v34, v124, v26);
      }

      else
      {
        v61 = *v145;
        (*v145)(v31, v26);
        (*v129)(v34, v36, v26);
      }

      if (qword_27D9BA6F8 != -1)
      {
        swift_once();
      }

      sub_22C37AA60(v26, qword_27D9E3FD0);
      v62 = sub_22C90950C();
      v61(v34, v26);
      (*v139)(v146, v147);
      if ((v62 & 1) == 0)
      {
        goto LABEL_18;
      }

      v44 += v138;
    }

    while (--v40);
  }

  v63 = v114;
  sub_22C90878C();
  v64 = v115;
  v65 = v117;
  sub_22C64871C();
  v66 = *(v116 + 8);
  v66(v63, v121);
  v67 = v118;
  v68 = sub_22C370B74(v64, 1, v118);
  v69 = v122;
  if (v68 == 1)
  {
    sub_22C3AC228(v64, &qword_27D9BC038, &unk_22C922590);
    v70 = 1;
  }

  else
  {
    v71 = v112;
    v72 = v113;
    (*(v112 + 32))(v113, v64, v67);
    sub_22C90878C();
    v73 = sub_22C5F2A5C();
    v74 = v67;
    v75 = v121;
    v76 = v73;
    v66(v13, v121);
    if ((v76 & 1) == 0)
    {
      (*(v71 + 8))(v72, v74);
LABEL_18:
      v70 = 1;
      v69 = v122;
      goto LABEL_19;
    }

    sub_22C90878C();
    sub_22C648928(v65, v77, v78, v79, v80, v81, v82, v83, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
    v85 = v84;
    v87 = v86;
    v66(v13, v75);
    if (v87 || (sub_22C90878C(), v85 = sub_22C5F2BA4(), v87 = v88, v66(v13, v75), v87))
    {
      v89 = v71;
    }

    else
    {
      sub_22C903F8C();
      v94 = v107;
      v95 = v65;
      v96 = v108;
      (*(v107 + 16))(v7, v95, v108);
      v97 = sub_22C9063CC();
      v98 = sub_22C90AADC();
      v89 = v71;
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v7;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v148 = v101;
        *v100 = 136315138;
        sub_22C6339B0(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v102 = sub_22C90B47C();
        v103 = v96;
        v105 = v104;
        (*(v94 + 8))(v99, v103);
        v106 = sub_22C36F9F4(v102, v105, &v148);

        *(v100 + 4) = v106;
        _os_log_impl(&dword_22C366000, v97, v98, "Unable to find in-app search string for photo picker for statement ID: %s", v100, 0xCu);
        sub_22C36FF94(v101);
        MEMORY[0x2318B9880](v101, -1, -1);
        MEMORY[0x2318B9880](v100, -1, -1);
      }

      else
      {

        (*(v94 + 8))(v7, v96);
      }

      (*(v109 + 8))(v111, v110);
      v85 = 0;
      v87 = 0;
    }

    v90 = v113;
    v69 = v122;
    v91 = v119;

    MEMORY[0x2318B3BF0](v85, v87, v91);
    (*(v89 + 8))(v90, v74);
    v70 = 0;
  }

LABEL_19:
  v92 = sub_22C90672C();
  return sub_22C36C640(v69, v70, 1, v92);
}

uint64_t sub_22C6230EC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_22C9066DC();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_22C908AEC();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v10 = *(*(type metadata accessor for StructuredQueryConverter(0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v11 = sub_22C90952C();
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v14 = *(*(sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v15 = sub_22C90941C();
  v3[35] = v15;
  v16 = *(v15 - 8);
  v3[36] = v16;
  v17 = *(v16 + 64) + 15;
  v3[37] = swift_task_alloc();
  v18 = sub_22C90654C();
  v3[38] = v18;
  v19 = *(v18 - 8);
  v3[39] = v19;
  v20 = *(v19 + 64) + 15;
  v3[40] = swift_task_alloc();
  v21 = sub_22C90832C();
  v3[41] = v21;
  v22 = *(v21 - 8);
  v3[42] = v22;
  v23 = *(v22 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v24 = sub_22C9070DC();
  v3[47] = v24;
  v25 = *(v24 - 8);
  v3[48] = v25;
  v26 = *(v25 + 64) + 15;
  v3[49] = swift_task_alloc();
  v27 = sub_22C90880C();
  v3[50] = v27;
  v28 = *(v27 - 8);
  v3[51] = v28;
  v29 = *(v28 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v30 = sub_22C901FAC();
  v3[56] = v30;
  v31 = *(v30 - 8);
  v3[57] = v31;
  v32 = *(v31 + 64) + 15;
  v3[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C623584, 0, 0);
}

uint64_t sub_22C623F40()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[71] = v0;

  if (v0)
  {
    v9 = v3[66];

    v10 = v3[12];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22C624048()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 216);
  v3 = sub_22C71BA0C();
  v329 = v0;
  if (v1)
  {
    v332 = *(v0 + 552);
    v4 = *(v0 + 528);
    v5 = *(v0 + 456);
    v310 = *(v0 + 448);
    v314 = *(v0 + 464);
    v6 = *(v0 + 344);
    v7 = *(v329 + 336);
    v306 = *(v329 + 328);
    v8 = *(v329 + 296);
    v9 = *(v329 + 288);
    v301 = *(v329 + 280);
    v10 = *(v329 + 264);
    v11 = *(v329 + 232);
    v12 = *(v329 + 224);
    v13 = *(v329 + 216);

    sub_22C37F938();
    sub_22C62E9E0(v13, v14);
    v15 = *(v11 + 8);
    v16 = sub_22C36CC9C();
    v323 = v17;
    (v17)(v16);
    (*(v9 + 8))(v8, v301);
    (*(v7 + 8))(v6, v306);
    v18 = v329;
    (*(v5 + 8))(v314, v310);
    v19 = *(v329 + 96);

    goto LABEL_3;
  }

  v29 = v3;
  if (!v3)
  {
    v334 = *(v0 + 552);
    v45 = *(v0 + 528);
    v294 = *(v0 + 488);
    v298 = *(v0 + 504);
    v47 = *(v0 + 456);
    v46 = *(v0 + 464);
    v48 = *(v0 + 448);
    v49 = *(v0 + 336);
    v312 = *(v0 + 328);
    v316 = *(v0 + 344);
    v50 = *(v0 + 288);
    v303 = *(v0 + 280);
    v308 = *(v0 + 296);
    v51 = *(v0 + 264);
    v52 = *(v329 + 232);
    v325 = *(v329 + 224);
    v319 = *(v329 + 216);

    v53 = *(v329 + 96);

    type metadata accessor for InterpreterError();
    sub_22C372ACC();
    sub_22C6339B0(v54, v55);
    sub_22C36D148();
    v294(v56, v46, v48);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C37F938();
    sub_22C62E9E0(v319, v57);
    v58 = v325;
    v323 = *(v52 + 8);
    v323(v51, v58);
    v18 = v329;
    (*(v50 + 8))(v308, v303);
    (*(v49 + 8))(v316, v312);
    v59 = *(v47 + 8);
    v60 = sub_22C372280();
    v61(v60);
LABEL_3:

    v20 = v18[58];
    v22 = v18[54];
    v21 = v18[55];
    v23 = v18[52];
    v24 = v18[53];
    v25 = v18[49];
    v26 = v18[46];
    v275 = v18[45];
    v277 = v18[44];
    v279 = v18[43];
    v281 = v18[40];
    v284 = v18[37];
    v287 = v18[34];
    v290 = v18[33];
    v293 = v18[32];
    v297 = v18[30];
    v302 = v18[27];
    v307 = v18[26];
    v311 = v18[25];
    v315 = v18[24];
    v330 = v18[21];
    v333 = v18[20];
    v323(v18[31], v18[28]);

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v30 = *(v3 + 16);
  if (v30)
  {
    *(v0 + 112) = MEMORY[0x277D84F90];
    sub_22C3B79D8(0, v30, 0);
    v31 = *(v0 + 112);
    v32 = *(sub_22C90665C() - 8);
    v324 = *(v32 + 16);
    v33 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v34 = *(v32 + 72);
    do
    {
      v35 = *(v0 + 640);
      v36 = *(v0 + 168);
      v37 = *(v0 + 144);
      v38 = *(v0 + 152);
      v39 = sub_22C370114();
      v324(v39);
      (*(v38 + 104))(v36, v35, v37);
      *(v0 + 112) = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_22C3B79D8(v40 > 1, v41 + 1, 1);
        v31 = *(v0 + 112);
      }

      v42 = *(v0 + 168);
      v43 = *(v0 + 144);
      v44 = *(v0 + 152);
      *(v31 + 16) = v41 + 1;
      (*(v44 + 32))(v31 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41, v42, v43);
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v62 = *(v0 + 552);
  v63 = *(v329 + 336);
  v326 = *(v329 + 344);
  v64 = *(v329 + 288);
  v317 = *(v329 + 296);
  v320 = *(v329 + 328);
  v65 = *(v329 + 280);
  v66 = *(v329 + 264);
  v335 = *(v329 + 248);
  v67 = *(v329 + 224);
  v68 = *(v329 + 232);
  v69 = *(v329 + 216);
  v70 = v31;
  v71 = v329;
  sub_22C3CE514(v70);
  sub_22C37F938();
  sub_22C62E9E0(v69, v72);
  v73 = *(v68 + 8);
  v73(v66, v67);
  (*(v64 + 8))(v317, v65);
  (*(v63 + 8))(v326, v320);

  v73(v335, v67);
  v74 = &qword_22C912420;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v75 = *(v71 + 544) + 1;
        v76 = *(v71 + 528);
        if (v75 == *(v71 + 536))
        {
          do
          {

            do
            {
              v77 = *(v71 + 472);
              v78 = *(v71 + 496) + 1;
              (*(*(v71 + 456) + 8))(*(v71 + 464), *(v71 + 448));
              if (v78 == v77)
              {
                if (*(*(v71 + 96) + 16))
                {
                  v282 = *(v71 + 96);
                }

                else
                {
                }

                v239 = *(v71 + 464);
                v241 = *(v71 + 432);
                v240 = *(v71 + 440);
                v243 = *(v71 + 416);
                v242 = *(v71 + 424);
                v244 = *(v71 + 392);
                v246 = *(v71 + 360);
                v245 = *(v71 + 368);
                v247 = v71;
                v248 = *(v71 + 352);
                v249 = v247[43];
                v285 = v247[40];
                v288 = v247[37];
                v291 = v247[34];
                v295 = v247[33];
                v299 = v247[32];
                v304 = v247[31];
                v309 = v247[30];
                v313 = v247[27];
                v318 = v247[26];
                v322 = v247[25];
                v328 = v247[24];
                v331 = v247[21];
                v338 = v247[20];

                v250 = v247[1];
                sub_22C5CAD40();

                __asm { BRAA            X2, X16 }
              }

              v79 = *(v71 + 488);
              v80 = *(v71 + 496) + 1;
              v81 = *(v71 + 480);
              v82 = *(v71 + 608);
              v83 = *(v71 + 456);
              v84 = *(v71 + 464);
              v86 = *(v71 + 440);
              v85 = *(v71 + 448);
              v87 = *(v71 + 408);
              v88 = *(v329 + 400);
              v89 = *(v329 + 128);
              v90 = *(v329 + 120);
              sub_22C6342A4();
              *(v329 + 496) = v91;
              *(v329 + 504) = v92;
              v93(v84);
              sub_22C90878C();
              v94 = sub_22C9087DC();
              v95 = *(v87 + 8);
              *(v329 + 512) = v95;
              *(v329 + 520) = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v96 = sub_22C36D39C();
              v71 = v329;
              v95(v96);
              *(v329 + 104) = v94;
              v97 = sub_22C36CC9C();
              sub_22C3A5908(v97, v98);
              sub_22C369E24();
              sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, v74);
              LOBYTE(v90) = sub_22C907E1C();
            }

            while ((v90 & 1) == 0);
            v99 = *(v329 + 464);
            v100 = *(v329 + 440);
            v101 = *(v329 + 400);
            v102 = *(v329 + 120);
            sub_22C90878C();
            sub_22C647C78(v99, v103, v104, v105, v106, v107, v108, v109, v273, v274, v276, v278, v280, v283, v286, v289, v292, v296, v300, v305);
            v111 = v110;
            (v95)(v100, v101);
            v112 = *(v111 + 16);
            if (v112)
            {
              sub_22C47278C(*(v329 + 384));
              v114 = v111 + v113;
              v327 = *(v115 + 72);
              v321 = *(v115 + 16);
              v76 = MEMORY[0x277D84F90];
              do
              {
                v336 = v76;
                v116 = *(v71 + 612);
                v118 = *(v71 + 384);
                v117 = *(v71 + 392);
                v119 = *(v71 + 376);
                v121 = *(v71 + 312);
                v120 = *(v71 + 320);
                v122 = *(v71 + 304);
                v123 = sub_22C380120();
                v321(v123);
                sub_22C90702C();
                v124 = *(v118 + 8);
                v125 = sub_22C372FA4();
                v126(v125);
                if ((*(v121 + 88))(v120, v122) == v116)
                {
                  v128 = *(v71 + 360);
                  v127 = *(v71 + 368);
                  v129 = *(v71 + 352);
                  v130 = *(v71 + 328);
                  v131 = *(v71 + 336);
                  v132 = *(v71 + 320);
                  v133 = *(v71 + 304);
                  v134 = sub_22C634528(*(v71 + 312));
                  v135(v134);
                  v136 = *(v131 + 32);
                  v137 = sub_22C372280();
                  (v136)(v137);
                  sub_22C3839D8();
                  v136();
                  (v136)(v127, v128, v130);
                  v76 = v336;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v145 = *(v336 + 16);
                    sub_22C36D270();
                    sub_22C59520C();
                    v76 = v146;
                  }

                  v139 = *(v76 + 16);
                  v138 = *(v76 + 24);
                  v71 = v329;
                  if (v139 >= v138 >> 1)
                  {
                    sub_22C36A958(v138);
                    sub_22C59520C();
                    v76 = v147;
                  }

                  v140 = *(v329 + 368);
                  v141 = *(v329 + 328);
                  v142 = *(v329 + 336);
                  *(v76 + 16) = v139 + 1;
                  sub_22C47278C(v142);
                  (v136)(v76 + v143 + *(v144 + 72) * v139);
                }

                else
                {
                  (*(*(v71 + 312) + 8))(*(v71 + 320), *(v71 + 304));
                  v76 = v336;
                }

                v114 += v327;
                --v112;
              }

              while (v112);
            }

            else
            {

              v76 = MEMORY[0x277D84F90];
            }

            *(v71 + 528) = v76;
            v148 = *(v76 + 16);
            *(v71 + 536) = v148;
            v74 = &qword_22C912420;
          }

          while (!v148);
          v75 = 0;
          *(v71 + 648) = *(*(v71 + 336) + 80);
        }

        *(v71 + 544) = v75;
        if (v75 >= *(v76 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          return;
        }

        v149 = *(v71 + 648);
        v150 = *(v71 + 336);
        v151 = *(v71 + 344);
        v152 = *(v71 + 328);
        v153 = *(v71 + 280);
        v154 = *(v329 + 272);
        v155 = sub_22C634850(v75);
        v156(v155);
        sub_22C9082FC();
        v71 = v329;
        sub_22C381514();
        v160 = sub_22C370B74(v157, v158, v159);
        v161 = *(v329 + 272);
        if (v160 != 1)
        {
          break;
        }

        (*(*(v329 + 336) + 8))(*(v329 + 344), *(v329 + 328));
        sub_22C3AC228(v161, &qword_27D9BC028, &unk_22C9134B0);
      }

      v162 = *(v329 + 296);
      v163 = *(v329 + 280);
      v164 = *(*(v329 + 288) + 32);
      v165 = sub_22C36BA00();
      v166(v165);
      v167 = v162;
      v168 = sub_22C9093DC();
      sub_22C6341FC(v168);
      if (v170)
      {
        while (!*(v162 + v169))
        {
          sub_22C634464();
          if (!v171)
          {
            goto LABEL_43;
          }
        }

        sub_22C634168();
        if (!v225)
        {
          break;
        }
      }

LABEL_43:
      v177 = *(v329 + 336);
      v176 = *(v329 + 344);
      v178 = *(v329 + 328);
      v179 = *(v329 + 296);
      v180 = *(v329 + 288);
      v181 = *(v329 + 280);

      v182 = *(v180 + 8);
      v183 = sub_22C36CA88();
      v184(v183);
      v185 = *(v177 + 8);
      v186 = sub_22C36D39C();
      v71 = v329;
      v187(v186);
    }

    if (-v172 < 0)
    {
      goto LABEL_71;
    }

    v188 = v175 - v172;
    if (v188 >= v173)
    {
      goto LABEL_71;
    }

    if (((*(v162 + v174) >> v175) & 1) == 0)
    {
      goto LABEL_72;
    }

    v189 = v74;
    v337 = *(v329 + 616);
    v190 = *(v329 + 264);
    v191 = *(v329 + 248);
    v192 = *(v329 + 224);
    v193 = *(v329 + 232);
    v194 = v193[2];
    (v194)(*(v329 + 256), *(v167 + 48) + v193[9] * v188, v192);

    v195 = v193[4];
    v196 = sub_22C36D39C();
    v197(v196);
    v198 = sub_22C372280();
    v194(v198);
    v199 = v193[11];
    v200 = sub_22C36CA88();
    if (v201(v200) != v337)
    {
      sub_22C6344A4();
      v225 = v225 || v223 == v224;
      if (v225)
      {
        goto LABEL_65;
      }

      v74 = v189;
      v227 = *(v329 + 336);
      v226 = *(v329 + 344);
      v228 = *(v329 + 328);
      v230 = *(v329 + 288);
      v229 = *(v329 + 296);
      v231 = *(v329 + 280);
      v216 = *(*(v329 + 232) + 8);
      (v216)(*(v329 + 264), *(v329 + 224));
      v232 = *(v230 + 8);
      v233 = sub_22C36ECB4();
      v234(v233);
      v235 = *(v227 + 8);
      v236 = sub_22C36BBCC();
      v237(v236);
      goto LABEL_57;
    }

    v202 = *(v329 + 628);
    v203 = *(v329 + 232);
    (v194)(*(v329 + 240), *(v329 + 248), *(v329 + 224));
    v204 = *(v203 + 96);
    v205 = sub_22C36BBCC();
    v206(v205);
    v207 = sub_22C634688();
    swift_projectBox();
    sub_22C36BBA8(v207);
    v209 = (*(v208 + 88))();
    if (v209 == v202)
    {
      goto LABEL_64;
    }

    if (v209 == *(v329 + 632))
    {
      break;
    }

    if (v209 == *(v329 + 636))
    {
LABEL_64:

LABEL_65:
      sub_22C633DD0();
      sub_22C38A084(v253);
      v254();
      v255 = sub_22C90878C();
      MEMORY[0x2318B57A0](v255);
      v256 = sub_22C633E70();
      v257(v256);
      v258 = *(v192 + 16);
      sub_22C634810();
      v259();
      sub_22C633E40();
      swift_task_alloc();
      sub_22C36CC90();
      *(v329 + 592) = v260;
      *v260 = v261;
      sub_22C633BA8(v260);
      goto LABEL_67;
    }

    v74 = v189;
    v211 = *(v329 + 336);
    v210 = *(v329 + 344);
    v212 = *(v329 + 328);
    v214 = *(v329 + 288);
    v213 = *(v329 + 296);
    v215 = *(v329 + 280);
    v216 = *(*(v329 + 232) + 8);
    (v216)(*(v329 + 264), *(v329 + 224));
    v217 = *(v214 + 8);
    v218 = sub_22C36CA88();
    v219(v218);
    v220 = *(v211 + 8);
    v221 = sub_22C36D39C();
    v222(v221);

LABEL_57:
    v238 = sub_22C634494();
    v216(v238);
    v71 = v329;
  }

  sub_22C633E94();
  sub_22C6341E4();
  sub_22C90878C();
  v262 = v189[2];
  v263 = sub_22C36D29C();
  v264(v263);
  sub_22C633E28();
  swift_task_alloc();
  sub_22C36CC90();
  *(v329 + 560) = v265;
  *v265 = v266;
  sub_22C633B70();
LABEL_67:
  sub_22C5CAD40();

  sub_22C7177DC(v267, v268, v269, v270, v271);
}

uint64_t sub_22C624F88()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 600) = v0;

  if (v0)
  {
    v9 = *(v3 + 528);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C625B3C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 520);
  v4 = *(v0 + 456);
  v5 = *(v0 + 336);
  v39 = *(v0 + 328);
  v41 = *(v0 + 344);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  v10 = *(v0 + 224);
  (*(v0 + 512))(*(v0 + 424), *(v0 + 400));
  v11 = *(v0 + 96);

  v12 = sub_22C36CA88();
  v2(v12);
  v13 = *(v6 + 8);
  v14 = sub_22C36D264();
  v15(v14);
  (*(v5 + 8))(v41, v39);
  v42 = *(v0 + 600);
  v16 = *(v0 + 440);
  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 392);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v25 = *(v0 + 352);
  v26 = *(v0 + 344);
  v27 = *(v0 + 320);
  v28 = *(v0 + 296);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 200);
  v37 = *(v0 + 192);
  v38 = *(v0 + 168);
  v40 = *(v0 + 160);
  (*(v4 + 8))(*(v0 + 464), *(v0 + 448));

  sub_22C369A24();

  return v23();
}

uint64_t sub_22C625D58()
{
  v1 = v0[57];
  v39 = v0[58];
  v41 = v0[69];
  v37 = v0[56];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = *(v0[29] + 8);
  v8(v0[33], v0[28]);
  v9 = *(v5 + 8);
  v10 = sub_22C36FC2C();
  v11(v10);
  v12 = *(v2 + 8);
  v13 = sub_22C36ECB4();
  v14(v13);
  (*(v1 + 8))(v39, v37);

  v42 = v0[71];
  v15 = v0[58];
  v17 = v0[54];
  v16 = v0[55];
  v19 = v0[52];
  v18 = v0[53];
  v20 = v0[49];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[40];
  v28 = v0[37];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[32];
  v32 = v0[30];
  v33 = v0[27];
  v34 = v0[26];
  v35 = v0[25];
  v36 = v0[24];
  v38 = v0[21];
  v40 = v0[20];
  v8(v0[31], v0[28]);

  sub_22C369A24();

  return v21();
}

uint64_t sub_22C625F7C()
{
  v0 = *(sub_22C90786C() + 16);

  v1 = sub_22C90789C();
  v2 = v1;
  if (v0)
  {
    v3 = *(v1 + 16);

    if (v3)
    {
      v4 = sub_22C90789C();
      MEMORY[0x28223BE20](v4);
      v2 = sub_22C604D3C(MEMORY[0x277D84FA0]);
    }

    else
    {
      sub_22C3A5908(&qword_27D9BF440, &qword_22C922700);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = sub_22C90786C();
      sub_22C5EAA78(inited, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
      return v13;
    }
  }

  return v2;
}

uint64_t sub_22C626088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a4;
  v108 = a2;
  v107 = a1;
  v127 = a6;
  v8 = sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = v98 - v10;
  v103 = sub_22C90941C();
  v106 = *(v103 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = (v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_22C9026BC();
  v116 = *(v128 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v128);
  v114 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C907DEC();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v111 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C9020CC();
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v18);
  v115 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C901FAC();
  v120 = *(v21 - 8);
  v121 = v21;
  v22 = *(v120 + 64);
  MEMORY[0x28223BE20](v21);
  v119 = v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v122 = v98 - v26;
  v124 = sub_22C906ECC();
  v118 = *(v124 - 8);
  v27 = *(v118 + 64);
  MEMORY[0x28223BE20](v124);
  v117 = v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C90654C();
  v125 = *(v29 - 8);
  v126 = v29;
  v30 = *(v125 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C90832C();
  v123 = *(v33 - 8);
  v34 = *(v123 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = v98 - v39;
  v41 = sub_22C9070DC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v129;
  result = sub_22C64962C(a3);
  if (!v46)
  {
    v98[1] = a5;
    v101 = v45;
    v100 = v36;
    v129 = v42;
    v99 = v33;
    v48 = v128;
    if (sub_22C370B74(v40, 1, v41) == 1)
    {
      sub_22C3AC228(v40, &qword_27D9BAA18, &qword_22C911C40);
      v49 = 1;
      v50 = v127;
      v51 = v48;
      return sub_22C36C640(v50, v49, 1, v51);
    }

    v98[0] = 0;
    v52 = v129;
    v53 = v101;
    (*(v129 + 32))(v101, v40, v41);
    sub_22C90702C();
    v55 = v125;
    v54 = v126;
    if ((*(v125 + 88))(v32, v126) == *MEMORY[0x277D1DA48])
    {
      (*(v55 + 96))(v32, v54);
      v56 = v123;
      (*(v123 + 32))(v100, v32, v99);
      v130 = sub_22C9087DC();
      v57 = v119;
      sub_22C9068FC();
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
      v58 = v122;
      sub_22C907EBC();
      v59 = v58;
      (*(v120 + 8))(v57, v121);

      v60 = v124;
      if (sub_22C370B74(v58, 1, v124) != 1)
      {
        v61 = v99;
        v126 = v41;
        v63 = v117;
        v62 = v118;
        (*(v118 + 32))(v117, v59, v60);
        v64 = v100;
        v51 = v48;
        if (sub_22C5F2A5C())
        {
          v65 = v111;
          sub_22C906EBC();
          v66 = v114;
          sub_22C907DAC();
          (*(v112 + 8))(v65, v113);
          v67 = v116;
          if ((*(v116 + 88))(v66, v51) == *MEMORY[0x277D1CBF0])
          {
            (*(v67 + 96))(v66, v51);
            v68 = v109;
            v69 = v66;
            v70 = v110;
            (*(v109 + 32))(v115, v69, v110);
            v71 = sub_22C9020AC();
            if (v72)
            {
              v125 = v71;
              v73 = v106;
            }

            else
            {
              v74 = v100;
              v75 = sub_22C5F2BA4();
              v73 = v106;
              if (!v76)
              {
                type metadata accessor for InterpreterError();
                sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
                swift_allocError();
                v97 = v101;
                sub_22C9068FC();
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                (*(v68 + 8))(v115, v70);
                (*(v118 + 8))(v117, v124);
                (*(v123 + 8))(v74, v99);
                return (*(v129 + 8))(v97, v126);
              }

              v125 = v75;
            }

            if (sub_22C5FB484())
            {
              v77 = v103;
              v78 = swift_allocBox();
              v80 = v79;
              v81 = sub_22C90952C();
              v82 = swift_allocBox();
              v84 = v83;
              if (qword_27D9BA6F8 != -1)
              {
                swift_once();
              }

              v85 = sub_22C37AA60(v81, qword_27D9E3FD0);
              (*(*(v81 - 8) + 16))(v84, v85, v81);
              *v80 = v82;
              v86 = *(v106 + 104);
              v86(v80, *MEMORY[0x277D72AD0], v77);
              v87 = v104;
              *v104 = v78;
              v86(v87, *MEMORY[0x277D72AB0], v77);
            }

            else
            {
              v88 = sub_22C90952C();
              v89 = swift_allocBox();
              v91 = v90;
              if (qword_27D9BA6F8 != -1)
              {
                swift_once();
              }

              v92 = sub_22C37AA60(v88, qword_27D9E3FD0);
              (*(*(v88 - 8) + 16))(v91, v92, v88);
              v93 = v104;
              *v104 = v89;
              (*(v73 + 104))(v93, *MEMORY[0x277D72AD0], v103);
            }

            v94 = v105;
            sub_22C90284C();
            v95 = *MEMORY[0x277D1CDE0];
            v96 = sub_22C90285C();
            (*(*(v96 - 8) + 104))(v94, v95, v96);
            sub_22C36C640(v94, 0, 1, v96);

            v50 = v127;
            sub_22C90282C();
            (*(v109 + 8))(v115, v110);
            (*(v118 + 8))(v117, v124);
            (*(v123 + 8))(v100, v99);
            (*(v129 + 8))(v101, v126);
            (*(v67 + 104))(v50, *MEMORY[0x277D1CBB8], v51);
            v49 = 0;
            return sub_22C36C640(v50, v49, 1, v51);
          }

          (*(v62 + 8))(v63, v60);
          (*(v56 + 8))(v100, v61);
          (*(v129 + 8))(v101, v126);
          (*(v67 + 8))(v66, v51);
        }

        else
        {
          (*(v62 + 8))(v63, v60);
          (*(v56 + 8))(v64, v61);
          (*(v129 + 8))(v101, v126);
        }

        v49 = 1;
        v50 = v127;
        return sub_22C36C640(v50, v49, 1, v51);
      }

      (*(v56 + 8))(v100, v99);
      (*(v129 + 8))(v53, v41);
      sub_22C3AC228(v58, &qword_27D9BC0A0, &unk_22C922F30);
    }

    else
    {
      (*(v52 + 8))(v53, v41);
      (*(v55 + 8))(v32, v54);
    }

    v49 = 1;
    v50 = v127;
    v51 = v48;
    return sub_22C36C640(v50, v49, 1, v51);
  }

  return result;
}

uint64_t sub_22C626F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (sub_22C628D18(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_22C908C5C();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_22C908C5C();
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C627008()
{
  v0 = sub_22C9093BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  sub_22C90774C();
  v8 = sub_22C90938C();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_22C90774C();
  v12 = sub_22C90938C();
  v14 = v13;
  v11(v5, v0);
  if (v8 == v12 && v10 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_22C90B4FC();
  }

  return v16 & 1;
}

void sub_22C627194()
{
  sub_22C36BA7C();
  v139 = v2;
  v144 = v3;
  v5 = v4;
  v147 = v6;
  v148 = sub_22C9069BC();
  v7 = sub_22C369824(v148);
  v145 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C3698F8(v12 - v11);
  v13 = sub_22C901FAC();
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C3698F8(v18 - v17);
  v135 = sub_22C908BBC();
  v19 = sub_22C369824(v135);
  v134 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C3698F8(v24 - v23);
  v132 = sub_22C908C3C();
  v25 = sub_22C369824(v132);
  v131 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C3698F8(v30 - v29);
  v31 = sub_22C908C5C();
  v150 = sub_22C369824(v31);
  v151 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v150);
  sub_22C369838();
  v154 = v36 - v35;
  sub_22C36BA0C();
  v37 = sub_22C9093BC();
  v38 = sub_22C369824(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C36D234(&v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v128 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v128 - v47;
  v49 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v50 = sub_22C369914(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C385F64();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v153 = v58;
  v149 = v0;
  v59 = sub_22C90789C();
  v60 = *(v40 + 16);
  v138 = v5;
  v60(v48, v5, v37);
  v61 = sub_22C36D39C();
  v129 = v60;
  (v60)(v61);
  v62 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v63 = swift_allocObject();
  v64 = *(v40 + 32);
  v152 = v37;
  v64(v63 + v62, v48, v37);
  v156 = v59;
  v157 = sub_22C633870;
  v158 = v63;
  v159 = sub_22C630074;
  v160 = 0;
  sub_22C5C9D58();
  if (v66)
  {
    goto LABEL_15;
  }

  if (*(v156 + 36) != v65)
  {
    __break(1u);
LABEL_15:
    v126 = sub_22C6344E4();
    v127(v126);
    __break(1u);
    goto LABEL_16;
  }

  v67 = *(v156 + 32);
  sub_22C38A0A8();
  if (v68 != v69)
  {
    v75 = sub_22C3AFF34();
    MEMORY[0x28223BE20](v75);
    *(&v128 - 2) = v46;
    v76 = v140;
    sub_22C6B0AA0();
    v77 = sub_22C6344E4();
    v78(v77);

    v79 = v141;
    sub_22C3D3364();
    v80 = sub_22C3707B4();
    v81 = v150;
    sub_22C36D0A8(v80, v82, v150);
    if (!v83)
    {
      (*(v151 + 32))(v1, v79, v81);
      sub_22C3AC228(v76, &qword_27D9BB628, &unk_22C920580);
      v72 = 0;
      v73 = v81;
      v74 = v144;
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v70 = sub_22C6344E4();
  v71(v70);
  v72 = 1;
  v73 = v150;
  v74 = v144;
LABEL_7:
  sub_22C36C640(v1, v72, 1, v73);

  MEMORY[0x28223BE20](v84);
  *(&v128 - 2) = v74;
  sub_22C6024D8(sub_22C633908, (&v128 - 4), v153);
  sub_22C3AC228(v1, &qword_27D9BB628, &unk_22C920580);
  v85 = v142;
  sub_22C3D3364();
  sub_22C36D0A8(v85, 1, v73);
  v86 = v154;
  if (v83)
  {
    v129(v130, v138, v152);
    (*(v131 + 104))(v133, *MEMORY[0x277D1E928], v132);
    (*(v134 + 16))(v136, v74, v135);
    sub_22C9087AC();
    sub_22C90882C();
    v86 = v154;

    sub_22C3819EC();
    sub_22C908C1C();
    sub_22C36D0A8(v85, 1, v73);
    v90 = v149;
    v91 = v148;
    v87 = v151;
    v92 = v145;
    if (!v83)
    {
      sub_22C3AC228(v85, &qword_27D9BB628, &unk_22C920580);
    }
  }

  else
  {
    v87 = v151;
    v88 = sub_22C36CB30(v151);
    v89(v88, v85, v73);
    v90 = v149;
    v91 = v148;
    v92 = v145;
  }

  v93 = v146;
  v94 = v147;
  (*(v92 + 16))(v146, v147, v91);
  sub_22C63489C();
  v95 = v143;
  v96(v143, v86, v73);
  sub_22C36BECC();
  sub_22C36C640(v97, v98, v99, v73);
  v100 = sub_22C90785C();
  sub_22C603A20(v95, v93);
  v100(v155, 0);
  v101 = sub_22C90789C();
  MEMORY[0x28223BE20](v101);
  *(&v128 - 2) = v94;
  v102 = MEMORY[0x277D84FA0];
  sub_22C604D3C(MEMORY[0x277D84FA0]);

  sub_22C63475C();
  sub_22C9078AC();
  sub_22C90789C();
  sub_22C3A5908(&qword_27D9BF440, &qword_22C922700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  sub_22C382D70();
  sub_22C6339B0(v104, v105);
  *(inited + 32) = sub_22C909F0C();
  sub_22C5EAA78(inited, v106, v107, v108, v109, v110, v111, v112, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  v114 = v113;
  v115 = sub_22C37170C();
  sub_22C5DC064(v115, v116, v117, v118, v119, v120, v121, v122, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  LOBYTE(v93) = v123;

  if (v93)
  {
    sub_22C90788C();
    sub_22C385D88();
    v125 = *v124;

    *v114 = v102;
    v90(v155, 0);
  }

  (*(v87 + 8))(v154, v73);
  sub_22C3AC228(v153, &qword_27D9BB628, &unk_22C920580);
  sub_22C36CC48();
}

uint64_t sub_22C627BF4()
{
  v0 = sub_22C9093BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90774C();
  v5 = sub_22C9093AC();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_22C627CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C908BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C908C5C();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  return sub_22C908BDC();
}

void sub_22C6280AC()
{
  sub_22C633B34();
  sub_22C902D0C();
  sub_22C6339B0(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C628164()
{
  sub_22C633B34();
  sub_22C90430C();
  sub_22C6339B0(&qword_27D9BC810, MEMORY[0x277D85578]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

unint64_t sub_22C62821C()
{
  sub_22C634010();
  sub_22C48A9B4(v4, v0);
  sub_22C90B66C();
  v1 = sub_22C633E0C();

  return sub_22C6292F4(v1, v2);
}

void sub_22C628274()
{
  sub_22C633B34();
  sub_22C901FAC();
  sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C628358()
{
  sub_22C633B34();
  sub_22C90963C();
  sub_22C6339B0(&qword_27D9BC850, MEMORY[0x277D72E18]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

unint64_t sub_22C628410()
{
  sub_22C634010();
  sub_22C48A9B4(v5, *v0);
  sub_22C471960(v5, *(v0 + 8));
  v1 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  sub_22C90963C();
  sub_22C6339B0(&qword_27D9BC850, MEMORY[0x277D72E18]);
  sub_22C909F8C();
  sub_22C90B66C();
  v2 = sub_22C633E0C();

  return sub_22C629ECC(v2, v3);
}

void sub_22C6284D4()
{
  sub_22C633B34();
  sub_22C90941C();
  sub_22C6339B0(&qword_27D9BAAA0, MEMORY[0x277D72B00]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

unint64_t sub_22C62858C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = *(v2 + 40);
  sub_22C90B62C();
  sub_22C90B64C();
  if (v4 != 3)
  {
    MEMORY[0x2318B8B10](a1);
  }

  v6 = sub_22C90B66C();

  return sub_22C62A2B8(a1, v6);
}

unint64_t sub_22C628620(char a1)
{
  sub_22C63443C();
  sub_22C90B64C();
  if ((a1 & 1) == 0)
  {
    MEMORY[0x2318B8B10](0);
  }

  v2 = sub_22C90B66C();

  return sub_22C62A33C(a1 & 1, v2);
}

unint64_t sub_22C6286A0(unsigned __int8 a1)
{
  sub_22C63443C();
  MEMORY[0x2318B8B10](a1);
  v2 = sub_22C90B66C();
  return sub_22C62A3B0(a1, v2);
}

unint64_t sub_22C628700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C63443C();
  sub_22C634004();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C90B66C();
  v6 = sub_22C3806B8();

  return sub_22C62A410(v6, v7, a3, a4, v8);
}

void sub_22C6287BC()
{
  sub_22C633B34();
  sub_22C902C9C();
  sub_22C6339B0(&qword_27D9BC1A8, MEMORY[0x277D1D780]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C628874()
{
  sub_22C633B34();
  sub_22C9014CC();
  sub_22C6339B0(&qword_27D9BF3F0, MEMORY[0x277D78298]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C62892C()
{
  v1 = *(v0 + 40);
  sub_22C90952C();
  sub_22C6339B0(&qword_28142FA80, MEMORY[0x277D72D58]);
  sub_22C909F7C();
  sub_22C62917C();
}

unint64_t sub_22C628A00()
{
  v1 = *(v0 + 40);
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C50B118(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388);
  sub_22C36D29C();
  sub_22C909F7C();
  v2 = sub_22C37FDE8();

  return sub_22C62A50C(v2, v3);
}

unint64_t sub_22C628AA0()
{
  sub_22C634010();
  sub_22C488960(v3);
  sub_22C90B66C();
  v0 = sub_22C633E0C();

  return sub_22C62A6CC(v0, v1);
}

unint64_t sub_22C628AF8(char a1)
{
  sub_22C63443C();
  sub_22C90B64C();
  v2 = sub_22C90B66C();

  return sub_22C62A954(a1, v2);
}

unint64_t sub_22C628B5C(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22C90B61C();

  return sub_22C62A9B8(v4, a1);
}

uint64_t sub_22C628BA8(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_22C63443C();
  a2(v8);
  v5 = sub_22C90B66C();

  return a3(a1, v5);
}

unint64_t sub_22C628C20(unsigned int a1)
{
  v3 = MEMORY[0x2318B8AE0](*(v1 + 40), a1, 4);

  return sub_22C62AB70(a1, v3);
}

unint64_t sub_22C628C68()
{
  sub_22C634010();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C90B66C();
  v5 = sub_22C633E0C();

  return sub_22C62ABD0(v5, v6);
}

unint64_t sub_22C628CD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22C90B61C();

  return sub_22C62ACF4(a1, v4);
}

void sub_22C628D18()
{
  sub_22C633B34();
  sub_22C9069BC();
  sub_22C6339B0(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

unint64_t sub_22C628DD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22C90A11C();
  sub_22C90B62C();
  sub_22C909FFC();
  v4 = sub_22C90B66C();

  return sub_22C62AD54(a1, v4);
}

void sub_22C628E64()
{
  sub_22C633B34();
  sub_22C90021C();
  sub_22C6339B0(&qword_27D9BF408, MEMORY[0x277CC8C40]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C628F1C()
{
  v1 = *(v0 + 40);
  sub_22C9099FC();
  sub_22C6339B0(&qword_28142FA60, MEMORY[0x277D73358]);
  sub_22C909F7C();
  sub_22C62917C();
}

void sub_22C628FF0()
{
  sub_22C633B34();
  sub_22C9091CC();
  sub_22C6339B0(&qword_27D9BF390, MEMORY[0x277D72900]);
  sub_22C37335C();
  sub_22C909F7C();
  sub_22C375D20();
}

void sub_22C6290A8()
{
  v1 = *(v0 + 40);
  sub_22C9093BC();
  sub_22C6339B0(&qword_28142FA90, MEMORY[0x277D72A78]);
  sub_22C909F7C();
  sub_22C62917C();
}

void sub_22C62917C()
{
  sub_22C36BA7C();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  sub_22C369824(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_22C6339B0(v21, v22);
    v18 = sub_22C90A0BC();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  sub_22C36CC48();
}

unint64_t sub_22C6292F4(unint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    v7 = sub_22C48819C(v6, a1);

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22C6293AC(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_22C90430C();
  v86 = *(v82 - 8);
  v8 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](v82);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - v11;
  v71 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v12 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v93 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_22C902D0C();
  v14 = *(v90 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v90);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  v21 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v96 = (&v71 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v26);
  v31 = &v71 - v30;
  v32 = -1 << *(v2 + 32);
  v33 = a2 & ~v32;
  v99 = v2 + 64;
  if (((*(v2 + 64 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    return v33;
  }

  v95 = v28;
  v97 = ~v32;
  v98 = *(v27 + 72);
  v79 = (v86 + 8);
  v80 = v86 + 16;
  v84 = (v14 + 8);
  v85 = v29;
  v73 = (v14 + 32);
  v91 = v21;
  v92 = v17;
  v76 = v2;
  v75 = a1;
  v94 = v7;
  while (1)
  {
    v34 = *(v2 + 48);
    sub_22C62E98C();
    v35 = *(v17 + 48);
    sub_22C62E98C();
    sub_22C62E98C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v54 = a1;
      v55 = v85;
      sub_22C62E98C();
      if (!swift_getEnumCaseMultiPayload())
      {
        v58 = v74;
        v59 = v90;
        (*v73)(v74, &v20[v35], v90);
        LODWORD(v89) = sub_22C902CFC();
        v60 = *v84;
        (*v84)(v58, v59);
        sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
        v60(v55, v59);
        if (v89)
        {
          goto LABEL_64;
        }

        sub_22C62E9E0(v20, type metadata accessor for PromptTreeIdentifier.Label);
        v17 = v92;
        a1 = v54;
        goto LABEL_31;
      }

      sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
      (*v84)(v55, v90);
      a1 = v54;
      v7 = v94;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v37 = v95;
    sub_22C62E98C();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
      v57 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_25:
      sub_22C62E9E0(v37, v57);
LABEL_26:
      sub_22C3AC228(v20, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_61;
    }

    sub_22C630194();
    v56 = *v7;
    switch(*v37)
    {
      case 3:
        if (v56 == 3)
        {
          goto LABEL_42;
        }

        goto LABEL_59;
      case 4:
        if (v56 != 4)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      case 5:
        if (v56 != 5)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      case 6:
        if (v56 != 6)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      default:
        if (*v37 != v56 || (v56 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_59;
        }

LABEL_42:
        v62 = v37[1] == v7[1] && v37[2] == v7[2];
        if (v62 || (v63 = sub_22C90B4FC(), v37 = v95, (v63)) && (v37[3] == v7[3] ? (v64 = v37[4] == v7[4]) : (v64 = 0), (v64 || (v65 = sub_22C90B4FC(), v37 = v95, (v65)) && (v37[5] == v7[5] ? (v66 = v37[6] == v7[6]) : (v66 = 0), v66 || (sub_22C90B4FC())))
        {
          v67 = *(v72 + 32);
          v68 = sub_22C90067C();
          sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
          if (v68)
          {
            v69 = type metadata accessor for PromptTreeIdentifier.TurnChange;
            sub_22C62E9E0(v7, type metadata accessor for PromptTreeIdentifier.TurnChange);
            v70 = v95;
LABEL_63:
            sub_22C62E9E0(v70, v69);
LABEL_64:
            sub_22C62E9E0(v20, type metadata accessor for PromptTreeIdentifier.Label);
            return v33;
          }
        }

        else
        {
LABEL_59:
          sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
        }

        sub_22C62E9E0(v7, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C62E9E0(v95, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C62E9E0(v20, type metadata accessor for PromptTreeIdentifier.Label);
        break;
    }

LABEL_61:
    v33 = (v33 + 1) & v97;
    if (((*(v99 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      return v33;
    }
  }

  v37 = v96;
  sub_22C62E98C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
    v57 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
    goto LABEL_25;
  }

  v38 = v93;
  sub_22C630194();
  result = sub_22C48819C(*v37, *v38);
  if ((result & 1) == 0 || (v40 = v96[1], v88 = v93[1], v89 = v40, v41 = *(v88 + 16), v87 = *(v40 + 16), v87 != v41))
  {
LABEL_27:
    sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
    v52 = v96;
LABEL_28:
    sub_22C62E9E0(v93, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C62E9E0(v52, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C62E9E0(v20, type metadata accessor for PromptTreeIdentifier.Label);
    v2 = v76;
    a1 = v75;
LABEL_31:
    v7 = v94;
    goto LABEL_61;
  }

  if (!v87 || v89 == v88)
  {
LABEL_15:
    v51 = *(v71 + 24);
    v52 = v96;
    v53 = sub_22C90962C();
    sub_22C62E9E0(v31, type metadata accessor for PromptTreeIdentifier.Label);
    if (v53)
    {
      v69 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
      sub_22C62E9E0(v93, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v70 = v52;
      goto LABEL_63;
    }

    goto LABEL_28;
  }

  v42 = 0;
  v43 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v78 = v89 + v43;
  v77 = v88 + v43;
  while (1)
  {
    v44 = v83;
    if (v42 >= *(v89 + 16))
    {
      break;
    }

    v45 = *(v86 + 72) * v42;
    v46 = *(v86 + 16);
    v47 = v82;
    result = v46(v83, v78 + v45, v82);
    if (v42 >= *(v88 + 16))
    {
      goto LABEL_66;
    }

    v48 = v81;
    v46(v81, v77 + v45, v47);
    sub_22C6339B0(&qword_27D9BC808, MEMORY[0x277D85578]);
    v49 = sub_22C90A0BC();
    v50 = *v79;
    (*v79)(v48, v47);
    result = v50(v44, v47);
    v17 = v92;
    if ((v49 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v87 == ++v42)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

unint64_t sub_22C629ECC(unint64_t *a1, uint64_t a2)
{
  v5 = sub_22C90430C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v34 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v12 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2 + 64;
  v40 = v2;
  v16 = -1 << *(v2 + 32);
  result = a2 & ~v16;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v35 = a1;
  v36 = ~v16;
  v18 = *a1;
  v37 = *(v13 + 72);
  v38 = v18;
  v41 = (v6 + 8);
  v19 = v6;
  while (1)
  {
    v20 = *(v40 + 48);
    v45 = result;
    sub_22C62E98C();
    result = sub_22C48819C(*v15, v38);
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    v21 = v15[1];
    v47 = v35[1];
    v48 = v21;
    v22 = *(v47 + 16);
    v46 = *(v21 + 16);
    if (v46 != v22)
    {
      goto LABEL_13;
    }

    if (v46 && v48 != v47)
    {
      break;
    }

LABEL_12:
    v32 = *(v34 + 24);
    if (sub_22C90962C())
    {
      sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      return v45;
    }

LABEL_13:
    sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    result = (v45 + 1) & v36;
    if (((*(v39 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  v23 = 0;
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v44 = v48 + v24;
  v43 = v47 + v24;
  while (v23 < *(v48 + 16))
  {
    v25 = *(v19 + 72) * v23;
    v26 = *(v19 + 16);
    result = v26(v11, v44 + v25, v5);
    if (v23 >= *(v47 + 16))
    {
      goto LABEL_17;
    }

    v27 = v11;
    v28 = v42;
    v26(v42, v43 + v25, v5);
    sub_22C6339B0(&qword_27D9BC808, MEMORY[0x277D85578]);
    v29 = sub_22C90A0BC();
    v30 = *v41;
    v31 = v28;
    v11 = v27;
    (*v41)(v31, v5);
    result = (v30)(v27, v5);
    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v46 == ++v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_22C62A2B8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 3)
      {
        if (a1 == 3)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22C62A33C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result))
      {
        if (a1)
        {
          return result;
        }
      }

      else if ((a1 & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22C62A3B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_22C62A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22C90B4FC() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22C62A50C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_22C50B118(&qword_27D9BF500, &qword_27D9BCFE8, &qword_22C917388);
    v10 = sub_22C90A0BC();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C62A6CC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22C4AB1F0(*(v2 + 48) + 56 * v4, v29);
      v7 = v30;
      v8 = sub_22C374168(v29, v30);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v8);
      (*(v11 + 16))(&v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_22C48A760();
      sub_22C90AECC();
      v12 = a1[3];
      v13 = sub_22C374168(a1, v12);
      v14 = *(*(v12 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      (*(v16 + 16))(&v27[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_22C90AECC();
      LOBYTE(v7) = MEMORY[0x2318B8380](v28, v27);
      sub_22C48A7B4(v27);
      sub_22C48A7B4(v28);
      if (v7 & 1) != 0 && (sub_22C48819C(v31, a1[5]))
      {
        sub_22C46D424(v32, a1[6], v17, v18, v19, v20, v21, v22, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v28[0], v28[1], v28[2], v28[3], v28[4], v29[0]);
        v24 = v23;
        sub_22C48A6C0(v29);
        if (v24)
        {
          return v4;
        }
      }

      else
      {
        sub_22C48A6C0(v29);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22C62A954(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_22C62A9B8(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_22C62AA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    v11 = *(v2 + 48);
    v12 = *(v5 + 72);
    sub_22C62E98C();
    sub_22C834B1C();
    v14 = v13;
    sub_22C62E9E0(v8, type metadata accessor for CacheKeyHashableRepresentation);
    if (v14)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C62AB70(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_22C62ABD0(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v18 = a1[4];
    do
    {
      v10 = (*(v2 + 48) + 40 * v4);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = *v10 == v6 && v10[1] == v7;
      if (v14 || (sub_22C90B4FC() & 1) != 0)
      {
        v15 = v11 == v8 && v12 == v9;
        if (v15 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C749DA0(v13, v18);
          if (v16)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22C62ACF4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_22C62AD54(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_22C90A11C();
    v8 = v7;
    if (v6 == sub_22C90A11C() && v8 == v9)
    {

      return i;
    }

    v11 = sub_22C90B4FC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_22C62AE4C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22C62AE6C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C62AE90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C628274();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
    sub_22C90B15C();
    v10 = *(v18 + 48);
    v11 = sub_22C901FAC();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v12 + 32))(a1, *(v18 + 56) + v13, v11);
    sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
    sub_22C90B17C();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v16 = sub_22C901FAC();
    v14 = a1;
    v15 = 1;
  }

  return sub_22C36C640(v14, v15, 1, v16);
}

uint64_t sub_22C62B048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C628274();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v9 = *(*v2 + 24);
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    sub_22C90B15C();
    v10 = *(v19 + 48);
    v11 = sub_22C901FAC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v19 + 56);
    v13 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
    v14 = *(*(v13 - 8) + 72);
    sub_22C630194();
    sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
    sub_22C90B17C();
    *v2 = v19;
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v17 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
    v15 = a1;
    v16 = 1;
  }

  return sub_22C36C640(v15, v16, 1, v17);
}

uint64_t sub_22C62B1F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C628874();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_22C3A5908(&qword_27D9BF3E8, &qword_22C9226C8);
    sub_22C90B15C();
    v10 = *(v18 + 48);
    v11 = sub_22C9014CC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v18 + 56);
    v13 = sub_22C907F9C();
    (*(*(v13 - 8) + 32))(a1, v12 + *(*(v13 - 8) + 72) * v7, v13);
    sub_22C6339B0(&qword_27D9BF3F0, MEMORY[0x277D78298]);
    sub_22C90B17C();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = sub_22C907F9C();
    v14 = a1;
    v15 = 1;
  }

  return sub_22C36C640(v14, v15, 1, v16);
}

uint64_t sub_22C62B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C634340();
  v12 = v11;
  sub_22C634158();
  sub_22C6287BC();
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6344F4();
    sub_22C6346A4();
    v17 = *(a10 + 48);
    v18 = sub_22C902C9C();
    sub_22C36985C(v18);
    (*(v19 + 8))(v17 + *(v19 + 72) * v15, v18);
    v20 = *(a10 + 56);
    v21 = v12(0);
    sub_22C36985C(v21);
    v23 = *(v22 + 32);
    v24 = *(v22 + 72);
    v25 = sub_22C634600();
    v26(v25);
    sub_22C6339B0(&qword_27D9BC1A8, MEMORY[0x277D1D780]);
    sub_22C36E644();
    sub_22C90B17C();
    *v10 = a10;
    sub_22C37049C();
  }

  else
  {
    v12(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v27, v28, v29, v30);
}

uint64_t sub_22C62B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C634340();
  v13 = v12;
  sub_22C634158();
  sub_22C3736B4();
  v17 = sub_22C36E5AC(v14, v15, v16, sub_22C36EF04);
  if (v18)
  {
    v19 = v17;
    v20 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6344F4();
    sub_22C6346A4();
    v21 = *(*(a10 + 48) + 16 * v19 + 8);

    v22 = *(a10 + 56);
    v23 = v13(0);
    sub_22C36985C(v23);
    (*(v24 + 32))(v10, v22 + *(v24 + 72) * v19, v23);
    sub_22C90B17C();
    *v11 = a10;
    sub_22C37049C();
  }

  else
  {
    v13(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v25, v26, v27, v28);
}

uint64_t sub_22C62B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22C628BA8(a1, sub_22C48640C, sub_22C6293AC);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v10 = *(*v3 + 24);
    sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
    sub_22C90B15C();
    v11 = *(v18 + 48);
    v12 = type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C62E9E0(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for PromptTreeIdentifier.Label);
    v13 = *(v18 + 56);
    sub_22C630194();
    sub_22C6339B0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C90B17C();
    *v3 = v18;
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = type metadata accessor for PromptTreeIdentifier.Label(0);
    v14 = a2;
    v15 = 1;
  }

  return sub_22C36C640(v14, v15, 1, v16);
}

uint64_t sub_22C62B7D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C6280AC();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
    sub_22C90B15C();
    v10 = *(v18 + 48);
    v11 = sub_22C902D0C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v12 + 32))(a1, *(v18 + 56) + v13, v11);
    sub_22C6339B0(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
    sub_22C90B17C();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v16 = sub_22C902D0C();
    v14 = a1;
    v15 = 1;
  }

  return sub_22C36C640(v14, v15, 1, v16);
}

uint64_t sub_22C62B990()
{
  v1 = v0;
  v2 = *v0;
  sub_22C3736B4();
  v6 = sub_22C36E5AC(v3, v4, v5, sub_22C36EF04);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v1;
    v11 = *(*v1 + 24);
    sub_22C3A5908(&qword_27D9BF400, &qword_22C9226D0);
    sub_22C634424();
    v12 = *(*(v15 + 48) + 16 * v9 + 8);

    v13 = *(*(v15 + 56) + v9);
    type metadata accessor for LSDeveloperType(0);
    sub_22C90B17C();
    *v1 = v15;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFEFF | (((v8 & 1) == 0) << 8);
}

uint64_t sub_22C62BA88()
{
  v1 = v0;
  v2 = *v0;
  sub_22C38AA00();
  v5 = sub_22C628BA8(v3, v4, sub_22C62AA14);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6348C8();
  sub_22C3A5908(&qword_27D9BF3B8, &qword_22C922678);
  sub_22C63435C();
  v9 = *(v19 + 48);
  v10 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C36985C(v10);
  v12 = *(v11 + 72);
  sub_22C3723BC();
  sub_22C62E9E0(v13, v14);
  v15 = *(*(v19 + 56) + 8 * v7);
  sub_22C633F48();
  sub_22C6339B0(v16, v17);
  sub_22C633C88();
  sub_22C90B17C();
  *v1 = v19;
  return v15;
}

uint64_t sub_22C62BB98()
{
  sub_22C634158();
  sub_22C628D18();
  if (v3)
  {
    v4 = v2;
    v5 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v1;
    v6 = *(*v1 + 24);
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    sub_22C63435C();
    v7 = *(v20 + 48);
    v8 = sub_22C9069BC();
    sub_22C36985C(v8);
    (*(v9 + 8))(v7 + *(v9 + 72) * v4, v8);
    v10 = *(v20 + 56);
    v11 = sub_22C908C5C();
    sub_22C36985C(v11);
    (*(v12 + 32))(v0, v10 + *(v12 + 72) * v4, v11);
    sub_22C382D70();
    sub_22C6339B0(v13, v14);
    sub_22C44178C();
    sub_22C90B17C();
    *v1 = v20;
    v15 = sub_22C37049C();
    v18 = v11;
  }

  else
  {
    sub_22C908C5C();
    v15 = sub_22C37582C();
  }

  return sub_22C36C640(v15, v16, v17, v18);
}

uint64_t sub_22C62BCF8()
{
  sub_22C634340();
  v2 = v1;
  sub_22C634158();
  sub_22C3736B4();
  v6 = sub_22C36E5AC(v3, v4, v5, sub_22C36EF04);
  if (v7)
  {
    v8 = v6;
    v9 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *v0;
    v10 = *(*v0 + 24);
    v11 = sub_22C370114();
    sub_22C3A5908(v11, v12);
    sub_22C90B15C();
    v13 = *(*(v24 + 48) + 16 * v8 + 8);

    v14 = *(v24 + 56);
    v15 = v2(0);
    sub_22C36985C(v15);
    v17 = *(v16 + 72);
    sub_22C630194();
    sub_22C37A004();
    sub_22C90B17C();
    *v0 = v24;
    sub_22C37049C();
  }

  else
  {
    v2(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v18, v19, v20, v21);
}

double sub_22C62BE24@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C38AA00();
  v7 = sub_22C628BA8(v5, v6, sub_22C62AA14);
  if (v8)
  {
    v9 = v7;
    v10 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6348C8();
    sub_22C3A5908(&qword_27D9BF3C0, &unk_22C922680);
    sub_22C63435C();
    v11 = *(v22 + 48);
    v12 = type metadata accessor for CacheKeyHashableRepresentation(0);
    sub_22C36985C(v12);
    v14 = *(v13 + 72);
    sub_22C3723BC();
    sub_22C62E9E0(v15, v16);
    v17 = *(v22 + 56) + 40 * v9;
    v18 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 16) = v18;
    *(a1 + 32) = *(v17 + 32);
    sub_22C633F48();
    sub_22C6339B0(v19, v20);
    sub_22C44178C();
    sub_22C90B17C();
    *v2 = v22;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
  }

  return result;
}

uint64_t sub_22C62BF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_22C6290A8();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v9 = *(*v2 + 24);
    sub_22C3A5908(&qword_27D9BF3B0, &qword_22C922670);
    sub_22C90B15C();
    v10 = *(v19 + 48);
    v11 = sub_22C9093BC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v19 + 56);
    v13 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
    v14 = *(*(v13 - 8) + 72);
    sub_22C630194();
    sub_22C6339B0(&qword_28142FA90, MEMORY[0x277D72A78]);
    sub_22C90B17C();
    *v2 = v19;
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v17 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
    v15 = a1;
    v16 = 1;
  }

  return sub_22C36C640(v15, v16, 1, v17);
}

void sub_22C62C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  v14 = sub_22C901FAC();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC(v18, v19);
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF420, &qword_22C9226E0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = *v12;
  if (v13)
  {
    sub_22C6343A4();
    v23 = sub_22C9070DC();
    sub_22C36985C(v23);
    v25 = *(v24 + 40);
    sub_22C37ECAC(*(v24 + 72));
    sub_22C36CC48();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v34 = sub_22C633BF0();
    v35(v34);
    sub_22C633F30();
    v36 = sub_22C633B5C();
    sub_22C62FC34(v36, v37, v38, v39, v40, v41);
    sub_22C36CC48();
  }
}

void sub_22C62C26C()
{
  sub_22C36BA7C();
  v2 = sub_22C633C14();
  v3 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v2);
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C6340D8();
  v7 = sub_22C628410();
  sub_22C37FEBC(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_22C3A5908(&qword_27D9BD070, &unk_22C922820);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628410();
    sub_22C634058();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v1;
  if (v13)
  {
    v17 = *(v16 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v0;
    sub_22C36CC48();
  }

  else
  {
    sub_22C37335C();
    sub_22C62E98C();
    sub_22C37EBD0();
    sub_22C62F994(v20, v21, v22, v16);
    sub_22C36CC48();
  }
}

void sub_22C62C3D4()
{
  sub_22C36BA7C();
  v3 = v1;
  v4 = sub_22C633C14();
  v5 = type metadata accessor for PromptTreeIdentifier.Label(v4);
  v6 = sub_22C36985C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  v9 = *v1;
  sub_22C633A64();
  v11 = sub_22C628BA8(v2, v10, sub_22C6293AC);
  sub_22C37FEBC(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v14;
  sub_22C3A5908(&qword_27D9BF508, &unk_22C922840);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    v18 = *v3;
    sub_22C633A64();
    sub_22C628BA8(v2, v19, sub_22C6293AC);
    sub_22C634058();
    if (!v21)
    {
      goto LABEL_11;
    }

    v16 = v20;
  }

  v22 = *v3;
  if (v17)
  {
    *(v22[7] + 8 * v16) = v0;
  }

  else
  {
    sub_22C36D264();
    sub_22C62E98C();
    v23 = sub_22C3819EC();
    sub_22C62F54C(v23, v24, v0, v22);
  }

  sub_22C36CC48();
}

void sub_22C62C51C()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v12 = sub_22C628700(v11, v6, v4, v2);
  sub_22C37FEBC(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_14:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v15;
  sub_22C3A5908(&qword_27D9BF538, &unk_22C922870);
  if (sub_22C6349E0())
  {
    v19 = *v1;
    v20 = sub_22C372FCC();
    sub_22C628700(v20, v21, v5, v3);
    sub_22C634058();
    if (!v23)
    {
      goto LABEL_14;
    }

    v17 = v22;
  }

  if (v18)
  {
    v24 = *(*v1 + 56);
    v25 = *(v24 + 8 * v17);
    *(v24 + 8 * v17) = v9;
    sub_22C36CC48();
  }

  else
  {
    v28 = sub_22C36FC74();
    sub_22C62F64C(v28, v29, v7, v5, v3, v9, v30);

    sub_22C36CC48();
  }
}

void sub_22C62C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  v14 = v12;
  v15 = sub_22C901FAC();
  v16 = sub_22C369824(v15);
  v40 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C377578();
  v20 = *v12;
  sub_22C628274();
  sub_22C37FEBC(v21, v22);
  if (v23)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v24 = *v14;
    sub_22C628274();
    sub_22C633C04();
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    v26 = v40[5];
    v27 = *(*v14 + 56);
    v28 = v40[9];
    sub_22C37275C();
    sub_22C36CC48();

    v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    v37 = v40[2];
    v38 = sub_22C36D384();
    v39(v38);
    sub_22C633B5C();
    sub_22C62F8F0();
    sub_22C36CC48();
  }
}

void sub_22C62C7D4()
{
  sub_22C3BDA38();
  sub_22C633C40();
  v5 = v4;
  v6 = *v0;
  sub_22C3736B4();
  v10 = sub_22C6346BC(v7, v8, v9, sub_22C36EF04);
  sub_22C37FEBC(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF528, &qword_22C922860);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v13 = *v1;
    sub_22C3736B4();
    v14 = sub_22C371530();
    sub_22C36E5AC(v14, v15, v16, v17);
    sub_22C633CA8();
    if (!v19)
    {
      goto LABEL_12;
    }

    v3 = v18;
  }

  if (v2)
  {
    *(*(*v1 + 56) + v3) = v5;
    sub_22C3BDA24();
  }

  else
  {
    v20 = sub_22C633DC0();
    sub_22C62F698(v20, v21, v22, v5, v23);
    sub_22C3BDA24();
  }
}

uint64_t sub_22C62C8E0()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C633F18();
  v6 = sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF520, &qword_22C922858);
  sub_22C633BE0();
  v9 = sub_22C90B15C();
  if (v9)
  {
    v13 = *v1;
    sub_22C633F18();
    v14 = sub_22C371530();
    sub_22C36E5AC(v14, v15, v16, v17);
    sub_22C633CA8();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v9, v10, v11, v12, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v21 = sub_22C633DC0();
    sub_22C62F6E0(v21, v22, v23, v0, v24);
    sub_22C3BDA24();
  }
}

void sub_22C62CA30()
{
  sub_22C36BA7C();
  v4 = v0;
  sub_22C633C14();
  v5 = sub_22C901FAC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_10:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v14 = *v0;
    sub_22C628274();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  v16 = *v4;
  if (v3)
  {
    v17 = sub_22C6343A4();
    v18 = type metadata accessor for PlanPostProcessor.ExpressionContext(v17);
    sub_22C369914(v18);
    v20 = *(v19 + 72);
    sub_22C633630();
  }

  else
  {
    (*(v8 + 16))(v2, v1, v5);
    sub_22C3819EC();
    sub_22C62FFB0();
  }

  sub_22C36CC48();
}

void sub_22C62CBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  v14 = sub_22C902C9C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C6287BC();
  sub_22C37FEBC(v18, v19);
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C6287BC();
    sub_22C633C04();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = *v12;
  if (v13)
  {
    sub_22C6343A4();
    v23 = sub_22C902D0C();
    sub_22C36985C(v23);
    v25 = *(v24 + 40);
    sub_22C37ECAC(*(v24 + 72));
    sub_22C36CC48();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v34 = sub_22C633BF0();
    v35(v34);
    sub_22C38A1D8();
    v36 = sub_22C633B5C();
    sub_22C62FC34(v36, v37, v38, v39, v40, v41);
    sub_22C36CC48();
  }
}

void sub_22C62CD44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C9014CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22C628874();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_22C3A5908(&qword_27D9BF3E8, &qword_22C9226C8);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_22C628874();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = sub_22C907F9C();
    v22 = *(v21 - 8);
    v23 = *(v22 + 40);
    v24 = v21;
    v25 = v20 + *(v22 + 72) * v14;

    v23(v25, a1, v24);
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    sub_22C62FC34(v14, v10, a1, v19, MEMORY[0x277D78298], MEMORY[0x277D1E2B8]);
  }
}

void sub_22C62CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  v14 = sub_22C902C9C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C6287BC();
  sub_22C37FEBC(v18, v19);
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC228, &qword_22C922850);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C6287BC();
    sub_22C633C04();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = *v12;
  if (v13)
  {
    sub_22C6343A4();
    v23 = sub_22C902C4C();
    sub_22C36985C(v23);
    v25 = *(v24 + 40);
    sub_22C37ECAC(*(v24 + 72));
    sub_22C36CC48();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v34 = sub_22C633BF0();
    v35(v34);
    sub_22C38A1D8();
    v36 = sub_22C633B5C();
    sub_22C62FC34(v36, v37, v38, v39, v40, v41);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62D0D4()
{
  sub_22C36BA7C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  sub_22C634744();
  v8 = *v0;
  sub_22C3736B4();
  v9 = sub_22C377B94();
  v13 = sub_22C36E5AC(v9, v10, v11, v12);
  sub_22C37FEBC(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    v20 = *v3;
    sub_22C3736B4();
    v21 = sub_22C377B94();
    sub_22C36E5AC(v21, v22, v23, v24);
    sub_22C385F54();
    if (!v26)
    {
      goto LABEL_14;
    }

    v18 = v25;
  }

  v27 = *v3;
  if (v19)
  {
    v28 = (*(v27 + 56) + 16 * v18);
    v29 = v28[1];
    *v28 = v2;
    v28[1] = v1;
    sub_22C36CC48();
  }

  else
  {
    sub_22C62F600(v18, v7, v5, v2, v1, v27);
    sub_22C36CC48();
  }
}

void sub_22C62D218()
{
  sub_22C36BA7C();
  sub_22C379A14();
  v2 = sub_22C901FAC();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    v12 = sub_22C633BF0();
    v13(v12);
    sub_22C633B5C();
    sub_22C62FA1C();
    sub_22C36CC48();
  }
}

uint64_t sub_22C62D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C634340();
  v58 = v16;
  v59 = v17;
  v19 = v18;
  v21 = v20;
  v22 = v15;
  v24 = v23;
  v26 = v25;
  sub_22C634738();
  sub_22C3736B4();
  v29 = sub_22C36E5AC(v27, v24, v28, sub_22C36EF04);
  sub_22C37FEBC(v29, v30);
  if (v33)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v34 = v31;
  v35 = v32;
  sub_22C3A5908(v21, v19);
  if (sub_22C6349E0())
  {
    v36 = *v15;
    sub_22C3736B4();
    v37 = sub_22C36D384();
    sub_22C36E5AC(v37, v38, v39, v40);
    sub_22C633C04();
    if (!v42)
    {
      goto LABEL_14;
    }

    v34 = v41;
  }

  v43 = *v22;
  if (v35)
  {
    v44 = *(v43 + 56);
    v45 = v58(0);
    sub_22C36985C(v45);
    v47 = *(v46 + 40);
    sub_22C633FC0(v44 + *(v46 + 72) * v34);
    sub_22C634220();

    return v51(v48, v49, v50, v51, v52, v53, v54, v55, v58, v59, a11, a12, a13, a14);
  }

  else
  {
    sub_22C62FCFC(v34, v26, v24, v14, v43);
    sub_22C634220();
  }
}

uint64_t sub_22C62D4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  sub_22C3A5908(&qword_27D9BDE38, &unk_22C922890);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(type metadata accessor for ToolPromptMap(0) - 8) + 72);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_22C62D6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_22C628BA8(a2, sub_22C48640C, sub_22C6293AC);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_22C628BA8(a2, sub_22C48640C, sub_22C6293AC);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v7 + 72);
    return sub_22C633630();
  }

  else
  {
    sub_22C62E98C();
    return sub_22C62F7BC(v14, v10, a1, v19);
  }
}

void sub_22C62D8A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C902D0C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22C6280AC();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  sub_22C6280AC();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v13 = v16;
LABEL_5:
  if (v14)
  {
    v18 = *(v21 + 40);
    v19 = *(*v3 + 56) + *(v21 + 72) * v13;

    v18(v19, a1, v6);
  }

  else
  {
    (*(v21 + 16))(v9, a2, v6);
    sub_22C62F8F0();
  }
}

void sub_22C62DA9C()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C633C14();
  v4 = type metadata accessor for PromptTreeIdentifier.Label(v3);
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = *v0;
  sub_22C633A64();
  v10 = sub_22C628BA8(v1, v9, sub_22C6293AC);
  sub_22C37FEBC(v10, v11);
  if (v13)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v14 = v12;
  sub_22C3A5908(&qword_27D9BD060, &unk_22C917430);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    v15 = *v2;
    sub_22C633A64();
    sub_22C628BA8(v1, v16, sub_22C6293AC);
    sub_22C634058();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = *v2;
  if (v14)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    sub_22C37335C();
    sub_22C62E98C();
    v20 = sub_22C633DC0();
    sub_22C62F994(v20, v21, v22, v18);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  sub_22C3A5908(&qword_27D9BF540, &unk_22C922880);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0) - 8) + 72);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v11, a2, a3, a1, v16);
  }
}

void sub_22C62DE00()
{
  sub_22C3BDA38();
  sub_22C633C40();
  v5 = v4;
  v6 = *v0;
  sub_22C3736B4();
  v10 = sub_22C6346BC(v7, v8, v9, sub_22C36EF04);
  sub_22C37FEBC(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF400, &qword_22C9226D0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v13 = *v1;
    sub_22C3736B4();
    v14 = sub_22C371530();
    sub_22C36E5AC(v14, v15, v16, v17);
    sub_22C633CA8();
    if (!v19)
    {
      goto LABEL_12;
    }

    v3 = v18;
  }

  if (v2)
  {
    *(*(*v1 + 56) + v3) = v5;
    sub_22C3BDA24();
  }

  else
  {
    v20 = sub_22C633DC0();
    sub_22C62F698(v20, v21, v22, v5, v23);
    sub_22C3BDA24();
  }
}

void sub_22C62DF0C()
{
  sub_22C36BA7C();
  sub_22C379A14();
  v2 = sub_22C90430C();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628164();
  sub_22C37FEBC(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF530, &qword_22C922868);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628164();
    sub_22C633C04();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    v12 = sub_22C633BF0();
    v13(v12);
    sub_22C633B5C();
    sub_22C62FA1C();
    sub_22C36CC48();
  }
}

void sub_22C62E050(uint64_t a1, double a2)
{
  v5 = v2;
  v8 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v9 = sub_22C36985C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = *v2;
  sub_22C38AA00();
  v14 = sub_22C628BA8(a1, v13, sub_22C62AA14);
  sub_22C37FEBC(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_10:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C50B42C();
  sub_22C3A5908(&qword_27D9BF3B8, &qword_22C922678);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v17 = *v5;
    sub_22C38AA00();
    sub_22C628BA8(a1, v18, sub_22C62AA14);
    sub_22C385F54();
    if (!v20)
    {
      goto LABEL_10;
    }

    v3 = v19;
  }

  v21 = *v5;
  if (v4)
  {
    *(v21[7] + 8 * v3) = a2;
  }

  else
  {
    sub_22C37BD98();
    sub_22C62E98C();
    v22 = sub_22C36D384();
    sub_22C62FAA8(v22, a2, v23, v21);
  }
}

void sub_22C62E1B0()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C3736B4();
  v6 = sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF3E0, &unk_22C9226B8);
  sub_22C633BE0();
  v9 = sub_22C90B15C();
  if (v9)
  {
    v13 = *v1;
    sub_22C3736B4();
    v14 = sub_22C371530();
    sub_22C36E5AC(v14, v15, v16, v17);
    sub_22C633CA8();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v9, v10, v11, v12, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v21 = sub_22C633DC0();
    sub_22C62F6E0(v21, v22, v23, v0, v24);
    sub_22C3BDA24();
  }
}

unint64_t sub_22C62E2C4(char a1, float a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22C6286A0(a1);
  sub_22C37FEBC(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_22C3A5908(&qword_27D9BF4B8, &qword_22C922798);
  result = sub_22C90B15C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  result = sub_22C6286A0(a1);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    *(v17[7] + 4 * v12) = a2;
  }

  else
  {

    return sub_22C62FB5C(v12, a1, v17, a2);
  }

  return result;
}

uint64_t sub_22C62E3C4(uint64_t a1, uint64_t a2)
{
  sub_22C634738();
  v4 = sub_22C628C68();
  sub_22C37FEBC(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_22C3A5908(&qword_27D9BF3D8, &unk_22C9226A0);
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628C68();
    sub_22C633CA8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  if (v10)
  {
    v13 = *(*v2 + 56);
    v14 = sub_22C90339C();
    sub_22C36985C(v14);
    v16 = *(v15 + 40);
    v17 = sub_22C633FC0(v13 + *(v15 + 72) * v9);

    return v18(v17);
  }

  else
  {
    sub_22C63472C();
    sub_22C62FBA0();
    return sub_22C633814(a2, v20);
  }
}

uint64_t sub_22C62E500()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C3736B4();
  v6 = sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
  sub_22C633BE0();
  v9 = sub_22C90B15C();
  if (v9)
  {
    v13 = *v1;
    sub_22C3736B4();
    v14 = sub_22C371530();
    sub_22C36E5AC(v14, v15, v16, v17);
    sub_22C633CA8();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v9, v10, v11, v12, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v21 = sub_22C633DC0();
    sub_22C62F6E0(v21, v22, v23, v0, v24);
    sub_22C3BDA24();
  }
}

uint64_t sub_22C62E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  sub_22C3A5908(&qword_27D9BF488, &qword_22C922748);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(type metadata accessor for ActionParameterValue(0) - 8) + 72);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v11, a2, a3, a1, v16);
  }
}

void sub_22C62E7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  v14 = sub_22C9069BC();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628D18();
  sub_22C37FEBC(v18, v19);
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628D18();
    sub_22C633C04();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = *v12;
  if (v13)
  {
    sub_22C6343A4();
    v23 = sub_22C908C5C();
    sub_22C36985C(v23);
    v25 = *(v24 + 40);
    sub_22C37ECAC(*(v24 + 72));
    sub_22C36CC48();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v34 = sub_22C633BF0();
    v35(v34);
    v36 = sub_22C633B5C();
    sub_22C62FC34(v36, v37, v38, v39, v40, v41);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62E98C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C369A9C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C62E9E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C369848(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C62EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  sub_22C3A5908(&qword_27D9BF460, &unk_22C922720);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0) - 8) + 72);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v11, a2, a3, a1, v16);
  }
}

void sub_22C62EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  v14 = sub_22C901FAC();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC(v18, v19);
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF418, &qword_22C9226D8);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = *v12;
  if (v13)
  {
    sub_22C6343A4();
    v23 = sub_22C908C5C();
    sub_22C36985C(v23);
    v25 = *(v24 + 40);
    sub_22C37ECAC(*(v24 + 72));
    sub_22C36CC48();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v34 = sub_22C633BF0();
    v35(v34);
    sub_22C633F30();
    v36 = sub_22C633B5C();
    sub_22C62FC34(v36, v37, v38, v39, v40, v41);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62EDB8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_22C634774();
  v6 = sub_22C628C68();
  sub_22C37FEBC(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v8;
  v12 = v9;
  sub_22C3A5908(&qword_27D9BF3D0, &qword_22C922698);
  result = sub_22C90B15C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v2;
  result = sub_22C628C68();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  if (v12)
  {
    *(*(*v4 + 56) + 8 * v11) = v3;
  }

  else
  {
    v16 = sub_22C372280();
    sub_22C62FD90(v16, v17, v3, v18);
    return sub_22C633814(a2, v19);
  }

  return result;
}

uint64_t sub_22C62EEA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_22C628BA8(a2, sub_22C834E6C, sub_22C62AA14);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_22C3A5908(&qword_27D9BF3C0, &unk_22C922680);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_22C628BA8(a2, sub_22C834E6C, sub_22C62AA14);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = v18[7] + 40 * v13;

    return sub_22C633684(a1, v19);
  }

  else
  {
    sub_22C62E98C();
    return sub_22C62FDE8(v13, v9, a1, v18);
  }
}

void sub_22C62F094()
{
  sub_22C3BDA38();
  v5 = v1;
  sub_22C38B5AC();
  sub_22C634738();
  sub_22C3736B4();
  v8 = sub_22C634864(v6, v7);
  v12 = sub_22C36E5AC(v8, v9, v10, v11);
  sub_22C37FEBC(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C50B42C();
  sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v15 = *v1;
    sub_22C3736B4();
    sub_22C36E5AC(v3, v2, v16, sub_22C36EF04);
    sub_22C385F54();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v18 = *(*v5 + 56);
    v19 = type metadata accessor for DialogValue(0);
    sub_22C369914(v19);
    v21 = *(v20 + 72);
    sub_22C633630();
    sub_22C3BDA24();
  }

  else
  {
    v22 = sub_22C36D384();
    sub_22C62FEB0(v22, v23, v2, v0, v24);
    sub_22C3BDA24();
  }
}

_OWORD *sub_22C62F20C()
{
  sub_22C3BDA38();
  v6 = v1;
  sub_22C38B5AC();
  sub_22C634738();
  sub_22C3736B4();
  v9 = sub_22C634864(v7, v8);
  v13 = sub_22C36E5AC(v9, v10, v11, v12);
  sub_22C37FEBC(v13, v14);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    v16 = *v1;
    sub_22C3736B4();
    sub_22C36E5AC(v3, v2, v17, sub_22C36EF04);
    sub_22C633CA8();
    if (!v19)
    {
      goto LABEL_14;
    }

    v5 = v18;
  }

  v20 = *v6;
  if (v4)
  {
    sub_22C36FF94((v20[7] + 32 * v5));
    sub_22C36BA00();
    sub_22C3BDA24();

    return sub_22C456E34(v21, v22);
  }

  else
  {
    sub_22C62FF44(v5, v3, v2, v0, v20);
    sub_22C3BDA24();
  }
}

void sub_22C62F348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22C6290A8();
  if (__OFADD__(*(v10 + 16), (v11 & 1) == 0))
  {
    __break(1u);
LABEL_9:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v12 = v11;
  sub_22C3A5908(&qword_27D9BF3B0, &qword_22C922670);
  if (sub_22C90B15C())
  {
    v13 = *v3;
    sub_22C6290A8();
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    v15 = *(*v3 + 56);
    v16 = *(*(type metadata accessor for DialogValuesResolver.CollectedValue(0) - 8) + 72);
    sub_22C633630();
  }

  else
  {
    (*(v6 + 16))(v9, a2, v5);
    sub_22C62FFB0();
  }
}

uint64_t sub_22C62F54C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for PromptTreeIdentifier.Label(0) - 8) + 72);
  result = sub_22C630194();
  *(a4[7] + 8 * a1) = a3;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22C62F600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22C37B700(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_22C62F64C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_22C62F698(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22C62F6E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_22C62F728()
{
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  v10 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369A9C(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22C633FF8();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

uint64_t sub_22C62F7BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6];
  v6 = *(*(type metadata accessor for PromptTreeIdentifier.Label(0) - 8) + 72) * a1;
  sub_22C630194();
  v7 = a4[7];
  result = sub_22C630194();
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_22C62F884(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22C37B700(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 56 * result;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  *(v8 + 48) = *(v9 + 48);
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

void sub_22C62F8F0()
{
  sub_22C3BDA38();
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v2, v3, v4, v5);
  v7 = *(v6 + 48);
  v9 = v8(0);
  sub_22C36985C(v9);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * v1;
  sub_22C38AA18();
  v11();
  v13 = *(v0 + 56);
  sub_22C44178C();
  v11();
  sub_22C633FF8();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v14;
    sub_22C3BDA24();
  }
}

void sub_22C62F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C38B5AC();
  v7 = v6;
  sub_22C37F3F8(v6, v8, v9, v10);
  v12 = *(v11 + 48);
  v14 = v13(0);
  sub_22C369914(v14);
  v16 = *(v15 + 72);
  sub_22C630194();
  *(*(a4 + 56) + 8 * v7) = v4;
  sub_22C633FF8();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v17;
  }
}

void sub_22C62FA1C()
{
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  v11 = v10(0);
  sub_22C369A9C(v11);
  (*(v12 + 32))(v9 + *(v12 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22C633FF8();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v13;
  }
}

uint64_t sub_22C62FAA8(unint64_t a1, double a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for CacheKeyHashableRepresentation(0) - 8) + 72);
  result = sub_22C630194();
  *(a4[7] + 8 * a1) = a2;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22C62FB5C(unint64_t result, char a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void sub_22C62FBA0()
{
  sub_22C6346E8();
  v3 = v2;
  v7 = sub_22C37F3F8(v2, v4, v5, v6);
  v9 = *(v8 + 48) + 40 * v7;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  v12 = *(v8 + 56);
  v13 = sub_22C90339C();
  sub_22C369A9C(v13);
  (*(v14 + 32))(v12 + *(v14 + 72) * v3, v1);
  sub_22C633FF8();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v15;
  }
}

void sub_22C62FC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_22C38B5AC();
  v11 = v10;
  sub_22C37F3F8(v10, v12, v13, v14);
  v16 = *(v15 + 48);
  v18 = v17(0);
  sub_22C369A9C(v18);
  (*(v19 + 32))(v16 + *(v19 + 72) * v11, v7);
  v20 = *(a4 + 56);
  v21 = a6(0);
  sub_22C369A9C(v21);
  (*(v22 + 32))(v20 + *(v22 + 72) * v11, v6);
  sub_22C633FF8();
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v23;
  }
}

void sub_22C62FCFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22C37B700(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v15 = v14(0);
  sub_22C369A9C(v15);
  (*(v16 + 32))(v13 + *(v16 + 72) * a1, a4);
  sub_22C633FF8();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v17;
  }
}

unint64_t sub_22C62FD90(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22C62FDE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for CacheKeyHashableRepresentation(0) - 8) + 72);
  result = sub_22C630194();
  v10 = a4[7] + 40 * a1;
  *(v10 + 32) = *(a3 + 32);
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 16) = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void sub_22C62FEB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22C37B700(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v11 = *(v7 + 56);
  v13 = v12(0);
  sub_22C369914(v13);
  v15 = *(v14 + 72);
  sub_22C630194();
  sub_22C633FF8();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

_OWORD *sub_22C62FF44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22C456E34(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_22C62FFB0()
{
  sub_22C3BDA38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C37F3F8(v6, v4, v8, v2);
  v10 = *(v9 + 48);
  v12 = v11(0);
  sub_22C369A9C(v12);
  (*(v13 + 32))(v10 + *(v13 + 72) * v7, v5);
  v14 = *(v3 + 56);
  v15 = v1(0);
  sub_22C369914(v15);
  v17 = *(v16 + 72);
  sub_22C630194();
  sub_22C633FF8();
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    sub_22C3BDA24();
  }
}

uint64_t sub_22C6300B4()
{
  v0 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  sub_22C3D3364();
  v6 = sub_22C9099FC();
  result = sub_22C376738(v5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    sub_22C36BBA8(v6);
    v10 = *(v9 + 32);
    v11 = sub_22C36BA00();
    return v12(v11);
  }

  return result;
}

uint64_t sub_22C630194()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C369A9C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C6301E8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = (*(v3 + 19) << 24) | (*(v3 + 21) << 40) | *(v3 + 16) | (*(v3 + 18) << 16);
  return sub_22C61DBA0(a1, *(v3 + 32), *(v3 + 40), a2, a3);
}

void sub_22C63022C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22C61D6B4();
}

void sub_22C630248()
{
  sub_22C370030();
  v1 = v0;
  v46 = sub_22C901FAC();
  v2 = sub_22C369824(v46);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v44 = v8 - v7;
  v9 = sub_22C36BA0C();
  v10 = type metadata accessor for ActionParameterValue(v9);
  v11 = sub_22C369824(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v41 = v16 - v15;
  sub_22C3A5908(&qword_27D9BF4B0, &qword_22C922790);
  sub_22C90B1CC();
  v17 = 0;
  v47 = v1;
  v19 = *(v1 + 64);
  v18 = v1 + 64;
  v20 = *(v18 - 32);
  sub_22C36D280();
  v24 = (v23 + 63) >> 6;
  v39 = v25 + 8;
  v45 = v4;
  v40 = v25;
  if ((v22 & v21) != 0)
  {
    while (1)
    {
      sub_22C36C050();
      v48 = v27;
LABEL_8:
      v30 = v26 | (v17 << 6);
      v31 = *(v47 + 56);
      v32 = (*(v47 + 48) + 16 * v30);
      v33 = v32[1];
      v49 = *v32;
      v34 = *(v42 + 72);
      sub_22C633B00();
      sub_22C62E98C();
      (*(v45 + 16))(v44, v41 + *(v43 + 24), v46);

      sub_22C633A4C();
      sub_22C62E9E0(v41, v35);
      *(v39 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v36 = (v40[6] + 16 * v30);
      *v36 = v49;
      v36[1] = v33;
      (*(v45 + 32))(v40[7] + *(v45 + 72) * v30, v44, v46);
      sub_22C6341D8();
      if (v38)
      {
        break;
      }

      v40[2] = v37;
      if (!v48)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v17 >= v24)
      {
        sub_22C36FB20();
        return;
      }

      ++v28;
      if (*(v18 + 8 * v17))
      {
        sub_22C37FCE8();
        v48 = v29;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C6304DC(uint64_t *a1)
{
  v2 = *(sub_22C908C5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C498(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C630584(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C630584(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C908C5C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C908C5C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C630AF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22C6306B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C6306B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_22C9093BC();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v73);
  v72 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v71 = &v54[-v12];
  v13 = sub_22C908C5C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54[-v18];
  result = MEMORY[0x28223BE20](v17);
  v23 = &v54[-v21];
  v56 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v26 = *(v22 + 16);
    v25 = v22 + 16;
    v27 = *(v25 + 56);
    v68 = (v8 + 8);
    v69 = v26;
    v66 = &v54[-v21];
    v67 = (v25 - 8);
    v70 = v25;
    v62 = (v25 + 16);
    v63 = v24;
    v28 = v24 + v27 * (a3 - 1);
    v61 = -v27;
    v29 = a1 - a3;
    v55 = v27;
    v30 = v24 + v27 * a3;
    v65 = v19;
    while (2)
    {
      v59 = v28;
      v60 = a3;
      v57 = v30;
      v58 = v29;
      v31 = v29;
      v76 = v28;
      while (1)
      {
        v74 = v31;
        v75 = v30;
        v32 = v69;
        v69(v23, v30, v13);
        v32(v19, v76, v13);
        v33 = v71;
        sub_22C90774C();
        v34 = sub_22C90938C();
        v36 = v35;
        v37 = *v68;
        v38 = v73;
        (*v68)(v33, v73);
        v39 = v72;
        sub_22C90774C();
        v40 = v13;
        v41 = sub_22C90938C();
        v43 = v42;
        v37(v39, v38);
        if (v34 == v41 && v36 == v43)
        {
          break;
        }

        v45 = sub_22C90B4FC();

        v46 = *v67;
        v19 = v65;
        (*v67)(v65, v40);
        v23 = v66;
        result = v46(v66, v40);
        v13 = v40;
        v48 = v74;
        v47 = v75;
        if (v45)
        {
          if (!v63)
          {
            __break(1u);
            return result;
          }

          v49 = *v62;
          v50 = v64;
          (*v62)(v64, v75, v40);
          v51 = v76;
          swift_arrayInitWithTakeFrontToBack();
          result = v49(v51, v50, v40);
          v76 = v51 + v61;
          v30 = v47 + v61;
          v52 = __CFADD__(v48, 1);
          v31 = v48 + 1;
          if (!v52)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v53 = *v67;
      v19 = v65;
      (*v67)(v65, v40);
      v23 = v66;
      result = v53(v66, v40);
      v13 = v40;
LABEL_14:
      a3 = v60 + 1;
      v28 = v59 + v55;
      v29 = v58 - 1;
      v30 = v57 + v55;
      if (v60 + 1 != v56)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C630AF0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v168 = a1;
  v194 = sub_22C9093BC();
  v6 = *(v194 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v194);
  v190 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v189 = &v163 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v177 = &v163 - v13;
  MEMORY[0x28223BE20](v12);
  v176 = &v163 - v14;
  v178 = sub_22C908C5C();
  v15 = *(*(v178 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v178);
  v172 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v187 = &v163 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v191 = &v163 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v163 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v182 = &v163 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v181 = &v163 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v163 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = &v163 - v32;
  v179 = v33;
  v180 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_117:
    v200 = *v168;
    if (!v200)
    {
      goto LABEL_159;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v183;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_119:
      v155 = (v37 + 16);
      for (i = *(v37 + 2); i >= 2; *v155 = i)
      {
        if (!*v180)
        {
          goto LABEL_156;
        }

        v157 = &v37[16 * i];
        v158 = *v157;
        v159 = &v155[2 * i];
        v160 = *(v159 + 1);
        sub_22C6318D8(*v180 + *(v179 + 72) * *v157, *v180 + *(v179 + 72) * *v159, (*v180 + *(v179 + 72) * v160), v200);
        if (v31)
        {
          break;
        }

        if (v160 < v158)
        {
          goto LABEL_144;
        }

        if (i - 2 >= *v155)
        {
          goto LABEL_145;
        }

        *v157 = v158;
        *(v157 + 1) = v160;
        v161 = *v155 - i;
        if (*v155 < i)
        {
          goto LABEL_146;
        }

        i = *v155 - 1;
        sub_22C56BFF0(v159 + 16, v161, v159);
      }

LABEL_115:

      return;
    }

LABEL_153:
    v37 = sub_22C56BFD8(v37);
    goto LABEL_119;
  }

  v36 = 0;
  v195 = (v33 + 8);
  v196 = v33 + 16;
  v192 = (v33 + 32);
  v193 = (v6 + 8);
  v37 = MEMORY[0x277D84F90];
  v167 = a4;
  v197 = v24;
  v165 = v31;
  v164 = &v163 - v32;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v169 = v37;
    if (v36 + 1 < v35)
    {
      v188 = v35;
      v40 = *v180;
      v41 = *(v33 + 72);
      v42 = v36;
      v184 = v36 + 1;
      v43 = *(v33 + 16);
      v200 = v40 + v41 * (v36 + 1);
      v44 = v178;
      (v43)(v34);
      v185 = v43;
      (v43)(v31, v40 + v41 * v42, v44);
      v45 = v183;
      LODWORD(v186) = sub_22C627008();
      if (v45)
      {
        v162 = *v195;
        (*v195)(v31, v44);
        (v162)(v34, v44);

        return;
      }

      v183 = 0;
      v46 = *v195;
      (*v195)(v31, v44);
      v175 = v46;
      (v46)(v34, v44);
      v166 = v42;
      v47 = (v42 + 2);
      v48 = v40 + v41 * (v42 + 2);
      v39 = v184;
      v198 = v41;
      v49 = v188;
      v50 = v200;
      while (1)
      {
        v51 = v47;
        if (v39 + 1 >= v49)
        {
          break;
        }

        v199 = v47;
        v184 = v39;
        v52 = v185;
        (v185)(v181, v48, v44);
        v200 = v50;
        v52(v182, v50, v44);
        v53 = v176;
        sub_22C90774C();
        v54 = sub_22C90938C();
        v56 = v55;
        v31 = v194;
        v57 = *v193;
        (*v193)(v53, v194);
        v58 = v177;
        sub_22C90774C();
        v59 = sub_22C90938C();
        v61 = v60;
        v57(v58, v31);
        if (v54 == v59 && v56 == v61)
        {
          v63 = 0;
        }

        else
        {
          v63 = sub_22C90B4FC();
        }

        v44 = v178;
        v64 = v175;
        (v175)(v182, v178);
        v64(v181, v44);
        v65 = v186 ^ v63;
        v41 = v198;
        v51 = v199;
        v48 += v198;
        v50 = &v198[v200];
        v39 = v184 + 1;
        v47 = v199 + 1;
        v24 = v197;
        v49 = v188;
        if (v65)
        {
          goto LABEL_16;
        }
      }

      v39 = v49;
LABEL_16:
      a4 = v167;
      if (v186)
      {
        v38 = v166;
        v37 = v169;
        if (v39 < v166)
        {
          goto LABEL_152;
        }

        if (v166 >= v39)
        {
          v33 = v179;
          goto LABEL_39;
        }

        if (v49 >= v51)
        {
          v66 = v51;
        }

        else
        {
          v66 = v49;
        }

        v67 = v39;
        v68 = v41 * (v66 - 1);
        v69 = v41 * v66;
        v70 = v166 * v41;
        v184 = v67;
        do
        {
          if (v38 != --v67)
          {
            v71 = *v180;
            if (!*v180)
            {
              goto LABEL_157;
            }

            v72 = *v192;
            v31 = v178;
            (*v192)(v172, v71 + v70, v178);
            v73 = v70 < v68 || v71 + v70 >= (v71 + v69);
            if (v73)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v68)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v72((v71 + v68), v172, v31);
            v37 = v169;
            v24 = v197;
            v41 = v198;
          }

          ++v38;
          v68 -= v41;
          v69 -= v41;
          v70 += v41;
        }

        while (v38 < v67);
        v33 = v179;
        a4 = v167;
        v39 = v184;
      }

      else
      {
        v33 = v179;
        v37 = v169;
      }

      v38 = v166;
    }

LABEL_39:
    v74 = v180[1];
    if (v39 < v74)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_149;
      }

      if (v39 - v38 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v39 < v38)
    {
      goto LABEL_148;
    }

    v106 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v39;
    if ((v106 & 1) == 0)
    {
      v151 = *(v37 + 2);
      sub_22C590218();
      v37 = v152;
    }

    v107 = v37;
    v108 = *(v37 + 2);
    v109 = v107;
    v110 = v108 + 1;
    if (v108 >= *(v107 + 3) >> 1)
    {
      sub_22C590218();
      v109 = v153;
    }

    *(v109 + 2) = v110;
    v111 = v109 + 32;
    v112 = &v109[16 * v108 + 32];
    v113 = v184;
    *v112 = v38;
    *(v112 + 1) = v113;
    if (!*v168)
    {
      goto LABEL_158;
    }

    if (v108)
    {
      v31 = *v168;
      v37 = v109;
      while (1)
      {
        v114 = v110 - 1;
        v115 = &v111[16 * v110 - 16];
        v116 = &v37[16 * v110];
        if (v110 >= 4)
        {
          break;
        }

        if (v110 == 3)
        {
          v117 = *(v37 + 4);
          v118 = *(v37 + 5);
          v127 = __OFSUB__(v118, v117);
          v119 = v118 - v117;
          v120 = v127;
LABEL_82:
          if (v120)
          {
            goto LABEL_135;
          }

          v132 = *v116;
          v131 = *(v116 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_138;
          }

          v136 = *(v115 + 1);
          v137 = v136 - *v115;
          if (__OFSUB__(v136, *v115))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v134, v137))
          {
            goto LABEL_143;
          }

          if (v134 + v137 >= v119)
          {
            if (v119 < v137)
            {
              v114 = v110 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v110 < 2)
        {
          goto LABEL_137;
        }

        v139 = *v116;
        v138 = *(v116 + 1);
        v127 = __OFSUB__(v138, v139);
        v134 = v138 - v139;
        v135 = v127;
LABEL_97:
        if (v135)
        {
          goto LABEL_140;
        }

        v141 = *v115;
        v140 = *(v115 + 1);
        v127 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v127)
        {
          goto LABEL_142;
        }

        if (v142 < v134)
        {
          goto LABEL_113;
        }

LABEL_104:
        if (v114 - 1 >= v110)
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v180)
        {
          goto LABEL_155;
        }

        v146 = &v111[16 * v114 - 16];
        v147 = *v146;
        v37 = &v111[16 * v114];
        v148 = *(v37 + 1);
        v149 = v183;
        sub_22C6318D8(*v180 + *(v179 + 72) * *v146, *v180 + *(v179 + 72) * *v37, (*v180 + *(v179 + 72) * v148), v31);
        v183 = v149;
        if (v149)
        {
          goto LABEL_115;
        }

        if (v148 < v147)
        {
          goto LABEL_130;
        }

        v150 = *(v109 + 2);
        if (v114 > v150)
        {
          goto LABEL_131;
        }

        *v146 = v147;
        v146[1] = v148;
        if (v114 >= v150)
        {
          goto LABEL_132;
        }

        v110 = v150 - 1;
        sub_22C56BFF0(v37 + 16, v150 - 1 - v114, &v111[16 * v114]);
        v37 = v109;
        *(v109 + 2) = v150 - 1;
        if (v150 <= 2)
        {
          goto LABEL_113;
        }
      }

      v121 = &v111[16 * v110];
      v122 = *(v121 - 8);
      v123 = *(v121 - 7);
      v127 = __OFSUB__(v123, v122);
      v124 = v123 - v122;
      if (v127)
      {
        goto LABEL_133;
      }

      v126 = *(v121 - 6);
      v125 = *(v121 - 5);
      v127 = __OFSUB__(v125, v126);
      v119 = v125 - v126;
      v120 = v127;
      if (v127)
      {
        goto LABEL_134;
      }

      v128 = *(v116 + 1);
      v129 = v128 - *v116;
      if (__OFSUB__(v128, *v116))
      {
        goto LABEL_136;
      }

      v127 = __OFADD__(v119, v129);
      v130 = v119 + v129;
      if (v127)
      {
        goto LABEL_139;
      }

      if (v130 >= v124)
      {
        v144 = *v115;
        v143 = *(v115 + 1);
        v127 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v127)
        {
          goto LABEL_147;
        }

        if (v119 < v145)
        {
          v114 = v110 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    v37 = v109;
LABEL_113:
    v33 = v179;
    v35 = v180[1];
    v36 = v184;
    a4 = v167;
    v24 = v197;
    v34 = v164;
    v31 = v165;
    if (v184 >= v35)
    {
      goto LABEL_117;
    }
  }

  v75 = v38 + a4;
  if (__OFADD__(v38, a4))
  {
    goto LABEL_150;
  }

  if (v75 >= v74)
  {
    v75 = v180[1];
  }

  v76 = v191;
  if (v75 < v38)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v39 == v75)
  {
    goto LABEL_61;
  }

  v77 = *v180;
  v78 = *(v33 + 72);
  v188 = *(v33 + 16);
  v79 = (v77 + v78 * (v39 - 1));
  v185 = -v78;
  v166 = v38;
  v80 = v38 - v39;
  v186 = v77;
  v170 = v78;
  v81 = (v77 + v39 * v78);
  v31 = v178;
  v171 = v75;
LABEL_48:
  v184 = v39;
  v173 = v81;
  v174 = v80;
  v82 = v80;
  v175 = v79;
  while (1)
  {
    v200 = v82;
    v199 = v81;
    v83 = v188;
    v188(v24, v81, v31);
    v198 = v79;
    v83(v76, v79, v31);
    v84 = v189;
    sub_22C90774C();
    v85 = sub_22C90938C();
    v87 = v86;
    v88 = *v193;
    v89 = v31;
    v90 = v194;
    (*v193)(v84, v194);
    v91 = v190;
    sub_22C90774C();
    v92 = sub_22C90938C();
    v94 = v93;
    v88(v91, v90);
    if (v85 == v92 && v87 == v94)
    {

      v104 = *v195;
      v105 = v191;
      (*v195)(v191, v89);
      v24 = v197;
      (v104)(v197, v89);
      v31 = v89;
      v76 = v105;
LABEL_59:
      v39 = v184 + 1;
      v79 = &v175[v170];
      v80 = v174 - 1;
      v81 = &v173[v170];
      if (v184 + 1 == v171)
      {
        v39 = v171;
        v37 = v169;
        v38 = v166;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v96 = sub_22C90B4FC();

    v97 = *v195;
    v98 = v191;
    (*v195)(v191, v89);
    v24 = v197;
    (v97)(v197, v89);
    v31 = v89;
    v76 = v98;
    if ((v96 & 1) == 0)
    {
      goto LABEL_59;
    }

    v99 = v200;
    if (!v186)
    {
      break;
    }

    v100 = *v192;
    v101 = v187;
    v102 = v199;
    (*v192)(v187, v199, v31);
    v103 = v198;
    swift_arrayInitWithTakeFrontToBack();
    v100(v103, v101, v31);
    v79 = &v103[v185];
    v81 = &v102[v185];
    v73 = __CFADD__(v99, 1);
    v82 = v99 + 1;
    if (v73)
    {
      goto LABEL_59;
    }
  }

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
}

uint64_t sub_22C6318D8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v95 = sub_22C9093BC();
  v8 = *(v95 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v95);
  v85 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v80 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v89 = &v80 - v16;
  v17 = sub_22C908C5C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](&v80 - v21);
  v24 = &v80 - v23;
  result = MEMORY[0x28223BE20](v22);
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v30 = a2 - a1 == 0x8000000000000000 && v29 == -1;
  if (v30)
  {
    goto LABEL_72;
  }

  v31 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_73;
  }

  v96 = &v80 - v27;
  v33 = (a2 - a1) / v29;
  v102 = a1;
  v101 = a4;
  v93 = (v8 + 8);
  v94 = (v26 + 16);
  v91 = v24;
  v92 = (v26 + 8);
  v34 = v31 / v29;
  if (v33 < v31 / v29)
  {
    sub_22C3D7950(a1, (a2 - a1) / v29, a4);
    v87 = a3;
    v88 = (a4 + v33 * v29);
    v100 = v88;
    v35 = v91;
    v86 = v29;
    while (1)
    {
      if (a4 >= v88 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v98 = a1;
      v99 = a2;
      v37 = *v94;
      (*v94)(v96, a2, v17);
      v97 = a4;
      v37(v35, a4, v17);
      v38 = v89;
      sub_22C90774C();
      v39 = v17;
      v40 = sub_22C90938C();
      v42 = v41;
      v43 = *v93;
      v44 = v95;
      (*v93)(v38, v95);
      v45 = v90;
      sub_22C90774C();
      v46 = sub_22C90938C();
      v48 = v47;
      v43(v45, v44);
      if (v40 == v46 && v42 == v48)
      {

        v35 = v91;
        v55 = *v92;
        (*v92)(v91, v39);
        v55(v96, v39);
        v17 = v39;
        v52 = v98;
      }

      else
      {
        v50 = sub_22C90B4FC();

        v35 = v91;
        v51 = *v92;
        (*v92)(v91, v39);
        v51(v96, v39);
        v17 = v39;
        v52 = v98;
        if (v50)
        {
          v53 = v86;
          a3 = v87;
          a2 = v99 + v86;
          v54 = v98 < v99 || v98 >= a2;
          a4 = v97;
          if (v54)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v98 != v99)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v53 = v86;
      a3 = v87;
      a4 = v97 + v86;
      v56 = v52 < v97 || v52 >= a4;
      a2 = v99;
      if (v56)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v52 != v97)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v101 = a4;
LABEL_37:
      a1 = v52 + v53;
      v102 = a1;
    }
  }

  v96 = result;
  sub_22C3D7950(a2, v31 / v29, a4);
  v57 = (a4 + v34 * v29);
  v58 = -v29;
  v59 = v57;
  v97 = a4;
  v98 = a1;
  v83 = v17;
  v86 = -v29;
LABEL_41:
  v87 = a2 + v58;
  v81 = v59;
  v99 = a2;
  while (1)
  {
    if (v57 <= a4)
    {
      v102 = a2;
      v100 = v59;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v90 = a3;
    v91 = v57;
    v82 = v59;
    v60 = *v94;
    v89 = &v57[v58];
    (v60)(v96);
    v60(v88, v87, v17);
    v61 = v84;
    sub_22C90774C();
    v62 = sub_22C90938C();
    v64 = v63;
    v65 = *v93;
    v66 = v95;
    (*v93)(v61, v95);
    v67 = v85;
    sub_22C90774C();
    v68 = sub_22C90938C();
    v70 = v69;
    v65(v67, v66);
    if (v62 == v68 && v64 == v70)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_22C90B4FC();
    }

    v73 = v90;

    v58 = v86;
    v74 = &v73[v86];
    v75 = *v92;
    v17 = v83;
    (*v92)(v88, v83);
    v75(v96, v17);
    a4 = v97;
    a1 = v98;
    a2 = v99;
    if (v72)
    {
      v77 = v73 < v99 || v74 >= v99;
      v78 = v73;
      a3 = &v73[v58];
      if (v77)
      {
        a2 = v87;
        swift_arrayInitWithTakeFrontToBack();
        v59 = v82;
        v57 = v91;
      }

      else
      {
        v59 = v82;
        v79 = v87;
        a2 = v87;
        v57 = v91;
        if (v78 != v99)
        {
          v59 = v82;
          swift_arrayInitWithTakeBackToFront();
          a2 = v79;
        }
      }

      goto LABEL_41;
    }

    if (v73 < v91 || v74 >= v91)
    {
      v59 = v89;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v59 = v89;
    v30 = v91 == v73;
    a3 = &v73[v58];
    v57 = v89;
    if (!v30)
    {
      v59 = v89;
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      a3 = v74;
      v57 = v59;
    }
  }

  v102 = a2;
  v100 = v81;
LABEL_70:
  sub_22C838214(&v102, &v101, &v100);
  return 1;
}

void *sub_22C632064(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_22C632CF8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22C63210C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v65 = a5;
  v56 = a4;
  v8 = sub_22C908C5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v48 - v13;
  v57 = sub_22C9069BC();
  v14 = *(v57 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v57);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v48 - v20;
  sub_22C8920A0(v63, a1, a2, a3);
  v59 = v63[0];
  v60 = v63[1];
  v61 = v63[2];
  v55 = (v14 + 32);
  v22 = (v9 + 32);
  v62 = v64;
  v51 = v9 + 16;
  v50 = v9 + 8;
  v52 = v14;
  v49 = (v14 + 8);
  v54 = v9;
  v48[3] = v9 + 40;
  v48[1] = a1;

  v48[0] = a3;

  while (1)
  {
    sub_22C89143C();
    v23 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v21, 1, v23) == 1)
    {
      sub_22C36A674();
    }

    v24 = *(v23 + 48);
    v25 = *v55;
    (*v55)(v17, v21, v57);
    v26 = *v22;
    v27 = v8;
    (*v22)(v58, &v21[v24], v8);
    v28 = *v65;
    sub_22C628D18();
    v31 = v30;
    v32 = *(v28 + 16);
    v33 = (v29 & 1) == 0;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v34 = v29;
    if (*(v28 + 24) >= v32 + v33)
    {
      if ((v56 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      v35 = v65;
      sub_22C88F148();
      v36 = *v35;
      sub_22C628D18();
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_17;
      }

      v31 = v37;
    }

    v39 = *v65;
    if (v34)
    {
      v41 = v53;
      v40 = v54;
      v42 = *(v54 + 72) * v31;
      v8 = v27;
      (*(v54 + 16))(v53, v39[7] + v42, v27);
      (*(v40 + 8))(v58, v27);
      (*v49)(v17, v57);
      (*(v40 + 40))(v39[7] + v42, v41, v27);
    }

    else
    {
      v39[(v31 >> 6) + 8] |= 1 << v31;
      v25((v39[6] + *(v52 + 72) * v31), v17, v57);
      v43 = v39[7] + *(v54 + 72) * v31;
      v8 = v27;
      v26(v43, v58, v27);
      v44 = v39[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_16;
      }

      v39[2] = v46;
    }

    v56 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C632604(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v72 = a5;
  v54 = a4;
  v8 = sub_22C908C5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v60 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = v53 - v13;
  v14 = sub_22C9069BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v53 - v21;
  sub_22C8920A0(v70, a1, a2, a3);
  v66 = v70[0];
  v67 = v70[1];
  v68 = v70[2];
  v63 = (v9 + 32);
  v64 = (v15 + 32);
  v69 = v71;
  v58 = v9 + 16;
  v57 = v9 + 8;
  v59 = v15;
  v56 = (v15 + 8);
  v23 = v18;
  v24 = v54;
  v62 = v9;
  v55 = v9 + 40;
  v53[2] = a1;

  v53[1] = a3;

  for (i = v22; ; v22 = i)
  {
    sub_22C89143C();
    v25 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v22, 1, v25) == 1)
    {
      sub_22C36A674();
    }

    v26 = *(v25 + 48);
    v27 = *v64;
    (*v64)(v23, v22, v14);
    v28 = *v63;
    v29 = &v22[v26];
    v30 = v8;
    (*v63)(v65, v29, v8);
    v31 = *v72;
    sub_22C628D18();
    v34 = v33;
    v35 = *(v31 + 16);
    v36 = (v32 & 1) == 0;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v35 + v36)
    {
      if ((v24 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      v38 = v72;
      sub_22C88F148();
      v39 = *v38;
      sub_22C628D18();
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_17;
      }

      v34 = v40;
    }

    v42 = *v72;
    if (v37)
    {
      v43 = v62;
      v44 = v60;
      v45 = v23;
      v46 = v14;
      v47 = v65;
      v8 = v30;
      (*(v62 + 16))(v60, v65, v30);
      v48 = v47;
      v14 = v46;
      v23 = v45;
      (*(v43 + 8))(v48, v30);
      (*v56)(v45, v14);
      (*(v43 + 40))(v42[7] + *(v43 + 72) * v34, v44, v30);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v27((v42[6] + *(v59 + 72) * v34), v23, v14);
      v8 = v30;
      v28((v42[7] + *(v62 + 72) * v34), v65, v30);
      v49 = v42[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_16;
      }

      v42[2] = v51;
    }

    v24 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C632B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      a2 = sub_22C632064(v15, v9, a1, a2, a3);
      MEMORY[0x2318B9880](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v16 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v9, v11);

  v12 = sub_22C632CF8(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22C632CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v75 = a4;
  v59[1] = a2;
  v60 = a1;
  v74 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v6 = *(*(v74 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v71 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v59 - v9;
  v11 = sub_22C908C5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C9069BC();
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0;
  v76 = a3;
  v26 = *(a3 + 64);
  v25 = a3 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v62 = (v27 + 63) >> 6;
  v63 = v25;
  v72 = v19 + 2;
  v73 = v12;
  v81 = v19;
  v67 = v21;
  v68 = (v12 + 8);
  v82 = v10;
  v69 = v19 + 1;
  v70 = v12 + 16;
  v65 = v15;
  v66 = result;
  while (2)
  {
    v61 = v22;
    while (1)
    {
      v30 = v15;
      if (!v29)
      {
        v33 = v23;
        while (1)
        {
          v23 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v23 >= v62)
          {
            goto LABEL_22;
          }

          v34 = *(v63 + 8 * v23);
          ++v33;
          if (v34)
          {
            v31 = v11;
            v32 = __clz(__rbit64(v34));
            v80 = (v34 - 1) & v34;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v31 = v11;
      v32 = __clz(__rbit64(v29));
      v80 = (v29 - 1) & v29;
LABEL_12:
      v35 = v76;
      v36 = *(v76 + 48) + v81[9] * (v32 | (v23 << 6));
      v79 = v81[2];
      v37 = v21;
      v38 = v32 | (v23 << 6);
      v79(v21, v36, v16);
      v39 = *(v35 + 56);
      v40 = *(v73 + 72);
      v64 = v38;
      v41 = *(v73 + 16);
      v41(v30, v39 + v40 * v38, v31);
      v42 = v82;
      v79(v82, v37, v16);
      v43 = v74;
      v44 = v30;
      v45 = v31;
      v41((v42 + *(v74 + 48)), v44, v31);
      v46 = v71;
      sub_22C3D3364();
      v47 = sub_22C9069AC();
      v49 = v48;
      v79 = v81[1];
      (v79)(v46, v16);
      if (v47 == v75 && v49 == v77)
      {
        break;
      }

      v78 = sub_22C90B4FC();

      v51 = *(v43 + 48);
      sub_22C3AC228(v82, &qword_27D9BF110, &unk_22C922580);
      v52 = *v68;
      (*v68)(&v46[v51], v45);
      v15 = v65;
      v52(v65, v45);
      v16 = v66;
      v53 = v67;
      result = (v79)(v67, v66);
      v11 = v45;
      v21 = v53;
      v29 = v80;
      if (v78)
      {
        goto LABEL_19;
      }
    }

    v54 = *(v43 + 48);
    sub_22C3AC228(v82, &qword_27D9BF110, &unk_22C922580);
    v55 = *v68;
    (*v68)(&v46[v54], v45);
    v15 = v65;
    v55(v65, v45);
    v16 = v66;
    v56 = v67;
    result = (v79)(v67, v66);
    v11 = v45;
    v21 = v56;
    v29 = v80;
LABEL_19:
    *(v60 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v22 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  sub_22C8392BC();
  v58 = v57;

  return v58;
}

void sub_22C63323C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x8000000000000000) != 0 || (v6 = *(a5 + 32), sub_22C38A0A8(), v11 <= v10))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v9 + 36) == v8)
  {
    v12 = v7;
    v13 = *(v9 + 56);
    v14 = (*(v9 + 48) + 16 * a2);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_22C9093BC();
    sub_22C369A9C(v17);
    (*(v18 + 16))(v12, v13 + *(v18 + 72) * a2);

    sub_22C37335C();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_22C633328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x8000000000000000) != 0 || (v8 = *(a6 + 32), sub_22C38A0A8(), v15 <= v14))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v10;
  v18 = v9;
  v19 = *(a6 + 48);
  v20 = v12(0);
  sub_22C369A9C(v20);
  (*(v21 + 16))(v18, v19 + *(v21 + 72) * a3);
  v22 = *(a6 + 56);
  v23 = v16(0);
  v24 = sub_22C36985C(v23);
  v26 = *(v25 + 16);
  v27 = v22 + *(v25 + 72) * a3;

  v26(v17, v27, v24);
}

uint64_t sub_22C633458()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431C30);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_28142FAA8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C63353C()
{
  sub_22C9093BC();
  if (v0 <= 0x3F)
  {
    sub_22C6335D8();
    if (v1 <= 0x3F)
    {
      sub_22C901FAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C6335D8()
{
  if (!qword_27D9BF380)
  {
    sub_22C90260C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BF380);
    }
  }
}

uint64_t sub_22C633630()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C369A9C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

void sub_22C6336E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x8000000000000000) != 0 || (v8 = *(a6 + 32), sub_22C38A0A8(), v12 <= v11))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v9;
  v14 = *(a6 + 48);
  v15 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C369914(v15);
  v17 = *(v16 + 72);
  sub_22C62E98C();
  v18 = *(a6 + 56) + 40 * a3;

  sub_22C6337B8(v18, v13);
}

void sub_22C633870()
{
  v0 = sub_22C9093BC();
  sub_22C369914(v0);
  v2 = *(v1 + 80);
  v3 = sub_22C6348E8();

  sub_22C627BA8(v3);
}

uint64_t sub_22C6339B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C633A7C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v6 = v2[57];
  v5 = v2[58];
  *(v3 - 240) = v2[60];
  *(v3 - 232) = v5;
  v7 = v2[54];
  *(v3 - 224) = v6;
  *(v3 - 216) = v7;
  v8 = v2[50];
  *(v3 - 208) = v2[51];
  *(v3 - 200) = v8;
  v9 = v2[47];
  *(v3 - 192) = v2[49];
  *(v3 - 184) = v9;
  v10 = v2[43];
  *(v3 - 176) = v2[44];
  *(v3 - 168) = v10;
  v11 = v2[41];
  *(v3 - 160) = v2[42];
  *(v3 - 152) = v11;
  v12 = v2[37];
  *(v3 - 144) = v2[38];
  *(v3 - 136) = v12;
  v13 = v2[33];
  *(v3 - 128) = v2[34];
  *(v3 - 120) = v13;
  v14 = v2[31];
  *(v3 - 112) = v2[32];
  *(v3 - 104) = v14;
  v15 = v2[29];
  *(v3 - 96) = v2[30];
  *(v3 - 88) = v15;
}

uint64_t sub_22C633B48()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22C633B70(uint64_t a1)
{
  *(a1 + 8) = sub_22C623F40;
  v2 = v1[54];
  result = v1[27];
  v4 = v1[25];
  return result;
}

uint64_t sub_22C633BA8(uint64_t a1)
{
  *(a1 + 8) = sub_22C624F88;
  v2 = v1[52];
  result = v1[26];
  v4 = v1[24];
  return result;
}

uint64_t sub_22C633C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  v21 = *(v19 + 16);
  return a1 + v20;
}

uint64_t sub_22C633CC8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_22C633CF0()
{
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];
  v20 = v0[61];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[58];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[54];
  v27 = v0[53];
  v28 = v0[50];
  v29 = v0[49];
}

uint64_t sub_22C633D88@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + *(v3 + 72) * v1;
  v5 = *(v3 + 16);
  return v2;
}

uint64_t sub_22C633DD0()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[43];
  result = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  v10 = v0[23];
  v9 = v0[24];
  return result;
}

uint64_t sub_22C633E00()
{
  result = *(v0 + 1840);
  v2 = *(v0 + 1832);
  return result;
}

double sub_22C633E28()
{
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  return result;
}

double sub_22C633E40()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

void sub_22C633E58(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  *(*(v4 + 56) + 8 * v3) = v5;
  v6 = *(v4 + 16);
}

void sub_22C633E94()
{
  v2 = v0[54];
  v3 = v0[43];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[17];
  v8 = v0[15];

  JUMPOUT(0x2318B57A0);
}

uint64_t sub_22C633EBC()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_22C633EE4()
{
  result = v0[107];
  v2 = v0[106];
  v3 = v0[103];
  v4 = v0[100];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[87];
  v12 = v0[86];
  return result;
}

uint64_t sub_22C633FCC()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[91];
  result = v0[87];
  v8 = v0[84];
  v9 = *(v0[85] + 8);
  return result;
}

uint64_t sub_22C634010()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

uint64_t sub_22C634030()
{

  return sub_22C62E9E0(v0, type metadata accessor for PromptTreeIdentifier.Label);
}

uint64_t sub_22C634074()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  return v0[22];
}

uint64_t sub_22C634088()
{
  v2 = v0[67];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[60];
}

uint64_t sub_22C6340C8()
{
  result = v0[262];
  v2 = v0[246];
  v3 = v0[245];
  return result;
}

uint64_t sub_22C634100()
{

  return sub_22C9066CC();
}

uint64_t sub_22C634148()
{
  result = v0[33];
  v2 = v0[28];
  v3 = *(v0[29] + 8);
  return result;
}

void sub_22C63419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = (v21[6] + 16 * v23);
  *v24 = a20;
  v24[1] = a21;
  *(v21[7] + 8 * v23) = v22;
  v25 = v21[2];
}

uint64_t sub_22C63423C()
{
  v4 = *(v1 + 56);
  v5 = *(v4 + 8 * v0);
  *(v4 + 8 * v0) = v2;
}

uint64_t sub_22C634264()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  result = v0[43];
  v6 = v0[41];
  v7 = *(v0[42] + 8);
  return result;
}

void sub_22C634284()
{
  v2 = v0[57];
  *(v1 - 120) = v0[56];
  *(v1 - 112) = v2;
  v3 = v0[54];
  v4 = v0[52];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  *(v1 - 104) = v0[42];
}

uint64_t sub_22C6342C4()
{
  v2 = v0[56];
  result = v0[57];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[47];
  v8 = v0[44];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[36];
  v12 = v0[37];
  return result;
}

uint64_t sub_22C6342E4()
{
  v2 = v0[56];
  result = v0[57];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  v11 = v0[36];
  v12 = v0[37];
  return result;
}

uint64_t sub_22C63435C()
{

  return sub_22C90B15C();
}

uint64_t sub_22C63437C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v1 + 48) + *(v4 + 72) * a1;
  return v2;
}

void sub_22C6343C8()
{
  v1 = v0[61];
  STACK[0x308] = v0[62];
  STACK[0x310] = v1;
  STACK[0x318] = v0[60];
  v2 = v0[57];
  v3 = v0[58];
}

uint64_t sub_22C6343FC()
{
  v3 = *(v1 + 16);
  result = v0;
  *(v2 - 144) = v1 + 16;
  return result;
}

uint64_t sub_22C634424()
{

  return sub_22C90B15C();
}

uint64_t sub_22C63443C()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

uint64_t sub_22C634454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

void sub_22C634474()
{
  v2 = *(v0 + 1840);
  *(v1 - 136) = *(v0 + 1800);
  *(v1 - 128) = v2;
}

uint64_t sub_22C634494()
{
  result = v0[31];
  v2 = v0[28];
  v3 = v0[29] + 8;
  return result;
}