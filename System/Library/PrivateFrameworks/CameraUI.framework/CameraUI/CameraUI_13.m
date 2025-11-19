uint64_t sub_1A39BB550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v420 = a2;
  v414 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v406 - v7;
  v9 = sub_1A3A30090();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v406 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChromeElementIcon();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v406 - v20;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v406 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v43 = &v406 - v42;
  switch(a1)
  {
    case 0:
      v44 = v39;
      v45 = sub_1A39FDA64(0);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v45);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v46 = sub_1A3A31810();

      v47 = CAMLocalizedFrameworkString(v46, 0);

      v48 = sub_1A3A31850();
      v416 = v49;
      v417 = v48;

      v415 = type metadata accessor for ChromeMenu();
      v50 = v420;
      sub_1A39AE314(0, 0, 1, v420, (v414 + *(v415 + 24)));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v52 = *(v44 + 80);
      v419 = v43;
      v53 = (v52 + 16) & ~v52;
      v54 = swift_allocObject();
      v413 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v54 + v53, type metadata accessor for ChromeElementIcon);
      v55 = swift_allocObject();
      v418 = v29;
      v56 = v55;
      v412 = sub_1A39C25D8;
      *(v55 + 16) = sub_1A39C25D8;
      *(v55 + 24) = v50;
      swift_getKeyPath();
      v411 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v50;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v46) = *(v50 + 752);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v54;
      *(v51 + 80) = (v46 & 1) == 0;
      *(v51 + 81) = 0;
      *(v51 + 82) = v425;
      *(v51 + 86) = WORD2(v425);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v56;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v57 = v418;
      v58 = v419;
      sub_1A38907D0(v419, v418);
      v59 = swift_allocObject();
      sub_1A39C1510(v57, v59 + v53, v413);
      v60 = swift_allocObject();
      *(v60 + 16) = v412;
      *(v60 + 24) = v50;
      swift_getKeyPath();
      v427 = v50;
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v47) = *(v50 + 752);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v59;
      *(v51 + 168) = v47;
      *(v51 + 169) = 0;
      *(v51 + 170) = v427;
      *(v51 + 174) = WORD2(v427);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v60;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v58);
      v62 = v414;
      *v414 = 0;
      goto LABEL_94;
    case 3:
      v320 = v40;
      v321 = sub_1A39FDA64(3);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v321);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v322 = sub_1A3A31810();

      v323 = CAMLocalizedFrameworkString(v322, 0);

      v324 = sub_1A3A31850();
      v415 = v325;
      v416 = v324;

      v417 = v320;
      v326 = v420;
      sub_1A39AE314(3, 0, 1, v420, v320);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v327 = v427;
      v328 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v329 = swift_allocObject();
      *(v329 + 16) = 0;
      v330 = swift_allocObject();
      *(v330 + 16) = 0;
      v331 = swift_allocObject();
      *(v331 + 16) = sub_1A39C24F8;
      *(v331 + 24) = v326;
      *(v331 + 32) = 0;
      v332 = swift_allocObject();
      *(v332 + 16) = 0;
      swift_getKeyPath();
      v425 = v326;
      v333 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      swift_retain_n();
      v418 = v333;
      v419 = v328;
      sub_1A3A2F080();

      LODWORD(v328) = *(v326 + 793);

      v334 = v328 == 0;
      v336 = *(v327 + 16);
      v335 = *(v327 + 24);
      if (v336 >= v335 >> 1)
      {
        sub_1A3956B60((v335 > 1), v336 + 1, 1);
        v327 = v427;
      }

      *(v327 + 16) = v336 + 1;
      v337 = v327 + 88 * v336;
      *(v337 + 32) = sub_1A39C2580;
      *(v337 + 40) = v329;
      *(v337 + 48) = sub_1A39047E8;
      *(v337 + 56) = 0;
      *(v337 + 64) = sub_1A39C2588;
      *(v337 + 72) = v330;
      *(v337 + 80) = v334;
      *(v337 + 81) = 0;
      *(v337 + 82) = v423;
      *(v337 + 86) = v424;
      *(v337 + 88) = sub_1A39C3914;
      *(v337 + 96) = v331;
      *(v337 + 104) = sub_1A39C2590;
      *(v337 + 112) = v332;
      v338 = swift_allocObject();
      *(v338 + 16) = 1;
      v339 = swift_allocObject();
      *(v339 + 16) = 1;
      v340 = swift_allocObject();
      *(v340 + 16) = sub_1A39C24F8;
      *(v340 + 24) = v326;
      *(v340 + 32) = 1;
      v341 = swift_allocObject();
      *(v341 + 16) = 1;
      swift_getKeyPath();
      v425 = v326;
      swift_retain_n();
      sub_1A3A2F080();

      v342 = *(v326 + 793);

      v343 = v342 == 1;
      v345 = *(v327 + 16);
      v344 = *(v327 + 24);
      if (v345 >= v344 >> 1)
      {
        sub_1A3956B60((v344 > 1), v345 + 1, 1);
        v327 = v427;
      }

      *(v327 + 16) = v345 + 1;
      v346 = v327 + 88 * v345;
      *(v346 + 32) = sub_1A39C38FC;
      *(v346 + 40) = v338;
      *(v346 + 48) = sub_1A39047E8;
      *(v346 + 56) = 0;
      *(v346 + 64) = sub_1A39C3908;
      *(v346 + 72) = v339;
      *(v346 + 80) = v343;
      *(v346 + 81) = 0;
      v347 = v422;
      *(v346 + 82) = v421;
      *(v346 + 86) = v347;
      *(v346 + 88) = sub_1A39C3914;
      *(v346 + 96) = v340;
      *(v346 + 104) = sub_1A39C3900;
      *(v346 + 112) = v341;
      v348 = swift_allocObject();
      *(v348 + 16) = 2;
      v413 = swift_allocObject();
      *(v413 + 16) = 2;
      v349 = swift_allocObject();
      *(v349 + 16) = sub_1A39C24F8;
      *(v349 + 24) = v326;
      *(v349 + 32) = 2;
      v350 = swift_allocObject();
      *(v350 + 16) = 2;
      swift_getKeyPath();
      v425 = v326;
      swift_retain_n();
      sub_1A3A2F080();

      v351 = *(v326 + 793);

      v352 = v351 == 2;
      v354 = *(v327 + 16);
      v353 = *(v327 + 24);
      if (v354 >= v353 >> 1)
      {
        sub_1A3956B60((v353 > 1), v354 + 1, 1);
      }

      v227 = v427;
      *(v427 + 16) = v354 + 1;
      v355 = v227 + 88 * v354;
      *(v355 + 32) = sub_1A39C38FC;
      *(v355 + 40) = v348;
      *(v355 + 48) = sub_1A39047E8;
      *(v355 + 56) = 0;
      v356 = v413;
      *(v355 + 64) = sub_1A39C3908;
      *(v355 + 72) = v356;
      *(v355 + 80) = v352;
      *(v355 + 81) = 0;
      *(v355 + 82) = v425;
      *(v355 + 86) = WORD2(v425);
      *(v355 + 88) = sub_1A39C3914;
      *(v355 + 96) = v349;
      *(v355 + 104) = sub_1A39C3900;
      *(v355 + 112) = v350;

      v230 = 3;
      goto LABEL_88;
    case 7:
      v231 = v37;
      v232 = sub_1A39FDA64(7);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v232);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v233 = sub_1A3A31810();

      v234 = CAMLocalizedFrameworkString(v233, 0);

      v413 = sub_1A3A31850();
      v415 = v235;

      v416 = v231;
      sub_1A39AE314(7, 0, 1, v420, v231);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v236 = 0;
      v237 = v427;
      v417 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v238 = v420;
      while (1)
      {
        v419 = v236;
        v239 = *(&unk_1F16556A0 + v236 + 32);
        v240 = swift_allocObject();
        *(v240 + 16) = v239;
        v418 = swift_allocObject();
        *(v418 + 2) = v239;
        v241 = swift_allocObject();
        v241[2] = sub_1A39C2418;
        v241[3] = v238;
        v241[4] = v239;
        v242 = swift_allocObject();
        *(v242 + 16) = v239;
        swift_getKeyPath();
        v425 = v238;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        swift_retain_n();
        sub_1A3A2F080();

        v243 = *(v238 + 616);
        swift_getKeyPath();
        v425 = v243;
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v244 = *(v243 + 24);

        v245 = v244 == v239;
        v427 = v237;
        v247 = *(v237 + 16);
        v246 = *(v237 + 24);
        if (v247 >= v246 >> 1)
        {
          sub_1A3956B60((v246 > 1), v247 + 1, 1);
          v237 = v427;
        }

        *(v237 + 16) = v247 + 1;
        v248 = v237 + 88 * v247;
        *(v248 + 32) = sub_1A39C24A0;
        *(v248 + 40) = v240;
        *(v248 + 48) = sub_1A39047E8;
        *(v248 + 56) = 0;
        v249 = v418;
        *(v248 + 64) = sub_1A39C24A8;
        *(v248 + 72) = v249;
        *(v248 + 80) = v245;
        *(v248 + 81) = 0;
        LOWORD(v249) = v424;
        *(v248 + 82) = v423;
        *(v248 + 86) = v249;
        *(v248 + 88) = sub_1A39C24EC;
        *(v248 + 96) = v241;
        *(v248 + 104) = sub_1A39C24F0;
        *(v248 + 112) = v242;
        if (v419 == 16)
        {
          break;
        }

        v236 = (v419 + 1);
      }

      v250 = v414;
      *v414 = 7;
      v251 = v415;
      v250[1] = v413;
      v250[2] = v251;
      v252 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v416, v250 + *(v252 + 24), type metadata accessor for ChromeElementIcon);
      *(v250 + *(v252 + 28)) = v237;
      v85 = 7;
      return sub_1A38A8F64(v85);
    case 9:
      v304 = v39;
      v305 = sub_1A39FDA64(9);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v305);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v306 = sub_1A3A31810();

      v307 = CAMLocalizedFrameworkString(v306, 0);

      v308 = sub_1A3A31850();
      v416 = v309;
      v417 = v308;

      v415 = type metadata accessor for ChromeMenu();
      v310 = v420;
      sub_1A39AE314(9, 0, 1, v420, (v414 + *(v415 + 24)));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v311 = *(v304 + 80);
      v419 = v43;
      v312 = (v311 + 16) & ~v311;
      v313 = swift_allocObject();
      v413 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v313 + v312, type metadata accessor for ChromeElementIcon);
      v314 = swift_allocObject();
      v418 = v29;
      v315 = v314;
      v412 = sub_1A39C2410;
      *(v314 + 16) = sub_1A39C2410;
      *(v314 + 24) = v310;
      swift_getKeyPath();
      v411 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v310;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v306) = *(v310 + 755);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v313;
      *(v51 + 80) = (v306 & 1) == 0;
      *(v51 + 81) = 0;
      *(v51 + 82) = v425;
      *(v51 + 86) = WORD2(v425);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v315;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v316 = v418;
      v317 = v419;
      sub_1A38907D0(v419, v418);
      v318 = swift_allocObject();
      sub_1A39C1510(v316, v318 + v312, v413);
      v319 = swift_allocObject();
      *(v319 + 16) = v412;
      *(v319 + 24) = v310;
      swift_getKeyPath();
      v427 = v310;
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v307) = *(v310 + 755);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v318;
      *(v51 + 168) = v307;
      *(v51 + 169) = 0;
      *(v51 + 170) = v427;
      *(v51 + 174) = WORD2(v427);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v319;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v317);
      v167 = 9;
      goto LABEL_93;
    case 10:
      v273 = v34;
      v274 = sub_1A39FDA64(10);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v274);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v275 = sub_1A3A31810();

      v276 = CAMLocalizedFrameworkString(v275, 0);

      v277 = sub_1A3A31850();
      v417 = v278;
      v418 = v277;

      v419 = v273;
      v279 = v420;
      sub_1A39AE314(10, 0, 1, v420, v273);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 2, 0);
      v280 = v427;
      v281 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v282 = swift_allocObject();
      *(v282 + 16) = 1;
      v283 = swift_allocObject();
      *(v283 + 16) = 1;
      v284 = swift_allocObject();
      v284[2] = sub_1A39C23B0;
      v284[3] = v279;
      v284[4] = 1;
      v285 = swift_allocObject();
      *(v285 + 16) = 1;
      swift_getKeyPath();
      v425 = v279;
      v286 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      swift_retain_n();
      v415 = v286;
      v416 = v281;
      sub_1A3A2F080();

      v287 = *(v279 + 1072);

      v288 = v287 == 1;
      v290 = *(v280 + 16);
      v289 = *(v280 + 24);
      if (v290 >= v289 >> 1)
      {
        sub_1A3956B60((v289 > 1), v290 + 1, 1);
        v280 = v427;
      }

      *(v280 + 16) = v290 + 1;
      v291 = v280 + 88 * v290;
      *(v291 + 32) = sub_1A39C23B8;
      *(v291 + 40) = v282;
      *(v291 + 48) = sub_1A39047E8;
      *(v291 + 56) = 0;
      *(v291 + 64) = sub_1A39C23C0;
      *(v291 + 72) = v283;
      *(v291 + 80) = v288;
      *(v291 + 81) = 0;
      *(v291 + 82) = v423;
      *(v291 + 86) = v424;
      *(v291 + 88) = sub_1A39C3910;
      *(v291 + 96) = v284;
      *(v291 + 104) = sub_1A39C23C8;
      *(v291 + 112) = v285;
      v292 = swift_allocObject();
      *(v292 + 16) = 0;
      v413 = swift_allocObject();
      *(v413 + 2) = 0;
      v293 = swift_allocObject();
      v293[2] = sub_1A39C23B0;
      v293[3] = v279;
      v293[4] = 0;
      v294 = swift_allocObject();
      *(v294 + 16) = 0;
      swift_getKeyPath();
      v425 = v279;
      swift_retain_n();
      sub_1A3A2F080();

      v295 = *(v279 + 1072);

      v296 = v295 == 0;
      v298 = *(v280 + 16);
      v297 = *(v280 + 24);
      if (v298 >= v297 >> 1)
      {
        sub_1A3956B60((v297 > 1), v298 + 1, 1);
        v280 = v427;
      }

      *(v280 + 16) = v298 + 1;
      v299 = v280 + 88 * v298;
      *(v299 + 32) = sub_1A39C38F0;
      *(v299 + 40) = v292;
      *(v299 + 48) = sub_1A39047E8;
      *(v299 + 56) = 0;
      v300 = v413;
      *(v299 + 64) = sub_1A39C3938;
      *(v299 + 72) = v300;
      *(v299 + 80) = v296;
      *(v299 + 81) = 0;
      LOWORD(v300) = WORD2(v425);
      *(v299 + 82) = v425;
      *(v299 + 86) = v300;
      *(v299 + 88) = sub_1A39C3910;
      *(v299 + 96) = v293;
      *(v299 + 104) = sub_1A39C38F4;
      *(v299 + 112) = v294;

      v301 = v414;
      *v414 = 10;
      v302 = v417;
      v301[1] = v418;
      v301[2] = v302;
      v303 = type metadata accessor for ChromeMenu();
      result = sub_1A39C1510(v419, v301 + *(v303 + 24), type metadata accessor for ChromeElementIcon);
      *(v301 + *(v303 + 28)) = v280;
      return result;
    case 14:
      v168 = v41;
      v169 = sub_1A39FDA64(14);
      v116 = v10;
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v169);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v170 = sub_1A3A31810();

      v171 = CAMLocalizedFrameworkString(v170, 0);

      v172 = sub_1A3A31850();
      v409 = v173;
      v410 = v172;

      v411 = v168;
      v174 = v168;
      v175 = v420;
      sub_1A39AE314(14, 0, 1, v420, v174);
      swift_getKeyPath();
      v176 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v175;
      v417 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v418 = v176;
      sub_1A3A2F080();

      v4 = *(v175 + 1128);
      v177 = objc_opt_self();
      sub_1A3A2EA50();
      v178 = [v177 currentTraitCollection];
      v179 = [v178 preferredContentSizeCategory];

      sub_1A3A300A0();
      v180 = *(v116 + 48);
      if (v180(v8, 1, v9) == 1)
      {
        v181 = v116;
        (*(v116 + 104))(v12, *MEMORY[0x1E697F680], v9);
        if (v180(v8, 1, v9) != 1)
        {
          sub_1A3913464(v8);
        }
      }

      else
      {
        v181 = v116;
        (*(v116 + 32))(v12, v8, v9);
      }

      swift_getKeyPath();
      v115 = v420;
      v427 = v420;
      sub_1A3A2F080();

      if (*(v115 + 664))
      {
        if (*(v115 + 664) == 1)
        {
          v379 = 0xE90000000000006FLL;
        }

        else
        {
          v379 = 0xEF6873616C732E6FLL;
        }
      }

      else
      {
        v379 = 0x80000001A3AA75D0;
      }

      v412 = v379;
      (*(v181 + 8))(v12, v9);
      v117 = *(v4 + 16);
      sub_1A3A2EA60();
      v416 = v117;
      if (v117)
      {
        v14 = 0;
        v392 = MEMORY[0x1E69E7CC0];
        v413 = (v4 + 32);
        v415 = v4;
        do
        {
          v118 = *(v4 + 16);
          if (v14 >= v118)
          {
            goto LABEL_123;
          }

          LODWORD(v115) = *(v413 + v14);
          v116 = swift_allocObject();
          *(v116 + 16) = v115;
          v419 = swift_allocObject();
          *(v419 + 16) = v115;
          a1 = swift_allocObject();
          v117 = v420;
          *(a1 + 16) = sub_1A39C23A0;
          *(a1 + 24) = v117;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v8 = swift_allocObject();
          v8[16] = v115;
          swift_getKeyPath();
          v427 = v117;
          swift_retain_n();
          sub_1A3A2F080();

          v393 = *(v117 + 664);

          LOBYTE(v115) = v393 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v392 = sub_1A3956550(0, *(v392 + 2) + 1, 1, v392);
          }

          v395 = *(v392 + 2);
          v394 = *(v392 + 3);
          if (v395 >= v394 >> 1)
          {
            v392 = sub_1A3956550((v394 > 1), v395 + 1, 1, v392);
          }

          ++v14;
          *(v392 + 2) = v395 + 1;
          v396 = &v392[88 * v395];
          *(v396 + 4) = sub_1A39C38F8;
          *(v396 + 5) = v116;
          *(v396 + 6) = sub_1A39047E8;
          *(v396 + 7) = v12;
          v397 = v419;
          *(v396 + 8) = sub_1A39C23A8;
          *(v396 + 9) = v397;
          v396[80] = v115;
          v396[81] = 0;
          LOWORD(v397) = WORD2(v427);
          *(v396 + 82) = v427;
          *(v396 + 43) = v397;
          *(v396 + 11) = sub_1A39C3914;
          *(v396 + 12) = a1;
          *(v396 + 13) = sub_1A39C3928;
          *(v396 + 14) = v8;
          v4 = v415;
        }

        while (v416 != v14);
      }

      else
      {
        v392 = MEMORY[0x1E69E7CC0];
      }

      v398 = v414;
      *v414 = 14;
      v399 = v409;
      v398[1] = v410;
      v398[2] = v399;
      v400 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v411, v398 + *(v400 + 24), type metadata accessor for ChromeElementIcon);
      *(v398 + *(v400 + 28)) = v392;
      v85 = 14;
      return sub_1A38A8F64(v85);
    case 17:
      v203 = v38;
      v204 = sub_1A39FDA64(17);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v204);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v205 = sub_1A3A31810();

      v206 = CAMLocalizedFrameworkString(v205, 0);

      v207 = sub_1A3A31850();
      v415 = v208;
      v416 = v207;

      v417 = v203;
      v4 = v420;
      sub_1A39AE314(17, 0, 1, v420, v203);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v209 = v427;
      v210 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = v4;
      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      v8 = swift_allocObject();
      *(v8 + 2) = sub_1A39C22F4;
      *(v8 + 3) = v4;
      v8[32] = 0;
      v12 = swift_allocObject();
      v12[16] = 0;
      *(v12 + 3) = v4;
      swift_getKeyPath();
      v425 = v4;
      v115 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      swift_retain_n();
      v418 = v115;
      v419 = v210;
      sub_1A3A2F080();

      LOBYTE(v115) = *(v4 + 889) == 0;
      v117 = *(v209 + 16);
      v118 = *(v209 + 24);
      a1 = v117 + 1;
      if (v117 < v118 >> 1)
      {
        goto LABEL_52;
      }

      goto LABEL_126;
    case 18:
      v133 = v33;
      v134 = sub_1A39FDA64(18);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v134);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v135 = sub_1A3A31810();

      v136 = CAMLocalizedFrameworkString(v135, 0);

      v137 = sub_1A3A31850();
      v407 = v138;
      v408 = v137;

      v409 = v133;
      v139 = v133;
      v115 = v420;
      sub_1A39AE314(18, 0, 1, v420, v139);
      swift_getKeyPath();
      v140 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v115;
      v141 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v415 = v140;
      v413 = v141;
      sub_1A3A2F080();

      v117 = *(v115 + 960);
      v142 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v412 = v142;
      if (v142)
      {
        v14 = 0;
        v116 = MEMORY[0x1E69E7CC0];
        v410 = (v117 + 32);
        v411 = v117;
        v8 = v413;
        do
        {
          v118 = *(v117 + 16);
          if (v14 >= v118)
          {
            goto LABEL_122;
          }

          LODWORD(v115) = v410[v14];
          v418 = swift_allocObject();
          v418[16] = v115;
          v419 = swift_allocObject();
          *(v419 + 16) = v115;
          a1 = swift_allocObject();
          v143 = v420;
          *(a1 + 16) = sub_1A39C220C;
          *(a1 + 24) = v143;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v417 = swift_allocObject();
          *(v417 + 16) = v115;
          swift_getKeyPath();
          v427 = v143;
          swift_retain_n();
          sub_1A3A2F080();

          v144 = *(v143 + 968);

          LODWORD(v416) = v144 == v115;
          swift_getKeyPath();
          v427 = v143;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v145 = *(v143 + 969);

          LOBYTE(v115) = v145 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
          }

          v4 = *(v116 + 16);
          v146 = *(v116 + 24);
          v117 = v411;
          if (v4 >= v146 >> 1)
          {
            v116 = sub_1A3956550((v146 > 1), v4 + 1, 1, v116);
          }

          ++v14;
          *(v116 + 16) = v4 + 1;
          v147 = v116 + 88 * v4;
          v149 = v418;
          v148 = v419;
          *(v147 + 32) = sub_1A39C38E8;
          *(v147 + 40) = v149;
          *(v147 + 48) = sub_1A39047E8;
          *(v147 + 56) = v12;
          *(v147 + 64) = sub_1A39C3918;
          *(v147 + 72) = v148;
          *(v147 + 80) = v416;
          *(v147 + 81) = v115;
          LOWORD(v148) = WORD2(v427);
          *(v147 + 82) = v427;
          *(v147 + 86) = v148;
          *(v147 + 88) = sub_1A39C3914;
          *(v147 + 96) = a1;
          v150 = v417;
          *(v147 + 104) = sub_1A39C2214;
          *(v147 + 112) = v150;
        }

        while (v412 != v14);
      }

      else
      {
        v116 = MEMORY[0x1E69E7CC0];
      }

      v383 = v414;
      *v414 = 18;
      v384 = v407;
      v383[1] = v408;
      v383[2] = v384;
      v385 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v409, v383 + *(v385 + 24), type metadata accessor for ChromeElementIcon);
      *(v383 + *(v385 + 28)) = v116;
      v85 = 18;
      return sub_1A38A8F64(v85);
    case 19:
      v255 = v32;
      v256 = sub_1A39FDA64(19);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v256);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v257 = sub_1A3A31810();

      v258 = CAMLocalizedFrameworkString(v257, 0);

      v259 = sub_1A3A31850();
      v407 = v260;
      v408 = v259;

      v409 = v255;
      v261 = v255;
      v115 = v420;
      sub_1A39AE314(19, 0, 1, v420, v261);
      swift_getKeyPath();
      v262 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v115;
      v263 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v415 = v262;
      v413 = v263;
      sub_1A3A2F080();

      v117 = *(v115 + 1056);
      v264 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v412 = v264;
      if (v264)
      {
        v14 = 0;
        v116 = MEMORY[0x1E69E7CC0];
        v410 = (v117 + 32);
        v411 = v117;
        v8 = v413;
        do
        {
          v118 = *(v117 + 16);
          if (v14 >= v118)
          {
            goto LABEL_125;
          }

          LODWORD(v115) = v410[v14];
          v418 = swift_allocObject();
          v418[16] = v115;
          v419 = swift_allocObject();
          *(v419 + 16) = v115;
          a1 = swift_allocObject();
          v265 = v420;
          *(a1 + 16) = sub_1A39C21A0;
          *(a1 + 24) = v265;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v417 = swift_allocObject();
          *(v417 + 16) = v115;
          swift_getKeyPath();
          v427 = v265;
          swift_retain_n();
          sub_1A3A2F080();

          v266 = *(v265 + 1064);

          LODWORD(v416) = v266 == v115;
          swift_getKeyPath();
          v427 = v265;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v267 = *(v265 + 1065);

          LOBYTE(v115) = v267 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
          }

          v4 = *(v116 + 16);
          v268 = *(v116 + 24);
          v117 = v411;
          if (v4 >= v268 >> 1)
          {
            v116 = sub_1A3956550((v268 > 1), v4 + 1, 1, v116);
          }

          ++v14;
          *(v116 + 16) = v4 + 1;
          v269 = v116 + 88 * v4;
          v271 = v418;
          v270 = v419;
          *(v269 + 32) = sub_1A39C21A8;
          *(v269 + 40) = v271;
          *(v269 + 48) = sub_1A39C21FC;
          *(v269 + 56) = v12;
          *(v269 + 64) = sub_1A39C3918;
          *(v269 + 72) = v270;
          *(v269 + 80) = v416;
          *(v269 + 81) = v115;
          LOWORD(v270) = WORD2(v427);
          *(v269 + 82) = v427;
          *(v269 + 86) = v270;
          *(v269 + 88) = sub_1A39C3914;
          *(v269 + 96) = a1;
          v272 = v417;
          *(v269 + 104) = sub_1A39C2204;
          *(v269 + 112) = v272;
        }

        while (v412 != v14);
      }

      else
      {
        v116 = MEMORY[0x1E69E7CC0];
      }

      v389 = v414;
      *v414 = 19;
      v390 = v407;
      v389[1] = v408;
      v389[2] = v390;
      v391 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v409, v389 + *(v391 + 24), type metadata accessor for ChromeElementIcon);
      *(v389 + *(v391 + 28)) = v116;
      v85 = 19;
      return sub_1A38A8F64(v85);
    case 21:
      v108 = v31;
      v109 = sub_1A39FDA64(21);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v109);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v110 = sub_1A3A31810();

      v111 = CAMLocalizedFrameworkString(v110, 0);

      v112 = sub_1A3A31850();
      v407 = v113;
      v408 = v112;

      v409 = v108;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      v114 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v115 = v420;
      v427 = v420;
      v116 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v8 = *(v115 + 880);
      v117 = *(v8 + 2);
      swift_retain_n();
      sub_1A3A2EA50();
      v412 = v117;
      if (!v117)
      {
        v12 = MEMORY[0x1E69E7CC0];
LABEL_100:

        v380 = v414;
        *v414 = 21;
        v381 = v407;
        v380[1] = v408;
        v380[2] = v381;
        v382 = type metadata accessor for ChromeMenu();
        sub_1A39C1510(v409, v380 + *(v382 + 24), type metadata accessor for ChromeElementIcon);
        *(v380 + *(v382 + 28)) = v12;
        v85 = 21;
        return sub_1A38A8F64(v85);
      }

      v413 = v116;
      v415 = v114;
      v4 = 0;
      v410 = v8 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      v411 = v8;
      break;
    case 23:
      v253 = v414;
      v254 = v420;

      return sub_1A39C05D4(0x17uLL, v254, v253);
    case 26:
      v63 = sub_1A39FDA64(26);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      v64 = v21;
      MEMORY[0x1A58F7770](v63);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v65 = sub_1A3A31810();

      v66 = CAMLocalizedFrameworkString(v65, 0);

      v415 = sub_1A3A31850();
      v416 = v67;

      v417 = v64;
      sub_1A39AE314(26, 0, 1, v420, v64);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 4, 0);
      v68 = 0;
      v69 = v427;
      v418 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      while (1)
      {
        v419 = v68;
        v70 = *(&unk_1F1655700 + v68 + 32);
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        v72 = swift_allocObject();
        *(v72 + 16) = v70;
        v73 = swift_allocObject();
        v74 = v420;
        *(v73 + 16) = sub_1A39C2314;
        *(v73 + 24) = v74;
        *(v73 + 32) = v70;
        v75 = swift_allocObject();
        *(v75 + 16) = v70;
        swift_getKeyPath();
        v425 = v74;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        swift_retain_n();
        sub_1A3A2F080();

        v76 = *(v74 + 792);

        v77 = v76 == v70;
        v427 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1A3956B60((v78 > 1), v79 + 1, 1);
          v69 = v427;
        }

        *(v69 + 16) = v79 + 1;
        v80 = v69 + 88 * v79;
        *(v80 + 32) = sub_1A39C38EC;
        *(v80 + 40) = v71;
        *(v80 + 48) = sub_1A39047E8;
        *(v80 + 56) = 0;
        *(v80 + 64) = sub_1A39C231C;
        *(v80 + 72) = v72;
        *(v80 + 80) = v77;
        *(v80 + 81) = 0;
        v81 = v424;
        *(v80 + 82) = v423;
        *(v80 + 86) = v81;
        *(v80 + 88) = sub_1A39C2380;
        *(v80 + 96) = v73;
        *(v80 + 104) = sub_1A39C2384;
        *(v80 + 112) = v75;
        if (v419 == 3)
        {
          break;
        }

        v68 = v419 + 1;
      }

      v82 = v414;
      *v414 = 26;
      v83 = v416;
      v82[1] = v415;
      v82[2] = v83;
      v84 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v417, v82 + *(v84 + 24), type metadata accessor for ChromeElementIcon);
      *(v82 + *(v84 + 28)) = v69;
      v85 = 26;
      return sub_1A38A8F64(v85);
    case 27:
      v86 = v36;
      v87 = sub_1A39FDA64(27);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v87);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v88 = sub_1A3A31810();

      v89 = CAMLocalizedFrameworkString(v88, 0);

      v413 = sub_1A3A31850();
      v415 = v90;

      v416 = v86;
      sub_1A39AE314(27, 0, 1, v420, v86);
      v427 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v91 = 0;
      v92 = v427;
      v417 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v93 = v420;
      while (1)
      {
        v419 = v91;
        v94 = *(&unk_1F16556D8 + v91 + 32);
        v95 = swift_allocObject();
        *(v95 + 16) = v94;
        v418 = swift_allocObject();
        v418[16] = v94;
        v96 = swift_allocObject();
        *(v96 + 16) = sub_1A39C23D0;
        *(v96 + 24) = v93;
        *(v96 + 32) = v94;
        v97 = swift_allocObject();
        *(v97 + 16) = v94;
        swift_getKeyPath();
        v425 = v93;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        swift_retain_n();
        sub_1A3A2F080();

        v98 = *(v93 + 624);
        swift_getKeyPath();
        v425 = v98;
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v99 = *(v98 + 20);

        v100 = v99 == v94;
        v427 = v92;
        v102 = *(v92 + 16);
        v101 = *(v92 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_1A3956B60((v101 > 1), v102 + 1, 1);
          v92 = v427;
        }

        *(v92 + 16) = v102 + 1;
        v103 = v92 + 88 * v102;
        *(v103 + 32) = sub_1A39C23D8;
        *(v103 + 40) = v95;
        *(v103 + 48) = sub_1A39047E8;
        *(v103 + 56) = 0;
        v104 = v418;
        *(v103 + 64) = sub_1A39C3918;
        *(v103 + 72) = v104;
        *(v103 + 80) = v100;
        *(v103 + 81) = 0;
        LOWORD(v104) = v424;
        *(v103 + 82) = v423;
        *(v103 + 86) = v104;
        *(v103 + 88) = sub_1A39C3914;
        *(v103 + 96) = v96;
        *(v103 + 104) = sub_1A39C23F4;
        *(v103 + 112) = v97;
        if (v419 == 2)
        {
          break;
        }

        v91 = v419 + 1;
      }

      v105 = v414;
      *v414 = 27;
      v106 = v415;
      v105[1] = v413;
      v105[2] = v106;
      v107 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v416, v105 + *(v107 + 24), type metadata accessor for ChromeElementIcon);
      *(v105 + *(v107 + 28)) = v92;
      v85 = 27;
      return sub_1A38A8F64(v85);
    case 28:
      v182 = v35;
      v183 = sub_1A39FDA64(28);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v183);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v184 = sub_1A3A31810();

      v185 = CAMLocalizedFrameworkString(v184, 0);

      v186 = sub_1A3A31850();
      v406 = v187;
      v407 = v186;

      v408 = v182;
      v188 = v182;
      v115 = v420;
      sub_1A39AE314(28, 0, 1, v420, v188);
      swift_getKeyPath();
      v189 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v115;
      v412 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v413 = v189;
      sub_1A3A2F080();

      v117 = *(v115 + 864);
      v190 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v411 = v190;
      if (v190)
      {
        v116 = 0;
        v8 = MEMORY[0x1E69E7CC0];
        v409 = v117 + 32;
        v410 = v117;
        v12 = v413;
        do
        {
          v118 = *(v117 + 16);
          if (v116 >= v118)
          {
            goto LABEL_124;
          }

          v115 = *(v409 + 8 * v116);
          v418 = swift_allocObject();
          *(v418 + 2) = v115;
          v419 = swift_allocObject();
          v419[2] = v115;
          a1 = swift_allocObject();
          v191 = v420;
          *(a1 + 16) = sub_1A39C2284;
          *(a1 + 24) = v191;
          *(a1 + 32) = v115;
          v192 = swift_allocObject();
          *(v192 + 16) = v115;
          v417 = swift_allocObject();
          v417[2] = v115;
          swift_getKeyPath();
          v427 = v191;
          swift_retain_n();
          v14 = v412;
          sub_1A3A2F080();

          v193 = *(v191 + 984);
          LODWORD(v416) = *(v191 + 992);

          LODWORD(v415) = v193 == v115;
          swift_getKeyPath();
          v427 = v191;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v194 = *(v191 + 1024);
          v4 = *(v191 + 1032);

          LOBYTE(v115) = v194 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A3956550(0, *(v8 + 2) + 1, 1, v8);
          }

          v196 = *(v8 + 2);
          v195 = *(v8 + 3);
          if (v196 >= v195 >> 1)
          {
            v8 = sub_1A3956550((v195 > 1), v196 + 1, 1, v8);
          }

          ++v116;
          v197 = v415 & ~v416;
          *(v8 + 2) = v196 + 1;
          v198 = &v8[88 * v196];
          v199 = v418;
          *(v198 + 4) = sub_1A39C390C;
          *(v198 + 5) = v199;
          *(v198 + 6) = sub_1A39047E8;
          *(v198 + 7) = v192;
          v200 = v419;
          *(v198 + 8) = sub_1A39C3918;
          *(v198 + 9) = v200;
          v198[80] = v197;
          v198[81] = v115 & ~v4;
          v201 = WORD2(v427);
          *(v198 + 82) = v427;
          *(v198 + 43) = v201;
          *(v198 + 11) = sub_1A39C3910;
          *(v198 + 12) = a1;
          v202 = v417;
          *(v198 + 13) = sub_1A39C3924;
          *(v198 + 14) = v202;
          v117 = v410;
        }

        while (v411 != v116);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      v386 = v414;
      *v414 = 28;
      v387 = v406;
      v386[1] = v407;
      v386[2] = v387;
      v388 = type metadata accessor for ChromeMenu();
      sub_1A39C1510(v408, v386 + *(v388 + 24), type metadata accessor for ChromeElementIcon);
      *(v386 + *(v388 + 28)) = v8;
      v85 = 28;
      return sub_1A38A8F64(v85);
    case 29:
      v360 = v414;
      v361 = v420;

      return sub_1A39BFFDC(v361, 0x1DuLL, v360);
    case 32:
      v151 = v39;
      v152 = sub_1A39FDA64(32);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v152);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v153 = sub_1A3A31810();

      v154 = CAMLocalizedFrameworkString(v153, 0);

      v155 = sub_1A3A31850();
      v416 = v156;
      v417 = v155;

      v415 = type metadata accessor for ChromeMenu();
      v157 = v420;
      sub_1A39AE314(32, 0, 1, v420, (v414 + *(v415 + 24)));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v158 = *(v151 + 80);
      v419 = v43;
      v159 = (v158 + 16) & ~v158;
      v160 = swift_allocObject();
      v413 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v160 + v159, type metadata accessor for ChromeElementIcon);
      v161 = swift_allocObject();
      v418 = v29;
      v162 = v161;
      v412 = sub_1A39C2198;
      *(v161 + 16) = sub_1A39C2198;
      *(v161 + 24) = v157;
      swift_retain_n();
      LODWORD(v410) = (sub_1A38FBF14() & 1) == 0;
      swift_getKeyPath();
      v411 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v157;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v153) = *(v157 + 1169);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v160;
      *(v51 + 80) = v410;
      *(v51 + 81) = (v153 & 1) == 0;
      *(v51 + 82) = v425;
      *(v51 + 86) = WORD2(v425);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v162;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v163 = v418;
      v164 = v419;
      sub_1A38907D0(v419, v418);
      v165 = swift_allocObject();
      sub_1A39C1510(v163, v165 + v159, v413);
      v166 = swift_allocObject();
      *(v166 + 16) = v412;
      *(v166 + 24) = v157;
      swift_retain_n();
      LOBYTE(v163) = sub_1A38FBF14();

      swift_getKeyPath();
      v427 = v157;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v154) = *(v157 + 1169);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v165;
      *(v51 + 168) = v163 & 1;
      *(v51 + 169) = v154;
      *(v51 + 170) = v427;
      *(v51 + 174) = WORD2(v427);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v166;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v164);
      v167 = 32;
      goto LABEL_93;
    case 33:
      v362 = v39;
      v363 = sub_1A39FDA64(33);
      v427 = 0x2E656D6F726843;
      v428 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v363);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v364 = sub_1A3A31810();

      v365 = CAMLocalizedFrameworkString(v364, 0);

      v366 = sub_1A3A31850();
      v416 = v367;
      v417 = v366;

      v415 = type metadata accessor for ChromeMenu();
      v368 = v420;
      sub_1A39AE314(33, 0, 1, v420, (v414 + *(v415 + 24)));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v369 = *(v362 + 80);
      v419 = v43;
      v370 = (v369 + 16) & ~v369;
      v371 = swift_allocObject();
      v413 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v371 + v370, type metadata accessor for ChromeElementIcon);
      v372 = swift_allocObject();
      v418 = v29;
      v373 = v372;
      v412 = sub_1A39C2168;
      *(v372 + 16) = sub_1A39C2168;
      *(v372 + 24) = v368;
      swift_retain_n();
      LODWORD(v410) = (sub_1A38FC0C8() & 1) == 0;
      swift_getKeyPath();
      v411 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v427 = v368;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v364) = *(v368 + 1170);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C2170;
      *(v51 + 72) = v371;
      *(v51 + 80) = v410;
      *(v51 + 81) = (v364 & 1) == 0;
      *(v51 + 82) = v425;
      *(v51 + 86) = WORD2(v425);
      *(v51 + 88) = sub_1A39C2188;
      *(v51 + 96) = v373;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v374 = v418;
      v375 = v419;
      sub_1A38907D0(v419, v418);
      v376 = swift_allocObject();
      sub_1A39C1510(v374, v376 + v370, v413);
      v377 = swift_allocObject();
      *(v377 + 16) = v412;
      *(v377 + 24) = v368;
      swift_retain_n();
      LOBYTE(v374) = sub_1A38FC0C8();

      swift_getKeyPath();
      v427 = v368;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v365) = *(v368 + 1170);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C2170;
      *(v51 + 160) = v376;
      *(v51 + 168) = v374 & 1;
      *(v51 + 169) = v365;
      *(v51 + 170) = v427;
      *(v51 + 174) = WORD2(v427);
      *(v51 + 176) = sub_1A39C2190;
      *(v51 + 184) = v377;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v375);
      v167 = 33;
LABEL_93:
      v62 = v414;
      *v414 = v167;
LABEL_94:
      v378 = v416;
      v62[1] = v417;
      v62[2] = v378;
      *(v62 + *(v415 + 28)) = v51;
      return result;
    default:
      v427 = 0;
      v428 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD00000000000001ELL, 0x80000001A3AA7560);
      v401 = sub_1A39FDA64(a1);
      v425 = 0x2E656D6F726843;
      v426 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v401);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v402 = sub_1A3A31810();

      v403 = CAMLocalizedFrameworkString(v402, 0);

      v115 = sub_1A3A31850();
      v405 = v404;

      MEMORY[0x1A58F7770](v115, v405);

      MEMORY[0x1A58F7770](0xD000000000000042, 0x80000001A3AA7580);
      sub_1A3A32070();
      __break(1u);
      goto LABEL_128;
  }

  while (1)
  {
    v118 = *(v8 + 2);
    if (v4 >= v118)
    {
      break;
    }

    v115 = *&v410[8 * v4];
    v119 = swift_allocObject();
    *(v119 + 16) = v115;
    v120 = swift_allocObject();
    *(v120 + 16) = v115;
    a1 = swift_allocObject();
    v121 = v420;
    *(a1 + 16) = sub_1A39C2264;
    *(a1 + 24) = v121;
    *(a1 + 32) = v115;
    v122 = swift_allocObject();
    *(v122 + 16) = v115;
    v123 = swift_allocObject();
    *(v123 + 16) = v115;
    v418 = v119;
    v419 = v120;
    v416 = v122;
    v417 = v123;
    if (v115 - 2 >= 3)
    {
      if (v115 >= 2)
      {
LABEL_128:
        v427 = v115;
        sub_1A3A2EA60();
LABEL_130:
        result = sub_1A3A321F0();
        __break(1u);
        return result;
      }

      v116 = v12;
      swift_getKeyPath();
      v121 = v420;
      v427 = v420;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v124 = *(v121 + 976);
      if (v124 >= 5)
      {
        v427 = *(v121 + 976);
        goto LABEL_130;
      }

      v117 = 3u >> v124;
    }

    else
    {
      v116 = v12;
      swift_getKeyPath();
      v427 = v121;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v117 = v115 == *(v121 + 976);
    }

    swift_getKeyPath();
    v427 = v121;
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v125 = *(v121 + 1016);

    LOBYTE(v115) = v125 == v115;
    v12 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
    }

    v8 = v411;
    v14 = *(v12 + 2);
    v126 = *(v12 + 3);
    if (v14 >= v126 >> 1)
    {
      v12 = sub_1A3956550((v126 > 1), v14 + 1, 1, v12);
    }

    ++v4;
    *(v12 + 2) = v14 + 1;
    v127 = &v12[88 * v14];
    v128 = v418;
    *(v127 + 4) = sub_1A39C226C;
    *(v127 + 5) = v128;
    v129 = v416;
    *(v127 + 6) = sub_1A39C2274;
    *(v127 + 7) = v129;
    v130 = v419;
    *(v127 + 8) = sub_1A39C3918;
    *(v127 + 9) = v130;
    v127[80] = v117 & 1;
    v127[81] = v115;
    v131 = WORD2(v427);
    *(v127 + 82) = v427;
    *(v127 + 43) = v131;
    *(v127 + 11) = sub_1A39C3910;
    *(v127 + 12) = a1;
    v132 = v417;
    *(v127 + 13) = sub_1A39C227C;
    *(v127 + 14) = v132;
    if (v412 == v4)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  sub_1A3956B60((v118 > 1), a1, 1);
  v209 = v427;
LABEL_52:
  *(v209 + 16) = a1;
  v211 = v209 + 88 * v117;
  *(v211 + 32) = sub_1A39C22FC;
  *(v211 + 40) = v14;
  *(v211 + 48) = sub_1A39047E8;
  *(v211 + 56) = 0;
  *(v211 + 64) = sub_1A39C3918;
  *(v211 + 72) = v116;
  *(v211 + 80) = v115;
  *(v211 + 81) = 0;
  *(v211 + 82) = v423;
  *(v211 + 86) = v424;
  *(v211 + 88) = sub_1A39C3914;
  *(v211 + 96) = v8;
  *(v211 + 104) = sub_1A39C2308;
  *(v211 + 112) = v12;
  v212 = swift_allocObject();
  *(v212 + 16) = 1;
  *(v212 + 24) = v4;
  v213 = swift_allocObject();
  *(v213 + 16) = 1;
  v214 = swift_allocObject();
  *(v214 + 16) = sub_1A39C22F4;
  *(v214 + 24) = v4;
  *(v214 + 32) = 1;
  v215 = swift_allocObject();
  *(v215 + 16) = 1;
  *(v215 + 24) = v4;
  swift_getKeyPath();
  v425 = v4;
  swift_retain_n();
  sub_1A3A2F080();

  v216 = *(v4 + 889) == 1;
  v218 = *(v209 + 16);
  v217 = *(v209 + 24);
  if (v218 >= v217 >> 1)
  {
    sub_1A3956B60((v217 > 1), v218 + 1, 1);
    v209 = v427;
  }

  *(v209 + 16) = v218 + 1;
  v219 = v209 + 88 * v218;
  *(v219 + 32) = sub_1A39C3904;
  *(v219 + 40) = v212;
  *(v219 + 48) = sub_1A39047E8;
  *(v219 + 56) = 0;
  *(v219 + 64) = sub_1A39C3918;
  *(v219 + 72) = v213;
  *(v219 + 80) = v216;
  *(v219 + 81) = 0;
  v220 = v422;
  *(v219 + 82) = v421;
  *(v219 + 86) = v220;
  *(v219 + 88) = sub_1A39C3914;
  *(v219 + 96) = v214;
  *(v219 + 104) = sub_1A39C3934;
  *(v219 + 112) = v215;
  v221 = swift_allocObject();
  *(v221 + 16) = 2;
  *(v221 + 24) = v4;
  v413 = swift_allocObject();
  *(v413 + 16) = 2;
  v222 = swift_allocObject();
  *(v222 + 16) = sub_1A39C22F4;
  *(v222 + 24) = v4;
  *(v222 + 32) = 2;
  v223 = swift_allocObject();
  *(v223 + 16) = 2;
  *(v223 + 24) = v4;
  swift_getKeyPath();
  v425 = v4;
  swift_retain_n();
  sub_1A3A2F080();

  v224 = *(v4 + 889) == 2;
  v226 = *(v209 + 16);
  v225 = *(v209 + 24);
  if (v226 >= v225 >> 1)
  {
    sub_1A3956B60((v225 > 1), v226 + 1, 1);
  }

  v227 = v427;
  *(v427 + 16) = v226 + 1;
  v228 = v227 + 88 * v226;
  *(v228 + 32) = sub_1A39C3904;
  *(v228 + 40) = v221;
  *(v228 + 48) = sub_1A39047E8;
  *(v228 + 56) = 0;
  v229 = v413;
  *(v228 + 64) = sub_1A39C3918;
  *(v228 + 72) = v229;
  *(v228 + 80) = v224;
  *(v228 + 81) = 0;
  *(v228 + 82) = v425;
  *(v228 + 86) = WORD2(v425);
  *(v228 + 88) = sub_1A39C3914;
  *(v228 + 96) = v222;
  *(v228 + 104) = sub_1A39C3934;
  *(v228 + 112) = v223;

  v230 = 17;
LABEL_88:
  v357 = v414;
  *v414 = v230;
  v358 = v415;
  v357[1] = v416;
  v357[2] = v358;
  v359 = type metadata accessor for ChromeMenu();
  result = sub_1A39C1510(v417, v357 + *(v359 + 24), type metadata accessor for ChromeElementIcon);
  *(v357 + *(v359 + 28)) = v227;
  return result;
}

void sub_1A39BFE70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  v12 = a2;
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(a2 + 1000);
  v5 = *(a2 + 1008);
  v6 = type metadata accessor for ChromeVideoConfiguration();
  v7 = objc_allocWithZone(v6);
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate] = v3;
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_resolution] = v4;
    v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority] = 0;
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    v9 = *(a2 + 1224);
    v10 = *(a2 + 1232);
    __swift_project_boxed_opaque_existential_1((a2 + 1200), v9);
    (*(v10 + 8))(v8, 0, 0, 140, a2, v9, v10);
  }
}

uint64_t sub_1A39BFFDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(a1 + 872);
  v5 = *(v4 + 16);
  sub_1A3A2EA50();
  result = sub_1A3A2EA60();
  v30 = v5;
  if (v5)
  {
    v7 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v28 = v4 + 32;
    v29 = v4;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v28 + 8 * v7);
      v33 = swift_allocObject();
      *(v33 + 16) = v8;
      v34 = swift_allocObject();
      *(v34 + 16) = v8;
      v9 = swift_allocObject();
      v9[2] = sub_1A39C28C8;
      v9[3] = a1;
      v9[4] = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v32 = swift_allocObject();
      *(v32 + 16) = v8;
      swift_getKeyPath();
      swift_retain_n();
      sub_1A3A2F080();

      v11 = *(a1 + 1000);
      v31 = *(a1 + 1008);

      v12 = v11 == v8;
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v13 = *(a1 + 1040);
      v14 = *(a1 + 1048);

      v15 = v13 == v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A3956550(0, *(v35 + 16) + 1, 1, v35);
        v35 = result;
      }

      v17 = *(v35 + 16);
      v16 = *(v35 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1A3956550((v16 > 1), v17 + 1, 1, v35);
        v35 = result;
      }

      ++v7;
      *(v35 + 16) = v17 + 1;
      v18 = v35 + 88 * v17;
      *(v18 + 32) = sub_1A39C28D0;
      *(v18 + 40) = v33;
      *(v18 + 48) = sub_1A39047E8;
      *(v18 + 56) = v10;
      *(v18 + 64) = sub_1A39C3918;
      *(v18 + 72) = v34;
      *(v18 + 80) = v12 & ~v31;
      *(v18 + 81) = v15 & ~v14;
      *(v18 + 82) = a1;
      *(v18 + 86) = WORD2(a1);
      *(v18 + 88) = sub_1A39C3910;
      *(v18 + 96) = v9;
      *(v18 + 104) = sub_1A39C2918;
      *(v18 + 112) = v32;
      v4 = v29;
      if (v30 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_11:

    sub_1A38A8F64(a2);
    v19 = sub_1A39FDA64(a2);
    MEMORY[0x1A58F7770](v19);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

    v20 = sub_1A3A31810();

    v21 = CAMLocalizedFrameworkString(v20, 0);

    v22 = sub_1A3A31850();
    v24 = v23;

    v25 = type metadata accessor for ChromeMenu();
    type metadata accessor for ChromeElementIcon();
    result = swift_storeEnumTagMultiPayload();
    *a3 = a2;
    a3[1] = v22;
    a3[2] = v24;
    *(a3 + *(v25 + 28)) = v35;
  }

  return result;
}

void sub_1A39C0464(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  v12 = a2;
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(a2 + 984);
  v5 = *(a2 + 992);
  v6 = type metadata accessor for ChromeVideoConfiguration();
  v7 = objc_allocWithZone(v6);
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate] = v4;
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_resolution] = v3;
    v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority] = 1;
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    v9 = *(a2 + 1224);
    v10 = *(a2 + 1232);
    __swift_project_boxed_opaque_existential_1((a2 + 1200), v9);
    (*(v10 + 8))(v8, 0, 0, 140, a2, v9, v10);
  }
}

unint64_t sub_1A39C05D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = [objc_opt_self() capabilities];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 isInternalInstall];

  if (!v8)
  {
LABEL_7:
    result = sub_1A3A32070();
    __break(1u);
    return result;
  }

  v9 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v9);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v10 = sub_1A3A31810();

  v11 = CAMLocalizedFrameworkString(v10, 0);

  v12 = sub_1A3A31850();
  v14 = v13;

  v15 = type metadata accessor for ChromeMenu();
  sub_1A39AE314(a1, 0, 1, a2, (a3 + *(v15 + 24)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3A681C0;
  *(v16 + 32) = sub_1A39C0848;
  *(v16 + 40) = 0;
  *(v16 + 48) = sub_1A39047E8;
  *(v16 + 56) = 0;
  *(v16 + 64) = sub_1A39C085C;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 82) = 1869768771;
  *(v16 + 86) = 25965;
  *(v16 + 88) = sub_1A39C2920;
  *(v16 + 96) = a2;
  *(v16 + 104) = sub_1A39C08C8;
  *(v16 + 112) = 0;
  *a3 = a1;
  a3[1] = v12;
  a3[2] = v14;
  *(a3 + *(v15 + 28)) = v16;
  sub_1A3A2EA60();

  return sub_1A38A8F64(a1);
}

uint64_t sub_1A39C085C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x637269632E746E61;
  *(a1 + 8) = 0xEA0000000000656CLL;
  *(a1 + 16) = 1;
  type metadata accessor for ChromeElementIcon();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

void *sub_1A39C08E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(a1 + 816);
  v5 = *(a1 + 824);
  v6 = *(a1 + 832);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(a1 + 840);
  return sub_1A38DCB50(v4);
}

uint64_t sub_1A39C09A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  swift_getKeyPath();
  sub_1A3A2F080();

  swift_getKeyPath();
  sub_1A3A2F080();

  if (*(*(a1 + 1056) + 16) > 1uLL)
  {
    if ((a4 & 1) != 0 || a3 != 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A3A681C0;
      sub_1A38EC330();
      v26 = sub_1A3A31E50();
      v28 = v27;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
      v30 = v29[16];
      v31 = v29[20];
      v32 = v29[24];
      v40 = v29[32];
      v41 = v29[28];
      v42 = v29[36];
      v33 = sub_1A3A31810();

      v34 = CAMLocalizedFrameworkString(v33, 0);

      v35 = sub_1A3A31850();
      v37 = v36;

      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      *(v25 + 48) = v35;
      *(v25 + 56) = v37;
      *(v25 + 64) = 0;
      *(v25 + 72) = 0xE000000000000000;
      *a5 = v25;
      *(a5 + 8) = 0;
      v38 = sub_1A3A30090();
      (*(*(v38 - 8) + 16))(a5 + v30, a2, v38);
      *(a5 + v31) = 3;
      *(a5 + v32) = 0;
      *(a5 + v41) = 0;
      *(a5 + v40) = 0;
      *(a5 + v42) = 0;
      goto LABEL_8;
    }

    swift_getKeyPath();
    sub_1A3A2F080();

    v16 = sub_1A3A31810();

    v17 = CAMLocalizedFrameworkString(v16, 0);

    v18 = sub_1A3A31850();
    v20 = v19;

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](32, 0xE100000000000000);

    swift_getKeyPath();
    sub_1A3A2F080();

    sub_1A38EC330();
    v21 = sub_1A3A31E50();
    v23 = v22;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](v21, v23);

    sub_1A3A30740();
    sub_1A391A414();
    v24 = CEKFontOfSizeWeightStyle();
    v15 = sub_1A3A307B0();
    *a5 = v18;
    *(a5 + 8) = v20;
  }

  else
  {
    v9 = sub_1A3A31810();

    v10 = CAMLocalizedFrameworkString(v9, 0);

    v11 = sub_1A3A31850();
    v13 = v12;

    sub_1A391163C(a2);
    sub_1A3A30740();
    sub_1A391A414();
    v14 = CEKFontOfSizeWeightStyle();
    v15 = sub_1A3A307B0();
    *a5 = v11;
    *(a5 + 8) = v13;
  }

  *(a5 + 16) = v15;
  *(a5 + 24) = 0;
LABEL_8:
  type metadata accessor for ChromeElementIcon();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C0F24(uint64_t a1)
{
  if (!a1)
  {
    v1 = 0xE400000000000000;
    v2 = 1801675074;
LABEL_5:
    MEMORY[0x1A58F7770](v2, v1);

    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    v1 = 0xE500000000000000;
    v2 = 0x746E6F7246;
    goto LABEL_5;
  }

  sub_1A3A31F20();

  MEMORY[0x1A58F7770](0xD000000000000017, 0x80000001A3AA4FF0);

  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A39C1074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39C1144@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1A39C1214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1A39C12E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_1A39C13B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 82);
  return result;
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 24) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A39C1510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39C1578()
{
  off_1F16584F0();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1620()
{
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1698()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1754()
{
  off_1F1658538();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C17FC()
{
  off_1F1658538();
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C18E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A39C1930()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

void sub_1A39C19E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }
  }

  else if (!v1)
  {
    v2 = sub_1A3A31810();
    v3 = CAMLocalizedFrameworkString(v2, 0);

    sub_1A3A31850();
    return;
  }

  CAMSecondsForTimerDuration_1(v1);

  sub_1A39A04FC();
}

uint64_t sub_1A39C1AA8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE90000000000006FLL;
  if (v3 != 1)
  {
    v4 = 0xEF6873616C732E6FLL;
  }

  v5 = v3 == 0;
  if (*a1)
  {
    v6 = 0x746F68706576696CLL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v4 = 0x80000001A3AA75D0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  type metadata accessor for ChromeElementIcon();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C1B68(uint64_t *a1)
{
  sub_1A3990AC8(*a1);
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1BE0(uint64_t *a1)
{
  sub_1A3990AC8(*a1);
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1C98(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE200000000000000;
  v3 = 28239;
  if (v1 != 1)
  {
    v3 = 6710863;
    v2 = 0xE300000000000000;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1869903169;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1A58F7770](v4, v5);

  v6 = sub_1A3A31810();

  v7 = CAMLocalizedFrameworkString(v6, 0);

  v8 = sub_1A3A31850();
  return v8;
}

uint64_t sub_1A39C1D80()
{
  off_1F165EA38[0]();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1E28()
{
  off_1F165EA38[0]();
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1F08()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1FC8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD000000000000017;
  v4 = *a1;
  v5 = "ratio.16.to.9.viewfinder";
  if (v4 == 1)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v4 == 1)
  {
    v5 = "ratio.4.to.3.viewfinder";
  }

  if (*a1)
  {
    v3 = v6;
    v7 = v5;
  }

  else
  {
    v7 = "livephoto.badge.automatic";
  }

  *a2 = v3;
  *(a2 + 8) = v7 | 0x8000000000000000;
  *(a2 + 16) = 1;
  type metadata accessor for ChromeElementIcon();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2068()
{
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C231C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x72656D6974;
  *(a1 + 8) = 0xE500000000000000;
  *(a1 + 16) = 1;
  type metadata accessor for ChromeElementIcon();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2420(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(v4, 0, 0, a2, v2, v5, v6);
}

uint64_t sub_1A39C24A8()
{
  type metadata accessor for ChromeElementIcon();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2500(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(v4, 0, 0, a2, v2, v5, v6);
}

uint64_t sub_1A39C2598()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1A39C25E0(char a1, uint64_t a2)
{
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(a1 & 1, 0, 0, a2, v2, v5, v6);
}

uint64_t objectdestroy_273Tm()
{
  v1 = *(type metadata accessor for ChromeElementIcon() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + v2);
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_16;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1A39C2830(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeElementIcon() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A39C28D8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1A39C2920()
{
  v1 = v0[153];
  v2 = v0[154];
  __swift_project_boxed_opaque_existential_1(v0 + 150, v1);
  return (*(v2 + 8))(4, 0, 0, 160, v0, v1, v2);
}

uint64_t sub_1A39C2990(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = 0;
  switch(a1)
  {
    case 0uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = ~*(a4 + 752) & 1;
      break;
    case 2uLL:
    case 5uLL:
    case 6uLL:
    case 0x14uLL:
    case 0x18uLL:
    case 0x19uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A38A8F64(a1);
      result = a1;
      break;
    case 3uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = sub_1A39B6950(*(a4 + 793), &unk_1F1655678);
      if (result == 3)
      {
        goto LABEL_53;
      }

      result = result;
      break;
    case 4uLL:
      result = 1;
      break;
    case 7uLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v11 = *(a4 + 616);
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v12 = *(v11 + 24);

        result = sub_1A39B69A8(v12, &unk_1F1655598);
        if (v13)
        {
          goto LABEL_57;
        }
      }

      else
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v17 = *(a4 + 616);
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v18 = *(v17 + 24) != 2;

        result = 2 * v18;
      }

      break;
    case 8uLL:
      result = 3;
      break;
    case 9uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = ~*(a4 + 755) & 1;
      break;
    case 0xAuLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = sub_1A39B69A8(*(a4 + 1072), &unk_1F16555F8);
      if (v14)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      break;
    case 0xCuLL:
      result = 5;
      break;
    case 0xEuLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        result = sub_1A39B6950(*(a4 + 664), &unk_1F1655628);
        if (result == 3)
        {
          goto LABEL_55;
        }

        result = result;
      }

      else
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        result = 2 * (*(a4 + 664) != 2);
      }

      break;
    case 0xFuLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v7 = *(a4 + 648);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v8 = *(v7 + 24);

      result = v8 != 1;
      break;
    case 0x10uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v9 = *(a4 + 656);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v10 = *(v9 + 17);

      result = ~v10 & 1;
      break;
    case 0x11uLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        result = sub_1A39B6950(*(a4 + 889), &unk_1F1655650);
        if (result == 3)
        {
          goto LABEL_56;
        }

        result = result;
      }

      else
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        result = 2 * (*(a4 + 889) != 2);
      }

      break;
    case 0x16uLL:
      result = 9;
      break;
    case 0x17uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = qword_1A3A80558[*(a4 + 808)];
      break;
    case 0x1AuLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 416) > 1u)
      {
        result = 26;
      }

      else
      {
        swift_getKeyPath();
        sub_1A3A2F080();

        result = sub_1A39B6A10(*(a4 + 792), &unk_1F1655570);
        if (result == 4)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        result = result;
      }

      break;
    case 0x1BuLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (!a2)
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v19 = *(a4 + 624);
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v20 = *(v19 + 20) != 2;

        return 2 * v20;
      }

      if (a2 != 4)
      {
LABEL_45:
        result = 0;
      }

      else
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v15 = *(a4 + 624);
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v16 = *(v15 + 20);

        result = sub_1A39B6950(v16, &unk_1F16555D0);
        if (result == 3)
        {
LABEL_58:
          __break(1u);
        }

        else
        {
          result = result;
        }
      }

      break;
    case 0x1CuLL:
      result = 0;
      break;
    case 0x1DuLL:
      result = 1;
      break;
    case 0x1EuLL:
      result = 7;
      break;
    case 0x20uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = ~*(a4 + 1169) & 1;
      break;
    case 0x21uLL:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      result = ~*(a4 + 1170) & 1;
      break;
    case 0x22uLL:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A39C3884()
{
  result = qword_1ED9981E8;
  if (!qword_1ED9981E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9981E8);
  }

  return result;
}

uint64_t sub_1A39C393C()
{
  result = sub_1A3A31810();
  qword_1ED998F10 = result;
  return result;
}

uint64_t sub_1A39C3974()
{
  v0 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v1 = CFPreferencesCopyAppValue(v0, qword_1ED998F10);

  if (v1)
  {
    v2 = CFGetTypeID(v1);
    if (v2 == CFStringGetTypeID())
    {
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1A39C3A48()
{
  v0 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v1 = CFPreferencesCopyAppValue(v0, qword_1ED998F10);

  if (v1)
  {
    v2 = CFGetTypeID(v1);
    if (v2 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        [v3 doubleValue];
        v5 = v4;
        swift_unknownObjectRelease_n();
        return v5;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1A39C3B44()
{
  v0 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v1 = CFPreferencesCopyAppValue(v0, qword_1ED998F10);

  if (!v1)
  {
    return 0;
  }

  v2 = CFGetTypeID(v1);
  if (v2 == CFNumberGetTypeID())
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 integerValue];
    }

    else
    {
      v4 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A39C3C48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A39C3C90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A39C3CF0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1A3A322C0();
  if (!a4)
  {
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](a1);
    MEMORY[0x1A58F8150](a2);
    MEMORY[0x1A58F8150](a3);
    return sub_1A3A32300();
  }

  if (a4 != 1)
  {
    MEMORY[0x1A58F8150](2);
LABEL_8:
    sub_1A3A00434(v9, a1);
    return sub_1A3A32300();
  }

  MEMORY[0x1A58F8150](1);
  if (a1 != 35)
  {
    sub_1A3A322E0();
    goto LABEL_8;
  }

  sub_1A3A322E0();
  return sub_1A3A32300();
}

unint64_t sub_1A39C3DD8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      MEMORY[0x1A58F8150](1);
      if (v4 == 35)
      {
        return sub_1A3A322E0();
      }

      sub_1A3A322E0();
    }

    else
    {
      MEMORY[0x1A58F8150](2);
    }

    return sub_1A3A00434(a1, v4);
  }

  else
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](v4);
    MEMORY[0x1A58F8150](v7);
    return MEMORY[0x1A58F8150](v6);
  }
}

uint64_t sub_1A39C3E94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1A3A322C0();
  if (!v4)
  {
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](v1);
    MEMORY[0x1A58F8150](v2);
    MEMORY[0x1A58F8150](v3);
    return sub_1A3A32300();
  }

  if (v4 != 1)
  {
    MEMORY[0x1A58F8150](2);
LABEL_8:
    sub_1A3A00434(v6, v1);
    return sub_1A3A32300();
  }

  MEMORY[0x1A58F8150](1);
  if (v1 != 35)
  {
    sub_1A3A322E0();
    goto LABEL_8;
  }

  sub_1A3A322E0();
  return sub_1A3A32300();
}

uint64_t sub_1A39C3F8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a1 == 35)
        {
          if (a5 == 35)
          {
            sub_1A38BCF98(0x23uLL);
            return 1;
          }
        }

        else if (a5 == 35)
        {
          sub_1A38BCF98(0x23uLL);
        }

        else
        {
          v10 = a1;
          sub_1A38BCF98(a5);
          LOBYTE(v10) = sub_1A3A018A8(v10, a5);
          sub_1A3890EFC(a5, a6, a7, 1);
          result = 1;
          if (v10)
          {
            return result;
          }
        }
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }

    return sub_1A3A018A8(a1, a5);
  }

  else
  {
    v9 = a8 == 0;
    if (a5 != a1)
    {
      v9 = 0;
    }

    if (a2 != a6)
    {
      v9 = 0;
    }

    return a3 == a7 && v9;
  }
}

uint64_t sub_1A39C40CC()
{
  sub_1A39C7DF0();
  sub_1A3A2FEF0();
  return v1;
}

uint64_t sub_1A39C410C@<X0>(uint64_t a1@<X8>)
{
  sub_1A39C7DF0();
  result = sub_1A3A2FEF0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A39C41B8@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2FD00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A39C420C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A39C423C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

id sub_1A39C430C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = sub_1A394FC58(0x14u);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A39C43BC()
{
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

uint64_t sub_1A39C4488@<X0>(void *a1@<X8>)
{
  sub_1A3968434();
  result = sub_1A3A2FEF0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A39C44D8()
{
  sub_1A3968434();
  sub_1A3A2EA60();
  return sub_1A3A2FF00();
}

uint64_t sub_1A39C4538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v28 = swift_allocBox();
  v11 = v10;
  type metadata accessor for ChromeViewModel();
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2EA60();
  sub_1A3A312C0();
  (*(v7 + 16))(v9, v11, v6);
  sub_1A3A312A0();
  (*(v7 + 8))(v9, v6);
  v12 = v29;
  v13 = sub_1A3A31530();
  sub_1A3900F74(v13, 0, v12);

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v14 = off_1ED997FE0;
  swift_getKeyPath();
  v29 = v14;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v15 = v14[2];
  swift_getKeyPath();
  v29 = v15;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  sub_1A394FC58(0x14u);

  *a3 = sub_1A3A31480();
  a3[1] = v16;
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004F0) + 44));
  *v17 = sub_1A3A31480();
  v17[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004F8);
  sub_1A39C4924(a1);
  v19 = sub_1A3A2FAA0();
  v20 = sub_1A3A30610();
  v21 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100500) + 36);
  *v21 = v19;
  v21[8] = v20;
  KeyPath = swift_getKeyPath();
  v23 = sub_1A3A31530();
  v24 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100508) + 36);
  *v24 = KeyPath;
  *(v24 + 1) = v23;
  v24[16] = 0;
  v25 = swift_getKeyPath();
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100510) + 36));
  sub_1A3A2EA60();

  *v26 = v25;
  v26[1] = a2;
  return result;
}

uint64_t sub_1A39C4924(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v43 = v2;
  v47 = v4;
  v48 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100518);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100520);
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v44 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - v22;
  v39 = v9;
  v40 = v8;
  v41 = v6;
  sub_1A39C4E90(v18);
  v24 = swift_projectBox();
  (*(v11 + 16))(v14, v24, v10);
  sub_1A3A312B0();
  v25 = *(v11 + 8);
  v25(v14, v10);
  swift_getKeyPath();
  sub_1A3A312D0();

  v25(v16, v10);
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100528);
  sub_1A39C7E4C();
  v26 = type metadata accessor for ChromeViewModel();
  v27 = sub_1A39C81E4();
  v28 = sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v52[0] = &type metadata for CameraUISettingsView;
  v52[1] = v26;
  v52[2] = v27;
  v52[3] = v28;
  swift_getOpaqueTypeConformance2();
  sub_1A3A30C10();

  sub_1A388F740(v18, &qword_1EB100518);
  if (v43)
  {
    sub_1A39C58B4(v39);
    memcpy(v51, v50, sizeof(v51));
    CAMPhotoFormatMake(v51, v29);
    memcpy(v52, v51, 0x8B0uLL);
  }

  else
  {
    sub_1A39C8238(v52);
  }

  v31 = v44;
  v30 = v45;
  v32 = *(v45 + 16);
  v33 = v46;
  v32(v44, v23, v46);
  memcpy(v49, v52, sizeof(v49));
  v34 = v47;
  v32(v47, v31, v33);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100570) + 48);
  memcpy(v50, v49, sizeof(v50));
  memcpy(&v34[v35], v49, 0x8B0uLL);
  sub_1A388F6D8(v50, v51, &qword_1EB100578);
  v36 = *(v30 + 8);
  v36(v23, v33);
  memcpy(v51, v49, sizeof(v51));
  sub_1A388F740(v51, &qword_1EB100578);
  return (v36)(v31, v33);
}

uint64_t sub_1A39C4E90@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100588);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v53 - v1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100550);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v53 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100548);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v53 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100540);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100518);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = v53 - v12;
  v62 = swift_allocBox();
  v14 = v13;
  v15 = type metadata accessor for ChromeViewModel();
  v16 = sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2EA60();
  v53[1] = v15;
  sub_1A3A312C0();
  v60 = *(v8 + 16);
  v60(v10, v14, v7);
  sub_1A3A312A0();
  v61 = *(v8 + 8);
  v61(v10, v7);
  v17 = v86;
  swift_getKeyPath();
  *&v86 = v17;
  v53[0] = v16;
  sub_1A3A2F080();

  v18 = *(v17 + 416);

  v60(v10, v14, v7);
  sub_1A3A312A0();
  v61(v10, v7);
  if (v18 == 2)
  {
    v19 = v56;
    sub_1A3A312C0();
    v20 = sub_1A3A2FAA0();
    v21 = sub_1A3A30610();
    v22 = v19 + *(v54 + 36);
    *v22 = v20;
    *(v22 + 8) = v21;
    sub_1A3A31480();
    sub_1A3A2FBF0();
    v23 = v57;
    sub_1A388F670(v19, v57, &qword_1EB100550);
    v24 = (v23 + *(v55 + 36));
    v25 = v103;
    v24[4] = v102;
    v24[5] = v25;
    v24[6] = v104;
    v26 = v99;
    *v24 = v98;
    v24[1] = v26;
    v27 = v101;
    v24[2] = v100;
    v24[3] = v27;
    v28 = sub_1A3A31440();
    v30 = v29;
    sub_1A39C732C(v62, &v69);
    v81 = v73;
    v82 = v74;
    v83 = v75;
    v77 = v69;
    v78 = v70;
    v79 = v71;
    v80 = v72;
    *&v84 = v76;
    *(&v84 + 1) = v28;
    v85 = v30;
    v31 = v23;
    v32 = v58;
    sub_1A388F670(v31, v58, &qword_1EB100548);
    v33 = v32 + *(v64 + 36);
    v34 = v84;
    *(v33 + 96) = v83;
    *(v33 + 112) = v34;
    *(v33 + 128) = v85;
    v35 = v80;
    *(v33 + 32) = v79;
    *(v33 + 48) = v35;
    v36 = v82;
    *(v33 + 64) = v81;
    *(v33 + 80) = v36;
    v37 = v78;
    *v33 = v77;
    *(v33 + 16) = v37;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v86 = v69;
    v87 = v70;
    v88 = v71;
    v89 = v72;
    v93 = v76;
    v94 = v28;
    v95 = v30;
    sub_1A388F6D8(&v77, v68, &qword_1EB100558);
    sub_1A388F740(&v86, &qword_1EB100558);
    v38 = v59;
    sub_1A388F670(v32, v59, &qword_1EB100540);
    sub_1A388F6D8(v38, v66, &qword_1EB100540);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100560);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    v39 = v63;
    sub_1A3A301F0();
    sub_1A388F740(v38, &qword_1EB100540);
  }

  else
  {
    v40 = v86;
    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v43 = sub_1A3A31440();
    v45 = v44;
    sub_1A39C79F0(&v69);
    v81 = v73;
    v82 = v74;
    v77 = v69;
    v78 = v70;
    *&v96[71] = v73;
    *&v96[87] = v74;
    *&v96[55] = v72;
    *&v96[7] = v69;
    *&v96[23] = v70;
    v79 = v71;
    v80 = v72;
    *&v83 = v43;
    *(&v83 + 1) = v45;
    LOBYTE(v98) = 0;
    v97 = 0;
    *&v96[39] = v71;
    *&v96[103] = v83;
    v90 = v73;
    v91 = v74;
    v88 = v71;
    v89 = v72;
    v86 = v69;
    v87 = v70;
    *&v92 = v43;
    *(&v92 + 1) = v45;
    sub_1A388F6D8(&v77, v68, &qword_1EB100568);
    sub_1A388F740(&v86, &qword_1EB100568);
    v46 = *&v96[80];
    v47 = v66;
    *(v66 + 97) = *&v96[64];
    *(v47 + 113) = v46;
    *(v47 + 129) = *&v96[96];
    v48 = *&v96[16];
    *(v47 + 33) = *v96;
    *(v47 + 49) = v48;
    v49 = *&v96[48];
    *(v47 + 65) = *&v96[32];
    v50 = v98;
    v51 = v97;
    *v47 = v40;
    *(v47 + 8) = KeyPath;
    *(v47 + 16) = v50;
    *(v47 + 24) = v42;
    *(v47 + 32) = v51;
    *(v47 + 144) = *&v96[111];
    *(v47 + 81) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100560);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    v39 = v63;
    sub_1A3A301F0();
  }

  sub_1A388F670(v39, v67, &qword_1EB100518);
}

uint64_t sub_1A39C56F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  sub_1A3A13718(v6);
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1A3A312A0();
  (*(v1 + 8))(v3, v0);
  type metadata accessor for ChromeViewModel();
  sub_1A39C81E4();
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A30980();

  v8[4] = v6[4];
  v9[0] = v7[0];
  *(v9 + 9) = *(v7 + 9);
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  v8[3] = v6[3];
  return sub_1A39C89C4(v8);
}

double sub_1A39C58B4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v164 = sub_1A3A30DB0();
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = sub_1A3A30D60();
  v9 = sub_1A3A31480();
  v11 = v10;
  sub_1A3940614(1, v8, &v379, v4, v5, v6, v7);

  v250[8] = v387;
  v250[9] = v388;
  v250[4] = v383;
  v250[5] = v384;
  v250[7] = v386;
  v250[6] = v385;
  v250[0] = v379;
  v250[1] = v380;
  v250[3] = v382;
  v250[2] = v381;
  *&v177[118] = v386;
  *&v177[54] = v382;
  *&v177[134] = v387;
  *&v177[150] = v388;
  *&v177[70] = v383;
  *&v177[86] = v384;
  *&v177[102] = v385;
  *&v177[6] = v379;
  *&v177[22] = v380;
  *&v251 = v389;
  *(&v251 + 1) = v9;
  *&v177[38] = v381;
  *&v177[166] = v251;
  v253[8] = v387;
  v253[9] = v388;
  v253[4] = v383;
  v253[5] = v384;
  v253[7] = v386;
  v253[6] = v385;
  v252 = v11;
  *&v177[182] = v11;
  v253[0] = v379;
  v253[1] = v380;
  v253[3] = v382;
  v253[2] = v381;
  v254 = v389;
  v255 = v9;
  v256 = v11;
  sub_1A388F6D8(v250, &v391, &qword_1EB100580);
  sub_1A388F740(v253, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v12 = v1[32];
  v13 = v1[33];
  v14 = v1[34];
  v15 = v1[35];
  v16 = sub_1A3A30DC0();
  v17 = sub_1A3A31480();
  v19 = v18;
  sub_1A3940614(1, v16, &v379, v12, v13, v14, v15);

  v257[8] = v387;
  v257[9] = v388;
  v257[4] = v383;
  v257[5] = v384;
  v257[7] = v386;
  v257[6] = v385;
  v257[0] = v379;
  v257[1] = v380;
  v257[3] = v382;
  v257[2] = v381;
  v293 = v387;
  v294 = v388;
  v289 = v383;
  v290 = v384;
  v292 = v386;
  v291 = v385;
  v285 = v379;
  v286 = v380;
  *&v258 = v389;
  *(&v258 + 1) = v17;
  v288 = v382;
  v287 = v381;
  v295 = v258;
  v260[8] = v387;
  v260[9] = v388;
  v260[4] = v383;
  v260[5] = v384;
  v260[7] = v386;
  v260[6] = v385;
  v259 = v19;
  v296 = v19;
  v260[0] = v379;
  v260[1] = v380;
  v260[3] = v382;
  v260[2] = v381;
  v261 = v389;
  v262 = v17;
  v263 = v19;
  sub_1A388F6D8(v257, &v391, &qword_1EB100580);
  sub_1A388F740(v260, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v20 = v1[36];
  v21 = v1[37];
  v22 = v1[38];
  v23 = v1[39];
  v24 = sub_1A3A30DE0();
  v25 = sub_1A3A31480();
  v27 = v26;
  sub_1A3940614(1, v24, &v379, v20, v21, v22, v23);

  v264[8] = v387;
  v264[9] = v388;
  v264[4] = v383;
  v264[5] = v384;
  v264[7] = v386;
  v264[6] = v385;
  v264[0] = v379;
  v264[1] = v380;
  v264[3] = v382;
  v264[2] = v381;
  v312 = v387;
  v313 = v388;
  v308 = v383;
  v309 = v384;
  v311 = v386;
  v310 = v385;
  v304 = v379;
  v305 = v380;
  *&v265 = v389;
  *(&v265 + 1) = v25;
  v307 = v382;
  v306 = v381;
  v314 = v265;
  v267[8] = v387;
  v267[9] = v388;
  v267[4] = v383;
  v267[5] = v384;
  v267[7] = v386;
  v267[6] = v385;
  v266 = v27;
  v315 = v27;
  v267[0] = v379;
  v267[1] = v380;
  v267[3] = v382;
  v267[2] = v381;
  v268 = v389;
  v269 = v25;
  v270 = v27;
  sub_1A388F6D8(v264, &v391, &qword_1EB100580);
  sub_1A388F740(v267, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v28 = v1[40];
  v29 = v1[41];
  v30 = v1[42];
  v31 = v1[43];
  v32 = sub_1A3A30E00();
  v33 = sub_1A3A31480();
  v35 = v34;
  sub_1A3940614(1, v32, &v379, v28, v29, v30, v31);

  v271[8] = v387;
  v271[9] = v388;
  v271[4] = v383;
  v271[5] = v384;
  v271[7] = v386;
  v271[6] = v385;
  v271[0] = v379;
  v271[1] = v380;
  v271[3] = v382;
  v271[2] = v381;
  v186 = v387;
  v187 = v388;
  v182 = v383;
  v183 = v384;
  v184 = v385;
  v185 = v386;
  v178 = v379;
  v179 = v380;
  *&v272 = v389;
  *(&v272 + 1) = v33;
  v180 = v381;
  v181 = v382;
  v188 = v272;
  v274[8] = v387;
  v274[9] = v388;
  v274[4] = v383;
  v274[5] = v384;
  v274[7] = v386;
  v274[6] = v385;
  v273 = v35;
  v189 = v35;
  v274[0] = v379;
  v274[1] = v380;
  v274[3] = v382;
  v274[2] = v381;
  v275 = v389;
  v276 = v33;
  v277 = v35;
  sub_1A388F6D8(v271, &v391, &qword_1EB100580);
  sub_1A388F740(v274, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v36 = v1[8];
  v37 = v1[9];
  v38 = v1[10];
  v39 = v1[11];
  v40 = sub_1A3A30D50();
  v41 = sub_1A3A31480();
  v43 = v42;
  sub_1A3940614(1, v40, &v379, v36, v37, v38, v39);

  v278[8] = v387;
  v278[9] = v388;
  v278[4] = v383;
  v278[5] = v384;
  v278[7] = v386;
  v278[6] = v385;
  v278[0] = v379;
  v278[1] = v380;
  v278[3] = v382;
  v278[2] = v381;
  v198 = v387;
  v199 = v388;
  v194 = v383;
  v195 = v384;
  v196 = v385;
  v197 = v386;
  v190 = v379;
  v191 = v380;
  *&v279 = v389;
  *(&v279 + 1) = v41;
  v192 = v381;
  v193 = v382;
  v200 = v279;
  v281[8] = v387;
  v281[9] = v388;
  v281[4] = v383;
  v281[5] = v384;
  v281[7] = v386;
  v281[6] = v385;
  v280 = v43;
  v201 = v43;
  v281[0] = v379;
  v281[1] = v380;
  v281[3] = v382;
  v281[2] = v381;
  v282 = v389;
  v283 = v41;
  v284 = v43;
  sub_1A388F6D8(v278, &v391, &qword_1EB100580);
  sub_1A388F740(v281, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v44 = v1[24];
  v45 = v1[25];
  v46 = v1[26];
  v47 = v1[27];
  v48 = sub_1A3A30D60();
  v49 = sub_1A3A31480();
  v51 = v50;
  sub_1A3940614(1, v48, &v379, v44, v45, v46, v47);

  v297[8] = v387;
  v297[9] = v388;
  v297[4] = v383;
  v297[5] = v384;
  v297[7] = v386;
  v297[6] = v385;
  v297[0] = v379;
  v297[1] = v380;
  v297[3] = v382;
  v297[2] = v381;
  v210 = v387;
  v211 = v388;
  v206 = v383;
  v207 = v384;
  v209 = v386;
  v208 = v385;
  v202 = v379;
  v203 = v380;
  *&v298 = v389;
  *(&v298 + 1) = v49;
  v204 = v381;
  v205 = v382;
  v212 = v298;
  v300[8] = v387;
  v300[9] = v388;
  v300[4] = v383;
  v300[5] = v384;
  v300[7] = v386;
  v300[6] = v385;
  v299 = v51;
  v213 = v51;
  v300[0] = v379;
  v300[1] = v380;
  v300[3] = v382;
  v300[2] = v381;
  v301 = v389;
  v302 = v49;
  v303 = v51;
  sub_1A388F6D8(v297, &v391, &qword_1EB100580);
  sub_1A388F740(v300, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v52 = *(v1 + 80);
  swift_getKeyPath();
  *&v391 = v52;
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v53 = v52[31];
  v54 = v52[32];
  v55 = v52[33];
  v56 = v52[34];

  v57 = sub_1A3A30E00();
  v58 = sub_1A3A31480();
  v60 = v59;
  sub_1A3940614(1, v57, &v379, v53, v54, v55, v56);

  v316[8] = v387;
  v316[9] = v388;
  v316[4] = v383;
  v316[5] = v384;
  v316[7] = v386;
  v316[6] = v385;
  v316[0] = v379;
  v316[1] = v380;
  v316[3] = v382;
  v316[2] = v381;
  v222 = v387;
  v223 = v388;
  v218 = v383;
  v219 = v384;
  v221 = v386;
  v220 = v385;
  v214 = v379;
  v215 = v380;
  *&v317 = v389;
  *(&v317 + 1) = v58;
  v217 = v382;
  v216 = v381;
  v224 = v317;
  v319[8] = v387;
  v319[9] = v388;
  v319[4] = v383;
  v319[5] = v384;
  v319[7] = v386;
  v319[6] = v385;
  v318 = v60;
  v225 = v60;
  v319[0] = v379;
  v319[1] = v380;
  v319[3] = v382;
  v319[2] = v381;
  v320 = v389;
  v321 = v58;
  v322 = v60;
  sub_1A388F6D8(v316, &v391, &qword_1EB100580);
  sub_1A388F740(v319, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v61 = v1[16];
  v62 = v1[17];
  v63 = v1[18];
  v64 = v1[19];
  v65 = sub_1A3A30D60();
  v66 = sub_1A3A31480();
  v68 = v67;
  sub_1A3940614(1, v65, &v379, v61, v62, v63, v64);

  v323[8] = v387;
  v323[9] = v388;
  v323[4] = v383;
  v323[5] = v384;
  v323[7] = v386;
  v323[6] = v385;
  v323[0] = v379;
  v323[1] = v380;
  v323[3] = v382;
  v323[2] = v381;
  v234 = v387;
  v235 = v388;
  v230 = v383;
  v231 = v384;
  v233 = v386;
  v232 = v385;
  v226 = v379;
  v227 = v380;
  *&v324 = v389;
  *(&v324 + 1) = v66;
  v229 = v382;
  v228 = v381;
  v236 = v324;
  v326[8] = v387;
  v326[9] = v388;
  v326[4] = v383;
  v326[5] = v384;
  v326[7] = v386;
  v326[6] = v385;
  v325 = v68;
  v237 = v68;
  v326[0] = v379;
  v326[1] = v380;
  v326[3] = v382;
  v326[2] = v381;
  v327 = v389;
  v328 = v66;
  v329 = v68;
  sub_1A388F6D8(v323, &v391, &qword_1EB100580);
  sub_1A388F740(v326, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v69 = v1[20];
  v70 = v1[21];
  v71 = v1[22];
  v72 = v1[23];
  v73 = sub_1A3A30DC0();
  v74 = sub_1A3A31480();
  v76 = v75;
  sub_1A3940614(1, v73, &v379, v69, v70, v71, v72);

  v330[8] = v387;
  v330[9] = v388;
  v330[4] = v383;
  v330[5] = v384;
  v330[7] = v386;
  v330[6] = v385;
  v330[0] = v379;
  v330[1] = v380;
  v330[3] = v382;
  v330[2] = v381;
  v246 = v387;
  v247 = v388;
  v242 = v383;
  v243 = v384;
  v245 = v386;
  v244 = v385;
  v238 = v379;
  v239 = v380;
  *&v331 = v389;
  *(&v331 + 1) = v74;
  v241 = v382;
  v240 = v381;
  v248 = v331;
  v333[8] = v387;
  v333[9] = v388;
  v333[4] = v383;
  v333[5] = v384;
  v333[7] = v386;
  v333[6] = v385;
  v332 = v76;
  v249 = v76;
  v333[0] = v379;
  v333[1] = v380;
  v333[3] = v382;
  v333[2] = v381;
  v334 = v389;
  v335 = v74;
  v336 = v76;
  sub_1A388F6D8(v330, &v391, &qword_1EB100580);
  sub_1A388F740(v333, &qword_1EB100580);
  swift_getKeyPath();
  *&v391 = v1;
  sub_1A3A2F080();

  v77 = *(v1 + 80);
  swift_getKeyPath();
  *&v391 = v77;
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v78 = v77[35];
  v79 = v77[36];
  v80 = v77[37];
  v81 = v77[38];

  v82 = sub_1A3A30DE0();
  v83 = sub_1A3A31480();
  v85 = v84;
  sub_1A3940614(1, v82, &v367, v78, v79, v80, v81);

  v337[8] = v375;
  v337[9] = v376;
  v337[4] = v371;
  v337[5] = v372;
  v337[7] = v374;
  v337[6] = v373;
  v337[0] = v367;
  v337[1] = v368;
  v337[3] = v370;
  v337[2] = v369;
  v399 = v375;
  v400 = v376;
  v395 = v371;
  v396 = v372;
  v398 = v374;
  v397 = v373;
  v391 = v367;
  v392 = v368;
  *&v338 = v377;
  *(&v338 + 1) = v83;
  v394 = v370;
  v393 = v369;
  v401 = v338;
  v340[8] = v375;
  v340[9] = v376;
  v340[4] = v371;
  v340[5] = v372;
  v340[7] = v374;
  v340[6] = v373;
  v339 = v85;
  v402 = v85;
  v340[0] = v367;
  v340[1] = v368;
  v340[3] = v370;
  v340[2] = v369;
  v341 = v377;
  v342 = v83;
  v343 = v85;
  sub_1A388F6D8(v337, &v379, &qword_1EB100580);
  sub_1A388F740(v340, &qword_1EB100580);
  swift_getKeyPath();
  *&v379 = v1;
  sub_1A3A2F080();

  v86 = *(v1 + 80);
  swift_getKeyPath();
  *&v379 = v86;
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v87 = v86[39];
  v88 = v86[40];
  v89 = v86[41];
  v90 = v86[42];

  v91 = sub_1A3A30D70();
  v92 = sub_1A3A31480();
  v94 = v93;
  sub_1A3940614(1, v91, &v354, v87, v88, v89, v90);

  v344[8] = v362;
  v344[9] = v363;
  v344[4] = v358;
  v344[5] = v359;
  v344[7] = v361;
  v344[6] = v360;
  v344[0] = v354;
  v344[1] = v355;
  v344[3] = v357;
  v344[2] = v356;
  v387 = v362;
  v388 = v363;
  v383 = v358;
  v384 = v359;
  v386 = v361;
  v385 = v360;
  v379 = v354;
  v380 = v355;
  *&v345 = v364;
  *(&v345 + 1) = v92;
  v382 = v357;
  v381 = v356;
  v389 = v345;
  v347[8] = v362;
  v347[9] = v363;
  v347[4] = v358;
  v347[5] = v359;
  v347[7] = v361;
  v347[6] = v360;
  v346 = v94;
  v390 = v94;
  v347[0] = v354;
  v347[1] = v355;
  v347[3] = v357;
  v347[2] = v356;
  v348 = v364;
  v349 = v92;
  v350 = v94;
  sub_1A388F6D8(v344, &v367, &qword_1EB100580);
  sub_1A388F740(v347, &qword_1EB100580);
  swift_getKeyPath();
  *&v367 = v1;
  sub_1A3A2F080();

  v95 = v1[95];
  v96 = v1[96];
  v97 = v1[97];
  v98 = v1[98];
  v99 = sub_1A3A30DF0();
  v100 = sub_1A3A31480();
  v102 = v101;
  sub_1A3940614(1, v99, &v166, v95, v96, v97, v98);

  v351[8] = v174;
  v351[9] = v175;
  v351[4] = v170;
  v351[5] = v171;
  v351[7] = v173;
  v351[6] = v172;
  v351[0] = v166;
  v351[1] = v167;
  v351[3] = v169;
  v351[2] = v168;
  v375 = v174;
  v376 = v175;
  v371 = v170;
  v372 = v171;
  v374 = v173;
  v373 = v172;
  v367 = v166;
  v368 = v167;
  *&v352 = v176;
  *(&v352 + 1) = v100;
  v370 = v169;
  v369 = v168;
  v377 = v352;
  v362 = v174;
  v363 = v175;
  v358 = v170;
  v359 = v171;
  v361 = v173;
  v360 = v172;
  v353 = v102;
  v378 = v102;
  v354 = v166;
  v355 = v167;
  v357 = v169;
  v356 = v168;
  v364 = v176;
  v365 = v100;
  v366 = v102;
  sub_1A388F6D8(v351, v165, &qword_1EB100580);
  sub_1A388F740(&v354, &qword_1EB100580);
  *v3 = v164;
  *(v3 + 8) = 0;
  *(v3 + 9) = 1;
  v103 = *&v177[144];
  *(v3 + 138) = *&v177[128];
  *(v3 + 154) = v103;
  *(v3 + 170) = *&v177[160];
  *(v3 + 184) = *&v177[174];
  v104 = *&v177[80];
  *(v3 + 74) = *&v177[64];
  *(v3 + 90) = v104;
  v105 = *&v177[112];
  *(v3 + 106) = *&v177[96];
  *(v3 + 122) = v105;
  v106 = *&v177[16];
  *(v3 + 10) = *v177;
  *(v3 + 26) = v106;
  v107 = *&v177[48];
  *(v3 + 42) = *&v177[32];
  *(v3 + 58) = v107;
  v108 = v294;
  *(v3 + 328) = v293;
  *(v3 + 344) = v108;
  *(v3 + 360) = v295;
  *(v3 + 376) = v296;
  v109 = v290;
  *(v3 + 264) = v289;
  *(v3 + 280) = v109;
  v110 = v292;
  *(v3 + 296) = v291;
  *(v3 + 312) = v110;
  v111 = v286;
  *(v3 + 200) = v285;
  *(v3 + 216) = v111;
  v112 = v288;
  *(v3 + 232) = v287;
  *(v3 + 248) = v112;
  v113 = v313;
  *(v3 + 512) = v312;
  *(v3 + 528) = v113;
  *(v3 + 544) = v314;
  *(v3 + 560) = v315;
  v114 = v309;
  *(v3 + 448) = v308;
  *(v3 + 464) = v114;
  v115 = v311;
  *(v3 + 480) = v310;
  *(v3 + 496) = v115;
  v116 = v305;
  *(v3 + 384) = v304;
  *(v3 + 400) = v116;
  v117 = v307;
  *(v3 + 416) = v306;
  *(v3 + 432) = v117;
  v118 = v187;
  *(v3 + 696) = v186;
  *(v3 + 712) = v118;
  *(v3 + 728) = v188;
  *(v3 + 744) = v189;
  v119 = v183;
  *(v3 + 632) = v182;
  *(v3 + 648) = v119;
  v120 = v185;
  *(v3 + 664) = v184;
  *(v3 + 680) = v120;
  v121 = v179;
  *(v3 + 568) = v178;
  *(v3 + 584) = v121;
  v122 = v181;
  *(v3 + 600) = v180;
  *(v3 + 616) = v122;
  v123 = v199;
  *(v3 + 880) = v198;
  *(v3 + 896) = v123;
  *(v3 + 912) = v200;
  *(v3 + 928) = v201;
  v124 = v195;
  *(v3 + 816) = v194;
  *(v3 + 832) = v124;
  v125 = v197;
  *(v3 + 848) = v196;
  *(v3 + 864) = v125;
  v126 = v191;
  *(v3 + 752) = v190;
  *(v3 + 768) = v126;
  v127 = v193;
  *(v3 + 784) = v192;
  *(v3 + 800) = v127;
  v128 = v211;
  *(v3 + 1064) = v210;
  *(v3 + 1080) = v128;
  *(v3 + 1096) = v212;
  *(v3 + 1112) = v213;
  v129 = v207;
  *(v3 + 1000) = v206;
  *(v3 + 1016) = v129;
  v130 = v209;
  *(v3 + 1032) = v208;
  *(v3 + 1048) = v130;
  v131 = v203;
  *(v3 + 936) = v202;
  *(v3 + 952) = v131;
  v132 = v205;
  *(v3 + 968) = v204;
  *(v3 + 984) = v132;
  v133 = v223;
  *(v3 + 1248) = v222;
  *(v3 + 1264) = v133;
  *(v3 + 1280) = v224;
  *(v3 + 1296) = v225;
  v134 = v219;
  *(v3 + 1184) = v218;
  *(v3 + 1200) = v134;
  v135 = v221;
  *(v3 + 1216) = v220;
  *(v3 + 1232) = v135;
  v136 = v215;
  *(v3 + 1120) = v214;
  *(v3 + 1136) = v136;
  v137 = v217;
  *(v3 + 1152) = v216;
  *(v3 + 1168) = v137;
  v138 = v235;
  *(v3 + 1432) = v234;
  *(v3 + 1448) = v138;
  *(v3 + 1464) = v236;
  *(v3 + 1480) = v237;
  v139 = v231;
  *(v3 + 1368) = v230;
  *(v3 + 1384) = v139;
  v140 = v233;
  *(v3 + 1400) = v232;
  *(v3 + 1416) = v140;
  v141 = v227;
  *(v3 + 1304) = v226;
  *(v3 + 1320) = v141;
  v142 = v229;
  *(v3 + 1336) = v228;
  *(v3 + 1352) = v142;
  v143 = v247;
  *(v3 + 1616) = v246;
  *(v3 + 1632) = v143;
  *(v3 + 1648) = v248;
  *(v3 + 1664) = v249;
  v144 = v243;
  *(v3 + 1552) = v242;
  *(v3 + 1568) = v144;
  v145 = v245;
  *(v3 + 1584) = v244;
  *(v3 + 1600) = v145;
  v146 = v239;
  *(v3 + 1488) = v238;
  *(v3 + 1504) = v146;
  v147 = v241;
  *(v3 + 1520) = v240;
  *(v3 + 1536) = v147;
  v148 = v400;
  *(v3 + 1800) = v399;
  *(v3 + 1816) = v148;
  *(v3 + 1832) = v401;
  *(v3 + 1848) = v402;
  v149 = v396;
  *(v3 + 1736) = v395;
  *(v3 + 1752) = v149;
  v150 = v398;
  *(v3 + 1768) = v397;
  *(v3 + 1784) = v150;
  v151 = v392;
  *(v3 + 1672) = v391;
  *(v3 + 1688) = v151;
  v152 = v394;
  *(v3 + 1704) = v393;
  *(v3 + 1720) = v152;
  v153 = v388;
  *(v3 + 1984) = v387;
  *(v3 + 2000) = v153;
  *(v3 + 2016) = v389;
  *(v3 + 2032) = v390;
  v154 = v384;
  *(v3 + 1920) = v383;
  *(v3 + 1936) = v154;
  v155 = v386;
  *(v3 + 1952) = v385;
  *(v3 + 1968) = v155;
  v156 = v380;
  *(v3 + 1856) = v379;
  *(v3 + 1872) = v156;
  v157 = v382;
  *(v3 + 1888) = v381;
  *(v3 + 1904) = v157;
  v158 = v376;
  *(v3 + 2168) = v375;
  *(v3 + 2184) = v158;
  *(v3 + 2200) = v377;
  *(v3 + 2216) = v378;
  v159 = v372;
  *(v3 + 2104) = v371;
  *(v3 + 2120) = v159;
  v160 = v374;
  *(v3 + 2136) = v373;
  *(v3 + 2152) = v160;
  v161 = v368;
  *(v3 + 2040) = v367;
  *(v3 + 2056) = v161;
  result = *&v369;
  v163 = v370;
  *(v3 + 2072) = v369;
  *(v3 + 2088) = v163;
  return result;
}

uint64_t sub_1A39C732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v8 = off_1ED997FE0;
  swift_getKeyPath();
  *&v27 = v8;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v9 = v8[2];
  swift_getKeyPath();
  *&v27 = v9;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v10 = [objc_opt_self() solCamDebugMenuEnabled];

  if (v10)
  {
    sub_1A3A30DD0();
    v12 = sub_1A3A30E10();

    sub_1A3A31480();
    sub_1A3A2F780();
    v24 = v28;
    v25 = v29;
    v23 = v27;
    v13 = swift_projectBox();
    (*(v5 + 16))(v7, v13, v4);
    sub_1A3A312A0();
    (*(v5 + 8))(v7, v4);
    v14 = v26;
    v15 = sub_1A3A2FAA0();
    v16 = sub_1A3A30610();
    result = sub_1A3A2EA60();
    v18 = v23;
    v17 = v24;
    v19 = v25;
    v20 = vdupq_n_s64(0x100uLL);
    v20.i64[0] = v12;
    v21 = sub_1A39C8A18;
    v22 = sub_1A39C7688;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v22 = 0;
    v21 = 0;
    a1 = 0;
    v16 = 0;
    v20 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
  }

  *a2 = v20;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v19;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v22;
  *(a2 + 96) = 0;
  *(a2 + 104) = v21;
  *(a2 + 112) = a1;
  return result;
}

uint64_t sub_1A39C7688@<X0>(void *a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0x77656956746F6F52;
  v15[1] = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1A39C77C4(CGFloat *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = swift_projectBox();
  (*(v3 + 16))(v5, v10, v2);
  sub_1A3A312A0();
  (*(v3 + 8))(v5, v2);
  v11 = v15;
  v16.origin.x = v7;
  v16.origin.y = v6;
  v16.size.width = v9;
  v16.size.height = v8;
  if (CGRectEqualToRect(v15[6], v16))
  {
    v11[6].origin.x = v7;
    v11[6].origin.y = v6;
    v11[6].size.width = v9;
    v11[6].size.height = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v14 - 6) = v11;
    *(&v14 - 5) = v7;
    *(&v14 - 4) = v6;
    *(&v14 - 3) = v9;
    *(&v14 - 2) = v8;
    v15 = v11;
    sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39C79F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v6 = off_1ED997FE0;
  swift_getKeyPath();
  *&v27 = v6;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v7 = v6[2];
  swift_getKeyPath();
  *&v27 = v7;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v8 = [objc_opt_self() solCamDebugMenuEnabled];

  if (v8)
  {
    v25 = sub_1A3A30DB0();
    *&v23 = type metadata accessor for ChromeViewSpec();
    v9 = swift_projectBox();
    v24 = *(v3 + 16);
    v24(v5, v9, v2);
    sub_1A3A312A0();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v11 = v27;
    swift_getKeyPath();
    *&v27 = v11;
    sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v12 = *(v11 + 400);
    v13 = *(v11 + 408);

    sub_1A391049C(v12, v13);
    sub_1A3A31480();
    sub_1A3A2F780();
    v22 = v28;
    v23 = v29;
    v21 = v27;
    v24(v5, v9, v2);
    sub_1A3A312A0();
    v10(v5, v2);
    v14 = v26;
    v15 = sub_1A3A2FAA0();
    result = sub_1A3A30610();
    v18 = v21;
    v17 = v22;
    v19 = v23;
    v20 = vdupq_n_s64(0x100uLL);
    v20.i64[0] = v25;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    result = 0;
    v20 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
  }

  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = v19;
  *(a1 + 64) = 0;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = result;
  return result;
}

unint64_t sub_1A39C7DF0()
{
  result = qword_1ED998F18;
  if (!qword_1ED998F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F18);
  }

  return result;
}

unint64_t sub_1A39C7E4C()
{
  result = qword_1EB100530;
  if (!qword_1EB100530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100518);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100530);
  }

  return result;
}

unint64_t sub_1A39C7ED8()
{
  result = qword_1EB100538;
  if (!qword_1EB100538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100540);
    sub_1A39C7F90();
    sub_1A38A08F8(&qword_1ED998F38, &qword_1EB100558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100538);
  }

  return result;
}

unint64_t sub_1A39C7F90()
{
  result = qword_1ED998F20;
  if (!qword_1ED998F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100548);
    sub_1A39C801C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F20);
  }

  return result;
}

unint64_t sub_1A39C801C()
{
  result = qword_1ED998F28;
  if (!qword_1ED998F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100550);
    sub_1A39C8240(&qword_1ED998F30, type metadata accessor for ChromePadView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F28);
  }

  return result;
}

unint64_t sub_1A39C80D8()
{
  result = qword_1ED998F40;
  if (!qword_1ED998F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100560);
    sub_1A39C8190();
    sub_1A38A08F8(&qword_1ED998F50, &qword_1EB100568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F40);
  }

  return result;
}

unint64_t sub_1A39C8190()
{
  result = qword_1ED998F48;
  if (!qword_1ED998F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F48);
  }

  return result;
}

unint64_t sub_1A39C81E4()
{
  result = qword_1ED998F58;
  if (!qword_1ED998F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F58);
  }

  return result;
}

uint64_t sub_1A39C8240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A39C8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A39C8C38();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

id sub_1A39C82FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a1;
  v19 = a2;
  v2 = sub_1A3A2F570();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF50);
  v18[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1005C8);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v13 = result;
    v14 = [result isInternalInstall];

    if (v14)
    {
      sub_1A3A2F560();
      sub_1A3A2EA60();
      sub_1A3A31240();

      (*(v3 + 8))(v5, v2);
      sub_1A3A2F660();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1005D0);
      sub_1A38A08F8(&qword_1ED998F80, &qword_1EB1005D0);
      sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50);
      sub_1A3A30AE0();
      (*(v18[0] + 8))(v8, v6);
      v15 = v19;
      (*(v20 + 32))(v19, v11, v9);
      return (*(v20 + 56))(v15, 0, 1, v9);
    }

    else
    {
      v16 = v19;
      v17 = *(v20 + 56);

      return v17(v16, 1, 1, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A39C86B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  swift_getKeyPath();
  sub_1A3A2F0A0();

  *(a2 + 16) = (*(a2 + 16) & 1) == 0;
  swift_getKeyPath();
  sub_1A3A2F090();
}

__n128 sub_1A39C87D4@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 280;
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1A39C88B4@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 312;
  swift_getKeyPath();
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

unint64_t sub_1A39C8A80()
{
  result = qword_1EB100590;
  if (!qword_1EB100590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100510);
    sub_1A39C8B38();
    sub_1A38A08F8(&qword_1ED998F68, &qword_1EB1005B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100590);
  }

  return result;
}

unint64_t sub_1A39C8B38()
{
  result = qword_1EB100598;
  if (!qword_1EB100598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100508);
    sub_1A38A08F8(&qword_1EB1005A0, &qword_1EB1005A8);
    sub_1A38A08F8(&qword_1ED998F60, &qword_1EB1005B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100598);
  }

  return result;
}

unint64_t sub_1A39C8C38()
{
  result = qword_1ED998F70;
  if (!qword_1ED998F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005C0);
    sub_1A39C8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F70);
  }

  return result;
}

unint64_t sub_1A39C8CBC()
{
  result = qword_1ED998F78;
  if (!qword_1ED998F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F78);
  }

  return result;
}

unint64_t sub_1A39C8D18()
{
  result = qword_1ED998F88;
  if (!qword_1ED998F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FFF50);
    sub_1A38A08F8(&qword_1ED998F80, &qword_1EB1005D0);
    sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F88);
  }

  return result;
}

id sub_1A39C8E6C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction] = 0;
  *&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount] = 0;
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v10 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v11 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1A3A321B0();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for LiquidLensLayer();
  v13 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

id sub_1A39C9124(double a1)
{
  v3 = type metadata accessor for LiquidLensLayer();
  v7.receiver = v1;
  v7.super_class = v3;
  result = objc_msgSendSuper2(&v7, sel_cornerRadius);
  if (v5 != a1)
  {
    v6.receiver = v1;
    v6.super_class = v3;
    objc_msgSendSuper2(&v6, sel_setCornerRadius_, a1);
    [*&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass] setCornerRadius_];
    [*&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop] setCornerRadius_];
    [*&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer] setCornerRadius_];
    return [*&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer] setCornerRadius_];
  }

  return result;
}

char *sub_1A39C91F0()
{
  *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction] = 0;
  *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount] = 0;
  v1 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E6979438]) &selRef_initWithIOSurface_];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E6979310]) &selRef_initWithIOSurface_];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x1E6979398]) &selRef_initWithIOSurface_];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x1E6979398]) &selRef_initWithIOSurface_];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v121.receiver = v0;
  v121.super_class = type metadata accessor for LiquidLensLayer();
  v10 = objc_msgSendSuper2(&v121, &selRef_initWithIOSurface_);
  v11 = *MEMORY[0x1E69796E8];
  v12 = v10;
  [v12 setCornerCurve_];
  [v12 setAllowsEdgeAntialiasing_];
  [v12 setShadowPathIsBounds_];
  [v12 setPunchoutShadow_];
  v13 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v13] setAllowsEdgeAntialiasing_];
  [*&v12[v13] setMasksToBounds_];
  [v12 addSublayer_];
  v14 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  v120 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  v116 = v11;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v14] setAllowsEdgeAntialiasing_];
  v15 = v13;
  v117 = v13;
  [*&v12[v13] &selRef:*&v12[v14] :?videoConfigurationStatusIndicator];
  v16 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  v17 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter];
  v18 = sub_1A3A31810();
  [v17 setValue:v18 forKey:*MEMORY[0x1E6979C10]];

  v19 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v19] setAllowsEdgeAntialiasing_];
  v20 = *&v12[v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A3A681C0;
  v22 = *&v12[v16];
  v118 = sub_1A39CAA64();
  *(v21 + 56) = v118;
  *(v21 + 32) = v22;
  v23 = v20;
  v24 = v22;
  v25 = sub_1A3A31990();

  [v23 setFilters_];

  [*&v12[v15] addSublayer_];
  v26 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  v27 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer];
  v28 = sub_1A3A31810();
  [v27 setName_];

  v29 = *&v12[v26];
  v30 = objc_allocWithZone(MEMORY[0x1E6979458]);
  v31 = v29;
  v32 = [v30 init];
  [v32 setHeight_];
  [v32 setCurvature_];
  [v31 setEffect_];

  [*&v12[v26] setEffectOffset_];
  v33 = *&v12[v26];
  v34 = *&v12[v120];
  v35 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v36 = v33;
  v37 = v34;
  v38 = [v35 init];
  [v38 setSourceLayer_];
  [v38 setHidesSourceLayer_];
  [v38 setMatchesPosition_];
  [v38 setMatchesTransform_];

  [v36 addSublayer_];
  [*&v12[v19] addSublayer_];
  v39 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  v40 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow];
  v41 = sub_1A3A31810();
  [v40 &selRef:v41 setPreferredContentSizeCategory:?];

  [*&v12[v39] setAllowsEdgeAntialiasing_];
  v42 = *&v12[v39];
  v43 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v44 = v42;
  v45 = [v43 initWithWhite:0.0 alpha:0.6588];
  v46 = [v45 CGColor];

  [v44 setBackgroundColor_];
  v47 = *MEMORY[0x1E6979928];
  v48 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v49 = sub_1A3A2F0D0();
  v50 = sub_1A3A31810();
  [v48 setValue:v49 forKey:v50];

  v51 = *&v12[v39];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A3A681C0;
  *(v52 + 56) = v118;
  *(v52 + 32) = v48;
  v53 = v51;
  v115 = v48;
  v54 = sub_1A3A31990();

  [v53 setFilters_];

  [*&v12[v117] addSublayer_];
  v55 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  v56 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow];
  v57 = sub_1A3A31810();
  [v56 setName_];

  [*&v12[v55] setAllowsEdgeAntialiasing_];
  v58 = *&v12[v55];
  v59 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v60 = v58;
  v61 = [v59 initWithWhite:1.0 alpha:0.6588];
  v62 = [v61 CGColor];

  [v60 setBackgroundColor_];
  v63 = *&v12[v55];
  v64 = *MEMORY[0x1E6979CF8];
  v114 = *MEMORY[0x1E6979CF8];
  v65 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v66 = v63;
  v67 = [v65 initWithType_];
  [v66 setCompositingFilter_];

  v68 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v69 = sub_1A3A2F0D0();
  v70 = sub_1A3A31810();
  [v68 setValue:v69 forKey:v70];

  v71 = *&v12[v55];
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1A3A681C0;
  *(v72 + 56) = v118;
  *(v72 + 32) = v68;
  v73 = v71;
  v119 = v68;
  v74 = sub_1A3A31990();

  [v73 setFilters_];

  [*&v12[v117] addSublayer_];
  v75 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  v76 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer];
  v77 = sub_1A3A31810();
  [v76 setName_];

  v78 = *&v12[v75];
  v79 = objc_allocWithZone(MEMORY[0x1E6979460]);
  v80 = v78;
  v81 = [v79 init];
  [v81 setAmount_];
  [v81 setAngle_];
  [v81 setCurvature_];
  [v81 setHeight_];
  [v81 setSpread_];
  [v80 setEffect_];

  [*&v12[v75] setCornerCurve_];
  v82 = *&v12[v75];
  v83 = *&v12[v120];
  v84 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v85 = v82;
  v86 = v83;
  v87 = [v84 init];
  [v87 setSourceLayer_];
  [v87 setHidesSourceLayer_];
  [v87 setMatchesPosition_];
  [v87 setMatchesTransform_];

  [v85 addSublayer_];
  v88 = *&v12[v75];
  v89 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v90 = v88;
  v91 = [v89 initWithType_];
  [v90 setCompositingFilter_];

  LODWORD(v92) = 1055622431;
  [*&v12[v75] setOpacity_];
  [*&v12[v117] addSublayer_];
  v93 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  v94 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer];
  v95 = sub_1A3A31810();
  [v94 setName_];

  v96 = *&v12[v93];
  v97 = objc_allocWithZone(MEMORY[0x1E6979460]);
  v98 = v96;
  v99 = [v97 init];
  [v99 setAmount_];
  [v99 setAngle_];
  [v99 setCurvature_];
  [v99 setHeight_];
  [v99 setSpread_];
  [v98 setEffect_];

  [*&v12[v93] setCornerCurve_];
  v100 = *&v12[v93];
  v101 = *&v12[v120];
  v102 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v103 = v100;
  v104 = v101;
  v105 = [v102 init];
  [v105 setSourceLayer_];
  [v105 setHidesSourceLayer_];
  [v105 setMatchesPosition_];
  [v105 setMatchesTransform_];

  [v103 addSublayer_];
  v106 = *&v12[v93];
  v107 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v108 = v106;
  v109 = [v107 initWithType_];
  [v108 setCompositingFilter_];

  LODWORD(v110) = 1055622431;
  [*&v12[v93] setOpacity_];
  [*&v12[v117] addSublayer_];
  v111 = *&v12[v117];
  sub_1A39CA044();

  v112 = *&v12[v117];
  sub_1A398FA24(v112);

  sub_1A39CA4A8();
  return v12;
}

void sub_1A39CA044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1A3A1E3AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA8);
  v2 = sub_1A3A31700();

  [v0 setActions_];
}

id sub_1A39CA1B8()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LiquidLensLayer();
  objc_msgSendSuper2(&v11, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass];
  [v0 bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [v1 setPosition_];
  [v0 bounds];
  [v1 setBounds_];
  v7 = *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow];
  [v0 bounds];
  [v7 setBounds_];
  [v0 bounds];
  [v7 setPosition_];
  v8 = *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow];
  [v0 bounds];
  [v8 setBounds_];
  [v0 bounds];
  v9 = CGRectGetMidX(v17);
  [v0 bounds];
  return [v8 setPosition_];
}

void sub_1A39CA4A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter);
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount;
  v3 = sub_1A3A2F0D0();
  [v1 setValue:v3 forKey:*MEMORY[0x1E6979990]];

  v4 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop);
  v5 = *(v0 + v2);
  *&v5 = v5;
  [v4 setOpacity_];
  v6 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow);
  v7 = *(v0 + v2) * 0.5;
  *&v7 = v7;
  [v6 setOpacity_];
  v8 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow);
  v9 = *(v0 + v2) * 0.095;
  *&v9 = v9;
  [v8 setOpacity_];
  [v4 setEnabled_];
  [v4 setHidden_];
  [v6 setHidden_];
  [v8 setHidden_];
  v10 = [*(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer) effect];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    [v11 setAmount_];
    [v12 setSpread_];
    [v12 setAngle_];
  }

  v15 = [*(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer) effect];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    [v13 setAmount_];
    [v14 setSpread_];
    [v14 setAngle_];
  }
}

id sub_1A39CA7A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiquidLensLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A39CA8BC()
{
  *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction) = 0;
  *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) = 0;
  v1 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  sub_1A3A32070();
  __break(1u);
}

unint64_t sub_1A39CAA64()
{
  result = qword_1ED997BA8;
  if (!qword_1ED997BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED997BA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListLayoutCenteredGroupFit(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for ListLayoutCenteredGroupFit(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1A39CABD4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A39CABF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1A39CAC28()
{
  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (v0[1])
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1A39CAC84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a1 == v2) & ~v3;
  v5 = v2 == 0;
  if (*a2)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v3 = 0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (a1[1] == 1)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A39CACD0()
{
  sub_1A3A31730();
  sub_1A3A30F80();
  return v1;
}

void *sub_1A39CAD20(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v7);
  v4 = v7;
  v5 = BYTE1(v7);
  v6 = *a1 != 0;
  if (v7)
  {
    v6 = 0;
  }

  if (BYTE1(v7) & (v6 | ~a1[1]))
  {
    v4 = *a1;
    v5 = a1[1];
  }

  *a1 = v4;
  a1[1] = v5 & 1;
  return result;
}

uint64_t sub_1A39CAD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v28 = a1[2];
  v3 = sub_1A3A31E70();
  v30 = a1[3];
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  sub_1A3A2FA90();
  v4 = sub_1A3A2FA90();
  WitnessTable = swift_getWitnessTable();
  v27 = a1[4];
  v45 = v3;
  v46 = v28;
  v47 = v4;
  v48 = WitnessTable;
  v49 = v27;
  v6 = sub_1A3A31220();
  v26 = a1[5];
  v43 = v26;
  v44 = MEMORY[0x1E697EBE0];
  v29 = MEMORY[0x1E697E858];
  v41 = swift_getWitnessTable();
  v42 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  v39 = swift_getWitnessTable();
  v40 = sub_1A39CC974();
  v38 = swift_getWitnessTable();
  v25 = v6;
  swift_getWitnessTable();
  v7 = sub_1A3A31140();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1006C0);
  v11 = sub_1A3A2FA90();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  *&v18 = v28;
  *(&v18 + 1) = v30;
  *&v19 = v27;
  *(&v19 + 1) = v26;
  v33 = v18;
  v34 = v19;
  v35 = v31;
  sub_1A3A31480();
  sub_1A3A31130();
  LOWORD(v45) = sub_1A39CBFF8() & 0x1FF;
  v20 = swift_getWitnessTable();
  sub_1A39CC9D8();
  sub_1A3A30940();
  (*(v8 + 8))(v10, v7);
  v21 = sub_1A38A08F8(&qword_1EB1006D0, &qword_1EB1006C0);
  v36 = v20;
  v37 = v21;
  v22 = swift_getWitnessTable();
  sub_1A3964BD0(v15, v11, v22);
  v23 = *(v12 + 8);
  v23(v15, v11);
  sub_1A3964BD0(v17, v11, v22);
  return (v23)(v17, v11);
}

uint64_t sub_1A39CB23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v42 = a6;
  v40 = sub_1A3A31E70();
  v34 = sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  v37 = sub_1A3A2FA90();
  v36 = sub_1A3A2FA90();
  WitnessTable = swift_getWitnessTable();
  *&v54 = v40;
  *(&v54 + 1) = a2;
  v55 = v36;
  v56 = WitnessTable;
  v57 = a4;
  v10 = sub_1A3A31220();
  v41 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - v13;
  v14 = *(a1 + 40);
  v54 = *(a1 + 8);
  v62 = v14;
  sub_1A3A31A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006E0);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED998FB8, &qword_1EB1006E0);
  sub_1A3A31780();
  v58 = v60;
  v59 = v61;
  v43 = a2;
  v44 = a3;
  v16 = v32;
  v15 = v33;
  v45 = v32;
  v46 = v33;
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v16;
  *(v17 + 40) = v15;
  v18 = *(a1 + 48);
  *(v17 + 80) = *(a1 + 32);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 48) = *a1;
  *(v17 + 64) = v19;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  v55 = v16;
  v56 = v15;
  v20 = type metadata accessor for ListLayoutCenteredGroupFitReporter();
  (*(*(v20 - 8) + 16))(&v54, a1, v20);
  v52 = v15;
  v53 = MEMORY[0x1E697EBE0];
  v21 = swift_getWitnessTable();
  v22 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  v50 = v21;
  v51 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1A39CC974();
  v48 = v23;
  v49 = v24;
  v30 = swift_getWitnessTable();
  v25 = v35;
  sub_1A3A31200();
  v47 = v30;
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_1A3964BD0(v25, v10, v26);
  v28 = *(v41 + 8);
  v28(v25, v10);
  sub_1A3964BD0(v27, v10, v26);
  return (v28)(v27, v10);
}

uint64_t sub_1A39CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v48 = a3;
  v59 = a7;
  v11 = *(a3 - 8);
  v47 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A3A2FA90();
  v56 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v45 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  v54 = sub_1A3A2FA90();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v45 - v20;
  v51 = sub_1A3A2FA90();
  v58 = *(v51 - 8);
  v21 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v45 - v23;
  (*(a2 + 48))(a1);
  sub_1A39DDAD0();
  (*(v16 + 8))(v18, a4);
  v24 = v48;
  (*(v11 + 16))(v14, a1, v48);
  v25 = (*(v11 + 80) + 128) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = a4;
  v27 = v53;
  *(v26 + 32) = v53;
  *(v26 + 40) = a6;
  v28 = *(a2 + 48);
  *(v26 + 80) = *(a2 + 32);
  *(v26 + 96) = v28;
  *(v26 + 112) = *(a2 + 64);
  v29 = *(a2 + 16);
  *(v26 + 48) = *a2;
  *(v26 + 64) = v29;
  (*(v11 + 32))(v26 + v25, v14, v24);
  v66[0] = v24;
  v66[1] = a4;
  v66[2] = v27;
  v66[3] = a6;
  v30 = type metadata accessor for ListLayoutCenteredGroupFitReporter();
  (*(*(v30 - 8) + 16))(v66, a2, v30);
  v64 = a6;
  v65 = MEMORY[0x1E697EBE0];
  v31 = v50;
  WitnessTable = swift_getWitnessTable();
  sub_1A389EEE0();
  v33 = v49;
  v34 = v46;
  sub_1A39CFD78(MEMORY[0x1E69E7DE0], sub_1A39CBCA8, 0, sub_1A39CCA90, v26, v31, MEMORY[0x1E69E7DE0], WitnessTable);

  (*(v56 + 8))(v34, v31);
  v35 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  v62 = WitnessTable;
  v63 = v35;
  v36 = v54;
  v37 = swift_getWitnessTable();
  v38 = v52;
  sub_1A3A30C20();
  (*(v57 + 8))(v33, v36);
  v39 = sub_1A39CC974();
  v60 = v37;
  v61 = v39;
  v40 = v51;
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_1A3964BD0(v38, v40, v41);
  v43 = *(v58 + 8);
  v43(v38, v40);
  sub_1A3964BD0(v42, v40, v41);
  return (v43)(v42, v40);
}

void sub_1A39CBCA8(CGFloat *a1@<X8>)
{
  v2 = sub_1A3A30210();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A30340();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetWidth(v15);
}

uint64_t sub_1A39CBDC4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
  v16[5] = v4;
  v17 = 0;
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v18 = v9;
  v19 = v8;
  v16[2] = v8;
  v16[3] = v9;
  v10 = sub_1A3A31730();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v16, &v19, v10);
  sub_1A3A2F5A0();
  v12 = sub_1A3A31DE0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v16, &v18, v12);
  sub_1A3A30FC0();
  sub_1A3A30F90();
  sub_1A3A31740();
  v16[0] = v8;
  v16[1] = v9;
  v15 = v16[4];
  sub_1A3A30FA0();
  (*(v11 + 8))(&v19, v10);
  return (*(v13 + 8))(&v18, v12);
}

uint64_t sub_1A39CBFF8()
{
  v15 = *(v0 + 64);
  sub_1A3A31730();
  sub_1A3A30FC0();
  sub_1A3A30F90();
  sub_1A3A31720();
  swift_getWitnessTable();
  sub_1A39CCA2C();
  sub_1A3A31970();

  if (v14)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(v6, 1);
    v7 = v6 + 1;
    if (!v5)
    {
      v8 = *(v0 + 24);
      v9 = *(v0 + 32) * 0.5;
      v10 = v13 * v7 + v9;
      sub_1A3A30F90();
      sub_1A3A31950();

      v2 = v10 > v8;
      if (v10 > v8 && v9 + *&v15 > v8)
      {
        if (*v0 == *(v0 + 8))
        {
          v2 = sub_1A3A2F900();
          v12 = 0;
        }

        else
        {
          if (*v0 == *(v0 + 16))
          {
            v2 = sub_1A3A2F8E0();
          }

          else
          {
            v2 = sub_1A3A2F8D0();
          }

          v12 = 0;
        }

        return v2 | (v12 << 8);
      }

LABEL_9:
      v12 = 1;
      return v2 | (v12 << 8);
    }
  }

  __break(1u);
  return result;
}

double sub_1A39CC20C@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

uint64_t sub_1A39CC220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11)
{
  v20 = MEMORY[0x1E69E7DE0];
  swift_getTupleTypeMetadata2();
  v21 = sub_1A3A319D0();
  sub_1A39CC538(v21, a7, v20, a11);

  result = sub_1A39CACD0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a9;
  *(a8 + 32) = a10;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = result;
  *(a8 + 72) = v23;
  return result;
}

unint64_t sub_1A39CC354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A31750();

  return sub_1A39CC3B0(a1, v6, a2, a3);
}

unint64_t sub_1A39CC3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1A3A31790();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1A39CC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A3A31A10())
  {
    sub_1A3A320F0();
    v13 = sub_1A3A320E0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  sub_1A3A2EA60();
  result = sub_1A3A31A10();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A3A319F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A3A31F30();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A39CC354(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1A39CC824()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1A39CC87C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A39CC8C4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1A39CC974()
{
  result = qword_1EB1006B8;
  if (!qword_1EB1006B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006B8);
  }

  return result;
}

unint64_t sub_1A39CC9D8()
{
  result = qword_1EB1006C8;
  if (!qword_1EB1006C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006C8);
  }

  return result;
}

unint64_t sub_1A39CCA2C()
{
  result = qword_1EB1006D8;
  if (!qword_1EB1006D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006D8);
  }

  return result;
}

uint64_t sub_1A39CCAD4@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v3 = v11;
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = *(v1 + 32);
  *(v4 + 57) = *(v1 + 41);
  v11 = v3;
  v12 = sub_1A39CDEC4;
  v13 = v4;
  v10 = *(v1 + 8);
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = *(v1 + 32);
  *(v6 + 57) = *(v1 + 41);
  sub_1A393A2BC(v1, v9);
  sub_1A393A2BC(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100700);
  sub_1A38A08F8(&qword_1ED998FE8, &qword_1EB100700);
  sub_1A3A30CA0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100708);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A39CCC9C@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A39CCD6C(a3, *a1);
  v5 = *a2;
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100710) + 36));
  v7 = *(sub_1A3A2FBC0() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1A3A30000();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD120);
  v6[*(result + 36)] = 0;
  return result;
}

uint64_t sub_1A39CCD6C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v54 = a1;
  v5 = sub_1A3A30D30();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A3A2FBB0();
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100718);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v44 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100720);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v44 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100728);
  v46 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v44 - v12;
  v14 = sub_1A3A2FEE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v3 + 56);
  v18 = *(v3 + 48);
  v57 = v18;
  if (v58 == 1)
  {
    v19 = v18;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v57, &qword_1EB0FC680);
    (*(v15 + 8))(v17, v14);
    v19 = *v55;
  }

  v21 = (1.0 - a2) * *(v3 + 32);
  v22 = 1.0 / v19;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v23 = v22 + v21;
  v24 = off_1ED997FE0;
  swift_getKeyPath();
  *&v55[0] = v24;
  sub_1A39126DC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v25 = v24[2];
  swift_getKeyPath();
  *&v55[0] = v25;
  sub_1A39126DC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v26 = sub_1A394FC58(5u);

  if (v26)
  {
    type metadata accessor for ModeLoupeLayer();
    v27 = swift_allocObject();
    v28 = *(v3 + 16);
    *(v27 + 16) = *v3;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(v3 + 32);
    *(v27 + 57) = *(v3 + 41);
    *(v27 + 80) = v23;
    *(v27 + 88) = a2;
    sub_1A393A2BC(v3, v55);
    sub_1A3A2F770();
    v29 = v46;
    v30 = v52;
    (*(v46 + 16))(v51, v13, v52);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1ED998FF0, &qword_1EB100728);
    sub_1A38A08F8(&qword_1ED998FF8, &qword_1EB100718);
    sub_1A3A301F0();
    return (*(v29 + 8))(v13, v30);
  }

  else
  {
    v32 = *v3;
    v33 = *(sub_1A3A2FBC0() + 20);
    v34 = *MEMORY[0x1E697F468];
    v35 = sub_1A3A30000();
    (*(*(v35 - 8) + 104))(&v8[v33], v34, v35);
    *v8 = v32;
    *(v8 + 1) = v32;
    *&v8[*(v45 + 20)] = v23;
    (*(v48 + 104))(v47, *MEMORY[0x1E69814D8], v49);
    v36 = sub_1A3A30E50();
    sub_1A3A2F680();
    sub_1A39CDED4(v8, v10);
    v37 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100730) + 36)];
    v38 = v55[1];
    *v37 = v55[0];
    *(v37 + 1) = v38;
    *(v37 + 4) = v56;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100738);
    *&v10[*(v39 + 52)] = v36;
    *&v10[*(v39 + 56)] = 256;
    v40 = sub_1A3A31480();
    v42 = v41;
    sub_1A39CDF38(v8);
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100740) + 36)];
    *v43 = v40;
    v43[1] = v42;
    sub_1A39CDF94(v10, v51);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1ED998FF0, &qword_1EB100728);
    sub_1A38A08F8(&qword_1ED998FF8, &qword_1EB100718);
    sub_1A3A301F0();
    return sub_1A388F740(v10, &qword_1EB100718);
  }
}

uint64_t sub_1A39CD5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v4 = 0.0;
  if (*(a3 + 8))
  {
    v4 = 1.0;
  }

  sub_1A39CF48C(v4);
}

void sub_1A39CD620(char *a1, uint64_t a2, double a3, double a4)
{
  [a1 setCornerRadius_];
  v8 = *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset];
  *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset] = a3;
  if (v8 != a3)
  {
    [a1 setNeedsLayout];
  }

  v9 = *(a2 + 40) * a4;
  v10 = *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer];
  v11 = *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction);
  *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction) = v9;
  if (v9 != v11)
  {
    v12 = *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer);
    v13 = sub_1A3A2F0D0();
    v14 = sub_1A3A31810();
    [v12 setValue:v13 forKeyPath:v14];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  v15 = sub_1A3A30F90();
  MEMORY[0x1EEE9AC00](v15);
  sub_1A389EEE0();
  sub_1A38E9D44();
  swift_getKeyPath();
  sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50);
  sub_1A3A2F080();

  v16 = *(v19 + 40);

  if (v16 != 1 || (v17 = 0.0, (*(a2 + 8) & 1) != 0))
  {
    v17 = 0.01;
    if (a4 > 0.01)
    {
      v17 = a4;
    }
  }

  v18 = fmin(v17, 1.0);
  if (*(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) != v18)
  {
    *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) = v18;
    sub_1A39CA4A8();
  }
}

char *sub_1A39CD998()
{
  *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset] = 0;
  v1 = [objc_allocWithZone(type metadata accessor for LiquidLensLayer()) init];
  *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer] = v1;
  [v1 setCornerCurve_];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ModeLoupeLayer();
  v2 = objc_msgSendSuper2(&v10, sel_init);
  [v2 setAllowsEdgeAntialiasing_];
  v3 = OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer;
  [v2 addSublayer_];
  v4 = *&v2[v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  v6 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v7 = v4;
  *(inited + 48) = [v6 init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1A3A1E3AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA8);
  v8 = sub_1A3A31700();

  [v7 setActions_];

  return v2;
}

id sub_1A39CDBC0()
{
  [v0 bounds];
  v19 = CGRectInset(v18, *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset], *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset]);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v4 = *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer];
  [v4 setBounds_];
  [v0 bounds];
  v5 = v20.origin.x;
  v6 = v20.origin.y;
  v7 = v20.size.width;
  v8 = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = v7;
  v21.size.height = v8;
  [v4 setPosition_];
  [v0 cornerRadius];
  v11 = v10;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v12 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = CGRectGetHeight(v23);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  v14 = v13 * 0.5;
  if (v14 >= v11)
  {
    v14 = v11;
  }

  return [v4 setCornerRadius_];
}

id sub_1A39CDE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModeLoupeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A39CDED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A2FBB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A39CDF38(uint64_t a1)
{
  v2 = sub_1A3A2FBB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39CDF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_13()
{

  sub_1A3670FF4(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

unint64_t sub_1A39CE068()
{
  result = qword_1ED999008;
  if (!qword_1ED999008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100700);
    sub_1A38A08F8(&qword_1ED998FE8, &qword_1EB100700);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999008);
  }

  return result;
}

uint64_t type metadata accessor for ModeLoupeBackground()
{
  result = qword_1EB100750;
  if (!qword_1EB100750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39CE1EC()
{
  sub_1A39CE288();
  if (v0 <= 0x3F)
  {
    sub_1A39CE2E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A39CE288()
{
  if (!qword_1EB100760)
  {
    sub_1A3A31430();
    v0 = sub_1A3A31DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB100760);
    }
  }
}

void sub_1A39CE2E0()
{
  if (!qword_1ED999010[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA50);
    v0 = sub_1A3A30FC0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED999010);
    }
  }
}

uint64_t sub_1A39CE360()
{
  v1 = type metadata accessor for ModeLoupeBackground();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v0 + *(v2 + 36));
  v7 = *v5;
  v6 = v5[1];
  v13 = v7;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v8 = v16;
  sub_1A39CF8E4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModeLoupeBackground);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A39CEA7C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v13 = v8;
  v14 = sub_1A39CEAE0;
  v15 = v10;
  LOBYTE(v16) = *(v0 + *(v2 + 32));
  sub_1A39CF8E4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModeLoupeBackground);
  v11 = swift_allocObject();
  sub_1A39CEA7C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100768);
  sub_1A38A08F8(&qword_1EB100770, &qword_1EB100768);
  sub_1A3A30CA0();
}

uint64_t sub_1A39CE5A4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v30 = a1;
  v31 = sub_1A3A315D0();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A3A2FBB0();
  v5 = MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100748);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1A3A31430();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A3A30DB0();
  v16 = type metadata accessor for ModeLoupeBackground();
  sub_1A388F6D8(v2 + *(v16 + 20), v11, &qword_1EB100748);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    v32 = a2;
    sub_1A39CF890();
    sub_1A3A31420();
    if (v17(v11, 1, v12) != 1)
    {
      sub_1A388F740(v11, &qword_1EB100748);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v18 = *v2;
  v19 = *(sub_1A3A2FBC0() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A3A30000();
  (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
  *v8 = v18;
  *(v8 + 1) = v18;
  *&v8[*(v28 + 20)] = (1.0 - a2) * *(v2 + *(v16 + 32));
  v32 = *&v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A3A681C0;
  sub_1A39CF8E4(v8, v26, MEMORY[0x1E697EAB8]);
  sub_1A39CF94C();
  *(v22 + 32) = sub_1A3A31290();
  v23 = v27;
  sub_1A3A315C0();
  sub_1A3A30A10();
  (*(v29 + 8))(v23, v31);
  sub_1A39CDF38(v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A39CE9EC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for ModeLoupeBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  sub_1A39CF48C(v3);
}

uint64_t sub_1A39CEA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeLoupeBackground();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for ModeLoupeBackground();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 20);
  v4 = sub_1A3A31430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1A39CEC98(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for ModeLoupeBackground();

  return sub_1A39CE9EC(a1, a2);
}

void *sub_1A39CED18()
{
  v0 = sub_1A3A30D30();
  v17 = *(v0 - 8);
  v18 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A3A31400();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE48);
  sub_1A3A313E0();
  *(swift_allocObject() + 16) = xmmword_1A3A791B0;
  v6 = sub_1A3A31850();
  v8 = v7;
  CEKInterpolateClamped();
  v20 = v6;
  v21 = v8;
  v22 = v9;
  sub_1A39CFA64();
  sub_1A3A313B0();

  v20 = sub_1A3A31850();
  v21 = v10;
  v22 = 0x3FF4CCCCCCCCCCCDLL;
  v11 = v5;
  sub_1A3A313B0();

  CEKInterpolateClamped();
  sub_1A3A313D0();
  (*(v17 + 104))(v2, *MEMORY[0x1E69814D8], v18);
  sub_1A3A30E30();
  sub_1A3A313F0();

  v12 = sub_1A39561A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1A39561A4(v13 > 1, v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = v12;
  (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v11, v19);
  return v15;
}

uint64_t sub_1A39CF0BC()
{
  v1 = *v0;
  sub_1A3A322C0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1A58F8170](*&v2);
  return sub_1A3A32300();
}

uint64_t sub_1A39CF118()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A58F8170](*&v1);
}

uint64_t sub_1A39CF154()
{
  v1 = *v0;
  sub_1A3A322C0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1A58F8170](*&v2);
  return sub_1A3A32300();
}

id sub_1A39CF1C0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v1 = sub_1A3A31810();
  v2 = [v0 initWithType_];

  v3 = sub_1A3A2F0D0();
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979990]];

  return v2;
}

BOOL sub_1A39CF26C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1A3A321C0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1A39CF2CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A3A2EA50();
  v4 = sub_1A39FD05C(v3, a1);

  if (v4)
  {
  }

  else if (*(v1 + 40))
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1A389EEE0();
    sub_1A38E9D44();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50);
    sub_1A3A2F070();
  }

  else
  {

    *(v1 + 40) = 0;
  }

  return result;
}

uint64_t sub_1A39CF48C(double a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48);
  v3 = *(v25 - 8);
  v4 = MEMORY[0x1EEE9AC00](v25);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21 = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A3A2EA50();
    result = sub_1A3956BB0(0, v9, 0);
    v12 = 0;
    v10 = v26;
    v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = v8 + v23;
    while (v12 < *(v8 + 16))
    {
      v13 = v3;
      v14 = *(v3 + 72);
      v15 = v24;
      sub_1A388F6D8(v22 + v14 * v12, v24, &qword_1EB0FDA48);
      v16 = sub_1A3A310F0();
      (*(*(v16 - 8) + 16))(v7, v15, v16);
      *&v7[*(v25 + 44)] = a1;
      sub_1A388F740(v15, &qword_1EB0FDA48);
      v26 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A3956BB0(v17 > 1, v18 + 1, 1);
        v10 = v26;
      }

      ++v12;
      *(v10 + 16) = v18 + 1;
      result = sub_1A39CF810(v7, v10 + v23 + v18 * v14);
      v3 = v13;
      if (v9 == v12)
      {

        v1 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    result = sub_1A39CF2CC(v10);
    if (*(v1 + 40))
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v20 - 4) = MEMORY[0x1E69E7DE0];
      *(&v20 - 3) = sub_1A389EEE0();
      *(&v20 - 2) = sub_1A38E9D44();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v20 - 2) = v1;
      *(&v20 - 8) = 0;
      v26 = v1;
      sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50);
      sub_1A3A2F070();
    }

    else
    {
      *(v1 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_1A39CF810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39CF890()
{
  result = qword_1EB100778;
  if (!qword_1EB100778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100778);
  }

  return result;
}

uint64_t sub_1A39CF8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A39CF94C()
{
  result = qword_1EB100780;
  if (!qword_1EB100780)
  {
    sub_1A3A2FBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100780);
  }

  return result;
}

unint64_t sub_1A39CF9B8()
{
  result = qword_1EB100788;
  if (!qword_1EB100788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100788);
  }

  return result;
}

unint64_t sub_1A39CFA10()
{
  result = qword_1EB100790;
  if (!qword_1EB100790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100790);
  }

  return result;
}

unint64_t sub_1A39CFA64()
{
  result = qword_1EB100798;
  if (!qword_1EB100798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100798);
  }

  return result;
}

uint64_t sub_1A39CFAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A39CFB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A39CFB54()
{
  result = qword_1EB1007A0;
  if (!qword_1EB1007A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1007A0);
  }

  return result;
}

uint64_t sub_1A39CFBC0(uint64_t a1)
{
  v5 = MEMORY[0x1E69E6370];
  v6 = MEMORY[0x1E69E6388];
  swift_getKeyPath();
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
  sub_1A3A2F080();

  v2 = [*(a1 + 24) invalidate];
  if (*(a1 + 24))
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  sub_1A38E01D4(*(a1 + 16), 0.0);
  return sub_1A38E0410(2);
}

uint64_t sub_1A39CFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v15[0] = sub_1A3A30380();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_1A3A30390();
  MEMORY[0x1A58F6B00](v15, a6, v13, a8);
}

uint64_t sub_1A39CFE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v360 = a2;
  v374 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v374);
  v359 = &v275 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100800);
  MEMORY[0x1EEE9AC00](v373);
  v358 = &v275 - v4;
  v357 = sub_1A3A311F0();
  v5 = MEMORY[0x1EEE9AC00](v357);
  v356 = &v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = *(a1 + 16);
  v378 = *(v381 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v376 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = *(a1 - 8);
  v383 = *(v387 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v375 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v389 = *(a1 + 24);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808);
  sub_1A3A2FA90();
  v382 = *(a1 + 32);
  v10 = sub_1A3A2FA90();
  v11 = *(a1 + 40);
  v388 = *(a1 + 48);
  v391 = a1;
  v439 = v388;
  v440 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v438 = MEMORY[0x1E697E040];
  v12 = swift_getWitnessTable();
  v13 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808);
  v435 = v12;
  v436 = v13;
  v14 = swift_getWitnessTable();
  v385 = *(a1 + 56);
  v433 = v14;
  v434 = v385;
  v15 = swift_getWitnessTable();
  v16 = v381;
  v424 = v381;
  *&v425[0] = v10;
  *(&v425[0] + 1) = v11;
  v17 = v11;
  v377 = v11;
  *&v425[1] = v15;
  type metadata accessor for ModeWheelListView();
  sub_1A3A2FA90();
  v18 = sub_1A3A2FA90();
  v431 = swift_getWitnessTable();
  v432 = MEMORY[0x1E697E270];
  v429 = swift_getWitnessTable();
  v430 = MEMORY[0x1E697FB08];
  *&v278 = v18;
  v19 = swift_getWitnessTable();
  v279 = v19;
  v20 = sub_1A389EEE0();
  v21 = sub_1A38E9D44();
  v424 = v18;
  *&v425[0] = MEMORY[0x1E69E7DE0];
  *(&v425[0] + 1) = MEMORY[0x1E69E7DE0];
  *&v425[1] = v19;
  *(&v425[1] + 1) = v20;
  v426 = v21;
  v427 = v20;
  v428 = v21;
  v305 = type metadata accessor for DoubleSpringAnimation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100818);
  v22 = sub_1A3A2FA90();
  v361 = v22;
  v23 = swift_getWitnessTable();
  v306 = v23;
  v24 = sub_1A38A08F8(&qword_1EB100820, &qword_1EB100818);
  v422 = v23;
  v423 = v24;
  v364 = swift_getWitnessTable();
  v380 = v17[1];
  v424 = v22;
  *&v425[0] = v16;
  v25 = v16;
  *(&v425[0] + 1) = v364;
  *&v425[1] = v380;
  *&v390 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v288 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v284 = &v275 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  v362 = sub_1A3A2FA90();
  v289 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v281 = &v275 - v27;
  *&v363 = sub_1A3A2FA90();
  v292 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v291 = &v275 - v28;
  v29 = sub_1A3A2FA90();
  v296 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v293 = &v275 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100828);
  v31 = sub_1A3A2FA90();
  v297 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v294 = &v275 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC470);
  v33 = sub_1A3A2FA90();
  v300 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v295 = &v275 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100830);
  v35 = sub_1A3A2FA90();
  v308 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v304 = &v275 - v36;
  v37 = sub_1A3A2FA90();
  v314 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v312 = &v275 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100838);
  v39 = sub_1A3A2FA90();
  v325 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v367 = &v275 - v40;
  v424 = v361;
  *&v425[0] = v25;
  *(&v425[0] + 1) = v364;
  *&v425[1] = v380;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v276 = OpaqueTypeConformance2;
  v42 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  v420 = OpaqueTypeConformance2;
  v421 = v42;
  v277 = swift_getWitnessTable();
  v418 = v277;
  v419 = MEMORY[0x1E697EBF8];
  v280 = swift_getWitnessTable();
  v416 = v280;
  v417 = MEMORY[0x1E697E5D8];
  v298 = v29;
  v43 = swift_getWitnessTable();
  v44 = sub_1A38A08F8(&qword_1ED9990A8, &qword_1EB100828);
  v282 = v43;
  v414 = v43;
  v415 = v44;
  v299 = v31;
  v45 = swift_getWitnessTable();
  v46 = sub_1A38A08F8(&qword_1ED996638, &qword_1EB0FC470);
  v283 = v45;
  v412 = v45;
  v413 = v46;
  v301 = v33;
  v47 = swift_getWitnessTable();
  v48 = sub_1A38A08F8(&qword_1ED9990B0, &qword_1EB100830);
  v285 = v47;
  v410 = v47;
  v411 = v48;
  v309 = v35;
  v287 = swift_getWitnessTable();
  v408 = v287;
  v409 = v48;
  v315 = v37;
  v49 = swift_getWitnessTable();
  v50 = sub_1A38A08F8(&qword_1ED9990B8, &qword_1EB100838);
  v290 = v49;
  v406 = v49;
  v407 = v50;
  v51 = swift_getWitnessTable();
  v52 = sub_1A39DBDD4();
  v424 = v39;
  v53 = v373;
  *&v425[0] = v373;
  *(&v425[0] + 1) = v51;
  *&v425[1] = v52;
  v54 = swift_getOpaqueTypeMetadata2();
  v316 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v365 = &v275 - v55;
  v327 = v39;
  v424 = v39;
  *&v425[0] = v53;
  v302 = v52;
  v303 = v51;
  *(&v425[0] + 1) = v51;
  *&v425[1] = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = MEMORY[0x1E69E6370];
  v424 = v54;
  *&v425[0] = MEMORY[0x1E69E6370];
  v58 = MEMORY[0x1E69E6388];
  *(&v425[0] + 1) = v56;
  *&v425[1] = MEMORY[0x1E69E6388];
  v59 = swift_getOpaqueTypeMetadata2();
  v321 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v366 = &v275 - v60;
  v317 = v54;
  v424 = v54;
  *&v425[0] = v57;
  v310 = v56;
  *(&v425[0] + 1) = v56;
  *&v425[1] = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_1A39DA768(&qword_1ED9990C0, type metadata accessor for ModeWheelGestureState);
  v424 = v59;
  v63 = v374;
  *&v425[0] = v374;
  *(&v425[0] + 1) = v61;
  *&v425[1] = v62;
  v64 = swift_getOpaqueTypeMetadata2();
  v319 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v318 = &v275 - v65;
  type metadata accessor for ScenePhaseModifier(255);
  v320 = v64;
  v66 = sub_1A3A2FA90();
  v333 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v368 = &v275 - v67;
  v322 = v59;
  v424 = v59;
  *&v425[0] = v63;
  v313 = v61;
  *(&v425[0] + 1) = v61;
  v311 = v62;
  *&v425[1] = v62;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1A39DA768(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier);
  v307 = v68;
  v404 = v68;
  v405 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_1A3955A7C();
  v424 = v66;
  *&v425[0] = &type metadata for CameraUISettings.ModeWheelPeekBehavior;
  *(&v425[0] + 1) = v70;
  *&v425[1] = v71;
  v72 = swift_getOpaqueTypeMetadata2();
  v330 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v329 = &v275 - v73;
  v334 = v66;
  v424 = v66;
  *&v425[0] = &type metadata for CameraUISettings.ModeWheelPeekBehavior;
  v323 = v71;
  v324 = v70;
  *(&v425[0] + 1) = v70;
  *&v425[1] = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x1E69E6530];
  v424 = v72;
  *&v425[0] = MEMORY[0x1E69E6530];
  v76 = MEMORY[0x1E69E6550];
  *(&v425[0] + 1) = v74;
  *&v425[1] = MEMORY[0x1E69E6550];
  v77 = swift_getOpaqueTypeMetadata2();
  v335 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v332 = &v275 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100858);
  v331 = v72;
  v424 = v72;
  *&v425[0] = v75;
  v326 = v74;
  *(&v425[0] + 1) = v74;
  *&v425[1] = v76;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_1A39DBE84();
  v424 = v77;
  *&v425[0] = v79;
  *(&v425[0] + 1) = v80;
  *&v425[1] = v81;
  v82 = swift_getOpaqueTypeMetadata2();
  v338 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v369 = &v275 - v83;
  v336 = v77;
  v424 = v77;
  *&v425[0] = v79;
  v328 = v80;
  *(&v425[0] + 1) = v80;
  *&v425[1] = v81;
  v84 = swift_getOpaqueTypeConformance2();
  v341 = v82;
  v424 = v82;
  v372 = v79;
  *&v425[0] = v79;
  v85 = v387;
  v337 = v84;
  *(&v425[0] + 1) = v84;
  v371 = v81;
  *&v425[1] = v81;
  v86 = swift_getOpaqueTypeMetadata2();
  v339 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v370 = &v275 - v87;
  v88 = v381;
  v89 = sub_1A3A30010();
  v340 = v86;
  v90 = sub_1A3A2FA90();
  v344 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v343 = &v275 - v91;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100870);
  v345 = v90;
  v92 = sub_1A3A2FA90();
  v347 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v346 = &v275 - v93;
  v348 = v94;
  v342 = v89;
  v95 = sub_1A3A2FA90();
  v352 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v349 = &v275 - v96;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8);
  v353 = v95;
  v355 = sub_1A3A2FA90();
  v354 = *(v355 - 8);
  v97 = MEMORY[0x1EEE9AC00](v355);
  v350 = &v275 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v351 = &v275 - v99;
  v100 = v391;
  v101 = v392;
  v102 = (v392 + v391[40]);
  v104 = *v102;
  v103 = v102[1];
  v424 = v104;
  *&v425[0] = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v105 = v401;
  v106 = (v101 + v100[41]);
  v108 = *v106;
  v107 = v106[1];
  v424 = v108;
  *&v425[0] = v107;
  sub_1A3A30F90();
  *&v275 = v401;
  v109 = v85;
  v110 = *(v85 + 16);
  v386 = v85 + 16;
  v384 = v110;
  v111 = v375;
  v110(v375, v101, v100);
  v112 = *(v109 + 80);
  v113 = (v112 + 64) & ~v112;
  v383 += v113;
  v379 = v113;
  v114 = swift_allocObject();
  *&v115 = v88;
  *(&v115 + 1) = v389;
  *&v116 = v382;
  *(&v116 + 1) = v377;
  v389 = v116;
  v390 = v115;
  *(v114 + 16) = v115;
  *(v114 + 32) = v116;
  v117 = v388;
  v118 = v385;
  *(v114 + 48) = v388;
  *(v114 + 56) = v118;
  v377 = *(v109 + 32);
  v387 = v109 + 32;
  v377(v114 + v113, v111, v100);
  v119 = swift_allocObject();
  v120 = v389;
  *(v119 + 16) = v390;
  *(v119 + 32) = v120;
  *(v119 + 48) = v117;
  *(v119 + 56) = v118;
  *(v119 + 64) = sub_1A39DBF34;
  *(v119 + 72) = v114;
  swift_checkMetadataState();
  v382 = CAMPhotoFormatMake(v105, v275);
  v401 = v382;
  *&v402[0] = v121;
  *(&v402[0] + 1) = v122;
  *&v402[1] = v123;
  v384(v111, v392, v100);
  v124 = swift_allocObject();
  v125 = v389;
  *(v124 + 16) = v390;
  *(v124 + 32) = v125;
  *(v124 + 48) = v117;
  *(v124 + 56) = v118;
  v377(v124 + v379, v111, v100);
  swift_checkMetadataState();
  sub_1A39CC9D8();
  sub_1A39DC598();
  sub_1A3A30AA0();

  v279 = v424;
  v401 = v424;
  v278 = v425[0];
  v402[0] = v425[0];
  v275 = v425[1];
  v402[1] = v425[1];
  v403 = v426;
  v126 = v392;
  v127 = v392 + v100[24];
  v128 = v381;
  v129 = sub_1A3A311E0();
  v130 = v376;
  v305 = v129;
  v306 = v127;
  MEMORY[0x1A58F7010]();
  v131 = v111;
  v132 = v111;
  v133 = v126;
  v384(v132, v126, v100);
  v382 = v112;
  v134 = swift_allocObject();
  v135 = v389;
  *(v134 + 16) = v390;
  *(v134 + 32) = v135;
  v136 = v385;
  *(v134 + 48) = v388;
  *(v134 + 56) = v136;
  v377(v134 + v379, v131, v100);
  swift_checkMetadataState();
  v137 = v284;
  sub_1A3A30CA0();

  v138 = *(v378 + 8);
  v139 = v130;
  v140 = v281;
  v378 += 8;
  v364 = v138;
  v138(v139, v128);

  v141 = (v133 + v100[36]);
  v142 = *v141;
  v143 = v141[1];
  v401 = v142;
  *&v402[0] = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30FB0();
  v144 = OpaqueTypeMetadata2;
  sub_1A39D4AC4(v424, *&v425[0], OpaqueTypeMetadata2, v276, *(v425 + 1));

  (*(v288 + 8))(v137, v144);
  if (!sub_1A39D4BBC(v100))
  {
    sub_1A39D4EFC(v391);
  }

  v145 = *(v392 + v391[19]);
  v146 = v291;
  v147 = v362;
  sub_1A391A5DC();
  (*(v289 + 8))(v140, v147);
  v148 = v385;
  if (v145)
  {
    sub_1A3A30660();
  }

  else
  {
    sub_1A3A30600();
  }

  v149 = sub_1A39D4BBC(v391);
  LODWORD(v361) = v145;
  if ((!v149 || !sub_1A39D4F90(v391)) && qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v150 = v293;
  v151 = v363;
  sub_1A3A30C70();
  v152 = (*(v292 + 8))(v146, v151);
  MEMORY[0x1EEE9AC00](v152);
  v153 = v389;
  *(&v275 - 4) = v390;
  *(&v275 - 3) = v153;
  *(&v275 - 4) = v388;
  *(&v275 - 3) = v148;
  *(&v275 - 2) = v392;
  sub_1A3A31480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100880);
  sub_1A39DC6C8();
  v154 = v294;
  v155 = v298;
  sub_1A3A30C60();
  (*(v296 + 8))(v150, v155);
  v156 = v391;
  v424 = sub_1A39D5220();
  v157 = sub_1A38BE458();
  v158 = MEMORY[0x1E6981A90];
  v159 = v295;
  v160 = v299;
  sub_1A3A30CE0();

  (*(v297 + 8))(v154, v160);
  sub_1A39D5378(v156);
  v424 = sub_1A39D5220();
  v161 = v304;
  v162 = v301;
  sub_1A391A6B8(v361, &v424, v301, v158, v285, v157, v304);

  (*(v300 + 8))(v159, v162);
  v163 = sub_1A39D53F4(v156);
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v164 = v391;
  v165 = v392;
  v424 = sub_1A39D5220();
  v166 = v163 & 0x1FF;
  v167 = v312;
  v168 = v309;
  sub_1A391AE40(v166, &v424, v309, v287, v157, v312);

  (*(v308 + 8))(v161, v168);
  v169 = *MEMORY[0x1E697F468];
  v170 = sub_1A3A30000();
  v171 = v356;
  (*(*(v170 - 8) + 104))(v356, v169, v170);
  sub_1A39DA768(qword_1ED9969F8, MEMORY[0x1E6981998]);
  v172 = v315;
  sub_1A3A309B0();
  sub_1A39DC884(v171, MEMORY[0x1E6981998]);
  (*(v314 + 8))(v167, v172);
  if (*(v165 + v164[18]) == 1)
  {
    v173 = v391;
    v174 = v392;
    v175 = (v392 + v391[20]);
    v176 = *v175;
    v177 = v175[1];
    v178 = *(v392 + v391[21]);
    type metadata accessor for ModeWheelGesture(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
    v179 = v358;
    sub_1A3A311B0();
    *v179 = v361;
    *(v179 + 1) = v176;
    *(v179 + 2) = v177;
    v179[24] = v178;
    v180 = v174 + v173[17];
    v181 = *(v180 + 8);
    LOBYTE(v424) = *v180;
    *&v425[0] = v181;
    *(v425 + 8) = *(v180 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100888);
    sub_1A3A2F6F0();
    LOBYTE(v174) = v401;
    v182 = *&v402[0];
    v363 = *(v402 + 8);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100850);
    v184 = &v179[*(v183 + 44)];
    *v184 = v174;
    *(v184 + 1) = v182;
    v185 = v179;
    *(v184 + 1) = v363;
    v186 = &v179[*(v183 + 48)];
    *v186 = sub_1A39D54F4;
    *(v186 + 1) = 0;
    (*(*(v183 - 8) + 56))(v179, 0, 1, v183);
  }

  else
  {
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100850);
    v185 = v358;
    (*(*(v187 - 8) + 56))(v358, 1, 1, v187);
  }

  sub_1A3A2F660();
  v188 = v327;
  v189 = v367;
  sub_1A3A30AE0();
  sub_1A388F740(v185, &qword_1EB100800);
  (*(v325 + 8))(v189, v188);
  v190 = v391;
  v191 = v392;
  v192 = v392 + v391[17];
  v193 = *(v192 + 8);
  LOBYTE(v424) = *v192;
  *&v425[0] = v193;
  *(v425 + 8) = *(v192 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100888);
  sub_1A3A2F6E0();
  LOBYTE(v424) = v401;
  v194 = v375;
  v384(v375, v191, v190);
  v195 = swift_allocObject();
  v196 = v389;
  *(v195 + 16) = v390;
  *(v195 + 32) = v196;
  v197 = v385;
  *(v195 + 48) = v388;
  *(v195 + 56) = v197;
  v198 = v377;
  v377(v195 + v379, v194, v190);
  v199 = v317;
  v200 = v365;
  sub_1A3A30CA0();

  (*(v316 + 8))(v200, v199);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  v202 = v359;
  MEMORY[0x1A58F7010](v201);
  v203 = v190;
  v384(v194, v191, v190);
  v204 = swift_allocObject();
  v205 = v389;
  *(v204 + 16) = v390;
  *(v204 + 32) = v205;
  *(v204 + 48) = v388;
  *(v204 + 56) = v197;
  v206 = v379;
  v198(v204 + v379, v194, v203);
  v207 = v318;
  v208 = v322;
  v209 = v366;
  sub_1A3A30CA0();

  sub_1A39DC884(v202, type metadata accessor for ModeWheelGestureState);
  v210 = v208;
  v211 = v206;
  (*(v321 + 8))(v209, v210);
  v212 = v198;
  v213 = v391;
  v384(v194, v392, v391);
  v214 = swift_allocObject();
  v215 = v389;
  *(v214 + 16) = v390;
  *(v214 + 32) = v215;
  v216 = v385;
  *(v214 + 48) = v388;
  *(v214 + 56) = v216;
  v217 = v194;
  v212(v214 + v211, v194, v213);
  v218 = v320;
  sub_1A393BE2C(0, sub_1A39DC8E4, v214, v320, v307);

  (*(v319 + 8))(v207, v218);
  v219 = v216;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v220 = off_1ED997FE0;
  swift_getKeyPath();
  v424 = v220;
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v221 = v220[2];
  swift_getKeyPath();
  v424 = v221;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v222 = *(v221 + 48);

  LOBYTE(v424) = v222;
  v223 = v391;
  v224 = v384;
  v384(v217, v392, v391);
  v225 = swift_allocObject();
  v226 = v389;
  *(v225 + 16) = v390;
  *(v225 + 32) = v226;
  *(v225 + 48) = v388;
  *(v225 + 56) = v219;
  v227 = v377;
  v377(v225 + v211, v217, v223);
  v228 = v329;
  v229 = v334;
  v230 = v368;
  sub_1A3A30CA0();

  (*(v333 + 8))(v230, v229);
  v231 = v392;
  v424 = sub_1A39D5EC8(v223);
  v224(v217, v231, v223);
  v232 = swift_allocObject();
  v233 = v389;
  *(v232 + 16) = v390;
  *(v232 + 32) = v233;
  v234 = v385;
  *(v232 + 48) = v388;
  *(v232 + 56) = v234;
  v227(v232 + v211, v217, v223);
  v235 = v331;
  v236 = v332;
  sub_1A3A30CA0();

  (*(v330 + 8))(v228, v235);
  v237 = v392;
  v424 = sub_1A39D60A4(v223);
  v384(v217, v237, v223);
  v238 = swift_allocObject();
  v239 = v389;
  *(v238 + 16) = v390;
  *(v238 + 32) = v239;
  v240 = v385;
  *(v238 + 48) = v388;
  *(v238 + 56) = v240;
  v227(v238 + v211, v217, v223);
  v241 = v336;
  sub_1A3A30CA0();

  (*(v335 + 8))(v236, v241);
  if (*(v392 + v223[21]) == 1)
  {
    v242 = sub_1A39D8588(v391);
  }

  else
  {
    v242 = MEMORY[0x1E69E7CC0];
  }

  v424 = v242;
  v243 = v391;
  v384(v217, v392, v391);
  v244 = swift_allocObject();
  v245 = v389;
  *(v244 + 16) = v390;
  *(v244 + 32) = v245;
  v246 = v385;
  *(v244 + 48) = v388;
  *(v244 + 56) = v246;
  v227(v244 + v379, v217, v243);
  v247 = v341;
  v248 = v372;
  v249 = v337;
  v250 = v371;
  v251 = v369;
  sub_1A3A30CA0();

  (*(v338 + 8))(v251, v247);
  sub_1A3A314E0();
  sub_1A39D5EC8(v243);
  v252 = v376;
  v253 = v381;
  sub_1A3A31A50();
  v424 = v247;
  *&v425[0] = v248;
  *(&v425[0] + 1) = v249;
  *&v425[1] = v250;
  v254 = swift_getOpaqueTypeConformance2();
  v255 = v343;
  v256 = v340;
  v257 = v370;
  sub_1A3A30CD0();

  v364(v252, v253);
  (*(v339 + 8))(v257, v256);
  sub_1A3A314E0();
  LOWORD(v424) = sub_1A39D53F4(v243) & 0x1FF;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100890);
  *&v389 = MEMORY[0x1E697F548];
  *&v390 = swift_getWitnessTable();
  v399 = v254;
  v400 = v390;
  v258 = v345;
  v259 = swift_getWitnessTable();
  sub_1A39DCBAC();
  v260 = v346;
  sub_1A3A30CD0();

  (*(v344 + 8))(v255, v258);
  sub_1A3A314E0();
  MEMORY[0x1A58F7010](v305);
  v261 = sub_1A38A08F8(&qword_1EB1008A8, &qword_1EB100870);
  v397 = v259;
  v398 = v261;
  v262 = v348;
  v263 = swift_getWitnessTable();
  v264 = v349;
  v265 = v381;
  sub_1A3A30CD0();

  v364(v252, v265);
  (*(v347 + 8))(v260, v262);
  sub_1A3A314E0();
  LOBYTE(v424) = sub_1A39D4A20() & 1;
  v395 = v263;
  v396 = v390;
  v266 = v353;
  v267 = swift_getWitnessTable();
  v268 = v350;
  sub_1A3A30CD0();

  (*(v352 + 8))(v264, v266);
  v269 = sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
  v393 = v267;
  v394 = v269;
  v270 = v355;
  v271 = swift_getWitnessTable();
  v272 = v351;
  sub_1A3964BD0(v268, v270, v271);
  v273 = *(v354 + 8);
  v273(v268, v270);
  sub_1A3964BD0(v272, v270, v271);
  return (v273)(v272, v270);
}

uint64_t sub_1A39D2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v77 = a8;
  *&v105 = a2;
  *(&v105 + 1) = a3;
  v67 = a3;
  v80 = a4;
  v81 = a6;
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v82 = a5;
  v83 = a7;
  *&v107 = a6;
  *(&v107 + 1) = a7;
  v12 = type metadata accessor for ModeWheel();
  v65 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v18 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(a1 + *(v19 + 76));
  v22 = *(a1 + *(v19 + 88));
  v23 = sub_1A3A311E0();
  v75 = v22;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7010](v23);
  v24 = a1;
  v74 = sub_1A39D31D8();
  v25 = a2;
  v26 = v12;
  (*(v18 + 8))(v21, a2);
  v27 = v24 + *(v12 + 92);
  v28 = *v27;
  v72 = *(v27 + 8);
  v73 = v28;
  v71 = *(v27 + 16);
  v29 = v24 + *(v12 + 148);
  v70 = *v29;
  v69 = *(v29 + 8);
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v30 = v65;
  v31 = v65[2];
  v61 = v17;
  v62 = v31;
  v31(v17, v24, v12);
  v32 = (*(v30 + 80) + 64) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v68 = v24;
  v79 = v25;
  v34 = v67;
  v33[2] = v25;
  v33[3] = v34;
  v35 = v81;
  v36 = v82;
  v33[4] = v80;
  v33[5] = v36;
  v37 = v83;
  v33[6] = v35;
  v33[7] = v37;
  v38 = v30[4];
  v64 = v33;
  v65 = v38;
  (v38)(v33 + v32, v61, v12);
  v39 = v66;
  v40 = v24;
  v41 = v26;
  v63 = v26;
  v62(v66, v40, v26);
  v42 = swift_allocObject();
  v43 = v80;
  v42[2] = v79;
  v42[3] = v34;
  v42[4] = v43;
  v42[5] = v36;
  v44 = v81;
  v45 = v83;
  v42[6] = v81;
  v42[7] = v45;
  (v65)(v42 + v32, v39, v41);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808);
  sub_1A3A2FA90();
  v46 = sub_1A3A2FA90();
  v103 = v44;
  v104 = MEMORY[0x1E697E5D8];
  v47 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v102 = MEMORY[0x1E697E040];
  v81 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808);
  v99 = v48;
  v100 = v49;
  v97 = swift_getWitnessTable();
  v98 = v83;
  v50 = swift_getWitnessTable();
  v51 = v82;
  v52 = v79;
  v59.n128_u64[0] = sub_1A39DCFB4;
  v59.n128_u64[1] = v64;
  sub_1A39DDAE4(v76, v75, v74, v73, v72, v71, v70, v69, v96, a9, 16.0, v59, sub_1A39DD088, v42);
  v53 = v63;
  sub_1A39D40D8(v63);
  sub_1A39D40D8(v53);
  *&v105 = v52;
  *(&v105 + 1) = v46;
  *&v106 = v51;
  *(&v106 + 1) = v50;
  v54 = type metadata accessor for ModeWheelListView();
  v55 = swift_getWitnessTable();
  sub_1A3A30C30();
  v94[4] = v96[4];
  v94[5] = v96[5];
  v94[6] = v96[6];
  v94[0] = v96[0];
  v94[1] = v96[1];
  v94[2] = v96[2];
  v94[3] = v96[3];
  (*(*(v54 - 8) + 8))(v94, v54);
  v90 = v109;
  v91 = v110;
  v92 = v111;
  v93 = v112;
  v86 = v105;
  v87 = v106;
  v88 = v107;
  v89 = v108;
  v56 = sub_1A3A2FA90();
  v84 = v55;
  v85 = MEMORY[0x1E697E270];
  v57 = swift_getWitnessTable();
  MEMORY[0x1A58F6B00](v57, v56, MEMORY[0x1E697FB10], v57);
  v95[4] = v90;
  v95[5] = v91;
  v95[6] = v92;
  v95[7] = v93;
  v95[0] = v86;
  v95[1] = v87;
  v95[2] = v88;
  v95[3] = v89;
  return (*(*(v56 - 8) + 8))(v95, v56);
}

uint64_t sub_1A39D31D8()
{
  sub_1A3A31A40();
  swift_getWitnessTable();
  result = sub_1A3A31BB0();
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39D3274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v15 = type metadata accessor for ModeWheel();
  sub_1A39D5EC8(v15);
  sub_1A3A31A50();
  v16 = sub_1A3A31790();
  (*(v6 + 8))(v8, a2);
  return sub_1A39D33C0(a1, v16 & 1, v15, a3);
}

uint64_t sub_1A39D33C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a2;
  v110 = a1;
  v105 = a4;
  v5 = *(a3 + 32);
  v104 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v103 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v8 + 16);
  v98 = *(v100 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v88 = v10;
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11;
  v13 = v11 - 8;
  v91 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v87 = v15;
  v89 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v13 + 32) - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v19;
  v20 = sub_1A3A2FA90();
  v85 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v23 = sub_1A3A2FA90();
  v90 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v78 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808);
  v92 = v23;
  v25 = sub_1A3A2FA90();
  v97 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v78 - v26;
  v99 = v27;
  v109 = v5;
  v102 = sub_1A3A2FA90();
  v101 = *(v102 - 8);
  v28 = MEMORY[0x1EEE9AC00](v102);
  v94 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v96 = &v78 - v30;
  v31 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  MEMORY[0x1A58F7010]();
  v84 = *v33;
  sub_1A39DC884(v33, type metadata accessor for ModeWheelGestureState);
  v35 = 0;
  if (*(v4 + *(v13 + 92)))
  {
    if (*(v4 + *(v13 + 92)) == 1)
    {
      MEMORY[0x1A58F7010](v34);
      v83 = v33[1];
      sub_1A39DC884(v33, type metadata accessor for ModeWheelGestureState);
      v36 = (v4 + *(v12 + 188));
      v37 = *v36;
      v38 = v36[1];
      v112 = v37;
      v113 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
      sub_1A3A30F90();
      v35 = v111;
    }

    else
    {
      v83 = 0;
    }
  }

  else
  {
    v39 = (v4 + *(v12 + 168));
    v40 = *v39;
    v41 = *(v39 + 1);
    LOBYTE(v112) = v40;
    v113 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30F90();
    v83 = v111;
  }

  v42 = v85;
  v43 = *(v4 + *(v12 + 112));
  v86 &= 1u;
  v43(v110);
  sub_1A3A30600();
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v45 = v107;
  v79 = *(v12 + 48);
  v44 = v79;
  sub_1A3A30C70();
  (*(v16 + 8))(v18, v45);
  v46 = v12;
  v106 = v12;
  sub_1A3A31480();
  v82 = v4;
  v120 = v44;
  v121 = MEMORY[0x1E697E5D8];
  v85 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  sub_1A3A30BF0();
  (*(v42 + 8))(v22, v20);
  v81 = sub_1A3A30FD0();
  v47 = v91;
  v48 = v89;
  (*(v91 + 16))(v89, v4, v46);
  v49 = v98;
  v50 = v95;
  v51 = v100;
  (*(v98 + 16))(v95, v110, v100);
  v52 = (*(v47 + 80) + 64) & ~*(v47 + 80);
  v53 = (v87 + v52 + *(v49 + 80)) & ~*(v49 + 80);
  v54 = v53 + v88;
  v55 = (v53 + v88 + 10) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v106;
  v58 = v107;
  *(v56 + 2) = v51;
  *(v56 + 3) = v58;
  v59 = *(v57 + 40);
  *(v56 + 4) = v109;
  *(v56 + 5) = v59;
  v107 = *(v57 + 56);
  v60 = v107;
  *(v56 + 6) = v79;
  *(v56 + 7) = v60;
  (*(v47 + 32))(&v56[v52], v48);
  (*(v49 + 32))(&v56[v53], v50, v51);
  v61 = &v56[v54];
  v62 = v86;
  *v61 = v86;
  v61[1] = v84;
  v61[2] = v83;
  *&v56[v55] = v35;
  type metadata accessor for CGRect(0);
  v118 = WitnessTable;
  v119 = MEMORY[0x1E697E040];
  v63 = v92;
  v64 = swift_getWitnessTable();
  sub_1A39DD300();
  v65 = v93;
  v66 = v108;
  sub_1A3A30A70();

  (*(v90 + 8))(v66, v63);
  v67 = v103;
  (*(v82 + *(v106 + 116)))(v110, v62);
  v68 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808);
  v116 = v64;
  v117 = v68;
  v69 = v99;
  v70 = swift_getWitnessTable();
  v71 = v94;
  v72 = v109;
  MEMORY[0x1A58F6B00](v67, v69, v109, v70);
  (*(v104 + 8))(v67, v72);
  (*(v97 + 8))(v65, v69);
  v114 = v70;
  v115 = v107;
  v73 = v102;
  v74 = swift_getWitnessTable();
  v75 = v96;
  sub_1A3964BD0(v71, v73, v74);
  v76 = *(v101 + 8);
  v76(v71, v73);
  sub_1A3964BD0(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_1A39D3EE0()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A39D3F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v2 + *(v10 + 132));
  v12 = *v11;
  v13 = *(v11 + 1);
  v18[16] = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  result = sub_1A3A30F90();
  if ((v18[15] & 1) == 0)
  {
    v15 = sub_1A3A311E0();
    MEMORY[0x1A58F7010](v15);
    v16 = sub_1A3A31790();
    result = (*(v7 + 8))(v9, v6);
    if (v16)
    {
      v17 = (v3 + *(a2 + 104));
      if (*v17)
      {
        return (*v17)(result);
      }
    }

    else
    {
      return sub_1A39D64E4(a1, a2);
    }
  }

  return result;
}

double sub_1A39D40D8(uint64_t a1)
{
  if (qword_1EB0FC220 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = 20.0;
  if ((*(v1 + *(a1 + 76)) & 1) == 0)
  {
    return dbl_1A3A81908[*(v1 + *(a1 + 84))];
  }

  return result;
}

uint64_t sub_1A39D4168()
{
  type metadata accessor for ModeWheel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0);
  return sub_1A3A30FA0();
}

uint64_t sub_1A39D4204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1A3A2FEE0();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v61 - v18;
  v68 = sub_1A3A2F540();
  v19 = *(v68 - 8);
  v20 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v66 = &v61 - v23;
  v24 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71 = a4;
  *(&v71 + 1) = a5;
  v72 = a6;
  v73 = a7;
  v74 = a8;
  v75 = a9;
  v27 = type metadata accessor for ModeWheel();
  v28 = a3 + v27[34];
  v30 = *(v28 + 8);
  LOBYTE(v71) = *v28;
  v29 = v71;
  *(&v71 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30F90();
  v64 = v69;
  LOBYTE(v71) = v29;
  *(&v71 + 1) = v30;
  LOBYTE(v69) = 0;
  sub_1A3A30FA0();
  v31 = sub_1A3A311E0();
  MEMORY[0x1A58F7010](v31);
  v32 = sub_1A39D31D8();
  v33 = v26;
  v34 = a3;
  (*(v24 + 8))(v33, a4);
  v71 = *(a3 + v27[45]);
  v69 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720);
  sub_1A3A30FA0();
  v35 = (a3 + v27[48]);
  v36 = *v35;
  LOBYTE(v32) = *(v35 + 8);
  sub_1A3A2EA60();
  if ((v32 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v61;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v62 + 8))(v38, v63);
    v36 = v71;
  }

  v39 = v68;
  v40 = v66;
  if (v36)
  {
    swift_getKeyPath();
    *&v71 = v36;
    sub_1A39DA768(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel);
    sub_1A3A2F080();

    v41 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    v42 = v36 + v41;
    v43 = v65;
    (*(v19 + 16))(v65, v42, v39);

    (*(v19 + 56))(v43, 0, 1, v39);
    (*(v19 + 32))(v40, v43, v39);
  }

  else
  {
    v44 = v65;
    (*(v19 + 56))(v65, 1, 1, v68);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v40);
    if ((*(v19 + 48))(v44, 1, v39) != 1)
    {
      sub_1A388F740(v44, &qword_1EB0FD758);
    }
  }

  v45 = v67;
  (*(v19 + 104))(v67, *MEMORY[0x1E697BE38], v39);
  v46 = sub_1A3A2F530();
  v47 = *(v19 + 8);
  v47(v45, v39);
  result = (v47)(v40, v39);
  if (v46)
  {
    result = sub_1A39D4A20();
    if (((result | v64) & 1) == 0)
    {
      if (qword_1ED996480 != -1)
      {
        swift_once();
      }

      v49 = off_1ED997FE0;
      swift_getKeyPath();
      *&v71 = v49;
      sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager);
      sub_1A3A2F080();

      v50 = v49[2];
      swift_getKeyPath();
      *&v71 = v50;
      sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v51 = *(v50 + 48);

      if ((v51 - 1) <= 1)
      {
        v52 = (v34 + v27[43]);
        v54 = v52[1];
        v55 = v52[2];
        *&v71 = *v52;
        v53 = v71;
        *(&v71 + 1) = v54;
        v72 = v55;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
        MEMORY[0x1A58F7010](&v70);
        sub_1A38E01D4(1, 0.0);

        *&v71 = v53;
        *(&v71 + 1) = v54;
        v72 = v55;
        MEMORY[0x1A58F7010](&v70, v56);
        v57 = *(v34 + v27[31]);
        sub_1A38E01D4(0, v57);

        v58 = (v34 + v27[35]);
        v60 = v58[1];
        *&v71 = *v58;
        v59 = v71;
        *(&v71 + 1) = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE910);
        sub_1A3A30F90();
        sub_1A38E01D4(1, 0.0);

        *&v71 = v59;
        *(&v71 + 1) = v60;
        sub_1A3A30F90();
        sub_1A38E01D4(0, v57);
      }
    }
  }

  return result;
}

uint64_t sub_1A39D4A20()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  MEMORY[0x1A58F7010](v3);
  v4 = *v2;
  sub_1A39DC884(v2, type metadata accessor for ModeWheelGestureState);
  return v4;
}

uint64_t sub_1A39D4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a5;
  sub_1A389EEE0();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39CFD78(MEMORY[0x1E69E7DE0], sub_1A39D9F94, 0, sub_1A39DCF54, v10, a3, MEMORY[0x1E69E7DE0], a4);
}

BOOL sub_1A39D4BBC(int *a1)
{
  if (*(v1 + a1[21]) == 2)
  {
    return 0;
  }

  v4 = v1 + a1[23];
  if ((*(v4 + 16) & 1) == 0)
  {
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = sub_1A39D5EC8(a1);
    if (v7 < v6 || v5 < v7)
    {
      return 1;
    }
  }

  v9 = (v1 + a1[25]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v24 = v10;
  *&v25 = v11;
  BYTE8(v25) = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  MEMORY[0x1A58F7010](&v23, v12);
  if (v23)
  {
    return 1;
  }

  v13 = v1 + a1[37];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    if (v14 < sub_1A39D61FC())
    {
      return 0;
    }
  }

  v15 = (v1 + a1[43]);
  v24 = *v15;
  v25 = *(v15 + 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
  v17 = MEMORY[0x1A58F7010](&v23, v16);
  v18 = v23;
  MEMORY[0x1EEE9AC00](v17);
  swift_getKeyPath();
  v24 = v18;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
  sub_1A3A2F080();

  swift_beginAccess();
  v19 = *(v18 + 18);

  if (v19 != 1)
  {
    return 0;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v20 = off_1ED997FE0;
  swift_getKeyPath();
  v23 = v20;
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v21 = v20[2];
  swift_getKeyPath();
  v23 = v21;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v22 = *(v21 + 48);

  return v22 < 3;
}

uint64_t sub_1A39D4EFC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 148));
  result = *v2;
  if ((v2[1] & 1) == 0)
  {
    v4 = *v2;
    if (sub_1A39D61FC() <= v4)
    {
      *&result = 0.0;
    }

    else
    {
      if (qword_1EB0FC220 != -1)
      {
        swift_once();
      }

      *&result = v4 + -16.0;
    }
  }

  return result;
}

BOOL sub_1A39D4F90(uint64_t a1)
{
  v2 = v1 + *(a1 + 148);
  if (*(v2 + 8))
  {
    return 1;
  }

  v3 = v1 + *(a1 + 152);
  if (*(v3 + 8))
  {
    return 1;
  }

  v5 = *v3;
  v6 = *v2;
  return v5 + sub_1A39D61FC() < v6;
}

void *sub_1A39D4FEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v10 = type metadata accessor for ModeWheel();
  v11 = *(a1 + *(v10 + 76));
  v12 = sub_1A3A305F0();
  result = sub_1A3A305F0();
  v14 = 0uLL;
  if (v12 == result)
  {
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v15 = off_1ED997FE0;
    swift_getKeyPath();
    v24 = v15;
    sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v16 = v15[2];
    swift_getKeyPath();
    v24 = v16;
    sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v17 = sub_1A394FC58(6u);

    if (v17)
    {
      v18 = a1 + *(v10 + 100);
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v24 = v19;
      v25 = v20;
      LOBYTE(v26) = v18;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
      result = MEMORY[0x1A58F7010](&v23, v21);
      v22 = 0x4046000000000000;
      if (!v23)
      {
        v22 = 0;
      }

      v14 = xmmword_1A3A81390;
    }

    else
    {
      v22 = 0;
      v11 = 2;
      v14 = 0uLL;
    }
  }

  else
  {
    v22 = 0;
    v11 = 2;
  }

  *a8 = v11;
  *(a8 + 8) = v22;
  *(a8 + 16) = v14;
  return result;
}

uint64_t sub_1A39D5220()
{
  v0 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3A305F0();
  if (v3 == sub_1A3A305F0())
  {
    v4 = *MEMORY[0x1E697F468];
    v5 = sub_1A3A30000();
    (*(*(v5 - 8) + 104))(v2, v4, v5);
    sub_1A39DA768(qword_1ED9969F8, MEMORY[0x1E6981998]);
    return sub_1A3A31290();
  }

  else
  {
    sub_1A39DCF00();

    return sub_1A3A31290();
  }
}

double sub_1A39D5378(int *a1)
{
  v2 = 0.0;
  if (!sub_1A39D6400(a1) && sub_1A39D4BBC(a1))
  {
    if (qword_1EB0FC220 != -1)
    {
      swift_once();
    }

    return 44.0;
  }

  return v2;
}

uint64_t sub_1A39D53F4(int *a1)
{
  v2 = v1 + a1[37];
  if (*(v2 + 8) & 1) != 0 || (v4 = *v2, v4 >= sub_1A39D61FC()) || (v5 = (v1 + a1[25]), v6 = *v5, v7 = v5[1], LOBYTE(v5) = *(v5 + 16), v18 = v6, v19 = v7, v20 = v5, v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598), MEMORY[0x1A58F7010](&v16, v8), (v16))
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v12 = (v1 + a1[39]);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 1);
    LOBYTE(v18) = v13;
    BYTE1(v18) = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0);
    sub_1A3A30F90();
    v9 = v16;
    v10 = v17;
    if (v17)
    {
      v9 = 0;
    }
  }

  return v9 | (v10 << 8);
}

uint64_t sub_1A39D5500(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for ModeWheelGestureState(0);
  result = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    if (qword_1EB0FC210 != -1)
    {
      v8 = result;
      swift_once();
      result = v8;
    }

    v7 = __swift_project_value_buffer(result, qword_1EB101B38);
    sub_1A39DD4CC(v7, v6, type metadata accessor for ModeWheelGestureState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
    return sub_1A3A311A0();
  }

  return result;
}

_BYTE *sub_1A39D5604(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  v44 = sub_1A3A31650();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1A3A31670();
  v40 = *(v42 - 8);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v11 = *(a3 - 8);
  a3 -= 8;
  v38 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = *(a3 + 32);
  v37 = *(a3 + 24);
  v47 = v37;
  v48 = v13;
  v36 = v13;
  v14 = *(a3 + 48);
  v35 = *(a3 + 40);
  v49 = v35;
  v50 = v14;
  v15 = *(a3 + 56);
  v16 = *(a3 + 64);
  v51 = v15;
  v52 = v16;
  v53 = v4;
  v54 = a1;
  v45 = a1;
  v55 = a2;
  sub_1A3A314E0();
  sub_1A3A2F8A0();
  v17 = a2;

  v18 = (v4 + *(a3 + 140));
  v19 = *v18;
  v20 = *(v18 + 1);
  if (a2[1] == 1)
  {
    LOBYTE(aBlock) = v19;
    v57 = v20;
    v62 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    result = sub_1A3A30FA0();
  }

  else
  {
    LOBYTE(aBlock) = v19;
    v57 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    result = sub_1A3A30F90();
    if (v62 == 1)
    {
      sub_1A38C9AFC();
      v33 = sub_1A3A31C70();
      v22 = v38;
      v23 = *(v38 + 16);
      v34 = v17;
      v24 = v46;
      v23(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v46);
      v25 = (*(v22 + 80) + 64) & ~*(v22 + 80);
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 2) = v37;
      *(v26 + 3) = v27;
      *(v26 + 4) = v35;
      *(v26 + 5) = v14;
      *(v26 + 6) = v15;
      *(v26 + 7) = v16;
      (*(v22 + 32))(&v26[v25], &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      v60 = sub_1A39DCD40;
      v61 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_1A3904E20;
      v59 = &block_descriptor_10;
      v28 = _Block_copy(&aBlock);

      v29 = v39;
      sub_1A3A31660();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A39DA768(&qword_1ED997B90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668);
      v17 = v34;
      sub_1A38A08F8(&qword_1ED997BA0, &qword_1EB0FD668);
      v30 = v41;
      v31 = v44;
      sub_1A3A31E80();
      v32 = v33;
      MEMORY[0x1A58F7B00](0, v29, v30, v28);
      _Block_release(v28);

      (*(v43 + 8))(v30, v31);
      result = (*(v40 + 8))(v29, v42);
    }
  }

  if (!*(v4 + *(v46 + 84)))
  {
    return sub_1A39D7310(v45, v17, v46);
  }

  if (*(v4 + *(v46 + 84)) == 1)
  {
    return sub_1A39D7714(v45, v17, v46);
  }

  return result;
}

uint64_t sub_1A39D5B74()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A39D5BEC()
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v0 = off_1ED997FE0;
  swift_getKeyPath();
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v1 = v0[2];
  swift_getKeyPath();
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v2 = *(v1 + 48);

  if (v2)
  {
    type metadata accessor for ModeWheel();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
    MEMORY[0x1A58F7010](&v5, v4);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }

  return result;
}

void sub_1A39D5E24(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*a2)
  {
    v19 = v9;
    v20 = v10;
    v14 = a4;
    *&v15 = a5;
    *(&v15 + 1) = a6;
    v16 = a7;
    v17 = a8;
    v18 = a9;
    v11 = (a3 + *(type metadata accessor for ModeWheel() + 172));
    v14 = *v11;
    v15 = *(v11 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
    MEMORY[0x1A58F7010](&v13, v12);
    sub_1A38E01D4(1, 0.0);
  }
}

uint64_t sub_1A39D5EC8(uint64_t a1)
{
  if (!*(v1 + *(a1 + 84)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30F90();
    if (LOBYTE(v9) != 1)
    {
      return sub_1A39D629C(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720);
    sub_1A3A30F90();
    return *&v9;
  }

  if (*(v1 + *(a1 + 84)) == 1)
  {
    v3 = sub_1A39D629C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
    sub_1A3A30F90();
    v4 = sub_1A39D40D8(a1);
    result = sub_1A3A31A10();
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = round(v9 / v4 + v3);
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v7 > -9.22337204e18)
        {
          if (v7 < 9.22337204e18)
          {
            if (v6 >= v7)
            {
              v6 = v7;
            }

            return v6 & ~(v6 >> 63);
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return sub_1A39D629C(a1);
}

uint64_t sub_1A39D60A4(int *a1)
{
  if (!*(v1 + a1[21]))
  {
    return sub_1A39D8070(a1);
  }

  if (*(v1 + a1[21]) == 1)
  {
    return sub_1A39D8450(a1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A39D60CC()
{
  type metadata accessor for ModeWheel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v0 = sub_1A3A2EA50();
  sub_1A39CF2CC(v0);
}

uint64_t sub_1A39D6164()
{
  type metadata accessor for ModeWheel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8);
  sub_1A3A30F90();
  v0 = sub_1A3A2EA50();
  sub_1A39CF2CC(v0);
}

double sub_1A39D61FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30F90();
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  return v1 + 16.0;
}

uint64_t sub_1A39D629C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v1 + *(v4 + 88));
  v7 = sub_1A3A311E0();
  sub_1A3A2EA50();
  MEMORY[0x1A58F7010](v7);
  sub_1A3A31A40();
  swift_getWitnessTable();
  sub_1A3A31BB0();
  (*(v3 + 8))(v6, v2);

  if ((v10 & 1) == 0)
  {
    return v9[2];
  }

  __break(1u);
  return result;
}

BOOL sub_1A39D6400(uint64_t a1)
{
  v3 = v1 + *(a1 + 92);
  if (*(v3 + 16))
  {
    v4 = 0;
  }

  else
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v7 = sub_1A39D629C(a1);
    v8 = sub_1A39D5EC8(a1);
    v4 = v7 >= v6 && v5 >= v7 && v8 >= v6 && v5 >= v8;
  }

  v12 = (v1 + *(a1 + 100));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v12) = *(v12 + 16);
  v19 = v13;
  v20 = v14;
  v21 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  MEMORY[0x1A58F7010](&v18, v15);
  return (v18 & 1) == 0 && !sub_1A39D4F90(a1) && v4;
}

uint64_t sub_1A39D64E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (v2 + *(v8 + 136));
  v10 = *v9;
  v11 = *(v9 + 1);
  v13[16] = v10;
  v14 = v11;
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FA0();
  (*(v5 + 16))(v7, a1, v4);
  sub_1A3A311E0();
  return sub_1A3A311A0();
}

uint64_t sub_1A39D661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v31 = a6;
  v32 = a7;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  result = type metadata accessor for ModeWheel();
  if ((*(a2 + *(result + 92) + 16) & 1) != 0 || (v20 = (a2 + *(result + 156)), v21 = *v20, v22 = v20[1], v23 = *(v20 + 1), LOBYTE(v31) = v21, BYTE1(v31) = v22, v32 = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0), result = sub_1A3A30F90(), v30 != 1) || v29)
  {
    if (a3)
    {
      v27 = a5;
      v19 = 0;
      goto LABEL_7;
    }

LABEL_11:
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    goto LABEL_12;
  }

  v27 = a5;
  sub_1A3A31A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006E0);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED998FB8, &qword_1EB1006E0);
  sub_1A3A31780();
  sub_1A3A31E70();
  swift_getWitnessTable();
  v19 = sub_1A3907BFC();
  result = swift_unknownObjectRelease();
  if ((a3 & 1) == 0)
  {
    if (v19)
    {
      *(a8 + 32) = 0u;
      *(a8 + 48) = 0u;
      *a8 = 0u;
      *(a8 + 16) = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008C8);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A3A681C0;
      *(v26 + 32) = a1;
      *(a8 + 64) = v26;
      return sub_1A3A2EA60();
    }

    goto LABEL_11;
  }

LABEL_7:
  sub_1A3A32110();
  v24 = sub_1A39D31D8();
  v25 = sub_1A39D31D8();
  result = sub_1A3A31A10();
  if (!__OFSUB__(result, 1))
  {
    v35 = a1;
    v36 = v19 & 1;
    v37 = v24 == 0;
    v38 = v25 == result - 1;
    v39 = a4 & 1;
    v40 = v27 & 1;
    v41 = a9;
    sub_1A39DD354(&v31, a8);
    sub_1A3A2EA60();
    result = sub_1A39DD38C(&v31);
LABEL_12:
    *(a8 + 64) = MEMORY[0x1E69E7CC0];
    return result;
  }

  __break(1u);
  return result;
}