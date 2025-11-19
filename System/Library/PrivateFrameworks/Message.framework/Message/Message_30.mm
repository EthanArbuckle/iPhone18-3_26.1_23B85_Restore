uint64_t sub_1B087FF4C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = (a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  v2 = *v5;
  *v5 = 0;

  swift_endAccess();

  a2(v3);
}

uint64_t sub_1B087FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v82 = a2;
  v81 = a3;
  v55 = sub_1B08A2E98;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v99 = 0;
  v73 = 0;
  v56 = sub_1B0E44238();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = v38 - v59;
  v61 = sub_1B0E44288();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v65 = v38 - v64;
  v66 = *(_s6LoggerVMa() - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v73);
  v70 = v38 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v38 - v71;
  v111 = v38 - v71;
  v74 = *(_s18MailboxPersistenceVMa() - 8);
  v75 = v74;
  v76 = *(v74 + 64);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v73);
  v78 = v38 - v77;
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v80 = v38 - v79;
  v110 = v38 - v79;
  v89 = sub_1B0E44468();
  v87 = *(v89 - 8);
  v88 = v89 - 8;
  v84 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v83);
  v90 = (v38 - v84);
  v85 = *v8;
  v109 = v85;
  v107 = v9;
  v108 = v10;
  v106 = v3;
  v86 = *(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v86);
  v105 = v86;
  MEMORY[0x1E69E5928](v86);
  MEMORY[0x1E69E5928](v86);
  v11 = v87;
  *v90 = v86;
  v12 = *MEMORY[0x1E69E8020];
  (*(v11 + 104))();
  v91 = sub_1B0E44488();
  (*(v87 + 8))(v90, v89);
  result = v91;
  if (v91)
  {
    v14 = v54;
    MEMORY[0x1E69E5920](v86);
    v38[0] = v14 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v38[1] = &v104;
    swift_beginAccess();
    sub_1B03F4D78(v38[0], v80);
    swift_endAccess();
    v51 = sub_1B09B03B8();
    v52 = v15;
    v53 = v16;
    v101 = v51;
    v102 = v15;
    v103 = v16;
    v50 = *(v54 + 112);
    MEMORY[0x1E69E5928](v50);
    v100 = v50;
    v49 = sub_1B09B0434();
    v99 = v49;
    sub_1B0394784(v54 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v72);
    v48 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v48);
    MEMORY[0x1E69E5928](v50);
    sub_1B03F4D78(v80, v78);
    sub_1B07BA724(v51);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394784(v72, v70);
    MEMORY[0x1E69E5928](v86);

    v39 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v40 = (v39 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 31) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 8 + *(v67 + 80)) & ~*(v67 + 80);
    v43 = (v42 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = v85;
    v19 = v39;
    v20 = v17;
    v21 = v78;
    v46 = v20;
    *(v20 + 16) = v50;
    *(v20 + 24) = v18;
    sub_1B04158DC(v21, v20 + v19);
    v22 = v41;
    v23 = v42;
    v24 = v46;
    v25 = v49;
    v26 = v52;
    v27 = v53;
    v28 = v70;
    v29 = (v46 + v40);
    *v29 = v51;
    v29[1] = v26;
    v29[2] = v27;
    *(v24 + v22) = v25;
    sub_1B03F4FD0(v28, v24 + v23);
    v30 = v54;
    v31 = v44;
    v32 = v45;
    v33 = v82;
    v34 = v81;
    v35 = v55;
    v36 = v46;
    *(v46 + v43) = v86;
    *(v36 + v31) = v30;
    v37 = (v36 + v32);
    *v37 = v33;
    v37[1] = v34;
    v97 = v35;
    v98 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = 0;
    v95 = sub_1B038C908;
    v96 = &block_descriptor_312;
    v47 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v65, v60, v47);
    (*(v57 + 8))(v60, v56);
    (*(v62 + 8))(v65, v61);
    _Block_release(v47);

    MEMORY[0x1E69E5920](v48);
    sub_1B039480C(v72);

    MEMORY[0x1E69E5920](v50);
    sub_1B07BA794(v51);
    sub_1B03F4F08(v80);
    return MEMORY[0x1E69E5920](v86);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0880A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28[1] = a2;
  v28[7] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v28[6] = a8;
  v28[8] = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = sub_1B08A69EC;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v33 = 0;
  v37 = sub_1B0E44238();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v28[0] = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = v28 - v28[0];
  v41 = sub_1B0E44288();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v13 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = v28 - v14;
  v62 = a1;
  v61 = v15;
  v60 = v16;
  v57 = v17;
  v58 = v18;
  v59 = v19;
  v56 = v20;
  v55 = v21;
  v54 = v22;
  v53 = v29;
  v51 = v30;
  v52 = v31;
  v50 = v15;
  sub_1B0880DA0(&v50, v16, v17, v18, v19, v20, v21);

  v23 = swift_allocObject();
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v23[2] = v29;
  v23[3] = v24;
  v23[4] = v25;
  v48 = v26;
  v49 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = 0;
  v46 = sub_1B038C908;
  v47 = &block_descriptor_1772;
  v42 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v33, v40, v36, v42);
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);
}

uint64_t sub_1B0880DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v342 = a1;
  v341 = a2;
  v336 = a3;
  v337 = a4;
  v338 = a5;
  v340 = a6;
  v339 = a7;
  v353 = sub_1B08A3090;
  v276 = sub_1B039BBE8;
  v277 = sub_1B06BA324;
  v278 = sub_1B0394C30;
  v279 = sub_1B0394C24;
  v280 = sub_1B039BA2C;
  v281 = sub_1B039BA88;
  v282 = sub_1B039BB94;
  v283 = sub_1B0394C24;
  v284 = sub_1B039BBA0;
  v285 = sub_1B039BC08;
  v286 = sub_1B03FB1CC;
  v287 = sub_1B039BCF8;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0399178;
  v291 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v293 = sub_1B039BA94;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0399178;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B03991EC;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B039BCEC;
  v303 = sub_1B039BBE8;
  v304 = sub_1B06BA324;
  v305 = sub_1B0394C24;
  v306 = sub_1B039BA2C;
  v307 = sub_1B039BA88;
  v308 = sub_1B0394C24;
  v309 = sub_1B039BBA0;
  v310 = sub_1B039BC08;
  v311 = sub_1B03FB1CC;
  v312 = sub_1B039BCF8;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0399178;
  v316 = sub_1B0398F5C;
  v317 = sub_1B0398F5C;
  v318 = sub_1B039BA94;
  v319 = sub_1B0398F5C;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0399178;
  v322 = sub_1B0398F5C;
  v323 = sub_1B0398F5C;
  v324 = sub_1B03991EC;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0398F5C;
  v327 = sub_1B039BCEC;
  v387 = 0;
  v386 = 0;
  v383 = 0;
  v384 = 0;
  v385 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v377 = 0;
  v371 = 0;
  v364 = 0;
  v362 = 0;
  v363 = 0;
  v360 = 0;
  v361 = 0;
  v356 = 0;
  v357 = 0;
  v358 = 0;
  v328 = 0;
  v329 = _s6LoggerVMa();
  v330 = (*(*(v329 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v331 = v146 - v330;
  v332 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v333 = v146 - v332;
  v334 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v335 = v146 - v334;
  v343 = sub_1B0E439A8();
  v344 = *(v343 - 8);
  v345 = v343 - 8;
  v346 = (*(v344 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v342);
  v347 = v146 - v346;
  v348 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v349 = v146 - v348;
  v350 = *v14;
  v387 = v350;
  v386 = v15;
  v383 = v16;
  v384 = v17;
  v385 = v18;
  v382 = v19;
  v381 = v20;
  v380 = v7;
  v378 = v19;
  v351 = v355;
  v355[2] = v350;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E44FB8();
  v354 = 0;
  v274 = v379;
  v377 = v379;
  MEMORY[0x1E69E5928](v379);
  if (v274)
  {
    v273 = v274;
    v271 = v274;
    v371 = v274;
    v370 = v350;
    v272 = sub_1B07BECC0(&v370);
    if (v272)
    {
      v270 = v272;
      v265 = v272;
      v364 = v272;
      v266 = sub_1B0888AF4();
      v21 = [v271 actionID];
      [v266 deleteMailboxAction_];
      MEMORY[0x1E69E5920](v266);
      v267 = [v271 mailboxName];
      v22 = sub_1B0E44AD8();
      v268 = sub_1B07C10E4(v22, v23);
      v269 = v24;
      MEMORY[0x1E69E5920](v267);
      v362 = v268;
      v363 = v269;
      sub_1B07BA724(v336);
      if (v336)
      {
        v262 = v336;
        v263 = v337;
        v264 = v338;
        v257 = v338;
        v256 = v336;
        v356 = v336;
        v357 = v337;
        v358 = v338;
        v258 = Namespace.removePrefix(_:)(v268, v269, v336);
        v259 = v25;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v360 = v258;
        v361 = v259;

        v260 = v258;
        v261 = v259;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v360 = v268;
        v361 = v269;
        v260 = v268;
        v261 = v269;
      }

      v251 = v261;
      v252 = v260;
      MEMORY[0x1E69E5928](v275);
      MEMORY[0x1E69E5928](v265);
      sub_1B07BF45C(v252, v251);
      v253 = v26;
      v255 = sub_1B0E44AC8();

      v254 = [v265 parent];
      v359.receiver = v275;
      v359.super_class = IMAPAccount;
      objc_msgSendSuper2(&v359, sel_renameMailbox_newName_parent_, v265, v255);
      MEMORY[0x1E69E5920](v254);
      MEMORY[0x1E69E5920](v255);
      MEMORY[0x1E69E5920](v265);
      MEMORY[0x1E69E5920](v275);
      sub_1B039E440(&v360);

      MEMORY[0x1E69E5920](v265);
      MEMORY[0x1E69E5920](v271);
      return MEMORY[0x1E69E5920](v274);
    }

    else
    {
      (*(v344 + 16))(v349, v339, v343);
      sub_1B0394784(v339, v335);
      sub_1B0394784(v335, v333);
      sub_1B03F4FD0(v335, v331);
      v28 = (v333 + *(v329 + 20));
      v213 = *v28;
      v214 = *(v28 + 1);
      sub_1B039480C(v333);
      v216 = 24;
      v228 = 7;
      v29 = swift_allocObject();
      v30 = v214;
      v219 = v29;
      *(v29 + 16) = v213;
      *(v29 + 20) = v30;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v31 = swift_allocObject();
      v32 = v214;
      v215 = v31;
      *(v31 + 16) = v213;
      *(v31 + 20) = v32;

      v227 = 32;
      v33 = swift_allocObject();
      v34 = v215;
      v224 = v33;
      *(v33 + 16) = v276;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v331);
      v217 = swift_allocObject();
      *(v217 + 16) = v350;

      v35 = swift_allocObject();
      v36 = v217;
      v229 = v35;
      *(v35 + 16) = v277;
      *(v35 + 24) = v36;

      v249 = sub_1B0E43988();
      v250 = sub_1B0E458E8();
      v226 = 17;
      v231 = swift_allocObject();
      v221 = 16;
      *(v231 + 16) = 16;
      v232 = swift_allocObject();
      v223 = 4;
      *(v232 + 16) = 4;
      v37 = swift_allocObject();
      v218 = v37;
      *(v37 + 16) = v278;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v218;
      v233 = v38;
      *(v38 + 16) = v279;
      *(v38 + 24) = v39;
      v234 = swift_allocObject();
      *(v234 + 16) = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v219;
      v220 = v40;
      *(v40 + 16) = v280;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v220;
      v236 = v42;
      *(v42 + 16) = v281;
      *(v42 + 24) = v43;
      v237 = swift_allocObject();
      *(v237 + 16) = v221;
      v238 = swift_allocObject();
      *(v238 + 16) = v223;
      v44 = swift_allocObject();
      v222 = v44;
      *(v44 + 16) = v282;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v222;
      v239 = v45;
      *(v45 + 16) = v283;
      *(v45 + 24) = v46;
      v240 = swift_allocObject();
      *(v240 + 16) = 0;
      v241 = swift_allocObject();
      *(v241 + 16) = v223;
      v47 = swift_allocObject();
      v48 = v224;
      v225 = v47;
      *(v47 + 16) = v284;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v225;
      v242 = v49;
      *(v49 + 16) = v285;
      *(v49 + 24) = v50;
      v243 = swift_allocObject();
      *(v243 + 16) = 32;
      v244 = swift_allocObject();
      *(v244 + 16) = 8;
      v51 = swift_allocObject();
      v52 = v229;
      v230 = v51;
      *(v51 + 16) = v286;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v230;
      v246 = v53;
      *(v53 + 16) = v287;
      *(v53 + 24) = v54;
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v245 = sub_1B0E46A48();
      v247 = v55;

      v56 = v231;
      v57 = v247;
      *v247 = v288;
      v57[1] = v56;

      v58 = v232;
      v59 = v247;
      v247[2] = v289;
      v59[3] = v58;

      v60 = v233;
      v61 = v247;
      v247[4] = v290;
      v61[5] = v60;

      v62 = v234;
      v63 = v247;
      v247[6] = v291;
      v63[7] = v62;

      v64 = v235;
      v65 = v247;
      v247[8] = v292;
      v65[9] = v64;

      v66 = v236;
      v67 = v247;
      v247[10] = v293;
      v67[11] = v66;

      v68 = v237;
      v69 = v247;
      v247[12] = v294;
      v69[13] = v68;

      v70 = v238;
      v71 = v247;
      v247[14] = v295;
      v71[15] = v70;

      v72 = v239;
      v73 = v247;
      v247[16] = v296;
      v73[17] = v72;

      v74 = v240;
      v75 = v247;
      v247[18] = v297;
      v75[19] = v74;

      v76 = v241;
      v77 = v247;
      v247[20] = v298;
      v77[21] = v76;

      v78 = v242;
      v79 = v247;
      v247[22] = v299;
      v79[23] = v78;

      v80 = v243;
      v81 = v247;
      v247[24] = v300;
      v81[25] = v80;

      v82 = v244;
      v83 = v247;
      v247[26] = v301;
      v83[27] = v82;

      v84 = v246;
      v85 = v247;
      v247[28] = v302;
      v85[29] = v84;
      sub_1B0394964();

      if (os_log_type_enabled(v249, v250))
      {
        v86 = v354;
        v206 = sub_1B0E45D78();
        v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v207 = sub_1B03949A8(0);
        v208 = sub_1B03949A8(1);
        v209 = &v369;
        v369 = v206;
        v210 = &v368;
        v368 = v207;
        v211 = &v367;
        v367 = v208;
        sub_1B0394A48(2, &v369);
        sub_1B0394A48(5, v209);
        v365 = v288;
        v366 = v231;
        sub_1B03949FC(&v365, v209, v210, v211);
        v212 = v86;
        if (v86)
        {

          __break(1u);
        }

        else
        {
          v365 = v289;
          v366 = v232;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v204 = 0;
          v365 = v290;
          v366 = v233;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v203 = 0;
          v365 = v291;
          v366 = v234;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v202 = 0;
          v365 = v292;
          v366 = v235;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v201 = 0;
          v365 = v293;
          v366 = v236;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v200 = 0;
          v365 = v294;
          v366 = v237;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v199 = 0;
          v365 = v295;
          v366 = v238;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v198 = 0;
          v365 = v296;
          v366 = v239;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v197 = 0;
          v365 = v297;
          v366 = v240;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v196 = 0;
          v365 = v298;
          v366 = v241;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v195 = 0;
          v365 = v299;
          v366 = v242;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v194 = 0;
          v365 = v300;
          v366 = v243;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v193 = 0;
          v365 = v301;
          v366 = v244;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          v192 = 0;
          v365 = v302;
          v366 = v246;
          sub_1B03949FC(&v365, &v369, &v368, &v367);
          _os_log_impl(&dword_1B0389000, v249, v250, "[%.*hhx-%.*X] Could not find mailbox for mailbox %s", v206, 0x21u);
          sub_1B03998A8(v207);
          sub_1B03998A8(v208);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v249);
      (*(v344 + 8))(v349, v343);
      MEMORY[0x1E69E5920](v271);
      return MEMORY[0x1E69E5920](v274);
    }
  }

  else
  {
    (*(v344 + 16))(v347, v339, v343);
    sub_1B0394784(v339, v335);
    sub_1B0394784(v335, v333);
    sub_1B03F4FD0(v335, v331);
    v87 = (v333 + *(v329 + 20));
    v154 = *v87;
    v155 = *(v87 + 1);
    sub_1B039480C(v333);
    v157 = 24;
    v169 = 7;
    v88 = swift_allocObject();
    v89 = v155;
    v160 = v88;
    *(v88 + 16) = v154;
    *(v88 + 20) = v89;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v90 = swift_allocObject();
    v91 = v155;
    v156 = v90;
    *(v90 + 16) = v154;
    *(v90 + 20) = v91;

    v168 = 32;
    v92 = swift_allocObject();
    v93 = v156;
    v165 = v92;
    *(v92 + 16) = v303;
    *(v92 + 24) = v93;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v331);
    v158 = swift_allocObject();
    *(v158 + 16) = v350;

    v94 = swift_allocObject();
    v95 = v158;
    v170 = v94;
    *(v94 + 16) = v304;
    *(v94 + 24) = v95;

    v190 = sub_1B0E43988();
    v191 = sub_1B0E458E8();
    v167 = 17;
    v172 = swift_allocObject();
    v162 = 16;
    *(v172 + 16) = 16;
    v173 = swift_allocObject();
    v164 = 4;
    *(v173 + 16) = 4;
    v96 = swift_allocObject();
    v159 = v96;
    *(v96 + 16) = v278;
    *(v96 + 24) = 0;
    v97 = swift_allocObject();
    v98 = v159;
    v174 = v97;
    *(v97 + 16) = v305;
    *(v97 + 24) = v98;
    v175 = swift_allocObject();
    *(v175 + 16) = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = 1;
    v99 = swift_allocObject();
    v100 = v160;
    v161 = v99;
    *(v99 + 16) = v306;
    *(v99 + 24) = v100;
    v101 = swift_allocObject();
    v102 = v161;
    v177 = v101;
    *(v101 + 16) = v307;
    *(v101 + 24) = v102;
    v178 = swift_allocObject();
    *(v178 + 16) = v162;
    v179 = swift_allocObject();
    *(v179 + 16) = v164;
    v103 = swift_allocObject();
    v163 = v103;
    *(v103 + 16) = v282;
    *(v103 + 24) = 0;
    v104 = swift_allocObject();
    v105 = v163;
    v180 = v104;
    *(v104 + 16) = v308;
    *(v104 + 24) = v105;
    v181 = swift_allocObject();
    *(v181 + 16) = 0;
    v182 = swift_allocObject();
    *(v182 + 16) = v164;
    v106 = swift_allocObject();
    v107 = v165;
    v166 = v106;
    *(v106 + 16) = v309;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v166;
    v183 = v108;
    *(v108 + 16) = v310;
    *(v108 + 24) = v109;
    v184 = swift_allocObject();
    *(v184 + 16) = 32;
    v185 = swift_allocObject();
    *(v185 + 16) = 8;
    v110 = swift_allocObject();
    v111 = v170;
    v171 = v110;
    *(v110 + 16) = v311;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v171;
    v187 = v112;
    *(v112 + 16) = v312;
    *(v112 + 24) = v113;
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v186 = sub_1B0E46A48();
    v188 = v114;

    v115 = v172;
    v116 = v188;
    *v188 = v313;
    v116[1] = v115;

    v117 = v173;
    v118 = v188;
    v188[2] = v314;
    v118[3] = v117;

    v119 = v174;
    v120 = v188;
    v188[4] = v315;
    v120[5] = v119;

    v121 = v175;
    v122 = v188;
    v188[6] = v316;
    v122[7] = v121;

    v123 = v176;
    v124 = v188;
    v188[8] = v317;
    v124[9] = v123;

    v125 = v177;
    v126 = v188;
    v188[10] = v318;
    v126[11] = v125;

    v127 = v178;
    v128 = v188;
    v188[12] = v319;
    v128[13] = v127;

    v129 = v179;
    v130 = v188;
    v188[14] = v320;
    v130[15] = v129;

    v131 = v180;
    v132 = v188;
    v188[16] = v321;
    v132[17] = v131;

    v133 = v181;
    v134 = v188;
    v188[18] = v322;
    v134[19] = v133;

    v135 = v182;
    v136 = v188;
    v188[20] = v323;
    v136[21] = v135;

    v137 = v183;
    v138 = v188;
    v188[22] = v324;
    v138[23] = v137;

    v139 = v184;
    v140 = v188;
    v188[24] = v325;
    v140[25] = v139;

    v141 = v185;
    v142 = v188;
    v188[26] = v326;
    v142[27] = v141;

    v143 = v187;
    v144 = v188;
    v188[28] = v327;
    v144[29] = v143;
    sub_1B0394964();

    if (os_log_type_enabled(v190, v191))
    {
      v145 = v354;
      v147 = sub_1B0E45D78();
      v146[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v148 = sub_1B03949A8(0);
      v149 = sub_1B03949A8(1);
      v150 = &v376;
      v376 = v147;
      v151 = &v375;
      v375 = v148;
      v152 = &v374;
      v374 = v149;
      sub_1B0394A48(2, &v376);
      sub_1B0394A48(5, v150);
      v372 = v313;
      v373 = v172;
      sub_1B03949FC(&v372, v150, v151, v152);
      v153 = v145;
      if (v145)
      {

        __break(1u);
      }

      else
      {
        v372 = v314;
        v373 = v173;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[12] = 0;
        v372 = v315;
        v373 = v174;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[11] = 0;
        v372 = v316;
        v373 = v175;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[10] = 0;
        v372 = v317;
        v373 = v176;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[9] = 0;
        v372 = v318;
        v373 = v177;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[8] = 0;
        v372 = v319;
        v373 = v178;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[7] = 0;
        v372 = v320;
        v373 = v179;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[6] = 0;
        v372 = v321;
        v373 = v180;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[5] = 0;
        v372 = v322;
        v373 = v181;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[4] = 0;
        v372 = v323;
        v373 = v182;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[3] = 0;
        v372 = v324;
        v373 = v183;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[2] = 0;
        v372 = v325;
        v373 = v184;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[1] = 0;
        v372 = v326;
        v373 = v185;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        v146[0] = 0;
        v372 = v327;
        v373 = v187;
        sub_1B03949FC(&v372, &v376, &v375, &v374);
        _os_log_impl(&dword_1B0389000, v190, v191, "[%.*hhx-%.*X] Could not find failed rename action for mailbox %s", v147, 0x21u);
        sub_1B03998A8(v148);
        sub_1B03998A8(v149);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v190);
    (*(v344 + 8))(v347, v343);
    return MEMORY[0x1E69E5920](v274);
  }
}

uint64_t sub_1B0883208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v39 = 0;
  v4 = _s18MailboxPersistenceVMa();
  v37 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v19 - v37;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v39);
  v41 = &v19 - v40;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v19 - v42;
  v48 = sub_1B0E42E68();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v19 - v51;
  v53 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v19 - v53;
  v55 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v19 - v55;
  v69 = &v19 - v55;
  v68 = v11;
  v57 = *v12;
  v67 = v57;
  v66 = v13;
  v65 = v14;
  MEMORY[0x1E69E5928](v57);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v58 = result;
  if (result)
  {
    v36 = v58;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v57);
    v36 = 0;
  }

  v35 = v36;
  if (v36)
  {
    v34 = v35;
    v32 = v35;
    v64 = v35;
    v16 = [v35 destinationMailboxURL];
    v33 = v16;
    if (v16)
    {
      v31 = v33;
      v30 = v33;
      sub_1B0E42DE8();
      (*(v49 + 32))(v43, v54, v48);
      (*(v49 + 56))(v43, 0, 1, v48);
      MEMORY[0x1E69E5920](v30);
    }

    else
    {
      (*(v49 + 56))(v43, 1, 1, v48);
    }

    if ((*(v49 + 48))(v43, 1, v48) == 1)
    {
      sub_1B06E3800(v43);
      return MEMORY[0x1E69E5920](v32);
    }

    else
    {
      v17 = v38;
      (*(v49 + 32))(v56, v43, v48);
      v25 = v44 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
      v26 = &v61;
      swift_beginAccess();
      sub_1B03F4D78(v25, v17);
      swift_endAccess();
      v27 = *(v49 + 16);
      v28 = v49 + 16;
      v27(v41, v56, v48);
      v18 = *(v49 + 56);
      v29 = 1;
      v18(v41, 0);
      sub_1B07BF670(v41, &v62);
      sub_1B06E3800(v41);
      sub_1B03F4F08(v38);
      v59[2] = v62;
      v60 = v63 & 1 & v29;
      v24 = v60 == 0;
      if (v60)
      {
        v27(v52, v56, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36F0, &qword_1B0E9EF80);
        sub_1B0E454D8();
        v23 = *(v49 + 8);
        v22 = v49 + 8;
        v23(v54, v48);
        MEMORY[0x1E69E5928](v32);
        v20 = [v32 persistentID];
        MEMORY[0x1E69E5920](v32);
        v21 = v59;
        v59[0] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
        sub_1B0E454D8();
        MEMORY[0x1E69E5920](v59[1]);
        v23(v56, v48);
      }

      else
      {
        (*(v49 + 8))(v56, v48);
      }

      return MEMORY[0x1E69E5920](v32);
    }
  }

  return result;
}

uint64_t sub_1B0883A04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0E42E68();
  sub_1B07BAD2C();
  v4 = sub_1B0E454A8();

  return v4;
}

uint64_t sub_1B0883A8C()
{
  sub_1B0E45C48();
  sub_1B074E39C();
  return sub_1B0E454A8();
}

uint64_t sub_1B0883B00(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 8);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

BOOL sub_1B0883B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B08A32FC();
  if (sub_1B0E46AE8())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = static OpaqueMailboxID.== infix(_:_:)(a2, a3, a5, a6);

    return (v8 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0883C9C()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C0, &qword_1B0E9E040);
  sub_1B08A30BC();
  sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
  sub_1B08A3144();
  sub_1B0E454B8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E454B8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27D0, &qword_1B0E9E050);
  sub_1B08A31CC();
  return sub_1B0E454B8();
}

uint64_t sub_1B0883ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0u;
  v10 = 0u;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v9 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v9 + 1) = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v10 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v10 + 1) = a4;

  sub_1B071F9F0(&v9);
  return a1;
}

BOOL sub_1B0883FCC()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  sub_1B08A63E8();
  v5 = sub_1B0E44758();

  if (v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08A658C();
    v4 = sub_1B0E44758();

    if (v4)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v3 = sub_1B0E44758();

      if (v3)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B08A34FC();
        v2 = sub_1B0E44758();

        return (v2 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B0884204(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  return sub_1B0883FCC();
}

uint64_t sub_1B0884248(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27D8, &qword_1B0E9E058);
  sub_1B0E46A48();
  sub_1B0451F2C();
  v10 = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27E0, &qword_1B0E9E060);
  sub_1B0E46A48();
  v8 = sub_1B0E445D8();
  sub_1B0E46A48();
  v9 = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27E8, &qword_1B0E9E068);
  sub_1B0E46A48();
  v2 = sub_1B0E445D8();
  *&v12 = sub_1B0883ED4(v10, v8, v9, v2);
  *(&v12 + 1) = v3;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E45018();
  v7 = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03F4F08(a2);

  sub_1B071F9F0(&v12);
  return v7;
}

uint64_t sub_1B08846AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B088467C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B08846DC(id *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v83 = 0;
  v82 = 0;
  v59 = *a1;
  v91 = v59;
  v90 = a2;
  v89 = a3;
  v63 = [v59 mailboxName];
  v3 = sub_1B0E44AD8();
  v60 = v4;
  v64 = sub_1B07C12C0(v3, v4);
  v61 = v64;
  v62 = v5;

  if (!v64)
  {
    result = v56;
    v53 = v56;
    return result;
  }

  v54 = v61;
  v55 = v62;
  v50 = v62;
  v51 = v61;
  v87 = v61;
  v88 = v62;
  v7 = [v59 actionType];
  v52 = v7;
  if (v7 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0884638();
    v67 = v8;
    v68 = 0;
    v65 = v51;
    v66 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
    sub_1B0E44788();
    v49 = v56;
  }

  else if (v52 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0884638();
    v47 = v10;
    v11 = [v59 mailboxID];
    v48 = sub_1B039BF24(v11, v12, v13, v14, v15, v16, v17, v18);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v47);
    v71 = v19;
    v72 = v20;
    v73 = v21;
    v69 = v51;
    v70 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C0, &unk_1B0E9E070);
    sub_1B0E44788();
    v49 = v56;
  }

  else if (v52 == 3)
  {
    v46 = [v59 renamedMailboxName];
    if (v46)
    {
      v45 = v46;
      v40 = v46;
      v41 = sub_1B0E44AD8();
      v42 = v22;

      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    v38 = v56;
    v84[0] = v43;
    v84[1] = v44;
    v36 = &v29;
    MEMORY[0x1EEE9AC00](&v29);
    v37 = v28;
    v28[2] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v25 = v38;
    sub_1B039A570(sub_1B08A6924, v37, v24, MEMORY[0x1E69E73E0], &type metadata for MailboxName, v26, &v85);
    v39 = v25;
    if (v25)
    {
      result = 0;
      __break(1u);
      return result;
    }

    sub_1B03B1198(v84);
    v34 = v85;
    v35 = v86;
    if (v85)
    {
      v32 = v34;
      v33 = v35;
      v30 = v35;
      v31 = v34;
      v82 = v34;
      v83 = v35;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0884638();
      v80 = v27;
      v81 = 0;
      v78 = v31;
      v79 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
      sub_1B0E44788();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v76 = v51;
      v77 = v50;
      v74 = v31;
      v75 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2968, &qword_1B0E9EF78);
      sub_1B0E44788();
    }

    v49 = v39;
  }

  else
  {
    v49 = v56;
  }

  v29 = v49;

  result = v29;
  v53 = v29;
  return result;
}

uint64_t sub_1B0884D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B07C12C0(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B0884D88(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v13 = a3;
  v10 = a1;
  v11 = 0;
  v19 = a1;
  v20 = a2;
  v17 = a3;
  v18 = a4;
  v14 = MailboxName.isInbox.getter(a1, a2);
  v15 = MailboxName.isInbox.getter(v13, v12);
  if (v14)
  {
    v8 = (v15 & 1) == 0;
    v9 = v11;
  }

  else if (v15)
  {
    v8 = 0;
    v9 = v11;
  }

  else
  {
    v4 = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6[1] = v6;
    MEMORY[0x1EEE9AC00](v6);
    sub_1B0E45208();
    v7 = v4;

    v8 = v16;
    v9 = v7;
  }

  return v8 & 1;
}

uint64_t sub_1B0884F5C()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E45208();
  if (!v0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0885024@<X0>(BOOL *a1@<X8>)
{
  sub_1B0E450E8();
  sub_1B0E450E8();
  sub_1B0E46B78();
  __s1 = sub_1B0E450C8();
  v1 = sub_1B0E450C8();
  result = memcmp(__s1, v1, v7);
  if ((result & 0x80000000) != 0)
  {
    *a1 = 1;
  }

  else if (result <= 0)
  {
    v4 = sub_1B0E450E8();
    v3 = sub_1B0E450E8();
    result = v4;
    *a1 = v4 < v3;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1B0885194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = v7;
  v50 = a7;
  v49 = a6;
  v48 = a5;
  v47 = a4;
  v46 = a3;
  v45 = a2;
  v44 = a1;
  v63 = 0;
  v59 = 0;
  v58 = 0;
  v71 = a6;
  v70 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v65 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v51 = 0;
  v52 = sub_1B0E44F58();
  v36 = v52;

  v64[1] = v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64[0] = v46;
  v37 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v20[2] = v8;
  v20[3] = v50;
  v20[4] = v44;
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v39 = v19;
  v19[2] = sub_1B08A33D8;
  v19[3] = v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C0, &unk_1B0E9E070);
  sub_1B07C8614();
  v10 = sub_1B0E44F58();
  v41 = 0;
  v42 = v10;
  v29 = v10;
  sub_1B039E440(v64);
  v63 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61 = v47;
  v60 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v11 = v46;
  v12 = v47;
  v31 = v19;
  v33 = &v19[-10];
  v19[-8] = v13;
  v19[-7] = v14;
  v19[-6] = v15;
  v19[-5] = v16;
  v19[-4] = v11;
  v19[-3] = v12;
  v19[-2] = v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
  v32 = v35;
  sub_1B07C8554();
  sub_1B0E44FD8();

  sub_1B039E440(&v61);
  v24 = v62;
  v23 = v62;
  v59 = v62;
  v25 = &unk_1F26D76E8;
  v26 = sub_1B0E45238();
  v28 = sub_1B0E45238();
  v27 = v28;

  v58 = v28;
  v57 = v28;
  sub_1B08A3474();
  if (sub_1B0E45748())
  {

    v22 = 1;
  }

  else
  {
    sub_1B08896A0();

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t *sub_1B0885834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(__b, 0, sizeof(__b));
  v21 = 0;
  v22 = 0;
  v32 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v27 = a6;
  v26 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  sub_1B0E445C8();
  memcpy(__b, v33, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2808, &qword_1B0E9E088);
    sub_1B0E446D8();
    v10 = v23;
    v11 = v24;
    if (!v23)
    {
      break;
    }

    v21 = v23;
    v22 = v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v20 = v8;
    v18[2] = v10;
    v19 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    sub_1B08A3144();
    sub_1B08A34FC();
    v9 = sub_1B0E450A8();
    sub_1B039E440(&v20);
    if ((v9 & 1) == 0)
    {
      sub_1B07C5844(v10, v11, a6, v18);
    }
  }

  return sub_1B06B91B0(__b);
}

uint64_t sub_1B0885A84()
{
  v7 = sub_1B0888AF4();
  (MEMORY[0x1E69E5928])();
  v9 = [v8 identifier];
  if (v9)
  {
    sub_1B0E44AD8();
    v5 = v0;
    MEMORY[0x1E69E5920](v9);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = sub_1B0E44AC8();
  (MEMORY[0x1E69E5920])();

  v3 = [v7 allMailboxActionForAccountID_];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v7);
  sub_1B08A3574();
  v4 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t sub_1B0885C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v259 = &v322;
  v297 = a8;
  v296 = a7;
  v285 = a6;
  v284 = a5;
  v283 = a4;
  v282 = a3;
  v292 = a2;
  v288 = a1;
  v260 = a13;
  v264 = a12;
  v261 = a12;
  v293 = a11;
  v262 = a11;
  v298 = a9;
  v263 = a9;
  v299 = a10;
  v281 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0u;
  v349 = 0u;
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v341 = 0;
  v340 = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335[1] = 0;
  v335[0] = 0;
  v318 = 0;
  v265 = sub_1B0E439A8();
  v266 = *(v265 - 8);
  v267 = v266;
  v268 = *(v266 + 64);
  v14 = MEMORY[0x1EEE9AC00](0);
  v270 = (v268 + 15) & 0xFFFFFFFFFFFFFFF0;
  v269 = v117 - v270;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v271 = v117 - v270;
  v272 = *(v16 - 8);
  v273 = v272;
  v17 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v274 = v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = _s6LoggerVMa();
  v278 = *(*(v275 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v281);
  v280 = (v278 + 15) & 0xFFFFFFFFFFFFFFF0;
  v276 = v117 - v280;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v277 = v117 - v280;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v279 = v117 - v280;
  MEMORY[0x1EEE9AC00](v21);
  v300 = v117 - v280;
  v22 = *(*(_s18MailboxPersistenceVMa() - 8) + 64);
  MEMORY[0x1EEE9AC00](v281);
  v295 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MailboxUpdateTree();
  v286 = *(*(updated - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](updated);
  v287 = (v117 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v294 = (v117 - v26);
  v289 = (v117 - v26);
  v352 = v288;
  v351 = v27;
  *&v349 = v28;
  *(&v349 + 1) = v29;
  *&v350 = v30;
  *(&v350 + 1) = v31;
  v346 = v32;
  v347 = v33;
  v348 = v298;
  v345 = v299;
  v344 = v34;
  v343 = v13;
  v290 = swift_allocBox();
  v291 = v35;
  v342 = v35;
  v36 = v13;
  sub_1B03F4D78(v292, v295);
  sub_1B07BA724(v296);

  sub_1B0394784(v293, v300);
  sub_1B08897D0(v301, v295, v296, v297, v298, v299, v300, v294);
  v302 = 0;
  v303 = 0;
  sub_1B08A364C(v289, v291);
  v37 = sub_1B0889C84();
  v255 = v37;
  v340 = v37;
  (*(v273 + 16))(v274, v288, v261);
  sub_1B07BA724(v296);
  v256 = v117;
  MEMORY[0x1EEE9AC00](v117);
  v38 = v296;
  v39 = v297;
  v117[-6] = v40;
  v117[-5] = v41;
  LOBYTE(v117[-4]) = v42;
  v117[-3] = v38;
  v117[-2] = v39;
  v117[-1] = v43;
  v44 = sub_1B0E44FC8();
  v257 = 0;
  v258 = v44;
  v193 = v44;
  sub_1B07BA794(v296);
  v339 = v193;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2810, &qword_1B0E9E090);
  v194 = v195;
  v196 = sub_1B08A38A4();
  v197 = &v339;
  v45 = sub_1B088C478(v296, v297, v263, v195);
  v46 = v271;
  v199 = v45;
  v198 = v45;
  sub_1B039E440(v197);
  v338 = v199;
  (*(v267 + 16))(v46, v262, v265);
  sub_1B0394784(v262, v279);
  sub_1B0394784(v279, v277);
  sub_1B03F4FD0(v279, v276);
  v47 = (v277 + *(v275 + 20));
  v201 = *v47;
  v202 = *(v47 + 1);
  sub_1B039480C(v277);
  v200 = 24;
  v232 = 7;
  v48 = swift_allocObject();
  v49 = v202;
  v212 = v48;
  *(v48 + 16) = v201;
  *(v48 + 20) = v49;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v50 = swift_allocObject();
  v51 = v202;
  v203 = v50;
  *(v50 + 16) = v201;
  *(v50 + 20) = v51;

  v231 = 32;
  v52 = swift_allocObject();
  v53 = v203;
  v224 = v52;
  *(v52 + 16) = sub_1B039BBE8;
  *(v52 + 24) = v53;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v276);

  v254 = sub_1B0E43988();
  v204 = v254;
  v253 = sub_1B0E458C8();
  v205 = v253;
  v228 = 17;
  v235 = swift_allocObject();
  v206 = v235;
  v215 = 16;
  *(v235 + 16) = 16;
  v236 = swift_allocObject();
  v207 = v236;
  v222 = 4;
  *(v236 + 16) = 4;
  v54 = swift_allocObject();
  v208 = v54;
  *(v54 + 16) = sub_1B0394C30;
  v218 = 0;
  *(v54 + 24) = 0;
  v55 = swift_allocObject();
  v56 = v208;
  v237 = v55;
  v209 = v55;
  *(v55 + 16) = sub_1B0394C24;
  *(v55 + 24) = v56;
  v238 = swift_allocObject();
  v210 = v238;
  v227 = 0;
  *(v238 + 16) = 0;
  v239 = swift_allocObject();
  v211 = v239;
  *(v239 + 16) = 1;
  v57 = swift_allocObject();
  v58 = v212;
  v213 = v57;
  *(v57 + 16) = sub_1B039BA2C;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v213;
  v240 = v59;
  v214 = v59;
  *(v59 + 16) = sub_1B039BA88;
  *(v59 + 24) = v60;
  v241 = swift_allocObject();
  v216 = v241;
  *(v241 + 16) = v215;
  v242 = swift_allocObject();
  v217 = v242;
  *(v242 + 16) = v222;
  v61 = swift_allocObject();
  v62 = v218;
  v219 = v61;
  *(v61 + 16) = sub_1B039BB94;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v219;
  v243 = v63;
  v220 = v63;
  *(v63 + 16) = sub_1B0394C24;
  *(v63 + 24) = v64;
  v244 = swift_allocObject();
  v221 = v244;
  *(v244 + 16) = v227;
  v245 = swift_allocObject();
  v223 = v245;
  *(v245 + 16) = v222;
  v65 = swift_allocObject();
  v66 = v224;
  v225 = v65;
  *(v65 + 16) = sub_1B039BBA0;
  *(v65 + 24) = v66;
  v67 = swift_allocObject();
  v68 = v225;
  v246 = v67;
  v226 = v67;
  *(v67 + 16) = sub_1B039BC08;
  *(v67 + 24) = v68;
  v247 = swift_allocObject();
  v229 = v247;
  *(v247 + 16) = v227;
  v248 = swift_allocObject();
  v230 = v248;
  *(v248 + 16) = 8;
  v69 = swift_allocObject();
  v70 = v290;
  v233 = v69;
  *(v69 + 16) = sub_1B08A392C;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  v72 = v233;
  v251 = v71;
  v234 = v71;
  *(v71 + 16) = sub_1B03B0DF8;
  *(v71 + 24) = v72;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v249 = sub_1B0E46A48();
  v250 = v73;

  v74 = v235;
  v75 = v250;
  *v250 = sub_1B0398F5C;
  v75[1] = v74;

  v76 = v236;
  v77 = v250;
  v250[2] = sub_1B0398F5C;
  v77[3] = v76;

  v78 = v237;
  v79 = v250;
  v250[4] = sub_1B0399178;
  v79[5] = v78;

  v80 = v238;
  v81 = v250;
  v250[6] = sub_1B0398F5C;
  v81[7] = v80;

  v82 = v239;
  v83 = v250;
  v250[8] = sub_1B0398F5C;
  v83[9] = v82;

  v84 = v240;
  v85 = v250;
  v250[10] = sub_1B039BA94;
  v85[11] = v84;

  v86 = v241;
  v87 = v250;
  v250[12] = sub_1B0398F5C;
  v87[13] = v86;

  v88 = v242;
  v89 = v250;
  v250[14] = sub_1B0398F5C;
  v89[15] = v88;

  v90 = v243;
  v91 = v250;
  v250[16] = sub_1B0399178;
  v91[17] = v90;

  v92 = v244;
  v93 = v250;
  v250[18] = sub_1B0398F5C;
  v93[19] = v92;

  v94 = v245;
  v95 = v250;
  v250[20] = sub_1B0398F5C;
  v95[21] = v94;

  v96 = v246;
  v97 = v250;
  v250[22] = sub_1B03991EC;
  v97[23] = v96;

  v98 = v247;
  v99 = v250;
  v250[24] = sub_1B0398F5C;
  v99[25] = v98;

  v100 = v248;
  v101 = v250;
  v250[26] = sub_1B0398F5C;
  v101[27] = v100;

  v102 = v250;
  v103 = v251;
  v250[28] = sub_1B0399260;
  v102[29] = v103;
  sub_1B0394964();

  if (os_log_type_enabled(v254, v253))
  {
    v104 = v257;
    v187 = sub_1B0E45D78();
    v183 = v187;
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v185 = 0;
    v188 = sub_1B03949A8(0);
    v186 = v188;
    v189 = sub_1B03949A8(v185);
    v308 = v187;
    v307 = v188;
    v306 = v189;
    v190 = &v308;
    sub_1B0394A48(0, &v308);
    sub_1B0394A48(5, v190);
    v304 = sub_1B0398F5C;
    v305 = v206;
    sub_1B03949FC(&v304, v190, &v307, &v306);
    v191 = v104;
    v192 = v104;
    if (v104)
    {
      v181 = 0;

      __break(1u);
    }

    else
    {
      v304 = sub_1B0398F5C;
      v305 = v207;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v179 = 0;
      v180 = 0;
      v304 = sub_1B0399178;
      v305 = v209;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v177 = 0;
      v178 = 0;
      v304 = sub_1B0398F5C;
      v305 = v210;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v175 = 0;
      v176 = 0;
      v304 = sub_1B0398F5C;
      v305 = v211;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v173 = 0;
      v174 = 0;
      v304 = sub_1B039BA94;
      v305 = v214;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v171 = 0;
      v172 = 0;
      v304 = sub_1B0398F5C;
      v305 = v216;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v169 = 0;
      v170 = 0;
      v304 = sub_1B0398F5C;
      v305 = v217;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v167 = 0;
      v168 = 0;
      v304 = sub_1B0399178;
      v305 = v220;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v165 = 0;
      v166 = 0;
      v304 = sub_1B0398F5C;
      v305 = v221;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v163 = 0;
      v164 = 0;
      v304 = sub_1B0398F5C;
      v305 = v223;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v161 = 0;
      v162 = 0;
      v304 = sub_1B03991EC;
      v305 = v226;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v159 = 0;
      v160 = 0;
      v304 = sub_1B0398F5C;
      v305 = v229;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v157 = 0;
      v158 = 0;
      v304 = sub_1B0398F5C;
      v305 = v230;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v155 = 0;
      v156 = 0;
      v304 = sub_1B0399260;
      v305 = v234;
      sub_1B03949FC(&v304, &v308, &v307, &v306);
      v153 = 0;
      v154 = 0;
      _os_log_impl(&dword_1B0389000, v204, v205, "[%.*hhx-%.*X] Found %ld local mailbox(es).", v183, 0x21u);
      v152 = 0;
      sub_1B03998A8(v186);
      sub_1B03998A8(v189);
      sub_1B0E45D58();

      v182 = v153;
    }
  }

  else
  {
    v105 = v257;

    v182 = v105;
  }

  v150 = v182;

  (*(v267 + 8))(v271, v265);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v148 = sub_1B0451F2C();
  v145 = v148;
  v147 = &type metadata for MailboxName;
  v146 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v337 = v146;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v149 = sub_1B0E446B8();
  v336 = v149;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v334 = v198;
  sub_1B08A3934();
  sub_1B0E45798();
  for (i = v150; ; i = v133)
  {
    v144 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2818, &qword_1B0E9E098);
    sub_1B0E46518();
    v324 = *v259;
    v106 = v259[1];
    v107 = v259[2];
    v108 = v259[3];
    v328 = v323;
    v327 = v108;
    v326 = v107;
    v325 = v106;
    v329 = v324;
    v333 = v323;
    v332 = v108;
    v331 = v107;
    v330 = v106;
    if (!v324)
    {
      break;
    }

    v353[0] = v329;
    v354 = v333;
    v353[3] = v332;
    v353[2] = v331;
    v353[1] = v330;
    v315 = v146;
    v313 = RemoteMailbox.name.getter();
    v314 = v109;
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    v140 = sub_1B08A3144();
    v141 = sub_1B08A34FC();
    v142 = &v313;
    v143 = sub_1B0E450A8();
    sub_1B039E440(v142);
    if (v143)
    {
      goto LABEL_12;
    }

    v312 = v149;
    v310 = RemoteMailbox.name.getter();
    v311 = v110;
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2820, &qword_1B0E9E0A0);
    sub_1B08A4004();
    v137 = &v310;
    v138 = sub_1B0E450A8();
    sub_1B039E440(v137);
    if (v138)
    {
LABEL_12:
      sub_1B039E440(&v329);
      v133 = v144;
    }

    else
    {
      v111 = v144;
      sub_1B03BB0B4(&v329, &v309);
      v134 = v117;
      MEMORY[0x1EEE9AC00](v117);
      v117[-2] = v112;
      v117[-1] = v353;
      sub_1B083F2C4(sub_1B08A408C, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v113, MEMORY[0x1E69E7CA8]);
      v135 = v111;
      if (v111)
      {
        sub_1B039E440(&v329);
        __break(1u);
        goto LABEL_17;
      }

      v132 = &v329;
      sub_1B039E440(&v329);
      sub_1B039E440(v132);
      v133 = v135;
    }
  }

  v114 = v144;
  sub_1B039E440(v335);
  v121 = &v321;
  v130 = 0;
  swift_beginAccess();
  sub_1B088D7A8();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v128 = &type metadata for MailboxName;
  v123 = &unk_1F26D76E8;
  v122 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v320 = v122;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C0, &qword_1B0E9E040);
  v127 = sub_1B08A30BC();
  v125 = sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v124 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v319 = v124;
  v129 = sub_1B0E454B8();
  v318 = v129;
  v317[4] = v198;
  v317[3] = sub_1B0E44588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E44FD8();
  v131 = v114;
  if (!v114)
  {
    v118 = v317[5];
    v117[97] = v317;
    v119 = 0;
    swift_beginAccess();
    sub_1B088DA10(v118, v129);
    v115 = v287;
    swift_endAccess();

    [v301 resetSpecialMailboxes];
    v120 = &v316;
    swift_beginAccess();
    sub_1B08A39BC(v291, v115);
    swift_endAccess();
    sub_1B088DFA4();
    sub_1B08A3DE8(v287);

    return v131;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B0888858(id *a1, uint64_t a2, int a3)
{
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v14 = *a1;
  v33 = v14;
  v31 = a2;
  v32 = a3;
  v30 = [v14 actionType];
  v29 = 1;
  type metadata accessor for EDMailboxActionType();
  sub_1B08A6950();
  v16 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((v16 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v10 = [v14 mailboxName];
  v3 = sub_1B0E44AD8();
  v11 = sub_1B07C10E4(v3, v4);
  v12 = v5;
  MEMORY[0x1E69E5920](v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = a2;
  v28 = a3;
  v23 = v11;
  v24 = v12;
  sub_1B08A6A60(&v27, &v25);
  if (v11)
  {
    sub_1B08A6A60(&v23, &v21);
    if (v25)
    {
      v19 = v21;
      v20 = v22;
      v17 = v25;
      v18 = v26;
      if ((v22 | (v22 << 32)) == (v26 | (v26 << 32)))
      {
        v9 = sub_1B04520BC(v21, v25);
      }

      else
      {
        v9 = 0;
      }

      sub_1B039E440(&v17);
      sub_1B039E440(&v19);
      sub_1B039E440(&v23);
      v8 = v9;
      goto LABEL_12;
    }

    sub_1B039E440(&v21);
  }

  else if (!v25)
  {
    sub_1B039E440(&v23);
    v8 = 1;
    goto LABEL_12;
  }

  sub_1B06E38F8(&v23);
  v8 = 0;
LABEL_12:

  v7 = v8;
LABEL_16:
  MEMORY[0x1E69E5920](v14);

  return v7 & 1;
}

id sub_1B0888AF4()
{
  v12 = [v0 library];
  MEMORY[0x1E69E5928](v12);
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    LOBYTE(v2) = 2;
    v4 = 494;
    LODWORD(v6) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v10 = [v11 persistence];
  MEMORY[0x1E69E5920](v11);
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    LOBYTE(v3) = 2;
    v5 = 494;
    LODWORD(v7) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v8 = [v9 mailboxActionPersistence];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v12);
  return v8;
}

BOOL sub_1B0888CC8(id *a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  v6 = *a1;
  v23 = v6;
  v22 = a2;
  v21 = [v6 actionType];
  v20 = 3;
  type metadata accessor for EDMailboxActionType();
  sub_1B08A6950();
  v7 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v6);
  if ((v7 & 1) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  MailboxRowID.init(_:)([v6 mailboxID], &v18);
  v16 = v18;
  v17 = v19 & 1;
  v14 = a2;
  v15 = 0;
  sub_1B08A69D0(&v16, v11);
  sub_1B08A69D0(&v14, &v12);
  if (v11[8])
  {
    if (v13)
    {
      v4 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1B08A69D0(v11, &v10);
  if (v13)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_8;
  }

  v9 = v10;
  v8 = v12;
  v4 = static MailboxRowID.== infix(_:_:)(&v9, &v8);
LABEL_8:
  v3 = v4;
LABEL_12:
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1B0888EA0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v8 = a4;
  *(&v8 + 1) = a5;
  memcpy(__dst, a1, sizeof(__dst));
  v12 = a2;
  v13 = a3;
  v14 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = RemoteMailbox.name.getter();
  v11 = v5;
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(&v10);
}

uint64_t sub_1B0888F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E45028();

  if (v5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1B08890AC(const void *a1, uint64_t a2, int a3)
{
  memcpy(__dst, a1, sizeof(__dst));
  v7 = RemoteMailbox.name.getter();
  v8 = static MailboxName.== infix(_:_:)(v7, v3, a2, a3);

  return v8 & 1;
}

uint64_t sub_1B0889144@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a3 = result;
  *(a3 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B08891B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v28 = a7;
  v29 = a3;
  v30 = a1;
  v41 = a9;
  v31 = a9;
  v32 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0u;
  v57 = 0u;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v49 = 0;
  v48 = 0;
  v64 = a8;
  v63 = a1;
  v38 = *a2;
  v33 = v38;
  v39 = *(a2 + 8);
  v34 = v39;
  v36 = *(a2 + 16);
  v35 = v36;
  v60 = v38;
  LODWORD(v61) = v39;
  v62 = v36;
  v59 = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  *&v58 = a6;
  *(&v58 + 1) = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v38;
  v56 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = v36;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = v38;
  v45 = v39;
  v42 = v37;
  v43 = sub_1B0E45028();
  if (v37)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v27 = v43;

    if (v43)
    {
      v46 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
      sub_1B0E452E8();

      v26 = v42;
      return result;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v33;
    v51 = v34;
    sub_1B0451F2C();
    v23 = &v50;
    sub_1B0E44778();
    sub_1B039E440(&v50);
    v24 = v52;
    v25 = v53;
    if (v52)
    {
      v21 = v24;
      v22 = v25;
      v15 = v25;
      v17 = v24;
      v14 = v42;
      v48 = v24;
      v49 = v25;

      v10 = v42;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      v11 = sub_1B0E45028();
      v18 = v10;
      v19 = v11;
      v13 = v19;

      if ((v13 & 1) == 0)
      {
        v47 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
        sub_1B0E452E8();

        result = v18;
        v26 = v18;
        return result;
      }

      v20 = v18;
    }

    else
    {

      v20 = v42;
    }

    v12 = v20;

    result = v12;
    v26 = v12;
  }

  return result;
}

uint64_t sub_1B08896A0()
{
  v3 = sub_1B0888AF4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
  v5 = sub_1B039A494();
  v0 = sub_1B08A3474();
  sub_1B039CA88(sub_1B07CAF1C, 0, v4, v5, MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v6);
  v2 = sub_1B0E451A8();

  [v3 deleteMailboxActions_];
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t *sub_1B08897D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v45 = a8;
  v64 = a1;
  v63 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v52 = 0;
  updated = type metadata accessor for MailboxUpdateTree();
  v49 = *(*(updated - 1) + 64);
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v47 = (v38 - v46);
  v48 = v46;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v56 = (v38 - v48);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v55 = (v38 - v50);
  v75 = v38 - v50;
  v74 = v64;
  v73 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v69 = v14;
  v68 = v15;
  v51 = *(v16 + 40);
  v17 = sub_1B0E46A48();
  v18 = v55;
  v19 = v17;
  v20 = updated;
  *(v55 + v51) = v19;
  v21 = (v18 + v20[11]);
  *v21 = 0;
  v21[1] = 0;
  v53 = v20[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v22 = sub_1B0E46A48();
  v23 = updated;
  v24 = v55;
  v25 = v56;
  v26 = v57;
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v61;
  v31 = v62;
  v32 = v63;
  v33 = v22;
  v34 = v64;
  *(v55 + v53) = v33;
  *(v24 + v23[13]) = 0;
  sub_1B088E5C0(v34, v32, v26, v27, v28, v29, 0, v30, v25);
  v65 = v31;
  v66 = v31;
  if (!v31)
  {
    sub_1B039E440((v55 + updated[10]));
    sub_1B08A40BC((v55 + updated[11]));
    sub_1B039E440((v55 + updated[12]));
    sub_1B08A364C(v56, v55);
    v44 = v65;
LABEL_3:
    v43 = v44;
    sub_1B08A39BC(v55, v45);
    sub_1B039480C(v61);

    sub_1B07BA794(v57);
    sub_1B03F4F08(v63);
    MEMORY[0x1E69E5920](v64);
    return sub_1B08A3DE8(v55);
  }

  v41 = v66;
  v39 = 0;
  v36 = v66;
  v37 = v39;
  v67 = v41;
  sub_1B088E5C0(v64, v63, v57, v58, v59, v60, 1, v61, v47);
  v42 = v37;
  v40 = v37;
  if (!v37)
  {
    sub_1B039E440((v55 + updated[10]));
    sub_1B08A40BC((v55 + updated[11]));
    sub_1B039E440((v55 + updated[12]));
    sub_1B08A364C(v47, v55);

    v44 = v42;
    goto LABEL_3;
  }

  v38[1] = v40;

  sub_1B039480C(v61);

  sub_1B07BA794(v57);
  sub_1B03F4F08(v63);
  MEMORY[0x1E69E5920](v64);
  sub_1B039E440((v55 + updated[10]));
  sub_1B08A40BC((v55 + updated[11]));
  return sub_1B039E440((v55 + updated[12]));
}

BOOL sub_1B0889C84()
{
  v1 = *MEMORY[0x1E6959B40];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959B40]);
  sub_1B0E44AD8();
  v3 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](v1);
  v4 = [v2 isEnabledForDataclass_];
  MEMORY[0x1E69E5920](v3);
  return (v4 & 1) == 0;
}

uint64_t sub_1B0889D50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v368 = a1;
  v376 = a3;
  v377 = a4;
  v378 = a5;
  v379 = a6;
  v380 = a7;
  v299 = sub_1B039BBE8;
  v300 = sub_1B08A68C0;
  v301 = sub_1B0394C30;
  v302 = sub_1B0394C24;
  v303 = sub_1B039BA2C;
  v304 = sub_1B039BA88;
  v305 = sub_1B039BB94;
  v306 = sub_1B0394C24;
  v307 = sub_1B039BBA0;
  v308 = sub_1B039BC08;
  v309 = 0x786F626C69616DLL;
  v310 = sub_1B06BA324;
  v311 = sub_1B06E395C;
  v312 = sub_1B039BCF8;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0399178;
  v316 = sub_1B0398F5C;
  v317 = sub_1B0398F5C;
  v318 = sub_1B039BA94;
  v319 = sub_1B0398F5C;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0399178;
  v322 = sub_1B0398F5C;
  v323 = sub_1B0398F5C;
  v324 = sub_1B03991EC;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0398F5C;
  v327 = sub_1B03993BC;
  v328 = sub_1B0398F5C;
  v329 = sub_1B0398F5C;
  v330 = sub_1B039BCEC;
  v331 = sub_1B039BBE8;
  v332 = sub_1B08A68C0;
  v333 = sub_1B0394C24;
  v334 = sub_1B039BA2C;
  v335 = sub_1B039BA88;
  v336 = sub_1B0394C24;
  v337 = sub_1B039BBA0;
  v338 = sub_1B039BC08;
  v339 = sub_1B06BA324;
  v340 = sub_1B06E395C;
  v341 = sub_1B039BCF8;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0399178;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B039BA94;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B0399178;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B03991EC;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B03993BC;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BCEC;
  v406 = 0;
  v405 = 0;
  v404 = 0;
  v401 = 0;
  v402 = 0;
  v403 = 0;
  v360 = 0;
  v361 = _s6LoggerVMa();
  v362 = (*(*(v361 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v363 = &v149 - v362;
  v364 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v365 = &v149 - v364;
  v366 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v367 = &v149 - v366;
  v369 = sub_1B0E439A8();
  v370 = *(v369 - 8);
  v371 = v369 - 8;
  v372 = (*(v370 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v369);
  v373 = &v149 - v372;
  v374 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v149 - v372);
  v375 = &v149 - v374;
  memcpy(__dst, v13, 0x42uLL);
  v406 = a2;
  v405 = v376;
  v404 = v377 & 1;
  v401 = v378;
  v402 = v379;
  v403 = v380;
  v383 = __dst[0];
  v381 = __dst[1];
  v382 = BYTE4(__dst[1]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v399 = v383;
  LODWORD(v400) = v381;
  BYTE4(v400) = v382;
  v384 = sub_1B07C1318(v383, v400);

  if (v384)
  {
    v294 = v408;
    *v408 = __dst[0];
    *&v408[5] = *(__dst + 5);
    sub_1B06E38A8(v408, &v392);
    sub_1B06E38A8(v294, &v391);
    v296 = *v408;
    v295 = *&v408[8];
    sub_1B039E440(v294);
    v297 = sub_1B0876B40(v296, v295, v378, v379, v380, v377 & 1);

    if (v297)
    {
      v292 = 1;
      v293 = v298;
    }

    else
    {
      (*(v370 + 16))(v375, v376, v369);
      sub_1B0394784(v376, v367);
      sub_1B0394784(v367, v365);
      sub_1B03F4FD0(v367, v363);
      v14 = (v365 + *(v361 + 20));
      v248 = *v14;
      v249 = *(v14 + 1);
      sub_1B039480C(v365);
      v261 = 24;
      v266 = 7;
      v15 = swift_allocObject();
      v16 = v249;
      v254 = v15;
      *(v15 + 16) = v248;
      *(v15 + 20) = v16;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = swift_allocObject();
      v18 = v249;
      v250 = v17;
      *(v17 + 16) = v248;
      *(v17 + 20) = v18;

      v265 = 32;
      v19 = swift_allocObject();
      v20 = v250;
      v259 = v19;
      *(v19 + 16) = v331;
      *(v19 + 24) = v20;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v363);
      v251 = __dst;
      sub_1B03BB0B4(__dst, &v390);
      v252 = swift_allocObject();
      memcpy((v252 + 16), v251, 0x42uLL);

      v21 = swift_allocObject();
      v22 = v252;
      v267 = v21;
      *(v21 + 16) = v332;
      *(v21 + 24) = v22;

      v290 = sub_1B0E43988();
      v291 = sub_1B0E45908();
      v263 = 17;
      v269 = swift_allocObject();
      v256 = 16;
      *(v269 + 16) = 16;
      v270 = swift_allocObject();
      v258 = 4;
      *(v270 + 16) = 4;
      v23 = swift_allocObject();
      v253 = v23;
      *(v23 + 16) = v301;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v253;
      v271 = v24;
      *(v24 + 16) = v333;
      *(v24 + 24) = v25;
      v272 = swift_allocObject();
      *(v272 + 16) = 0;
      v273 = swift_allocObject();
      *(v273 + 16) = 1;
      v26 = swift_allocObject();
      v27 = v254;
      v255 = v26;
      *(v26 + 16) = v334;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v255;
      v274 = v28;
      *(v28 + 16) = v335;
      *(v28 + 24) = v29;
      v275 = swift_allocObject();
      *(v275 + 16) = v256;
      v276 = swift_allocObject();
      *(v276 + 16) = v258;
      v30 = swift_allocObject();
      v257 = v30;
      *(v30 + 16) = v305;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      v32 = v257;
      v277 = v31;
      *(v31 + 16) = v336;
      *(v31 + 24) = v32;
      v278 = swift_allocObject();
      *(v278 + 16) = 0;
      v279 = swift_allocObject();
      *(v279 + 16) = v258;
      v33 = swift_allocObject();
      v34 = v259;
      v260 = v33;
      *(v33 + 16) = v337;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v260;
      v280 = v35;
      *(v35 + 16) = v338;
      *(v35 + 24) = v36;
      v281 = swift_allocObject();
      *(v281 + 16) = 112;
      v282 = swift_allocObject();
      v264 = 8;
      *(v282 + 16) = 8;
      v262 = swift_allocObject();
      *(v262 + 16) = v309;
      v37 = swift_allocObject();
      v38 = v262;
      v283 = v37;
      *(v37 + 16) = v339;
      *(v37 + 24) = v38;
      v284 = swift_allocObject();
      *(v284 + 16) = 37;
      v285 = swift_allocObject();
      *(v285 + 16) = v264;
      v39 = swift_allocObject();
      v40 = v267;
      v268 = v39;
      *(v39 + 16) = v340;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v268;
      v287 = v41;
      *(v41 + 16) = v341;
      *(v41 + 24) = v42;
      v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v286 = sub_1B0E46A48();
      v288 = v43;

      v44 = v269;
      v45 = v288;
      *v288 = v342;
      v45[1] = v44;

      v46 = v270;
      v47 = v288;
      v288[2] = v343;
      v47[3] = v46;

      v48 = v271;
      v49 = v288;
      v288[4] = v344;
      v49[5] = v48;

      v50 = v272;
      v51 = v288;
      v288[6] = v345;
      v51[7] = v50;

      v52 = v273;
      v53 = v288;
      v288[8] = v346;
      v53[9] = v52;

      v54 = v274;
      v55 = v288;
      v288[10] = v347;
      v55[11] = v54;

      v56 = v275;
      v57 = v288;
      v288[12] = v348;
      v57[13] = v56;

      v58 = v276;
      v59 = v288;
      v288[14] = v349;
      v59[15] = v58;

      v60 = v277;
      v61 = v288;
      v288[16] = v350;
      v61[17] = v60;

      v62 = v278;
      v63 = v288;
      v288[18] = v351;
      v63[19] = v62;

      v64 = v279;
      v65 = v288;
      v288[20] = v352;
      v65[21] = v64;

      v66 = v280;
      v67 = v288;
      v288[22] = v353;
      v67[23] = v66;

      v68 = v281;
      v69 = v288;
      v288[24] = v354;
      v69[25] = v68;

      v70 = v282;
      v71 = v288;
      v288[26] = v355;
      v71[27] = v70;

      v72 = v283;
      v73 = v288;
      v288[28] = v356;
      v73[29] = v72;

      v74 = v284;
      v75 = v288;
      v288[30] = v357;
      v75[31] = v74;

      v76 = v285;
      v77 = v288;
      v288[32] = v358;
      v77[33] = v76;

      v78 = v287;
      v79 = v288;
      v288[34] = v359;
      v79[35] = v78;
      sub_1B0394964();

      if (os_log_type_enabled(v290, v291))
      {
        v241 = sub_1B0E45D78();
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v242 = sub_1B03949A8(0);
        v243 = sub_1B03949A8(1);
        v244 = &v389;
        v389 = v241;
        v245 = &v388;
        v388 = v242;
        v246 = &v387;
        v387 = v243;
        sub_1B0394A48(3, &v389);
        sub_1B0394A48(6, v244);
        v80 = v298;
        v385 = v342;
        v386 = v269;
        sub_1B03949FC(&v385, v244, v245, v246);
        v247 = v80;
        if (v80)
        {

          __break(1u);
        }

        else
        {
          v385 = v343;
          v386 = v270;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v238 = 0;
          v385 = v344;
          v386 = v271;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v237 = 0;
          v385 = v345;
          v386 = v272;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v236 = 0;
          v385 = v346;
          v386 = v273;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v235 = 0;
          v385 = v347;
          v386 = v274;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v234 = 0;
          v385 = v348;
          v386 = v275;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v233 = 0;
          v385 = v349;
          v386 = v276;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v232 = 0;
          v385 = v350;
          v386 = v277;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v231 = 0;
          v385 = v351;
          v386 = v278;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v230 = 0;
          v385 = v352;
          v386 = v279;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v229 = 0;
          v385 = v353;
          v386 = v280;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v228 = 0;
          v385 = v354;
          v386 = v281;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v227 = 0;
          v385 = v355;
          v386 = v282;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v226 = 0;
          v385 = v356;
          v386 = v283;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v225 = 0;
          v385 = v357;
          v386 = v284;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v224 = 0;
          v385 = v358;
          v386 = v285;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v223 = 0;
          v385 = v359;
          v386 = v287;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v222 = 0;
          _os_log_impl(&dword_1B0389000, v290, v291, "[%.*hhx-%.*X] Not syncing Notes mailbox path %{sensitive,mask.mailbox}s", v241, 0x2Bu);
          sub_1B03998A8(v242);
          sub_1B03998A8(v243);
          sub_1B0E45D58();

          v239 = v222;
        }
      }

      else
      {

        v239 = v298;
      }

      v221 = v239;
      MEMORY[0x1E69E5920](v290);
      (*(v370 + 8))(v375, v369);
      v292 = 0;
      v293 = v221;
    }
  }

  else
  {
    (*(v370 + 16))(v373, v376, v369);
    sub_1B0394784(v376, v367);
    sub_1B0394784(v367, v365);
    sub_1B03F4FD0(v367, v363);
    v81 = (v365 + *(v361 + 20));
    v177 = *v81;
    v178 = *(v81 + 1);
    sub_1B039480C(v365);
    v190 = 24;
    v195 = 7;
    v82 = swift_allocObject();
    v83 = v178;
    v183 = v82;
    *(v82 + 16) = v177;
    *(v82 + 20) = v83;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v84 = swift_allocObject();
    v85 = v178;
    v179 = v84;
    *(v84 + 16) = v177;
    *(v84 + 20) = v85;

    v194 = 32;
    v86 = swift_allocObject();
    v87 = v179;
    v188 = v86;
    *(v86 + 16) = v299;
    *(v86 + 24) = v87;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v363);
    v180 = __dst;
    sub_1B03BB0B4(__dst, v398);
    v181 = swift_allocObject();
    memcpy((v181 + 16), v180, 0x42uLL);

    v88 = swift_allocObject();
    v89 = v181;
    v196 = v88;
    *(v88 + 16) = v300;
    *(v88 + 24) = v89;

    v219 = sub_1B0E43988();
    v220 = sub_1B0E45908();
    v192 = 17;
    v198 = swift_allocObject();
    v185 = 16;
    *(v198 + 16) = 16;
    v199 = swift_allocObject();
    v187 = 4;
    *(v199 + 16) = 4;
    v90 = swift_allocObject();
    v182 = v90;
    *(v90 + 16) = v301;
    *(v90 + 24) = 0;
    v91 = swift_allocObject();
    v92 = v182;
    v200 = v91;
    *(v91 + 16) = v302;
    *(v91 + 24) = v92;
    v201 = swift_allocObject();
    *(v201 + 16) = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = 1;
    v93 = swift_allocObject();
    v94 = v183;
    v184 = v93;
    *(v93 + 16) = v303;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v184;
    v203 = v95;
    *(v95 + 16) = v304;
    *(v95 + 24) = v96;
    v204 = swift_allocObject();
    *(v204 + 16) = v185;
    v205 = swift_allocObject();
    *(v205 + 16) = v187;
    v97 = swift_allocObject();
    v186 = v97;
    *(v97 + 16) = v305;
    *(v97 + 24) = 0;
    v98 = swift_allocObject();
    v99 = v186;
    v206 = v98;
    *(v98 + 16) = v306;
    *(v98 + 24) = v99;
    v207 = swift_allocObject();
    *(v207 + 16) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v187;
    v100 = swift_allocObject();
    v101 = v188;
    v189 = v100;
    *(v100 + 16) = v307;
    *(v100 + 24) = v101;
    v102 = swift_allocObject();
    v103 = v189;
    v209 = v102;
    *(v102 + 16) = v308;
    *(v102 + 24) = v103;
    v210 = swift_allocObject();
    *(v210 + 16) = 112;
    v211 = swift_allocObject();
    v193 = 8;
    *(v211 + 16) = 8;
    v191 = swift_allocObject();
    *(v191 + 16) = v309;
    v104 = swift_allocObject();
    v105 = v191;
    v212 = v104;
    *(v104 + 16) = v310;
    *(v104 + 24) = v105;
    v213 = swift_allocObject();
    *(v213 + 16) = 37;
    v214 = swift_allocObject();
    *(v214 + 16) = v193;
    v106 = swift_allocObject();
    v107 = v196;
    v197 = v106;
    *(v106 + 16) = v311;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v197;
    v216 = v108;
    *(v108 + 16) = v312;
    *(v108 + 24) = v109;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v215 = sub_1B0E46A48();
    v217 = v110;

    v111 = v198;
    v112 = v217;
    *v217 = v313;
    v112[1] = v111;

    v113 = v199;
    v114 = v217;
    v217[2] = v314;
    v114[3] = v113;

    v115 = v200;
    v116 = v217;
    v217[4] = v315;
    v116[5] = v115;

    v117 = v201;
    v118 = v217;
    v217[6] = v316;
    v118[7] = v117;

    v119 = v202;
    v120 = v217;
    v217[8] = v317;
    v120[9] = v119;

    v121 = v203;
    v122 = v217;
    v217[10] = v318;
    v122[11] = v121;

    v123 = v204;
    v124 = v217;
    v217[12] = v319;
    v124[13] = v123;

    v125 = v205;
    v126 = v217;
    v217[14] = v320;
    v126[15] = v125;

    v127 = v206;
    v128 = v217;
    v217[16] = v321;
    v128[17] = v127;

    v129 = v207;
    v130 = v217;
    v217[18] = v322;
    v130[19] = v129;

    v131 = v208;
    v132 = v217;
    v217[20] = v323;
    v132[21] = v131;

    v133 = v209;
    v134 = v217;
    v217[22] = v324;
    v134[23] = v133;

    v135 = v210;
    v136 = v217;
    v217[24] = v325;
    v136[25] = v135;

    v137 = v211;
    v138 = v217;
    v217[26] = v326;
    v138[27] = v137;

    v139 = v212;
    v140 = v217;
    v217[28] = v327;
    v140[29] = v139;

    v141 = v213;
    v142 = v217;
    v217[30] = v328;
    v142[31] = v141;

    v143 = v214;
    v144 = v217;
    v217[32] = v329;
    v144[33] = v143;

    v145 = v216;
    v146 = v217;
    v217[34] = v330;
    v146[35] = v145;
    sub_1B0394964();

    if (os_log_type_enabled(v219, v220))
    {
      v170 = sub_1B0E45D78();
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v171 = sub_1B03949A8(0);
      v172 = sub_1B03949A8(1);
      v173 = &v397;
      v397 = v170;
      v174 = &v396;
      v396 = v171;
      v175 = &v395;
      v395 = v172;
      sub_1B0394A48(3, &v397);
      sub_1B0394A48(6, v173);
      v147 = v298;
      v393 = v313;
      v394 = v198;
      sub_1B03949FC(&v393, v173, v174, v175);
      v176 = v147;
      if (v147)
      {

        __break(1u);
      }

      else
      {
        v393 = v314;
        v394 = v199;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v167 = 0;
        v393 = v315;
        v394 = v200;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v166 = 0;
        v393 = v316;
        v394 = v201;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v165 = 0;
        v393 = v317;
        v394 = v202;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v164 = 0;
        v393 = v318;
        v394 = v203;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v163 = 0;
        v393 = v319;
        v394 = v204;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v162 = 0;
        v393 = v320;
        v394 = v205;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v161 = 0;
        v393 = v321;
        v394 = v206;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v160 = 0;
        v393 = v322;
        v394 = v207;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v159 = 0;
        v393 = v323;
        v394 = v208;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v158 = 0;
        v393 = v324;
        v394 = v209;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v157 = 0;
        v393 = v325;
        v394 = v210;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v156 = 0;
        v393 = v326;
        v394 = v211;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v155 = 0;
        v393 = v327;
        v394 = v212;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v154 = 0;
        v393 = v328;
        v394 = v213;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v153 = 0;
        v393 = v329;
        v394 = v214;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v152 = 0;
        v393 = v330;
        v394 = v216;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v151 = 0;
        _os_log_impl(&dword_1B0389000, v219, v220, "[%.*hhx-%.*X] Not syncing unsupported mailbox path %{sensitive,mask.mailbox}s", v170, 0x2Bu);
        sub_1B03998A8(v171);
        sub_1B03998A8(v172);
        sub_1B0E45D58();

        v168 = v151;
      }
    }

    else
    {

      v168 = v298;
    }

    v150 = v168;
    MEMORY[0x1E69E5920](v219);
    (*(v370 + 8))(v373, v369);
    v292 = 0;
    v293 = v150;
  }

  return v292 & 1;
}

uint64_t sub_1B088C40C(void *a1)
{
  *v5 = *a1;
  *&v5[5] = *(a1 + 5);
  sub_1B06E38A8(v5, v4);
  sub_1B06E38A8(v5, v3);
  v2 = *v5;
  sub_1B039E440(v5);
  return v2;
}

uint64_t sub_1B088C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = 0;
  v64 = 0;
  v63 = 0;
  v57 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  memset(v44, 0, 21);
  v72 = a4;
  v68 = a1;
  v69 = a2;
  v70 = a3;
  sub_1B07BA724(a1);
  if (a1)
  {
    if (Namespace.hasPrefix.getter(a1))
    {
      v4 = MailboxName.inbox.unsafeMutableAddressor();
      v31 = *v4;
      v30 = *(v4 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = Namespace.addPrefix(to:)(v31, v30, a1);
      v33 = v5;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v65 = v32;
      v66 = v33;

      v34 = v32;
      v35 = v33;
      goto LABEL_6;
    }
  }

  v65 = 0;
  v66 = 0;
  v34 = 0;
  v35 = 0;
LABEL_6:
  v28 = sub_1B08A16C8(v39, v34, v35, a4);
  v64 = v28;

  v27 = swift_allocObject();
  v63 = v27 + 16;
  v62[1] = v28;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
  sub_1B08A4110();
  MEMORY[0x1B27270C0](v62, v26);
  v61 = v62[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2838, &unk_1B0E9E0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B08A4198();
  sub_1B0E46728();
  sub_1B039E440(&v61);
  v58 = v62[2];
  v59 = v62[3];
  v60 = v62[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2840, &qword_1B0E9E0C8);
  sub_1B08A4220();
  sub_1B08A42B4();
  *(v27 + 16) = sub_1B0E45598();
  v29 = swift_allocObject();
  v57 = v29 + 16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v29 + 16) = v28;
  sub_1B07BA724(a1);
  if (a1)
  {
    v47 = a1;
    v48 = a2;
    v49 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = MailboxName.init(_:)(a1);
    v25 = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = MailboxPath.init(name:pathSeparator:)(v24, v25, a2, a3);
    v46 = v7;
    if (v45)
    {
      v44[1] = v45;
      LODWORD(v44[2]) = v7;
      BYTE4(v44[2]) = ((v7 | (BYTE4(v7) << 32)) & 0xFFFFFFFFFFLL) >> 32;
      LODWORD(v43) = v7;
      BYTE4(v43) = BYTE4(v44[2]);
      MailboxPath.displayStringComponents(omittingEmptySubsequences:)(1, v45, v43);
      v44[0] = v8;
      while (1)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0750598();
        v22 = sub_1B0E45748();

        if (v22)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
        sub_1B0E454D8();

        sub_1B03B11C4();
        sub_1B07BC194();
        sub_1B0E45888();
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
      sub_1B08A43C4();
      v21 = sub_1B0E45748();

      if ((v21 & 1) == 0)
      {
        v9 = MailboxName.inbox.unsafeMutableAddressor();
        v18 = *v9;
        v17 = *(v9 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = Namespace.addPrefix(to:)(v18, v17, a1);
        v20 = v10;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42 = MailboxPath.init(name:pathSeparator:)(v19, v20, a2, a3);
        if (v42)
        {
          LODWORD(v41) = v11;
          BYTE4(v41) = ((v11 | (BYTE4(v11) << 32)) & 0xFFFFFFFFFFLL) >> 32;
          MailboxPath.displayStringComponents(omittingEmptySubsequences:)(1, v42, v41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
          sub_1B0E454D8();
        }
      }

      sub_1B039E440(v44);
    }

    else
    {
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55[10] = v28;
  v16 = sub_1B08A433C();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2848, &unk_1B0E9E0D0);
    sub_1B0E46518();
    memcpy(__dst, v53, sizeof(__dst));
    memcpy(v55, __dst, 0x50uLL);
    if (!v55[0])
    {
      break;
    }

    memcpy(v71, v55, 0x42uLL);
    v50 = v55[9];
    sub_1B08A1BE0(v71, v55[9], a1, a2, a3, v27, v29);

    sub_1B039E440(v55);
  }

  sub_1B039E440(v56);
  swift_beginAccess();
  v14 = *(v29 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v52 = v14;
  v15 = sub_1B0E44FF8();
  sub_1B039E440(&v52);
  v51 = v15;
  v13 = sub_1B039CA88(sub_1B08A24FC, 0, v26, &type metadata for RemoteMailbox, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v23);
  sub_1B039E440(&v51);

  sub_1B039E440(&v65);
  return v13;
}

uint64_t sub_1B088CF6C()
{
  updated = type metadata accessor for MailboxUpdateTree();
  v2 = swift_projectBox();
  swift_beginAccess();
  v3 = *(v2 + *(updated + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0451F2C();
  v4 = sub_1B0E44628();

  return v4;
}

uint64_t sub_1B088D018(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B088D08C(a2);
  return swift_endAccess();
}

uint64_t *sub_1B088D08C(uint64_t *a1)
{
  v33 = __dst;
  v50 = a1;
  v34 = "Fatal error";
  v35 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v36 = "Message/MailboxTree.swift";
  v58 = 0;
  v57 = 0;
  v54 = 0;
  v55[0] = 0;
  *(v55 + 5) = 0;
  v37 = 0;
  v38 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v12 - v38;
  updated = type metadata accessor for MailboxUpdateTree();
  v47 = *(*(updated - 8) + 64);
  v42 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v40);
  v43 = (&v12 - v42);
  v44 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v45 = (&v12 - v44);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v48 = (&v12 - v46);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v51 = (&v12 - v49);
  v58 = v5;
  v57 = v4;
  sub_1B08A39BC(v4, (&v12 - v49));
  v52 = v59;
  sub_1B0897668(v50, v59);
  sub_1B08A3DE8(v51);
  result = memcpy(__dst, v52, 0x49uLL);
  v53 = (LOBYTE(__dst[9]) >> 6) & 3;
  if (v53)
  {
    if (v53 == 1)
    {
      v9 = v40;
      LOBYTE(__dst[9]) &= 0x3Fu;
      v21 = v56;
      memcpy(v56, __dst, 0x49uLL);
      v29 = v56[0];
      v30 = v56[1];
      v22 = v56[2];
      v23 = BYTE4(v56[2]);
      v28 = &v56[3];
      v24 = v63;
      memcpy(v63, &v56[3], 0x31uLL);
      v54 = v56[0];
      v55[0] = v56[1];
      LODWORD(v55[1]) = v56[2];
      BYTE4(v55[1]) = BYTE4(v56[2]);
      sub_1B08A39BC(v40, v51);
      v10 = (v51 + *(updated + 24));
      v25 = *v10;
      v26 = v10[1];
      v27 = v10[2];
      sub_1B07BA724(v25);
      sub_1B08A3DE8(v51);
      MEMORY[0x1E69E5928](v29);
      sub_1B08A39BC(v9, v48);
      sub_1B0394784(v48 + *(updated + 32), v39);
      sub_1B08A3DE8(v48);
      sub_1B089BA50(v25, v26, v27, v24, v50, v29, v39);
      sub_1B039480C(v39);
      MEMORY[0x1E69E5920](v29);
      sub_1B07BA794(v25);
      sub_1B08A444C(v28);
      MEMORY[0x1E69E5920](v29);
    }

    else if (v53 == 2)
    {
      LOBYTE(__dst[9]) &= 0x3Fu;
      memcpy(v62, __dst, 0x31uLL);
      sub_1B088D7A8();
      sub_1B08A39BC(v40, v45);
      v11 = (v45 + *(updated + 24));
      v16 = *v11;
      v17 = v11[1];
      v18 = v11[2];
      sub_1B07BA724(v16);
      sub_1B08A3DE8(v45);
      sub_1B08A39BC(v40, v43);
      v19 = *v43;
      MEMORY[0x1E69E5928](v19);
      sub_1B08A3DE8(v43);
      v20 = [v19 rootMailbox];
      MEMORY[0x1E69E5920](v19);
      if (v20)
      {
        v15 = v20;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v13 = v15;
      sub_1B08A39BC(v40, v51);
      sub_1B0394784(v51 + *(updated + 32), v39);
      sub_1B08A3DE8(v51);
      v14 = v62;
      sub_1B089BA50(v16, v17, v18, v62, v50, v13, v39);
      sub_1B039480C(v39);
      MEMORY[0x1E69E5920](v13);
      sub_1B07BA794(v16);
      return sub_1B08A444C(v14);
    }
  }

  else
  {
    LOBYTE(__dst[9]) &= 0x3Fu;
    v7 = *v33;
    v32 = v61;
    v33[5] = v7;
    *(&v61[1] + 5) = *(&__dst[1] + 5);
    sub_1B088D7A8();
    v8 = v40;
    v31 = v61[0];
    MEMORY[0x1E69E5928](v61[0]);
    sub_1B08A39BC(v8, v51);
    sub_1B0394784(v51 + *(updated + 32), v39);
    sub_1B08A3DE8(v51);
    sub_1B08986B4(v31, v50, v39);
    sub_1B039480C(v39);
    MEMORY[0x1E69E5920](v31);
    return sub_1B08A4490(v32);
  }

  return result;
}

uint64_t sub_1B088D7A8()
{
  updated = type metadata accessor for MailboxUpdateTree();
  v1 = (v0 + *(updated + 44));
  v10 = *v1;
  v9 = v1[1];
  result = sub_1B08A44D0(*v1);
  if (v10)
  {
    v3 = (v7 + *(updated + 44));
    v4 = *v3;
    v5 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_1B08A4518(v4);
    MEMORY[0x1E69E5928](v10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03EE50C();
    v6 = sub_1B0E451A8();

    [v10 setChildren_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5928](v10);
    v11 = [v10 attributes];
    type metadata accessor for MailboxAttributes();
    sub_1B0694AF8();
    sub_1B0E46F58();
    [v10 setAttributes_];
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v10);
  }

  return result;
}

uint64_t sub_1B088D980(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  RemoteMailbox.name.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E454D8();
}

uint64_t *sub_1B088DA10(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v37 = __b;
  v39 = 40;
  memset(__b, 0, sizeof(__b));
  v48 = 0;
  v49 = 0;
  v46 = 0;
  memset(v47, 0, 13);
  v41 = 0;
  v40 = 0;
  updated = type metadata accessor for MailboxUpdateTree();
  v33 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](updated);
  v34 = (&v8 - v33);
  v55 = v5;
  v54 = v6;
  v53 = v2;
  v35 = *(v2 + *(v4 + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = sub_1B0451F2C();
  v38 = &v56;
  sub_1B0E445C8();
  memcpy(v37, v38, v39);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2858, &qword_1B0E9E0E8);
    v24 = v50;
    sub_1B0E446D8();
    v25 = v50[0];
    v26 = v50[1];
    v27 = v50[2];
    v28 = v50[3];
    v29 = v51 | (*(v24 + 36) << 32);
    if (!v50[0])
    {
      break;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29 & 0xFFFFFFFFFFLL;
    v14 = v28;
    v15 = v27;
    v16 = v26;
    v17 = v25;
    v48 = v25;
    v49 = v26;
    v46 = v27;
    v47[0] = v28;
    LODWORD(v47[1]) = v29;
    BYTE4(v47[1]) = (v29 & 0xFFFFFFFFFFLL) >> 32;
    v44 = v25;
    v45 = v26;
    v18 = sub_1B0E45528();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v18)
    {
      v13 = 1;
    }

    else
    {
      v42 = v17;
      v43 = v16;
      v13 = sub_1B0E45528();
    }

    v12 = v13;

    v41 = (v12 ^ 1) & 1;
    if (v41)
    {
      MEMORY[0x1E69E5928](v15);
      v11 = [v15 parent];
      if (v11)
      {
        v10 = v11;
        v9 = v11;
        v40 = v11;
        MEMORY[0x1E69E5920](v15);
        sub_1B089E99C(v9);
        MEMORY[0x1E69E5920](v9);
      }

      else
      {
        MEMORY[0x1E69E5920](v15);
      }

      sub_1B08A39BC(v30, v34);
      v8 = *v34;
      MEMORY[0x1E69E5928](v8);
      sub_1B08A3DE8(v34);
      MEMORY[0x1E69E5928](v15);
      [v8 deleteMailbox:v15 reflectToServer:0];
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v15);
    }

    else
    {
      MEMORY[0x1E69E5920](v15);
    }
  }

  return sub_1B06B91B0(__b);
}

uint64_t sub_1B088DFA4()
{
  v5 = v0;
  result = type metadata accessor for MailboxUpdateTree();
  if (*(v0 + *(result + 52)))
  {
    sub_1B07BC130();
    if ([swift_getObjCClassFromMetadata() mailboxListingNotificationsAreEnabled])
    {
      v4 = sub_1B0896600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
      sub_1B08A4560();
      sub_1B0E45018();
      sub_1B039E440(&v4);
    }

    v2 = *v3;
    MEMORY[0x1E69E5928](*v3);
    [v2 _writeMailboxCacheWithPrejudice_];
    return MEMORY[0x1E69E5920](v2);
  }

  return result;
}

uint64_t sub_1B088E118()
{
  v1 = (v0 + *(type metadata accessor for MailboxUpdateTree() + 24));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B07BA724(*v1);
  return v3;
}

uint64_t sub_1B088E16C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree() + 28));

  return v2;
}

uint64_t sub_1B088E1DC()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree() + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E214(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for MailboxUpdateTree() + 36));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B088E260()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree() + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E298(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for MailboxUpdateTree() + 40));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B088E2E4()
{
  v1 = (v0 + *(type metadata accessor for MailboxUpdateTree() + 44));
  v3 = *v1;
  v4 = v1[1];
  sub_1B08A44D0(*v1);
  return v3;
}

uint64_t sub_1B088E32C(uint64_t a1, uint64_t a2)
{
  sub_1B08A44D0(a1);
  v3 = (v2 + *(type metadata accessor for MailboxUpdateTree() + 44));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_1B08A4518(v4);
  return sub_1B08A4518(a1);
}

uint64_t sub_1B088E38C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree() + 48));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E3C4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for MailboxUpdateTree() + 48));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B088E43C(unsigned int a1)
{
  updated = type metadata accessor for MailboxUpdateTree();
  result = a1;
  *(v1 + *(updated + 52)) = a1;
  return result;
}

uint64_t sub_1B088E51C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = BYTE4(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 8);
  *(v2 + 8) = a1;
  *(v2 + 16) = v5;
  *(v2 + 20) = v6;
}

void sub_1B088E5C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v73 = a8;
  v72 = a7;
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v68 = a3;
  v74 = a2;
  v76 = a1;
  v64 = a9;
  v65 = a7;
  v66 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v9 = *(*(_s6LoggerVMa() - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v67 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(_s18MailboxPersistenceVMa() - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v76);
  v75 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v12;
  v90 = v14;
  v87 = v15;
  v88 = v16;
  v89 = v17;
  v86 = v18;
  v85 = v19;
  v84 = v20;
  v21 = v12;
  v77 = [v76 rootMailbox];
  if (v77)
  {
    v62 = v77;
    v60 = v77;
    v83 = v77;

    v22 = [v60 children];
    v61 = v22;
    if (v22)
    {
      v59 = v61;
      v56 = v61;
      v55 = sub_1B03EE50C();
      v57 = sub_1B0E451B8();

      v22 = v57;
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v54 = v58;
    if (v58)
    {
      v53 = v54;
      v42 = v54;
      v49 = v63;
      v82 = v54;
      v23 = sub_1B0889C84();
      v44 = v23;
      v81 = v23;
      v80 = v42;
      v43 = v31;
      MEMORY[0x1EEE9AC00](v31);
      v24 = v44;
      v45 = &v31[-6];
      v31[-4] = v74;
      LOBYTE(v31[-3]) = v24;
      v31[-2] = v25;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
      v48 = sub_1B06E35CC();
      sub_1B08A4714();
      v26 = v49;
      v27 = sub_1B0E45008();
      v50 = v26;
      v51 = v27;
      v52 = v26;
      if (v26)
      {
        v31[2] = v52;
      }

      else
      {
        v38 = v51;
        v79 = v51;
        v28 = sub_1B088FCE8(v51);
        v39 = 0;
        v40 = v28;
        v41 = 0;
        v36 = v28;
        v37 = 0;
        v78 = v28;
        v29 = v76;
        sub_1B03F4D78(v74, v75);
        sub_1B07BA724(v68);

        sub_1B0394784(v73, v67);
        sub_1B088EC28(v76, v75, v68, v69, v70, v71, v36, v67, v64);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
      sub_1B08A4664();
      v33 = 0;
      v34 = swift_allocError();
      swift_willThrow();

      v35 = v34;
    }
  }

  else
  {

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v30);
    sub_1B08A45E8();
    v31[3] = 0;
    v32 = swift_allocError();
    swift_willThrow();
    v35 = v32;
  }
}

void *sub_1B088EC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v46 = a9;
  v54 = a1;
  v53 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v49 = a6;
  v48 = a7;
  v47 = a8;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v41 = 0;
  v37 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v44 = &v37 - v37;
  v38 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v37 - v38;
  updated = type metadata accessor for MailboxUpdateTree();
  v39 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v55 = (&v37 - v39);
  v64 = &v37 - v39;
  v63 = v54;
  v62 = v9;
  v59 = v10;
  v60 = v11;
  v61 = v12;
  v58 = v13;
  v57 = v14;
  v56 = v15;
  v40 = *(v16 + 40);
  v17 = sub_1B0E46A48();
  v18 = v55;
  v19 = v17;
  v20 = updated;
  *(v55 + v40) = v19;
  v21 = (v18 + v20[11]);
  *v21 = 0;
  v21[1] = 0;
  v42 = v20[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v22 = sub_1B0E46A48();
  v23 = updated;
  v24 = v55;
  v25 = v22;
  v26 = v54;
  *(v55 + v42) = v25;
  *(v24 + v23[13]) = 0;
  MEMORY[0x1E69E5928](v26);
  v27 = v43;
  v28 = v53;
  *v55 = v54;
  sub_1B03F4D78(v28, v27);
  sub_1B04158DC(v43, v55 + updated[5]);
  sub_1B07BA724(v50);
  v29 = v51;
  v30 = v52;
  v31 = (v55 + updated[6]);
  *v31 = v50;
  v31[1] = v29;
  v31[2] = v30;

  v32 = v47;
  v33 = v44;
  *(v55 + updated[7]) = v49;
  sub_1B0394784(v32, v33);
  sub_1B03F4FD0(v44, v55 + updated[8]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34 = v55;
  v35 = v46;
  *(v55 + updated[9]) = v48;
  sub_1B08A39BC(v34, v35);
  sub_1B039480C(v47);

  sub_1B07BA794(v50);
  sub_1B03F4F08(v53);
  MEMORY[0x1E69E5920](v54);
  return sub_1B08A3DE8(v55);
}

uint64_t sub_1B088EF8C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B088F02C(*a1, a2, a3 & 1, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B088F02C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v74 = a2;
  v83 = a1;
  v76 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  memset(v112, 0, 13);
  v105 = 0;
  v104 = 0;
  v75 = a3;
  v77 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](0);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v23 - v79;
  MEMORY[0x1EEE9AC00](v5);
  v80 = v23 - v79;
  v84 = sub_1B0E42E68();
  v85 = *(v84 - 8);
  v86 = v85;
  v87 = *(v85 + 64);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v23 - v89;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v90 = v23 - v89;
  v120 = v23 - v89;
  v119 = v7;
  v118 = a2;
  v117 = v8 & 1;
  v116 = v9;
  v91 = sub_1B07C0878();
  v92 = v10;
  v93 = v11;
  if (!v91)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(0);
    sub_1B08A479C();
    v23[1] = 0;
    v24 = swift_allocError();
    swift_willThrow();
    result = v24;
    v27 = v24;
    return result;
  }

  v70 = v91;
  v71 = v92;
  v72 = v93;
  v66 = v93;
  v67 = v92;
  v68 = v91;
  v113 = v91;
  v114 = v92;
  v115 = v93;
  v69 = [v83 URL];
  if (v69)
  {
    v65 = v69;
    v64 = v69;
    sub_1B0E42DE8();
    (*(v86 + 32))(v80, v88, v84);
    (*(v86 + 56))(v80, 0, 1, v84);
  }

  else
  {
    (*(v86 + 56))(v80, 1, 1, v84);
  }

  if ((*(v86 + 48))(v80, 1, v84) == 1)
  {
    v12 = sub_1B06E3800(v80);
LABEL_24:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v12);
    sub_1B08A4818();
    v25 = 0;
    v26 = swift_allocError();
    swift_willThrow();

    result = v26;
    v27 = v26;
    return result;
  }

  (*(v86 + 32))(v90, v80, v84);
  (*(v86 + 16))(v78, v90, v84);
  (*(v86 + 56))(v78, 0, 1, v84);
  v63 = sub_1B07BEDFC(v78);
  v61 = v63;
  v62 = v13;
  sub_1B06E3800(v78);
  if (!v63)
  {
    v12 = (*(v86 + 8))(v90, v84);
    goto LABEL_24;
  }

  v58 = v61;
  v59 = v62;
  v60 = BYTE4(v62);
  v55 = BYTE4(v62);
  v56 = v62;
  v57 = v61;
  v112[0] = v61;
  LODWORD(v112[1]) = v62;
  BYTE4(v112[1]) = BYTE4(v62);
  MailboxRowID.init(_:)([v83 databaseID], &v110);
  v108 = v110;
  v109 = v111;
  if (v111)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C5844(v57, v56, v82, v94);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = sub_1B0876B40(v57, v56, v68, v67, v66, v75 & 1);
  sub_1B07BA794(v68);

  if ((v53 & 1) == 0)
  {
    v28 = sub_1B0E46A48();
    v29 = v28;

    (*(v86 + 8))(v90, v84);

    v32 = v29;
    v33 = v73;
    return v32;
  }

  v52 = [v83 children];
  if (v52)
  {
    v51 = v52;
    v48 = v52;
    v47 = sub_1B03EE50C();
    v49 = sub_1B0E451B8();

    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v106 = v50;
  if (v50)
  {
    v107 = v106;
  }

  else
  {
    v45 = 0;
    v46 = sub_1B03EE50C();
    v107 = sub_1B0E46A48();
    if (v106)
    {
      sub_1B039E440(&v106);
    }
  }

  v41 = v73;
  v34 = v107;
  v105 = v107;
  v103 = v107;
  v35 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v14 = v75;
  v37 = &v23[-6];
  v23[-4] = v74;
  LOBYTE(v23[-3]) = v14 & 1;
  v23[-2] = v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
  v36 = v39;
  v40 = sub_1B06E35CC();
  sub_1B08A4714();
  v16 = v41;
  v17 = sub_1B0E45008();
  v42 = v16;
  v43 = v17;
  v44 = v16;
  if (!v16)
  {
    v104 = v43;
    v18 = v83;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v100 = v57;
    v101 = v56;
    v102 = v55;
    sub_1B088E584();
    v97 = v19;
    v98 = v20;
    v99 = v21;
    v94[2] = v19;
    v94[3] = v20;
    v95 = v21;
    v96 = BYTE4(v21);
    v30 = &v104;
    sub_1B0E452E8();
    v31 = v104;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440(v30);

    (*(v86 + 8))(v90, v84);

    v32 = v31;
    v33 = v42;
    return v32;
  }

  v23[0] = v44;

  (*(v86 + 8))(v90, v84);

  return v23[0];
}

uint64_t sub_1B088FCE8(uint64_t a1)
{
  v1497 = MEMORY[0x1EEE9AC00](a1);
  v1482 = v2;
  v1481 = v3;
  v1500 = v1;
  v1406 = sub_1B039BBE8;
  v1407 = sub_1B08A49D0;
  v1408 = sub_1B0394C30;
  v1409 = sub_1B0394C24;
  v1410 = sub_1B039BA2C;
  v1411 = sub_1B039BA88;
  v1412 = sub_1B039BB94;
  v1413 = sub_1B0394C24;
  v1414 = sub_1B039BBA0;
  v1415 = sub_1B039BC08;
  v1416 = sub_1B08A49DC;
  v1417 = sub_1B039BCF8;
  v1418 = sub_1B0398F5C;
  v1419 = sub_1B0398F5C;
  v1420 = sub_1B0399178;
  v1421 = sub_1B0398F5C;
  v1422 = sub_1B0398F5C;
  v1423 = sub_1B039BA94;
  v1424 = sub_1B0398F5C;
  v1425 = sub_1B0398F5C;
  v1426 = sub_1B0399178;
  v1427 = sub_1B0398F5C;
  v1428 = sub_1B0398F5C;
  v1429 = sub_1B03991EC;
  v1430 = sub_1B0398F5C;
  v1431 = sub_1B0398F5C;
  v1432 = sub_1B039BCEC;
  v1433 = sub_1B039BBE8;
  v1434 = sub_1B08A4998;
  v1435 = sub_1B08A49D0;
  v1436 = sub_1B08A4AA8;
  v1437 = sub_1B0394C24;
  v1438 = sub_1B039BA2C;
  v1439 = sub_1B039BA88;
  v1440 = sub_1B0394C24;
  v1441 = sub_1B039BBA0;
  v1442 = sub_1B039BC08;
  v1443 = sub_1B06BA324;
  v1444 = sub_1B06E395C;
  v1445 = sub_1B039BCF8;
  v1446 = sub_1B08A49DC;
  v1447 = sub_1B039BCF8;
  v1448 = sub_1B08A49DC;
  v1449 = sub_1B039BCF8;
  v1450 = sub_1B0398F5C;
  v1451 = sub_1B0398F5C;
  v1452 = sub_1B0399178;
  v1453 = sub_1B0398F5C;
  v1454 = sub_1B0398F5C;
  v1455 = sub_1B039BA94;
  v1456 = sub_1B0398F5C;
  v1457 = sub_1B0398F5C;
  v1458 = sub_1B0399178;
  v1459 = sub_1B0398F5C;
  v1460 = sub_1B0398F5C;
  v1461 = sub_1B03991EC;
  v1462 = sub_1B0398F5C;
  v1463 = sub_1B0398F5C;
  v1464 = sub_1B03993BC;
  v1465 = sub_1B0398F5C;
  v1466 = sub_1B0398F5C;
  v1467 = sub_1B039BCEC;
  v1468 = sub_1B0398F5C;
  v1469 = sub_1B0398F5C;
  v1470 = sub_1B039BCEC;
  v1471 = sub_1B0398F5C;
  v1472 = sub_1B0398F5C;
  v1473 = sub_1B039BCEC;
  v1548 = 0;
  v1547 = 0;
  v1546 = 0;
  v1545 = 0;
  v1544 = 0;
  v1498 = v1543;
  v1543[0] = 0;
  v1543[1] = 0;
  v1538 = 0;
  memset(v1539, 0, 13);
  v1536 = 0;
  v1537 = 0;
  v1534 = 0;
  v1533 = 0;
  v1525 = 0;
  v1526[0] = 0;
  *(v1526 + 5) = 0;
  v1494 = 0;
  v1474 = _s6LoggerVMa();
  v1475 = (*(*(v1474 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v1476 = &v313 - v1475;
  v1477 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v1478 = &v313 - v1477;
  v1479 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1480 = &v313 - v1479;
  v1483 = sub_1B0E439A8();
  v1484 = *(v1483 - 8);
  v1485 = v1483 - 8;
  v1487 = *(v1484 + 64);
  v1486 = (v1487 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v1494);
  v1488 = &v313 - v1486;
  v1489 = (v1487 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1490 = &v313 - v1489;
  v1548 = v9;
  v1547 = v10 & 1;
  v1546 = v11;
  v1491 = &type metadata for OpaqueMailboxID;
  v1492 = sub_1B0E46A48();
  v1493 = sub_1B03B8BD8();
  v1545 = sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2888, &qword_1B0E9E108);
  v1495 = sub_1B0E46A48();
  v1496 = sub_1B0451F2C();
  v1544 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1542 = v1497;
  v1499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
  sub_1B08A4894();
  sub_1B0E45798();
  for (i = v1500; ; i = v1372)
  {
    v1401 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2890, &qword_1B0E9E110);
    v1402 = v1540;
    sub_1B0E46518();
    v1403 = v1540[0];
    v1404 = v1540[1];
    v1405 = v1541 | (*(v1402 + 20) << 32);
    if (!v1540[0])
    {
      break;
    }

    v1398 = v1403;
    v1399 = v1404;
    v1400 = v1405 & 0xFFFFFFFFFFLL;
    v1389 = (v1405 & 0xFFFFFFFFFFLL) >> 32;
    v1390 = v1405;
    v1395 = v1404;
    v1394 = v1403;
    v1538 = v1403;
    v1539[0] = v1404;
    LODWORD(v1539[1]) = v1405;
    BYTE4(v1539[1]) = v1389;
    MEMORY[0x1E69E5928](v1403);
    v1391 = [v1394 databaseID];
    MEMORY[0x1E69E5920](v1394);
    v1396 = sub_1B039BF24(v1391, v12, v13, v14, v15, v16, v17, v18);
    v1392 = v19;
    v1536 = v1396;
    v1537 = v19;
    v1393 = v1545;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1535[2] = v1396;
    v1535[3] = v1392;
    v1397 = sub_1B0E45528();

    MEMORY[0x1E69E5928](v1394);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v1397)
    {
      MEMORY[0x1E69E5928](v1394);
      v1384 = [v1394 attributes];
      MEMORY[0x1E69E5920](v1394);
      v1535[1] = v1384;
      v1386 = v1535;
      v1535[0] = 2;
      v1385 = type metadata accessor for MailboxAttributes();
      sub_1B0694AF8();
      v1387 = sub_1B0E46F78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v1387)
      {
        v1381 = sub_1B039BF24(*MEMORY[0x1E699A728], v20, v21, v22, v23, v24, v25, v26);
        v1382 = static OpaqueMailboxID.== infix(_:_:)(v1396, v1392, v1381, v27);

        v1383 = v1382;
      }

      else
      {
        v1383 = 0;
      }

      v1380 = v1383;

      v1388 = v1380;
    }

    else
    {
      v1388 = 1;
    }

    v1379 = v1388;
    MEMORY[0x1E69E5920](v1394);

    v1534 = v1379 & 1;
    MEMORY[0x1E69E5928](v1394);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v1379)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1377 = &v1505;
      v1505 = v1395;
      v1506 = v1390;
      v1378 = v1507;
      sub_1B0E44778();
      sub_1B039E440(v1377);
      v28 = v1508 | (*(v1378 + 20) << 32);
      v1502[0] = v1507[0];
      v1502[1] = v1507[1];
      v1503 = v28;
      v1504 = BYTE4(v28);
      v1376 = v1507[0] == 0;
      v1374 = v1376;
      sub_1B08A40BC(v1502);
      v1375 = v1374;
    }

    else
    {
      v1375 = 0;
    }

    v1373 = v1375;
    MEMORY[0x1E69E5920](v1394);

    v1533 = v1373;
    if (v1373)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1369 = v1514;
      v1514[0] = v1396;
      v1514[1] = v1392;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
      sub_1B0E454D8();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      MEMORY[0x1E69E5928](v1394);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1371 = v1511;
      v1511[0] = v1394;
      v1511[1] = v1395;
      v1512 = v1390;
      v1513 = v1389;
      v1370 = &v1509;
      v1509 = v1395;
      v1510 = v1390;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A0, &qword_1B0E9E118);
      sub_1B0E44788();

      MEMORY[0x1E69E5920](v1394);

      v1372 = v1401;
    }

    else
    {
      v1366 = v1394;
      v1367 = v1395;
      v1368 = v1396;
      if ((v1482 & 1) == 0)
      {
        v315 = v1368;
        v317 = v1367;
        v316 = v1366;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v29);
        sub_1B08A491C();
        v318 = swift_allocError();
        swift_willThrow();

        MEMORY[0x1E69E5920](v316);

        sub_1B039E440(v1543);
        sub_1B039E440(&v1544);
        sub_1B039E440(&v1545);
        return v1302;
      }

      v1364 = v1545;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1531 = v1396;
      v1532 = v1392;
      v1365 = sub_1B0E45528();

      if (v1365)
      {
        (*(v1484 + 16))(v1490, v1481, v1483);
        sub_1B0394784(v1481, v1480);
        sub_1B0394784(v1480, v1478);
        sub_1B03F4FD0(v1480, v1476);
        v30 = (v1478 + *(v1474 + 20));
        v1327 = *v30;
        v1328 = *(v30 + 1);
        sub_1B039480C(v1478);
        v1326 = 24;
        v1341 = 7;
        v31 = swift_allocObject();
        v32 = v1328;
        v1332 = v31;
        *(v31 + 16) = v1327;
        *(v31 + 20) = v32;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v33 = swift_allocObject();
        v34 = v1328;
        v1329 = v33;
        *(v33 + 16) = v1327;
        *(v33 + 20) = v34;

        v1340 = 32;
        v35 = swift_allocObject();
        v36 = v1329;
        v1337 = v35;
        *(v35 + 16) = v1406;
        *(v35 + 24) = v36;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v1476);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = swift_allocObject();
        v38 = v1392;
        v1330 = v37;
        *(v37 + 16) = v1396;
        *(v37 + 24) = v38;

        v39 = swift_allocObject();
        v40 = v1330;
        v1342 = v39;
        *(v39 + 16) = v1407;
        *(v39 + 24) = v40;

        v1362 = sub_1B0E43988();
        v1363 = sub_1B0E458E8();
        v1339 = 17;
        v1344 = swift_allocObject();
        v1334 = 16;
        *(v1344 + 16) = 16;
        v1345 = swift_allocObject();
        v1336 = 4;
        *(v1345 + 16) = 4;
        v41 = swift_allocObject();
        v1331 = v41;
        *(v41 + 16) = v1408;
        *(v41 + 24) = 0;
        v42 = swift_allocObject();
        v43 = v1331;
        v1346 = v42;
        *(v42 + 16) = v1409;
        *(v42 + 24) = v43;
        v1347 = swift_allocObject();
        *(v1347 + 16) = 0;
        v1348 = swift_allocObject();
        *(v1348 + 16) = 1;
        v44 = swift_allocObject();
        v45 = v1332;
        v1333 = v44;
        *(v44 + 16) = v1410;
        *(v44 + 24) = v45;
        v46 = swift_allocObject();
        v47 = v1333;
        v1349 = v46;
        *(v46 + 16) = v1411;
        *(v46 + 24) = v47;
        v1350 = swift_allocObject();
        *(v1350 + 16) = v1334;
        v1351 = swift_allocObject();
        *(v1351 + 16) = v1336;
        v48 = swift_allocObject();
        v1335 = v48;
        *(v48 + 16) = v1412;
        *(v48 + 24) = 0;
        v49 = swift_allocObject();
        v50 = v1335;
        v1352 = v49;
        *(v49 + 16) = v1413;
        *(v49 + 24) = v50;
        v1353 = swift_allocObject();
        *(v1353 + 16) = 0;
        v1354 = swift_allocObject();
        *(v1354 + 16) = v1336;
        v51 = swift_allocObject();
        v52 = v1337;
        v1338 = v51;
        *(v51 + 16) = v1414;
        *(v51 + 24) = v52;
        v53 = swift_allocObject();
        v54 = v1338;
        v1355 = v53;
        *(v53 + 16) = v1415;
        *(v53 + 24) = v54;
        v1356 = swift_allocObject();
        *(v1356 + 16) = 32;
        v1357 = swift_allocObject();
        *(v1357 + 16) = 8;
        v55 = swift_allocObject();
        v56 = v1342;
        v1343 = v55;
        *(v55 + 16) = v1416;
        *(v55 + 24) = v56;
        v57 = swift_allocObject();
        v58 = v1343;
        v1359 = v57;
        *(v57 + 16) = v1417;
        *(v57 + 24) = v58;
        v1361 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1358 = sub_1B0E46A48();
        v1360 = v59;

        v60 = v1344;
        v61 = v1360;
        *v1360 = v1418;
        v61[1] = v60;

        v62 = v1345;
        v63 = v1360;
        v1360[2] = v1419;
        v63[3] = v62;

        v64 = v1346;
        v65 = v1360;
        v1360[4] = v1420;
        v65[5] = v64;

        v66 = v1347;
        v67 = v1360;
        v1360[6] = v1421;
        v67[7] = v66;

        v68 = v1348;
        v69 = v1360;
        v1360[8] = v1422;
        v69[9] = v68;

        v70 = v1349;
        v71 = v1360;
        v1360[10] = v1423;
        v71[11] = v70;

        v72 = v1350;
        v73 = v1360;
        v1360[12] = v1424;
        v73[13] = v72;

        v74 = v1351;
        v75 = v1360;
        v1360[14] = v1425;
        v75[15] = v74;

        v76 = v1352;
        v77 = v1360;
        v1360[16] = v1426;
        v77[17] = v76;

        v78 = v1353;
        v79 = v1360;
        v1360[18] = v1427;
        v79[19] = v78;

        v80 = v1354;
        v81 = v1360;
        v1360[20] = v1428;
        v81[21] = v80;

        v82 = v1355;
        v83 = v1360;
        v1360[22] = v1429;
        v83[23] = v82;

        v84 = v1356;
        v85 = v1360;
        v1360[24] = v1430;
        v85[25] = v84;

        v86 = v1357;
        v87 = v1360;
        v1360[26] = v1431;
        v87[27] = v86;

        v88 = v1359;
        v89 = v1360;
        v1360[28] = v1432;
        v89[29] = v88;
        sub_1B0394964();

        if (os_log_type_enabled(v1362, v1363))
        {
          v1304 = sub_1B0E45D78();
          v1303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1305 = sub_1B03949A8(0);
          v1306 = sub_1B03949A8(1);
          v1307 = &v1519;
          v1519 = v1304;
          v1308 = &v1518;
          v1518 = v1305;
          v1309 = &v1517;
          v1517 = v1306;
          sub_1B0394A48(2, &v1519);
          sub_1B0394A48(5, v1307);
          v90 = v1401;
          v1515 = v1418;
          v1516 = v1344;
          sub_1B03949FC(&v1515, v1307, v1308, v1309);
          v1310 = v90;
          v1311 = v1344;
          v1312 = v1345;
          v1313 = v1346;
          v1314 = v1347;
          v1315 = v1348;
          v1316 = v1349;
          v1317 = v1350;
          v1318 = v1351;
          v1319 = v1352;
          v1320 = v1353;
          v1321 = v1354;
          v1322 = v1355;
          v1323 = v1356;
          v1324 = v1357;
          v1325 = v1359;
          if (v90)
          {
            v1286 = v1311;
            v1287 = v1312;
            v1288 = v1313;
            v1289 = v1314;
            v1290 = v1315;
            v1291 = v1316;
            v1292 = v1317;
            v1293 = v1318;
            v1294 = v1319;
            v1295 = v1320;
            v1296 = v1321;
            v1297 = v1322;
            v1298 = v1323;
            v1299 = v1324;
            v1300 = v1325;
            v1061 = v1325;
            v1060 = v1324;
            v1059 = v1323;
            v1058 = v1322;
            v1057 = v1321;
            v1056 = v1320;
            v1055 = v1319;
            v1054 = v1318;
            v1053 = v1317;
            v1052 = v1316;
            v1051 = v1315;
            v1050 = v1314;
            v1049 = v1313;
            v1048 = v1312;

            __break(1u);
          }

          else
          {
            v1515 = v1419;
            v1516 = v1345;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1270 = 0;
            v1271 = v1344;
            v1272 = v1345;
            v1273 = v1346;
            v1274 = v1347;
            v1275 = v1348;
            v1276 = v1349;
            v1277 = v1350;
            v1278 = v1351;
            v1279 = v1352;
            v1280 = v1353;
            v1281 = v1354;
            v1282 = v1355;
            v1283 = v1356;
            v1284 = v1357;
            v1285 = v1359;
            v1515 = v1420;
            v1516 = v1346;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1254 = 0;
            v1255 = v1344;
            v1256 = v1345;
            v1257 = v1346;
            v1258 = v1347;
            v1259 = v1348;
            v1260 = v1349;
            v1261 = v1350;
            v1262 = v1351;
            v1263 = v1352;
            v1264 = v1353;
            v1265 = v1354;
            v1266 = v1355;
            v1267 = v1356;
            v1268 = v1357;
            v1269 = v1359;
            v1515 = v1421;
            v1516 = v1347;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1238 = 0;
            v1239 = v1344;
            v1240 = v1345;
            v1241 = v1346;
            v1242 = v1347;
            v1243 = v1348;
            v1244 = v1349;
            v1245 = v1350;
            v1246 = v1351;
            v1247 = v1352;
            v1248 = v1353;
            v1249 = v1354;
            v1250 = v1355;
            v1251 = v1356;
            v1252 = v1357;
            v1253 = v1359;
            v1515 = v1422;
            v1516 = v1348;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1222 = 0;
            v1223 = v1344;
            v1224 = v1345;
            v1225 = v1346;
            v1226 = v1347;
            v1227 = v1348;
            v1228 = v1349;
            v1229 = v1350;
            v1230 = v1351;
            v1231 = v1352;
            v1232 = v1353;
            v1233 = v1354;
            v1234 = v1355;
            v1235 = v1356;
            v1236 = v1357;
            v1237 = v1359;
            v1515 = v1423;
            v1516 = v1349;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1206 = 0;
            v1207 = v1344;
            v1208 = v1345;
            v1209 = v1346;
            v1210 = v1347;
            v1211 = v1348;
            v1212 = v1349;
            v1213 = v1350;
            v1214 = v1351;
            v1215 = v1352;
            v1216 = v1353;
            v1217 = v1354;
            v1218 = v1355;
            v1219 = v1356;
            v1220 = v1357;
            v1221 = v1359;
            v1515 = v1424;
            v1516 = v1350;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1190 = 0;
            v1191 = v1344;
            v1192 = v1345;
            v1193 = v1346;
            v1194 = v1347;
            v1195 = v1348;
            v1196 = v1349;
            v1197 = v1350;
            v1198 = v1351;
            v1199 = v1352;
            v1200 = v1353;
            v1201 = v1354;
            v1202 = v1355;
            v1203 = v1356;
            v1204 = v1357;
            v1205 = v1359;
            v1515 = v1425;
            v1516 = v1351;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1174 = 0;
            v1175 = v1344;
            v1176 = v1345;
            v1177 = v1346;
            v1178 = v1347;
            v1179 = v1348;
            v1180 = v1349;
            v1181 = v1350;
            v1182 = v1351;
            v1183 = v1352;
            v1184 = v1353;
            v1185 = v1354;
            v1186 = v1355;
            v1187 = v1356;
            v1188 = v1357;
            v1189 = v1359;
            v1515 = v1426;
            v1516 = v1352;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1158 = 0;
            v1159 = v1344;
            v1160 = v1345;
            v1161 = v1346;
            v1162 = v1347;
            v1163 = v1348;
            v1164 = v1349;
            v1165 = v1350;
            v1166 = v1351;
            v1167 = v1352;
            v1168 = v1353;
            v1169 = v1354;
            v1170 = v1355;
            v1171 = v1356;
            v1172 = v1357;
            v1173 = v1359;
            v1515 = v1427;
            v1516 = v1353;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1142 = 0;
            v1143 = v1344;
            v1144 = v1345;
            v1145 = v1346;
            v1146 = v1347;
            v1147 = v1348;
            v1148 = v1349;
            v1149 = v1350;
            v1150 = v1351;
            v1151 = v1352;
            v1152 = v1353;
            v1153 = v1354;
            v1154 = v1355;
            v1155 = v1356;
            v1156 = v1357;
            v1157 = v1359;
            v1515 = v1428;
            v1516 = v1354;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1126 = 0;
            v1127 = v1344;
            v1128 = v1345;
            v1129 = v1346;
            v1130 = v1347;
            v1131 = v1348;
            v1132 = v1349;
            v1133 = v1350;
            v1134 = v1351;
            v1135 = v1352;
            v1136 = v1353;
            v1137 = v1354;
            v1138 = v1355;
            v1139 = v1356;
            v1140 = v1357;
            v1141 = v1359;
            v1515 = v1429;
            v1516 = v1355;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1110 = 0;
            v1111 = v1344;
            v1112 = v1345;
            v1113 = v1346;
            v1114 = v1347;
            v1115 = v1348;
            v1116 = v1349;
            v1117 = v1350;
            v1118 = v1351;
            v1119 = v1352;
            v1120 = v1353;
            v1121 = v1354;
            v1122 = v1355;
            v1123 = v1356;
            v1124 = v1357;
            v1125 = v1359;
            v1515 = v1430;
            v1516 = v1356;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1094 = 0;
            v1095 = v1344;
            v1096 = v1345;
            v1097 = v1346;
            v1098 = v1347;
            v1099 = v1348;
            v1100 = v1349;
            v1101 = v1350;
            v1102 = v1351;
            v1103 = v1352;
            v1104 = v1353;
            v1105 = v1354;
            v1106 = v1355;
            v1107 = v1356;
            v1108 = v1357;
            v1109 = v1359;
            v1515 = v1431;
            v1516 = v1357;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1078 = 0;
            v1079 = v1344;
            v1080 = v1345;
            v1081 = v1346;
            v1082 = v1347;
            v1083 = v1348;
            v1084 = v1349;
            v1085 = v1350;
            v1086 = v1351;
            v1087 = v1352;
            v1088 = v1353;
            v1089 = v1354;
            v1090 = v1355;
            v1091 = v1356;
            v1092 = v1357;
            v1093 = v1359;
            v1515 = v1432;
            v1516 = v1359;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1062 = 0;
            v1063 = v1344;
            v1064 = v1345;
            v1065 = v1346;
            v1066 = v1347;
            v1067 = v1348;
            v1068 = v1349;
            v1069 = v1350;
            v1070 = v1351;
            v1071 = v1352;
            v1072 = v1353;
            v1073 = v1354;
            v1074 = v1355;
            v1075 = v1356;
            v1076 = v1357;
            v1077 = v1359;
            _os_log_impl(&dword_1B0389000, v1362, v1363, "[%.*hhx-%.*X] Mailbox ID %s is not unique.", v1304, 0x21u);
            sub_1B03998A8(v1305);
            sub_1B03998A8(v1306);
            sub_1B0E45D58();

            v1301 = v1062;
          }
        }

        else
        {

          v1301 = v1401;
        }

        v1046 = v1301;
        MEMORY[0x1E69E5920](v1362);
        (*(v1484 + 8))(v1490, v1483);
        v1047 = v1046;
      }

      else
      {
        v1047 = v1401;
      }

      v1040 = v1047;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1041 = &v1527;
      v1527 = v1395;
      v1528 = v1390;
      v1042 = v1529;
      sub_1B0E44778();
      sub_1B039E440(v1041);
      v1043 = v1529[0];
      v1044 = v1529[1];
      v1045 = v1530 | (*(v1042 + 20) << 32);
      if (v1529[0])
      {
        v1037 = v1043;
        v1038 = v1044;
        v1039 = v1045 & 0xFFFFFFFFFFLL;
        v984 = v1045 & 0xFFFFFFFFFFLL;
        v983 = v1044;
        v982 = v1043;
        v1525 = v1043;
        v1526[0] = v1044;
        LODWORD(v1526[1]) = v1045;
        BYTE4(v1526[1]) = (v1045 & 0xFFFFFFFFFFLL) >> 32;
        (*(v1484 + 16))(v1488, v1481, v1483);
        sub_1B0394784(v1481, v1480);
        sub_1B0394784(v1480, v1478);
        sub_1B03F4FD0(v1480, v1476);
        v91 = (v1478 + *(v1474 + 20));
        v976 = *v91;
        v977 = *(v91 + 1);
        sub_1B039480C(v1478);
        v1006 = 24;
        v1003 = 7;
        v92 = swift_allocObject();
        v93 = v977;
        v987 = v92;
        *(v92 + 16) = v976;
        *(v92 + 20) = v93;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v94 = swift_allocObject();
        v95 = v977;
        v978 = v94;
        *(v94 + 16) = v976;
        *(v94 + 20) = v95;

        v1002 = 32;
        v96 = swift_allocObject();
        v97 = v978;
        v992 = v96;
        *(v96 + 16) = v1433;
        *(v96 + 24) = v97;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v1476);
        MEMORY[0x1E69E5928](v1394);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v981 = 37;
        v98 = swift_allocObject();
        v99 = v1395;
        v100 = v1390;
        v101 = v1389;
        v979 = v98;
        *(v98 + 16) = v1394;
        *(v98 + 24) = v99;
        *(v98 + 32) = v100;
        *(v98 + 36) = v101;

        v102 = swift_allocObject();
        v103 = v979;
        v995 = v102;
        *(v102 + 16) = v1434;
        *(v102 + 24) = v103;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v104 = swift_allocObject();
        v105 = v1392;
        v980 = v104;
        *(v104 + 16) = v1396;
        *(v104 + 24) = v105;

        v106 = swift_allocObject();
        v107 = v980;
        v997 = v106;
        *(v106 + 16) = v1435;
        *(v106 + 24) = v107;

        MEMORY[0x1E69E5928](v982);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v108 = swift_allocObject();
        v109 = v983;
        v110 = v984;
        v111 = BYTE4(v984);
        v985 = v108;
        *(v108 + 16) = v982;
        *(v108 + 24) = v109;
        *(v108 + 32) = v110;
        *(v108 + 36) = v111;

        v112 = swift_allocObject();
        v113 = v985;
        v1004 = v112;
        *(v112 + 16) = v1436;
        *(v112 + 24) = v113;

        v1034 = sub_1B0E43988();
        v1035 = sub_1B0E458E8();
        v1000 = 17;
        v1007 = swift_allocObject();
        v989 = 16;
        *(v1007 + 16) = 16;
        v1008 = swift_allocObject();
        v991 = 4;
        *(v1008 + 16) = 4;
        v114 = swift_allocObject();
        v986 = v114;
        *(v114 + 16) = v1408;
        *(v114 + 24) = 0;
        v115 = swift_allocObject();
        v116 = v986;
        v1009 = v115;
        *(v115 + 16) = v1437;
        *(v115 + 24) = v116;
        v1010 = swift_allocObject();
        *(v1010 + 16) = 0;
        v1011 = swift_allocObject();
        *(v1011 + 16) = 1;
        v117 = swift_allocObject();
        v118 = v987;
        v988 = v117;
        *(v117 + 16) = v1438;
        *(v117 + 24) = v118;
        v119 = swift_allocObject();
        v120 = v988;
        v1012 = v119;
        *(v119 + 16) = v1439;
        *(v119 + 24) = v120;
        v1013 = swift_allocObject();
        *(v1013 + 16) = v989;
        v1014 = swift_allocObject();
        *(v1014 + 16) = v991;
        v121 = swift_allocObject();
        v990 = v121;
        *(v121 + 16) = v1412;
        *(v121 + 24) = 0;
        v122 = swift_allocObject();
        v123 = v990;
        v1015 = v122;
        *(v122 + 16) = v1440;
        *(v122 + 24) = v123;
        v1016 = swift_allocObject();
        *(v1016 + 16) = 0;
        v1017 = swift_allocObject();
        *(v1017 + 16) = v991;
        v124 = swift_allocObject();
        v125 = v992;
        v993 = v124;
        *(v124 + 16) = v1441;
        *(v124 + 24) = v125;
        v126 = swift_allocObject();
        v127 = v993;
        v1018 = v126;
        *(v126 + 16) = v1442;
        *(v126 + 24) = v127;
        v1019 = swift_allocObject();
        *(v1019 + 16) = 112;
        v1020 = swift_allocObject();
        v1001 = 8;
        *(v1020 + 16) = 8;
        v994 = swift_allocObject();
        *(v994 + 16) = 0x786F626C69616DLL;
        v128 = swift_allocObject();
        v129 = v994;
        v1021 = v128;
        *(v128 + 16) = v1443;
        *(v128 + 24) = v129;
        v1022 = swift_allocObject();
        *(v1022 + 16) = 37;
        v1023 = swift_allocObject();
        *(v1023 + 16) = v1001;
        v130 = swift_allocObject();
        v131 = v995;
        v996 = v130;
        *(v130 + 16) = v1444;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v996;
        v1024 = v132;
        *(v132 + 16) = v1445;
        *(v132 + 24) = v133;
        v1025 = swift_allocObject();
        v999 = 32;
        *(v1025 + 16) = 32;
        v1026 = swift_allocObject();
        *(v1026 + 16) = v1001;
        v134 = swift_allocObject();
        v135 = v997;
        v998 = v134;
        *(v134 + 16) = v1446;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v998;
        v1027 = v136;
        *(v136 + 16) = v1447;
        *(v136 + 24) = v137;
        v1028 = swift_allocObject();
        *(v1028 + 16) = v999;
        v1029 = swift_allocObject();
        *(v1029 + 16) = v1001;
        v138 = swift_allocObject();
        v139 = v1004;
        v1005 = v138;
        *(v138 + 16) = v1448;
        *(v138 + 24) = v139;
        v140 = swift_allocObject();
        v141 = v1005;
        v1031 = v140;
        *(v140 + 16) = v1449;
        *(v140 + 24) = v141;
        v1033 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1030 = sub_1B0E46A48();
        v1032 = v142;

        v143 = v1007;
        v144 = v1032;
        *v1032 = v1450;
        v144[1] = v143;

        v145 = v1008;
        v146 = v1032;
        v1032[2] = v1451;
        v146[3] = v145;

        v147 = v1009;
        v148 = v1032;
        v1032[4] = v1452;
        v148[5] = v147;

        v149 = v1010;
        v150 = v1032;
        v1032[6] = v1453;
        v150[7] = v149;

        v151 = v1011;
        v152 = v1032;
        v1032[8] = v1454;
        v152[9] = v151;

        v153 = v1012;
        v154 = v1032;
        v1032[10] = v1455;
        v154[11] = v153;

        v155 = v1013;
        v156 = v1032;
        v1032[12] = v1456;
        v156[13] = v155;

        v157 = v1014;
        v158 = v1032;
        v1032[14] = v1457;
        v158[15] = v157;

        v159 = v1015;
        v160 = v1032;
        v1032[16] = v1458;
        v160[17] = v159;

        v161 = v1016;
        v162 = v1032;
        v1032[18] = v1459;
        v162[19] = v161;

        v163 = v1017;
        v164 = v1032;
        v1032[20] = v1460;
        v164[21] = v163;

        v165 = v1018;
        v166 = v1032;
        v1032[22] = v1461;
        v166[23] = v165;

        v167 = v1019;
        v168 = v1032;
        v1032[24] = v1462;
        v168[25] = v167;

        v169 = v1020;
        v170 = v1032;
        v1032[26] = v1463;
        v170[27] = v169;

        v171 = v1021;
        v172 = v1032;
        v1032[28] = v1464;
        v172[29] = v171;

        v173 = v1022;
        v174 = v1032;
        v1032[30] = v1465;
        v174[31] = v173;

        v175 = v1023;
        v176 = v1032;
        v1032[32] = v1466;
        v176[33] = v175;

        v177 = v1024;
        v178 = v1032;
        v1032[34] = v1467;
        v178[35] = v177;

        v179 = v1025;
        v180 = v1032;
        v1032[36] = v1468;
        v180[37] = v179;

        v181 = v1026;
        v182 = v1032;
        v1032[38] = v1469;
        v182[39] = v181;

        v183 = v1027;
        v184 = v1032;
        v1032[40] = v1470;
        v184[41] = v183;

        v185 = v1028;
        v186 = v1032;
        v1032[42] = v1471;
        v186[43] = v185;

        v187 = v1029;
        v188 = v1032;
        v1032[44] = v1472;
        v188[45] = v187;

        v189 = v1031;
        v190 = v1032;
        v1032[46] = v1473;
        v190[47] = v189;
        sub_1B0394964();

        if (os_log_type_enabled(v1034, v1035))
        {
          v191 = v1011;
          v192 = v1010;
          v193 = v1009;
          v194 = v1008;
          v195 = v1007;
          v945 = sub_1B0E45D78();
          v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v946 = sub_1B03949A8(0);
          v947 = sub_1B03949A8(3);
          v948 = &v1524;
          v1524 = v945;
          v949 = &v1523;
          v1523 = v946;
          v950 = &v1522;
          v1522 = v947;
          sub_1B0394A48(3, &v1524);
          sub_1B0394A48(8, v948);
          v196 = v1040;
          v1520 = v1450;
          v1521 = v195;
          sub_1B03949FC(&v1520, v948, v949, v950);
          v951 = v196;
          v952 = v195;
          v953 = v194;
          v954 = v193;
          v955 = v192;
          v956 = v191;
          v957 = v1012;
          v958 = v1013;
          v959 = v1014;
          v960 = v1015;
          v961 = v1016;
          v962 = v1017;
          v963 = v1018;
          v964 = v1019;
          v965 = v1020;
          v966 = v1021;
          v967 = v1022;
          v968 = v1023;
          v969 = v1024;
          v970 = v1025;
          v971 = v1026;
          v972 = v1027;
          v973 = v1028;
          v974 = v1029;
          v975 = v1031;
          if (v196)
          {
            v919 = v952;
            v920 = v953;
            v921 = v954;
            v922 = v955;
            v923 = v956;
            v924 = v957;
            v925 = v958;
            v926 = v959;
            v927 = v960;
            v928 = v961;
            v929 = v962;
            v930 = v963;
            v931 = v964;
            v932 = v965;
            v933 = v966;
            v934 = v967;
            v935 = v968;
            v936 = v969;
            v937 = v970;
            v938 = v971;
            v939 = v972;
            v940 = v973;
            v941 = v974;
            v942 = v975;
            v343 = v975;
            v342 = v974;
            v341 = v973;
            v340 = v972;
            v339 = v971;
            v338 = v970;
            v337 = v969;
            v336 = v968;
            v335 = v967;
            v334 = v966;
            v333 = v965;
            v332 = v964;
            v331 = v963;
            v330 = v962;
            v329 = v961;
            v328 = v960;
            v327 = v959;
            v326 = v958;
            v325 = v957;
            v324 = v956;
            v323 = v955;
            v322 = v954;
            v321 = v953;

            __break(1u);
          }

          else
          {
            v197 = v1011;
            v198 = v1010;
            v199 = v1009;
            v200 = v1008;
            v201 = v1007;
            v1520 = v1451;
            v1521 = v1008;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v894 = 0;
            v895 = v201;
            v896 = v200;
            v897 = v199;
            v898 = v198;
            v899 = v197;
            v900 = v1012;
            v901 = v1013;
            v902 = v1014;
            v903 = v1015;
            v904 = v1016;
            v905 = v1017;
            v906 = v1018;
            v907 = v1019;
            v908 = v1020;
            v909 = v1021;
            v910 = v1022;
            v911 = v1023;
            v912 = v1024;
            v913 = v1025;
            v914 = v1026;
            v915 = v1027;
            v916 = v1028;
            v917 = v1029;
            v918 = v1031;
            v202 = v1011;
            v203 = v1010;
            v204 = v1009;
            v205 = v1008;
            v206 = v1007;
            v1520 = v1452;
            v1521 = v1009;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v869 = 0;
            v870 = v206;
            v871 = v205;
            v872 = v204;
            v873 = v203;
            v874 = v202;
            v875 = v1012;
            v876 = v1013;
            v877 = v1014;
            v878 = v1015;
            v879 = v1016;
            v880 = v1017;
            v881 = v1018;
            v882 = v1019;
            v883 = v1020;
            v884 = v1021;
            v885 = v1022;
            v886 = v1023;
            v887 = v1024;
            v888 = v1025;
            v889 = v1026;
            v890 = v1027;
            v891 = v1028;
            v892 = v1029;
            v893 = v1031;
            v207 = v1011;
            v208 = v1010;
            v209 = v1009;
            v210 = v1008;
            v211 = v1007;
            v1520 = v1453;
            v1521 = v1010;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v844 = 0;
            v845 = v211;
            v846 = v210;
            v847 = v209;
            v848 = v208;
            v849 = v207;
            v850 = v1012;
            v851 = v1013;
            v852 = v1014;
            v853 = v1015;
            v854 = v1016;
            v855 = v1017;
            v856 = v1018;
            v857 = v1019;
            v858 = v1020;
            v859 = v1021;
            v860 = v1022;
            v861 = v1023;
            v862 = v1024;
            v863 = v1025;
            v864 = v1026;
            v865 = v1027;
            v866 = v1028;
            v867 = v1029;
            v868 = v1031;
            v212 = v1011;
            v213 = v1010;
            v214 = v1009;
            v215 = v1008;
            v216 = v1007;
            v1520 = v1454;
            v1521 = v1011;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v819 = 0;
            v820 = v216;
            v821 = v215;
            v822 = v214;
            v823 = v213;
            v824 = v212;
            v825 = v1012;
            v826 = v1013;
            v827 = v1014;
            v828 = v1015;
            v829 = v1016;
            v830 = v1017;
            v831 = v1018;
            v832 = v1019;
            v833 = v1020;
            v834 = v1021;
            v835 = v1022;
            v836 = v1023;
            v837 = v1024;
            v838 = v1025;
            v839 = v1026;
            v840 = v1027;
            v841 = v1028;
            v842 = v1029;
            v843 = v1031;
            v217 = v1011;
            v218 = v1010;
            v219 = v1009;
            v220 = v1008;
            v221 = v1007;
            v1520 = v1455;
            v1521 = v1012;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v794 = 0;
            v795 = v221;
            v796 = v220;
            v797 = v219;
            v798 = v218;
            v799 = v217;
            v800 = v1012;
            v801 = v1013;
            v802 = v1014;
            v803 = v1015;
            v804 = v1016;
            v805 = v1017;
            v806 = v1018;
            v807 = v1019;
            v808 = v1020;
            v809 = v1021;
            v810 = v1022;
            v811 = v1023;
            v812 = v1024;
            v813 = v1025;
            v814 = v1026;
            v815 = v1027;
            v816 = v1028;
            v817 = v1029;
            v818 = v1031;
            v222 = v1011;
            v223 = v1010;
            v224 = v1009;
            v225 = v1008;
            v226 = v1007;
            v1520 = v1456;
            v1521 = v1013;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v769 = 0;
            v770 = v226;
            v771 = v225;
            v772 = v224;
            v773 = v223;
            v774 = v222;
            v775 = v1012;
            v776 = v1013;
            v777 = v1014;
            v778 = v1015;
            v779 = v1016;
            v780 = v1017;
            v781 = v1018;
            v782 = v1019;
            v783 = v1020;
            v784 = v1021;
            v785 = v1022;
            v786 = v1023;
            v787 = v1024;
            v788 = v1025;
            v789 = v1026;
            v790 = v1027;
            v791 = v1028;
            v792 = v1029;
            v793 = v1031;
            v227 = v1011;
            v228 = v1010;
            v229 = v1009;
            v230 = v1008;
            v231 = v1007;
            v1520 = v1457;
            v1521 = v1014;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v744 = 0;
            v745 = v231;
            v746 = v230;
            v747 = v229;
            v748 = v228;
            v749 = v227;
            v750 = v1012;
            v751 = v1013;
            v752 = v1014;
            v753 = v1015;
            v754 = v1016;
            v755 = v1017;
            v756 = v1018;
            v757 = v1019;
            v758 = v1020;
            v759 = v1021;
            v760 = v1022;
            v761 = v1023;
            v762 = v1024;
            v763 = v1025;
            v764 = v1026;
            v765 = v1027;
            v766 = v1028;
            v767 = v1029;
            v768 = v1031;
            v232 = v1011;
            v233 = v1010;
            v234 = v1009;
            v235 = v1008;
            v236 = v1007;
            v1520 = v1458;
            v1521 = v1015;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v719 = 0;
            v720 = v236;
            v721 = v235;
            v722 = v234;
            v723 = v233;
            v724 = v232;
            v725 = v1012;
            v726 = v1013;
            v727 = v1014;
            v728 = v1015;
            v729 = v1016;
            v730 = v1017;
            v731 = v1018;
            v732 = v1019;
            v733 = v1020;
            v734 = v1021;
            v735 = v1022;
            v736 = v1023;
            v737 = v1024;
            v738 = v1025;
            v739 = v1026;
            v740 = v1027;
            v741 = v1028;
            v742 = v1029;
            v743 = v1031;
            v237 = v1011;
            v238 = v1010;
            v239 = v1009;
            v240 = v1008;
            v241 = v1007;
            v1520 = v1459;
            v1521 = v1016;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v694 = 0;
            v695 = v241;
            v696 = v240;
            v697 = v239;
            v698 = v238;
            v699 = v237;
            v700 = v1012;
            v701 = v1013;
            v702 = v1014;
            v703 = v1015;
            v704 = v1016;
            v705 = v1017;
            v706 = v1018;
            v707 = v1019;
            v708 = v1020;
            v709 = v1021;
            v710 = v1022;
            v711 = v1023;
            v712 = v1024;
            v713 = v1025;
            v714 = v1026;
            v715 = v1027;
            v716 = v1028;
            v717 = v1029;
            v718 = v1031;
            v242 = v1011;
            v243 = v1010;
            v244 = v1009;
            v245 = v1008;
            v246 = v1007;
            v1520 = v1460;
            v1521 = v1017;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v669 = 0;
            v670 = v246;
            v671 = v245;
            v672 = v244;
            v673 = v243;
            v674 = v242;
            v675 = v1012;
            v676 = v1013;
            v677 = v1014;
            v678 = v1015;
            v679 = v1016;
            v680 = v1017;
            v681 = v1018;
            v682 = v1019;
            v683 = v1020;
            v684 = v1021;
            v685 = v1022;
            v686 = v1023;
            v687 = v1024;
            v688 = v1025;
            v689 = v1026;
            v690 = v1027;
            v691 = v1028;
            v692 = v1029;
            v693 = v1031;
            v247 = v1011;
            v248 = v1010;
            v249 = v1009;
            v250 = v1008;
            v251 = v1007;
            v1520 = v1461;
            v1521 = v1018;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v644 = 0;
            v645 = v251;
            v646 = v250;
            v647 = v249;
            v648 = v248;
            v649 = v247;
            v650 = v1012;
            v651 = v1013;
            v652 = v1014;
            v653 = v1015;
            v654 = v1016;
            v655 = v1017;
            v656 = v1018;
            v657 = v1019;
            v658 = v1020;
            v659 = v1021;
            v660 = v1022;
            v661 = v1023;
            v662 = v1024;
            v663 = v1025;
            v664 = v1026;
            v665 = v1027;
            v666 = v1028;
            v667 = v1029;
            v668 = v1031;
            v252 = v1011;
            v253 = v1010;
            v254 = v1009;
            v255 = v1008;
            v256 = v1007;
            v1520 = v1462;
            v1521 = v1019;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v619 = 0;
            v620 = v256;
            v621 = v255;
            v622 = v254;
            v623 = v253;
            v624 = v252;
            v625 = v1012;
            v626 = v1013;
            v627 = v1014;
            v628 = v1015;
            v629 = v1016;
            v630 = v1017;
            v631 = v1018;
            v632 = v1019;
            v633 = v1020;
            v634 = v1021;
            v635 = v1022;
            v636 = v1023;
            v637 = v1024;
            v638 = v1025;
            v639 = v1026;
            v640 = v1027;
            v641 = v1028;
            v642 = v1029;
            v643 = v1031;
            v257 = v1011;
            v258 = v1010;
            v259 = v1009;
            v260 = v1008;
            v261 = v1007;
            v1520 = v1463;
            v1521 = v1020;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v594 = 0;
            v595 = v261;
            v596 = v260;
            v597 = v259;
            v598 = v258;
            v599 = v257;
            v600 = v1012;
            v601 = v1013;
            v602 = v1014;
            v603 = v1015;
            v604 = v1016;
            v605 = v1017;
            v606 = v1018;
            v607 = v1019;
            v608 = v1020;
            v609 = v1021;
            v610 = v1022;
            v611 = v1023;
            v612 = v1024;
            v613 = v1025;
            v614 = v1026;
            v615 = v1027;
            v616 = v1028;
            v617 = v1029;
            v618 = v1031;
            v262 = v1011;
            v263 = v1010;
            v264 = v1009;
            v265 = v1008;
            v266 = v1007;
            v1520 = v1464;
            v1521 = v1021;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v569 = 0;
            v570 = v266;
            v571 = v265;
            v572 = v264;
            v573 = v263;
            v574 = v262;
            v575 = v1012;
            v576 = v1013;
            v577 = v1014;
            v578 = v1015;
            v579 = v1016;
            v580 = v1017;
            v581 = v1018;
            v582 = v1019;
            v583 = v1020;
            v584 = v1021;
            v585 = v1022;
            v586 = v1023;
            v587 = v1024;
            v588 = v1025;
            v589 = v1026;
            v590 = v1027;
            v591 = v1028;
            v592 = v1029;
            v593 = v1031;
            v267 = v1011;
            v268 = v1010;
            v269 = v1009;
            v270 = v1008;
            v271 = v1007;
            v1520 = v1465;
            v1521 = v1022;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v544 = 0;
            v545 = v271;
            v546 = v270;
            v547 = v269;
            v548 = v268;
            v549 = v267;
            v550 = v1012;
            v551 = v1013;
            v552 = v1014;
            v553 = v1015;
            v554 = v1016;
            v555 = v1017;
            v556 = v1018;
            v557 = v1019;
            v558 = v1020;
            v559 = v1021;
            v560 = v1022;
            v561 = v1023;
            v562 = v1024;
            v563 = v1025;
            v564 = v1026;
            v565 = v1027;
            v566 = v1028;
            v567 = v1029;
            v568 = v1031;
            v272 = v1011;
            v273 = v1010;
            v274 = v1009;
            v275 = v1008;
            v276 = v1007;
            v1520 = v1466;
            v1521 = v1023;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v519 = 0;
            v520 = v276;
            v521 = v275;
            v522 = v274;
            v523 = v273;
            v524 = v272;
            v525 = v1012;
            v526 = v1013;
            v527 = v1014;
            v528 = v1015;
            v529 = v1016;
            v530 = v1017;
            v531 = v1018;
            v532 = v1019;
            v533 = v1020;
            v534 = v1021;
            v535 = v1022;
            v536 = v1023;
            v537 = v1024;
            v538 = v1025;
            v539 = v1026;
            v540 = v1027;
            v541 = v1028;
            v542 = v1029;
            v543 = v1031;
            v277 = v1011;
            v278 = v1010;
            v279 = v1009;
            v280 = v1008;
            v281 = v1007;
            v1520 = v1467;
            v1521 = v1024;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v494 = 0;
            v495 = v281;
            v496 = v280;
            v497 = v279;
            v498 = v278;
            v499 = v277;
            v500 = v1012;
            v501 = v1013;
            v502 = v1014;
            v503 = v1015;
            v504 = v1016;
            v505 = v1017;
            v506 = v1018;
            v507 = v1019;
            v508 = v1020;
            v509 = v1021;
            v510 = v1022;
            v511 = v1023;
            v512 = v1024;
            v513 = v1025;
            v514 = v1026;
            v515 = v1027;
            v516 = v1028;
            v517 = v1029;
            v518 = v1031;
            v282 = v1011;
            v283 = v1010;
            v284 = v1009;
            v285 = v1008;
            v286 = v1007;
            v1520 = v1468;
            v1521 = v1025;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v469 = 0;
            v470 = v286;
            v471 = v285;
            v472 = v284;
            v473 = v283;
            v474 = v282;
            v475 = v1012;
            v476 = v1013;
            v477 = v1014;
            v478 = v1015;
            v479 = v1016;
            v480 = v1017;
            v481 = v1018;
            v482 = v1019;
            v483 = v1020;
            v484 = v1021;
            v485 = v1022;
            v486 = v1023;
            v487 = v1024;
            v488 = v1025;
            v489 = v1026;
            v490 = v1027;
            v491 = v1028;
            v492 = v1029;
            v493 = v1031;
            v287 = v1011;
            v288 = v1010;
            v289 = v1009;
            v290 = v1008;
            v291 = v1007;
            v1520 = v1469;
            v1521 = v1026;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v444 = 0;
            v445 = v291;
            v446 = v290;
            v447 = v289;
            v448 = v288;
            v449 = v287;
            v450 = v1012;
            v451 = v1013;
            v452 = v1014;
            v453 = v1015;
            v454 = v1016;
            v455 = v1017;
            v456 = v1018;
            v457 = v1019;
            v458 = v1020;
            v459 = v1021;
            v460 = v1022;
            v461 = v1023;
            v462 = v1024;
            v463 = v1025;
            v464 = v1026;
            v465 = v1027;
            v466 = v1028;
            v467 = v1029;
            v468 = v1031;
            v292 = v1011;
            v293 = v1010;
            v294 = v1009;
            v295 = v1008;
            v296 = v1007;
            v1520 = v1470;
            v1521 = v1027;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v419 = 0;
            v420 = v296;
            v421 = v295;
            v422 = v294;
            v423 = v293;
            v424 = v292;
            v425 = v1012;
            v426 = v1013;
            v427 = v1014;
            v428 = v1015;
            v429 = v1016;
            v430 = v1017;
            v431 = v1018;
            v432 = v1019;
            v433 = v1020;
            v434 = v1021;
            v435 = v1022;
            v436 = v1023;
            v437 = v1024;
            v438 = v1025;
            v439 = v1026;
            v440 = v1027;
            v441 = v1028;
            v442 = v1029;
            v443 = v1031;
            v297 = v1011;
            v298 = v1010;
            v299 = v1009;
            v300 = v1008;
            v301 = v1007;
            v1520 = v1471;
            v1521 = v1028;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v394 = 0;
            v395 = v301;
            v396 = v300;
            v397 = v299;
            v398 = v298;
            v399 = v297;
            v400 = v1012;
            v401 = v1013;
            v402 = v1014;
            v403 = v1015;
            v404 = v1016;
            v405 = v1017;
            v406 = v1018;
            v407 = v1019;
            v408 = v1020;
            v409 = v1021;
            v410 = v1022;
            v411 = v1023;
            v412 = v1024;
            v413 = v1025;
            v414 = v1026;
            v415 = v1027;
            v416 = v1028;
            v417 = v1029;
            v418 = v1031;
            v302 = v1011;
            v303 = v1010;
            v304 = v1009;
            v305 = v1008;
            v306 = v1007;
            v1520 = v1472;
            v1521 = v1029;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v369 = 0;
            v370 = v306;
            v371 = v305;
            v372 = v304;
            v373 = v303;
            v374 = v302;
            v375 = v1012;
            v376 = v1013;
            v377 = v1014;
            v378 = v1015;
            v379 = v1016;
            v380 = v1017;
            v381 = v1018;
            v382 = v1019;
            v383 = v1020;
            v384 = v1021;
            v385 = v1022;
            v386 = v1023;
            v387 = v1024;
            v388 = v1025;
            v389 = v1026;
            v390 = v1027;
            v391 = v1028;
            v392 = v1029;
            v393 = v1031;
            v307 = v1011;
            v308 = v1010;
            v309 = v1009;
            v310 = v1008;
            v311 = v1007;
            v1520 = v1473;
            v1521 = v1031;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v344 = 0;
            v345 = v311;
            v346 = v310;
            v347 = v309;
            v348 = v308;
            v349 = v307;
            v350 = v1012;
            v351 = v1013;
            v352 = v1014;
            v353 = v1015;
            v354 = v1016;
            v355 = v1017;
            v356 = v1018;
            v357 = v1019;
            v358 = v1020;
            v359 = v1021;
            v360 = v1022;
            v361 = v1023;
            v362 = v1024;
            v363 = v1025;
            v364 = v1026;
            v365 = v1027;
            v366 = v1028;
            v367 = v1029;
            v368 = v1031;
            _os_log_impl(&dword_1B0389000, v1034, v1035, "[%.*hhx-%.*X] Mailbox name '%{sensitive,mask.mailbox}s' is not unique (%s %s).", v945, 0x3Fu);
            sub_1B03998A8(v946);
            sub_1B03998A8(v947);
            sub_1B0E45D58();

            v943 = v344;
          }
        }

        else
        {

          v943 = v1040;
        }

        v320 = v943;
        MEMORY[0x1E69E5920](v1034);
        (*(v1484 + 8))(v1488, v1483);
        MEMORY[0x1E69E5920](v982);

        v1036 = v320;
      }

      else
      {
        v1036 = v1040;
      }

      v319 = v1036;

      MEMORY[0x1E69E5920](v1394);

      v1372 = v319;
    }
  }

  sub_1B039E440(v1543);
  v313 = &v1544;
  v314 = v1544;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v313);
  sub_1B039E440(&v1545);
  return v314;
}

uint64_t sub_1B08964F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B0896530(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return a2;
}

uint64_t sub_1B0896584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x1E69E5928](a1);
  v12 = [a1 databaseID];
  MEMORY[0x1E69E5920](a1);
  result = sub_1B039BF24(v12, v2, v3, v4, v5, v6, v7, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B0896600()
{
  if (*(v0 + *(type metadata accessor for MailboxUpdateTree() + 52)))
  {
    sub_1B0E42A08();
    v3 = sub_1B0E46A48();
    MEMORY[0x1E69E5928](@"AccountMailboxListingDidChange");
    sub_1B0E44AD8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = sub_1B0E44AC8();
    MEMORY[0x1E69E5928](v2);

    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](@"AccountMailboxListingDidChange");
    sub_1B0E429E8();
    sub_1B0394964();
    return v3;
  }

  else
  {
    sub_1B0E42A08();
    return sub_1B0E46A48();
  }
}

uint64_t sub_1B0896744(uint64_t a1)
{
  v4 = a1;
  v11 = 0;
  v7 = sub_1B0E42A08();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v3 - v3;
  v8 = &v3 - v3;
  v11 = MEMORY[0x1EEE9AC00](v4);
  v10 = [objc_opt_self() defaultCenter];
  (*(v5 + 16))(v1, v4, v7);
  v9 = sub_1B0E429C8();
  (*(v5 + 8))(v8, v7);
  [v10 postNotification_];
  MEMORY[0x1E69E5920](v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1B08968AC(uint64_t a1)
{
  MEMORY[0x1E69E5928](@"AccountMailboxListingDidChange");
  sub_1B0E44AD8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](@"AccountMailboxListingDidChange");
  MEMORY[0x1E69E5928](a1);
  sub_1B03EE50C();
  return sub_1B0E429E8();
}

unint64_t sub_1B08969A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a1;
  v129 = a2;
  v127 = a3;
  v122 = "Fatal error";
  v123 = "Range requires lowerBound <= upperBound";
  v124 = "Swift/Range.swift";
  v180 = 0;
  v181 = 0;
  v182 = 0;
  memset(v179, 0, 13);
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0u;
  v153 = 0u;
  v125 = 0;
  v149[0] = 0;
  *(v149 + 5) = 0;
  v146 = 0;
  v147 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v183 = a4;
  v184 = a5;
  v131 = a4;
  v132 = a5;
  v128 = BYTE4(a5);
  v126 = 0;
  v5 = (*(*(sub_1B0E44B68() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v130);
  v133 = &v31 - v7;
  v180 = v6;
  v181 = v8;
  v182 = v9;
  v179[0] = v131;
  LODWORD(v179[1]) = v132;
  BYTE4(v179[1]) = v10;
  v177 = v131;
  LODWORD(v178) = v132;
  BYTE4(v178) = v10;
  v134 = MailboxPath.pathSeparator.getter(v131, v178);
  v135 = v11;
  if (!v11)
  {
    goto LABEL_53;
  }

  v120 = v134;
  v121 = v135;
  v117 = v135;
  v118 = v134;
  v175 = v134;
  v176 = v135;
  v12 = sub_1B0E447F8();
  v174 = v12;
  v119 = v12;
  if ((v12 & 0x100) != 0)
  {

LABEL_53:
    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  v116 = v119;
  v115 = v119;
  v173 = v119;
  sub_1B07BA724(v130);
  if (v130)
  {
    v112 = v130;
    v113 = v129;
    v114 = v127;
    v107 = v127;
    v105 = v129;
    v106 = v130;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v108 = Namespace.removePrefix(_:)(v131, v132, v106);
    v109 = v13;

    v110 = v108;
    v111 = v109;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v169 = v110;
  v170 = v111;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v169)
  {
    v171 = v169;
    v172 = v170;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v171 = v131;
    v172 = v132;
    if (v169)
    {
      sub_1B039E440(&v169);
    }
  }

  v101 = v171;
  v100 = v172;
  v167 = v171;
  v168 = v172;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v166 = v101;
  v163 = v101;
  v103 = &v162;
  v162 = v115;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B08A4AE0();
  sub_1B0E448D8();
  v104 = v164;
  if (v165)
  {

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  v99 = v104;
  v97 = v104;
  v161 = v104;
  v14 = sub_1B0E451C8();
  v98 = v14;
  if (v97 < v14)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v91 = sub_1B0E45388();
  v92 = v15;
  v93 = v16;
  v94 = v17;
  *&v159 = v91;
  *(&v159 + 1) = v15;
  *&v160 = v16;
  *(&v160 + 1) = v17;
  v158[4] = v91;
  v158[5] = v15;
  v158[6] = v16;
  v158[7] = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A8, &unk_1B0E9E120);
  v96 = sub_1B08A4B68();
  if (sub_1B0E45748())
  {
    swift_unknownObjectRelease();

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  swift_unknownObjectRetain();
  v87 = v158;
  v158[0] = v91;
  v158[1] = v92;
  v158[2] = v93;
  v158[3] = v94;
  v88 = sub_1B08A4BF0();
  v18 = sub_1B0E45378();
  v89 = MailboxName.init(_:)(v18);
  v90 = v19;
  v156 = v89;
  v157 = v19;
  sub_1B07BA724(v130);
  if (v130)
  {
    v84 = v130;
    v85 = v129;
    v86 = v127;
    v77 = v127;
    v78 = v129;
    v79 = v130;
    v140 = v130;
    v141 = v129;
    v142 = v127;
    v138 = v89;
    v139 = v90;
    v20 = MailboxName.inbox.unsafeMutableAddressor();
    v80 = *v20;
    v81 = *(v20 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v136 = v80;
    v137 = v81;
    v82 = v138;
    v83 = v80;
    if ((v139 | (v139 << 32)) == (v81 | (v81 << 32)))
    {
      v76 = sub_1B04520BC(v82, v83);
    }

    else
    {
      v76 = 0;
    }

    v75 = v76;
    sub_1B039E440(&v136);
    if ((v75 & 1) == 0)
    {
      v154 = Namespace.addPrefix(to:)(v89, v90, v79);
      v155 = v21;

      goto LABEL_29;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v154 = v89;
  v155 = v90;
LABEL_29:
  sub_1B07BA724(v130);
  if (v130)
  {
    v72 = v130;
    v73 = v129;
    v74 = v127;
    v69 = v127;
    v70 = v129;
    v71 = v130;
    v143 = v130;
    v144 = v129;
    v145 = v127;
    v22 = Namespace.contains(_:)(v101, v100, v130);
    if (v22)
    {
      v67 = v154;
      v66 = v155;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v68 = Namespace.contains(_:)(v67, v66, v71);

      if ((v68 & 1) == 0)
      {

        sub_1B039E440(&v154);

        swift_unknownObjectRelease();

        v62 = v126;
        v63 = v126;
        v64 = v126;
        v65 = v126;
        return v62;
      }
    }
  }

  if (v97 < sub_1B0E452A8())
  {
    v59 = MEMORY[0x1E69E7508];
    v60 = sub_1B0E452B8();
    v61 = sub_1B0E452A8();
    if (v61 < v60)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v23 = v125;
    v49 = sub_1B0E45388();
    v50 = v24;
    v51 = v25;
    v52 = v26;
    *&v152 = v49;
    *(&v152 + 1) = v24;
    *&v153 = v25;
    *(&v153 + 1) = v26;
    v53 = v154;
    v54 = v155;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v150 = MailboxPath.init(name:pathSeparator:)(v53, v54, v118, v117);
    v151 = v27;
    v55 = v150;
    v56 = v27;
    v57 = BYTE4(v27);
    v58 = v23;
    if (v23)
    {

      v47 = 0;
      v48 = 0;
    }

    else
    {
      v47 = v55;
      v48 = v56 | (v57 << 32);
    }

    v45 = v48;
    v46 = v47;
    if (v47)
    {
      v43 = v46;
      v44 = v45 & 0xFFFFFFFFFFLL;
      v40 = (v45 & 0xFFFFFFFFFFLL) >> 32;
      v41 = v45;
      v42 = v46;
      v149[0] = v46;
      LODWORD(v149[1]) = v45;
      BYTE4(v149[1]) = v40;
      v148[4] = v49;
      v148[5] = v50;
      v148[6] = v51;
      v148[7] = v52;
      v28 = sub_1B0E45748();
      if ((v28 & 1) == 0)
      {
        v37 = v148;
        v148[0] = v49;
        v148[1] = v50;
        v148[2] = v51;
        v148[3] = v52;
        sub_1B0E44B48();
        v38 = sub_1B0E44B08();
        v39 = v29;
        if (v29)
        {
          v35 = v38;
          v36 = v39;
          v34 = v39;
          v33 = v38;
          v146 = v38;
          v147 = v39;
          v32 = v41 | (v40 << 32);
          swift_unknownObjectRelease();
          sub_1B039E440(&v154);

          swift_unknownObjectRelease();

          v62 = v42;
          v63 = v32;
          v64 = v33;
          v65 = v34;
          return v62;
        }
      }
    }

    swift_unknownObjectRelease();
    sub_1B039E440(&v154);

    swift_unknownObjectRelease();

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  sub_1B039E440(&v154);

  swift_unknownObjectRelease();

  v62 = v126;
  v63 = v126;
  v64 = v126;
  v65 = v126;
  return v62;
}

uint64_t *sub_1B0897668@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v201 = v300;
  v189 = v278;
  v190 = &v258;
  v191 = &v227;
  v192 = &v215;
  v200 = a1;
  v194 = a2;
  v196 = 0;
  v296 = 0;
  v277 = 0;
  v276 = 0;
  *(v265 + 5) = 0;
  v265[0] = 0;
  v257 = 0;
  v256 = 0;
  v195 = 0;
  v242 = 0u;
  v241 = 0u;
  *(v228 + 5) = 0;
  v228[0] = 0;
  v227 = 0;
  *&v208[13] = 0;
  *&v208[8] = 0;
  *v208 = 0;
  v300[0] = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v301 = *(a1 + 64);
  v300[3] = v5;
  v300[2] = v4;
  v300[1] = v3;
  v307 = v300[0];
  v311 = v301;
  v310 = v5;
  v309 = v4;
  v308 = v3;
  v6 = *(*(sub_1B0E44B68() - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v197 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = v2;
  updated = type metadata accessor for MailboxUpdateTree();
  v203 = *(v2 + *(updated + 36));
  v199 = v203;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = *v200;
  *(v201 + 101) = *(v200 + 5);
  v303 = v8;
  v202 = &v303;
  sub_1B06E38A8(&v303, &v295);
  sub_1B06E38A8(v202, &v294);
  v306 = v304;
  v305 = v303;
  sub_1B039E440(v202);
  v290 = v306;
  v289 = v305;
  v204 = sub_1B0451F2C();
  v205 = &v289;
  sub_1B0E44778();
  sub_1B039E440(v205);
  v206 = v291;
  v207 = v292 | (v293 << 32);
  if (v291)
  {
    v186 = v206;
    v187 = v207;
    v188 = BYTE4(v207);
    v9 = v195;
    v184 = BYTE4(v207);
    v183 = v207;
    v182 = v206;
    *v208 = v206;
    *&v208[16] = v207;
    v208[20] = BYTE4(v207);

    v10 = v201;
    v209 = v182;
    LODWORD(v210) = v183;
    BYTE4(v210) = v184;
    BYTE8(v212[1]) &= 1u;
    v201[8] = v182;
    v11 = v210;
    v12 = v211;
    v13 = v212[0];
    *(v10 + 185) = *(v212 + 9);
    v10[11] = v13;
    v10[10] = v12;
    v10[9] = v11;
    v185 = v9;
LABEL_29:
    v82 = v194;
    v83 = v201;
    result = v185;
    *v194 = v201[8];
    v85 = v83[9];
    v86 = v83[10];
    v87 = v83[11];
    *(v82 + 57) = *(v83 + 185);
    v82[3] = v87;
    v82[2] = v86;
    v82[1] = v85;
    return result;
  }

  v176 = *v200;
  v174 = *(v200 + 2);
  v175 = *(v200 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v287 = v176;
  LODWORD(v288) = v174;
  BYTE4(v288) = v175;
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v176, v288);
  v178 = v14;
  v177 = v14;

  v286 = v178;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  sub_1B0E44888();
  v180 = v284;
  v181 = v285;
  if (!v285)
  {

    v76 = v189;
    v77 = v201;
    v78 = v195;
    v88[0] = 0;
    v278[0] = 0;
    v278[1] = 0;
    v279 = 0uLL;
    v280 = 0uLL;
    v281 = 0uLL;
    v282 = 0;
    v283 = -64;
    v201[8] = 0u;
    v79 = v279;
    v80 = v280;
    v81 = v281;
    *(v77 + 185) = *(v76 + 57);
    v77[11] = v81;
    v77[10] = v80;
    v77[9] = v79;
    v185 = v78;
    goto LABEL_29;
  }

  v172 = v180;
  v173 = v181;
  v160 = v181;
  v161 = v180;
  v276 = v180;
  v277 = v181;

  v170 = *v200;
  v162 = *(v200 + 2);
  v163 = *(v200 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = (v193 + *(updated + 24));
  v164 = *v15;
  v165 = v15[1];
  v166 = v15[2];
  sub_1B07BA724(v164);
  v274 = v170;
  LODWORD(v275) = v162;
  BYTE4(v275) = v163;
  v171 = sub_1B08969A0(v164, v165, v166, v170, v275);
  v167 = v171;
  v168 = v16;
  *&v169 = v17;
  *(&v169 + 1) = v18;
  sub_1B07BA794(v164);

  if (v171)
  {
    v157 = v167;
    v158 = v168;
    v159 = v169;
    v149 = *(&v169 + 1);
    v147 = v169;
    v151 = v168;
    v150 = v167;
    *&v241 = v167;
    DWORD2(v241) = v168;
    BYTE12(v241) = BYTE4(v168);
    v242 = v169;
    v152 = *(v193 + *(updated + 36));
    v148 = v152;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v235 = v150;
    v236 = v151;
    v153 = &v235;
    sub_1B0E44778();
    sub_1B039E440(v153);
    v154 = v237;
    v155 = v238;
    v156 = v239 | (v240 << 32);
    if (!v237)
    {
      v41 = v195;

      v128 = 0;
      v229 = 0uLL;
      v230 = 0uLL;
      v231 = 0uLL;
      v232 = 0uLL;
      v233 = 0;
      v234 = -64;

      v42 = v191;
      v43 = v201;
      v201[8] = v229;
      v44 = v230;
      v45 = v231;
      v46 = v232;
      *(v43 + 185) = *(v42 + 81);
      v43[11] = v46;
      v43[10] = v45;
      v43[9] = v44;
      v185 = v41;
      goto LABEL_29;
    }

    v143 = v154;
    v144 = v155;
    v145 = v156;
    v146 = BYTE4(v156);
    v19 = v195;
    v130 = BYTE4(v156);
    v131 = v156;
    v132 = v155;
    v133 = v154;
    v227 = v154;
    v228[0] = v155;
    LODWORD(v228[1]) = v156;
    BYTE4(v228[1]) = BYTE4(v156);

    v134 = *v200;
    v135 = *(v200 + 2);
    v136 = *(v200 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = (v193 + *(updated + 24));
    v137 = *v20;
    v138 = v20[1];
    v139 = v20[2];
    sub_1B07BA724(v137);
    v225[0] = v137;
    v225[1] = v138;
    v225[2] = v139;
    sub_1B03BB0B4(v200, &v224);
    v140 = v88;
    MEMORY[0x1EEE9AC00](v88);
    v141 = &v88[-4];
    v88[-2] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
    sub_1B03F1A20(sub_1B08A4C78, v141, v22, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v23, &v226);
    v142 = v19;
    if (!v19)
    {
      sub_1B039E440(v200);
      sub_1B0876CCC(v225);
      v223 = v226;
      if (v226 == 2)
      {
        v129 = 0;
      }

      else
      {
        v129 = v223;
      }

      v24 = v142;
      v213 = v134;
      LODWORD(v214) = v135;
      BYTE4(v214) = v136;
      sub_1B089F374(v134, v214, v161, v160, v147, v149, v129 & 1, v297);
      v25 = v192;
      v26 = *(v189 + 25);
      v27 = *(v189 + 27);
      v28 = *(v189 + 29);
      v216 = v297[48];
      v192[2] = v28;
      v25[1] = v27;
      v215 = v26;

      v29 = v192;
      v217 = v133;
      v218 = v132;
      v219 = v131;
      v220 = v130;
      v30 = v215;
      v31 = v192[1];
      v32 = v192[2];
      v221 = v216;
      *(v192 + 120) = v32;
      *(v29 + 104) = v31;
      *(v29 + 88) = v30;
      v29[9] = v29[4];
      v33 = v29[5];
      v34 = v29[6];
      v35 = v29[7];
      *(v29 + 201) = *(v29 + 121);
      v29[12] = v35;
      v29[11] = v34;
      v29[10] = v33;
      v222 = v222 & 1 | 0x40;

      v36 = v192;
      v37 = v201;
      v201[8] = v192[9];
      v38 = v36[10];
      v39 = v36[11];
      v40 = v36[12];
      *(v37 + 185) = *(v36 + 201);
      v37[11] = v40;
      v37[10] = v39;
      v37[9] = v38;
      v185 = v24;
      goto LABEL_29;
    }

    sub_1B039E440(v200);
    __break(1u);
  }

  else
  {
    v47 = (v193 + *(updated + 24));
    v127 = *v47;
    v124 = v127;
    v125 = v47[1];
    v126 = v47[2];
    sub_1B07BA724(v127);
    if (v127)
    {
      v121 = v124;
      v122 = v125;
      v123 = v126;
      v115 = v126;
      v112 = v125;
      v114 = v124;
      v113 = *v200;
      v110 = *(v200 + 2);
      v111 = *(v200 + 12);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v245 = v113;
      LODWORD(v246) = v110;
      BYTE4(v246) = v111;
      v243 = Namespace.removePrefix(_:)(v113, v246, v114, v112, v115);
      v244 = v48;
      v116 = v243;
      v118 = v48;
      v117 = BYTE4(v48);

      v119 = v116;
      v120 = v118 | (v117 << 32);
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v268 = v119;
    v269 = v120;
    v270 = BYTE4(v120);
    sub_1B03BB0B4(v200, &v267);
    if (v268)
    {
      v271 = v268;
      v272 = v269;
      v273 = v270;
    }

    else
    {
      v49 = *v200;
      *(v201 + 85) = *(v200 + 5);
      v302 = v49;
      sub_1B06E38A8(&v302, &v266);
      v50 = v302;
      *(v190 + 213) = *(v201 + 85);
      v271 = v50;
      if (v268)
      {
        sub_1B039E440(&v268);
      }
    }

    sub_1B039E440(v200);
    v104 = v271;
    v103 = v271;
    v265[0] = v271;
    LODWORD(v265[1]) = v272;
    BYTE4(v265[1]) = v273;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v264 = v104;
    sub_1B0E44B48();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B07B517C();
    v106 = &v264;
    v51 = sub_1B0E44B08();
    v109 = v52;
    v107 = v51;
    v108 = v52;
    sub_1B039E440(v106);
    if (!v109)
    {
      v88[1] = 0;
      v258 = 0uLL;
      v259 = 0uLL;
      v260 = 0uLL;
      v261 = 0uLL;
      v262 = 0;
      v263 = -64;

      v70 = v190;
      v71 = v201;
      v72 = v195;
      v201[8] = v258;
      v73 = v259;
      v74 = v260;
      v75 = v261;
      *(v71 + 185) = *(v70 + 57);
      v71[11] = v75;
      v71[10] = v74;
      v71[9] = v73;
      v185 = v72;
      goto LABEL_29;
    }

    v101 = v107;
    v102 = v108;
    v53 = v195;
    v94 = v108;
    v90 = v107;
    v256 = v107;
    v257 = v108;
    v91 = *v200;
    v92 = *(v200 + 2);
    v93 = *(v200 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = (v193 + *(updated + 24));
    v95 = *v54;
    v96 = v54[1];
    v97 = v54[2];
    sub_1B07BA724(v95);
    v254[0] = v95;
    v254[1] = v96;
    v254[2] = v97;
    sub_1B03BB0B4(v200, &v253);
    v98 = v88;
    MEMORY[0x1EEE9AC00](v88);
    v99 = &v88[-4];
    v88[-2] = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
    sub_1B03F1A20(sub_1B08A4C78, v99, v56, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v57, &v255);
    v100 = v53;
    if (!v53)
    {
      sub_1B039E440(v200);
      sub_1B0876CCC(v254);
      v252 = v255;
      if (v255 == 2)
      {
        v89 = 0;
      }

      else
      {
        v89 = v252;
      }

      v247 = v91;
      LODWORD(v248) = v92;
      BYTE4(v248) = v93;
      sub_1B089F374(v91, v248, v161, v160, v90, v94, v89 & 1, v298);
      v58 = v191;
      v59 = v298[0];
      v60 = v298[1];
      v249 = v299;
      *(v191 + 16) = v298[2];
      *(v58 + 15) = v60;
      *(v58 + 14) = v59;
      v61 = *(v58 + 14);
      v62 = *(v58 + 15);
      v63 = *(v58 + 16);
      v250 = v249;
      *(v58 + 20) = v63;
      *(v58 + 19) = v62;
      *(v58 + 18) = v61;
      HIBYTE(v251) = HIBYTE(v251) & 1 | 0x80;

      v64 = v191;
      v65 = v201;
      v66 = v100;
      v201[8] = *(v191 + 18);
      v67 = *(v64 + 19);
      v68 = *(v64 + 20);
      v69 = *(v64 + 21);
      *(v65 + 185) = v251;
      v65[11] = v69;
      v65[10] = v68;
      v65[9] = v67;
      v185 = v66;
      goto LABEL_29;
    }
  }

  result = sub_1B039E440(v200);
  __break(1u);
  return result;
}

uint64_t sub_1B08986B4(void *a1, uint64_t *a2, uint64_t a3)
{
  v509 = a1;
  v508 = a2;
  v507 = a3;
  v408 = sub_1B039BBE8;
  v409 = sub_1B08A4CB8;
  v410 = sub_1B0394C30;
  v411 = sub_1B0394C24;
  v412 = sub_1B039BA2C;
  v413 = sub_1B039BA88;
  v414 = sub_1B039BB94;
  v415 = sub_1B0394C24;
  v416 = sub_1B039BBA0;
  v417 = sub_1B039BC08;
  v418 = 0x786F626C69616DLL;
  v419 = sub_1B06BA324;
  v420 = sub_1B070B550;
  v421 = sub_1B039BCF8;
  v422 = sub_1B08A4CC0;
  v423 = sub_1B039BCF8;
  v424 = sub_1B0398F5C;
  v425 = sub_1B0398F5C;
  v426 = sub_1B0399178;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0398F5C;
  v429 = sub_1B039BA94;
  v430 = sub_1B0398F5C;
  v431 = sub_1B0398F5C;
  v432 = sub_1B0399178;
  v433 = sub_1B0398F5C;
  v434 = sub_1B0398F5C;
  v435 = sub_1B03991EC;
  v436 = sub_1B0398F5C;
  v437 = sub_1B0398F5C;
  v438 = sub_1B03993BC;
  v439 = sub_1B0398F5C;
  v440 = sub_1B0398F5C;
  v441 = sub_1B039BCEC;
  v442 = sub_1B0398F5C;
  v443 = sub_1B0398F5C;
  v444 = sub_1B039BCEC;
  v445 = sub_1B039BBE8;
  v446 = sub_1B08A4CA4;
  v447 = sub_1B0394C24;
  v448 = sub_1B039BA2C;
  v449 = sub_1B039BA88;
  v450 = sub_1B0394C24;
  v451 = sub_1B039BBA0;
  v452 = sub_1B039BC08;
  v453 = sub_1B06BA324;
  v454 = sub_1B070B550;
  v455 = sub_1B039BCF8;
  v456 = sub_1B08A4CAC;
  v457 = sub_1B039BCF8;
  v458 = sub_1B0398F5C;
  v459 = sub_1B0398F5C;
  v460 = sub_1B0399178;
  v461 = sub_1B0398F5C;
  v462 = sub_1B0398F5C;
  v463 = sub_1B039BA94;
  v464 = sub_1B0398F5C;
  v465 = sub_1B0398F5C;
  v466 = sub_1B0399178;
  v467 = sub_1B0398F5C;
  v468 = sub_1B0398F5C;
  v469 = sub_1B03991EC;
  v470 = sub_1B0398F5C;
  v471 = sub_1B0398F5C;
  v472 = sub_1B03993BC;
  v473 = sub_1B0398F5C;
  v474 = sub_1B0398F5C;
  v475 = sub_1B039BCEC;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0398F5C;
  v478 = sub_1B039BCEC;
  v479 = "Fatal error";
  v480 = "Unexpectedly found nil while unwrapping an Optional value";
  v481 = "Message/MailboxTree.swift";
  v548 = 0;
  v547 = 0;
  v546 = 0;
  v545 = 0;
  v543 = 0;
  v544 = 0;
  v542 = 0;
  v539 = 0;
  v537 = 0;
  v538 = 0;
  v482 = 0;
  v519 = 0;
  v520 = 0;
  v521 = 0;
  v517 = 0;
  v518 = 0;
  v504 = 0;
  v483 = _s6LoggerVMa();
  v484 = (*(*(v483 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v485 = &v193 - v484;
  v486 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v487 = &v193 - v486;
  v488 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v489 = &v193 - v488;
  v490 = sub_1B0E439A8();
  v491 = *(v490 - 8);
  v492 = v490 - 8;
  v493 = (*(v491 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v504);
  v494 = &v193 - v493;
  v495 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v496 = &v193 - v495;
  v497 = sub_1B0E42E68();
  v498 = *(v497 - 8);
  v499 = v497 - 8;
  v500 = (*(v498 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v497);
  v501 = &v193 - v500;
  v502 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v504);
  v503 = &v193 - v502;
  v505 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v504);
  v506 = &v193 - v505;
  updated = type metadata accessor for MailboxUpdateTree();
  v511 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v509);
  v512 = (&v193 - v511);
  v513 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v514 = (&v193 - v513);
  v548 = v12;
  v547 = v13;
  v546 = v14;
  v545 = v3;
  v515 = [v12 displayName];
  if (v515)
  {
    v406 = v515;
    v401 = v515;
    v402 = sub_1B0E44AD8();
    v403 = v15;
    MEMORY[0x1E69E5920](v401);
    v404 = v402;
    v405 = v403;
  }

  else
  {
    v404 = 0;
    v405 = 0;
  }

  v399 = v405;
  v400 = v404;
  if (v405)
  {
    v397 = v400;
    v398 = v399;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v392 = v398;
  v393 = v397;
  v543 = v397;
  v544 = v398;
  v542 = sub_1B089F490(*(v508 + 7));
  sub_1B08A39BC(v407, v514);
  v16 = (v514 + updated[6]);
  v396 = *v16;
  v394 = v16[1];
  v395 = v16[2];
  sub_1B07BA724(v396);
  sub_1B08A3DE8(v514);
  if (v396)
  {
    v389 = v396;
    v390 = v394;
    v391 = v395;
    v385 = v395;
    v386 = v394;
    v387 = v396;
    v519 = v396;
    v520 = v394;
    v521 = v395;
    sub_1B08A39BC(v407, v512);
    sub_1B03F4D78(v512 + updated[5], v506);
    sub_1B08A3DE8(v512);
    v17 = [v509 URL];
    v388 = v17;
    if (v17)
    {
      v384 = v388;
      v383 = v388;
      sub_1B0E42DE8();
      (*(v498 + 32))(v503, v501, v497);
      (*(v498 + 56))(v503, 0, 1, v497);
      MEMORY[0x1E69E5920](v383);
    }

    else
    {
      (*(v498 + 56))(v503, 1, 1, v497);
    }

    v382 = sub_1B07BF5C8(v503);
    v381 = v18;
    sub_1B06E3800(v503);
    sub_1B03F4F08(v506);
    if (v382)
    {
      v379 = v382;
      v380 = v381;
      v378 = v382;
      v517 = v382;
      v518 = v381;
      v19 = Namespace.contains(_:)(v382, v381, v387);
      if ((v19 & 1) == 0)
      {
        v376 = &v516;
        v516 = 128;
        v377 = type metadata accessor for MailboxAttributes();
        sub_1B0694AF8();
        sub_1B0E46F48();
      }
    }

    else
    {
    }
  }

  v20 = [v509 attributes];
  v375 = &v541;
  v541 = v20;
  v372 = v542;
  v373 = &v540;
  v540 = v542;
  v374 = type metadata accessor for MailboxAttributes();
  sub_1B0692938();
  if (sub_1B0E44A28())
  {
    v294 = v482;
  }

  else
  {
    (*(v491 + 16))(v496, v507, v490);
    sub_1B0394784(v507, v489);
    sub_1B0394784(v489, v487);
    sub_1B03F4FD0(v489, v485);
    v21 = (v487 + *(v483 + 20));
    v324 = *v21;
    v325 = *(v21 + 1);
    sub_1B039480C(v487);
    v336 = 24;
    v343 = 7;
    v22 = swift_allocObject();
    v23 = v325;
    v329 = v22;
    *(v22 + 16) = v324;
    *(v22 + 20) = v23;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = swift_allocObject();
    v25 = v325;
    v326 = v24;
    *(v24 + 16) = v324;
    *(v24 + 20) = v25;

    v342 = 32;
    v26 = swift_allocObject();
    v27 = v326;
    v334 = v26;
    *(v26 + 16) = v408;
    *(v26 + 24) = v27;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v485);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = swift_allocObject();
    v29 = v392;
    v30 = v28;
    v31 = v508;
    v338 = v30;
    *(v30 + 16) = v393;
    *(v30 + 24) = v29;
    sub_1B03BB0B4(v31, &v527);
    v327 = swift_allocObject();
    memcpy((v327 + 16), v508, 0x42uLL);

    v32 = swift_allocObject();
    v33 = v327;
    v344 = v32;
    *(v32 + 16) = v409;
    *(v32 + 24) = v33;

    v370 = sub_1B0E43988();
    v371 = sub_1B0E45908();
    v340 = 17;
    v346 = swift_allocObject();
    v331 = 16;
    *(v346 + 16) = 16;
    v347 = swift_allocObject();
    v333 = 4;
    *(v347 + 16) = 4;
    v34 = swift_allocObject();
    v328 = v34;
    *(v34 + 16) = v410;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    v36 = v328;
    v348 = v35;
    *(v35 + 16) = v411;
    *(v35 + 24) = v36;
    v349 = swift_allocObject();
    *(v349 + 16) = 0;
    v350 = swift_allocObject();
    *(v350 + 16) = 1;
    v37 = swift_allocObject();
    v38 = v329;
    v330 = v37;
    *(v37 + 16) = v412;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v330;
    v351 = v39;
    *(v39 + 16) = v413;
    *(v39 + 24) = v40;
    v352 = swift_allocObject();
    *(v352 + 16) = v331;
    v353 = swift_allocObject();
    *(v353 + 16) = v333;
    v41 = swift_allocObject();
    v332 = v41;
    *(v41 + 16) = v414;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v332;
    v354 = v42;
    *(v42 + 16) = v415;
    *(v42 + 24) = v43;
    v355 = swift_allocObject();
    *(v355 + 16) = 0;
    v356 = swift_allocObject();
    *(v356 + 16) = v333;
    v44 = swift_allocObject();
    v45 = v334;
    v335 = v44;
    *(v44 + 16) = v416;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v335;
    v357 = v46;
    *(v46 + 16) = v417;
    *(v46 + 24) = v47;
    v358 = swift_allocObject();
    *(v358 + 16) = 112;
    v359 = swift_allocObject();
    v341 = 8;
    *(v359 + 16) = 8;
    v337 = swift_allocObject();
    *(v337 + 16) = v418;
    v48 = swift_allocObject();
    v49 = v337;
    v360 = v48;
    *(v48 + 16) = v419;
    *(v48 + 24) = v49;
    v361 = swift_allocObject();
    *(v361 + 16) = 37;
    v362 = swift_allocObject();
    *(v362 + 16) = v341;
    v50 = swift_allocObject();
    v51 = v338;
    v339 = v50;
    *(v50 + 16) = v420;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v339;
    v363 = v52;
    *(v52 + 16) = v421;
    *(v52 + 24) = v53;
    v364 = swift_allocObject();
    *(v364 + 16) = 34;
    v365 = swift_allocObject();
    *(v365 + 16) = v341;
    v54 = swift_allocObject();
    v55 = v344;
    v345 = v54;
    *(v54 + 16) = v422;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v345;
    v367 = v56;
    *(v56 + 16) = v423;
    *(v56 + 24) = v57;
    v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v366 = sub_1B0E46A48();
    v368 = v58;

    v59 = v346;
    v60 = v368;
    *v368 = v424;
    v60[1] = v59;

    v61 = v347;
    v62 = v368;
    v368[2] = v425;
    v62[3] = v61;

    v63 = v348;
    v64 = v368;
    v368[4] = v426;
    v64[5] = v63;

    v65 = v349;
    v66 = v368;
    v368[6] = v427;
    v66[7] = v65;

    v67 = v350;
    v68 = v368;
    v368[8] = v428;
    v68[9] = v67;

    v69 = v351;
    v70 = v368;
    v368[10] = v429;
    v70[11] = v69;

    v71 = v352;
    v72 = v368;
    v368[12] = v430;
    v72[13] = v71;

    v73 = v353;
    v74 = v368;
    v368[14] = v431;
    v74[15] = v73;

    v75 = v354;
    v76 = v368;
    v368[16] = v432;
    v76[17] = v75;

    v77 = v355;
    v78 = v368;
    v368[18] = v433;
    v78[19] = v77;

    v79 = v356;
    v80 = v368;
    v368[20] = v434;
    v80[21] = v79;

    v81 = v357;
    v82 = v368;
    v368[22] = v435;
    v82[23] = v81;

    v83 = v358;
    v84 = v368;
    v368[24] = v436;
    v84[25] = v83;

    v85 = v359;
    v86 = v368;
    v368[26] = v437;
    v86[27] = v85;

    v87 = v360;
    v88 = v368;
    v368[28] = v438;
    v88[29] = v87;

    v89 = v361;
    v90 = v368;
    v368[30] = v439;
    v90[31] = v89;

    v91 = v362;
    v92 = v368;
    v368[32] = v440;
    v92[33] = v91;

    v93 = v363;
    v94 = v368;
    v368[34] = v441;
    v94[35] = v93;

    v95 = v364;
    v96 = v368;
    v368[36] = v442;
    v96[37] = v95;

    v97 = v365;
    v98 = v368;
    v368[38] = v443;
    v98[39] = v97;

    v99 = v367;
    v100 = v368;
    v368[40] = v444;
    v100[41] = v99;
    sub_1B0394964();

    if (os_log_type_enabled(v370, v371))
    {
      v101 = v482;
      v317 = sub_1B0E45D78();
      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v318 = sub_1B03949A8(0);
      v319 = sub_1B03949A8(2);
      v320 = &v526;
      v526 = v317;
      v321 = &v525;
      v525 = v318;
      v322 = &v524;
      v524 = v319;
      sub_1B0394A48(3, &v526);
      sub_1B0394A48(7, v320);
      v522 = v424;
      v523 = v346;
      sub_1B03949FC(&v522, v320, v321, v322);
      v323 = v101;
      if (v101)
      {

        __break(1u);
      }

      else
      {
        v522 = v425;
        v523 = v347;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v314 = 0;
        v522 = v426;
        v523 = v348;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v313 = 0;
        v522 = v427;
        v523 = v349;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v312 = 0;
        v522 = v428;
        v523 = v350;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v311 = 0;
        v522 = v429;
        v523 = v351;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v310 = 0;
        v522 = v430;
        v523 = v352;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v309 = 0;
        v522 = v431;
        v523 = v353;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v308 = 0;
        v522 = v432;
        v523 = v354;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v307 = 0;
        v522 = v433;
        v523 = v355;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v306 = 0;
        v522 = v434;
        v523 = v356;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v305 = 0;
        v522 = v435;
        v523 = v357;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v304 = 0;
        v522 = v436;
        v523 = v358;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v303 = 0;
        v522 = v437;
        v523 = v359;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v302 = 0;
        v522 = v438;
        v523 = v360;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v301 = 0;
        v522 = v439;
        v523 = v361;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v300 = 0;
        v522 = v440;
        v523 = v362;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v299 = 0;
        v522 = v441;
        v523 = v363;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v298 = 0;
        v522 = v442;
        v523 = v364;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v297 = 0;
        v522 = v443;
        v523 = v365;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v296 = 0;
        v522 = v444;
        v523 = v367;
        sub_1B03949FC(&v522, &v526, &v525, &v524);
        v295 = 0;
        _os_log_impl(&dword_1B0389000, v370, v371, "[%.*hhx-%.*X] Setting attributes for mailbox '%{sensitive,mask.mailbox}s': '%{public}s'", v317, 0x35u);
        sub_1B03998A8(v318);
        sub_1B03998A8(v319);
        sub_1B0E45D58();

        v315 = v295;
      }
    }

    else
    {
      v102 = v482;

      v315 = v102;
    }

    v293 = v315;
    MEMORY[0x1E69E5920](v370);
    (*(v491 + 8))(v496, v490);
    [v509 setAttributes_];
    v103 = v293;
    *(v407 + updated[13]) = 1;
    v294 = v103;
  }

  v292 = v294;
  v549 = *(v508 + 16);
  v550 = v549;
  if (v549 != 7)
  {
    v288 = v550;
    v539 = v550;
    v289 = sub_1B089F5B0();
    v290 = v104;
    v537 = v289;
    v538 = v104;
    v291 = [v509 extraAttributes];
    if (v291)
    {
      v287 = v291;
      v284 = v291;
      v285 = sub_1B0E451B8();
      MEMORY[0x1E69E5920](v284);
      v286 = v285;
    }

    else
    {
      v286 = 0;
    }

    v283 = v286;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v281 = MEMORY[0x1E69E6158];
    v279 = sub_1B0E46A48();
    v280 = v105;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v106 = v279;
    v107 = v290;
    v108 = v280;
    *v280 = v289;
    v108[1] = v107;
    sub_1B0394964();
    v282 = v106;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v535 = v283;
    v536 = v282;
    if (v283)
    {
      sub_1B074E7A8(&v535, &v529);
      if (v536)
      {
        v275 = &v528;
        v528 = v536;
        v276 = &v529;
        v277 = sub_1B0E45368();
        sub_1B039E440(v275);
        sub_1B039E440(v276);
        sub_1B039E440(&v535);
        v278 = v277;
LABEL_38:
        v274 = v278;

        if ((v274 & 1) == 0)
        {
          (*(v491 + 16))(v494, v507, v490);
          sub_1B0394784(v507, v489);
          sub_1B0394784(v489, v487);
          sub_1B03F4FD0(v489, v485);
          v109 = (v487 + *(v483 + 20));
          v226 = *v109;
          v227 = *(v109 + 1);
          sub_1B039480C(v487);
          v238 = 24;
          v245 = 7;
          v110 = swift_allocObject();
          v111 = v227;
          v231 = v110;
          *(v110 + 16) = v226;
          *(v110 + 20) = v111;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v112 = swift_allocObject();
          v113 = v227;
          v228 = v112;
          *(v112 + 16) = v226;
          *(v112 + 20) = v113;

          v244 = 32;
          v114 = swift_allocObject();
          v115 = v228;
          v236 = v114;
          *(v114 + 16) = v445;
          *(v114 + 24) = v115;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v485);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v116 = swift_allocObject();
          v117 = v392;
          v240 = v116;
          *(v116 + 16) = v393;
          *(v116 + 24) = v117;
          v242 = 17;
          v229 = swift_allocObject();
          *(v229 + 16) = v288;

          v118 = swift_allocObject();
          v119 = v229;
          v246 = v118;
          *(v118 + 16) = v446;
          *(v118 + 24) = v119;

          v272 = sub_1B0E43988();
          v273 = sub_1B0E45908();
          v248 = swift_allocObject();
          v233 = 16;
          *(v248 + 16) = 16;
          v249 = swift_allocObject();
          v235 = 4;
          *(v249 + 16) = 4;
          v120 = swift_allocObject();
          v230 = v120;
          *(v120 + 16) = v410;
          *(v120 + 24) = 0;
          v121 = swift_allocObject();
          v122 = v230;
          v250 = v121;
          *(v121 + 16) = v447;
          *(v121 + 24) = v122;
          v251 = swift_allocObject();
          *(v251 + 16) = 0;
          v252 = swift_allocObject();
          *(v252 + 16) = 1;
          v123 = swift_allocObject();
          v124 = v231;
          v232 = v123;
          *(v123 + 16) = v448;
          *(v123 + 24) = v124;
          v125 = swift_allocObject();
          v126 = v232;
          v253 = v125;
          *(v125 + 16) = v449;
          *(v125 + 24) = v126;
          v254 = swift_allocObject();
          *(v254 + 16) = v233;
          v255 = swift_allocObject();
          *(v255 + 16) = v235;
          v127 = swift_allocObject();
          v234 = v127;
          *(v127 + 16) = v414;
          *(v127 + 24) = 0;
          v128 = swift_allocObject();
          v129 = v234;
          v256 = v128;
          *(v128 + 16) = v450;
          *(v128 + 24) = v129;
          v257 = swift_allocObject();
          *(v257 + 16) = 0;
          v258 = swift_allocObject();
          *(v258 + 16) = v235;
          v130 = swift_allocObject();
          v131 = v236;
          v237 = v130;
          *(v130 + 16) = v451;
          *(v130 + 24) = v131;
          v132 = swift_allocObject();
          v133 = v237;
          v259 = v132;
          *(v132 + 16) = v452;
          *(v132 + 24) = v133;
          v260 = swift_allocObject();
          *(v260 + 16) = 112;
          v261 = swift_allocObject();
          v243 = 8;
          *(v261 + 16) = 8;
          v239 = swift_allocObject();
          *(v239 + 16) = v418;
          v134 = swift_allocObject();
          v135 = v239;
          v262 = v134;
          *(v134 + 16) = v453;
          *(v134 + 24) = v135;
          v263 = swift_allocObject();
          *(v263 + 16) = 37;
          v264 = swift_allocObject();
          *(v264 + 16) = v243;
          v136 = swift_allocObject();
          v137 = v240;
          v241 = v136;
          *(v136 + 16) = v454;
          *(v136 + 24) = v137;
          v138 = swift_allocObject();
          v139 = v241;
          v265 = v138;
          *(v138 + 16) = v455;
          *(v138 + 24) = v139;
          v266 = swift_allocObject();
          *(v266 + 16) = 34;
          v267 = swift_allocObject();
          *(v267 + 16) = v243;
          v140 = swift_allocObject();
          v141 = v246;
          v247 = v140;
          *(v140 + 16) = v456;
          *(v140 + 24) = v141;
          v142 = swift_allocObject();
          v143 = v247;
          v269 = v142;
          *(v142 + 16) = v457;
          *(v142 + 24) = v143;
          v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v268 = sub_1B0E46A48();
          v270 = v144;

          v145 = v248;
          v146 = v270;
          *v270 = v458;
          v146[1] = v145;

          v147 = v249;
          v148 = v270;
          v270[2] = v459;
          v148[3] = v147;

          v149 = v250;
          v150 = v270;
          v270[4] = v460;
          v150[5] = v149;

          v151 = v251;
          v152 = v270;
          v270[6] = v461;
          v152[7] = v151;

          v153 = v252;
          v154 = v270;
          v270[8] = v462;
          v154[9] = v153;

          v155 = v253;
          v156 = v270;
          v270[10] = v463;
          v156[11] = v155;

          v157 = v254;
          v158 = v270;
          v270[12] = v464;
          v158[13] = v157;

          v159 = v255;
          v160 = v270;
          v270[14] = v465;
          v160[15] = v159;

          v161 = v256;
          v162 = v270;
          v270[16] = v466;
          v162[17] = v161;

          v163 = v257;
          v164 = v270;
          v270[18] = v467;
          v164[19] = v163;

          v165 = v258;
          v166 = v270;
          v270[20] = v468;
          v166[21] = v165;

          v167 = v259;
          v168 = v270;
          v270[22] = v469;
          v168[23] = v167;

          v169 = v260;
          v170 = v270;
          v270[24] = v470;
          v170[25] = v169;

          v171 = v261;
          v172 = v270;
          v270[26] = v471;
          v172[27] = v171;

          v173 = v262;
          v174 = v270;
          v270[28] = v472;
          v174[29] = v173;

          v175 = v263;
          v176 = v270;
          v270[30] = v473;
          v176[31] = v175;

          v177 = v264;
          v178 = v270;
          v270[32] = v474;
          v178[33] = v177;

          v179 = v265;
          v180 = v270;
          v270[34] = v475;
          v180[35] = v179;

          v181 = v266;
          v182 = v270;
          v270[36] = v476;
          v182[37] = v181;

          v183 = v267;
          v184 = v270;
          v270[38] = v477;
          v184[39] = v183;

          v185 = v269;
          v186 = v270;
          v270[40] = v478;
          v186[41] = v185;
          sub_1B0394964();

          if (os_log_type_enabled(v272, v273))
          {
            v187 = v292;
            v219 = sub_1B0E45D78();
            v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v220 = sub_1B03949A8(0);
            v221 = sub_1B03949A8(2);
            v222 = &v534;
            v534 = v219;
            v223 = &v533;
            v533 = v220;
            v224 = &v532;
            v532 = v221;
            sub_1B0394A48(3, &v534);
            sub_1B0394A48(7, v222);
            v530 = v458;
            v531 = v248;
            sub_1B03949FC(&v530, v222, v223, v224);
            v225 = v187;
            if (v187)
            {

              __break(1u);
            }

            else
            {
              v530 = v459;
              v531 = v249;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v217 = 0;
              v530 = v460;
              v531 = v250;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v216 = 0;
              v530 = v461;
              v531 = v251;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v215 = 0;
              v530 = v462;
              v531 = v252;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v214 = 0;
              v530 = v463;
              v531 = v253;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v213 = 0;
              v530 = v464;
              v531 = v254;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v212 = 0;
              v530 = v465;
              v531 = v255;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v211 = 0;
              v530 = v466;
              v531 = v256;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v210 = 0;
              v530 = v467;
              v531 = v257;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v209 = 0;
              v530 = v468;
              v531 = v258;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v208 = 0;
              v530 = v469;
              v531 = v259;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v207 = 0;
              v530 = v470;
              v531 = v260;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v206 = 0;
              v530 = v471;
              v531 = v261;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v205 = 0;
              v530 = v472;
              v531 = v262;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v204 = 0;
              v530 = v473;
              v531 = v263;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v203 = 0;
              v530 = v474;
              v531 = v264;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v202 = 0;
              v530 = v475;
              v531 = v265;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v201 = 0;
              v530 = v476;
              v531 = v266;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v200 = 0;
              v530 = v477;
              v531 = v267;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              v199 = 0;
              v530 = v478;
              v531 = v269;
              sub_1B03949FC(&v530, &v534, &v533, &v532);
              _os_log_impl(&dword_1B0389000, v272, v273, "[%.*hhx-%.*X] Setting special use for mailbox '%{sensitive,mask.mailbox}s': '%{public}s'", v219, 0x35u);
              sub_1B03998A8(v220);
              sub_1B03998A8(v221);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v272);
          (*(v491 + 8))(v494, v490);
          v196 = MEMORY[0x1E69E6158];
          v194 = sub_1B0E46A48();
          v195 = v188;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v189 = v194;
          v190 = v290;
          v191 = v195;
          *v195 = v289;
          v191[1] = v190;
          sub_1B0394964();
          v197 = v189;
          v198 = sub_1B0E451A8();

          [v509 setExtraAttributes_];
          MEMORY[0x1E69E5920](v198);
          *(v407 + updated[13]) = 1;
        }
      }

      sub_1B039E440(&v529);
    }

    else if (!v536)
    {
      sub_1B039E440(&v535);
      v278 = 1;
      goto LABEL_38;
    }

    sub_1B07F22C0(&v535);
    v278 = 0;
    goto LABEL_38;
  }
}

uint64_t sub_1B089BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v440 = a1;
  v445 = a2;
  v441 = a3;
  v442 = a4;
  v443 = a5;
  v446 = a6;
  v444 = a7;
  v350 = sub_1B039BBE8;
  v351 = sub_1B0394C30;
  v352 = sub_1B0394C24;
  v353 = sub_1B039BA2C;
  v354 = sub_1B039BA88;
  v355 = sub_1B039BB94;
  v356 = sub_1B0394C24;
  v357 = sub_1B039BBA0;
  v358 = sub_1B039BC08;
  v359 = 0x786F626C69616DLL;
  v360 = sub_1B06BA324;
  v361 = sub_1B08A4D6C;
  v362 = sub_1B039BCF8;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0399178;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B039BA94;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0399178;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B03991EC;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B03993BC;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BCEC;
  v381 = sub_1B039BBE8;
  v382 = sub_1B0394C24;
  v383 = sub_1B039BA2C;
  v384 = sub_1B039BA88;
  v385 = sub_1B0394C24;
  v386 = sub_1B039BBA0;
  v387 = sub_1B039BC08;
  v388 = sub_1B06BA324;
  v389 = sub_1B08A4D6C;
  v390 = sub_1B039BCF8;
  v391 = sub_1B06BA324;
  v392 = sub_1B08A4D74;
  v393 = sub_1B039BCF8;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0398F5C;
  v396 = sub_1B0399178;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B039BA94;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0399178;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0398F5C;
  v405 = sub_1B03991EC;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0398F5C;
  v408 = sub_1B03993BC;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B039BCEC;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B03993BC;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B039BCEC;
  v488 = 0;
  v489 = 0;
  v490 = 0;
  v487 = 0;
  v486 = 0;
  v485 = 0;
  v484 = 0;
  v483 = 0;
  v481 = 0;
  v418 = 0;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v420 = (*(*(v419 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v419);
  v421 = &v178 - v420;
  v432 = 0;
  v422 = sub_1B0E42E68();
  v423 = *(v422 - 8);
  v424 = v422 - 8;
  v425 = (*(v423 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v422);
  v426 = &v178 - v425;
  v427 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v432);
  v428 = &v178 - v427;
  updated = type metadata accessor for MailboxUpdateTree();
  v430 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v432);
  v431 = (&v178 - v430);
  v433 = _s6LoggerVMa();
  v434 = (*(*(v433 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v432);
  v435 = &v178 - v434;
  v436 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v437 = &v178 - v436;
  v438 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v439 = &v178 - v438;
  v447 = sub_1B0E439A8();
  v448 = *(v447 - 8);
  v449 = v447 - 8;
  v451 = *(v448 + 64);
  v450 = (v451 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v446);
  v452 = &v178 - v450;
  v453 = (v451 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v454 = &v178 - v453;
  v488 = v14;
  v489 = v15;
  v490 = v16;
  v487 = v17;
  v486 = v18;
  v485 = v13;
  v484 = v19;
  v483 = v7;
  if ([v13 isRootMailbox])
  {
    (*(v448 + 16))(v452, v444, v447);
    sub_1B0394784(v444, v439);
    sub_1B0394784(v439, v437);
    sub_1B03F4FD0(v439, v435);
    v103 = (v437 + *(v433 + 20));
    v224 = *v103;
    v225 = *(v103 + 1);
    sub_1B039480C(v437);
    v235 = 24;
    v240 = 7;
    v104 = swift_allocObject();
    v105 = v225;
    v228 = v104;
    *(v104 + 16) = v224;
    *(v104 + 20) = v105;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v106 = swift_allocObject();
    v107 = v225;
    v226 = v106;
    *(v106 + 16) = v224;
    *(v106 + 20) = v107;

    v239 = 32;
    v108 = swift_allocObject();
    v109 = v226;
    v233 = v108;
    *(v108 + 16) = v350;
    *(v108 + 24) = v109;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v435);
    sub_1B08A4CCC(v442, v482);
    v241 = swift_allocObject();
    memcpy((v241 + 16), v442, 0x31uLL);
    v264 = sub_1B0E43988();
    v265 = sub_1B0E45908();
    v237 = 17;
    v243 = swift_allocObject();
    v230 = 16;
    *(v243 + 16) = 16;
    v244 = swift_allocObject();
    v232 = 4;
    *(v244 + 16) = 4;
    v110 = swift_allocObject();
    v227 = v110;
    *(v110 + 16) = v351;
    *(v110 + 24) = 0;
    v111 = swift_allocObject();
    v112 = v227;
    v245 = v111;
    *(v111 + 16) = v352;
    *(v111 + 24) = v112;
    v246 = swift_allocObject();
    *(v246 + 16) = 0;
    v247 = swift_allocObject();
    *(v247 + 16) = 1;
    v113 = swift_allocObject();
    v114 = v228;
    v229 = v113;
    *(v113 + 16) = v353;
    *(v113 + 24) = v114;
    v115 = swift_allocObject();
    v116 = v229;
    v248 = v115;
    *(v115 + 16) = v354;
    *(v115 + 24) = v116;
    v249 = swift_allocObject();
    *(v249 + 16) = v230;
    v250 = swift_allocObject();
    *(v250 + 16) = v232;
    v117 = swift_allocObject();
    v231 = v117;
    *(v117 + 16) = v355;
    *(v117 + 24) = 0;
    v118 = swift_allocObject();
    v119 = v231;
    v251 = v118;
    *(v118 + 16) = v356;
    *(v118 + 24) = v119;
    v252 = swift_allocObject();
    *(v252 + 16) = 0;
    v253 = swift_allocObject();
    *(v253 + 16) = v232;
    v120 = swift_allocObject();
    v121 = v233;
    v234 = v120;
    *(v120 + 16) = v357;
    *(v120 + 24) = v121;
    v122 = swift_allocObject();
    v123 = v234;
    v254 = v122;
    *(v122 + 16) = v358;
    *(v122 + 24) = v123;
    v255 = swift_allocObject();
    *(v255 + 16) = 112;
    v256 = swift_allocObject();
    v238 = 8;
    *(v256 + 16) = 8;
    v236 = swift_allocObject();
    *(v236 + 16) = v359;
    v124 = swift_allocObject();
    v125 = v236;
    v257 = v124;
    *(v124 + 16) = v360;
    *(v124 + 24) = v125;
    v258 = swift_allocObject();
    *(v258 + 16) = 37;
    v259 = swift_allocObject();
    *(v259 + 16) = v238;
    v126 = swift_allocObject();
    v127 = v241;
    v242 = v126;
    *(v126 + 16) = v361;
    *(v126 + 24) = v127;
    v128 = swift_allocObject();
    v129 = v242;
    v261 = v128;
    *(v128 + 16) = v362;
    *(v128 + 24) = v129;
    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v260 = sub_1B0E46A48();
    v262 = v130;

    v131 = v243;
    v132 = v262;
    *v262 = v363;
    v132[1] = v131;

    v133 = v244;
    v134 = v262;
    v262[2] = v364;
    v134[3] = v133;

    v135 = v245;
    v136 = v262;
    v262[4] = v365;
    v136[5] = v135;

    v137 = v246;
    v138 = v262;
    v262[6] = v366;
    v138[7] = v137;

    v139 = v247;
    v140 = v262;
    v262[8] = v367;
    v140[9] = v139;

    v141 = v248;
    v142 = v262;
    v262[10] = v368;
    v142[11] = v141;

    v143 = v249;
    v144 = v262;
    v262[12] = v369;
    v144[13] = v143;

    v145 = v250;
    v146 = v262;
    v262[14] = v370;
    v146[15] = v145;

    v147 = v251;
    v148 = v262;
    v262[16] = v371;
    v148[17] = v147;

    v149 = v252;
    v150 = v262;
    v262[18] = v372;
    v150[19] = v149;

    v151 = v253;
    v152 = v262;
    v262[20] = v373;
    v152[21] = v151;

    v153 = v254;
    v154 = v262;
    v262[22] = v374;
    v154[23] = v153;

    v155 = v255;
    v156 = v262;
    v262[24] = v375;
    v156[25] = v155;

    v157 = v256;
    v158 = v262;
    v262[26] = v376;
    v158[27] = v157;

    v159 = v257;
    v160 = v262;
    v262[28] = v377;
    v160[29] = v159;

    v161 = v258;
    v162 = v262;
    v262[30] = v378;
    v162[31] = v161;

    v163 = v259;
    v164 = v262;
    v262[32] = v379;
    v164[33] = v163;

    v165 = v261;
    v166 = v262;
    v262[34] = v380;
    v166[35] = v165;
    sub_1B0394964();

    if (os_log_type_enabled(v264, v265))
    {
      v167 = v418;
      v217 = sub_1B0E45D78();
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v218 = sub_1B03949A8(0);
      v219 = sub_1B03949A8(1);
      v220 = &v465;
      v465 = v217;
      v221 = &v464;
      v464 = v218;
      v222 = &v463;
      v463 = v219;
      sub_1B0394A48(3, &v465);
      sub_1B0394A48(6, v220);
      v461 = v363;
      v462 = v243;
      sub_1B03949FC(&v461, v220, v221, v222);
      v223 = v167;
      if (v167)
      {

        __break(1u);
      }

      else
      {
        v461 = v364;
        v462 = v244;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v215 = 0;
        v461 = v365;
        v462 = v245;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v214 = 0;
        v461 = v366;
        v462 = v246;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v213 = 0;
        v461 = v367;
        v462 = v247;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v212 = 0;
        v461 = v368;
        v462 = v248;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v211 = 0;
        v461 = v369;
        v462 = v249;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v210 = 0;
        v461 = v370;
        v462 = v250;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v209 = 0;
        v461 = v371;
        v462 = v251;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v208 = 0;
        v461 = v372;
        v462 = v252;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v207 = 0;
        v461 = v373;
        v462 = v253;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v206 = 0;
        v461 = v374;
        v462 = v254;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v205 = 0;
        v461 = v375;
        v462 = v255;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v204 = 0;
        v461 = v376;
        v462 = v256;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v203 = 0;
        v461 = v377;
        v462 = v257;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v202 = 0;
        v461 = v378;
        v462 = v258;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v201 = 0;
        v461 = v379;
        v462 = v259;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v200 = 0;
        v461 = v380;
        v462 = v261;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        _os_log_impl(&dword_1B0389000, v264, v265, "[%.*hhx-%.*X] Creating new top level local mailbox '%{sensitive,mask.mailbox}s'.", v217, 0x2Bu);
        sub_1B03998A8(v218);
        sub_1B03998A8(v219);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v264);
    (*(v448 + 8))(v452, v447);
  }

  else
  {
    (*(v448 + 16))(v454, v444, v447);
    sub_1B0394784(v444, v439);
    sub_1B0394784(v439, v437);
    sub_1B03F4FD0(v439, v435);
    v20 = (v437 + *(v433 + 20));
    v296 = *v20;
    v297 = *(v20 + 1);
    sub_1B039480C(v437);
    v319 = 24;
    v316 = 7;
    v21 = swift_allocObject();
    v22 = v297;
    v300 = v21;
    *(v21 + 16) = v296;
    *(v21 + 20) = v22;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = swift_allocObject();
    v24 = v297;
    v298 = v23;
    *(v23 + 16) = v296;
    *(v23 + 20) = v24;

    v315 = 32;
    v25 = swift_allocObject();
    v26 = v298;
    v305 = v25;
    *(v25 + 16) = v381;
    *(v25 + 24) = v26;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v435);
    sub_1B08A4CCC(v442, &v460);
    v308 = swift_allocObject();
    memcpy((v308 + 16), v442, 0x31uLL);
    MEMORY[0x1E69E5928](v446);
    v317 = swift_allocObject();
    *(v317 + 16) = v446;
    v347 = sub_1B0E43988();
    v348 = sub_1B0E45908();
    v313 = 17;
    v320 = swift_allocObject();
    v302 = 16;
    *(v320 + 16) = 16;
    v321 = swift_allocObject();
    v304 = 4;
    *(v321 + 16) = 4;
    v27 = swift_allocObject();
    v299 = v27;
    *(v27 + 16) = v351;
    *(v27 + 24) = 0;
    v28 = swift_allocObject();
    v29 = v299;
    v322 = v28;
    *(v28 + 16) = v382;
    *(v28 + 24) = v29;
    v323 = swift_allocObject();
    *(v323 + 16) = 0;
    v324 = swift_allocObject();
    *(v324 + 16) = 1;
    v30 = swift_allocObject();
    v31 = v300;
    v301 = v30;
    *(v30 + 16) = v383;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v301;
    v325 = v32;
    *(v32 + 16) = v384;
    *(v32 + 24) = v33;
    v326 = swift_allocObject();
    *(v326 + 16) = v302;
    v327 = swift_allocObject();
    *(v327 + 16) = v304;
    v34 = swift_allocObject();
    v303 = v34;
    *(v34 + 16) = v355;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    v36 = v303;
    v328 = v35;
    *(v35 + 16) = v385;
    *(v35 + 24) = v36;
    v329 = swift_allocObject();
    *(v329 + 16) = 0;
    v330 = swift_allocObject();
    *(v330 + 16) = v304;
    v37 = swift_allocObject();
    v38 = v305;
    v306 = v37;
    *(v37 + 16) = v386;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v306;
    v331 = v39;
    *(v39 + 16) = v387;
    *(v39 + 24) = v40;
    v332 = swift_allocObject();
    v310 = 112;
    *(v332 + 16) = 112;
    v333 = swift_allocObject();
    v314 = 8;
    *(v333 + 16) = 8;
    v307 = swift_allocObject();
    *(v307 + 16) = v359;
    v41 = swift_allocObject();
    v42 = v307;
    v334 = v41;
    *(v41 + 16) = v388;
    *(v41 + 24) = v42;
    v335 = swift_allocObject();
    v312 = 37;
    *(v335 + 16) = 37;
    v336 = swift_allocObject();
    *(v336 + 16) = v314;
    v43 = swift_allocObject();
    v44 = v308;
    v309 = v43;
    *(v43 + 16) = v389;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v309;
    v337 = v45;
    *(v45 + 16) = v390;
    *(v45 + 24) = v46;
    v338 = swift_allocObject();
    *(v338 + 16) = v310;
    v339 = swift_allocObject();
    *(v339 + 16) = v314;
    v311 = swift_allocObject();
    *(v311 + 16) = v359;
    v47 = swift_allocObject();
    v48 = v311;
    v340 = v47;
    *(v47 + 16) = v391;
    *(v47 + 24) = v48;
    v341 = swift_allocObject();
    *(v341 + 16) = v312;
    v342 = swift_allocObject();
    *(v342 + 16) = v314;
    v49 = swift_allocObject();
    v50 = v317;
    v318 = v49;
    *(v49 + 16) = v392;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v318;
    v344 = v51;
    *(v51 + 16) = v393;
    *(v51 + 24) = v52;
    v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v343 = sub_1B0E46A48();
    v345 = v53;

    v54 = v320;
    v55 = v345;
    *v345 = v394;
    v55[1] = v54;

    v56 = v321;
    v57 = v345;
    v345[2] = v395;
    v57[3] = v56;

    v58 = v322;
    v59 = v345;
    v345[4] = v396;
    v59[5] = v58;

    v60 = v323;
    v61 = v345;
    v345[6] = v397;
    v61[7] = v60;

    v62 = v324;
    v63 = v345;
    v345[8] = v398;
    v63[9] = v62;

    v64 = v325;
    v65 = v345;
    v345[10] = v399;
    v65[11] = v64;

    v66 = v326;
    v67 = v345;
    v345[12] = v400;
    v67[13] = v66;

    v68 = v327;
    v69 = v345;
    v345[14] = v401;
    v69[15] = v68;

    v70 = v328;
    v71 = v345;
    v345[16] = v402;
    v71[17] = v70;

    v72 = v329;
    v73 = v345;
    v345[18] = v403;
    v73[19] = v72;

    v74 = v330;
    v75 = v345;
    v345[20] = v404;
    v75[21] = v74;

    v76 = v331;
    v77 = v345;
    v345[22] = v405;
    v77[23] = v76;

    v78 = v332;
    v79 = v345;
    v345[24] = v406;
    v79[25] = v78;

    v80 = v333;
    v81 = v345;
    v345[26] = v407;
    v81[27] = v80;

    v82 = v334;
    v83 = v345;
    v345[28] = v408;
    v83[29] = v82;

    v84 = v335;
    v85 = v345;
    v345[30] = v409;
    v85[31] = v84;

    v86 = v336;
    v87 = v345;
    v345[32] = v410;
    v87[33] = v86;

    v88 = v337;
    v89 = v345;
    v345[34] = v411;
    v89[35] = v88;

    v90 = v338;
    v91 = v345;
    v345[36] = v412;
    v91[37] = v90;

    v92 = v339;
    v93 = v345;
    v345[38] = v413;
    v93[39] = v92;

    v94 = v340;
    v95 = v345;
    v345[40] = v414;
    v95[41] = v94;

    v96 = v341;
    v97 = v345;
    v345[42] = v415;
    v97[43] = v96;

    v98 = v342;
    v99 = v345;
    v345[44] = v416;
    v99[45] = v98;

    v100 = v344;
    v101 = v345;
    v345[46] = v417;
    v101[47] = v100;
    sub_1B0394964();

    if (os_log_type_enabled(v347, v348))
    {
      v102 = v418;
      v289 = sub_1B0E45D78();
      v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v290 = sub_1B03949A8(0);
      v291 = sub_1B03949A8(2);
      v292 = &v459;
      v459 = v289;
      v293 = &v458;
      v458 = v290;
      v294 = &v457;
      v457 = v291;
      sub_1B0394A48(3, &v459);
      sub_1B0394A48(8, v292);
      v455 = v394;
      v456 = v320;
      sub_1B03949FC(&v455, v292, v293, v294);
      v295 = v102;
      if (v102)
      {

        __break(1u);
      }

      else
      {
        v455 = v395;
        v456 = v321;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v287 = 0;
        v455 = v396;
        v456 = v322;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v286 = 0;
        v455 = v397;
        v456 = v323;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v285 = 0;
        v455 = v398;
        v456 = v324;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v284 = 0;
        v455 = v399;
        v456 = v325;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v283 = 0;
        v455 = v400;
        v456 = v326;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v282 = 0;
        v455 = v401;
        v456 = v327;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v281 = 0;
        v455 = v402;
        v456 = v328;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v280 = 0;
        v455 = v403;
        v456 = v329;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v279 = 0;
        v455 = v404;
        v456 = v330;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v278 = 0;
        v455 = v405;
        v456 = v331;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v277 = 0;
        v455 = v406;
        v456 = v332;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v276 = 0;
        v455 = v407;
        v456 = v333;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v275 = 0;
        v455 = v408;
        v456 = v334;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v274 = 0;
        v455 = v409;
        v456 = v335;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v273 = 0;
        v455 = v410;
        v456 = v336;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v272 = 0;
        v455 = v411;
        v456 = v337;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v271 = 0;
        v455 = v412;
        v456 = v338;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v270 = 0;
        v455 = v413;
        v456 = v339;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v269 = 0;
        v455 = v414;
        v456 = v340;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v268 = 0;
        v455 = v415;
        v456 = v341;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v267 = 0;
        v455 = v416;
        v456 = v342;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        v266 = 0;
        v455 = v417;
        v456 = v344;
        sub_1B03949FC(&v455, &v459, &v458, &v457);
        _os_log_impl(&dword_1B0389000, v347, v348, "[%.*hhx-%.*X] Creating new local mailbox '%{sensitive,mask.mailbox}s' inside parent '%{sensitive,mask.mailbox}s.'", v289, 0x3Fu);
        sub_1B03998A8(v290);
        sub_1B03998A8(v291);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v347);
    (*(v448 + 8))(v454, v447);
  }

  sub_1B089E99C(v446);
  v195 = 0;
  sub_1B03EE50C();
  v194 = v442[2];
  v187 = v442[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v188 = v442[4];
  v189 = v442[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v190 = *(v443 + 14);
  v191 = *(v443 + 16);
  v192 = *(v442 + 48);
  sub_1B08A39BC(v349, v431);
  v193 = *v431;
  MEMORY[0x1E69E5928](v193);
  sub_1B08A3DE8(v431);
  v198 = sub_1B089F8E0(v194, v187, v188, v189, v190, v191, v192 & 1, v193);
  v481 = v198;
  v196 = &v480;
  v480 = 64;
  v479 = [v198 attributes];
  v197 = type metadata accessor for MailboxAttributes();
  sub_1B0694AF8();
  sub_1B0E46F48();
  [v198 setAttributes_];
  sub_1B089FC28(v446, v198);
  sub_1B08A39BC(v349, v431);
  sub_1B089FF5C(v443);
  sub_1B08A3DE8(v431);
  v199 = [v198 URL];
  if (v199)
  {
    v186 = v199;
    v185 = v199;
    sub_1B0E42DE8();
    (*(v423 + 32))(v428, v426, v422);
    (*(v423 + 56))(v428, 0, 1, v422);
    MEMORY[0x1E69E5920](v185);
  }

  else
  {
    (*(v423 + 56))(v428, 1, 1, v422);
  }

  MEMORY[0x1E69E5928](v198);
  v178 = *(v419 + 48);
  sub_1B07C8260(v428, v421);
  v168 = updated;
  v169 = v349;
  *&v421[v178] = v198;
  v170 = v169 + *(v168 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
  sub_1B0E452E8();
  v171 = v442;
  *(v349 + *(updated + 52)) = 1;
  v172 = *v171;
  v179 = v491;
  *v491 = v172;
  *&v491[5] = *(v171 + 5);
  sub_1B06E38A8(v491, v478);
  sub_1B06E38A8(v179, v477);
  v492 = *v491;
  v493 = *&v491[8];
  sub_1B039E440(v179);
  MEMORY[0x1E69E5928](v198);
  v180 = *v442;
  v181 = *(v442 + 2);
  v182 = *(v442 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v474 = v180;
  v475 = v181;
  v476 = v182;
  sub_1B088E584();
  v471 = v173;
  v472 = v174;
  v473 = v175;
  v184 = v468;
  v468[0] = v173;
  v468[1] = v174;
  v469 = v175;
  v470 = BYTE4(v175);
  v183 = &v466;
  v466 = v492;
  v467 = v493;
  v176 = v349 + *(updated + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A0, &qword_1B0E9E118);
  sub_1B0E44788();
  return MEMORY[0x1E69E5920](v198);
}