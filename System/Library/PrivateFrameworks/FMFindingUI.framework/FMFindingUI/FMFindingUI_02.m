uint64_t sub_24A538760(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v387) = a1;
  v395 = sub_24A62EA94();
  v401 = *(v395 - 8);
  v7 = v401[8];
  MEMORY[0x28223BE20](v395);
  v393 = &v373 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_24A62EAD4();
  v400 = *(v394 - 8);
  v9 = *(v400 + 64);
  MEMORY[0x28223BE20](v394);
  v392 = &v373 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_24A62EAF4();
  v384 = *(v399 - 8);
  isa = v384[8].isa;
  v12 = MEMORY[0x28223BE20](v399);
  v382 = &v373 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v383 = &v373 - v14;
  v15 = sub_24A62E654();
  v407 = *(v15 - 8);
  v16 = *(v407 + 64);
  MEMORY[0x28223BE20](v15);
  v402 = &v373 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = sub_24A62E984();
  v389 = *(v390 - 8);
  v18 = *(v389 + 64);
  MEMORY[0x28223BE20](v390);
  v388 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PFVFXAnimation();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v373 = &v373 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v374 = &v373 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v386 = (&v373 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v391 = (&v373 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v385 = &v373 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = (&v373 - v32);
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 1;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A506EB8(v20, qword_27EF5CAF0);
  v405 = a2;
  dispatch_group_enter(a2);
  v35 = objc_opt_self();
  [v35 begin];
  sub_24A5461E8(v34, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v396 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    v37 = v33[1];
  }

  else
  {
    v38 = v389;
    v39 = v388;
    v40 = v390;
    (*(v389 + 32))(v388, v33, v390);
    sub_24A62E934();
    v37 = v41;
    (*(v38 + 8))(v39, v40);
  }

  [v35 setDuration_];
  v42 = sub_24A6268BC();
  [v35 setTimingFunction_];

  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v44 = v405;
  v43[4] = v405;
  v413 = sub_24A547994;
  v414 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v410 = 1107296256;
  v411 = sub_24A5A8458;
  v412 = &unk_285DA3450;
  v45 = _Block_copy(&aBlock);
  v46 = v44;

  [v35 setCompletionBlock_];
  _Block_release(v45);
  v397 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v48 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v49 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v412 = v48;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  v404 = v15;
  v398 = v35;
  [v35 commit];
  if (qword_27EF4EB88 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v46);
  v50 = v402;
  v51 = sub_24A62E644();
  MEMORY[0x28223BE20](v51);
  *(&v373 - 2) = v4;
  *(&v373 - 8) = 0;
  v52 = swift_allocObject();
  v406 = v4;
  v52[2] = 0;
  v52[3] = 0;
  v53 = v405;
  v52[4] = v405;
  v54 = v46;
  sub_24A62E3E4();

  v55 = *(v407 + 8);
  v407 += 8;
  v403 = v55;
  v55(v50, v404);
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v54);
  v56 = sub_24A62E644();
  MEMORY[0x28223BE20](v56);
  v57 = v406;
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 0;
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v53;
  v59 = v54;
  sub_24A62E3E4();
  v381 = 0;

  v403(v50, v404);
  dispatch_group_enter(v59);
  v375 = sub_24A545E8C();
  v60 = sub_24A62F014();
  v61 = v382;
  sub_24A62EAE4();
  v62 = v383;
  sub_24A62EB54();
  v380 = v384[1].isa;
  (v380)(v61, v399);
  v63 = swift_allocObject();
  *(v63 + 16) = v57;
  *(v63 + 24) = 0;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  *(v63 + 48) = v53;
  v413 = sub_24A547A30;
  v414 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v410 = 1107296256;
  v411 = sub_24A5A8458;
  v412 = &unk_285DA34F0;
  v64 = _Block_copy(&aBlock);
  v384 = v59;

  v65 = v392;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v66 = sub_24A545F60();
  v67 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v68 = sub_24A529464();
  v69 = v393;
  v377 = v67;
  v376 = v68;
  v70 = v395;
  v378 = v66;
  sub_24A62F254();
  MEMORY[0x24C21A910](v62, v65, v69, v64);
  _Block_release(v64);

  v71 = v401[1];
  ++v401;
  v379 = v71;
  v71(v69, v70);
  v72 = *(v400 + 8);
  v400 += 8;
  v382 = v72;
  (v72)(v65, v394);
  (v380)(v62, v399);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v73 = qword_27EF5C980;
  v74 = v384;
  dispatch_group_enter(v384);
  v75 = sub_24A62E644();
  MEMORY[0x28223BE20](v75);
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 1;
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v77 = v405;
  v76[4] = v405;
  v78 = v74;
  v79 = v381;
  sub_24A62E3E4();

  v403(v50, v404);
  sub_24A52AE18(0, v73, v77, 0, 0);
  v80 = v50;
  if (qword_27EF4EC80 != -1)
  {
    swift_once();
  }

  v81 = sub_24A506EB8(v396, qword_27EF5CA78);
  dispatch_group_enter(v78);
  v82 = v398;
  [v398 begin];
  v83 = v385;
  sub_24A5461E8(v81, v385);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v84 = *(v83 + 8);
  }

  else
  {
    v85 = v389;
    v86 = v388;
    v87 = v83;
    v88 = v390;
    (*(v389 + 32))(v388, v87, v390);
    sub_24A62E934();
    v84 = v89;
    (*(v85 + 8))(v86, v88);
  }

  [v82 setDuration_];
  v90 = sub_24A6268BC();
  [v82 setTimingFunction_];

  v91 = swift_allocObject();
  v91[2] = 0;
  v91[3] = 0;
  v91[4] = v77;
  v413 = sub_24A547994;
  v414 = v91;
  aBlock = MEMORY[0x277D85DD0];
  v410 = 1107296256;
  v411 = sub_24A5A8458;
  v412 = &unk_285DA3568;
  v92 = _Block_copy(&aBlock);
  v93 = v78;

  [v82 setCompletionBlock_];
  _Block_release(v92);
  v94 = swift_weakLoadStrong();
  if (v94)
  {
    v95 = *(v94 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v412 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(9, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v82 commit];
  v96 = v406;
  sub_24A52B554(v77, 0, 0);
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v93);
  sub_24A62E644();
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = 0;
  v97[4] = 0;
  v97[5] = v77;
  v98 = v93;

  sub_24A62E3E4();

  v100 = v403;
  v99 = v404;
  v403(v80, v404);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v101 = qword_27EF5C848;
  dispatch_group_enter(v98);
  v102 = sub_24A62E644();
  v384 = &v373;
  MEMORY[0x28223BE20](v102);
  *(&v373 - 2) = v96;
  *(&v373 - 8) = 0;
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = v77;
  v104 = v98;
  v399 = v101;
  sub_24A62E3E4();
  v385 = v79;

  v100(v80, v99);
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v105 = sub_24A506EB8(v396, qword_27EF5CAD8);
  v106 = v391;
  sub_24A5461E8(v105, v391);
  dispatch_group_enter(v104);
  v107 = v398;
  [v398 begin];
  v108 = v386;
  sub_24A5461E8(v106, v386);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v109 = v108[1];
  }

  else
  {
    v110 = v389;
    v111 = v388;
    v112 = v108;
    v113 = v390;
    (*(v389 + 32))(v388, v112, v390);
    sub_24A62E934();
    v109 = v114;
    v115 = v110;
    v106 = v391;
    (*(v115 + 8))(v111, v113);
  }

  [v107 setDuration_];
  v116 = sub_24A6268BC();
  [v107 setTimingFunction_];

  v117 = swift_allocObject();
  v117[2] = 0;
  v117[3] = 0;
  v117[4] = v77;
  v413 = sub_24A547994;
  v414 = v117;
  aBlock = MEMORY[0x277D85DD0];
  v410 = 1107296256;
  v411 = sub_24A5A8458;
  v412 = &unk_285DA3608;
  v118 = _Block_copy(&aBlock);
  v391 = v104;

  [v107 setCompletionBlock_];
  _Block_release(v118);
  v119 = swift_weakLoadStrong();
  if (v119)
  {
    v120 = *(v119 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v412 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v107 commit];
  sub_24A54624C(v106);
  v121 = &unk_27EF5C000;
  if (v387 > 3u)
  {
    if (v387 - 4 < 2)
    {
      v178 = v406;
      *(v406 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      *(v178 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC5C28F5C28F5C3;
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v398 = qword_27EF5C910;
      v179 = dispatch_group_create();
      dispatch_group_enter(v179);
      v180 = sub_24A62E644();
      MEMORY[0x28223BE20](v180);
      v181 = v406;
      *(&v373 - 2) = v406;
      v182 = v181;
      *(&v373 - 8) = 0;
      *(swift_allocObject() + 16) = v179;
      v183 = v179;
      v184 = v385;
      sub_24A62E3E4();

      v185 = v403;
      v186 = v404;
      v403(v402, v404);
      dispatch_group_enter(v183);
      v187 = sub_24A62E644();
      MEMORY[0x28223BE20](v187);
      *(&v373 - 2) = v182;
      *(&v373 - 8) = 0;
      *(swift_allocObject() + 16) = v183;
      v397 = v183;
      sub_24A62E3E4();
      v398 = v184;

      v185(v402, v186);
      v188 = v391;
      dispatch_group_enter(v391);
      v189 = sub_24A62F014();
      v190 = swift_allocObject();
      v190[2] = 0;
      v190[3] = 0;
      v191 = v405;
      v190[4] = v405;
      v413 = sub_24A547994;
      v414 = v190;
      aBlock = MEMORY[0x277D85DD0];
      v410 = 1107296256;
      v411 = sub_24A5A8458;
      v412 = &unk_285DA3748;
      v192 = _Block_copy(&aBlock);
      v193 = v188;
      v194 = v392;
      sub_24A62EAB4();
      v408 = MEMORY[0x277D84F90];
      v195 = v393;
      v196 = v395;
      sub_24A62F254();
      v197 = v397;
      sub_24A62EFB4();
      _Block_release(v192);

      v379(v195, v196);
      v198 = v406;
      v177 = v402;
      (v382)(v194, v394);

      dispatch_group_enter(v193);
      v199 = sub_24A62E644();
      v401 = &v373;
      MEMORY[0x28223BE20](v199);
      *(&v373 - 2) = v198;
      *(&v373 - 8) = 1;
      v200 = swift_allocObject();
      v200[2] = 0;
      v200[3] = 0;
      v200[4] = v191;
      v201 = v193;
      sub_24A62E3E4();

      v202 = v403;
      v403(v177, v186);
      dispatch_group_enter(v201);
      v203 = sub_24A62E644();
      MEMORY[0x28223BE20](v203);
      *(&v373 - 2) = v198;
      v204 = v405;
      *(&v373 - 8) = 1;
      *(swift_allocObject() + 16) = v204;
      v205 = v201;
      sub_24A62E3E4();

      v202(v177, v186);
      if (qword_27EF4EB18 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v205);
      v206 = sub_24A62E644();
      MEMORY[0x28223BE20](v206);
      *(&v373 - 2) = v406;
      *(&v373 - 8) = 1;
      v207 = swift_allocObject();
      v207[2] = 0;
      v207[3] = 0;
      v207[4] = v204;
      v208 = v205;
      sub_24A62E3E4();

      v202(v177, v186);
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v208);
      v209 = sub_24A62E644();
      MEMORY[0x28223BE20](v209);
      *(&v373 - 2) = v406;
      *(&v373 - 8) = 1;
      v210 = swift_allocObject();
      v210[2] = 0;
      v210[3] = 0;
      v210[4] = v405;
      v211 = v208;
      sub_24A62E3E4();

      v202(v177, v186);
      if (qword_27EF4EBF8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v211);
      v212 = sub_24A62E644();
      MEMORY[0x28223BE20](v212);
      *(&v373 - 2) = v406;
      *(&v373 - 8) = 1;
      v213 = swift_allocObject();
      v213[2] = 0;
      v213[3] = 0;
      v213[4] = v405;
      v214 = v211;
      sub_24A62E3E4();

      v202(v177, v186);
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v214);
      v215 = sub_24A62E644();
      MEMORY[0x28223BE20](v215);
      v216 = v406;
      *(&v373 - 2) = v406;
      *(&v373 - 8) = 0;
      v217 = swift_allocObject();
      v217[2] = 0;
      v217[3] = 0;
      v218 = v405;
      v217[4] = v405;
      v219 = v214;
      sub_24A62E3E4();

      v220 = v403;
      v221 = v404;
      v403(v177, v404);
      dispatch_group_enter(v219);
      v222 = sub_24A62E644();
      v401 = &v373;
      MEMORY[0x28223BE20](v222);
      *(&v373 - 2) = v216;
      *(&v373 - 8) = 1;
      v223 = swift_allocObject();
      v223[2] = 0;
      v223[3] = 0;
      v223[4] = v218;
      v224 = v219;
      sub_24A62E3E4();

      v220(v177, v221);
      if (qword_27EF4EC08 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v224);
      v225 = sub_24A62E644();
      MEMORY[0x28223BE20](v225);
      v165 = v406;
      *(&v373 - 2) = v406;
      *(&v373 - 8) = 1;
      v226 = swift_allocObject();
      v226[2] = 0;
      v226[3] = 0;
      v226[4] = v405;
      v227 = v224;
      sub_24A62E3E4();

      v121 = &unk_27EF5C000;
      goto LABEL_65;
    }

LABEL_106:
    v165 = v406;
    goto LABEL_125;
  }

  if (!v387)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0xBFE47AE147AE147BLL;

    sub_24A62E364();
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v387 = qword_27EF5C910;
    v229 = dispatch_group_create();
    dispatch_group_enter(v229);
    v230 = sub_24A62E644();
    MEMORY[0x28223BE20](v230);
    v231 = v406;
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 0;
    *(swift_allocObject() + 16) = v229;
    v232 = v229;
    sub_24A62E3E4();

    v234 = v402;
    v233 = v403;
    v235 = v404;
    v403(v402, v404);
    dispatch_group_enter(v232);
    v236 = sub_24A62E644();
    MEMORY[0x28223BE20](v236);
    *(&v373 - 2) = v231;
    *(&v373 - 8) = 0;
    *(swift_allocObject() + 16) = v232;
    v386 = v232;
    sub_24A62E3E4();

    v233(v234, v235);
    v237 = v391;
    dispatch_group_enter(v391);
    v238 = sub_24A62F014();
    v239 = swift_allocObject();
    v239[2] = 0;
    v239[3] = 0;
    v240 = v405;
    v239[4] = v405;
    v413 = sub_24A547994;
    v414 = v239;
    aBlock = MEMORY[0x277D85DD0];
    v410 = 1107296256;
    v411 = sub_24A5A8458;
    v412 = &unk_285DA3D60;
    v241 = _Block_copy(&aBlock);
    v242 = v237;
    v243 = v392;
    sub_24A62EAB4();
    v408 = MEMORY[0x277D84F90];
    v244 = v393;
    v245 = v395;
    sub_24A62F254();
    v246 = v386;
    sub_24A62EFB4();
    _Block_release(v241);

    v379(v244, v245);
    v247 = v406;
    (v382)(v243, v394);

    sub_24A62EA04();
    dispatch_group_enter(v242);
    v248 = sub_24A62E644();
    MEMORY[0x28223BE20](v248);
    *(&v373 - 2) = v247;
    *(&v373 - 8) = 0;
    v249 = swift_allocObject();
    v249[2] = 0;
    v249[3] = 0;
    v249[4] = v240;
    v250 = v242;
    sub_24A62E3E4();

    v251 = v404;
    (v403)(v234);
    *(v247 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
    *(v247 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD1EB851EB851ECLL;
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v250);
    v252 = sub_24A62E644();
    MEMORY[0x28223BE20](v252);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v253 = swift_allocObject();
    v253[2] = 0;
    v253[3] = 0;
    v253[4] = v405;
    v254 = v250;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EBF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v254);
    v255 = sub_24A62E644();
    MEMORY[0x28223BE20](v255);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v256 = swift_allocObject();
    v256[2] = 0;
    v256[3] = 0;
    v256[4] = v405;
    v257 = v254;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v257);
    v258 = sub_24A62E644();
    MEMORY[0x28223BE20](v258);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 0;
    v259 = swift_allocObject();
    v259[2] = 0;
    v259[3] = 0;
    v259[4] = v405;
    v260 = v257;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v260);
    v261 = sub_24A62E644();
    MEMORY[0x28223BE20](v261);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v262 = swift_allocObject();
    v262[2] = 0;
    v262[3] = 0;
    v262[4] = v405;
    v263 = v260;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v263);
    v264 = sub_24A62E644();
    MEMORY[0x28223BE20](v264);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v265 = swift_allocObject();
    v265[2] = 0;
    v265[3] = 0;
    v265[4] = v405;
    v266 = v263;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v266);
    v267 = sub_24A62E644();
    MEMORY[0x28223BE20](v267);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    *(swift_allocObject() + 16) = v405;
    v268 = v266;
    sub_24A62E3E4();

    v403(v234, v251);
    if (qword_27EF4EC58 != -1)
    {
      swift_once();
    }

    v269 = sub_24A506EB8(v396, qword_27EF5CA00);
    dispatch_group_enter(v268);
    v270 = v398;
    [v398 begin];
    v271 = v374;
    sub_24A5461E8(v269, v374);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v272 = *(v271 + 8);
    }

    else
    {
      v313 = v389;
      v314 = v388;
      v315 = v271;
      v316 = v390;
      (*(v389 + 32))(v388, v315, v390);
      sub_24A62E934();
      v272 = v317;
      (*(v313 + 8))(v314, v316);
    }

    [v270 setDuration_];
    v318 = sub_24A6268BC();
    [v270 setTimingFunction_];

    v319 = swift_allocObject();
    v319[2] = 0;
    v319[3] = 0;
    v319[4] = v405;
    v413 = sub_24A547994;
    v414 = v319;
    aBlock = MEMORY[0x277D85DD0];
    v410 = 1107296256;
    v411 = sub_24A5A8458;
    v412 = &unk_285DA3EC8;
    v320 = _Block_copy(&aBlock);
    v321 = v268;

    [v270 setCompletionBlock_];
    _Block_release(v320);
    v322 = swift_weakLoadStrong();
    if (v322)
    {
      v323 = *(v322 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v412 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v270 commit];
    if (qword_27EF4EAE8 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v321);
    v324 = sub_24A62E644();
    MEMORY[0x28223BE20](v324);
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v325 = swift_allocObject();
    v325[2] = 0;
    v325[3] = 0;
    v326 = v405;
    v325[4] = v405;
    v327 = v321;
    sub_24A62E3E4();

    v403(v234, v404);
    if (qword_27EF4EC08 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v327);
    v328 = sub_24A62E644();
    MEMORY[0x28223BE20](v328);
    v329 = v406;
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v330 = swift_allocObject();
    v330[2] = 0;
    v330[3] = 0;
    v330[4] = v326;
    v331 = v327;
    sub_24A62E3E4();

    v165 = v329;
    v228 = v404;
    v177 = v234;
    goto LABEL_123;
  }

  if (v387 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0x3FB5810624DD2F1BLL;

    sub_24A62E364();
    if (qword_27EF4EBB0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBB8 != -1)
    {
      swift_once();
    }

    v387 = qword_27EF5C920;
    v273 = dispatch_group_create();
    dispatch_group_enter(v273);
    v274 = sub_24A62E644();
    MEMORY[0x28223BE20](v274);
    v275 = v406;
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 0;
    *(swift_allocObject() + 16) = v273;
    v276 = v273;
    sub_24A62E3E4();

    v278 = v402;
    v277 = v403;
    v279 = v404;
    v403(v402, v404);
    dispatch_group_enter(v276);
    v280 = sub_24A62E644();
    MEMORY[0x28223BE20](v280);
    *(&v373 - 2) = v275;
    *(&v373 - 8) = 0;
    *(swift_allocObject() + 16) = v276;
    v281 = v276;
    sub_24A62E3E4();

    v277(v278, v279);
    v282 = v391;
    dispatch_group_enter(v391);
    v283 = sub_24A62F014();
    v284 = swift_allocObject();
    v284[2] = 0;
    v284[3] = 0;
    v284[4] = v405;
    v413 = sub_24A547994;
    v414 = v284;
    aBlock = MEMORY[0x277D85DD0];
    v410 = 1107296256;
    v411 = sub_24A5A8458;
    v412 = &unk_285DA3B08;
    v285 = _Block_copy(&aBlock);
    v286 = v282;
    v287 = v392;
    sub_24A62EAB4();
    v408 = MEMORY[0x277D84F90];
    v288 = v393;
    v289 = v395;
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v285);

    v379(v288, v289);
    (v382)(v287, v394);

    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v286);
    v290 = sub_24A62E644();
    MEMORY[0x28223BE20](v290);
    v291 = v406;
    *(&v373 - 2) = v406;
    *(&v373 - 8) = 1;
    v292 = swift_allocObject();
    v292[2] = 0;
    v292[3] = 0;
    v292[4] = v405;
    v293 = v286;
    sub_24A62E3E4();

    v403(v278, v404);
    if (qword_27EF4EBF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v293);
    v294 = sub_24A62E644();
    MEMORY[0x28223BE20](v294);
    *(&v373 - 2) = v291;
    *(&v373 - 8) = 1;
    v295 = swift_allocObject();
    v295[2] = 0;
    v295[3] = 0;
    v295[4] = v405;
    v296 = v293;
    sub_24A62E3E4();

    v297 = v404;
    v403(v278, v404);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v296);
    v298 = sub_24A62E644();
    MEMORY[0x28223BE20](v298);
    *(&v373 - 2) = v291;
    *(&v373 - 8) = 0;
    v299 = swift_allocObject();
    v299[2] = 0;
    v299[3] = 0;
    v299[4] = v405;
    v300 = v296;
    sub_24A62E3E4();

    v403(v278, v297);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v300);
    v301 = sub_24A62E644();
    MEMORY[0x28223BE20](v301);
    *(&v373 - 2) = v291;
    *(&v373 - 8) = 1;
    v302 = swift_allocObject();
    v302[2] = 0;
    v302[3] = 0;
    v302[4] = v405;
    v303 = v300;
    sub_24A62E3E4();

    v403(v278, v297);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v303);
    v304 = sub_24A62E644();
    MEMORY[0x28223BE20](v304);
    *(&v373 - 2) = v291;
    *(&v373 - 8) = 1;
    v305 = swift_allocObject();
    v305[2] = 0;
    v305[3] = 0;
    v305[4] = v405;
    v306 = v303;
    sub_24A62E3E4();

    v403(v278, v297);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v306);
    v307 = sub_24A62E644();
    MEMORY[0x28223BE20](v307);
    *(&v373 - 2) = v291;
    *(&v373 - 8) = 1;
    *(swift_allocObject() + 16) = v405;
    v308 = v306;
    sub_24A62E3E4();

    v403(v278, v297);
    if (qword_27EF4EC58 != -1)
    {
      swift_once();
    }

    v309 = sub_24A506EB8(v396, qword_27EF5CA00);
    dispatch_group_enter(v308);
    v310 = v398;
    [v398 begin];
    v311 = v373;
    sub_24A5461E8(v309, v373);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v312 = *(v311 + 8);
    }

    else
    {
      v332 = v389;
      v333 = v388;
      v334 = v311;
      v335 = v390;
      (*(v389 + 32))(v388, v334, v390);
      sub_24A62E934();
      v312 = v336;
      (*(v332 + 8))(v333, v335);
    }

    [v310 setDuration_];
    v337 = sub_24A6268BC();
    [v310 setTimingFunction_];

    v338 = swift_allocObject();
    v338[2] = 0;
    v338[3] = 0;
    v338[4] = v405;
    v413 = sub_24A547994;
    v414 = v338;
    aBlock = MEMORY[0x277D85DD0];
    v410 = 1107296256;
    v411 = sub_24A5A8458;
    v412 = &unk_285DA3C48;
    v339 = _Block_copy(&aBlock);
    v340 = v308;

    [v310 setCompletionBlock_];
    _Block_release(v339);
    v341 = swift_weakLoadStrong();
    if (v341)
    {
      v342 = *(v341 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v412 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v310 commit];
    v343 = v406;
    *(v406 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
    *(v343 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC1EB851EB851ECLL;
    sub_24A62EA04();
    dispatch_group_enter(v340);
    v344 = sub_24A62E644();
    MEMORY[0x28223BE20](v344);
    *(&v373 - 2) = v343;
    *(&v373 - 8) = 0;
    v345 = swift_allocObject();
    v345[2] = 0;
    v345[3] = 0;
    v345[4] = v405;
    v346 = v340;
    sub_24A62E3E4();

    v348 = v403;
    v347 = v404;
    v177 = v278;
    v403(v278, v404);
    if (qword_27EF4EAF0 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v346);
    v349 = sub_24A62E644();
    v401 = &v373;
    MEMORY[0x28223BE20](v349);
    *(&v373 - 2) = v343;
    *(&v373 - 8) = 1;
    v350 = swift_allocObject();
    v350[2] = 0;
    v350[3] = 0;
    v350[4] = v405;
    v351 = v346;
    sub_24A62E3E4();

    v348(v278, v347);
    if (qword_27EF4EC08 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v351);
    v352 = sub_24A62E644();
    MEMORY[0x28223BE20](v352);
    *(&v373 - 2) = v343;
    *(&v373 - 8) = 1;
    v353 = swift_allocObject();
    v165 = v343;
    v353[2] = 0;
    v353[3] = 0;
    v353[4] = v405;
    v354 = v351;
    sub_24A62E3E4();

    v228 = v404;
LABEL_123:
    v121 = &unk_27EF5C000;
    goto LABEL_124;
  }

  if (v387 != 2)
  {
    goto LABEL_106;
  }

  v122 = v406;
  *(v406 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
  *(v122 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
  if (qword_27EF4EBA0 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EBA8 != -1)
  {
    swift_once();
  }

  v398 = qword_27EF5C910;
  v123 = dispatch_group_create();
  dispatch_group_enter(v123);
  v124 = sub_24A62E644();
  MEMORY[0x28223BE20](v124);
  v125 = v406;
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 0;
  *(swift_allocObject() + 16) = v123;
  v126 = v123;
  sub_24A62E3E4();

  v128 = v402;
  v127 = v403;
  v129 = v404;
  v403(v402, v404);
  dispatch_group_enter(v126);
  v130 = sub_24A62E644();
  MEMORY[0x28223BE20](v130);
  *(&v373 - 2) = v125;
  *(&v373 - 8) = 0;
  *(swift_allocObject() + 16) = v126;
  v131 = v126;
  sub_24A62E3E4();

  v127(v128, v129);
  v132 = v391;
  dispatch_group_enter(v391);
  v133 = sub_24A62F014();
  v134 = swift_allocObject();
  v134[2] = 0;
  v134[3] = 0;
  v134[4] = v405;
  v413 = sub_24A547994;
  v414 = v134;
  aBlock = MEMORY[0x277D85DD0];
  v410 = 1107296256;
  v411 = sub_24A5A8458;
  v412 = &unk_285DA3928;
  v135 = _Block_copy(&aBlock);
  v136 = v132;
  v137 = v392;
  sub_24A62EAB4();
  v408 = MEMORY[0x277D84F90];
  v138 = v393;
  v139 = v395;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v135);

  v379(v138, v139);
  (v382)(v137, v394);

  if (qword_27EF4EB00 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v136);
  v140 = sub_24A62E644();
  MEMORY[0x28223BE20](v140);
  v141 = v406;
  *(&v373 - 2) = v406;
  v142 = v141;
  *(&v373 - 8) = 1;
  v143 = swift_allocObject();
  v144 = v405;
  *(v143 + 16) = v405;
  v145 = v136;
  sub_24A62E3E4();

  v403(v128, v404);
  sub_24A62EA04();
  dispatch_group_enter(v145);
  v146 = sub_24A62E644();
  MEMORY[0x28223BE20](v146);
  *(&v373 - 2) = v142;
  *(&v373 - 8) = 1;
  v147 = swift_allocObject();
  v147[2] = 0;
  v147[3] = 0;
  v148 = v144;
  v147[4] = v144;
  v149 = v145;
  sub_24A62E3E4();

  v151 = v403;
  v150 = v404;
  v403(v128, v404);
  dispatch_group_enter(v149);
  v152 = sub_24A62E644();
  v401 = &v373;
  MEMORY[0x28223BE20](v152);
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 1;
  v153 = swift_allocObject();
  v153[2] = 0;
  v153[3] = 0;
  v153[4] = v148;
  v154 = v149;
  sub_24A62E3E4();

  v151(v128, v150);
  dispatch_group_enter(v154);
  v155 = sub_24A62E644();
  MEMORY[0x28223BE20](v155);
  v156 = v406;
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 0;
  v157 = swift_allocObject();
  v157[2] = 0;
  v157[3] = 0;
  v157[4] = v405;
  v158 = v154;
  sub_24A62E3E4();

  v159 = v404;
  v403(v128, v404);
  if (qword_27EF4EB90 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v158);
  v160 = sub_24A62E644();
  MEMORY[0x28223BE20](v160);
  *(&v373 - 2) = v156;
  *(&v373 - 8) = 1;
  v161 = swift_allocObject();
  v161[2] = 0;
  v161[3] = 0;
  v161[4] = v405;
  v162 = v158;
  sub_24A62E3E4();

  v403(v128, v159);
  v163 = v159;
  if (qword_27EF4EB98 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v162);
  v164 = sub_24A62E644();
  MEMORY[0x28223BE20](v164);
  v165 = v406;
  *(&v373 - 2) = v406;
  *(&v373 - 8) = 1;
  v166 = swift_allocObject();
  v166[2] = 0;
  v166[3] = 0;
  v167 = v405;
  v166[4] = v405;
  v168 = v162;
  sub_24A62E3E4();

  v169 = v163;
  v170 = v403;
  v403(v128, v169);
  dispatch_group_enter(v168);
  v171 = sub_24A62E644();
  v401 = &v373;
  MEMORY[0x28223BE20](v171);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 1;
  v172 = swift_allocObject();
  v172[2] = 0;
  v172[3] = 0;
  v172[4] = v167;
  v173 = v168;
  sub_24A62E3E4();

  v170(v128, v404);
  v121 = &unk_27EF5C000;
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v173);
  v174 = sub_24A62E644();
  MEMORY[0x28223BE20](v174);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 1;
  v175 = swift_allocObject();
  v175[2] = 0;
  v175[3] = 0;
  v175[4] = v405;
  v176 = v173;
  sub_24A62E3E4();
  v177 = v128;
LABEL_65:
  v228 = v404;
LABEL_124:

  v403(v177, v228);
  v77 = v405;
LABEL_125:
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  v355 = v402;
  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  v356 = v391;
  dispatch_group_enter(v391);
  *(v165 + v121[21]);
  sub_24A62EA04();

  v357 = sub_24A62E644();
  MEMORY[0x28223BE20](v357);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 1;
  v358 = swift_allocObject();
  *(v358 + 16) = v77;
  *(v358 + 24) = 1;
  *(v358 + 40) = 0;
  *(v358 + 48) = 0;
  *(v358 + 32) = v165;
  v359 = v356;

  sub_24A62E3E4();

  v360 = v77;
  v361 = v403;
  v403(v355, v404);
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  sub_24A62EA04();
  dispatch_group_enter(v359);
  v362 = sub_24A62E644();
  MEMORY[0x28223BE20](v362);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 1;
  v363 = swift_allocObject();
  v363[2] = 0;
  v363[3] = 0;
  v363[4] = v360;
  v364 = v359;
  sub_24A62E3E4();

  v365 = v404;
  v361(v355, v404);
  dispatch_group_enter(v364);
  v366 = sub_24A62E644();
  v401 = &v373;
  MEMORY[0x28223BE20](v366);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 0;
  v367 = swift_allocObject();
  v367[2] = 0;
  v367[3] = 0;
  v367[4] = v360;
  v368 = v364;
  sub_24A62E3E4();

  v361(v355, v365);
  dispatch_group_enter(v368);
  v369 = sub_24A62E644();
  MEMORY[0x28223BE20](v369);
  *(&v373 - 2) = v165;
  *(&v373 - 8) = 0;
  v370 = swift_allocObject();
  v370[2] = 0;
  v370[3] = 0;
  v370[4] = v405;
  v371 = v368;
  sub_24A62E3E4();

  return (v361)(v355, v404);
}

uint64_t sub_24A53D71C(int a1, int a2, NSObject *a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v617) = a2;
  LODWORD(v623) = a1;
  v620 = sub_24A62E984();
  v619 = *(v620 - 8);
  v8 = *(v619 + 64);
  MEMORY[0x28223BE20](v620);
  v618 = &v608 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v633 = type metadata accessor for PFVFXAnimation();
  v10 = *(v633[-1].isa + 8);
  v11 = MEMORY[0x28223BE20](v633);
  v609 = &v608 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v611 = &v608 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v610 = &v608 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v615 = (&v608 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v616 = (&v608 - v20);
  MEMORY[0x28223BE20](v19);
  p_isa = (&v608 - v21);
  v632 = sub_24A62EA94();
  v637 = *(v632 - 8);
  v22 = *(v637 + 64);
  MEMORY[0x28223BE20](v632);
  v631 = &v608 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A62EAD4();
  v638 = *(v24 - 8);
  v639 = v24;
  v25 = *(v638 + 64);
  MEMORY[0x28223BE20](v24);
  v636 = &v608 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v642 = sub_24A62EAF4();
  v640 = *(v642 - 1);
  v27 = *(v640 + 64);
  v28 = MEMORY[0x28223BE20](v642);
  v625 = &v608 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v621 = &v608 - v30;
  v31 = sub_24A62E654();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v608 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v612 = a4;
  *(a4 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 1;
  if (qword_27EF4EB48 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a3);
  v36 = sub_24A62E644();
  MEMORY[0x28223BE20](v36);
  *(&v608 - 2) = v5;
  *(&v608 - 8) = 1;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = a3;
  v38 = a3;
  sub_24A62E3E4();

  v39 = *(v32 + 8);
  v645 = v32 + 8;
  v646 = v35;
  v644 = v39;
  v39(v35, v31);
  if (qword_27EF4EB40 != -1)
  {
    swift_once();
  }

  sub_24A52AE18(1, qword_27EF5C8A8, a3, 0, 0);
  v40 = v5;
  v41 = a3;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  v42 = qword_27EF5C978;
  dispatch_group_enter(v38);
  v43 = v646;
  v44 = sub_24A62E644();
  MEMORY[0x28223BE20](v44);
  *(&v608 - 2) = v40;
  *(&v608 - 8) = 0;
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v41;
  v46 = v38;
  v608 = v42;
  sub_24A62E3E4();
  v614 = 0;

  v647 = v31;
  v644(v43, v31);
  dispatch_group_enter(v46);
  v624 = sub_24A545E8C();
  v47 = sub_24A62F014();
  v48 = v625;
  sub_24A62EAE4();
  v49 = v621;
  sub_24A62EB54();
  v635 = *(v640 + 8);
  v640 += 8;
  v635(v48, v642);
  v50 = swift_allocObject();
  *(v50 + 16) = v40;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 40) = 0;
  *(v50 + 48) = v41;
  v654 = sub_24A547A30;
  v655 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA3FB8;
  v51 = _Block_copy(&aBlock);
  v641 = v46;

  v52 = v636;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v628 = sub_24A545F60();
  v626 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v627 = sub_24A529464();
  v648 = v41;
  v53 = v631;
  v54 = v632;
  sub_24A62F254();
  MEMORY[0x24C21A910](v49, v52, v53, v51);
  _Block_release(v51);

  v55 = v637 + 8;
  v629 = *(v637 + 8);
  v629(v53, v54);
  v56 = v40;
  v57 = v638 + 8;
  v630 = *(v638 + 8);
  v630(v52, v639);
  v58 = v642;
  v59 = v635;
  v635(v49, v642);
  dispatch_group_enter(v641);
  v638 = sub_24A62F014();
  v60 = v625;
  sub_24A62EAE4();
  sub_24A62EB54();
  v59(v60, v58);
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = 0;
  *(v61 + 48) = v648;
  v654 = sub_24A547A54;
  v655 = v61;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA4008;
  v62 = _Block_copy(&aBlock);
  v63 = v641;
  v643 = v56;

  v64 = v636;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  sub_24A62F254();
  v65 = v638;
  MEMORY[0x24C21A910](v49, v64, v53, v62);
  _Block_release(v62);

  v637 = v55;
  v629(v53, v54);
  v638 = v57;
  v630(v64, v639);
  v635(v49, v642);
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v66 = sub_24A506EB8(v633, qword_27EF5CAF0);
  dispatch_group_enter(v63);
  v641 = objc_opt_self();
  [v641 begin];
  v67 = p_isa;
  sub_24A5461E8(v66, p_isa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = *(v67 + 8);
  }

  else
  {
    v69 = v619;
    v70 = v618;
    v71 = v620;
    (*(v619 + 32))(v618, v67, v620);
    sub_24A62E934();
    v68 = v72;
    (*(v69 + 8))(v70, v71);
  }

  v74 = v647;
  v73 = v648;
  v75 = v643;
  v76 = v641;
  [v641 setDuration:v68];
  v77 = sub_24A6268BC();
  [v76 setTimingFunction:v77];

  v78 = swift_allocObject();
  v78[2] = 0;
  v78[3] = 0;
  v78[4] = v73;
  v654 = sub_24A547994;
  v655 = v78;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA4058;
  v79 = _Block_copy(&aBlock);
  v613 = v63;

  [v76 setCompletionBlock:v79];
  _Block_release(v79);
  v622 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v81 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v82 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v653 = v81;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v641 commit];
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v83 = qword_27EF5C848;
  v84 = dispatch_group_create();
  dispatch_group_enter(v84);
  v85 = v646;
  v86 = sub_24A62E644();
  MEMORY[0x28223BE20](v86);
  *(&v608 - 2) = v75;
  *(&v608 - 8) = 0;
  *(swift_allocObject() + 16) = v84;
  v87 = v84;
  v88 = v614;
  sub_24A62E3E4();

  v89 = v644;
  v644(v85, v74);
  dispatch_group_enter(v87);
  v90 = sub_24A62E644();
  MEMORY[0x28223BE20](v90);
  *(&v608 - 2) = v75;
  *(&v608 - 8) = 0;
  *(swift_allocObject() + 16) = v87;
  v91 = v87;
  p_isa = v83;
  sub_24A62E3E4();
  v614 = v88;

  v89(v85, v647);
  v92 = v613;
  dispatch_group_enter(v613);
  v93 = sub_24A62F014();
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v95 = v648;
  v94[4] = v648;
  v654 = sub_24A547994;
  v655 = v94;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA40F8;
  v96 = _Block_copy(&aBlock);
  v97 = v92;
  v98 = v636;
  sub_24A62EAB4();
  v649 = MEMORY[0x277D84F90];
  v99 = v631;
  v100 = v632;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v96);

  v629(v99, v100);
  v630(v98, v639);

  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v97);
  v101 = sub_24A62E644();
  MEMORY[0x28223BE20](v101);
  *(&v608 - 2) = v643;
  *(&v608 - 8) = 0;
  v102 = swift_allocObject();
  v102[2] = 0;
  v102[3] = 0;
  v102[4] = v95;
  v103 = v97;
  v104 = v614;
  sub_24A62E3E4();

  v105 = v85;
  v106 = v644;
  v644(v105, v647);
  v107 = v641;
  v108 = v616;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v109 = sub_24A506EB8(v633, qword_27EF5CAD8);
  sub_24A5461E8(v109, v108);
  dispatch_group_enter(v103);
  [v107 begin];
  v110 = v615;
  sub_24A5461E8(v108, v615);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v111 = *(v110 + 8);
  }

  else
  {
    v112 = v619;
    v113 = v618;
    v114 = v110;
    v115 = v620;
    (*(v619 + 32))(v618, v114, v620);
    sub_24A62E934();
    v111 = v116;
    (*(v112 + 8))(v113, v115);
  }

  v117 = v643;
  v118 = v648;
  [v107 setDuration:v111];
  v119 = sub_24A6268BC();
  [v107 setTimingFunction:v119];

  v120 = swift_allocObject();
  v120[2] = 0;
  v120[3] = 0;
  v120[4] = v118;
  v654 = sub_24A547994;
  v655 = v120;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA4170;
  v121 = _Block_copy(&aBlock);
  v122 = v103;

  [v107 setCompletionBlock:v121];
  _Block_release(v121);
  v123 = swift_weakLoadStrong();
  if (v123)
  {
    v124 = *(v123 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v653 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v107 commit];
  sub_24A54624C(v108);
  if (v623 > 3u)
  {
    v125 = v106;
    if (v623 > 5u)
    {
      v126 = v122;
    }

    else
    {
      v126 = v122;
      if (v623 == 4)
      {

LABEL_32:
        if (qword_27EF4EB10 != -1)
        {
          swift_once();
        }

        result = sub_24A52A5D8(qword_27EF5C878, v648, 0, 0);
        goto LABEL_38;
      }
    }
  }

  else
  {
    v125 = v106;
    v126 = v122;
  }

  v127 = sub_24A62F634();

  if (v127)
  {
    goto LABEL_32;
  }

  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v126);
  v129 = v646;
  sub_24A62E644();
  v130 = swift_allocObject();
  v130[2] = v117;
  v130[3] = 0;
  v131 = v648;
  v130[4] = 0;
  v130[5] = v131;
  v132 = v126;

  sub_24A62E3E4();

  result = v125(v129, v647);
LABEL_38:
  if (v617 <= 2u)
  {
    if (v617)
    {
      if (v617 != 1)
      {
        v133 = v643;
        if (v617 != 2)
        {
          return result;
        }

        v622 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue;
        *(v643 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
        v641 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
        *(v133 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD3333333333333;
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v126);
        v134 = v646;
        v135 = sub_24A62E644();
        MEMORY[0x28223BE20](v135);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 1;
        v136 = swift_allocObject();
        v136[2] = 0;
        v136[3] = 0;
        v136[4] = v648;
        v137 = v126;
        v138 = v134;
        v139 = v137;
        sub_24A62E3E4();

        v125(v138, v647);
        if (qword_27EF4EB90 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v139);
        v140 = sub_24A62E644();
        MEMORY[0x28223BE20](v140);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 0;
        v141 = swift_allocObject();
        v141[2] = 0;
        v141[3] = 0;
        v142 = v648;
        v141[4] = v648;
        v143 = v139;
        sub_24A62E3E4();

        v144 = v647;
        v125(v138, v647);
        dispatch_group_enter(v143);
        v145 = sub_24A62E644();
        v633 = &v608;
        MEMORY[0x28223BE20](v145);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 0;
        v146 = swift_allocObject();
        v146[2] = 0;
        v146[3] = 0;
        v146[4] = v142;
        v147 = v143;
        sub_24A62E3E4();

        v125(v138, v144);
        if (qword_27EF4EB78 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v147);
        v148 = sub_24A62E644();
        MEMORY[0x28223BE20](v148);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 1;
        v149 = swift_allocObject();
        v149[2] = 0;
        v149[3] = 0;
        v150 = v648;
        v149[4] = v648;
        v151 = v147;
        sub_24A62E3E4();

        v125(v646, v647);
        if (qword_27EF4EBE8 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v151);
        v152 = sub_24A62E644();
        MEMORY[0x28223BE20](v152);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 1;
        *(swift_allocObject() + 16) = v150;
        v153 = v151;
        sub_24A62E3E4();

        v125(v646, v647);
        if (qword_27EF4EB68 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v153);
        v154 = sub_24A62E644();
        MEMORY[0x28223BE20](v154);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 0;
        v155 = swift_allocObject();
        v155[2] = 0;
        v155[3] = 0;
        v155[4] = v150;
        v156 = v153;
        sub_24A62E3E4();
        v633 = v104;

        v644(v646, v647);
        v157 = v612;
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        sub_24A62EA04();
        dispatch_group_enter(v156);
        v158 = sub_24A62E644();
        MEMORY[0x28223BE20](v158);
        *(&v608 - 2) = v133;
        *(&v608 - 8) = 1;
        v159 = swift_allocObject();
        v159[2] = 0;
        v159[3] = 0;
        v159[4] = v150;
        v160 = v156;
        v161 = v633;
        sub_24A62E3E4();

        v644(v646, v647);
        v162 = *(v157 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_24A62E354();

        sub_24A62EA04();
        dispatch_group_enter(v160);
        v163 = sub_24A62E644();
        MEMORY[0x28223BE20](v163);
        v164 = v643;
        *(&v608 - 2) = v643;
        *(&v608 - 8) = 0;
        v165 = swift_allocObject();
        v165[2] = 0;
        v165[3] = 0;
        v166 = v648;
        v165[4] = v648;
        v167 = v160;
        sub_24A62E3E4();

        v169 = v646;
        v168 = v647;
        v170 = v644;
        v644(v646, v647);
        dispatch_group_enter(v167);
        v171 = sub_24A62E644();
        v633 = &v608;
        MEMORY[0x28223BE20](v171);
        *(&v608 - 2) = v164;
        *(&v608 - 8) = 0;
        v172 = swift_allocObject();
        v172[2] = 0;
        v172[3] = 0;
        v172[4] = v166;
        v173 = v167;
        sub_24A62E3E4();

        v170(v169, v168);
        if (qword_27EF4EC18 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v173);
        v174 = sub_24A62E644();
        MEMORY[0x28223BE20](v174);
        *(&v608 - 2) = v164;
        *(&v608 - 8) = 1;
        v175 = swift_allocObject();
        v175[2] = 0;
        v175[3] = 0;
        v175[4] = v648;
        v176 = v173;
        sub_24A62E3E4();

        v177 = v646;
        v644(v646, v647);
        v633 = v176;
        if (v623 <= 3u || v623 > 5u || v623 == 4)
        {
          v414 = sub_24A62F634();

          if ((v414 & 1) == 0)
          {
            p_isa = &v161->isa;
LABEL_237:
            if (qword_27EF4EB20 != -1)
            {
              swift_once();
            }

            v202 = v647;
            if (qword_27EF4EB28 != -1)
            {
              swift_once();
            }

            v568 = v633;
            dispatch_group_enter(v633);
            v569 = v643;
            *(&v641->isa + v643);
            sub_24A62EA04();

            v570 = sub_24A62E644();
            MEMORY[0x28223BE20](v570);
            *(&v608 - 2) = v569;
            *(&v608 - 8) = 1;
            v571 = swift_allocObject();
            *(v571 + 16) = v648;
            *(v571 + 24) = 1;
            v209 = v646;
            *(v571 + 40) = 0;
            *(v571 + 48) = 0;
            *(v571 + 32) = v569;
            v572 = v568;

            goto LABEL_257;
          }
        }

        else
        {
        }

        *(v643 + v622) = 0x3FED70A3D70A3D71;
        v415 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
        v416 = (v415 >> 13) & 3;
        if (v416)
        {
          if (v416 == 1)
          {
            v417 = (v415 >> 8) & 0xFFFFFF9F;
          }

          else if ((v415 & 0x8000) != 0)
          {
            v417 = (v415 >> 8) & 0x1F;
          }

          else
          {
            v417 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
          }
        }

        else
        {
          v417 = v415 >> 8;
        }

        if (v417 == 2)
        {
          if (qword_27EF4EC28 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v176);
          v535 = sub_24A62E644();
          MEMORY[0x28223BE20](v535);
          *(&v608 - 2) = v643;
          *(&v608 - 8) = 1;
          v536 = swift_allocObject();
          v536[2] = 0;
          v536[3] = 0;
          v537 = v648;
          v536[4] = v648;
          v538 = v176;
          sub_24A62E3E4();

          v539 = v647;
          v540 = v644;
          v644(v177, v647);
          if (qword_27EF4EC30 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v538);
          v541 = sub_24A62E644();
          MEMORY[0x28223BE20](v541);
          *(&v608 - 2) = v643;
          *(&v608 - 8) = 1;
          v542 = swift_allocObject();
          v542[2] = 0;
          v542[3] = 0;
          v542[4] = v537;
          v543 = v538;
          sub_24A62E3E4();
          p_isa = &v161->isa;

          v540(v646, v539);
        }

        else
        {
          if (qword_27EF4EAE8 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v176);
          v544 = sub_24A62E644();
          MEMORY[0x28223BE20](v544);
          v545 = v643;
          *(&v608 - 2) = v643;
          *(&v608 - 8) = 1;
          v546 = swift_allocObject();
          v546[2] = 0;
          v546[3] = 0;
          v546[4] = v648;
          v547 = v176;
          sub_24A62E3E4();

          v548 = v647;
          v549 = v644;
          v644(v646, v647);
          sub_24A62EA04();
          dispatch_group_enter(v547);
          v550 = sub_24A62E644();
          v623 = &v608;
          MEMORY[0x28223BE20](v550);
          *(&v608 - 2) = v545;
          *(&v608 - 8) = 0;
          v551 = swift_allocObject();
          v551[2] = 0;
          v551[3] = 0;
          v552 = v648;
          v551[4] = v648;
          v553 = v547;
          sub_24A62E3E4();

          v549(v646, v548);
          sub_24A62EA04();
          dispatch_group_enter(v553);
          v554 = sub_24A62E644();
          MEMORY[0x28223BE20](v554);
          *(&v608 - 2) = v545;
          *(&v608 - 8) = 0;
          v555 = swift_allocObject();
          v555[2] = 0;
          v555[3] = 0;
          v555[4] = v552;
          v556 = v553;
          sub_24A62E3E4();
          p_isa = &v161->isa;

          v644(v646, v647);
          dispatch_group_enter(v556);
          v557 = sub_24A62F014();
          v558 = v625;
          sub_24A62EAE4();
          v559 = v621;
          sub_24A62EB54();
          v560 = v642;
          v561 = v635;
          v635(v558, v642);
          v562 = swift_allocObject();
          *(v562 + 16) = v643;
          *(v562 + 24) = 1;
          *(v562 + 32) = 0;
          *(v562 + 40) = 0;
          *(v562 + 48) = v648;
          v654 = sub_24A547A30;
          v655 = v562;
          aBlock = MEMORY[0x277D85DD0];
          v651 = 1107296256;
          v652 = sub_24A5A8458;
          v653 = &unk_285DA4918;
          v563 = _Block_copy(&aBlock);
          v564 = v556;

          v565 = v636;
          sub_24A62EAB4();
          aBlock = MEMORY[0x277D84F90];
          v566 = v631;
          v567 = v632;
          sub_24A62F254();
          MEMORY[0x24C21A910](v559, v565, v566, v563);
          _Block_release(v563);

          v629(v566, v567);
          v630(v565, v639);
          v561(v559, v560);
        }

        goto LABEL_237;
      }

      v305 = v612;
      *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v305 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
      sub_24A62EA04();
      dispatch_group_enter(v126);
      v306 = v646;
      v307 = sub_24A62E644();
      v617 = &v608;
      MEMORY[0x28223BE20](v307);
      v308 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 0;
      v309 = swift_allocObject();
      v309[2] = 0;
      v309[3] = 0;
      v310 = v125;
      v311 = v648;
      v309[4] = v648;
      v312 = v126;
      v313 = v306;
      v314 = v312;
      sub_24A62E3E4();

      v315 = v647;
      v310(v313, v647);
      v316 = v308;
      *(v308 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      v617 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
      *(v308 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC70A3D70A3D70ALL;
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v314);
      v317 = sub_24A62E644();
      MEMORY[0x28223BE20](v317);
      *(&v608 - 2) = v308;
      *(&v608 - 8) = 1;
      v318 = swift_allocObject();
      v318[2] = 0;
      v318[3] = 0;
      v318[4] = v311;
      v319 = v314;
      sub_24A62E3E4();

      v320 = v646;
      v644(v646, v315);
      if (qword_27EF4EB90 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v319);
      v321 = sub_24A62E644();
      MEMORY[0x28223BE20](v321);
      *(&v608 - 2) = v308;
      *(&v608 - 8) = 0;
      v322 = swift_allocObject();
      v322[2] = 0;
      v322[3] = 0;
      v322[4] = v311;
      v323 = v319;
      sub_24A62E3E4();

      v324 = v647;
      v325 = v644;
      v644(v320, v647);
      dispatch_group_enter(v323);
      v326 = sub_24A62E644();
      MEMORY[0x28223BE20](v326);
      *(&v608 - 2) = v316;
      *(&v608 - 8) = 0;
      v327 = swift_allocObject();
      v327[2] = 0;
      v327[3] = 0;
      v327[4] = v311;
      v328 = v323;
      sub_24A62E3E4();

      v325(v320, v324);
      v329 = v311;
      if (qword_27EF4EBE8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v328);
      v330 = sub_24A62E644();
      MEMORY[0x28223BE20](v330);
      v331 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      *(swift_allocObject() + 16) = v329;
      v332 = v328;
      sub_24A62E3E4();

      v644(v320, v647);
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v332);
      v333 = sub_24A62E644();
      MEMORY[0x28223BE20](v333);
      *(&v608 - 2) = v331;
      *(&v608 - 8) = 0;
      v334 = swift_allocObject();
      v334[2] = 0;
      v334[3] = 0;
      v334[4] = v329;
      v335 = v332;
      sub_24A62E3E4();

      v644(v320, v647);
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v335);
      v336 = sub_24A62E644();
      MEMORY[0x28223BE20](v336);
      *(&v608 - 2) = v331;
      *(&v608 - 8) = 1;
      v337 = swift_allocObject();
      v337[2] = 0;
      v337[3] = 0;
      v337[4] = v329;
      v338 = v335;
      sub_24A62E3E4();

      v339 = v646;
      v340 = v647;
      v341 = v331;
      v342 = v644;
      v644(v646, v647);
      dispatch_group_enter(v338);
      v343 = sub_24A62E644();
      MEMORY[0x28223BE20](v343);
      *(&v608 - 2) = v341;
      *(&v608 - 8) = 1;
      v344 = swift_allocObject();
      v344[2] = 0;
      v344[3] = 0;
      v344[4] = v329;
      v345 = v338;
      sub_24A62E3E4();

      v342(v339, v340);
      if (qword_27EF4EC00 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v345);
      v346 = sub_24A62E644();
      MEMORY[0x28223BE20](v346);
      v347 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 0;
      v348 = swift_allocObject();
      v348[2] = 0;
      v348[3] = 0;
      v349 = v648;
      v348[4] = v648;
      v350 = v345;
      sub_24A62E3E4();

      v351 = v647;
      v352 = v644;
      v644(v339, v647);
      dispatch_group_enter(v350);
      v353 = sub_24A62E644();
      v615 = &v608;
      MEMORY[0x28223BE20](v353);
      *(&v608 - 2) = v347;
      *(&v608 - 8) = 0;
      v354 = swift_allocObject();
      v354[2] = 0;
      v354[3] = 0;
      v354[4] = v349;
      v355 = v350;
      sub_24A62E3E4();
      v616 = v104;

      v352(v339, v351);
      v356 = v347;
      if (qword_27EF4EC60 != -1)
      {
        swift_once();
      }

      v357 = sub_24A506EB8(v633, qword_27EF5CA18);
      dispatch_group_enter(v355);
      v358 = v641;
      [v641 begin];
      v359 = v609;
      sub_24A5461E8(v357, v609);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v360 = *(v359 + 8);
      }

      else
      {
        v389 = v619;
        v390 = v618;
        v391 = v359;
        v392 = v620;
        (*(v619 + 32))(v618, v391, v620);
        sub_24A62E934();
        v360 = v393;
        (*(v389 + 8))(v390, v392);
        v358 = v641;
      }

      v394 = v339;
      [v358 setDuration:v360];
      v395 = sub_24A6268BC();
      [v358 setTimingFunction:v395];

      v396 = swift_allocObject();
      v396[2] = 0;
      v396[3] = 0;
      v396[4] = v648;
      v654 = sub_24A547994;
      v655 = v396;
      aBlock = MEMORY[0x277D85DD0];
      v651 = 1107296256;
      v652 = sub_24A5A8458;
      v653 = &unk_285DA4B48;
      v397 = _Block_copy(&aBlock);
      v398 = v355;

      [v358 setCompletionBlock:v397];
      _Block_release(v397);
      v399 = swift_weakLoadStrong();
      if (v399)
      {
        v400 = *(v399 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v653 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v358 commit];
      dispatch_group_enter(v398);
      v401 = sub_24A62E644();
      MEMORY[0x28223BE20](v401);
      *(&v608 - 2) = v356;
      *(&v608 - 8) = 0;
      v402 = swift_allocObject();
      v402[2] = 0;
      v402[3] = 0;
      v402[4] = v648;
      v403 = v398;
      v404 = v616;
      sub_24A62E3E4();

      v644(v394, v647);
      v641 = v403;
      if (v623 <= 3u || v623 > 5u || v623 == 4)
      {
        v418 = sub_24A62F634();

        if ((v418 & 1) == 0)
        {
LABEL_252:
          if (qword_27EF4EB20 != -1)
          {
            swift_once();
          }

          v202 = v647;
          if (qword_27EF4EB28 != -1)
          {
            swift_once();
          }

          v603 = v641;
          dispatch_group_enter(v641);
          v604 = v643;
          *(&v617->isa + v643);
          sub_24A62EA04();

          v605 = sub_24A62E644();
          MEMORY[0x28223BE20](v605);
          *(&v608 - 2) = v604;
          *(&v608 - 8) = 1;
          v606 = swift_allocObject();
          *(v606 + 16) = v648;
          *(v606 + 24) = 1;
          v209 = v646;
          *(v606 + 40) = 0;
          *(v606 + 48) = 0;
          *(v606 + 32) = v604;
          v607 = v603;

          goto LABEL_257;
        }
      }

      else
      {
      }

      v419 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      v420 = (v419 >> 13) & 3;
      if (v420)
      {
        if (v420 == 1)
        {
          v421 = (v419 >> 8) & 0xFFFFFF9F;
        }

        else if ((v419 & 0x8000) != 0)
        {
          v421 = (v419 >> 8) & 0x1F;
        }

        else
        {
          v421 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
        }
      }

      else
      {
        v421 = v419 >> 8;
      }

      if (v421 == 2)
      {
        if (qword_27EF4EC28 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v403);
        v573 = sub_24A62E644();
        MEMORY[0x28223BE20](v573);
        *(&v608 - 2) = v643;
        *(&v608 - 8) = 1;
        v574 = swift_allocObject();
        v574[2] = 0;
        v574[3] = 0;
        v575 = v648;
        v574[4] = v648;
        v576 = v403;
        sub_24A62E3E4();

        v577 = v647;
        v578 = v644;
        v644(v394, v647);
        if (qword_27EF4EC30 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v576);
        v579 = sub_24A62E644();
        MEMORY[0x28223BE20](v579);
        *(&v608 - 2) = v643;
        *(&v608 - 8) = 1;
        v580 = swift_allocObject();
        v580[2] = 0;
        v580[3] = 0;
        v580[4] = v575;
        v581 = v576;
        sub_24A62E3E4();

        v578(v646, v577);
      }

      else
      {
        if (qword_27EF4EAE8 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v403);
        v582 = sub_24A62E644();
        MEMORY[0x28223BE20](v582);
        v583 = v643;
        *(&v608 - 2) = v643;
        *(&v608 - 8) = 1;
        v584 = swift_allocObject();
        v584[2] = 0;
        v584[3] = 0;
        v585 = v648;
        v584[4] = v648;
        v586 = v403;
        sub_24A62E3E4();

        v587 = v647;
        v588 = v644;
        v644(v646, v647);
        sub_24A62EA04();
        dispatch_group_enter(v586);
        v589 = sub_24A62E644();
        v633 = &v608;
        MEMORY[0x28223BE20](v589);
        *(&v608 - 2) = v583;
        *(&v608 - 8) = 0;
        v590 = swift_allocObject();
        v590[2] = 0;
        v590[3] = 0;
        v590[4] = v585;
        v591 = v585;
        v592 = v586;
        sub_24A62E3E4();
        p_isa = v404;

        v588(v646, v587);
        dispatch_group_enter(v592);
        v593 = sub_24A62F014();
        v594 = v625;
        sub_24A62EAE4();
        v595 = v621;
        sub_24A62EB54();
        v596 = v635;
        v635(v594, v642);
        v597 = swift_allocObject();
        *(v597 + 16) = v643;
        *(v597 + 24) = 1;
        *(v597 + 32) = 0;
        *(v597 + 40) = 0;
        *(v597 + 48) = v591;
        v654 = sub_24A547A30;
        v655 = v597;
        aBlock = MEMORY[0x277D85DD0];
        v651 = 1107296256;
        v652 = sub_24A5A8458;
        v653 = &unk_285DA4C38;
        v598 = _Block_copy(&aBlock);
        v599 = v592;

        v600 = v636;
        sub_24A62EAB4();
        aBlock = MEMORY[0x277D84F90];
        v601 = v631;
        v602 = v632;
        sub_24A62F254();
        MEMORY[0x24C21A910](v595, v600, v601, v598);
        _Block_release(v598);

        v629(v601, v602);
        v630(v600, v639);
        v596(v595, v642);
      }

      goto LABEL_252;
    }

    v211 = v612;
    *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
    *(v211 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
    sub_24A62EA04();
    dispatch_group_enter(v126);
    v212 = v646;
    v213 = sub_24A62E644();
    MEMORY[0x28223BE20](v213);
    v214 = v643;
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v215 = swift_allocObject();
    v215[2] = 0;
    v215[3] = 0;
    v215[4] = v648;
    v216 = v126;
    v217 = v212;
    v218 = v216;
    sub_24A62E3E4();

    v219 = v647;
    v125(v217, v647);
    *(v214 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
    v616 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
    *(v214 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD1EB851EB851ECLL;
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v218);
    v220 = sub_24A62E644();
    MEMORY[0x28223BE20](v220);
    *(&v608 - 2) = v214;
    *(&v608 - 8) = 1;
    v221 = swift_allocObject();
    v221[2] = 0;
    v221[3] = 0;
    v221[4] = v648;
    v222 = v218;
    sub_24A62E3E4();

    v223 = v646;
    v125(v646, v219);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v222);
    v224 = sub_24A62E644();
    MEMORY[0x28223BE20](v224);
    *(&v608 - 2) = v214;
    *(&v608 - 8) = 0;
    v225 = swift_allocObject();
    v225[2] = 0;
    v225[3] = 0;
    v226 = v648;
    v225[4] = v648;
    v227 = v222;
    sub_24A62E3E4();

    v228 = v647;
    v229 = v644;
    v644(v223, v647);
    dispatch_group_enter(v227);
    v230 = sub_24A62E644();
    v617 = &v608;
    MEMORY[0x28223BE20](v230);
    *(&v608 - 2) = v214;
    *(&v608 - 8) = 0;
    v231 = swift_allocObject();
    v231[2] = 0;
    v231[3] = 0;
    v231[4] = v226;
    v232 = v227;
    sub_24A62E3E4();

    v229(v223, v228);
    dispatch_group_enter(v232);
    v233 = sub_24A62E644();
    v617 = &v608;
    MEMORY[0x28223BE20](v233);
    *(&v608 - 2) = v214;
    *(&v608 - 8) = 1;
    v234 = swift_allocObject();
    v234[2] = 0;
    v234[3] = 0;
    v234[4] = v648;
    v235 = v232;
    sub_24A62E3E4();

    v229(v223, v228);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v235);
    v236 = sub_24A62E644();
    MEMORY[0x28223BE20](v236);
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 1;
    *(swift_allocObject() + 16) = v648;
    v237 = v235;
    sub_24A62E3E4();

    v229(v223, v228);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v237);
    v238 = sub_24A62E644();
    MEMORY[0x28223BE20](v238);
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v239 = swift_allocObject();
    v239[2] = 0;
    v239[3] = 0;
    v239[4] = v648;
    v240 = v237;
    sub_24A62E3E4();

    v229(v223, v647);
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v240);
    v241 = sub_24A62E644();
    MEMORY[0x28223BE20](v241);
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 1;
    v242 = swift_allocObject();
    v242[2] = 0;
    v242[3] = 0;
    v242[4] = v648;
    v243 = v240;
    sub_24A62E3E4();

    v229(v223, v647);
    if (qword_27EF4EC00 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v243);
    v244 = sub_24A62E644();
    MEMORY[0x28223BE20](v244);
    v245 = v643;
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v246 = swift_allocObject();
    v246[2] = 0;
    v246[3] = 0;
    v247 = v648;
    v246[4] = v648;
    v248 = v243;
    sub_24A62E3E4();

    v249 = v647;
    v250 = v644;
    v644(v223, v647);
    dispatch_group_enter(v248);
    v251 = sub_24A62E644();
    v617 = &v608;
    MEMORY[0x28223BE20](v251);
    *(&v608 - 2) = v245;
    *(&v608 - 8) = 0;
    v252 = swift_allocObject();
    v252[2] = 0;
    v252[3] = 0;
    v252[4] = v247;
    v253 = v248;
    sub_24A62E3E4();

    v250(v223, v249);
    dispatch_group_enter(v253);
    v254 = sub_24A62E644();
    MEMORY[0x28223BE20](v254);
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v255 = swift_allocObject();
    v255[2] = 0;
    v255[3] = 0;
    v255[4] = v648;
    v256 = v253;
    sub_24A62E3E4();
    v617 = v104;

    v250(v223, v647);
    if (qword_27EF4EC70 != -1)
    {
      swift_once();
    }

    v257 = sub_24A506EB8(v633, qword_27EF5CA48);
    dispatch_group_enter(v256);
    v258 = v641;
    [v641 begin];
    v259 = v610;
    sub_24A5461E8(v257, v610);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v260 = *(v259 + 8);
    }

    else
    {
      v365 = v619;
      v366 = v618;
      v367 = v259;
      v368 = v620;
      (*(v619 + 32))(v618, v367, v620);
      sub_24A62E934();
      v260 = v369;
      v370 = v365;
      v258 = v641;
      (*(v370 + 8))(v366, v368);
    }

    [v258 setDuration:v260];
    v371 = sub_24A6268BC();
    [v258 setTimingFunction:v371];

    v372 = swift_allocObject();
    v372[2] = 0;
    v372[3] = 0;
    v372[4] = v648;
    v654 = sub_24A547994;
    v655 = v372;
    aBlock = MEMORY[0x277D85DD0];
    v651 = 1107296256;
    v652 = sub_24A5A8458;
    v653 = &unk_285DA4E90;
    v373 = _Block_copy(&aBlock);
    v374 = v256;

    [v258 setCompletionBlock:v373];
    _Block_release(v373);
    v375 = swift_weakLoadStrong();
    if (v375)
    {
      v376 = *(v375 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v653 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v258 commit];
    dispatch_group_enter(v374);
    [v258 begin];
    v377 = v611;
    sub_24A5461E8(v257, v611);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v378 = *(v377 + 8);
    }

    else
    {
      v379 = v619;
      v380 = v618;
      v381 = v377;
      v382 = v620;
      (*(v619 + 32))(v618, v381, v620);
      sub_24A62E934();
      v378 = v383;
      (*(v379 + 8))(v380, v382);
      v258 = v641;
    }

    [v258 setDuration:v378];
    v384 = sub_24A6268BC();
    [v258 setTimingFunction:v384];

    v385 = swift_allocObject();
    v385[2] = 0;
    v385[3] = 0;
    v385[4] = v648;
    v654 = sub_24A547994;
    v655 = v385;
    aBlock = MEMORY[0x277D85DD0];
    v651 = 1107296256;
    v652 = sub_24A5A8458;
    v653 = &unk_285DA4EE0;
    v386 = _Block_copy(&aBlock);
    v641 = v374;

    [v258 setCompletionBlock:v386];
    _Block_release(v386);
    v387 = swift_weakLoadStrong();
    if (v387)
    {
      v388 = *(v387 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v653 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v258 commit];
    if (v623 <= 3u || v623 > 5u || v623 == 4)
    {
      v410 = sub_24A62F634();

      v405 = v617;
      if ((v410 & 1) == 0)
      {
LABEL_222:
        if (qword_27EF4EB20 != -1)
        {
          swift_once();
        }

        v202 = v647;
        if (qword_27EF4EB28 != -1)
        {
          swift_once();
        }

        v530 = v641;
        dispatch_group_enter(v641);
        v531 = v643;
        *(&v616->isa + v643);
        sub_24A62EA04();

        v532 = sub_24A62E644();
        MEMORY[0x28223BE20](v532);
        *(&v608 - 2) = v531;
        *(&v608 - 8) = 1;
        v533 = swift_allocObject();
        *(v533 + 16) = v648;
        *(v533 + 24) = 1;
        v209 = v646;
        *(v533 + 40) = 0;
        *(v533 + 48) = 0;
        *(v533 + 32) = v531;
        v534 = v530;

        goto LABEL_257;
      }
    }

    else
    {

      v405 = v617;
    }

    v411 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v412 = (v411 >> 13) & 3;
    if (v412)
    {
      if (v412 == 1)
      {
        v413 = (v411 >> 8) & 0xFFFFFF9F;
      }

      else if ((v411 & 0x8000) != 0)
      {
        v413 = (v411 >> 8) & 0x1F;
      }

      else
      {
        v413 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v413 = v411 >> 8;
    }

    if (v413 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      v500 = v641;
      dispatch_group_enter(v641);
      v501 = sub_24A62E644();
      MEMORY[0x28223BE20](v501);
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v502 = swift_allocObject();
      v502[2] = 0;
      v502[3] = 0;
      v503 = v648;
      v502[4] = v648;
      v504 = v500;
      sub_24A62E3E4();
      v642 = &v405->isa;

      v505 = v647;
      v506 = v644;
      v644(v223, v647);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v504);
      v507 = sub_24A62E644();
      MEMORY[0x28223BE20](v507);
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v508 = swift_allocObject();
      v508[2] = 0;
      v508[3] = 0;
      v508[4] = v503;
      v509 = v504;
      sub_24A62E3E4();

      v506(v646, v505);
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      v510 = v641;
      dispatch_group_enter(v641);
      v511 = sub_24A62E644();
      MEMORY[0x28223BE20](v511);
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v512 = swift_allocObject();
      v512[2] = 0;
      v512[3] = 0;
      v513 = v648;
      v512[4] = v648;
      v514 = v510;
      sub_24A62E3E4();

      v515 = v647;
      v516 = v644;
      v644(v646, v647);
      sub_24A62EA04();
      dispatch_group_enter(v514);
      v517 = sub_24A62E644();
      p_isa = &v608;
      MEMORY[0x28223BE20](v517);
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 0;
      v518 = swift_allocObject();
      v518[2] = 0;
      v518[3] = 0;
      v518[4] = v513;
      v519 = v514;
      sub_24A62E3E4();
      v617 = v405;

      v516(v646, v515);
      dispatch_group_enter(v519);
      v520 = sub_24A62F014();
      v521 = v625;
      sub_24A62EAE4();
      v522 = v621;
      sub_24A62EB54();
      v523 = v635;
      v635(v521, v642);
      v524 = swift_allocObject();
      *(v524 + 16) = v643;
      *(v524 + 24) = 1;
      *(v524 + 32) = 0;
      *(v524 + 40) = 0;
      *(v524 + 48) = v648;
      v654 = sub_24A547A30;
      v655 = v524;
      aBlock = MEMORY[0x277D85DD0];
      v651 = 1107296256;
      v652 = sub_24A5A8458;
      v653 = &unk_285DA4FA8;
      v525 = _Block_copy(&aBlock);
      v526 = v519;

      v527 = v636;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v528 = v631;
      v529 = v632;
      sub_24A62F254();
      MEMORY[0x24C21A910](v522, v527, v528, v525);
      _Block_release(v525);

      v629(v528, v529);
      v630(v527, v639);
      v523(v522, v642);
    }

    goto LABEL_222;
  }

  if (v617 == 3)
  {
    *(v117 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF0A3D70A3D70A4;
    if (qword_27EF4EBE0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v126);
    v261 = v646;
    v262 = sub_24A62E644();
    MEMORY[0x28223BE20](v262);
    *(&v608 - 2) = v117;
    *(&v608 - 8) = 0;
    v263 = swift_allocObject();
    v263[2] = 0;
    v263[3] = 0;
    v263[4] = v648;
    v264 = v126;
    v265 = v261;
    v266 = v264;
    sub_24A62E3E4();

    v267 = v647;
    v268 = v644;
    v644(v265, v647);
    if (qword_27EF4EB78 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v266);
    v269 = sub_24A62E644();
    MEMORY[0x28223BE20](v269);
    *(&v608 - 2) = v117;
    *(&v608 - 8) = 1;
    v270 = swift_allocObject();
    v270[2] = 0;
    v270[3] = 0;
    v270[4] = v648;
    v271 = v266;
    sub_24A62E3E4();

    v268(v265, v267);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v271);
    v272 = sub_24A62E644();
    MEMORY[0x28223BE20](v272);
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v273 = swift_allocObject();
    v273[2] = 0;
    v273[3] = 0;
    v273[4] = v648;
    v274 = v271;
    sub_24A62E3E4();

    v268(v265, v267);
    if (qword_27EF4EAF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v274);
    v275 = sub_24A62E644();
    MEMORY[0x28223BE20](v275);
    v276 = v643;
    *(&v608 - 2) = v643;
    *(&v608 - 8) = 0;
    v277 = swift_allocObject();
    v277[2] = 0;
    v277[3] = 0;
    v277[4] = v648;
    v278 = v274;
    sub_24A62E3E4();

    v268(v265, v647);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v278);
    v279 = sub_24A62E644();
    MEMORY[0x28223BE20](v279);
    *(&v608 - 2) = v276;
    *(&v608 - 8) = 1;
    *(swift_allocObject() + 16) = v648;
    v280 = v278;
    sub_24A62E3E4();

    v268(v265, v647);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v280);
    v281 = sub_24A62E644();
    MEMORY[0x28223BE20](v281);
    *(&v608 - 2) = v276;
    *(&v608 - 8) = 0;
    v282 = swift_allocObject();
    v282[2] = 0;
    v282[3] = 0;
    v282[4] = v648;
    v283 = v280;
    sub_24A62E3E4();

    v268(v265, v647);
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v283);
    v284 = sub_24A62E644();
    MEMORY[0x28223BE20](v284);
    *(&v608 - 2) = v276;
    *(&v608 - 8) = 1;
    v285 = swift_allocObject();
    v285[2] = 0;
    v285[3] = 0;
    v286 = v648;
    v285[4] = v648;
    v287 = v283;
    sub_24A62E3E4();

    v289 = v646;
    v288 = v647;
    v290 = v644;
    v644(v646, v647);
    dispatch_group_enter(v287);
    v291 = sub_24A62E644();
    v641 = &v608;
    MEMORY[0x28223BE20](v291);
    *(&v608 - 2) = v276;
    *(&v608 - 8) = 0;
    v292 = swift_allocObject();
    v292[2] = 0;
    v292[3] = 0;
    v292[4] = v286;
    v293 = v287;
    sub_24A62E3E4();

    v290(v289, v288);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v293);
    v294 = sub_24A62E644();
    MEMORY[0x28223BE20](v294);
    *(&v608 - 2) = v276;
    *(&v608 - 8) = 1;
    v295 = swift_allocObject();
    v295[2] = 0;
    v295[3] = 0;
    v296 = v276;
    v297 = v648;
    v295[4] = v648;
    v298 = v293;
    sub_24A62E3E4();

    v300 = v646;
    v299 = v647;
    v301 = v644;
    v644(v646, v647);
    dispatch_group_enter(v298);
    v302 = sub_24A62E644();
    v641 = &v608;
    MEMORY[0x28223BE20](v302);
    *(&v608 - 2) = v296;
    *(&v608 - 8) = 0;
    v303 = swift_allocObject();
    v303[2] = 0;
    v303[3] = 0;
    v303[4] = v297;
    v304 = v298;
    sub_24A62E3E4();

    v301(v300, v299);
    if (v623 <= 3u || v623 > 5u || v623 == 4)
    {
      v406 = sub_24A62F634();

      if ((v406 & 1) == 0)
      {
LABEL_207:
        if (qword_27EF4EB20 != -1)
        {
          swift_once();
        }

        v202 = v647;
        if (qword_27EF4EB28 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v304);
        v495 = v304;
        v496 = v643;
        *(v643 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay);
        sub_24A62EA04();

        v497 = sub_24A62E644();
        MEMORY[0x28223BE20](v497);
        *(&v608 - 2) = v496;
        *(&v608 - 8) = 1;
        v498 = swift_allocObject();
        *(v498 + 16) = v648;
        *(v498 + 24) = 1;
        v209 = v646;
        *(v498 + 40) = 0;
        *(v498 + 48) = 0;
        *(v498 + 32) = v496;
        v499 = v495;

        goto LABEL_257;
      }
    }

    else
    {
    }

    v407 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v408 = (v407 >> 13) & 3;
    if (v408)
    {
      if (v408 == 1)
      {
        v409 = (v407 >> 8) & 0xFFFFFF9F;
      }

      else if ((v407 & 0x8000) != 0)
      {
        v409 = (v407 >> 8) & 0x1F;
      }

      else
      {
        v409 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v409 = v407 >> 8;
    }

    v633 = v304;
    if (v409 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v304);
      v460 = sub_24A62E644();
      MEMORY[0x28223BE20](v460);
      v461 = v300;
      v462 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v463 = swift_allocObject();
      v463[2] = 0;
      v463[3] = 0;
      v464 = v648;
      v463[4] = v648;
      v465 = v304;
      sub_24A62E3E4();

      v466 = v461;
      v467 = v647;
      v468 = v644;
      v644(v466, v647);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v465);
      v469 = sub_24A62E644();
      v642 = &v608;
      MEMORY[0x28223BE20](v469);
      *(&v608 - 2) = v462;
      *(&v608 - 8) = 1;
      v470 = swift_allocObject();
      v470[2] = 0;
      v470[3] = 0;
      v470[4] = v464;
      v471 = v465;
      sub_24A62E3E4();

      v468(v646, v467);
      v304 = v633;
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v304);
      v472 = sub_24A62E644();
      MEMORY[0x28223BE20](v472);
      v473 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v474 = swift_allocObject();
      v474[2] = 0;
      v474[3] = 0;
      v475 = v648;
      v474[4] = v648;
      v476 = v304;
      sub_24A62E3E4();

      v477 = v647;
      v478 = v644;
      v644(v646, v647);
      sub_24A62EA04();
      dispatch_group_enter(v476);
      v479 = sub_24A62E644();
      p_isa = &v608;
      MEMORY[0x28223BE20](v479);
      *(&v608 - 2) = v473;
      *(&v608 - 8) = 0;
      v480 = swift_allocObject();
      v480[2] = 0;
      v480[3] = 0;
      v480[4] = v475;
      v481 = v475;
      v482 = v476;
      sub_24A62E3E4();
      v641 = v104;

      v478(v646, v477);
      dispatch_group_enter(v482);
      v483 = sub_24A62F014();
      v484 = v625;
      sub_24A62EAE4();
      v485 = v621;
      sub_24A62EB54();
      v486 = v642;
      v487 = v635;
      v635(v484, v642);
      v488 = swift_allocObject();
      *(v488 + 16) = v643;
      *(v488 + 24) = 1;
      *(v488 + 32) = 0;
      *(v488 + 40) = 0;
      *(v488 + 48) = v481;
      v654 = sub_24A547A30;
      v655 = v488;
      aBlock = MEMORY[0x277D85DD0];
      v651 = 1107296256;
      v652 = sub_24A5A8458;
      v653 = &unk_285DA4648;
      v489 = _Block_copy(&aBlock);
      v490 = v482;

      v491 = v636;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v492 = v631;
      v493 = v632;
      sub_24A62F254();
      MEMORY[0x24C21A910](v485, v491, v492, v489);
      _Block_release(v489);

      v629(v492, v493);
      v630(v491, v639);
      v494 = v485;
      v304 = v633;
      v487(v494, v486);
    }

    goto LABEL_207;
  }

  if (v617 == 4)
  {
    v361 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
    *(v117 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
    *(v117 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF1EB851EB851ECLL;
    v362 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v363 = (v362 >> 13) & 3;
    if (v363)
    {
      if (v363 == 1)
      {
        v364 = (v362 >> 8) & 0xFFFFFF9F;
      }

      else if ((v362 & 0x8000) != 0)
      {
        v364 = (v362 >> 8) & 0x1F;
      }

      else
      {
        v364 = *(v612 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v364 = v362 >> 8;
    }

    v641 = v361;
    if (v364 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v126);
      v422 = v646;
      v423 = sub_24A62E644();
      MEMORY[0x28223BE20](v423);
      v424 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v425 = swift_allocObject();
      v425[2] = 0;
      v425[3] = 0;
      v426 = v648;
      v425[4] = v648;
      v427 = v126;
      sub_24A62E3E4();

      v644(v422, v647);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v427);
      v428 = sub_24A62E644();
      MEMORY[0x28223BE20](v428);
      *(&v608 - 2) = v424;
      *(&v608 - 8) = 1;
      v429 = swift_allocObject();
      v429[2] = 0;
      v429[3] = 0;
      v429[4] = v426;
      v430 = v427;
      sub_24A62E3E4();
      v431 = v647;
      v432 = v644;
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v126);
      v422 = v646;
      v433 = sub_24A62E644();
      MEMORY[0x28223BE20](v433);
      v434 = v643;
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 1;
      v435 = swift_allocObject();
      v435[2] = 0;
      v435[3] = 0;
      v435[4] = v648;
      v436 = v126;
      sub_24A62E3E4();

      v437 = v644;
      v644(v422, v647);
      sub_24A62EA04();
      dispatch_group_enter(v436);
      v438 = sub_24A62E644();
      v623 = &v608;
      MEMORY[0x28223BE20](v438);
      *(&v608 - 2) = v434;
      *(&v608 - 8) = 0;
      v439 = swift_allocObject();
      v439[2] = 0;
      v439[3] = 0;
      v440 = v648;
      v439[4] = v648;
      v441 = v436;
      sub_24A62E3E4();
      v633 = v104;

      v437(v422, v647);
      dispatch_group_enter(v441);
      v624 = sub_24A62F014();
      v442 = v625;
      sub_24A62EAE4();
      v443 = v621;
      sub_24A62EB54();
      v635(v442, v642);
      v444 = swift_allocObject();
      *(v444 + 16) = v643;
      *(v444 + 24) = 1;
      *(v444 + 32) = 0;
      *(v444 + 40) = 0;
      *(v444 + 48) = v440;
      v654 = sub_24A547A30;
      v655 = v444;
      aBlock = MEMORY[0x277D85DD0];
      v651 = 1107296256;
      v652 = sub_24A5A8458;
      v653 = &unk_285DA4350;
      v445 = _Block_copy(&aBlock);
      v446 = v441;

      v447 = v636;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v448 = v631;
      v449 = v632;
      sub_24A62F254();
      v450 = v624;
      MEMORY[0x24C21A910](v443, v447, v448, v445);
      _Block_release(v445);

      v451 = v449;
      v432 = v644;
      v629(v448, v451);
      v630(v447, v639);
      v635(v443, v642);
      sub_24A62EA04();
      dispatch_group_enter(v446);
      v452 = sub_24A62E644();
      MEMORY[0x28223BE20](v452);
      *(&v608 - 2) = v643;
      *(&v608 - 8) = 0;
      v453 = swift_allocObject();
      v453[2] = 0;
      v453[3] = 0;
      v453[4] = v648;
      v454 = v446;
      v431 = v647;
      sub_24A62E3E4();
    }

    v432(v422, v431);
    if (qword_27EF4EB30 != -1)
    {
      swift_once();
    }

    v455 = v643;
    if (qword_27EF4EB38 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v126);
    *(&v641->isa + v455);
    sub_24A62EA04();

    v456 = v646;
    v457 = sub_24A62E644();
    MEMORY[0x28223BE20](v457);
    *(&v608 - 2) = v455;
    *(&v608 - 8) = 1;
    v458 = swift_allocObject();
    *(v458 + 16) = v648;
    *(v458 + 24) = 1;
    *(v458 + 40) = 0;
    *(v458 + 48) = 0;
    *(v458 + 32) = v455;
    v459 = v126;
    v209 = v456;

    sub_24A62E3E4();
    v202 = v431;
    goto LABEL_258;
  }

  if (v617 != 5)
  {
    return result;
  }

  v641 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
  *(v117 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
  *(v117 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
  dispatch_group_enter(v126);
  v178 = v646;
  v179 = sub_24A62E644();
  v180 = v117;
  MEMORY[0x28223BE20](v179);
  *(&v608 - 2) = v117;
  *(&v608 - 8) = 0;
  v181 = swift_allocObject();
  v181[2] = 0;
  v181[3] = 0;
  v182 = v648;
  v181[4] = v648;
  v183 = v182;
  v184 = v126;
  sub_24A62E3E4();

  v644(v178, v647);
  dispatch_group_enter(v184);
  v185 = sub_24A62E644();
  MEMORY[0x28223BE20](v185);
  *(&v608 - 2) = v117;
  *(&v608 - 8) = 0;
  v186 = swift_allocObject();
  v186[2] = 0;
  v186[3] = 0;
  v186[4] = v183;
  v187 = v184;
  sub_24A62E3E4();

  v188 = v647;
  v644(v178, v647);
  dispatch_group_enter(v187);
  v189 = sub_24A62E644();
  MEMORY[0x28223BE20](v189);
  *(&v608 - 2) = v117;
  *(&v608 - 8) = 0;
  v190 = swift_allocObject();
  v190[2] = 0;
  v190[3] = 0;
  v190[4] = v183;
  v191 = v187;
  sub_24A62E3E4();
  v633 = v104;

  v644(v178, v188);
  dispatch_group_enter(v191);
  v624 = sub_24A62F014();
  v192 = v625;
  sub_24A62EAE4();
  v193 = v621;
  sub_24A62EB54();
  v194 = v635;
  v635(v192, v642);
  v195 = swift_allocObject();
  *(v195 + 16) = v180;
  *(v195 + 24) = 0;
  *(v195 + 32) = 0;
  *(v195 + 40) = 0;
  *(v195 + 48) = v183;
  v654 = sub_24A547A30;
  v655 = v195;
  aBlock = MEMORY[0x277D85DD0];
  v651 = 1107296256;
  v652 = sub_24A5A8458;
  v653 = &unk_285DA4260;
  v196 = _Block_copy(&aBlock);
  v197 = v191;

  v198 = v636;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v199 = v631;
  v200 = v632;
  sub_24A62F254();
  v201 = v624;
  MEMORY[0x24C21A910](v193, v198, v199, v196);
  _Block_release(v196);

  v629(v199, v200);
  v630(v198, v639);
  v194(v193, v642);
  v202 = v647;
  dispatch_group_enter(v197);
  v203 = sub_24A62E644();
  MEMORY[0x28223BE20](v203);
  *(&v608 - 2) = v643;
  *(&v608 - 8) = 1;
  v204 = swift_allocObject();
  v204[2] = 0;
  v204[3] = 0;
  v204[4] = v648;
  v205 = v197;
  sub_24A62E3E4();

  v644(v178, v202);
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v205);
  v206 = v643;
  *(&v641->isa + v643);
  sub_24A62EA04();

  v207 = sub_24A62E644();
  MEMORY[0x28223BE20](v207);
  *(&v608 - 2) = v206;
  *(&v608 - 8) = 1;
  v208 = swift_allocObject();
  *(v208 + 16) = v648;
  *(v208 + 24) = 1;
  v209 = v646;
  *(v208 + 40) = 0;
  *(v208 + 48) = 0;
  *(v208 + 32) = v206;
  v210 = v205;

LABEL_257:
  sub_24A62E3E4();
LABEL_258:

  return (v644)(v209, v202);
}

double sub_24A54592C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24A5459BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A545C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v5;
  return result;
}

uint64_t sub_24A545CE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A545DA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24A52AC2C();
}

unint64_t sub_24A545E8C()
{
  result = qword_27EF4F9C0;
  if (!qword_27EF4F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F9C0);
  }

  return result;
}

uint64_t sub_24A545ED8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A545F18()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_24A545F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A545F60()
{
  result = qword_27EF4F970;
  if (!qword_27EF4F970)
  {
    sub_24A62EA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F970);
  }

  return result;
}

uint64_t sub_24A545FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A545FFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A54602C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A54605C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A54608C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5460BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546188()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5461B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5461E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFVFXAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A54624C(uint64_t a1)
{
  v2 = type metadata accessor for PFVFXAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A5462A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5462D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546308()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546368()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5469B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A5469E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

uint64_t sub_24A546A18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52B95C();
}

void sub_24A546A48()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_24A546A58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52ACF8();
}

uint64_t sub_24A546A78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A546BFC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A546C54()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A546CA4()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A546CF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24A52AC2C();
}

uint64_t sub_24A546D34()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A546D80()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v1();
  }

  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

uint64_t sub_24A546DD8(uint64_t a1)
{
  v56 = a1;
  v2 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v49 - v4;
  v5 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v51 = v5;
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__performPump;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15 = *(v10 + 32);
  v15(v1 + v14, v13, v9);
  v16 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showAirTagVideo;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v16, v13, v9);
  v17 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPlayingAirTagVideo;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v17, v13, v9);
  v18 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__checkMarkWriteOn;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v18, v13, v9);
  v19 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCheckMarkVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v19, v13, v9);
  v20 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isRingADot;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v20, v13, v9);
  v21 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isVFXVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v21, v13, v9);
  v22 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isConeVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v22, v13, v9);
  v23 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArrowVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v23, v13, v9);
  v24 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcFull;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v24, v13, v9);
  v25 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isFillPuckVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v25, v13, v9);
  v26 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCircleArcVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v26, v13, v9);
  v27 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showGreenBackground;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v27, v13, v9);
  v28 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v28, v13, v9);
  v29 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPulseActive;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v29, v13, v9);
  v30 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pulseNearProgress;
  v58 = 0x3FF0000000000000;
  v50 = v8;
  sub_24A62E344();
  v31 = *(v57 + 32);
  v57 += 32;
  v52 = v31;
  v31(v1 + v30, v8, v5);
  v32 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingOpacity;
  v58 = 0x3FB999999999999ALL;
  v33 = v53;
  sub_24A62E344();
  v34 = v55;
  v35 = *(v54 + 32);
  v35(v1 + v32, v33, v55);
  v36 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingScale;
  v58 = 0x3FF0000000000000;
  sub_24A62E344();
  v35(v1 + v36, v33, v34);
  v37 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckParticleDistance;
  v58 = 0xBFC70A3D70A3D70ALL;
  v38 = v50;
  sub_24A62E344();
  v52(v1 + v37, v38, v51);
  v39 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckLineWidthScale;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v39, v13, v9);
  v40 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticleScale;
  LOBYTE(v58) = 1;
  sub_24A62E344();
  v15(v1 + v40, v13, v9);
  v41 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticlePosition;
  LOBYTE(v58) = 1;
  sub_24A62E344();
  v15(v1 + v41, v13, v9);
  v42 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__requiresArrow;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v42, v13, v9);
  v43 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pushBackArrow;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v43, v13, v9);
  v44 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isGrayRingForwardDotVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v44, v13, v9);
  v45 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcBetweenVisible;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v45, v13, v9);
  v46 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckInCorrectDirection;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v46, v13, v9);
  v47 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcDiameter;
  LOBYTE(v58) = 0;
  sub_24A62E344();
  v15(v1 + v47, v13, v9);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC999999999999ALL;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
  swift_weakInit();
  swift_weakAssign();
  return v1;
}

uint64_t sub_24A548028()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingViewCtrl: Resetiing", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  sub_24A5F571C();
  sub_24A5F53E8();

  v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
  return sub_24A610228();
}

id sub_24A548158(void *a1)
{
  v2 = v1;
  v4 = sub_24A62F124();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = sub_24A62F134();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = [a1 camera];
  sub_24A62F144();

  sub_24A5494E4(v18, v16, MEMORY[0x277D82DB0]);
  v20 = (*(v5 + 48))(v16, 2, v4);
  if (v20)
  {
    if (v20 != 1)
    {
      if (*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame))
      {
        goto LABEL_8;
      }

      *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame) = 1;
      if (qword_27EF4E9A0 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v21 = sub_24A62E314();
        sub_24A506EB8(v21, qword_27EF5C118);
        v22 = sub_24A62E2F4();
        v23 = sub_24A62EF64();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMFindingViewCtrl: Got initial AR Frame", v24, 2u);
          MEMORY[0x24C21BBE0](v24, -1, -1);
        }

LABEL_8:
        v25 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (!v26)
        {
          break;
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

      *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount) = v27;
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v27 + 0x888888888888888, 1) <= 0x888888888888888uLL)
      {
        sub_24A58FF64();
      }
    }

    return sub_24A54954C(v18, MEMORY[0x277D82DB0]);
  }

  (*(v5 + 32))(v11, v16, v4);
  swift_beginAccess();
  if (sub_24A62715C() != 4)
  {
    v28 = sub_24A62715C();
    if (v28 <= 1)
    {
      if (!v28)
      {

        goto LABEL_19;
      }
    }

    else if (v28 != 2 && v28 != 3)
    {
      goto LABEL_28;
    }

    v29 = sub_24A62F634();

    if ((v29 & 1) == 0)
    {
LABEL_28:
      (*(v5 + 8))(v11, v4);
      return sub_24A54954C(v18, MEMORY[0x277D82DB0]);
    }
  }

LABEL_19:
  (*(v5 + 16))(v9, v11, v4);
  v30 = (*(v5 + 88))(v9, v4);
  if (v30 == *MEMORY[0x277D82D90] || v30 == *MEMORY[0x277D82DA0])
  {
    goto LABEL_28;
  }

  if (v30 == *MEMORY[0x277D82DA8])
  {
    v31 = [a1 lightEstimate];
    if (v31)
    {
      v32 = v31;
      result = [v31 ambientIntensity];
      if (v34 <= 500.0)
      {
        v35 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount);
        v26 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v26)
        {
          __break(1u);
          return result;
        }

        *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount) = v36;
        if (v36 >= 2)
        {
          sub_24A590DEC(1, 1);
          v37 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v38 = v37[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState];
          v37[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 6;
          v39 = v37;
          sub_24A5FFD04(v38);
        }
      }
    }

    goto LABEL_28;
  }

  v40 = *MEMORY[0x277D82D98];
  v41 = *(v5 + 8);
  v42 = v30;
  v41(v11, v4);
  result = sub_24A54954C(v18, MEMORY[0x277D82DB0]);
  if (v42 != v40)
  {
    return (v41)(v9, v4);
  }

  return result;
}

void sub_24A548700()
{
  v31 = sub_24A62E074();
  v1 = [v31 domain];
  v2 = sub_24A62EC14();
  v4 = v3;

  v5 = *MEMORY[0x277CBFCF0];
  if (v2 == sub_24A62EC14() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24A62F634();

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v31 code])
  {
LABEL_9:
    if (v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild] == 1)
    {
      sub_24A5D2200(0xD00000000000001ALL, 0x800000024A63E940);
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_24A633830;
      swift_getErrorValue();
      v10 = sub_24A62F6A4();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_24A508FEC();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      v13 = sub_24A62EC24();
      v15 = v14;

      v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v16 >= 3)
      {
      }

      else
      {
        *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v16 + 1;
        sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
        v17 = sub_24A62EBE4();

        v18 = sub_24A62EBE4();
        v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001FLL, 0x800000024A63E960);
        v20 = swift_allocObject();
        v20[2] = v0;
        v20[3] = v13;
        v20[5] = 0;
        v20[6] = 0;
        v20[4] = v15;
        v21 = v0;
        v22 = sub_24A62EBE4();

        v36 = sub_24A549480;
        v37 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A5BE9EC;
        v35 = &unk_285DA5150;
        v23 = _Block_copy(&aBlock);

        v24 = objc_opt_self();
        v25 = [v24 actionWithTitle:v22 style:2 handler:v23];
        _Block_release(v23);

        [v19 addAction_];
        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v26 = swift_allocObject();
        v26[3] = 0;
        v26[4] = 0;
        v26[2] = v21;
        v27 = v21;
        v28 = sub_24A62EBE4();

        v36 = sub_24A5494D8;
        v37 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A5BE9EC;
        v35 = &unk_285DA51A0;
        v29 = _Block_copy(&aBlock);

        v30 = [v24 actionWithTitle:v28 style:0 handler:v29];
        _Block_release(v29);

        [v19 addAction_];
        v27[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v27 presentViewController:v19 animated:1 completion:0];
      }
    }

    sub_24A548028();

    return;
  }

  sub_24A548028();
}

uint64_t sub_24A548C24(double a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = v1;
  if ([v14 isMainThread])
  {
    v16 = *&v15[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView];
    sub_24A5FB45C(a1);
  }

  else
  {
    sub_24A545E8C();
    v18 = sub_24A62F014();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_24A549380;
    *(v19 + 24) = v13;
    aBlock[4] = sub_24A5493F0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA5100;
    v20 = _Block_copy(aBlock);
    v23 = v8;
    v21 = v20;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v12, v7, v21);
    _Block_release(v21);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v23);
  }
}

uint64_t sub_24A548F6C(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingViewState();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_24A596B24(a1);
  v53 = a1;
  if (v11 == 0xD00000000000001DLL && 0x800000024A63CD70 == v12)
  {

LABEL_5:
    v14 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    v15 = *sub_24A50A204(v14, v14[3]);
    v55 = 0u;
    v56 = 0u;
    sub_24A5803DC(&v55);
    goto LABEL_6;
  }

  v13 = sub_24A62F634();

  if (v13)
  {
    goto LABEL_5;
  }

  if (sub_24A596B24(a1) == 0xD00000000000001CLL && 0x800000024A63CD90 == v43)
  {
  }

  else
  {
    v44 = sub_24A62F634();

    if ((v44 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v45 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  swift_beginAccess();
  v46 = *sub_24A50A204(v45, v45[3]);
  v55 = 0u;
  v56 = 0u;
  sub_24A580990(&v55);
LABEL_6:
  sub_24A50EC28(&v55);
LABEL_7:
  v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5494E4(v2 + v16, v8, type metadata accessor for FMFindingViewState);
  v52 = *v8;
  v17 = v4[5];
  v18 = sub_24A62E214();
  (*(*(v18 - 8) + 16))(&v10[v17], &v8[v17], v18);
  v19 = v4[7];
  v20 = &v8[v4[6]];
  v21 = *(v20 + 1);
  v47 = *v20;
  v22 = v8[v19];
  v23 = &v8[v4[8]];
  *(v60 + 13) = *(v23 + 93);
  v24 = *(v23 + 5);
  v59 = *(v23 + 4);
  v60[0] = v24;
  v25 = *(v23 + 3);
  v57 = *(v23 + 2);
  v58 = v25;
  v26 = v4[11];
  LODWORD(v19) = v8[v4[10]];
  v48 = v22;
  v49 = v19;
  v50 = v8[v26];
  v28 = *v23;
  v27 = *(v23 + 1);
  v29 = v4[12];
  v30 = v4[13];
  v51 = v2;
  v31 = v8[v29];
  v55 = v28;
  v56 = v27;
  v32 = v8[v30];
  v33 = v8[v4[14]];

  sub_24A508CE4(&v55, &v54);
  sub_24A54954C(v8, type metadata accessor for FMFindingViewState);
  v34 = &v10[v4[15]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *v10 = v52;
  v35 = &v10[v4[6]];
  *v35 = v47;
  *(v35 + 1) = v21;
  v10[v4[7]] = v48;
  v36 = &v10[v4[8]];
  v37 = v60[0];
  *(v36 + 4) = v59;
  *(v36 + 5) = v37;
  *(v36 + 93) = *(v60 + 13);
  v38 = v56;
  *v36 = v55;
  *(v36 + 1) = v38;
  v39 = v58;
  *(v36 + 2) = v57;
  *(v36 + 3) = v39;
  v10[v4[9]] = v53;
  v40 = v50;
  v10[v4[10]] = v49;
  v10[v4[11]] = v40;
  v10[v4[12]] = v31;
  v10[v4[13]] = v32;
  v10[v4[14]] = v33;
  v41 = *(v51 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
  sub_24A60AB3C(v10);
  return sub_24A54954C(v10, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A549348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A549380()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView);
  sub_24A5FB45C(v1);
}

uint64_t sub_24A5493B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5493F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A549418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A549430()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A549490()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A5494E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A54954C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A5495BC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 104);
    v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 112);
    v5 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 48);
    v9 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 32);
    v10 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 56);
    v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 72);
    type metadata accessor for PFAnimationCoordinator();
    sub_24A50E0A8(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);

    sub_24A62E444();
    swift_getKeyPath();
    sub_24A62E464();

    v7 = sub_24A62E414();
    result = sub_24A62E684();
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 7761773;
    *(a2 + 24) = 0xE300000000000000;
    *(a2 + 32) = v9;
    *(a2 + 48) = v5;
    *(a2 + 56) = 0;
    *(a2 + 60) = v10;
    *(a2 + 76) = v6;
    *(a2 + 84) = 0;
    *(a2 + 88) = v11;
    *(a2 + 96) = v12;
    *(a2 + 104) = v13;
    *(a2 + 112) = v7;
    *(a2 + 120) = result;
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A54978C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  return sub_24A5495BC(v1[2], a1);
}

id sub_24A549798()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13[0] = *(v0 + 32);
  *(v13 + 9) = *(v0 + 41);
  v12[0] = *(v0 + 60);
  *(v12 + 9) = *(v0 + 69);
  v5 = type metadata accessor for LoopingVideoView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = 0;
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = 0;
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = 0;
  v7 = &v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 1;
  v8 = &v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
  *v7 = v13[0];
  *(v7 + 9) = *(v13 + 9);
  *v8 = v12[0];
  *(v8 + 9) = *(v12 + 9);
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A549B94(v1, v2, v3, v4);

  return v9;
}

id sub_24A5498BC()
{
  v6 = v0[4];
  *v7 = v0[5];
  *&v7[9] = *(v0 + 89);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_24A549798();
}

id sub_24A549908()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = v1;
  v8 = v2;
  v3 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v5, v3);
  return sub_24A54A1A0(v5);
}

uint64_t sub_24A5499C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A54A588();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A549A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A54A588();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A549A88()
{
  sub_24A54A588();
  sub_24A62E5D4();
  __break(1u);
}

id sub_24A549AB0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LoopingVideoView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_24A549B94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_24A62E0F4();
  isa = v10[-1].isa;
  v54 = v10;
  v11 = *(isa + 8);
  MEMORY[0x28223BE20](v10);
  v13 = &isa - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v15 = sub_24A62EBE4();
  v16 = sub_24A62EBE4();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_24A62E0D4();

    v18 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v19 = sub_24A62E0B4();
    v20 = [v18 initWithURL_];

    v21 = &v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
    if (v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime + 24])
    {
      v22 = MEMORY[0x277CC0898];
      v23 = *(MEMORY[0x277CC0898] + 8);
      v24 = *(MEMORY[0x277CC0898] + 12);
    }

    else
    {
      v23 = *(v21 + 2);
      v24 = *(v21 + 3);
      v22 = &v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
    }

    v29 = v22[2];
    *&v56 = *v22;
    *(&v56 + 1) = __PAIR64__(v24, v23);
    *&v57 = v29;
    [v20 setForwardPlaybackEndTime_];
    v30 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
    v31 = OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer;
    v32 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer];
    *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = v30;
    v33 = v30;

    if (v33)
    {
      [v33 insertItem:v20 afterItem:0];
    }

    v34 = *&v5[v31];
    if (v34)
    {
      v35 = &v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime];
      if (v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime + 24])
      {
        v35 = MEMORY[0x277CC08F0];
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      v38 = *(v35 + 2);
      v39 = *v35;
      if (v21[24])
      {
        v21 = MEMORY[0x277CC0898];
      }

      v41 = *(v21 + 2);
      v40 = *(v21 + 3);
      v42 = *(v21 + 2);
      v43 = *v21;
      v44 = v34;
      sub_24A62EF04();
      v45 = objc_allocWithZone(MEMORY[0x277CE65E0]);
      v55[0] = v56;
      v55[1] = v57;
      v55[2] = v58;
      v46 = [v45 initWithPlayer:v44 templateItem:v20 timeRange:v55 existingItemsOrdering:1];
      v47 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper];
      *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = v46;

      v48 = [objc_opt_self() playerLayerWithPlayer_];
      v49 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer];
      *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = v48;
      v50 = v48;

      if (v50)
      {
        [v50 setVideoGravity_];
        v51 = [v5 layer];
        [v51 addSublayer_];

        (*(isa + 1))(v13, v54);
      }

      else
      {
        (*(isa + 1))(v13, v54);
      }
    }

    else
    {
      (*(isa + 1))(v13, v54);
    }
  }

  else
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A62E314();
    sub_24A506EB8(v25, qword_27EF5C130);

    v54 = sub_24A62E2F4();
    v26 = sub_24A62EF44();

    if (os_log_type_enabled(v54, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v56 = v28;
      *v27 = 136446466;
      *(v27 + 4) = sub_24A509BA8(a1, a2, &v56);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_24A509BA8(a3, a4, &v56);
      _os_log_impl(&dword_24A503000, v54, v26, "Video file %{public}s wit extension %{public}s not found.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v28, -1, -1);
      MEMORY[0x24C21BBE0](v27, -1, -1);
    }

    else
    {
      v52 = v54;
    }
  }
}

id sub_24A54A1A0(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer;
  result = *(v1 + OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer);
  if (result && (result = [result rate], v5 != 0.0))
  {
    if ((a1 & 1) == 0)
    {
      result = *(v1 + v3);
      if (result)
      {
        v8 = *(MEMORY[0x277CC08F0] + 16);
        v9 = *MEMORY[0x277CC08F0];
        v10 = *(MEMORY[0x277CC08F0] + 8);
        v11 = v8;
        [result seekToTime_];
        result = *(v1 + v3);
        if (result)
        {
          v7 = &selRef_pause;
          return [result *v7];
        }
      }
    }
  }

  else if (a1)
  {
    result = *(v1 + v3);
    if (result)
    {
      v6 = *(MEMORY[0x277CC08F0] + 16);
      v9 = *MEMORY[0x277CC08F0];
      v10 = *(MEMORY[0x277CC08F0] + 8);
      v11 = v6;
      [result seekToTime_];
      result = *(v1 + v3);
      if (result)
      {
        v7 = &selRef_play;
        return [result *v7];
      }
    }
  }

  return result;
}

id sub_24A54A2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoopingVideoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A54A3B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A54A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_24A54A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A54A498()
{
  result = qword_27EF4FCA0;
  if (!qword_27EF4FCA0)
  {
    sub_24A50E1E0(&qword_27EF4FCA8, &qword_24A635AF8);
    sub_24A54A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCA0);
  }

  return result;
}

unint64_t sub_24A54A524()
{
  result = qword_27EF4FCB0;
  if (!qword_27EF4FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCB0);
  }

  return result;
}

unint64_t sub_24A54A588()
{
  result = qword_27EF4FCC0;
  if (!qword_27EF4FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCC0);
  }

  return result;
}

uint64_t sub_24A54A5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 96);
  v6 = *(a2 + 100);
  v7 = *(a5 + 8);
  v8 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v8;
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v10 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v10;
  v14 = v6;
  v13 = v5;
  return v7(a1, v12);
}

uint64_t sub_24A54A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 96);
  v7 = *(a2 + 98);
  v8 = *(a6 + 16);
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v10 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v10;
  v11 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v11;
  v14 = v6;
  v15 = v7;
  return v8(a1, v13);
}

uint64_t *sub_24A54A7B0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_24A54A854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingLocalizer.DelegateTrampoline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A54A8E8(uint64_t a1, __int16 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v178 = a3;
  v176 = a1;
  v9 = sub_24A508FA4(&unk_27EF4FF00, &unk_24A635E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v187 = &v168 - v11;
  v189 = sub_24A508FA4(&unk_27EF52460, &unk_24A63C120);
  v183 = *(v189 - 8);
  v12 = *(v183 + 64);
  MEMORY[0x28223BE20](v189);
  v186 = &v168 - v13;
  v185 = sub_24A508FA4(&unk_27EF4FF10, &unk_24A635E30);
  v184 = *(v185 - 8);
  v14 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v188 = (&v168 - v15);
  v16 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v191 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v168 - v20;
  v190 = sub_24A62E214();
  v170 = *(v190 - 8);
  v22 = *(v170 + 64);
  v23 = MEMORY[0x28223BE20](v190);
  v182 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v168 - v25;
  v172 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer] = 0;
  v27 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider] = 0;
  v28 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager] = 0;
  v29 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID] = MEMORY[0x277D84F98];
  v30 = *a2;
  v31 = &v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement];
  *v31 = 0;
  v31[98] = 0;
  v175 = v5;
  v32 = &v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_mockIndex];
  *v32 = 0;
  v32[8] = 1;
  v174 = [objc_allocWithZone(type metadata accessor for FMFindingLocalizer.DelegateTrampoline()) init];
  *&v174[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate + 8] = a5;
  v171 = a4;
  swift_unknownObjectWeakAssign();
  v33 = (v30 >> 13) & 3;
  v177 = v30;
  v173 = v33;
  if (v33)
  {
    if (v33 == 1)
    {
      if ((v30 & 1) == 0)
      {
        v34 = (v30 >> 8) & 0x9F;
LABEL_10:
        LODWORD(v181) = v34;
        v35 = v176;
        v36 = *(v176 + 16);
        if (v36)
        {
          v202 = MEMORY[0x277D84F90];
          sub_24A62F404();
          v37 = v35 + 32;
          v179 = (v170 + 56);
          v180 = (v170 + 48);
          v38 = (v170 + 8);
          do
          {
            sub_24A508AE4(v37, &v199);
            sub_24A508AE4(&v199, v193);
            sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
            sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v198 = 0;
              v196 = 0u;
              v197 = 0u;
            }

            v41 = *(&v200 + 1);
            v42 = v201;
            sub_24A50A204(&v199, *(&v200 + 1));
            (*(v42 + 16))(v41, v42);
            sub_24A50D63C(&v196, v193, &unk_27EF50520, &unk_24A633B10);
            v43 = v194;
            if (v194)
            {
              v44 = v195;
              sub_24A50A204(v193, v194);
              (*(v44 + 16))(v43, v44);
              sub_24A508C54(v193);
              v45 = v190;
            }

            else
            {
              sub_24A50D6A4(v193, &unk_27EF50520, &unk_24A633B10);
              v45 = v190;
              (*v179)(v21, 1, 1, v190);
            }

            v46 = sub_24A62E1D4();
            if ((*v180)(v21, 1, v45) == 1)
            {
              v39 = 0;
            }

            else
            {
              v39 = sub_24A62E1D4();
              (*v38)(v21, v45);
            }

            [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v46 productUUID:v39 isOwned:v181 != 1];

            (*v38)(v26, v45);
            sub_24A50D6A4(&v196, &unk_27EF50520, &unk_24A633B10);
            sub_24A508C54(&v199);
            sub_24A62F3E4();
            v40 = *(v202 + 16);
            sub_24A62F414();
            sub_24A62F424();
            sub_24A62F3F4();
            v37 += 40;
            --v36;
          }

          while (v36);
          v35 = v176;
        }

        sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
        v47 = v174;
        v48 = sub_24A62F014();
        v49 = objc_allocWithZone(MEMORY[0x277D43C38]);
        sub_24A50D7EC(0, &qword_27EF4FED8, 0x277D43C48);
        v50 = sub_24A62ED54();

        v51 = [v49 initWithDelegate:v47 queue:v48 id:v50];

        v52 = *&v175[v172];
        *&v175[v172] = v51;

LABEL_23:
        v53 = v187;
        v54 = v191;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if ((v30 & 0x80000000) == 0)
    {
      if ((v30 & 0xFE) != 2)
      {
        v34 = v30;
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    if ((v30 & 0x1E00) == 0x200)
    {
LABEL_25:
      if (qword_27EF4E9C8 != -1)
      {
        swift_once();
      }

      v55 = qword_27EF5C218;
      v56 = *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession);
      v57 = v178;
      *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession) = v178;
      v58 = v57;
      v59 = v55;

      v60 = *&v175[v29];
      *&v175[v29] = v59;

      v53 = v187;
LABEL_28:
      v54 = v191;
      v35 = v176;
      goto LABEL_29;
    }
  }

  else if (v30)
  {
    goto LABEL_25;
  }

  v35 = v176;
  v107 = *(v176 + 16);
  if (v107 && v178)
  {
    v108 = qword_27EF4E9C0;
    v109 = v178;
    v53 = v187;
    if (v108 != -1)
    {
      swift_once();
    }

    v110 = qword_27EF5C210;
    v111 = v175;
    v112 = *&v175[v28];
    *&v175[v28] = qword_27EF5C210;
    v113 = v110;

    v114 = objc_allocWithZone(type metadata accessor for FMR1DevicePoseProvider());
    v115 = v174;
    v116 = [v114 initWithARSession_];
    *&v116[OBJC_IVAR____TtC11FMFindingUI22FMR1DevicePoseProvider_frameDelegate + 8] = &off_285DA5368;
    swift_unknownObjectWeakAssign();
    v117 = v116;
    [v117 setDelegate_];

    v118 = *&v111[v27];
    *&v111[v27] = v117;

    goto LABEL_28;
  }

  v53 = v187;
  v54 = v191;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v126 = sub_24A62E314();
  sub_24A506EB8(v126, qword_27EF5C118);
  v127 = v178;

  v128 = sub_24A62E2F4();
  v129 = sub_24A62EF44();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v196 = v131;
    *v130 = 136315394;
    if (v107)
    {
      if (!*(v35 + 16))
      {
        __break(1u);
        goto LABEL_126;
      }

      sub_24A508AE4(v35 + 32, &v199);
    }

    else
    {
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
    }

    sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
    v161 = sub_24A62EC44();
    v163 = sub_24A509BA8(v161, v162, &v196);

    *(v130 + 4) = v163;
    *(v130 + 12) = 2080;
    *&v199 = v178;
    v164 = v127;
    sub_24A508FA4(&unk_27EF4FF50, &unk_24A635E70);
    v165 = sub_24A62EC44();
    v167 = sub_24A509BA8(v165, v166, &v196);

    *(v130 + 14) = v167;
    _os_log_impl(&dword_24A503000, v128, v129, "No valid findable object (%s), or no valid ARSession object (%s).", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v131, -1, -1);
    MEMORY[0x24C21BBE0](v130, -1, -1);

    goto LABEL_23;
  }

LABEL_29:
  v61 = *(v35 + 16);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    *&v196 = MEMORY[0x277D84F90];
    sub_24A58D8E8(0, v61, 0);
    v62 = v196;
    v63 = v35 + 32;
    do
    {
      sub_24A508AE4(v63, &v199);
      v64 = *(v185 + 48);
      v65 = *(&v200 + 1);
      v66 = v201;
      sub_24A50A204(&v199, *(&v200 + 1));
      (*(v66 + 16))(v65, v66);
      v67 = v188;
      *(v188 + v64) = 1;
      sub_24A508C54(&v199);
      *&v196 = v62;
      v69 = *(v62 + 16);
      v68 = *(v62 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_24A58D8E8(v68 > 1, v69 + 1, 1);
        v67 = v188;
        v62 = v196;
      }

      *(v62 + 16) = v69 + 1;
      sub_24A55B7E0(v67, v62 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v69, &unk_27EF4FF10, &unk_24A635E30);
      v63 += 40;
      --v61;
    }

    while (v61);
    v53 = v187;
    v54 = v191;
  }

  if (*(v62 + 16))
  {
    sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
    v70 = sub_24A62F494();
  }

  else
  {
    v70 = MEMORY[0x277D84F98];
  }

  v71 = v176;
  *&v199 = v70;
  sub_24A559C88(v62, 1, &v199);
  v172 = 0;
  *&v175[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID] = v199;
  v72 = *(v71 + 16);
  v73 = MEMORY[0x277D84F90];
  v169 = v72;
  if (v72)
  {
    v74 = v71 + 32;
    v188 = (v170 + 48);
    v181 = (v170 + 32);
    v75 = (v183 + 56);
    v184 = v170 + 56;
    v76 = (v183 + 48);
    v180 = (v183 + 56);
    v179 = (v183 + 48);
    while (1)
    {
      sub_24A508AE4(v74, &v199);
      sub_24A508AE4(&v199, v193);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v198 = 0;
        v196 = 0u;
        v197 = 0u;
      }

      sub_24A50D63C(&v196, v193, &unk_27EF50520, &unk_24A633B10);
      v77 = v194;
      if (!v194)
      {
        break;
      }

      v78 = v195;
      sub_24A50A204(v193, v194);
      v79 = *(v78 + 16);
      v80 = v78;
      v54 = v191;
      v79(v77, v80);
      sub_24A508C54(v193);
      if ((*v188)(v54, 1, v190) == 1)
      {
        goto LABEL_48;
      }

      v81 = *v181;
      v82 = v182;
      v185 = v73;
      v83 = v190;
      v81(v182, v54, v190);
      v84 = *(v189 + 48);
      v85 = *(&v200 + 1);
      v86 = v201;
      sub_24A50A204(&v199, *(&v200 + 1));
      v87 = *(v86 + 16);
      v88 = v86;
      v54 = v191;
      v87(v85, v88);
      v89 = &v187[v84];
      v53 = v187;
      v90 = v82;
      v76 = v179;
      v91 = v83;
      v73 = v185;
      v81(v89, v90, v91);
      v75 = v180;
      v92 = 0;
LABEL_49:
      v93 = v189;
      (*v75)(v53, v92, 1, v189);
      sub_24A50D6A4(&v196, &unk_27EF50520, &unk_24A633B10);
      sub_24A508C54(&v199);
      if ((*v76)(v53, 1, v93) == 1)
      {
        sub_24A50D6A4(v53, &unk_27EF4FF00, &unk_24A635E20);
      }

      else
      {
        sub_24A55B7E0(v53, v186, &unk_27EF52460, &unk_24A63C120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_24A61781C(0, v73[2] + 1, 1, v73);
        }

        v95 = v73[2];
        v94 = v73[3];
        if (v95 >= v94 >> 1)
        {
          v73 = sub_24A61781C(v94 > 1, v95 + 1, 1, v73);
        }

        v73[2] = v95 + 1;
        sub_24A55B7E0(v186, v73 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v95, &unk_27EF52460, &unk_24A63C120);
      }

      v74 += 40;
      if (!--v72)
      {
        goto LABEL_55;
      }
    }

    sub_24A50D6A4(v193, &unk_27EF50520, &unk_24A633B10);
    (*v184)(v54, 1, 1, v190);
LABEL_48:
    sub_24A50D6A4(v54, &unk_27EF4FEE0, &qword_24A6369F0);
    v92 = 1;
    goto LABEL_49;
  }

LABEL_55:
  if (v73[2])
  {
    sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
    v96 = sub_24A62F494();
  }

  else
  {
    v96 = MEMORY[0x277D84F98];
  }

  v97 = v176;
  v98 = v177;
  *&v199 = v96;

  v100 = v172;
  sub_24A5596B4(v99, 1, &v199);
  if (!v100)
  {

    v101 = v175;
    *&v175[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_productUUIDsByFindableUUID] = v199;
    *&v101[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType] = v98;
    v102 = v174;
    *&v101[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline] = v174;
    v103 = type metadata accessor for FMFindingLocalizer();
    v192.receiver = v101;
    v192.super_class = v103;
    v191 = v102;
    v104 = objc_msgSendSuper2(&v192, sel_init);
    v105 = *&v104[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline];
    swift_unknownObjectWeakAssign();
    v106 = v173;
    if (v173)
    {
      if (v173 == 1)
      {
        if ((v98 & 1) == 0)
        {

          swift_unknownObjectRelease();
LABEL_107:

          return v104;
        }

        goto LABEL_74;
      }

      if ((v98 & 0x80000000) == 0)
      {
        if ((v98 & 0xFE) != 2)
        {

          swift_unknownObjectRelease();

          goto LABEL_107;
        }

LABEL_74:
        if (v169)
        {
          if (*(v97 + 16))
          {
            sub_24A508AE4(v97 + 32, &v199);
            v119 = *&v104[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager];
            if (v119)
            {
              if (v106 && (v106 == 1 || (v98 & 0x80000000) == 0))
              {
                v120 = v104;
                v121 = v119;
              }

              else
              {
                v132 = v104;
                v133 = v119;

                sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
                v97 = swift_allocObject();
                *(v97 + 16) = xmmword_24A633830;
                sub_24A508AE4(&v199, v97 + 32);
              }

              v193[0] = MEMORY[0x277D84F90];
              v134 = *(v97 + 16);
              if (v134)
              {
                v190 = v104;
                v176 = v97;
                v135 = v97 + 32;
                v136 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue;
                do
                {
                  v137 = sub_24A508AE4(v135, &v196);
                  v138 = *&v119[v136];
                  MEMORY[0x28223BE20](v137);
                  v139 = v178;
                  *(&v168 - 6) = v119;
                  *(&v168 - 5) = v139;
                  *(&v168 - 4) = &v196;
                  *(&v168 - 12) = v177;
                  *(&v168 - 2) = v191;
                  *(&v168 - 1) = &off_285DA5380;
                  type metadata accessor for FMNearbyInteractionManagerSubscription();
                  sub_24A62F024();
                  v140 = sub_24A508C54(&v196);
                  MEMORY[0x24C21A660](v140);
                  if (*((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v189 = *((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_24A62ED84();
                  }

                  sub_24A62EDA4();
                  v135 += 40;
                  --v134;
                }

                while (v134);
                v141 = v193[0];

                v104 = v190;
              }

              else
              {

                v141 = MEMORY[0x277D84F90];
              }

              swift_unknownObjectRelease();
              sub_24A508C54(&v199);
              v142 = *&v104[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions];
              *&v104[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions] = v141;

              return v104;
            }

            v100 = v104;

            if (qword_27EF4E9A0 == -1)
            {
              goto LABEL_82;
            }

            goto LABEL_124;
          }

          __break(1u);
          goto LABEL_122;
        }

LABEL_103:
        v100 = v104;

        if (qword_27EF4E9A0 == -1)
        {
LABEL_104:
          v153 = sub_24A62E314();
          sub_24A506EB8(v153, qword_27EF5C118);
          v154 = sub_24A62E2F4();
          v155 = sub_24A62EF44();
          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 0;
            _os_log_impl(&dword_24A503000, v154, v155, "No valid findable object!.", v156, 2u);
            MEMORY[0x24C21BBE0](v156, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_107;
        }

LABEL_122:
        swift_once();
        goto LABEL_104;
      }

      if ((BYTE1(v98) & 0x1E) == 2)
      {
        goto LABEL_74;
      }
    }

    else if (v98)
    {
      goto LABEL_74;
    }

    if (v169)
    {
      if (*(v97 + 16))
      {
        sub_24A508AE4(v97 + 32, &v199);
        v143 = v104;

        v145 = *&v143[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager];
        if (v145)
        {
          v146 = *&v145[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue];
          MEMORY[0x28223BE20](v144);
          *(&v168 - 6) = &v199;
          *(&v168 - 5) = v145;
          v147 = v191;
          *(&v168 - 4) = v191;
          *(&v168 - 3) = &off_285DA53D8;
          *(&v168 - 16) = v148;
          type metadata accessor for FMR1ProximityManagerSubscription();
          v149 = v147;
          v150 = v145;
          sub_24A62F024();
          swift_unknownObjectRelease();

          v151 = v196;
          sub_24A508C54(&v199);
          v152 = *&v143[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription];
          *&v143[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription] = v151;

          return v104;
        }

        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v157 = sub_24A62E314();
        sub_24A506EB8(v157, qword_27EF5C118);
        v123 = sub_24A62E2F4();
        v158 = sub_24A62EF44();
        if (os_log_type_enabled(v123, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&dword_24A503000, v123, v158, "No valid proximity manager object!", v159, 2u);
          MEMORY[0x24C21BBE0](v159, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_114;
        }

LABEL_116:
        swift_unknownObjectRelease();
        goto LABEL_117;
      }

      __break(1u);
LABEL_124:
      swift_once();
LABEL_82:
      v122 = sub_24A62E314();
      sub_24A506EB8(v122, qword_27EF5C118);
      v123 = sub_24A62E2F4();
      v124 = sub_24A62EF44();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_24A503000, v123, v124, "No valid NI manager object!", v125, 2u);
        MEMORY[0x24C21BBE0](v125, -1, -1);
        swift_unknownObjectRelease();

LABEL_114:
LABEL_117:

        sub_24A508C54(&v199);
        return v104;
      }

      goto LABEL_116;
    }

    goto LABEL_103;
  }

LABEL_126:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_24A54C214()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager];
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      sub_24A5744B0(v4);
    }
  }

  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions];
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {
    v26 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager;

    if (!i)
    {
      break;
    }

    v8 = 0;
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v25 = v6 & 0xC000000000000001;
    v22 = v6;
    v23 = i;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x24C21ACB0](v8, v6);
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *&v1[v26];
      if (v12)
      {
        v13 = v1;
        v14 = *&v12[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        *(v15 + 24) = v10;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_24A55B77C;
        *(v16 + 24) = v15;
        aBlock[4] = sub_24A517E48;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A592ED8;
        aBlock[3] = &unk_285DA55A0;
        v17 = _Block_copy(aBlock);
        v18 = v12;
        v19 = v10;

        v20 = v14;
        v1 = v13;
        v6 = v22;
        dispatch_sync(v20, v17);

        _Block_release(v17);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v8;
      if (v11 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_18:

  v27.receiver = v1;
  v27.super_class = type metadata accessor for FMFindingLocalizer();
  return objc_msgSendSuper2(&v27, sel_dealloc);
}

uint64_t sub_24A54C688()
{
  v0 = sub_24A62F784();
  sub_24A516B88(9, v0, v1);

  sub_24A55B6E8();
  sub_24A62ECA4();

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  return 7876668;
}

void sub_24A54C770()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingLocalizer: Resetting", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A54D0E8();
  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType];
  v7 = (v6 >> 13) & 3;
  if (!v7)
  {
    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v7 != 1)
  {
    if ((v6 & 0x80000000) != 0)
    {
      return;
    }

    if ((v6 & 0xFE) != 2)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (qword_27EF4E9C8 != -1)
    {
      swift_once();
    }

    v8 = qword_27EF5C218;
    v9 = *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession);
    *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession) = 0;

    v21 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager];
    *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager] = v8;
    v10 = v8;
    v11 = v21;
    goto LABEL_18;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v6 = (v6 >> 8) & 0x9F;
LABEL_17:
  v12 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID];
  v13 = v1;

  sub_24A55A5C8(v14, v13, v6);

  v15 = *&v13[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline];
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v16 = v15;
  v17 = sub_24A62F014();
  v18 = objc_allocWithZone(MEMORY[0x277D43C38]);
  sub_24A50D7EC(0, &qword_27EF4FED8, 0x277D43C48);
  v19 = sub_24A62ED54();

  v20 = [v18 initWithDelegate:v16 queue:v17 id:v19];

  v11 = *&v13[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer];
  *&v13[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer] = v20;
LABEL_18:
}

void sub_24A54CA30()
{
  v49[5] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FMFindingLocalizerError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v0;
    v0 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v0, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v49[0] = v9;
      *v8 = 136315138;
      v10 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
      sub_24A62E214();
      type metadata accessor for PRBTLocalizerState(0);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      v11 = sub_24A62EB94();
      v13 = sub_24A509BA8(v11, v12, v49);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A503000, v0, v7, "🧭 FMFindingLocalizer: Starting localizer for %s", v8, 0xCu);
      sub_24A508C54(v9);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    v14 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType);
    v15 = (v14 >> 13) & 3;
    if (!v15)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

    if (v15 == 1)
    {
      if (v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_40;
      }

      if ((v14 & 0xFE) == 2)
      {
LABEL_7:
        v4 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
        if (v4 >> 62)
        {
          if (v4 < 0)
          {
            v44 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
          }

          v16 = sub_24A62F464();
        }

        else
        {
          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v16)
        {
          goto LABEL_31;
        }

        v1 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x24C21ACB0](v1, v4);
          }

          else
          {
            if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v17 = *(v4 + 8 * v1 + 32);
          }

          v0 = v17;
          v18 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          sub_24A5621CC(1);

          ++v1;
          if (v18 == v16)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v24 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer);
    if (!v24)
    {
      goto LABEL_51;
    }

    v48 = v1;
    v25 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
    v26 = *(v25 + 16);
    if (!v26)
    {
      break;
    }

    v0 = sub_24A5E5054(*(v25 + 16), 0);
    v27 = *(sub_24A62E214() - 8);
    v28 = sub_24A5CE9D8(v49, v0 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26, v25);
    v46 = v49[4];
    v47 = v28;
    v29 = v24;

    sub_24A55B6D4();
    LOWORD(v14) = v47;
    if (v47 == v26)
    {
      goto LABEL_46;
    }

    __break(1u);
LABEL_40:
    if ((v14 & 0x1E00) != 0x200)
    {
LABEL_41:
      v30 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
      if (v30)
      {
        v31 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider);
        v32 = v30;
        v48 = v31;
        sub_24A5722F0(v31);

        v33 = *MEMORY[0x277D85DE8];
        v34 = v48;

        return;
      }

LABEL_51:
      v43 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_19:
    v4 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v45 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
      }

      v19 = sub_24A62F464();
    }

    else
    {
      v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v19)
    {
LABEL_31:
      v23 = *MEMORY[0x277D85DE8];

      return;
    }

    v1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C21ACB0](v1, v4);
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v20 = *(v4 + 8 * v1 + 32);
      }

      v0 = v20;
      v21 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] = 1;
      }

      sub_24A5621CC(0);

      ++v1;
      if (v21 == v19)
      {
        goto LABEL_31;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v29 = v24;
LABEL_46:
  sub_24A62E214();
  v35 = sub_24A62ED54();

  v49[0] = 0;
  v36 = [v29 startRangingOn:v35 withError:v49];

  v37 = v49[0];
  if (!v36)
  {
    v47 = v49[0];
    v40 = v49[0];
    v41 = sub_24A62E084();

    swift_willThrow();
    *v4 = v41;
    swift_storeEnumTagMultiPayload();
    v42 = v41;
    sub_24A54D82C(v4, 0);

    sub_24A55B484(v4, type metadata accessor for FMFindingLocalizerError);
    goto LABEL_51;
  }

  v38 = *MEMORY[0x277D85DE8];

  v39 = v37;
}

void sub_24A54D0E8()
{
  v57[5] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FMFindingLocalizerError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF4E9A0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v5 = sub_24A62E314();
  v6 = sub_24A506EB8(v5, qword_27EF5C118);
  v7 = v0;
  v8 = sub_24A62E2F4();
  v9 = sub_24A62EF64();

  v10 = os_log_type_enabled(v8, v9);
  v55 = v6;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57[0] = v12;
    *v11 = 136315138;
    v13 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
    sub_24A62E214();
    type metadata accessor for PRBTLocalizerState(0);
    sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
    v14 = sub_24A62EB94();
    v16 = sub_24A509BA8(v14, v15, v57);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMFindingLocalizer: Stopping localizer for %s", v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v17 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline);
  v0 = *(v17 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem);
  if (v0)
  {
    v18 = *(v17 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem);

    sub_24A62EB34();
  }

  v19 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType);
  v20 = (v19 >> 13) & 3;
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19)
      {
        goto LABEL_19;
      }

LABEL_14:
      v21 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer);
      if (!v21)
      {
        goto LABEL_47;
      }

      v56 = v1;
      v22 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = sub_24A5E5054(*(v22 + 16), 0);
        v25 = *(sub_24A62E214() - 8);
        v55 = sub_24A5CE9D8(v57, (v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80))), v23, v22);
        v54[0] = v57[4];
        v0 = v21;

        sub_24A55B6D4();
        LOWORD(v19) = v55;
        if (v55 != v23)
        {
          __break(1u);
LABEL_18:
          if ((v19 & 0x1E00) == 0x200)
          {
            goto LABEL_19;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v0 = v21;
      }

      sub_24A62E214();
      v45 = sub_24A62ED54();

      v57[0] = 0;
      v46 = [v0 stopRangingOn:v45 withError:v57];

      v47 = v57[0];
      if (v46)
      {
        v48 = *MEMORY[0x277D85DE8];

        v49 = v47;
        return;
      }

      v55 = v57[0];
      v50 = v57[0];
      v51 = sub_24A62E084();

      swift_willThrow();
      *v4 = v51;
      swift_storeEnumTagMultiPayload();
      v52 = v51;
      sub_24A54D82C(v4, 0);

      sub_24A55B484(v4, type metadata accessor for FMFindingLocalizerError);
LABEL_47:
      v53 = *MEMORY[0x277D85DE8];
      return;
    }

    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    if ((v19 & 0xFE) != 2)
    {
      goto LABEL_14;
    }
  }

  else if ((v19 & 1) == 0)
  {
LABEL_37:
    v42 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
    if (v42)
    {
      v56 = v42;
      sub_24A572914();
      v43 = *MEMORY[0x277D85DE8];
      v44 = v56;

      return;
    }

    goto LABEL_47;
  }

LABEL_19:
  v56 = *(&v7->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
  if (v56 >> 62)
  {
    v26 = sub_24A62F464();
  }

  else
  {
    v26 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v28 = 0;
    v29 = v56 & 0xC000000000000001;
    v1 = v56 & 0xFFFFFFFFFFFFFF8;
    *&v27 = 138412290;
    *v54 = v27;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x24C21ACB0](v28, v56);
        v4 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
LABEL_33:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v28 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v30 = *(v56 + 8 * v28 + 32);
        v4 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          goto LABEL_33;
        }
      }

      v31 = v30;
      v0 = sub_24A62E2F4();
      v32 = sub_24A62EF64();

      if (os_log_type_enabled(v0, v32))
      {
        v33 = swift_slowAlloc();
        v34 = v1;
        v35 = v29;
        v36 = v26;
        v37 = swift_slowAlloc();
        *v33 = v54[0];
        *(v33 + 4) = v31;
        *v37 = v31;
        v38 = v31;
        _os_log_impl(&dword_24A503000, v0, v32, "🧭 FMR1NISubscr%@: asking to stop localizer", v33, 0xCu);
        sub_24A50D6A4(v37, &qword_27EF4FED0, &unk_24A635E00);
        v39 = v37;
        v26 = v36;
        v29 = v35;
        v1 = v34;
        MEMORY[0x24C21BBE0](v39, -1, -1);
        MEMORY[0x24C21BBE0](v33, -1, -1);
      }

      *(&v31->isa + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v0 = Strong;
        sub_24A560664();

        v31 = v0;
      }

      ++v28;
    }

    while (v4 != v26);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_24A54D82C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingLocalizerError(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *&v2[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline] + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v32 = sub_24A62E314();
    sub_24A506EB8(v32, qword_27EF5C118);
    sub_24A55B670(a1, v10);
    v33 = sub_24A62E2F4();
    v34 = sub_24A62EF64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v35 = 136315394;
      sub_24A55B670(v10, v13);
      v37 = sub_24A62EC44();
      v39 = v38;
      sub_24A55B484(v10, type metadata accessor for FMFindingLocalizerError);
      v40 = sub_24A509BA8(v37, v39, v47);

      *(v35 + 4) = v40;
      *(v35 + 12) = 1024;
      *(v35 + 14) = a2 & 1;
      _os_log_impl(&dword_24A503000, v33, v34, "🧭 FMFindingLocalizer: Did fail without delegate: %s, shouldRestart: %{BOOL}d", v35, 0x12u);
      sub_24A508C54(v36);
      MEMORY[0x24C21BBE0](v36, -1, -1);
      MEMORY[0x24C21BBE0](v35, -1, -1);

      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      sub_24A55B484(v10, type metadata accessor for FMFindingLocalizerError);
      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  v17 = *(v16 + 8);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v18 = sub_24A62E314();
  sub_24A506EB8(v18, qword_27EF5C118);
  sub_24A55B670(a1, v15);
  v19 = sub_24A62E2F4();
  v20 = sub_24A62EF64();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = a1;
    v22 = a2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v45 = v17;
    v25 = v24;
    v47[0] = v24;
    *v23 = 136315394;
    sub_24A55B670(v15, v13);
    v26 = sub_24A62EC44();
    v28 = v27;
    sub_24A55B484(v15, type metadata accessor for FMFindingLocalizerError);
    v29 = sub_24A509BA8(v26, v28, v47);

    *(v23 + 4) = v29;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v22 & 1;
    _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMFindingLocalizer: Did fail with error: %s, shouldRestart: %{BOOL}d", v23, 0x12u);
    sub_24A508C54(v25);
    v30 = v25;
    v17 = v45;
    MEMORY[0x24C21BBE0](v30, -1, -1);
    v31 = v23;
    a2 = v22;
    a1 = v46;
    MEMORY[0x24C21BBE0](v31, -1, -1);
  }

  else
  {

    sub_24A55B484(v15, type metadata accessor for FMFindingLocalizerError);
  }

  ObjectType = swift_getObjectType();
  v47[3] = type metadata accessor for FMFindingLocalizer();
  v47[4] = &off_285DA5430;
  v47[0] = v3;
  v42 = *(v17 + 24);
  v43 = v3;
  v42(v47, a1, ObjectType, v17);
  swift_unknownObjectRelease();
  sub_24A508C54(v47);
  if (a2)
  {
LABEL_13:
    sub_24A54C770();
    sub_24A54CA30();
  }
}

void sub_24A54DD9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
  if (v1)
  {
    v2 = v1;
    sub_24A575834();
  }
}

uint64_t sub_24A54DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62E1F4();
  sub_24A55AAE4(v10, a5);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24A54DF58(void *a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v42 = v5;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = a1;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    v15 = &property descriptor for FMFindingViewController.dismissedHandler;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v40 = v10;
      v41 = v4;
      v17 = v16;
      v18 = swift_slowAlloc();
      *&v50[0] = v18;
      *v17 = 136315394;
      v19 = [v12 uuid];
      sub_24A62E1F4();

      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0]);
      v20 = sub_24A62F614();
      v21 = v2;
      v23 = v22;
      (*(v42 + 8))(v8, v41);
      v24 = sub_24A509BA8(v20, v23, v50);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2080;
      *&v44 = [v12 proximityLevel];
      type metadata accessor for PRBTProximityLevel(0);
      v25 = sub_24A62EC44();
      v27 = sub_24A509BA8(v25, v26, v50);

      *(v17 + 14) = v27;
      v2 = v21;
      _os_log_impl(&dword_24A503000, v13, v14, "FMFindingLocalizer: Did update BT proximity measurement for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      v28 = v18;
      v15 = &property descriptor for FMFindingViewController.dismissedHandler;
      MEMORY[0x24C21BBE0](v28, -1, -1);
      v29 = v17;
      v10 = v40;
      v4 = v41;
      MEMORY[0x24C21BBE0](v29, -1, -1);
    }

    v30 = [v12 v15[299]];
    if ((v30 - 1) >= 4)
    {
      if (!v30)
      {
        v48 = 0u;
        v49[0] = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        BYTE4(v49[1]) = 0;
        v34 = 83886080;
LABEL_13:
        LODWORD(v49[1]) = v34;
LABEL_14:
        v50[4] = v48;
        v51[0] = v49[0];
        *(v51 + 13) = *(v49 + 13);
        v50[0] = v44;
        v50[1] = v45;
        v35 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
        v50[2] = v46;
        v50[3] = v47;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v36 = *(v35 + 8);
          ObjectType = swift_getObjectType();
          v43[3] = type metadata accessor for FMFindingLocalizer();
          v43[4] = &off_285DA5430;
          v43[0] = v10;
          v38 = v10;
          v39 = [v12 uuid];
          sub_24A62E1F4();

          (*(v36 + 8))(v43, v50, v8, ObjectType, v36);
          swift_unknownObjectRelease();
          sub_24A517ABC(&v44);

          (*(v42 + 8))(v8, v4);
          return sub_24A508C54(v43);
        }

        else
        {

          return sub_24A517ABC(&v44);
        }
      }
    }

    else
    {
      v31 = [v12 v15[299]];
      v32 = v31 - 1;
      if ((v31 - 1) <= 3)
      {
        v33 = [v12 proximityTrend];
        if (v33 >= 4)
        {
          result = sub_24A62F444();
          __break(1u);
          return result;
        }

        *&v44 = 0;
        BYTE2(v49[1]) = 0x2010100u >> (8 * v32);
        BYTE3(v49[1]) = 0x1030200u >> (8 * v33);
        BYTE4(v49[1]) = 3;
        goto LABEL_14;
      }
    }

    v48 = 0u;
    v49[0] = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    BYTE4(v49[1]) = 0;
    v34 = 0x4000000;
    goto LABEL_13;
  }

  return result;
}

void sub_24A54E4BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    (*(v5 + 16))(v8, a1, v4);
    v12 = sub_24A62E2F4();
    v13 = sub_24A62EF64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = a1;
      v15 = v14;
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v15 = 136315138;
      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0]);
      v16 = sub_24A62F614();
      v17 = v2;
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_24A509BA8(v16, v19, v32);
      v2 = v17;

      *(v15 + 4) = v20;
      _os_log_impl(&dword_24A503000, v12, v13, "🧭 FMFindingLocalizer: Did find item: %s", v15, 0xCu);
      v21 = v29;
      sub_24A508C54(v29);
      MEMORY[0x24C21BBE0](v21, -1, -1);
      v22 = v15;
      a1 = v30;
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v32[0] = 0;
    v33 = 771;
    v34 = 3;
    v23 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v31[3] = type metadata accessor for FMFindingLocalizer();
      v31[4] = &off_285DA5430;
      v31[0] = v10;
      v26 = *(v24 + 8);
      v27 = v10;
      v26(v31, v32, a1, ObjectType, v24);
      swift_unknownObjectRelease();

      sub_24A508C54(v31);
    }

    else
    {
    }
  }
}

uint64_t sub_24A54E8DC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62E214();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v43 = result;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v14 = sub_24A62E314();
    sub_24A506EB8(v14, qword_27EF5C118);
    v41 = *(v9 + 16);
    v42 = v9 + 16;
    v41(v12, a2, v8);
    v15 = a1;
    v16 = sub_24A62E2F4();
    v17 = sub_24A62EF64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v39 = a2;
      v19 = v18;
      v38 = swift_slowAlloc();
      v44 = v38;
      *v19 = 136315394;
      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0]);
      v20 = sub_24A62F614();
      v40 = v4;
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      v23 = sub_24A509BA8(v20, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_24A62F6A4();
      v26 = sub_24A509BA8(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMFindingLocalizer: Did fail ranging on: %s error: %s", v19, 0x16u);
      v27 = v38;
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v27, -1, -1);
      v28 = v19;
      a2 = v39;
      MEMORY[0x24C21BBE0](v28, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_getErrorValue();
    if (sub_24A62F684() == 304)
    {
      swift_getErrorValue();
      v29 = sub_24A62F694();
      v31 = v30;
      v32 = *MEMORY[0x277D433A8];
      if (v29 == sub_24A62EC14() && v31 == v33)
      {

LABEL_12:
        v41(v7, a2, v8);
        swift_storeEnumTagMultiPayload();
        v35 = 0;
LABEL_14:
        v37 = v43;
        sub_24A54D82C(v7, v35);

        return sub_24A55B484(v7, type metadata accessor for FMFindingLocalizerError);
      }

      v34 = sub_24A62F634();

      if (v34)
      {
        goto LABEL_12;
      }
    }

    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    v36 = a1;
    v35 = 1;
    goto LABEL_14;
  }

  return result;
}

void sub_24A54EE54(unsigned __int8 a1, void *a2)
{
  v5 = type metadata accessor for FMFindingLocalizerError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62E214();
  v184 = *(v9 - 8);
  v10 = *(v184 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  *&v180 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  *&v178 = &v175 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  *&v179 = &v175 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v175 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v175 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v183 = &v175 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v175 - v25;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v181 = a2;
  v182 = v9;
  v28 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType;
  v29 = *&Strong[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType];
  v30 = (v29 >> 13) & 3;
  v185 = Strong;
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = sub_24A62DF44();
      *(&v208 + 1) = v31;
      *&v209 = sub_24A55B628(&qword_27EF4FE90, MEMORY[0x277D08A28]);
      v32 = sub_24A5292E8(&v207);
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D089D0], v31);
      LOBYTE(v31) = MEMORY[0x24C219850](&v207);
      sub_24A508C54(&v207);
      Strong = v185;
      if (v31)
      {
        goto LABEL_97;
      }
    }

    else if ((v29 & 0x8100) == 0x100)
    {

      goto LABEL_97;
    }
  }

  if (a1 <= 4u)
  {
    if (a1 <= 2u)
    {
      if (a1 != 1)
      {
        v33 = v181;
        if (a1 == 2)
        {
          v34 = v2;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v35 = sub_24A62E314();
          sub_24A506EB8(v35, qword_27EF5C118);
          v36 = sub_24A62E2F4();
          v37 = sub_24A62EF64();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_24A503000, v36, v37, "🧭 FMFindingLocalizer: item state changed to: reconnecting", v38, 2u);
            MEMORY[0x24C21BBE0](v38, -1, -1);
          }

          v39 = v33[3];
          v40 = v33[4];
          sub_24A50A204(v33, v39);
          (*(v40 + 8))(v198, v39, v40);
          v41 = v199;
          v42 = v200;
          sub_24A50A204(v198, v199);
          v43 = v183;
          (*(v42 + 16))(v41, v42);
          swift_beginAccess();
          v44 = sub_24A554CF0(v43, &v191);
          (*(v184 + 8))(v43, v182, v44);
          v211 = v195;
          *v212 = v196;
          *&v212[16] = v197;
          v207 = v191;
          v208 = v192;
          v209 = v193;
          v210 = v194;
          sub_24A50D6A4(&v207, &qword_27EF4F650, &unk_24A633E00);
          swift_endAccess();
          sub_24A508C54(v198);
          v201 = 0u;
          v202 = 0u;
          v203 = 0u;
          v204 = 0u;
          v205 = 0u;
          v206[0] = 0u;
          BYTE4(v206[1]) = 0;
          LODWORD(v206[1]) = 0x4000000;
          goto LABEL_94;
        }

LABEL_97:

        return;
      }

      v96 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v97 = sub_24A62E314();
      sub_24A506EB8(v97, qword_27EF5C118);
      v98 = sub_24A62E2F4();
      v99 = sub_24A62EF64();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_24A503000, v98, v99, "🧭 FMFindingLocalizer: item state changed to: findable", v100, 2u);
        MEMORY[0x24C21BBE0](v100, -1, -1);
      }

      v101 = *&v185[v28];
      v102 = (v101 >> 13) & 3;
      if (v102)
      {
        v34 = v96;
        if (v102 == 1 || (v101 & 0x80000000) == 0)
        {
          v205 = 0u;
          v206[0] = 0u;
          v203 = 0u;
          v204 = 0u;
          v201 = 0u;
          v202 = 0u;
          BYTE4(v206[1]) = 0;
          LODWORD(v206[1]) = 83886080;
LABEL_93:
          v33 = v181;
          goto LABEL_94;
        }
      }

      v33 = v181;
      v151 = v181[3];
      v152 = v181[4];
      sub_24A50A204(v181, v151);
      (*(v152 + 8))(v198, v151, v152);
      v153 = v199;
      v154 = v200;
      sub_24A50A204(v198, v199);
      (*(v154 + 16))(v153, v154);
      v155 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v156 = *&v185[v155];
      if (*(v156 + 16))
      {

        v157 = sub_24A515AC8(v26);
        if (v158)
        {
          v159 = *(v156 + 56) + 104 * v157;
          v161 = *(v159 + 16);
          v160 = *(v159 + 32);
          v207 = *v159;
          v208 = v161;
          v209 = v160;
          v162 = *(v159 + 48);
          v163 = *(v159 + 64);
          v164 = *(v159 + 80);
          *&v212[16] = *(v159 + 96);
          v211 = v163;
          *v212 = v164;
          v210 = v162;
          sub_24A51C914(&v207, &v191);
          (*(v184 + 8))(v26, v182);

          v179 = v207;
          v180 = v208;
          v177 = v210;
          v178 = v209;
          v175 = *v212;
          v176 = v211;
          v126 = *&v212[16];
LABEL_88:
          v34 = v96;
          goto LABEL_89;
        }
      }

      (*(v184 + 8))(v26, v182);
      v126 = 0;
      v179 = 0u;
      v180 = xmmword_24A635BF0;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      goto LABEL_88;
    }

    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_97;
      }

      v53 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v54 = sub_24A62E314();
      sub_24A506EB8(v54, qword_27EF5C118);
      v55 = sub_24A62E2F4();
      v56 = sub_24A62EF64();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_24A503000, v55, v56, "🧭 FMFindingLocalizer: item state changed to: startedMoving", v57, 2u);
        MEMORY[0x24C21BBE0](v57, -1, -1);
      }

      v58 = v181[3];
      v59 = v181[4];
      sub_24A50A204(v181, v58);
      v60 = *(v59 + 8);
      v60(v198, v58, v59);
      v61 = v199;
      v62 = v200;
      sub_24A50A204(v198, v199);
      (*(v62 + 24))(v189, v61, v62);
      if (!v190 || v190 != 1)
      {
        sub_24A508C54(v198);
        v60(v186, v58, v59);
        v147 = v187;
        v148 = v188;
        sub_24A50A204(v186, v187);
        v149 = v183;
        (*(v148 + 16))(v147, v148);
        swift_beginAccess();
        v150 = sub_24A554CF0(v149, &v191);
        (*(v184 + 8))(v149, v182, v150);
        v211 = v195;
        *v212 = v196;
        *&v212[16] = v197;
        v207 = v191;
        v208 = v192;
        v209 = v193;
        v210 = v194;
        sub_24A50D6A4(&v207, &qword_27EF4F650, &unk_24A633E00);
        swift_endAccess();
        sub_24A508C54(v186);
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206[0] = 0u;
        BYTE4(v206[1]) = 0;
        LODWORD(v206[1]) = 100663296;
        v34 = v53;
        goto LABEL_93;
      }

      v60(v186, v58, v59);
      v63 = v187;
      v64 = v188;
      sub_24A50A204(v186, v187);
      v65 = v178;
      (*(v64 + 16))(v63, v64);
      v66 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v67 = *&v185[v66];
      if (*(v67 + 16))
      {

        v68 = sub_24A515AC8(v65);
        if (v69)
        {
          v70 = *(v67 + 56) + 104 * v68;
          v72 = *(v70 + 16);
          v71 = *(v70 + 32);
          v207 = *v70;
          v208 = v72;
          v209 = v71;
          v73 = *(v70 + 48);
          v74 = *(v70 + 64);
          v75 = *(v70 + 80);
          *&v212[16] = *(v70 + 96);
          v211 = v74;
          *v212 = v75;
          v210 = v73;
          sub_24A51C914(&v207, &v191);
          (*(v184 + 8))(v65, v182);

          v179 = v207;
          v180 = v208;
          v177 = v210;
          v178 = v209;
          v175 = *v212;
          v176 = v211;
          v76 = *&v212[16];
LABEL_92:
          v34 = v53;
          sub_24A508C54(v186);
          sub_24A508C54(v198);
          v201 = v179;
          v202 = v180;
          v203 = v178;
          v204 = v177;
          v205 = v176;
          v206[0] = v175;
          LOWORD(v206[1]) = v76;
          WORD1(v206[1]) = 4;
          BYTE4(v206[1]) = 2;
          goto LABEL_93;
        }
      }

      (*(v184 + 8))(v65, v182);
      v76 = 0;
      v179 = 0u;
      v180 = xmmword_24A635BF0;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      goto LABEL_92;
    }

    v34 = v2;
    v33 = v181;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v110 = sub_24A62E314();
    sub_24A506EB8(v110, qword_27EF5C118);
    v104 = sub_24A62E2F4();
    v105 = sub_24A62EF64();
    v111 = os_log_type_enabled(v104, v105);
    v107 = v179;
    if (v111)
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = "🧭 FMFindingLocalizer: item state changed to: reconnected";
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v33 = v181;
  if (a1 > 6u)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
        goto LABEL_97;
      }

      v34 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v77 = sub_24A62E314();
      sub_24A506EB8(v77, qword_27EF5C118);
      v78 = sub_24A62E2F4();
      v79 = sub_24A62EF64();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_24A503000, v78, v79, "🧭 FMFindingLocalizer: item state changed to: insufficient horizontal movement", v80, 2u);
        MEMORY[0x24C21BBE0](v80, -1, -1);
      }

      v81 = v33[3];
      v82 = v33[4];
      sub_24A50A204(v33, v81);
      (*(v82 + 8))(v198, v81, v82);
      v83 = v199;
      v84 = v200;
      sub_24A50A204(v198, v199);
      (*(v84 + 16))(v83, v84);
      v85 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v86 = *&v185[v85];
      if (*(v86 + 16))
      {

        v87 = sub_24A515AC8(v19);
        if (v88)
        {
          v89 = *(v86 + 56) + 104 * v87;
          v91 = *(v89 + 16);
          v90 = *(v89 + 32);
          v207 = *v89;
          v208 = v91;
          v209 = v90;
          v92 = *(v89 + 48);
          v93 = *(v89 + 64);
          v94 = *(v89 + 80);
          *&v212[16] = *(v89 + 96);
          v211 = v93;
          *v212 = v94;
          v210 = v92;
          sub_24A51C914(&v207, &v191);
          (*(v184 + 8))(v19, v182);

          v179 = v207;
          v180 = v208;
          v177 = v210;
          v178 = v209;
          v175 = *v212;
          v176 = v211;
          v95 = *&v212[16];
LABEL_85:
          sub_24A508C54(v198);
          v201 = v179;
          v202 = v180;
          v203 = v178;
          v204 = v177;
          v205 = v176;
          v206[0] = v175;
          LOWORD(v206[1]) = v95;
          WORD1(v206[1]) = 4;
          BYTE4(v206[1]) = 0;
          goto LABEL_94;
        }
      }

      (*(v184 + 8))(v19, v182);
      v95 = 0;
      v179 = 0u;
      v180 = xmmword_24A635BF0;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      goto LABEL_85;
    }

    v127 = v2;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v128 = sub_24A62E314();
    sub_24A506EB8(v128, qword_27EF5C118);
    v129 = sub_24A62E2F4();
    v130 = sub_24A62EF64();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_24A503000, v129, v130, "🧭 FMFindingLocalizer: item state changed to: insufficient horizontal movement", v131, 2u);
      MEMORY[0x24C21BBE0](v131, -1, -1);
    }

    v132 = v33[3];
    v133 = v33[4];
    sub_24A50A204(v33, v132);
    (*(v133 + 8))(v198, v132, v133);
    v134 = v199;
    v135 = v200;
    sub_24A50A204(v198, v199);
    (*(v135 + 16))(v134, v135);
    v136 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
    swift_beginAccess();
    v137 = *&v185[v136];
    if (*(v137 + 16))
    {

      v138 = sub_24A515AC8(v22);
      if (v139)
      {
        v140 = *(v137 + 56) + 104 * v138;
        v142 = *(v140 + 16);
        v141 = *(v140 + 32);
        v207 = *v140;
        v208 = v142;
        v209 = v141;
        v143 = *(v140 + 48);
        v144 = *(v140 + 64);
        v145 = *(v140 + 80);
        *&v212[16] = *(v140 + 96);
        v211 = v144;
        *v212 = v145;
        v210 = v143;
        sub_24A51C914(&v207, &v191);
        (*(v184 + 8))(v22, v182);

        v179 = v207;
        v180 = v208;
        v177 = v210;
        v178 = v209;
        v175 = *v212;
        v176 = v211;
        v146 = *&v212[16];
LABEL_82:
        v34 = v127;
        sub_24A508C54(v198);
        v201 = v179;
        v202 = v180;
        v203 = v178;
        v204 = v177;
        v205 = v176;
        v206[0] = v175;
        LOWORD(v206[1]) = v146;
        WORD1(v206[1]) = 4;
        BYTE4(v206[1]) = 1;
LABEL_94:
        v211 = v205;
        *v212 = v206[0];
        *&v212[13] = *(v206 + 13);
        v207 = v201;
        v208 = v202;
        v165 = v34 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
        v209 = v203;
        v210 = v204;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v166 = *(v165 + 8);
          ObjectType = swift_getObjectType();
          *(&v192 + 1) = type metadata accessor for FMFindingLocalizer();
          *&v193 = &off_285DA5430;
          *&v191 = v185;
          v168 = v33[3];
          v169 = v33[4];
          sub_24A50A204(v33, v168);
          v170 = *(v169 + 8);
          v171 = v185;
          v170(v198, v168, v169);
          v172 = v199;
          v173 = v200;
          sub_24A50A204(v198, v199);
          v174 = v183;
          (*(v173 + 16))(v172, v173);
          (*(v166 + 8))(&v191, &v207, v174, ObjectType, v166);
          swift_unknownObjectRelease();
          sub_24A517ABC(&v201);

          (*(v184 + 8))(v174, v182);
          sub_24A508C54(v198);
          sub_24A508C54(&v191);
          return;
        }

        sub_24A517ABC(&v201);
        Strong = v185;
        goto LABEL_97;
      }
    }

    (*(v184 + 8))(v22, v182);
    v146 = 0;
    v179 = 0u;
    v180 = xmmword_24A635BF0;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    goto LABEL_82;
  }

  if (a1 == 5)
  {
    v34 = v2;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v103 = sub_24A62E314();
    sub_24A506EB8(v103, qword_27EF5C118);
    v104 = sub_24A62E2F4();
    v105 = sub_24A62EF64();
    v106 = os_log_type_enabled(v104, v105);
    v107 = v180;
    if (v106)
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = "🧭 FMFindingLocalizer: item state changed to: stoppedMoving";
LABEL_63:
      _os_log_impl(&dword_24A503000, v104, v105, v109, v108, 2u);
      MEMORY[0x24C21BBE0](v108, -1, -1);
    }

LABEL_64:

    v112 = v33[3];
    v113 = v33[4];
    sub_24A50A204(v33, v112);
    (*(v113 + 8))(v198, v112, v113);
    v114 = v199;
    v115 = v200;
    sub_24A50A204(v198, v199);
    (*(v115 + 16))(v114, v115);
    v116 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
    swift_beginAccess();
    v117 = *&v185[v116];
    if (*(v117 + 16))
    {

      v118 = sub_24A515AC8(v107);
      if (v119)
      {
        v120 = *(v117 + 56) + 104 * v118;
        v122 = *(v120 + 16);
        v121 = *(v120 + 32);
        v207 = *v120;
        v208 = v122;
        v209 = v121;
        v123 = *(v120 + 48);
        v124 = *(v120 + 64);
        v125 = *(v120 + 80);
        *&v212[16] = *(v120 + 96);
        v211 = v124;
        *v212 = v125;
        v210 = v123;
        sub_24A51C914(&v207, &v191);
        (*(v184 + 8))(v107, v182);

        v179 = v207;
        v180 = v208;
        v177 = v210;
        v178 = v209;
        v175 = *v212;
        v176 = v211;
        v126 = *&v212[16];
LABEL_89:
        sub_24A508C54(v198);
        v201 = v179;
        v202 = v180;
        v203 = v178;
        v204 = v177;
        v205 = v176;
        v206[0] = v175;
        LOWORD(v206[1]) = v126;
        WORD1(v206[1]) = 4;
        BYTE4(v206[1]) = 3;
        goto LABEL_94;
      }
    }

    (*(v184 + 8))(v107, v182);
    v126 = 0;
    v179 = 0u;
    v180 = xmmword_24A635BF0;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    goto LABEL_89;
  }

  if (a1 != 6)
  {
    goto LABEL_97;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v45 = sub_24A62E314();
  sub_24A506EB8(v45, qword_27EF5C118);
  v46 = sub_24A62E2F4();
  v47 = sub_24A62EF64();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMFindingLocalizer: item state changed to: inUse", v48, 2u);
    MEMORY[0x24C21BBE0](v48, -1, -1);
  }

  v49 = v33[3];
  v50 = v33[4];
  sub_24A50A204(v33, v49);
  (*(v50 + 8))(&v207, v49, v50);
  v51 = *(&v208 + 1);
  v52 = v209;
  sub_24A50A204(&v207, *(&v208 + 1));
  (*(v52 + 16))(v51, v52);
  swift_storeEnumTagMultiPayload();
  sub_24A54D82C(v8, 0);

  sub_24A55B484(v8, type metadata accessor for FMFindingLocalizerError);
  sub_24A508C54(&v207);
}

void sub_24A550494(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = (v82 - v11);
  v12 = sub_24A62EB14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = v82 - v18;
  v19 = sub_24A62EA94();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v85 = v12;
  v86 = v13;
  v87 = v10;
  v89 = v6;
  v84 = OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem;
  if (*(v3 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem))
  {
    v21 = *(v3 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem);

    sub_24A62EB34();
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = a1;
  sub_24A508AE4(a1, v144);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_24A508CA0(v144, v23 + 24);
  *&v130 = sub_24A55B364;
  *(&v130 + 1) = v23;
  *&v128 = MEMORY[0x277D85DD0];
  *(&v128 + 1) = 1107296256;
  *&v129 = sub_24A5A8458;
  *(&v129 + 1) = &unk_285DA54D8;
  v82[1] = _Block_copy(&v128);
  *&v137 = MEMORY[0x277D84F90];
  sub_24A55B628(&qword_27EF4F970, MEMORY[0x277D85198]);

  ObjectType = v3;
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v24 = ObjectType;
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  v25 = sub_24A62EB44();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_24A62EB24();
  v29 = v83;

  v30 = *(v24 + v84);
  *(v24 + v84) = v28;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v31 = sub_24A62F014();
  sub_24A62EB04();
  v32 = v88;
  sub_24A62EB54();
  v33 = *(v86 + 8);
  v34 = v17;
  v35 = v85;
  v33(v34, v85);
  v86 = v28;
  sub_24A62EFE4();

  v33(v32, v35);
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v36 = v29[3];
  v37 = v29[4];
  sub_24A50A204(v29, v36);
  (*(v37 + 8))(&v137, v36, v37);
  v38 = *(&v138 + 1);
  v39 = v139;
  sub_24A50A204(&v137, *(&v138 + 1));
  v40 = v91;
  (*(v39 + 16))(v38, v39);
  v41 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  v42 = Strong;
  swift_beginAccess();
  v43 = *(v42 + v41);
  if (!*(v43 + 16))
  {
    v53 = *(v92 + 8);
    v54 = v40;
    v45 = v89;
LABEL_11:
    v91 = v53;
    v53(v54, v45);
    v114 = 0uLL;
    *v115 = 1;
    memset(&v115[8], 0, 74);
    goto LABEL_12;
  }

  v44 = sub_24A515AC8(v40);
  v45 = v89;
  if ((v46 & 1) == 0)
  {

    v53 = *(v92 + 8);
    v54 = v40;
    goto LABEL_11;
  }

  v47 = *(v43 + 56) + 104 * v44;
  v49 = *(v47 + 16);
  v48 = *(v47 + 32);
  v128 = *v47;
  v129 = v49;
  v130 = v48;
  v50 = *(v47 + 48);
  v51 = *(v47 + 64);
  v52 = *(v47 + 80);
  v134 = *(v47 + 96);
  v132 = v51;
  v133 = v52;
  v131 = v50;
  sub_24A51C914(&v128, v144);
  v91 = *(v92 + 8);
  v91(v40, v45);

  *&v115[48] = v132;
  *&v115[64] = v133;
  *&v115[80] = v134;
  v114 = v128;
  *v115 = v129;
  *&v115[16] = v130;
  *&v115[32] = v131;
LABEL_12:
  v55 = v87;
  v144[4] = *&v115[48];
  v144[5] = *&v115[64];
  v145 = *&v115[80];
  v144[0] = v114;
  v144[1] = *v115;
  v144[2] = *&v115[16];
  v144[3] = *&v115[32];
  sub_24A508C54(&v137);
  v56 = v29[3];
  v57 = v29[4];
  sub_24A50A204(v29, v56);
  (*(v57 + 8))(&v128, v56, v57);
  v58 = *(&v129 + 1);
  v59 = v130;
  sub_24A50A204(&v128, *(&v129 + 1));
  (*(v59 + 24))(&v137, v58, v59);
  v60 = v137;
  v61 = v138;
  v62 = BYTE8(v138);
  sub_24A508C54(&v128);
  if (v62 == 1)
  {
  }

  else
  {
    sub_24A55B284(v60, *(&v60 + 1), v61, v62);
  }

  v63 = Strong;
  if (*v115 == 1)
  {
    v64 = v62 == 1;
  }

  else
  {
    v65 = v115[81];
    sub_24A50D63C(&v114, &v128, &qword_27EF4F650, &unk_24A633E00);
    v64 = v65 & 1;
  }

  sub_24A51BBD0(a2, 0, 0, 0, v144, v64, &v116);
  *&v100 = v116;
  BYTE8(v100) = v117;
  v101 = v118;
  *&v102 = v119;
  BYTE8(v102) = v120;
  *&v103 = v121;
  WORD4(v103) = v122;
  *&v104 = v123;
  WORD4(v104) = v124;
  BYTE10(v104) = v125;
  v105 = v126;
  v106 = v127;
  v143 = v127;
  v141 = v104;
  v142 = v126;
  v139 = v102;
  v140 = v103;
  v137 = v100;
  v138 = v118;
  v66 = v29[3];
  v67 = v29[4];
  sub_24A50A204(v29, v66);
  (*(v67 + 8))(v97, v66, v67);
  v68 = v98;
  v69 = v99;
  sub_24A50A204(v97, v98);
  (v69[2])(v68, v69);
  v111 = v104;
  v112 = v105;
  v113 = v106;
  v107 = v100;
  v108 = v101;
  v109 = v102;
  v110 = v103;
  swift_beginAccess();
  sub_24A51C914(&v100, &v128);
  v70 = *&v63[v41];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = *&v63[v41];
  *&v63[v41] = 0x8000000000000000;
  sub_24A557AB0(&v137, v55, isUniquelyReferenced_nonNull_native);
  v72 = v91;
  v73 = v92 + 8;
  v91(v55, v45);
  *&v63[v41] = v128;
  swift_endAccess();
  sub_24A508C54(v97);
  v132 = v111;
  v133 = v112;
  v134 = v113;
  v128 = v107;
  v129 = v108;
  v130 = v109;
  v131 = v110;
  v135 = 772;
  v74 = ObjectType + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v136 = 3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v91 = v72;
    v92 = v73;
    v75 = *(v74 + 8);
    ObjectType = swift_getObjectType();
    v98 = type metadata accessor for FMFindingLocalizer();
    v99 = &off_285DA5430;
    v97[0] = v63;
    v76 = v29[3];
    v77 = v29[4];
    sub_24A50A204(v29, v76);
    v78 = *(v77 + 8);
    v79 = v63;
    v78(v94, v76, v77);
    v80 = v95;
    v81 = v96;
    sub_24A50A204(v94, v95);
    (*(v81 + 16))(v80, v81);
    (*(v75 + 8))(v97, &v128, v55, ObjectType, v75);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v100);

    sub_24A50D6A4(&v114, &qword_27EF4F650, &unk_24A633E00);

    v91(v55, v89);
    sub_24A508C54(v94);
    sub_24A508C54(v97);
  }

  else
  {

    sub_24A50D6A4(&v114, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v100);
  }
}

void sub_24A550F90(uint64_t a1, void *a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v31 = v4;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v32 = v3;
      v12 = sub_24A62E314();
      sub_24A506EB8(v12, qword_27EF5C118);
      v13 = sub_24A62E2F4();
      v14 = sub_24A62EF64();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMFindingLocalizer: Did not update range estimate so reset state", v15, 2u);
        MEMORY[0x24C21BBE0](v15, -1, -1);
      }

      v16 = a2[3];
      v17 = a2[4];
      v18 = sub_24A50A204(a2, v16);
      v19 = *(v17 + 8);
      v28[1] = v18;
      v29 = v19;
      v30 = v17;
      v19(v36, v16, v17);
      v21 = v37;
      v20 = v38;
      sub_24A50A204(v36, v37);
      (v20[2])(v21, v20);
      swift_beginAccess();
      v22 = sub_24A554CF0(v7, &v41);
      v31 = *(v31 + 8);
      (v31)(v7, v32, v22);
      v39[4] = *&v42[48];
      v39[5] = *&v42[64];
      v40 = *&v42[80];
      v39[0] = v41;
      v39[1] = *v42;
      v39[2] = *&v42[16];
      v39[3] = *&v42[32];
      sub_24A50D6A4(v39, &qword_27EF4F650, &unk_24A633E00);
      swift_endAccess();
      sub_24A508C54(v36);
      v41 = 0uLL;
      *v42 = 1;
      memset(&v42[8], 0, 74);
      v43 = 4;
      v23 = &v9[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 1);
        v28[0] = swift_getObjectType();
        v37 = type metadata accessor for FMFindingLocalizer();
        v38 = &off_285DA5430;
        v36[0] = v11;
        v25 = v11;
        v29(v33, v16, v30);
        v26 = v34;
        v27 = v35;
        sub_24A50A204(v33, v34);
        (*(v27 + 16))(v26, v27);
        (*(v24 + 16))(v36, &v41, 3, v7, v28[0], v24);

        swift_unknownObjectRelease();
        (v31)(v7, v32);
        sub_24A508C54(v33);
        sub_24A508C54(v36);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_24A55138C(void *a1, void *a2)
{
  v85 = a1;
  v4 = sub_24A62E214();
  v87 = *(v4 - 8);
  v5 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v82 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v82 = v8;
  v83 = v2;
  v13 = a2[3];
  v14 = a2[4];
  v15 = sub_24A50A204(a2, v13);
  v16 = *(v14 + 8);
  v89 = v15;
  v90 = v14;
  v84 = v13;
  v17 = (v14 + 8);
  v88 = v16;
  v16(&v122, v13, v14);
  v18 = *(&v123 + 1);
  v19 = v124;
  sub_24A50A204(&v122, *(&v123 + 1));
  (*(v19 + 16))(v18, v19);
  v20 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  swift_beginAccess();
  v21 = *&v12[v20];
  if (!*(v21 + 16))
  {
    goto LABEL_6;
  }

  v22 = *&v12[v20];

  v23 = sub_24A515AC8(v10);
  if ((v24 & 1) == 0)
  {

LABEL_6:
    v86 = *(v87 + 8);
    v86(v10, v4);
    v111 = 0uLL;
    *v112 = 1;
    memset(&v112[8], 0, 74);
    goto LABEL_7;
  }

  v25 = *(v21 + 56) + 104 * v23;
  v27 = *(v25 + 16);
  v26 = *(v25 + 32);
  v114 = *v25;
  v115 = v27;
  v116 = v26;
  v28 = *(v25 + 48);
  v29 = *(v25 + 64);
  v30 = *(v25 + 80);
  v120 = *(v25 + 96);
  v118 = v29;
  v119 = v30;
  v117 = v28;
  sub_24A51C914(&v114, &v131);
  v86 = *(v87 + 8);
  v86(v10, v4);

  *&v112[48] = v118;
  *&v112[64] = v119;
  *&v112[80] = v120;
  v111 = v114;
  *v112 = v115;
  *&v112[16] = v116;
  *&v112[32] = v117;
LABEL_7:
  v31 = v90;
  v32 = v88;
  v129[4] = *&v112[48];
  v129[5] = *&v112[64];
  v130 = *&v112[80];
  v129[0] = v111;
  v129[1] = *v112;
  v129[2] = *&v112[16];
  v129[3] = *&v112[32];
  sub_24A508C54(&v122);
  v32(&v114, v84, v31);
  v33 = *(&v115 + 1);
  v34 = v116;
  sub_24A50A204(&v114, *(&v115 + 1));
  (*(v34 + 24))(&v131, v33, v34);
  v36 = v131;
  v35 = v132;
  v37 = v133;
  v38 = v134;
  sub_24A508C54(&v114);
  if (v38 == 1)
  {
  }

  else
  {
    sub_24A55B284(v36, v35, v37, v38);
  }

  v39 = v82;
  v40 = v17;
  if (v85)
  {
    v41 = v4;
    if (*v112 == 1)
    {
      v42 = v85;
      v43 = v85;
      v44 = &v131;
      v45 = &v131;
      v46 = v129;
      v47 = 0.0;
      v48 = 1;
      v49 = v42;
      v50 = v38 == 1;
    }

    else
    {
      v51 = v112[81];
      sub_24A50D63C(&v111, &v114, &qword_27EF4F650, &unk_24A633E00);
      v52 = v85;
      v53 = v85;
      v44 = &v131;
      v45 = &v131;
      v46 = v129;
      v50 = v51 & 1;
      v47 = 0.0;
      v49 = v52;
      v48 = 1;
    }
  }

  else
  {
    v41 = v4;
    v50 = v38 == 1;
    if (*v112 == 1)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = *&v111;
    }

    v131 = 0;
    v132 = 0;
    v133 = 1;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    memset(v137, 0, sizeof(v137));
    v44 = v113;
    v45 = v113;
    v48 = (*v112 == 1) | BYTE8(v111) & 1;
    v46 = &v131;
    v49 = 0;
  }

  sub_24A51BBD0(v47, v48, v49, 0, v46, v50, v45);
  v54 = *(v44 + 97);
  v55 = v44[11];
  v56 = *(v44 + 96);
  v57 = v44[10];
  v58 = *(v44 + 74);
  v59 = *(v44 + 73);
  v60 = *(v44 + 72);
  v61 = v44[8];
  v62 = *(v44 + 57);
  v63 = *(v44 + 56);
  v64 = v44[6];
  v65 = *(v44 + 40);
  v66 = v44[4];
  v67 = *(v44 + 8);
  *&v97 = *v44;
  BYTE8(v97) = v67;
  v98 = *(v44 + 1);
  *&v99 = v66;
  BYTE8(v99) = v65;
  *&v100 = v64;
  BYTE8(v100) = v63;
  BYTE9(v100) = v62;
  *&v101 = v61;
  BYTE8(v101) = v60;
  BYTE9(v101) = v59;
  BYTE10(v101) = v58;
  *&v102 = v57;
  *(&v102 + 1) = v55;
  LOBYTE(v103) = v56;
  HIBYTE(v103) = v54;
  v128 = v103;
  v126 = v101;
  v127 = v102;
  v124 = v99;
  v125 = v100;
  v122 = v97;
  v123 = v98;
  v68 = v84;
  v88(v94, v84, v90);
  v85 = v40;
  v69 = v95;
  v70 = v96;
  sub_24A50A204(v94, v95);
  (v70[2])(v69, v70);
  v108 = v101;
  v109 = v102;
  v110 = v103;
  v104 = v97;
  v105 = v98;
  v106 = v99;
  v107 = v100;
  swift_beginAccess();
  sub_24A51C914(&v97, &v114);
  v71 = *&v12[v20];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v114 = *&v12[v20];
  *&v12[v20] = 0x8000000000000000;
  sub_24A557AB0(&v122, v39, isUniquelyReferenced_nonNull_native);
  v73 = v86;
  v74 = v87 + 8;
  v86(v39, v41);
  *&v12[v20] = v114;
  swift_endAccess();
  sub_24A508C54(v94);
  v118 = v108;
  v119 = v109;
  v120 = v110;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v117 = v107;
  v75 = v83 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v121 = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v86 = v73;
    v87 = v74;
    v76 = *(v75 + 8);
    v77 = v68;
    ObjectType = swift_getObjectType();
    v95 = type metadata accessor for FMFindingLocalizer();
    v96 = &off_285DA5430;
    v94[0] = v12;
    v79 = v12;
    v88(v91, v77, v90);
    v80 = v92;
    v81 = v93;
    sub_24A50A204(v91, v92);
    (*(v81 + 16))(v80, v81);
    (*(v76 + 16))(v94, &v114, 3, v39, ObjectType, v76);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v97);

    sub_24A50D6A4(&v111, &qword_27EF4F650, &unk_24A633E00);
    v86(v39, v41);
    sub_24A508C54(v91);
    sub_24A508C54(v94);
  }

  else
  {
    sub_24A50D6A4(&v111, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v97);
  }
}

void sub_24A551B14(void *a1, void *a2)
{
  v5 = sub_24A62E214();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v62 = a1;
  v63 = v2;
  v64 = v9;
  v14 = a2[3];
  v15 = a2[4];
  v16 = sub_24A50A204(a2, v14);
  v17 = v15[1];
  v68 = v16;
  v69 = v15 + 1;
  v70 = v14;
  v18 = v15;
  v65 = v17;
  v17(&v113, v14, v15);
  v19 = *(&v114 + 1);
  v20 = v115;
  sub_24A50A204(&v113, *(&v114 + 1));
  (*(v20 + 16))(v19, v20);
  v21 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  swift_beginAccess();
  v22 = *&v13[v21];
  if (!*(v22 + 16))
  {
    goto LABEL_6;
  }

  v23 = *&v13[v21];

  v24 = sub_24A515AC8(v11);
  if ((v25 & 1) == 0)
  {

LABEL_6:
    v66 = *(v67 + 8);
    v66(v11, v5);
    v91 = 0uLL;
    *v92 = 1;
    memset(&v92[8], 0, 74);
    goto LABEL_7;
  }

  v26 = *(v22 + 56) + 104 * v24;
  v28 = *(v26 + 16);
  v27 = *(v26 + 32);
  v105 = *v26;
  v106 = v28;
  v107 = v27;
  v29 = *(v26 + 48);
  v30 = *(v26 + 64);
  v31 = *(v26 + 80);
  v111 = *(v26 + 96);
  v109 = v30;
  v110 = v31;
  v108 = v29;
  sub_24A51C914(&v105, v120);
  v66 = *(v67 + 8);
  v66(v11, v5);

  *&v92[48] = v109;
  *&v92[64] = v110;
  *&v92[80] = v111;
  v91 = v105;
  *v92 = v106;
  *&v92[16] = v107;
  *&v92[32] = v108;
LABEL_7:
  v32 = v70;
  v33 = v65;
  v120[4] = *&v92[48];
  v120[5] = *&v92[64];
  v121 = *&v92[80];
  v120[0] = v91;
  v120[1] = *v92;
  v120[2] = *&v92[16];
  v120[3] = *&v92[32];
  sub_24A508C54(&v113);
  v33(&v105, v32, v18);
  v34 = *(&v106 + 1);
  v35 = v107;
  sub_24A50A204(&v105, *(&v106 + 1));
  (*(v35 + 24))(&v113, v34, v35);
  v36 = v113;
  v37 = v114;
  v38 = BYTE8(v114);
  sub_24A508C54(&v105);
  if (v38 == 1)
  {
  }

  else
  {
    sub_24A55B284(v36, *(&v36 + 1), v37, v38);
  }

  v39 = v64;
  v40 = v18;
  if (*v92 == 1)
  {
    v41 = v62;
    v42 = v62;
    v43 = v41;
    v44 = v38 == 1;
  }

  else
  {
    v45 = v92[81];
    sub_24A50D63C(&v91, &v105, &qword_27EF4F650, &unk_24A633E00);
    v46 = v62;
    v47 = v62;
    v44 = v45 & 1;
    v43 = v46;
  }

  sub_24A51BBD0(0.0, 1, 0, v43, v120, v44, &v93);
  *&v77 = v93;
  BYTE8(v77) = v94;
  v78 = v95;
  *&v79 = v96;
  BYTE8(v79) = v97;
  *&v80 = v98;
  WORD4(v80) = v99;
  *&v81 = v100;
  WORD4(v81) = v101;
  BYTE10(v81) = v102;
  v82 = v103;
  v83 = v104;
  v119 = v104;
  v117 = v81;
  v118 = v103;
  v115 = v79;
  v116 = v80;
  v113 = v77;
  v114 = v95;
  v48 = v65;
  v65(v74, v70, v40);
  v62 = v40;
  v49 = v75;
  v50 = v76;
  sub_24A50A204(v74, v75);
  (v50[2])(v49, v50);
  v88 = v81;
  v89 = v82;
  v90 = v83;
  v84 = v77;
  v85 = v78;
  v86 = v79;
  v87 = v80;
  swift_beginAccess();
  sub_24A51C914(&v77, &v105);
  v51 = *&v13[v21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v105 = *&v13[v21];
  *&v13[v21] = 0x8000000000000000;
  sub_24A557AB0(&v113, v39, isUniquelyReferenced_nonNull_native);
  v53 = v66;
  v54 = v67 + 8;
  v66(v39, v5);
  *&v13[v21] = v105;
  swift_endAccess();
  sub_24A508C54(v74);
  v109 = v88;
  v110 = v89;
  v111 = v90;
  v105 = v84;
  v106 = v85;
  v107 = v86;
  v108 = v87;
  v55 = v63 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v112 = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v53;
    v67 = v54;
    v56 = *(v55 + 8);
    v57 = v39;
    ObjectType = swift_getObjectType();
    v75 = type metadata accessor for FMFindingLocalizer();
    v76 = &off_285DA5430;
    v74[0] = v13;
    v59 = v13;
    v48(v71, v70, v62);
    v60 = v72;
    v61 = v73;
    sub_24A50A204(v71, v72);
    (*(v61 + 16))(v60, v61);
    (*(v56 + 16))(v74, &v105, 3, v57, ObjectType, v56);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v77);

    sub_24A50D6A4(&v91, &qword_27EF4F650, &unk_24A633E00);
    v66(v57, v5);
    sub_24A508C54(v71);
    sub_24A508C54(v74);
  }

  else
  {
    sub_24A50D6A4(&v91, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v77);
  }
}

uint64_t sub_24A552288(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  v8 = v7;
  v197 = a6;
  ObjectType = a5;
  v182 = a3;
  v195 = *&a1;
  v12 = sub_24A62E214();
  v193 = *(v12 - 8);
  v194 = v12;
  v13 = *(v193 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v192 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v191 = &v175 - v16;
  v17 = sub_24A62EB14();
  v189 = *(v17 - 8);
  v18 = *(v189 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  *&v187 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v188 = &v175 - v21;
  v185 = sub_24A62EA94();
  v22 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v186 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FindingEstimate(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v175 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v175 - v36;
  result = swift_unknownObjectWeakLoadStrong();
  v196 = result;
  if (!result)
  {
    return result;
  }

  v180 = v17;
  v190 = a2;
  v183 = a4;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v39 = sub_24A62E314();
  sub_24A506EB8(v39, qword_27EF5C118);
  v40 = sub_24A62E2F4();
  v41 = sub_24A62EF34();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v8;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_24A503000, v40, v41, "🧭 FMFindingLocalizer: Did update estimates", v43, 2u);
    v44 = v43;
    v8 = v42;
    MEMORY[0x24C21BBE0](v44, -1, -1);
  }

  v181 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType;
  v45 = *&v196[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType];
  v184 = v8;
  if ((v45 & 0x6000) == 0)
  {
    v46 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
    v176 = *(*(v46 - 8) + 56);
    v176(v37, 1, 1, v46);
    if ((v190 & 0x100000000) != 0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = *&v190;
    }

    v48 = *&v182;
    if ((v182 & 0x100000000) != 0)
    {
      v48 = 0.0;
    }

    v177 = v47;
    v178 = v48;
    if ((*&v195 & 0x100000000) == 0)
    {
      v49 = [objc_opt_self() meters];
      sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
      sub_24A62DFC4();
      sub_24A50D6A4(v37, &unk_27EF4FE20, &qword_24A634BA0);
      v176(v35, 0, 1, v46);
      v8 = v184;
      sub_24A55B7E0(v35, v37, &unk_27EF4FE20, &qword_24A634BA0);
    }

    v50 = v8 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v50 + 8);
      *(&v249 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v250 = &off_285DA5430;
      v52 = v196;
      *&v248 = v196;
      sub_24A50D63C(v37, v32, &unk_27EF4FE20, &qword_24A634BA0);
      if (ObjectType == 2)
      {
        v53 = 2;
      }

      else
      {
        v53 = ObjectType == 1;
      }

      ObjectType = swift_getObjectType();
      *v27 = v177;
      *(v27 + 8) = BYTE4(v190) & 1;
      sub_24A55B7E0(v32, v27 + v24[5], &unk_27EF4FE20, &qword_24A634BA0);
      *(v27 + v24[6]) = v53;
      *(v27 + v24[7]) = v183;
      v54 = v27 + v24[8];
      *v54 = v178;
      v54[8] = BYTE4(v182) & 1;
      v55 = *(v51 + 40);
      v56 = v52;
      v55(&v248, v27, ObjectType, v51);
      v8 = v184;
      swift_unknownObjectRelease();
      sub_24A55B484(v27, type metadata accessor for FindingEstimate);
      sub_24A50D6A4(v37, &unk_27EF4FE20, &qword_24A634BA0);
      sub_24A508C54(&v248);
    }

    else
    {
      sub_24A50D6A4(v37, &unk_27EF4FE20, &qword_24A634BA0);
    }
  }

  v57 = OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem;
  if (*(v8 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem))
  {
    v58 = *(v8 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem);

    sub_24A62EB34();
  }

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24A508AE4(v197, &v210);
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  sub_24A508CA0(&v210, v60 + 24);
  *&v250 = sub_24A55B478;
  *(&v250 + 1) = v60;
  *&v248 = MEMORY[0x277D85DD0];
  *(&v248 + 1) = 1107296256;
  *&v249 = sub_24A5A8458;
  *(&v249 + 1) = &unk_285DA5528;
  _Block_copy(&v248);
  *&v204 = MEMORY[0x277D84F90];
  sub_24A55B628(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  v61 = sub_24A62EB44();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = sub_24A62EB24();

  v65 = *(v8 + v57);
  *(v8 + v57) = v64;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v66 = sub_24A62F014();
  v67 = v187;
  sub_24A62EB04();
  v68 = v188;
  sub_24A62EB54();
  v69 = *(v189 + 8);
  v70 = v67;
  v71 = v180;
  v69(*&v70, v180);
  v189 = v64;
  sub_24A62EFE4();

  v69(v68, v71);
  v72 = 0.0;
  if ((*&v195 & 0x100000000) == 0)
  {
    v73 = *&v195;
    if (*&v195 < 0.0)
    {
      v73 = 0.0;
    }

    v72 = v73;
  }

  v74 = v197[3];
  v75 = v197[4];
  sub_24A50A204(v197, v74);
  (*(v75 + 8))(&v204, v74, v75);
  v76 = *(&v205 + 1);
  v77 = v206;
  sub_24A50A204(&v204, *(&v205 + 1));
  v78 = v191;
  (*(v77 + 16))(v76, v77);
  v79 = &v196[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID];
  swift_beginAccess();
  v80 = *v79;
  if (*(*v79 + 16))
  {
    v81 = *v79;

    v82 = sub_24A515AC8(v78);
    if (v83)
    {
      v84 = *(v80 + 56) + 104 * v82;
      v86 = *(v84 + 16);
      v85 = *(v84 + 32);
      v248 = *v84;
      v249 = v86;
      v250 = v85;
      v87 = *(v84 + 48);
      v88 = *(v84 + 64);
      v89 = *(v84 + 80);
      LOWORD(v253[1]) = *(v84 + 96);
      v252 = v88;
      v253[0] = v89;
      v251 = v87;
      sub_24A51C914(&v248, &v210);
      v191 = *(v193 + 8);
      (v191)(v78, v194);

      *&v231[48] = v252;
      *&v231[64] = v253[0];
      *&v231[80] = v253[1];
      v230 = v248;
      *v231 = v249;
      *&v231[16] = v250;
      *&v231[32] = v251;
      goto LABEL_32;
    }

    v191 = *(v193 + 8);
    (v191)(v78, v194);
    v230 = 0uLL;
    *v231 = 1;
  }

  else
  {
    v191 = *(v193 + 8);
    (v191)(v78, v194);
    v230 = 0uLL;
    *v231 = 1;
  }

  memset(&v231[8], 0, 74);
LABEL_32:
  sub_24A508C54(&v204);
  v90 = v197[3];
  v91 = v197[4];
  sub_24A50A204(v197, v90);
  (*(v91 + 8))(&v248, v90, v91);
  v92 = *(&v249 + 1);
  v93 = v250;
  sub_24A50A204(&v248, *(&v249 + 1));
  (*(v93 + 24))(&v210, v92, v93);
  v94 = v210;
  v95 = v211;
  v96 = BYTE8(v211);
  sub_24A508C54(&v248);
  v97 = v96 == 1;
  if (v96 == 1)
  {
  }

  else
  {
    sub_24A55B284(v94, *(&v94 + 1), v95, v96);
  }

  v98 = v190;
  if ((*&v195 & 0x100000000) != 0)
  {
    if ((v190 & 0x100000000) != 0)
    {
      v102 = 1.79769313e308;
    }

    else
    {
      v102 = *&v190 / 3.14159265 * -180.0;
    }

    v107 = 0;
    v112 = (v190 & 0x100000000) == 0;
    v115 = fabs(v102);
    v106 = 1;
    if (v183 == 2)
    {
      v108 = 1;
    }

    else
    {
      v108 = 0;
      if (v183 == 5)
      {
LABEL_52:
        v72 = 0.0;
        v109 = 0;
        v103 = 0;
        v111 = 22.0;
        v110 = v115 <= 22.0;
        v113 = 0uLL;
        v99 = 0.0;
        v114 = 1;
        v105 = 0;
        v104 = 1;
        goto LABEL_67;
      }

      v106 = v183;
      v108 = v183 == 4;
      v107 = 1;
      if (v183 == 1)
      {
        v107 = v183 == 4;
        goto LABEL_52;
      }

      if (v183 != 3)
      {
        v107 = v183 == 4;
      }
    }

    v106 = v183 == 0;
    goto LABEL_52;
  }

  if (*v231 != 1)
  {
    v256 = v230;
    v257 = *v231;
    v259 = *&v231[24];
    v260 = *&v231[40];
    v261[0] = *&v231[56];
    *(v261 + 10) = *&v231[66];
    v258 = *&v231[8];
    v248 = v230;
    v249 = *v231;
    LOWORD(v253[1]) = *&v231[80];
    v252 = *&v231[48];
    v253[0] = *&v231[64];
    v250 = *&v231[16];
    v251 = *&v231[32];
    sub_24A51C914(&v248, &v210);
    sub_24A51ACB4(*&v72, 0, v98 | ((HIDWORD(v98) & 1) << 32), v183, &v232);
    sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);
    v97 = v247;
    v103 = v245;
    v104 = v246;
    v105 = v244;
    v106 = v243;
    v107 = v242;
    v108 = v241;
    v99 = v240;
    v109 = v239;
    v110 = v238;
    v111 = v237;
    v112 = v236;
    v102 = v235;
    v113 = v234;
    v72 = v232;
    v114 = v233;
    goto LABEL_67;
  }

  v99 = v72;
  v100 = (v72 + -1.0) / 9.0;
  v101 = fmin(v100, 1.0);
  if (v100 < 0.0)
  {
    v101 = 0.0;
  }

  if ((v190 & 0x100000000) != 0)
  {
    v102 = 1.79769313e308;
  }

  else
  {
    v102 = *&v190 / 3.14159265 * -180.0;
  }

  v116 = v101 * 45.0 + (1.0 - v101) * 20.0;
  v117 = 1.1;
  if (v96 == 1)
  {
    v118 = 1.9842;
    v119 = v183;
  }

  else
  {
    v119 = v183;
    if (qword_27EF4EA98 != -1)
    {
      v195 = v72;
      v187 = v101 * 45.0 + (1.0 - v101) * 20.0;
      *&v188 = 1.1;
      swift_once();
      v116 = v187;
      v117 = *&v188;
      v99 = v195;
    }

    v118 = *&qword_27EF5C770;
  }

  v107 = 0;
  v111 = v116 * v117;
  v112 = (v98 & 0x100000000) == 0;
  v120 = v99;
  v109 = v118 > v120;
  v121 = fabs(v102);
  v106 = 1;
  if (v119 == 2)
  {
    v108 = 1;
LABEL_65:
    v106 = v119 == 0;
    goto LABEL_66;
  }

  v108 = 0;
  if (v119 != 5)
  {
    v106 = v119;
    v108 = v119 == 4;
    v107 = 1;
    if (v119 == 1)
    {
      v107 = v119 == 4;
      goto LABEL_66;
    }

    if (v119 != 3)
    {
      v107 = v119 == 4;
    }

    goto LABEL_65;
  }

LABEL_66:
  v114 = 0;
  v103 = 0;
  v110 = v121 <= v111;
  v113 = 0uLL;
  v104 = 1;
  v105 = 0;
LABEL_67:
  *&v216 = v72;
  BYTE8(v216) = v114;
  v217 = v113;
  *&v218 = v102;
  BYTE8(v218) = v112;
  *&v219 = v111;
  BYTE8(v219) = v110;
  BYTE9(v219) = v109;
  *&v220 = v99;
  BYTE8(v220) = v108;
  BYTE9(v220) = v107;
  BYTE10(v220) = v106;
  *&v221 = v105;
  *(&v221 + 1) = v103;
  LOBYTE(v222) = v104;
  HIBYTE(v222) = v97;
  v254[0] = v216;
  v254[1] = v113;
  v255 = v222;
  v254[4] = v220;
  v254[5] = v221;
  v254[2] = v218;
  v254[3] = v219;
  v122 = v197[3];
  v123 = v197[4];
  sub_24A50A204(v197, v122);
  (*(v123 + 8))(&v210, v122, v123);
  v124 = *(&v211 + 1);
  v125 = v212;
  sub_24A50A204(&v210, *(&v211 + 1));
  v126 = v192;
  (*(v125 + 16))(v124, v125);
  v226 = v219;
  v227 = v220;
  v228 = v221;
  v229 = v222;
  v223 = v216;
  v224 = v217;
  v225 = v218;
  swift_beginAccess();
  sub_24A51C914(&v216, &v248);
  sub_24A51C914(&v216, &v248);
  v127 = *v79;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v248 = *v79;
  *v79 = 0x8000000000000000;
  sub_24A557AB0(v254, v126, isUniquelyReferenced_nonNull_native);
  *&v195 = v193 + 8;
  (v191)(v126, v194);
  *v79 = v248;
  swift_endAccess();
  sub_24A508C54(&v210);
  v129 = v196;
  v130 = v181;
  v131 = *&v196[v181];
  v132 = (v131 >> 13) & 3;
  v133 = v184;
  if (!v132)
  {
    goto LABEL_75;
  }

  if (v132 != 1)
  {
    if ((v131 & 0x8100) == 0x100)
    {
      goto LABEL_70;
    }

LABEL_75:
    sub_24A51C94C(&v216);
    if ((*(v129 + v130) & 0x6000) != 0x2000)
    {
      v155 = v133 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v156 = *(v155 + 8);
        v193 = swift_getObjectType();
        *(&v211 + 1) = type metadata accessor for FMFindingLocalizer();
        *&v212 = &off_285DA5430;
        *&v210 = v129;
        v252 = v227;
        v253[0] = v228;
        LOWORD(v253[1]) = v229;
        v248 = v223;
        v249 = v224;
        v250 = v225;
        v251 = v226;
        BYTE2(v253[1]) = 4;
        v157 = v197[3];
        v158 = v197[4];
        sub_24A50A204(v197, v157);
        v159 = v129;
        v160 = *(v158 + 8);
        v161 = v159;
        v160(&v204, v157, v158);
        v162 = *(&v205 + 1);
        v163 = v206;
        sub_24A50A204(&v204, *(&v205 + 1));
        v164 = v192;
        (*(v163 + 16))(v162, v163);
        (*(v156 + 16))(&v210, &v248, 3, v164, v193, v156);
        swift_unknownObjectRelease();
        sub_24A51C94C(&v216);
        sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);

        (v191)(v164, v194);
        sub_24A508C54(&v204);
        return sub_24A508C54(&v210);
      }

      else
      {

        sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);

        return sub_24A51C94C(&v216);
      }
    }

    v153 = *(v129 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 98);
    if (v153 <= 1)
    {
      *&v210 = a7;
      if (v153)
      {
        v154 = 769;
      }

      else
      {
        v154 = 768;
      }
    }

    else
    {
      if (v153 != 2 && v153 != 3)
      {
        v214 = 0u;
        *v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v215[20] = 0;
        *&v215[16] = 0x4000000;
        goto LABEL_89;
      }

      *&v210 = a7;
      v154 = 770;
    }

    *&v215[18] = v154;
    v215[20] = 3;
LABEL_89:
    v252 = v214;
    v253[0] = *v215;
    *(v253 + 13) = *&v215[13];
    v248 = v210;
    v249 = v211;
    v165 = v133 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    v250 = v212;
    v251 = v213;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v166 = *(v165 + 8);
      v167 = swift_getObjectType();
      *(&v205 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v206 = &off_285DA5430;
      *&v204 = v129;
      v168 = v197[3];
      v169 = v197[4];
      sub_24A50A204(v197, v168);
      v170 = *(v169 + 8);
      v171 = v129;
      v170(v201, v168, v169);
      v172 = v202;
      v173 = v203;
      sub_24A50A204(v201, v202);
      v174 = v192;
      (v173[2])(v172, v173);
      (*(v166 + 8))(&v204, &v248, v174, v167, v166);
      swift_unknownObjectRelease();
      sub_24A517ABC(&v210);
      sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);

      sub_24A51C94C(&v216);

      (v191)(v174, v194);
      sub_24A508C54(v201);
      return sub_24A508C54(&v204);
    }

    else
    {
      sub_24A51C94C(&v216);

      sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);

      return sub_24A517ABC(&v210);
    }
  }

  v134 = sub_24A62DF44();
  *(&v249 + 1) = v134;
  *&v250 = sub_24A55B628(&qword_27EF4FE90, MEMORY[0x277D08A28]);
  v135 = sub_24A5292E8(&v248);
  (*(*(v134 - 8) + 104))(v135, *MEMORY[0x277D089D0], v134);
  LOBYTE(v134) = MEMORY[0x24C219850](&v248);
  sub_24A508C54(&v248);
  if ((v134 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_70:
  v136 = v129 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement;
  v137 = *(v129 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 98);
  if (v137 >= 4)
  {
    v214 = v227;
    *v215 = v228;
    *&v215[16] = v229;
    v210 = v223;
    v211 = v224;
    v212 = v225;
    v213 = v226;
  }

  else
  {
    sub_24A51C94C(&v216);
    *&v210 = a7;
  }

  v215[18] = v137;
  v252 = v214;
  v253[0] = *v215;
  v248 = v210;
  v249 = v211;
  v250 = v212;
  v251 = v213;
  *(v253 + 15) = *&v215[15];
  v139 = *(v136 + 1);
  v138 = *(v136 + 2);
  v204 = *v136;
  v205 = v139;
  v206 = v138;
  v141 = *(v136 + 4);
  v140 = *(v136 + 5);
  v142 = *(v136 + 3);
  *(v209 + 15) = *(v136 + 95);
  v208 = v141;
  v209[0] = v140;
  v207 = v142;
  memmove(v136, &v210, 0x63uLL);
  sub_24A55B388(&v210, v201);
  sub_24A55B3E4(&v204);
  v143 = v133 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v144 = *(v143 + 8);
    v145 = swift_getObjectType();
    v202 = type metadata accessor for FMFindingLocalizer();
    v203 = &off_285DA5430;
    v201[0] = v129;
    v146 = v197[3];
    v147 = v197[4];
    sub_24A50A204(v197, v146);
    v148 = *(v147 + 8);
    v149 = v129;
    v148(v198, v146, v147);
    v150 = v199;
    v151 = v200;
    sub_24A50A204(v198, v199);
    v152 = v192;
    (*(v151 + 16))(v150, v151);
    (*(v144 + 16))(v201, &v248, 3, v152, v145, v144);
    swift_unknownObjectRelease();
    sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);
    sub_24A55B3E4(&v210);

    sub_24A51C94C(&v216);

    (v191)(v152, v194);
    sub_24A508C54(v198);
    return sub_24A508C54(v201);
  }

  else
  {
    sub_24A51C94C(&v216);

    sub_24A50D6A4(&v230, &qword_27EF4F650, &unk_24A633E00);

    return sub_24A55B3E4(&v210);
  }
}