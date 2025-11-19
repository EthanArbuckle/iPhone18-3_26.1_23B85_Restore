uint64_t *sub_25B90BE08()
{
  v318 = sub_25B8994FC;
  v319 = sub_25B88B668;
  v320 = sub_25B909308;
  v321 = sub_25B90EC3C;
  v322 = sub_25B88B5F4;
  v323 = sub_25B88B5F4;
  v324 = sub_25B88B6B4;
  v325 = sub_25B88B5F4;
  v326 = sub_25B88B5F4;
  v327 = sub_25B90EC88;
  v328 = sub_25B8994FC;
  v329 = sub_25B88B668;
  v330 = sub_25B909308;
  v331 = sub_25B90EC3C;
  v332 = sub_25B8A3B24;
  v333 = sub_25B8A3C9C;
  v334 = sub_25B8A3CE8;
  v335 = sub_25B88B5F4;
  v336 = sub_25B88B5F4;
  v337 = sub_25B88B6B4;
  v338 = sub_25B88B5F4;
  v339 = sub_25B88B5F4;
  v340 = sub_25B90EC88;
  v341 = sub_25B88B5F4;
  v342 = sub_25B88B5F4;
  v343 = sub_25B8A3EB8;
  v375 = 0;
  v351 = __b;
  v353 = 40;
  memset(__b, 0, sizeof(__b));
  v369 = 0;
  v370 = 0;
  v368 = 0;
  v367 = 0;
  v366 = 0;
  v344 = sub_25B946C48();
  v345 = *(v344 - 8);
  v346 = v344 - 8;
  v347 = (v345[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v344);
  v348 = &v70 - v347;
  v349 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v70 - v347);
  v350 = &v70 - v349;
  v375 = v0;
  sub_25B908274();
  v352 = &v376;
  sub_25B946EB8();
  v2 = v354;
  memcpy(v351, v352, v353);
  for (i = v2; ; i = v216)
  {
    v313 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A8, &qword_25B94C768);
    sub_25B946EF8();
    v314 = v371;
    v315 = v372;
    v316 = v373;
    if (!v372)
    {
      break;
    }

    v310 = v314;
    v311 = v315;
    v312 = v316;
    v290 = v316;
    v289 = v315;
    v288 = v314;
    v369 = v314;
    v370 = v315;
    v368 = v316;
    v286 = v345[2];
    v287 = v345 + 2;
    v286(v350, v317 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v344);
    sub_25B946ED8();
    v295 = 32;
    v296 = 7;
    v3 = swift_allocObject();
    v4 = v289;
    v291 = v3;
    *(v3 + 16) = v288;
    *(v3 + 24) = v4;
    v297 = swift_allocObject();
    *(v297 + 16) = v290;
    v308 = sub_25B946C18();
    v309 = sub_25B947448();
    v293 = 17;
    v299 = swift_allocObject();
    *(v299 + 16) = 32;
    v300 = swift_allocObject();
    v294 = 8;
    *(v300 + 16) = 8;
    v5 = swift_allocObject();
    v6 = v291;
    v292 = v5;
    *(v5 + 16) = v318;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v292;
    v301 = v7;
    *(v7 + 16) = v319;
    *(v7 + 24) = v8;
    v302 = swift_allocObject();
    *(v302 + 16) = 0;
    v303 = swift_allocObject();
    *(v303 + 16) = v294;
    v9 = swift_allocObject();
    v10 = v297;
    v298 = v9;
    *(v9 + 16) = v320;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v298;
    v305 = v11;
    *(v11 + 16) = v321;
    *(v11 + 24) = v12;
    v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v304 = sub_25B947838();
    v306 = v13;

    v14 = v299;
    v15 = v306;
    *v306 = v322;
    v15[1] = v14;

    v16 = v300;
    v17 = v306;
    v306[2] = v323;
    v17[3] = v16;

    v18 = v301;
    v19 = v306;
    v306[4] = v324;
    v19[5] = v18;

    v20 = v302;
    v21 = v306;
    v306[6] = v325;
    v21[7] = v20;

    v22 = v303;
    v23 = v306;
    v306[8] = v326;
    v23[9] = v22;

    v24 = v305;
    v25 = v306;
    v306[10] = v327;
    v25[11] = v24;
    sub_25B8860FC();

    if (os_log_type_enabled(v308, v309))
    {
      v272 = sub_25B9474D8();
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v273 = sub_25B8895FC(0);
      v274 = sub_25B8895FC(1);
      v276 = &v360;
      v360 = v272;
      v277 = &v359;
      v359 = v273;
      v278 = &v358;
      v358 = v274;
      v275 = 2;
      sub_25B889650(2, &v360);
      sub_25B889650(v275, v276);
      v26 = v313;
      v356 = v322;
      v357 = v299;
      sub_25B889664(&v356, v276, v277, v278);
      v279 = v26;
      v280 = v299;
      v281 = v300;
      v282 = v301;
      v283 = v302;
      v284 = v303;
      v285 = v305;
      if (v26)
      {
        v264 = v280;
        v265 = v281;
        v266 = v282;
        v267 = v283;
        v268 = v284;
        v269 = v285;
        v228 = v285;
        v227 = v284;
        v226 = v283;
        v225 = v282;
        v224 = v281;

        __break(1u);
      }

      else
      {
        v356 = v323;
        v357 = v300;
        sub_25B889664(&v356, &v360, &v359, &v358);
        v257 = 0;
        v258 = v299;
        v259 = v300;
        v260 = v301;
        v261 = v302;
        v262 = v303;
        v263 = v305;
        v356 = v324;
        v357 = v301;
        sub_25B889664(&v356, &v360, &v359, &v358);
        v250 = 0;
        v251 = v299;
        v252 = v300;
        v253 = v301;
        v254 = v302;
        v255 = v303;
        v256 = v305;
        v356 = v325;
        v357 = v302;
        sub_25B889664(&v356, &v360, &v359, &v358);
        v243 = 0;
        v244 = v299;
        v245 = v300;
        v246 = v301;
        v247 = v302;
        v248 = v303;
        v249 = v305;
        v356 = v326;
        v357 = v303;
        sub_25B889664(&v356, &v360, &v359, &v358);
        v236 = 0;
        v237 = v299;
        v238 = v300;
        v239 = v301;
        v240 = v302;
        v241 = v303;
        v242 = v305;
        v356 = v327;
        v357 = v305;
        sub_25B889664(&v356, &v360, &v359, &v358);
        v229 = 0;
        v230 = v299;
        v231 = v300;
        v232 = v301;
        v233 = v302;
        v234 = v303;
        v235 = v305;
        _os_log_impl(&dword_25B859000, v308, v309, "Restoring sysctl %s = %ld", v272, 0x16u);
        sub_25B8896B0(v273);
        sub_25B8896B0(v274);
        sub_25B9474B8();

        v270 = v229;
      }
    }

    else
    {

      v270 = v313;
    }

    v221 = v270;
    MEMORY[0x277D82BD8](v308);
    v218 = v345[1];
    v219 = v345 + 1;
    v218(v350, v344);
    v220 = &v367;
    v367 = v290;
    type metadata accessor for Sysctl();
    v27 = v221;
    static Sysctl.setSysctl<A>(_:newValue:)(v288, v289, v220, MEMORY[0x277D83B88]);
    v222 = v27;
    v223 = v27;
    if (v27)
    {
      v29 = v348;
      v191 = v223;
      v189 = 0;
      v30 = v223;
      v366 = v191;
      v286(v29, v317 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v344);
      sub_25B946ED8();
      v199 = 32;
      v200 = 7;
      v31 = swift_allocObject();
      v32 = v289;
      v192 = v31;
      *(v31 + 16) = v288;
      *(v31 + 24) = v32;
      v190 = 24;
      v33 = swift_allocObject();
      v34 = v191;
      v194 = v33;
      *(v33 + 16) = v290;
      v35 = v34;
      v198 = swift_allocObject();
      *(v198 + 16) = v191;
      sub_25B8A1C38();

      v214 = sub_25B946C18();
      v215 = sub_25B947458();
      v196 = 17;
      v203 = swift_allocObject();
      *(v203 + 16) = 32;
      v204 = swift_allocObject();
      v197 = 8;
      *(v204 + 16) = 8;
      v36 = swift_allocObject();
      v37 = v192;
      v193 = v36;
      *(v36 + 16) = v328;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v193;
      v205 = v38;
      *(v38 + 16) = v329;
      *(v38 + 24) = v39;
      v206 = swift_allocObject();
      *(v206 + 16) = 0;
      v207 = swift_allocObject();
      *(v207 + 16) = v197;
      v40 = swift_allocObject();
      v41 = v194;
      v195 = v40;
      *(v40 + 16) = v330;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v195;
      v208 = v42;
      *(v42 + 16) = v331;
      *(v42 + 24) = v43;
      v209 = swift_allocObject();
      *(v209 + 16) = 64;
      v210 = swift_allocObject();
      *(v210 + 16) = v197;
      v44 = swift_allocObject();
      v45 = v198;
      v201 = v44;
      *(v44 + 16) = v332;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v201;
      v202 = v46;
      *(v46 + 16) = v333;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v202;
      v212 = v48;
      *(v48 + 16) = v334;
      *(v48 + 24) = v49;
      v211 = sub_25B947838();
      v213 = v50;

      v51 = v203;
      v52 = v213;
      *v213 = v335;
      v52[1] = v51;

      v53 = v204;
      v54 = v213;
      v213[2] = v336;
      v54[3] = v53;

      v55 = v205;
      v56 = v213;
      v213[4] = v337;
      v56[5] = v55;

      v57 = v206;
      v58 = v213;
      v213[6] = v338;
      v58[7] = v57;

      v59 = v207;
      v60 = v213;
      v213[8] = v339;
      v60[9] = v59;

      v61 = v208;
      v62 = v213;
      v213[10] = v340;
      v62[11] = v61;

      v63 = v209;
      v64 = v213;
      v213[12] = v341;
      v64[13] = v63;

      v65 = v210;
      v66 = v213;
      v213[14] = v342;
      v66[15] = v65;

      v67 = v212;
      v68 = v213;
      v213[16] = v343;
      v68[17] = v67;
      sub_25B8860FC();

      if (os_log_type_enabled(v214, v215))
      {
        v173 = sub_25B9474D8();
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v172 = 1;
        v174 = sub_25B8895FC(1);
        v175 = sub_25B8895FC(v172);
        v176 = &v365;
        v365 = v173;
        v177 = &v364;
        v364 = v174;
        v178 = &v363;
        v363 = v175;
        sub_25B889650(2, &v365);
        sub_25B889650(3, v176);
        v69 = v189;
        v361 = v335;
        v362 = v203;
        sub_25B889664(&v361, v176, v177, v178);
        v179 = v69;
        v180 = v203;
        v181 = v204;
        v182 = v205;
        v183 = v206;
        v184 = v207;
        v185 = v208;
        v186 = v209;
        v187 = v210;
        v188 = v212;
        if (v69)
        {
          v161 = v180;
          v162 = v181;
          v163 = v182;
          v164 = v183;
          v165 = v184;
          v166 = v185;
          v167 = v186;
          v168 = v187;
          v169 = v188;
          v79 = v188;
          v78 = v187;
          v77 = v186;
          v76 = v185;
          v75 = v184;
          v74 = v183;
          v73 = v182;
          v72 = v181;

          __break(1u);
        }

        else
        {
          v361 = v336;
          v362 = v204;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v151 = 0;
          v152 = v203;
          v153 = v204;
          v154 = v205;
          v155 = v206;
          v156 = v207;
          v157 = v208;
          v158 = v209;
          v159 = v210;
          v160 = v212;
          v361 = v337;
          v362 = v205;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v141 = 0;
          v142 = v203;
          v143 = v204;
          v144 = v205;
          v145 = v206;
          v146 = v207;
          v147 = v208;
          v148 = v209;
          v149 = v210;
          v150 = v212;
          v361 = v338;
          v362 = v206;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v131 = 0;
          v132 = v203;
          v133 = v204;
          v134 = v205;
          v135 = v206;
          v136 = v207;
          v137 = v208;
          v138 = v209;
          v139 = v210;
          v140 = v212;
          v361 = v339;
          v362 = v207;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v121 = 0;
          v122 = v203;
          v123 = v204;
          v124 = v205;
          v125 = v206;
          v126 = v207;
          v127 = v208;
          v128 = v209;
          v129 = v210;
          v130 = v212;
          v361 = v340;
          v362 = v208;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v111 = 0;
          v112 = v203;
          v113 = v204;
          v114 = v205;
          v115 = v206;
          v116 = v207;
          v117 = v208;
          v118 = v209;
          v119 = v210;
          v120 = v212;
          v361 = v341;
          v362 = v209;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v101 = 0;
          v102 = v203;
          v103 = v204;
          v104 = v205;
          v105 = v206;
          v106 = v207;
          v107 = v208;
          v108 = v209;
          v109 = v210;
          v110 = v212;
          v361 = v342;
          v362 = v210;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v91 = 0;
          v92 = v203;
          v93 = v204;
          v94 = v205;
          v95 = v206;
          v96 = v207;
          v97 = v208;
          v98 = v209;
          v99 = v210;
          v100 = v212;
          v361 = v343;
          v362 = v212;
          sub_25B889664(&v361, &v365, &v364, &v363);
          v81 = 0;
          v82 = v203;
          v83 = v204;
          v84 = v205;
          v85 = v206;
          v86 = v207;
          v87 = v208;
          v88 = v209;
          v89 = v210;
          v90 = v212;
          _os_log_impl(&dword_25B859000, v214, v215, "Could not restore %s to %ld: %@", v173, 0x20u);
          v80 = 1;
          sub_25B8896B0(v174);
          sub_25B8896B0(v175);
          sub_25B9474B8();

          v170 = v81;
        }
      }

      else
      {

        v170 = v189;
      }

      v71 = v170;
      MEMORY[0x277D82BD8](v214);
      v218(v348, v344);

      v217 = v71;
    }

    else
    {
      v217 = 0;
    }

    v216 = v217;
  }

  return sub_25B909218(__b);
}

uint64_t LogLevels.deinit()
{
  v3 = OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger;
  v1 = sub_25B946C48();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_25B86CFA0((v0 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels));
  return v4;
}

uint64_t LogLevels.__deallocating_deinit()
{
  v0 = *LogLevels.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_25B90E9A0()
{
  sub_25B946F48();
  sub_25B946F48();
  sub_25B946C28();
  v2 = OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A0, &qword_25B94C760);
  sub_25B947838();
  v0 = sub_25B946EC8();
  result = v3;
  *(v3 + v2) = v0;
  return result;
}

uint64_t sub_25B90EAE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EB28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EBC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25B90EBFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EC48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EC88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_25B90ECFC();
  v5 = MEMORY[0x277D83B88];

  return sub_25B8A34EC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_25B90ECFC()
{
  v2 = qword_27FBAB6B0;
  if (!qword_27FBAB6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B90ED74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EE38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EE78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EF10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90EF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F0D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F16C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F1AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F244()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F284()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F2C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F3C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F4A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F4E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F6FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F73C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F7D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B90F854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for LogLevels()
{
  v1 = qword_27FBAB6C0;
  if (!qword_27FBAB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_25B90F924()
{
  v2 = sub_25B946C48();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeSetMemberInterfaces(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v54 = "bridgeSetMemberInterfaces(_:)";
  v55 = sub_25B910408;
  v56 = sub_25B8A3C9C;
  v57 = sub_25B8A3CE8;
  v58 = sub_25B88B5F4;
  v59 = sub_25B88B5F4;
  v60 = sub_25B8A3EB8;
  v82 = 0;
  v81 = 0;
  v76 = 0uLL;
  v77 = 0;
  v66 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v69);
  v65 = v28 - v64;
  v82 = v2;
  v81 = v1;
  MEMORY[0x277D82BE0](v1);
  sub_25B946ED8();
  type metadata accessor for SCNetworkInterface();
  v67 = sub_25B9471B8();
  v70 = SCBridgeInterfaceSetMemberInterfaces();
  MEMORY[0x277D82BD8](v67);

  MEMORY[0x277D82BD8](v69);
  if (!v70)
  {
    v3 = v65;
    static SCError.current(_:)(v54, 0x1DuLL, 2u, &v78);
    v36 = v78;
    v37 = v79;
    v38 = v80;
    v76 = v78;
    LOBYTE(v77) = v79;
    HIDWORD(v77) = v80;
    v4 = sub_25B917470();
    (*(v62 + 16))(v3, v4, v61);
    v42 = 7;
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v57;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v58;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v59;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v60;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v75;
      v75 = v29;
      v33 = &v74;
      v74 = v30;
      v34 = &v73;
      v73 = v31;
      sub_25B889650(2, &v75);
      sub_25B889650(1, v32);
      v22 = v53;
      v71 = v58;
      v72 = v45;
      sub_25B889664(&v71, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v71 = v59;
        v72 = v46;
        sub_25B889664(&v71, &v75, &v74, &v73);
        v28[2] = 0;
        v71 = v60;
        v72 = v48;
        sub_25B889664(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to set bridge interface member interfaces: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[1] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

uint64_t sub_25B910354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = HIDWORD(a3);
  sub_25B9115BC();
  result = swift_allocError();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = v7;
  *(v4 + 20) = v8;
  return result;
}

uint64_t sub_25B910408()
{
  LOBYTE(v2) = *(v0 + 32);
  HIDWORD(v2) = *(v0 + 36);
  return sub_25B910354(*(v0 + 16), *(v0 + 24), v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeDisplayName(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v55 = "bridgeDisplayName(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v62 = sub_25B946C48();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v70);
  v66 = v29 - v65;
  v83 = v2;
  v84 = v3;
  v82 = v1;
  MEMORY[0x277D82BE0](v1);
  sub_25B946ED8();
  v68 = sub_25B946F58();
  v71 = SCBridgeInterfaceSetLocalizedDisplayName();
  MEMORY[0x277D82BD8](v68);

  MEMORY[0x277D82BD8](v70);
  if (!v71)
  {
    v4 = v66;
    static SCError.current(_:)(v55, 0x15uLL, 2u, &v79);
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v5 = sub_25B917470();
    (*(v63 + 16))(v4, v5, v62);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v58;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v59;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v60;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v61;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v33);
      v23 = v54;
      v72 = v59;
      v73 = v46;
      sub_25B889664(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v60;
        v73 = v47;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v29[1] = 0;
        v72 = v61;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set bridge interface localized display name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v63 + 8))(v66, v62);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[0] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeRemove()()
{
  v51 = "bridgeRemove()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v75 = 0;
  v70 = 0uLL;
  v71 = 0;
  v58 = sub_25B946C48();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = v25 - v61;
  v75 = MEMORY[0x28223BE20](v63);
  MEMORY[0x277D82BE0](v75);
  v64 = SCBridgeInterfaceRemove();
  MEMORY[0x277D82BD8](v63);
  if (!v64)
  {
    v0 = v62;
    static SCError.current(_:)(v51, 0xEuLL, 2u, &v72);
    v33 = v72;
    v34 = v73;
    v35 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B917470();
    (*(v59 + 16))(v0, v1, v58);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v69;
      v69 = v26;
      v30 = &v68;
      v68 = v27;
      v31 = &v67;
      v67 = v28;
      sub_25B889650(2, &v69);
      sub_25B889650(1, v29);
      v19 = v50;
      v65 = v55;
      v66 = v42;
      sub_25B889664(&v65, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v65 = v56;
        v66 = v43;
        sub_25B889664(&v65, &v69, &v68, &v67);
        v25[2] = 0;
        v65 = v57;
        v66 = v45;
        sub_25B889664(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to remove bridge interface: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v59 + 8))(v62, v58);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[1] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

uint64_t sub_25B9114FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91153C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91157C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B9115BC()
{
  v2 = qword_27FBAB6D0;
  if (!qword_27FBAB6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B9116B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9116F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B911738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9117FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91183C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91187C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkInterfaceEntity(interfaceName:entity:)()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  ifname = sub_25B946F58();
  sub_25B946ED8();
  v1 = sub_25B946F58();
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocator, domain, ifname, v1);
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](ifname);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v6 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkInterfaceEntity);
  return v6;
}

uint64_t static SCDynamicStoreRef.notifications(name:keys:patterns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v14 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v18 = sub_25B91385C;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6D8, &qword_25B94C798) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v21);
  v17 = &v12 - v13;
  v32 = v7;
  v33 = v6;
  v31 = v8;
  v30 = v9;
  v29 = v5;
  sub_25B946ED8();
  sub_25B946ED8();
  sub_25B946ED8();
  v19 = &v24;
  v25 = v14;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v20 = type metadata accessor for SCDynamicStore();
  sub_25B914F5C();
  v16 = v10;
  sub_25B914F70(v17);
  sub_25B947348();
}

CFPropertyListRef SCDynamicStoreRef.value(key:)(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v97 = a2;
  v78 = "value(key:)";
  v79 = sub_25B8994FC;
  v80 = sub_25B88B668;
  v81 = sub_25B910408;
  v82 = sub_25B8A3C9C;
  v83 = sub_25B8A3CE8;
  v84 = sub_25B88B5F4;
  v85 = sub_25B88B5F4;
  v86 = sub_25B88B6B4;
  v87 = sub_25B88B5F4;
  v88 = sub_25B88B5F4;
  v89 = sub_25B8A3EB8;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v106 = 0uLL;
  v107 = 0;
  v100 = 0;
  v90 = sub_25B946C48();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v98);
  v94 = v43 - v93;
  v112 = v3;
  v113 = v4;
  v111 = v2;
  MEMORY[0x277D82BE0](v2);
  sub_25B946ED8();
  v96 = sub_25B946F58();
  v99 = SCDynamicStoreCopyValue(v98, v96);
  MEMORY[0x277D82BD8](v96);

  MEMORY[0x277D82BD8](v98);
  if (v99)
  {
    v76 = v99;
    result = v99;
    v100 = v99;
  }

  else
  {
    v6 = v94;
    SCError.init(context:rawValue:)(v78, 0xBuLL, 2u, 1004, &v108);
    v53 = v108;
    v54 = v109;
    v55 = v110;
    v106 = v108;
    LOBYTE(v107) = v109;
    HIDWORD(v107) = v110;
    v7 = sub_25B91292C();
    (*(v91 + 16))(v6, v7, v90);
    sub_25B946ED8();
    v61 = 32;
    v62 = 7;
    v8 = swift_allocObject();
    v9 = v97;
    v56 = v8;
    *(v8 + 16) = v95;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v53.n128_u64[1];
    v12 = v54;
    v13 = v55;
    v60 = v10;
    *(v10 + 16) = v53.n128_u64[0];
    *(v10 + 24) = v11;
    *(v10 + 32) = v12;
    *(v10 + 36) = v13;
    sub_25B8A1C38();

    v74 = sub_25B946C18();
    v75 = sub_25B947458();
    v58 = 17;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v66 = swift_allocObject();
    v59 = 8;
    *(v66 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v56;
    v57 = v14;
    *(v14 + 16) = v79;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v57;
    v67 = v16;
    *(v16 + 16) = v80;
    *(v16 + 24) = v17;
    v68 = swift_allocObject();
    *(v68 + 16) = 64;
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    v18 = swift_allocObject();
    v19 = v60;
    v63 = v18;
    *(v18 + 16) = v81;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v63;
    v64 = v20;
    *(v20 + 16) = v82;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v64;
    v71 = v22;
    *(v22 + 16) = v83;
    *(v22 + 24) = v23;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v70 = sub_25B947838();
    v72 = v24;

    v25 = v65;
    v26 = v72;
    *v72 = v84;
    v26[1] = v25;

    v27 = v66;
    v28 = v72;
    v72[2] = v85;
    v28[3] = v27;

    v29 = v67;
    v30 = v72;
    v72[4] = v86;
    v30[5] = v29;

    v31 = v68;
    v32 = v72;
    v72[6] = v87;
    v32[7] = v31;

    v33 = v69;
    v34 = v72;
    v72[8] = v88;
    v34[9] = v33;

    v35 = v71;
    v36 = v72;
    v72[10] = v89;
    v36[11] = v35;
    sub_25B8860FC();

    if (os_log_type_enabled(v74, v75))
    {
      v45 = sub_25B9474D8();
      v43[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v44 = 1;
      v46 = sub_25B8895FC(1);
      v47 = sub_25B8895FC(v44);
      v49 = &v105;
      v105 = v45;
      v50 = &v104;
      v104 = v46;
      v51 = &v103;
      v103 = v47;
      v48 = 2;
      sub_25B889650(2, &v105);
      sub_25B889650(v48, v49);
      v37 = v77;
      v101 = v84;
      v102 = v65;
      sub_25B889664(&v101, v49, v50, v51);
      v52 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v101 = v85;
        v102 = v66;
        sub_25B889664(&v101, &v105, &v104, &v103);
        v43[6] = 0;
        v101 = v86;
        v102 = v67;
        sub_25B889664(&v101, &v105, &v104, &v103);
        v43[5] = 0;
        v101 = v87;
        v102 = v68;
        sub_25B889664(&v101, &v105, &v104, &v103);
        v43[4] = 0;
        v101 = v88;
        v102 = v69;
        sub_25B889664(&v101, &v105, &v104, &v103);
        v43[3] = 0;
        v101 = v89;
        v102 = v71;
        sub_25B889664(&v101, &v105, &v104, &v103);
        _os_log_impl(&dword_25B859000, v74, v75, "Unable to find value for key %s: %@", v45, 0x16u);
        v43[2] = 1;
        sub_25B8896B0(v46);
        sub_25B8896B0(v47);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v74);
    (*(v91 + 8))(v94, v90);
    sub_25B9115BC();
    v38 = swift_allocError();
    v39 = v53.n128_u64[1];
    v40 = v54;
    v41 = v55;
    v43[1] = v38;
    *v42 = v53.n128_u64[0];
    *(v42 + 8) = v39;
    *(v42 + 16) = v40;
    *(v42 + 20) = v41;
    swift_willThrow();
    return v43[7];
  }

  return result;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  v1 = sub_25B946F58();
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator, domain, v1);
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v5 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkGlobalEntity);
  return v5;
}

uint64_t sub_25B9128E0()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1158);
  __swift_project_value_buffer(v1, qword_27FBB1158);
  return sub_25B946C38();
}

uint64_t sub_25B91292C()
{
  if (qword_27FBAAA78 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1158);
}

uint64_t sub_25B912998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B91292C();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

SCDynamicStoreRef sub_25B9129FC(uint64_t a1, uint64_t a2, void (__cdecl *a3)(SCDynamicStoreRef, CFArrayRef, void *), SCDynamicStoreContext *a4)
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  sub_25B946ED8();
  v9 = sub_25B946F58();
  v11 = SCDynamicStoreCreate(allocator, v9, a3, a4);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](allocator);
  MEMORY[0x277D82BE0](v11);
  if (v11)
  {
    MEMORY[0x277D82BD8](v11);
    return v11;
  }

  else
  {
    sub_25B9115BC();
    swift_allocError();
    SCError.init(context:rawValue:)("create(name:callback:context:)", 0x1EuLL, 2u, 1001, v5);
    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    return v6;
  }
}

uint64_t sub_25B912BB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B912C30(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_25B912C7C(a1);
}

uint64_t sub_25B912C7C(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v7 + 16))();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation, v6, v9);
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_25B912DBC()
{
  v3 = OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_25B912E3C()
{
  v0 = *sub_25B912DBC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_25B912EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v66 = a1;
  v76 = a2;
  v75 = a3;
  v60._rawValue = a4;
  v61._rawValue = a5;
  v68 = sub_25B9138DC;
  v69 = sub_25B913934;
  v70 = sub_25B913A9C;
  v73 = sub_25B913CE8;
  v48 = sub_25B917060;
  __b[5] = *MEMORY[0x277D85DE8];
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v74 = __b;
  memset(__b, 0, 0x28uLL);
  v87 = 0;
  v86 = 0;
  v81 = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB700, &qword_25B94C7C8);
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v53 = &v24[-v52];
  v71 = 0;
  v54 = (*(*(sub_25B947478() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v55 = &v24[-v54];
  v56 = (*(*(sub_25B947468() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v57 = &v24[-v56];
  v5 = sub_25B946E88();
  v58 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v59 = &v24[-v58];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v63 = *(v65 - 8);
  v64 = v65 - 8;
  v62 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v67 = &v24[-v62];
  v93 = v6;
  v91 = v7;
  v92 = v8;
  v90 = v9;
  v89 = v10;
  _s4InfoCMa();
  (*(v63 + 16))(v67, v66, v65);
  v72 = sub_25B912C30(v67);
  v88 = v72;
  __b[0] = 1;
  __b[1] = v72;
  __b[2] = v68;
  __b[3] = v69;
  __b[4] = v70;
  type metadata accessor for SCDynamicStore();
  v11 = sub_25B9129FC(v76, v75, v73, v74);
  v77 = 0;
  v78 = v11;
  v79 = 0;
  v12 = v11;
  v45 = v11;
  MEMORY[0x277D82BE0](v11);
  v87 = v12;
  SCDynamicStoreRef.notificationKeys(_:_:)(v60, v61);
  v46 = v13;
  v47 = v13;
  if (v13)
  {
    v25 = v47;
    MEMORY[0x277D82BD8](v45);
    v27 = v25;
    v26 = 1;
    v29 = v26;
    v28 = v27;
    v22 = v27;
    v86 = v28;
    v23 = v28;
    v94 = v28;
    sub_25B947308();

    if (v29)
    {
      MEMORY[0x277D82BD8](v87);
    }

    sub_25B913870();
  }

  else
  {
    MEMORY[0x277D82BD8](v45);
    v41 = 0;
    v34 = sub_25B8A4858();
    v31 = 36;
    v14 = sub_25B947818();
    v36 = &v84;
    v84 = v14;
    v85 = v15;
    v33 = 1;
    v16 = sub_25B946F48();
    v32 = v17;
    MEMORY[0x25F8715F0](v16);

    v82 = v76;
    v83 = v75;
    sub_25B9477F8();
    v18 = sub_25B946F48();
    v35 = v19;
    MEMORY[0x25F8715F0](v18);

    v38 = v84;
    v37 = v85;
    sub_25B946ED8();
    sub_25B86AEEC(v36);
    v39 = sub_25B946FE8();
    v40 = v20;
    sub_25B89CE88();
    sub_25B89CEA0();
    sub_25B89CF40(v55);
    v43 = sub_25B947498();
    v81 = v43;
    v42 = v87;
    MEMORY[0x277D82BE0](v87);
    MEMORY[0x277D82BE0](v43);
    SCDynamicStoreRef.dispatchQueue(_:)(v43);
    v44 = 0;
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    v30 = v87;
    MEMORY[0x277D82BE0](v87);
    MEMORY[0x277D82BE0](v30);
    *(swift_allocObject() + 16) = v30;
    sub_25B9472C8();
    v80 = v30;
    sub_25B9472F8();
    (*(v50 + 8))(v53, v49);
    MEMORY[0x277D82BD8](v87);
    sub_25B913870();
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B91388C(uint64_t a1)
{

  return a1;
}

uint64_t sub_25B9138F4()
{
}

uint64_t sub_25B91394C(uint64_t a1)
{
  v7[3] = a1;

  v7[2] = a1;
  v7[0] = sub_25B947818();
  v7[1] = v1;
  v2 = sub_25B946F48();
  MEMORY[0x25F8715F0](v2);

  _s4InfoCMa();
  sub_25B9477D8();
  v3 = sub_25B946F48();
  MEMORY[0x25F8715F0](v3);

  sub_25B946ED8();
  sub_25B86AEEC(v7);
  sub_25B946FE8();
  v6 = sub_25B946F58();
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v6);

  return v6;
}

uint64_t sub_25B913AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB700, &qword_25B94C7C8);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v15);
  v20 = v7 - v19;
  v25 = result;
  v24 = v4;
  v23 = v5;
  if (v5)
  {
    v7[1] = v14;
    v6 = v12;
    v7[0] = v14;
    v22 = v14;

    (*(v9 + 16))(v6, v7[0] + OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation, v8);

    MEMORY[0x277D82BE0](v15);
    v21 = v15;
    sub_25B9472F8();
    (*(v9 + 8))(v12, v8);
    return (*(v17 + 8))(v20, v16);
  }

  return result;
}

uint64_t sub_25B913CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  sub_25B913AB4(a1, a2, a3);
  MEMORY[0x277D82BD8](a2);
  return MEMORY[0x277D82BD8](a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCDynamicStoreRef.notificationKeys(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  rawValue = a1._rawValue;
  v70 = a2._rawValue;
  v63 = "notificationKeys(_:_:)";
  v64 = sub_25B910408;
  v65 = sub_25B8A3C9C;
  v66 = sub_25B8A3CE8;
  v67 = sub_25B88B5F4;
  v68 = sub_25B88B5F4;
  v69 = sub_25B8A3EB8;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v84 = 0uLL;
  v85 = 0;
  v72 = sub_25B946C48();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v29 - v75;
  v93 = MEMORY[0x28223BE20](rawValue);
  v92 = v3;
  v91 = v2;
  v90 = v93;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  v78 = sub_25B89906C();
  if (sub_25B9473E8())
  {
    v60 = 0;
  }

  else
  {
    sub_25B946ED8();
    v59 = sub_25B9471B8();

    v60 = v59;
  }

  v58 = v60;
  v89 = v70;
  if (sub_25B9473E8())
  {
    v57 = 0;
  }

  else
  {
    sub_25B946ED8();
    v56 = sub_25B9471B8();

    v57 = v56;
  }

  v54 = v57;
  v55 = SCDynamicStoreSetNotificationKeys(v61, v58, v57);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v58);
  if (!v55)
  {
    v4 = v76;
    static SCError.current(_:)(v63, 0x16uLL, 2u, &v86);
    v37 = v86;
    v38 = v87;
    v39 = v88;
    v84 = v86;
    LOBYTE(v85) = v87;
    HIDWORD(v85) = v88;
    v5 = sub_25B91292C();
    (*(v73 + 16))(v4, v5, v72);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v64;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v65;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v66;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v67;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v68;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v69;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v83;
      v83 = v30;
      v34 = &v82;
      v82 = v31;
      v35 = &v81;
      v81 = v32;
      sub_25B889650(2, &v83);
      sub_25B889650(1, v33);
      v23 = v62;
      v79 = v67;
      v80 = v46;
      sub_25B889664(&v79, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v79 = v68;
        v80 = v47;
        sub_25B889664(&v79, &v83, &v82, &v81);
        v29[2] = 0;
        v79 = v69;
        v80 = v49;
        sub_25B889664(&v79, &v83, &v82, &v81);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set notification keys: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v73 + 8))(v76, v72);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[1] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

uint64_t SCDynamicStoreRef.dispatchQueue(_:)(uint64_t a1)
{
  v62 = a1;
  v55 = "dispatchQueue(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v29 - v67;
  v80 = v2;
  v79 = v1;
  result = SCDynamicStoreSetDispatchQueue(v1, v2);
  if (!result)
  {
    v4 = v68;
    v40 = 17;
    static SCError.current(_:)(v55, 0x11uLL, 2u, &v76);
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v5 = sub_25B91292C();
    (*(v65 + 16))(v4, v5, v64);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v58;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v59;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v60;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v61;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      v35 = &v71;
      v71 = v32;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v33);
      v23 = v54;
      v69 = v59;
      v70 = v46;
      sub_25B889664(&v69, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v29[1] = 0;
        v69 = v61;
        v70 = v49;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set dispatch queue: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[0] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25B914EC4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  SCDynamicStoreRef.dispatchQueue(_:)(0);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t sub_25B914F70@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v1 = sub_25B9472D8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_25B915008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

CFDictionaryRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCDynamicStoreRef.values(keys:patterns:)(Swift::OpaquePointer keys, Swift::OpaquePointer patterns)
{
  rawValue = keys._rawValue;
  v123 = patterns._rawValue;
  v104 = "values(keys:patterns:)";
  v105 = sub_25B86F500;
  v106 = sub_25B86F500;
  v107 = sub_25B88983C;
  v108 = sub_25B88B668;
  v109 = sub_25B88983C;
  v110 = sub_25B88B668;
  v111 = sub_25B910408;
  v112 = sub_25B8A3C9C;
  v113 = sub_25B8A3CE8;
  v114 = sub_25B88B5F4;
  v115 = sub_25B88B5F4;
  v116 = sub_25B88B6B4;
  v117 = sub_25B88B5F4;
  v118 = sub_25B88B5F4;
  v119 = sub_25B88B6B4;
  v120 = sub_25B88B5F4;
  v121 = sub_25B88B5F4;
  v122 = sub_25B8A3EB8;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v139 = 0uLL;
  v140 = 0;
  v133 = 0;
  v125 = sub_25B946C48();
  v126 = *(v125 - 8);
  v127 = v125 - 8;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v124);
  v129 = v55 - v128;
  v148 = v3;
  v147 = v4;
  v146 = v2;
  MEMORY[0x277D82BE0](v2);
  v145 = rawValue;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  v132 = sub_25B89906C();
  if (sub_25B9473E8())
  {
    v102 = 0;
  }

  else
  {
    sub_25B946ED8();
    v101 = sub_25B9471B8();

    v102 = v101;
  }

  v100 = v102;
  v144 = v123;
  if (sub_25B9473E8())
  {
    v99 = 0;
  }

  else
  {
    sub_25B946ED8();
    v98 = sub_25B9471B8();

    v99 = v98;
  }

  v96 = v99;
  v97 = SCDynamicStoreCopyMultiple(v124, v100, v99);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v124);
  if (v97)
  {
    v95 = v97;
    result = v97;
    v133 = v97;
  }

  else
  {
    v6 = v129;
    SCError.init(context:rawValue:)(v104, 0x16uLL, 2u, 1004, &v141);
    v66 = v141;
    v67 = v142;
    v68 = v143;
    v139 = v141;
    LOBYTE(v140) = v142;
    HIDWORD(v140) = v143;
    v7 = sub_25B91292C();
    (*(v126 + 16))(v6, v7, v125);
    sub_25B946ED8();
    v64 = 24;
    v78 = 7;
    v63 = swift_allocObject();
    *(v63 + 16) = rawValue;

    v77 = 32;
    v8 = swift_allocObject();
    v9 = v63;
    v69 = v8;
    *(v8 + 16) = v105;
    *(v8 + 24) = v9;

    sub_25B946ED8();
    v65 = swift_allocObject();
    *(v65 + 16) = v123;

    v10 = swift_allocObject();
    v11 = v65;
    v72 = v10;
    *(v10 + 16) = v106;
    *(v10 + 24) = v11;

    v12 = swift_allocObject();
    v13 = v66.n128_u64[1];
    v14 = v67;
    v15 = v68;
    v76 = v12;
    *(v12 + 16) = v66.n128_u64[0];
    *(v12 + 24) = v13;
    *(v12 + 32) = v14;
    *(v12 + 36) = v15;
    sub_25B8A1C38();

    v93 = sub_25B946C18();
    v94 = sub_25B947458();
    v74 = 17;
    v81 = swift_allocObject();
    v71 = 32;
    *(v81 + 16) = 32;
    v82 = swift_allocObject();
    v75 = 8;
    *(v82 + 16) = 8;
    v16 = swift_allocObject();
    v17 = v69;
    v70 = v16;
    *(v16 + 16) = v107;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v70;
    v83 = v18;
    *(v18 + 16) = v108;
    *(v18 + 24) = v19;
    v84 = swift_allocObject();
    *(v84 + 16) = v71;
    v85 = swift_allocObject();
    *(v85 + 16) = v75;
    v20 = swift_allocObject();
    v21 = v72;
    v73 = v20;
    *(v20 + 16) = v109;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v73;
    v86 = v22;
    *(v22 + 16) = v110;
    *(v22 + 24) = v23;
    v87 = swift_allocObject();
    *(v87 + 16) = 64;
    v88 = swift_allocObject();
    *(v88 + 16) = v75;
    v24 = swift_allocObject();
    v25 = v76;
    v79 = v24;
    *(v24 + 16) = v111;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v79;
    v80 = v26;
    *(v26 + 16) = v112;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v80;
    v90 = v28;
    *(v28 + 16) = v113;
    *(v28 + 24) = v29;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v89 = sub_25B947838();
    v91 = v30;

    v31 = v81;
    v32 = v91;
    *v91 = v114;
    v32[1] = v31;

    v33 = v82;
    v34 = v91;
    v91[2] = v115;
    v34[3] = v33;

    v35 = v83;
    v36 = v91;
    v91[4] = v116;
    v36[5] = v35;

    v37 = v84;
    v38 = v91;
    v91[6] = v117;
    v38[7] = v37;

    v39 = v85;
    v40 = v91;
    v91[8] = v118;
    v40[9] = v39;

    v41 = v86;
    v42 = v91;
    v91[10] = v119;
    v42[11] = v41;

    v43 = v87;
    v44 = v91;
    v91[12] = v120;
    v44[13] = v43;

    v45 = v88;
    v46 = v91;
    v91[14] = v121;
    v46[15] = v45;

    v47 = v90;
    v48 = v91;
    v91[16] = v122;
    v48[17] = v47;
    sub_25B8860FC();

    if (os_log_type_enabled(v93, v94))
    {
      v56 = sub_25B9474D8();
      v55[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v57 = sub_25B8895FC(1);
      v58 = sub_25B8895FC(2);
      v59 = &v138;
      v138 = v56;
      v60 = &v137;
      v137 = v57;
      v61 = &v136;
      v136 = v58;
      sub_25B889650(2, &v138);
      sub_25B889650(3, v59);
      v49 = v103;
      v134 = v114;
      v135 = v81;
      sub_25B889664(&v134, v59, v60, v61);
      v62 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v134 = v115;
        v135 = v82;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[7] = 0;
        v134 = v116;
        v135 = v83;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[6] = 0;
        v134 = v117;
        v135 = v84;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[5] = 0;
        v134 = v118;
        v135 = v85;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[4] = 0;
        v134 = v119;
        v135 = v86;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[3] = 0;
        v134 = v120;
        v135 = v87;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[2] = 0;
        v134 = v121;
        v135 = v88;
        sub_25B889664(&v134, &v138, &v137, &v136);
        v55[1] = 0;
        v134 = v122;
        v135 = v90;
        sub_25B889664(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_25B859000, v93, v94, "Unable to find values for keys %s and patterns %s: %@", v56, 0x20u);
        sub_25B8896B0(v57);
        sub_25B8896B0(v58);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v93);
    (*(v126 + 8))(v129, v125);
    sub_25B9115BC();
    v50 = swift_allocError();
    v51 = v66.n128_u64[1];
    v52 = v67;
    v53 = v68;
    v55[0] = v50;
    *v54 = v66.n128_u64[0];
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    *(v54 + 20) = v53;
    swift_willThrow();
    return v55[8];
  }

  return result;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkInterface()()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(allocator, domain);
  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v4 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkInterface);
  return v4;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkServiceEntity(serviceID:entity:)()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  serviceID = sub_25B946F58();
  sub_25B946ED8();
  v1 = sub_25B946F58();
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(allocator, domain, serviceID, v1);
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](serviceID);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v6 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkServiceEntity);
  return v6;
}

uint64_t static SCDynamicStoreRef.Patterns.createIPv4NetworkService()()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  serviceID = *MEMORY[0x277CE1628];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1628]);
  entity = *MEMORY[0x277CE1688];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1688]);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(allocator, domain, serviceID, entity);
  MEMORY[0x277D82BD8](entity);
  MEMORY[0x277D82BD8](serviceID);
  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v6 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkServiceEntity);
  return v6;
}

uint64_t sub_25B9165B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9165F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9166D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9167D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9169D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25B916A18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916A58()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25B916A98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916B5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916C34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916D0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916D4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B916D8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s4InfoCMa()
{
  v1 = qword_27FBAB6E8;
  if (!qword_27FBAB6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_25B916E5C()
{
  v2 = sub_25B916F30();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_25B916F30()
{
  v4 = qword_27FBAB6F8;
  if (!qword_27FBAB6F8)
  {
    type metadata accessor for SCDynamicStore();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
    v3 = sub_25B947318();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27FBAB6F8);
      return v1;
    }
  }

  return v4;
}

double static SCError.current(_:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v4 = SCError();
  *&result = SCError.init(context:rawValue:)(a1, a2, a3, v4, a4).n128_u64[0];
  return result;
}

__n128 SCError.init(context:rawValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v6.n128_u64[0] = a1;
  v6.n128_u64[1] = a2;
  LODWORD(v7) = a3;
  HIDWORD(v7) = a4;
  result = v6;
  *a5 = v6;
  a5[1].n128_u64[0] = v7;
  return result;
}

uint64_t SCError.context.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t SCError.context.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SCError.description.getter()
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 16);
  SCErrorString(*(v0 + 5));
  v13 = sub_25B947058();
  v14 = v1;
  v12[0] = sub_25B947818();
  v12[1] = v2;
  v3 = sub_25B946F48();
  MEMORY[0x25F8715F0](v3);

  sub_25B9477E8();
  v4 = sub_25B946F48();
  MEMORY[0x25F8715F0](v4);

  sub_25B9477E8();
  v5 = sub_25B946F48();
  MEMORY[0x25F8715F0](v5);

  sub_25B9477F8();
  v6 = sub_25B946F48();
  MEMORY[0x25F8715F0](v6);

  sub_25B946ED8();
  sub_25B86AEEC(v12);
  v11 = sub_25B946FE8();

  return v11;
}

uint64_t sub_25B917470()
{
  if (qword_27FBAAA80 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1178);
}

uint64_t sub_25B9174DC()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1178);
  __swift_project_value_buffer(v1, qword_27FBB1178);
  return sub_25B946C38();
}

uint64_t sub_25B917528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B917470();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static SCNetworkInterfaceRef.allInterfaces()()
{
  v7 = 0;
  v2 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
    MEMORY[0x277D82BE0](v3);
    sub_25B9176E8();
    sub_25B9478B8();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v3);
    if (v4)
    {
      v1 = v4;
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v2);
  }

  v1 = 0;
LABEL_6:
  v5 = v1;
  if (v1)
  {
    return v5;
  }

  type metadata accessor for SCNetworkInterface();
  return sub_25B947838();
}

unint64_t sub_25B9176E8()
{
  v2 = qword_27FBAB710;
  if (!qword_27FBAB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB708, "\\z");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB710);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SCNetworkInterfaceRef.interface(bsdName:)(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v135 = a2;
  v123 = sub_25B8A3B24;
  v124 = sub_25B8A3C9C;
  v125 = sub_25B8A3CE8;
  v126 = sub_25B88B5F4;
  v127 = sub_25B88B5F4;
  v128 = sub_25B8A3EB8;
  v129 = sub_25B8994FC;
  v130 = sub_25B88B668;
  v131 = sub_25B88B5F4;
  v132 = sub_25B88B5F4;
  v133 = sub_25B88B6B4;
  v134 = "interface(bsdName:)";
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v144 = v163;
  v163[0] = 0;
  v163[1] = 0;
  v155 = 0;
  v154 = 0;
  v148 = 0;
  v137 = sub_25B946C48();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v136);
  v141 = v46 - v140;
  v142 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v143 = v46 - v142;
  v165 = v5;
  v166 = v6;
  v164 = v2;
  v162 = static SCNetworkInterfaceRef.allInterfaces()();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v146; ; i = v110)
  {
    v121 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v122 = v161;
    if (!v161)
    {
      break;
    }

    v120 = v122;
    v116 = v122;
    v155 = v122;
    v7 = SCNetworkInterfaceRef.bsdName()();
    v117 = v8;
    v118 = v7;
    v119 = v8;
    if (v8)
    {
      v28 = v141;
      v71 = v119;
      v70 = 0;
      v29 = v119;
      v154 = v71;
      v30 = sub_25B917470();
      (*(v138 + 16))(v28, v30, v137);
      v31 = v71;
      v75 = 7;
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      sub_25B8A1C38();

      v84 = sub_25B946C18();
      v85 = sub_25B947448();
      v72 = 17;
      v78 = swift_allocObject();
      *(v78 + 16) = 64;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v74 = 32;
      v32 = swift_allocObject();
      v33 = v73;
      v76 = v32;
      *(v32 + 16) = v123;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v76;
      v77 = v34;
      *(v34 + 16) = v124;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v77;
      v81 = v36;
      *(v36 + 16) = v125;
      *(v36 + 24) = v37;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v80 = sub_25B947838();
      v82 = v38;

      v39 = v78;
      v40 = v82;
      *v82 = v126;
      v40[1] = v39;

      v41 = v79;
      v42 = v82;
      v82[2] = v127;
      v42[3] = v41;

      v43 = v81;
      v44 = v82;
      v82[4] = v128;
      v44[5] = v43;
      sub_25B8860FC();

      if (os_log_type_enabled(v84, v85))
      {
        v60 = sub_25B9474D8();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v61 = sub_25B8895FC(1);
        v62 = sub_25B8895FC(0);
        v63 = &v153;
        v153 = v60;
        v64 = &v152;
        v152 = v61;
        v65 = &v151;
        v151 = v62;
        sub_25B889650(2, &v153);
        sub_25B889650(1, v63);
        v45 = v70;
        v149 = v126;
        v150 = v78;
        sub_25B889664(&v149, v63, v64, v65);
        v66 = v45;
        v67 = v78;
        v68 = v79;
        v69 = v81;
        if (v45)
        {
          v55 = v67;
          v56 = v68;
          v57 = v69;
          v46[2] = v69;
          v46[1] = v68;

          __break(1u);
        }

        else
        {
          v149 = v127;
          v150 = v79;
          sub_25B889664(&v149, &v153, &v152, &v151);
          v51 = 0;
          v52 = v78;
          v53 = v79;
          v54 = v81;
          v149 = v128;
          v150 = v81;
          sub_25B889664(&v149, &v153, &v152, &v151);
          v47 = 0;
          v48 = v78;
          v49 = v79;
          v50 = v81;
          _os_log_impl(&dword_25B859000, v84, v85, "Ignoring interface without a BSD name: %@", v60, 0xCu);
          sub_25B8896B0(v61);
          sub_25B8896B0(v62);
          sub_25B9474B8();

          v58 = v47;
        }
      }

      else
      {

        v58 = v70;
      }

      v46[0] = v58;
      MEMORY[0x277D82BD8](v84);
      (*(v138 + 8))(v141, v137);

      v111 = v46[0];
    }

    else
    {
      object = v118._object;
      v148 = v118;
      v9 = MEMORY[0x25F870E10]();
      v114 = v116;
      v115 = object;
      if (v9)
      {
        v112 = v114;

        sub_25B86CFA0(v163);
        return v112;
      }

      v111 = v117;
    }

    v110 = v111;
    MEMORY[0x277D82BD8](v116);
  }

  v11 = v143;
  sub_25B86CFA0(v163);
  v12 = sub_25B917470();
  (*(v138 + 16))(v11, v12, v137);
  sub_25B946ED8();
  v98 = 32;
  v99 = 7;
  v13 = swift_allocObject();
  v14 = v135;
  v100 = v13;
  *(v13 + 16) = v136;
  *(v13 + 24) = v14;
  v108 = sub_25B946C18();
  v109 = sub_25B947458();
  v97 = 17;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = 8;
  v15 = swift_allocObject();
  v16 = v100;
  v101 = v15;
  *(v15 + 16) = v129;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v101;
  v105 = v17;
  *(v17 + 16) = v130;
  *(v17 + 24) = v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v104 = sub_25B947838();
  v106 = v19;

  v20 = v102;
  v21 = v106;
  *v106 = v131;
  v21[1] = v20;

  v22 = v103;
  v23 = v106;
  v106[2] = v132;
  v23[3] = v22;

  v24 = v105;
  v25 = v106;
  v106[4] = v133;
  v25[5] = v24;
  sub_25B8860FC();

  if (os_log_type_enabled(v108, v109))
  {
    v90 = sub_25B9474D8();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v91 = sub_25B8895FC(0);
    v92 = sub_25B8895FC(1);
    v93 = &v160;
    v160 = v90;
    v94 = &v159;
    v159 = v91;
    v95 = &v158;
    v158 = v92;
    sub_25B889650(2, &v160);
    sub_25B889650(1, v93);
    v26 = v121;
    v156 = v131;
    v157 = v102;
    sub_25B889664(&v156, v93, v94, v95);
    v96 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v156 = v132;
      v157 = v103;
      sub_25B889664(&v156, &v160, &v159, &v158);
      v87 = 0;
      v156 = v133;
      v157 = v105;
      sub_25B889664(&v156, &v160, &v159, &v158);
      _os_log_impl(&dword_25B859000, v108, v109, "Interface %s not found.", v90, 0xCu);
      sub_25B8896B0(v91);
      sub_25B8896B0(v92);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v108);
  (*(v138 + 8))(v143, v137);
  sub_25B9115BC();
  v86 = swift_allocError();
  SCError.init(context:rawValue:)(v134, 0x13uLL, 2u, 1004, v27);
  swift_willThrow();
  return v88;
}

unint64_t sub_25B918968()
{
  v2 = qword_27FBAB718;
  if (!qword_27FBAB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB708, "\\z");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB718);
    return WitnessTable;
  }

  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bsdName()()
{
  v59 = "bsdName()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkInterfaceGetBSDName(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    static SCError.current(_:)(v59, 9uLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B917470();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get network interface BSD name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_25B919270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.autoConfigure(_:)(Swift::Bool a1)
{
  v69 = a1;
  v56 = "autoConfigure(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v81 = 0;
  v80 = 0;
  v75 = 0uLL;
  v76 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v28 - v67;
  v81 = v2 & 1;
  v80 = v1;
  MEMORY[0x277D82BE0](v1);
  v54 = v69;
  v53 = SCNetworkInterfaceSetAutoConfigure();
  MEMORY[0x277D82BD8](v63);
  if (!v53)
  {
    v3 = v68;
    v39 = 17;
    static SCError.current(_:)(v56, 0x11uLL, 2u, &v77);
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v75 = v77;
    LOBYTE(v76) = v78;
    HIDWORD(v76) = v79;
    v4 = sub_25B917470();
    (*(v65 + 16))(v3, v4, v64);
    v42 = 7;
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v57;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v58;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v59;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v60;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v61;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v62;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v74;
      v74 = v29;
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      sub_25B889650(2, &v74);
      sub_25B889650(1, v32);
      v22 = v55;
      v70 = v60;
      v71 = v45;
      sub_25B889664(&v70, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v70 = v61;
        v71 = v46;
        sub_25B889664(&v70, &v74, &v73, &v72);
        v28[2] = 0;
        v70 = v62;
        v71 = v48;
        sub_25B889664(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to set network interface auto configure: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[1] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.allowConfiguredMembers(_:)(Swift::Bool a1)
{
  v69 = a1;
  v56 = "allowConfiguredMembers(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v81 = 0;
  v80 = 0;
  v75 = 0uLL;
  v76 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v28 - v67;
  v81 = v2 & 1;
  v80 = v1;
  MEMORY[0x277D82BE0](v1);
  v54 = v69;
  v53 = SCBridgeInterfaceSetAllowConfiguredMembers();
  MEMORY[0x277D82BD8](v63);
  if (!v53)
  {
    v3 = v68;
    static SCError.current(_:)(v56, 0x1AuLL, 2u, &v77);
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v75 = v77;
    LOBYTE(v76) = v78;
    HIDWORD(v76) = v79;
    v4 = sub_25B917470();
    (*(v65 + 16))(v3, v4, v64);
    v42 = 7;
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v57;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v58;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v59;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v60;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v61;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v62;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v74;
      v74 = v29;
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      sub_25B889650(2, &v74);
      sub_25B889650(1, v32);
      v22 = v55;
      v70 = v60;
      v71 = v45;
      sub_25B889664(&v70, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v70 = v61;
        v71 = v46;
        sub_25B889664(&v70, &v74, &v73, &v72);
        v28[2] = 0;
        v70 = v62;
        v71 = v48;
        sub_25B889664(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to set network interface allow configured members: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[1] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.displayName()()
{
  v59 = "displayName()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkInterfaceGetLocalizedDisplayName(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    static SCError.current(_:)(v59, 0xDuLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B917470();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get network interface localized display name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.forceConfigurationRefresh()()
{
  v51 = "forceConfigurationRefresh()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCNetworkInterfaceForceConfigurationRefresh(v74))
  {
    v0 = v63;
    static SCError.current(_:)(v51, 0x1BuLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B917470();
    (*(v60 + 16))(v0, v1, v59);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to force configuration refresh: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.mtu()()
{
  v59 = "mtu()";
  v66 = 0;
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v86 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v67 = &v77;
  v77 = 0;
  v79 = 0uLL;
  v80 = 0;
  v69 = sub_25B946C48();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v29 - v72;
  v78 = MEMORY[0x28223BE20](v68);
  v77 = 0;
  if (SCNetworkInterfaceCopyMTU(v78, v0, v1, v1))
  {
    v57 = v77;
    v2 = __OFSUB__(*MEMORY[0x277D85DE8], v86);
    return v77;
  }

  else
  {
    v4 = v73;
    static SCError.current(_:)(v59, 5uLL, 2u, &v81);
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v5 = sub_25B917470();
    (*(v70 + 16))(v4, v5, v69);
    v46 = 7;
    v6 = swift_allocObject();
    v7 = v40.n128_u64[1];
    v8 = v41;
    v9 = v42;
    v44 = v6;
    *(v6 + 16) = v40.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v55 = sub_25B946C18();
    v56 = sub_25B947458();
    v43 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v10 = swift_allocObject();
    v11 = v44;
    v47 = v10;
    *(v10 + 16) = v60;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v47;
    v48 = v12;
    *(v12 + 16) = v61;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v48;
    v52 = v14;
    *(v14 + 16) = v62;
    *(v14 + 24) = v15;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v51 = sub_25B947838();
    v53 = v16;

    v17 = v49;
    v18 = v53;
    *v53 = v63;
    v18[1] = v17;

    v19 = v50;
    v20 = v53;
    v53[2] = v64;
    v20[3] = v19;

    v21 = v52;
    v22 = v53;
    v53[4] = v65;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v55, v56))
    {
      v33 = sub_25B9474D8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v34 = sub_25B8895FC(1);
      v35 = sub_25B8895FC(0);
      v36 = &v76;
      v76 = v33;
      v37 = &v85;
      v85 = v34;
      v38 = &v84;
      v84 = v35;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v36);
      v23 = v58;
      v74 = v63;
      v75 = v49;
      sub_25B889664(&v74, v36, v37, v38);
      v39 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v50;
        sub_25B889664(&v74, &v76, &v85, &v84);
        v31 = 0;
        v74 = v65;
        v75 = v52;
        sub_25B889664(&v74, &v76, &v85, &v84);
        _os_log_impl(&dword_25B859000, v55, v56, "Unable to get MTU: %@", v33, 0xCu);
        sub_25B8896B0(v34);
        sub_25B8896B0(v35);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v55);
    (*(v70 + 8))(v73, v69);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v40.n128_u64[1];
    v26 = v41;
    v27 = v42;
    v30 = v24;
    *v28 = v40.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
    *MEMORY[0x277D85DE8];
    return v29[3];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.mtu(_:)(Swift::Int32 a1)
{
  v61 = a1;
  v54 = "mtu(_:)";
  v55 = sub_25B910408;
  v56 = sub_25B8A3C9C;
  v57 = sub_25B8A3CE8;
  v58 = sub_25B88B5F4;
  v59 = sub_25B88B5F4;
  v60 = sub_25B8A3EB8;
  v79 = 0;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v62);
  v67 = v28 - v66;
  v79 = v2;
  v78 = v1;
  if (!SCNetworkInterfaceSetMTU(v1, v2))
  {
    v3 = v67;
    v42 = 7;
    static SCError.current(_:)(v54, 7uLL, 2u, &v75);
    v36 = v75;
    v37 = v76;
    v38 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v4 = sub_25B917470();
    (*(v64 + 16))(v3, v4, v63);
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v57;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v58;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v59;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v60;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v72;
      v72 = v29;
      v33 = &v71;
      v71 = v30;
      v34 = &v70;
      v70 = v31;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v32);
      v22 = v53;
      v68 = v58;
      v69 = v45;
      sub_25B889664(&v68, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v28[1] = 0;
        v68 = v60;
        v69 = v48;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to set MTU: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[0] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.type()()
{
  v59 = "type()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkInterfaceGetInterfaceType(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    static SCError.current(_:)(v59, 6uLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B917470();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get network interface type: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.hardwareAddress()()
{
  v59 = "hardwareAddress()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkInterfaceGetHardwareAddressString(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    v40 = 17;
    static SCError.current(_:)(v59, 0x11uLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B917470();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get network interface hardware address string: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_25B91D51C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D55C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D674()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D6B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D7B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D7F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D8BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D8FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91D93C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DA00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DA40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DA80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DB44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DB84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DBC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DC88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DCC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DD08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DDCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DE0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DE4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DF10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91DF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E0D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E1D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B91E258()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1190);
  __swift_project_value_buffer(v1, qword_27FBB1190);
  return sub_25B946C38();
}

uint64_t sub_25B91E2A4()
{
  if (qword_27FBAAA88 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1190);
}

uint64_t sub_25B91E310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B91E2A4();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SCNetworkProtocolRef.configuration()()
{
  v59 = "configuration()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v87 = 0;
  v82 = 0uLL;
  v83 = 0;
  v76 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v26 - v70;
  v87 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkProtocolGetConfiguration(v87);
  if (v72)
  {
    v57 = v72;
    v55 = v72;
    v76 = v72;
    MEMORY[0x277D82BE0](v72);
    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v54 = v56;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB730, &qword_25B94C888);
      MEMORY[0x277D82BE0](v54);
      sub_25B920840();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v54);
      if (v73)
      {
        v52 = v73;
LABEL_7:
        v74 = v52;
        if (v52)
        {
          v75 = v74;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB728, &qword_25B94C880);
          sub_25B947838();
          v75 = sub_25B946EC8();
          if (v74)
          {
            sub_25B86CFA0(&v74);
          }
        }

        v51 = v75;
        MEMORY[0x277D82BD8](v55);
        return v51;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v55);
    }

    v52 = 0;
    goto LABEL_7;
  }

  v1 = v71;
  static SCError.current(_:)(v59, 0xFuLL, 2u, &v84);
  v34 = v84;
  v35 = v85;
  v36 = v86;
  v82 = v84;
  LOBYTE(v83) = v85;
  HIDWORD(v83) = v86;
  v2 = sub_25B91E2A4();
  (*(v68 + 16))(v1, v2, v67);
  v40 = 7;
  v3 = swift_allocObject();
  v4 = v34.n128_u64[1];
  v5 = v35;
  v6 = v36;
  v38 = v3;
  *(v3 + 16) = v34.n128_u64[0];
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  sub_25B8A1C38();

  v49 = sub_25B946C18();
  v50 = sub_25B947458();
  v37 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 64;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v39 = 32;
  v7 = swift_allocObject();
  v8 = v38;
  v41 = v7;
  *(v7 + 16) = v60;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v41;
  v42 = v9;
  *(v9 + 16) = v61;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v42;
  v46 = v11;
  *(v11 + 16) = v62;
  *(v11 + 24) = v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v45 = sub_25B947838();
  v47 = v13;

  v14 = v43;
  v15 = v47;
  *v47 = v63;
  v15[1] = v14;

  v16 = v44;
  v17 = v47;
  v47[2] = v64;
  v17[3] = v16;

  v18 = v46;
  v19 = v47;
  v47[4] = v65;
  v19[5] = v18;
  sub_25B8860FC();

  if (os_log_type_enabled(v49, v50))
  {
    v27 = sub_25B9474D8();
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v28 = sub_25B8895FC(1);
    v29 = sub_25B8895FC(0);
    v30 = &v81;
    v81 = v27;
    v31 = &v80;
    v80 = v28;
    v32 = &v79;
    v79 = v29;
    sub_25B889650(2, &v81);
    sub_25B889650(1, v30);
    v20 = v58;
    v77 = v63;
    v78 = v43;
    sub_25B889664(&v77, v30, v31, v32);
    v33 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v77 = v64;
      v78 = v44;
      sub_25B889664(&v77, &v81, &v80, &v79);
      v26[1] = 0;
      v77 = v65;
      v78 = v46;
      sub_25B889664(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_25B859000, v49, v50, "Unable to get configuration: %@", v27, 0xCu);
      sub_25B8896B0(v28);
      sub_25B8896B0(v29);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v49);
  (*(v68 + 8))(v71, v67);
  sub_25B9115BC();
  v21 = swift_allocError();
  v22 = v34.n128_u64[1];
  v23 = v35;
  v24 = v36;
  v26[0] = v21;
  *v25 = v34.n128_u64[0];
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  swift_willThrow();
  return v26[2];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkProtocolRef.configuration(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v74 = "configuration(_:)";
  v75 = sub_25B86F500;
  v76 = sub_25B920948;
  v77 = sub_25B88B668;
  v78 = sub_25B910408;
  v79 = sub_25B8A3C9C;
  v80 = sub_25B8A3CE8;
  v81 = sub_25B88B5F4;
  v82 = sub_25B88B5F4;
  v83 = sub_25B88B6B4;
  v84 = sub_25B88B5F4;
  v85 = sub_25B88B5F4;
  v86 = sub_25B8A3EB8;
  v107 = 0;
  v106 = 0;
  v101 = 0uLL;
  v102 = 0;
  v87 = sub_25B946C48();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = v39 - v90;
  v107 = MEMORY[0x28223BE20](rawValue);
  v106 = v1;
  sub_25B946ED8();
  v93 = sub_25B946E98();
  v95 = SCNetworkProtocolSetConfiguration(v92, v93);
  MEMORY[0x277D82BD8](v93);

  if (!v95)
  {
    v2 = v91;
    v55 = 17;
    static SCError.current(_:)(v74, 0x11uLL, 2u, &v103);
    v50 = v103;
    v51 = v104;
    v52 = v105;
    v101 = v103;
    LOBYTE(v102) = v104;
    HIDWORD(v102) = v105;
    v3 = sub_25B91E2A4();
    (*(v88 + 16))(v2, v3, v87);
    sub_25B946ED8();
    v59 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = rawValue;

    v58 = 32;
    v4 = swift_allocObject();
    v5 = v49;
    v53 = v4;
    *(v4 + 16) = v75;
    *(v4 + 24) = v5;

    v6 = swift_allocObject();
    v7 = v50.n128_u64[1];
    v8 = v51;
    v9 = v52;
    v57 = v6;
    *(v6 + 16) = v50.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v71 = sub_25B946C18();
    v72 = sub_25B947458();
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    v56 = 8;
    *(v63 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v53;
    v54 = v10;
    *(v10 + 16) = v76;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v54;
    v64 = v12;
    *(v12 + 16) = v77;
    *(v12 + 24) = v13;
    v65 = swift_allocObject();
    *(v65 + 16) = 64;
    v66 = swift_allocObject();
    *(v66 + 16) = v56;
    v14 = swift_allocObject();
    v15 = v57;
    v60 = v14;
    *(v14 + 16) = v78;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v60;
    v61 = v16;
    *(v16 + 16) = v79;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v61;
    v68 = v18;
    *(v18 + 16) = v80;
    *(v18 + 24) = v19;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v67 = sub_25B947838();
    v69 = v20;

    v21 = v62;
    v22 = v69;
    *v69 = v81;
    v22[1] = v21;

    v23 = v63;
    v24 = v69;
    v69[2] = v82;
    v24[3] = v23;

    v25 = v64;
    v26 = v69;
    v69[4] = v83;
    v26[5] = v25;

    v27 = v65;
    v28 = v69;
    v69[6] = v84;
    v28[7] = v27;

    v29 = v66;
    v30 = v69;
    v69[8] = v85;
    v30[9] = v29;

    v31 = v68;
    v32 = v69;
    v69[10] = v86;
    v32[11] = v31;
    sub_25B8860FC();

    if (os_log_type_enabled(v71, v72))
    {
      v41 = sub_25B9474D8();
      v39[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v40 = 1;
      v42 = sub_25B8895FC(1);
      v43 = sub_25B8895FC(v40);
      v45 = &v100;
      v100 = v41;
      v46 = &v99;
      v99 = v42;
      v47 = &v98;
      v98 = v43;
      v44 = 2;
      sub_25B889650(2, &v100);
      sub_25B889650(v44, v45);
      v33 = v73;
      v96 = v81;
      v97 = v62;
      sub_25B889664(&v96, v45, v46, v47);
      v48 = v33;
      if (v33)
      {

        __break(1u);
      }

      else
      {
        v96 = v82;
        v97 = v63;
        sub_25B889664(&v96, &v100, &v99, &v98);
        v39[6] = 0;
        v96 = v83;
        v97 = v64;
        sub_25B889664(&v96, &v100, &v99, &v98);
        v39[5] = 0;
        v96 = v84;
        v97 = v65;
        sub_25B889664(&v96, &v100, &v99, &v98);
        v39[4] = 0;
        v96 = v85;
        v97 = v66;
        sub_25B889664(&v96, &v100, &v99, &v98);
        v39[3] = 0;
        v96 = v86;
        v97 = v68;
        sub_25B889664(&v96, &v100, &v99, &v98);
        _os_log_impl(&dword_25B859000, v71, v72, "Unable to set configuration %s: %@", v41, 0x16u);
        v39[2] = 1;
        sub_25B8896B0(v42);
        sub_25B8896B0(v43);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v71);
    (*(v88 + 8))(v91, v87);
    sub_25B9115BC();
    v34 = swift_allocError();
    v35 = v50.n128_u64[1];
    v36 = v51;
    v37 = v52;
    v39[1] = v34;
    *v38 = v50.n128_u64[0];
    *(v38 + 8) = v35;
    *(v38 + 16) = v36;
    *(v38 + 20) = v37;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkProtocolRef.enabled(_:)(Swift::Bool a1)
{
  v91 = a1;
  v77 = "enabled(_:)";
  v78 = sub_25B920C80;
  v79 = sub_25B920DA4;
  v80 = sub_25B920E18;
  v81 = sub_25B8A396C;
  v82 = sub_25B910408;
  v83 = sub_25B8A3C9C;
  v84 = sub_25B8A3CE8;
  v85 = sub_25B88B5F4;
  v86 = sub_25B88B5F4;
  v87 = sub_25B8A39B8;
  v88 = sub_25B88B5F4;
  v89 = sub_25B88B5F4;
  v90 = sub_25B8A3EB8;
  v108 = 0;
  v107 = 0;
  v102 = 0uLL;
  v103 = 0;
  v92 = sub_25B946C48();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = v41 - v95;
  v108 = MEMORY[0x28223BE20](v91) & 1;
  v107 = v1;
  v74 = v108 != 0;
  if (!SCNetworkProtocolSetEnabled(v75, v74))
  {
    v2 = v96;
    static SCError.current(_:)(v77, 0xBuLL, 2u, &v104);
    v50 = v104;
    v51 = v105;
    v52 = v106;
    v102 = v104;
    LOBYTE(v103) = v105;
    HIDWORD(v103) = v106;
    v3 = sub_25B91E2A4();
    (*(v93 + 16))(v2, v3, v92);
    v57 = 17;
    v60 = 7;
    v53 = swift_allocObject();
    *(v53 + 16) = v91;
    v4 = swift_allocObject();
    v5 = v50.n128_u64[1];
    v6 = v51;
    v7 = v52;
    v58 = v4;
    *(v4 + 16) = v50.n128_u64[0];
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(v4 + 36) = v7;
    sub_25B8A1C38();

    v72 = sub_25B946C18();
    v73 = sub_25B947458();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = 4;
    v59 = 32;
    v8 = swift_allocObject();
    v9 = v53;
    v54 = v8;
    *(v8 + 16) = v78;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v54;
    v55 = v10;
    *(v10 + 16) = v79;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v55;
    v56 = v12;
    *(v12 + 16) = v80;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v56;
    v65 = v14;
    *(v14 + 16) = v81;
    *(v14 + 24) = v15;
    v66 = swift_allocObject();
    *(v66 + 16) = 64;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v16 = swift_allocObject();
    v17 = v58;
    v61 = v16;
    *(v16 + 16) = v82;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v61;
    v62 = v18;
    *(v18 + 16) = v83;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v62;
    v69 = v20;
    *(v20 + 16) = v84;
    *(v20 + 24) = v21;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v68 = sub_25B947838();
    v70 = v22;

    v23 = v63;
    v24 = v70;
    *v70 = v85;
    v24[1] = v23;

    v25 = v64;
    v26 = v70;
    v70[2] = v86;
    v26[3] = v25;

    v27 = v65;
    v28 = v70;
    v70[4] = v87;
    v28[5] = v27;

    v29 = v66;
    v30 = v70;
    v70[6] = v88;
    v30[7] = v29;

    v31 = v67;
    v32 = v70;
    v70[8] = v89;
    v32[9] = v31;

    v33 = v69;
    v34 = v70;
    v70[10] = v90;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v72, v73))
    {
      v42 = sub_25B9474D8();
      v41[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v43 = sub_25B8895FC(1);
      v44 = sub_25B8895FC(0);
      v46 = &v101;
      v101 = v42;
      v47 = &v100;
      v100 = v43;
      v48 = &v99;
      v99 = v44;
      v45 = 2;
      sub_25B889650(2, &v101);
      sub_25B889650(v45, v46);
      v35 = v76;
      v97 = v85;
      v98 = v63;
      sub_25B889664(&v97, v46, v47, v48);
      v49 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v97 = v86;
        v98 = v64;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[4] = 0;
        v97 = v87;
        v98 = v65;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[3] = 0;
        v97 = v88;
        v98 = v66;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[2] = 0;
        v97 = v89;
        v98 = v67;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[1] = 0;
        v97 = v90;
        v98 = v69;
        sub_25B889664(&v97, &v101, &v100, &v99);
        _os_log_impl(&dword_25B859000, v72, v73, "Unable to set enabled %{BOOL}d: %@", v42, 0x12u);
        sub_25B8896B0(v43);
        sub_25B8896B0(v44);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v72);
    (*(v93 + 8))(v96, v92);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v50.n128_u64[1];
    v38 = v51;
    v39 = v52;
    v41[0] = v36;
    *v40 = v50.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

Swift::String_optional __swiftcall SCNetworkProtocolRef.type()()
{
  v9 = SCNetworkProtocolGetProtocolType(v0);
  if (v9)
  {
    v5 = sub_25B946F78();
    v6 = v1;
    MEMORY[0x277D82BD8](v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v2 = v7;
  v3 = v8;
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_25B920780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9207C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920800()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B920840()
{
  v2 = qword_27FBAB738;
  if (!qword_27FBAB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB730, &qword_25B94C888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB738);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B9208C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25B920908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920948()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB730, &qword_25B94C888);
  v1 = sub_25B9209B0();

  return sub_25B889718(v5, v3, v4, v1);
}

unint64_t sub_25B9209B0()
{
  v2 = qword_27FBAB740;
  if (!qword_27FBAB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB730, &qword_25B94C888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B920ABC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920DD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920E24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920E64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920F3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920F7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B920FBC()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11A8);
  __swift_project_value_buffer(v1, qword_27FBB11A8);
  return sub_25B946C38();
}

uint64_t sub_25B921008()
{
  if (qword_27FBAAA90 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11A8);
}

uint64_t sub_25B921074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B921008();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.establishDefaultConfiguration()()
{
  v51 = "establishDefaultConfiguration()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCNetworkServiceEstablishDefaultConfiguration(v74))
  {
    v0 = v63;
    static SCError.current(_:)(v51, 0x1FuLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B921008();
    (*(v60 + 16))(v0, v1, v59);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to establish default configuration for service: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.interface()()
{
  v53 = "interface()";
  v54 = sub_25B910408;
  v55 = sub_25B8A3C9C;
  v56 = sub_25B8A3CE8;
  v57 = sub_25B88B5F4;
  v58 = sub_25B88B5F4;
  v59 = sub_25B8A3EB8;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v67 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v26 - v64;
  v78 = MEMORY[0x28223BE20](v60);
  v66 = SCNetworkServiceGetInterface(v78);
  if (v66)
  {
    v51 = v66;
    result = v66;
    v67 = v66;
  }

  else
  {
    v1 = v65;
    static SCError.current(_:)(v53, 0xBuLL, 2u, &v75);
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v2 = sub_25B921008();
    (*(v62 + 16))(v1, v2, v61);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v54;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v57;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v58;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v59;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v72;
      v72 = v27;
      v31 = &v71;
      v71 = v28;
      v32 = &v70;
      v70 = v29;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v30);
      v20 = v52;
      v68 = v57;
      v69 = v43;
      sub_25B889664(&v68, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v68 = v58;
        v69 = v44;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v26[2] = 0;
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to get service interface: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[1] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[3];
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.serviceID()()
{
  v59 = "serviceID()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkServiceGetServiceID(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    static SCError.current(_:)(v59, 0xBuLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B921008();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get service id: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.name()()
{
  v59 = "name()";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v84 = 0;
  v79 = 0uLL;
  v80 = 0;
  v73 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v29 - v70;
  v84 = MEMORY[0x28223BE20](v66);
  v72 = SCNetworkServiceGetName(v84);
  if (v72)
  {
    v57 = v72;
    v54 = v72;
    v73 = v72;
    MEMORY[0x277D82BE0](v72);
    v55 = sub_25B946F78();
    v56 = v0;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v1 = v55;
    v2 = v56;
  }

  else
  {
    v3 = v71;
    static SCError.current(_:)(v59, 6uLL, 2u, &v81);
    v37 = v81;
    v38 = v82;
    v39 = v83;
    v79 = v81;
    LOBYTE(v80) = v82;
    HIDWORD(v80) = v83;
    v4 = sub_25B921008();
    (*(v68 + 16))(v3, v4, v67);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v62;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v63;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v64;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v65;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v78;
      v78 = v30;
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      sub_25B889650(2, &v78);
      sub_25B889650(1, v33);
      v22 = v58;
      v74 = v63;
      v75 = v46;
      sub_25B889664(&v74, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v74 = v64;
        v75 = v47;
        sub_25B889664(&v74, &v78, &v77, &v76);
        v29[3] = 0;
        v74 = v65;
        v75 = v49;
        sub_25B889664(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to get service name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v29[2] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.name(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v55 = "name(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v62 = sub_25B946C48();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v66 = v29 - v65;
  v83 = v3;
  v84 = v2;
  v82 = v1;
  sub_25B946ED8();
  v69 = sub_25B946F58();
  v71 = SCNetworkServiceSetName(v68, v69);
  MEMORY[0x277D82BD8](v69);

  if (!v71)
  {
    v4 = v66;
    static SCError.current(_:)(v55, 8uLL, 2u, &v79);
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v5 = sub_25B921008();
    (*(v63 + 16))(v4, v5, v62);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v58;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v59;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v60;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v61;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v33);
      v23 = v54;
      v72 = v59;
      v73 = v46;
      sub_25B889664(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v60;
        v73 = v47;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v29[1] = 0;
        v72 = v61;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set service name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v63 + 8))(v66, v62);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[0] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.enable(_:)(Swift::Bool a1)
{
  v62 = a1;
  v55 = "enable(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v79 = 0;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v27 - v66;
  v79 = MEMORY[0x28223BE20](v62) & 1;
  v78 = v1;
  v52 = v79 != 0;
  if (!SCNetworkServiceSetEnabled(v53, v52))
  {
    v2 = v67;
    static SCError.current(_:)(v55, 0xAuLL, 2u, &v75);
    v35 = v75;
    v36 = v76;
    v37 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v3 = sub_25B921008();
    (*(v64 + 16))(v2, v3, v63);
    v41 = 7;
    v4 = swift_allocObject();
    v5 = v35.n128_u64[1];
    v6 = v36;
    v7 = v37;
    v39 = v4;
    *(v4 + 16) = v35.n128_u64[0];
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(v4 + 36) = v7;
    sub_25B8A1C38();

    v50 = sub_25B946C18();
    v51 = sub_25B947458();
    v38 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 64;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v8 = swift_allocObject();
    v9 = v39;
    v42 = v8;
    *(v8 + 16) = v56;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v42;
    v43 = v10;
    *(v10 + 16) = v57;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v43;
    v47 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v14;

    v15 = v44;
    v16 = v48;
    *v48 = v59;
    v16[1] = v15;

    v17 = v45;
    v18 = v48;
    v48[2] = v60;
    v18[3] = v17;

    v19 = v47;
    v20 = v48;
    v48[4] = v61;
    v20[5] = v19;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1);
      v30 = sub_25B8895FC(0);
      v31 = &v72;
      v72 = v28;
      v32 = &v71;
      v71 = v29;
      v33 = &v70;
      v70 = v30;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v31);
      v21 = v54;
      v68 = v59;
      v69 = v44;
      sub_25B889664(&v68, v31, v32, v33);
      v34 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v68 = v60;
        v69 = v45;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v27[1] = 0;
        v68 = v61;
        v69 = v47;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to enable service name: %@", v28, 0xCu);
        sub_25B8896B0(v29);
        sub_25B8896B0(v30);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v22 = swift_allocError();
    v23 = v35.n128_u64[1];
    v24 = v36;
    v25 = v37;
    v27[0] = v22;
    *v26 = v35.n128_u64[0];
    *(v26 + 8) = v23;
    *(v26 + 16) = v24;
    *(v26 + 20) = v25;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.remove()()
{
  v51 = "remove()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCNetworkServiceRemove(v74))
  {
    v0 = v63;
    static SCError.current(_:)(v51, 8uLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B921008();
    (*(v60 + 16))(v0, v1, v59);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to remove network service: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

uint64_t SCNetworkServiceRef.protocols()()
{
  v60 = "protocols()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v88 = 0;
  v83 = 0uLL;
  v84 = 0;
  v77 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v26 - v71;
  v88 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkServiceCopyProtocols(v88);
  if (v73)
  {
    v58 = v73;
    v56 = v73;
    v77 = v73;
    MEMORY[0x277D82BE0](v73);
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v55 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB748, &qword_25B94C890);
      MEMORY[0x277D82BE0](v55);
      sub_25B9281C4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v55);
      if (v74)
      {
        v53 = v74;
LABEL_7:
        v75 = v53;
        if (v53)
        {
          v76 = v75;
        }

        else
        {
          v52 = 0;
          type metadata accessor for SCNetworkProtocol();
          v76 = sub_25B947838();
          if (v75)
          {
            sub_25B86CFA0(&v75);
          }
        }

        v51 = v76;
        MEMORY[0x277D82BD8](v56);
        return v51;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v56);
    }

    v53 = 0;
    goto LABEL_7;
  }

  v1 = v72;
  static SCError.current(_:)(v60, 0xBuLL, 2u, &v85);
  v34 = v85;
  v35 = v86;
  v36 = v87;
  v83 = v85;
  LOBYTE(v84) = v86;
  HIDWORD(v84) = v87;
  v2 = sub_25B921008();
  (*(v69 + 16))(v1, v2, v68);
  v40 = 7;
  v3 = swift_allocObject();
  v4 = v34.n128_u64[1];
  v5 = v35;
  v6 = v36;
  v38 = v3;
  *(v3 + 16) = v34.n128_u64[0];
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  sub_25B8A1C38();

  v49 = sub_25B946C18();
  v50 = sub_25B947458();
  v37 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 64;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v39 = 32;
  v7 = swift_allocObject();
  v8 = v38;
  v41 = v7;
  *(v7 + 16) = v61;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v41;
  v42 = v9;
  *(v9 + 16) = v62;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v42;
  v46 = v11;
  *(v11 + 16) = v63;
  *(v11 + 24) = v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v45 = sub_25B947838();
  v47 = v13;

  v14 = v43;
  v15 = v47;
  *v47 = v64;
  v15[1] = v14;

  v16 = v44;
  v17 = v47;
  v47[2] = v65;
  v17[3] = v16;

  v18 = v46;
  v19 = v47;
  v47[4] = v66;
  v19[5] = v18;
  sub_25B8860FC();

  if (os_log_type_enabled(v49, v50))
  {
    v27 = sub_25B9474D8();
    v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v28 = sub_25B8895FC(1);
    v29 = sub_25B8895FC(0);
    v30 = &v82;
    v82 = v27;
    v31 = &v81;
    v81 = v28;
    v32 = &v80;
    v80 = v29;
    sub_25B889650(2, &v82);
    sub_25B889650(1, v30);
    v20 = v59;
    v78 = v64;
    v79 = v43;
    sub_25B889664(&v78, v30, v31, v32);
    v33 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v78 = v65;
      v79 = v44;
      sub_25B889664(&v78, &v82, &v81, &v80);
      v26[2] = 0;
      v78 = v66;
      v79 = v46;
      sub_25B889664(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_25B859000, v49, v50, "Unable to get protocols: %@", v27, 0xCu);
      sub_25B8896B0(v28);
      sub_25B8896B0(v29);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v49);
  (*(v69 + 8))(v72, v68);
  sub_25B9115BC();
  v21 = swift_allocError();
  v22 = v34.n128_u64[1];
  v23 = v35;
  v24 = v36;
  v26[1] = v21;
  *v25 = v34.n128_u64[0];
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  swift_willThrow();
  return v26[3];
}

SCNetworkProtocolRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.protocol(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v77 = "protocol(_:)";
  v78 = sub_25B8994FC;
  v79 = sub_25B88B668;
  v80 = sub_25B910408;
  v81 = sub_25B8A3C9C;
  v82 = sub_25B8A3CE8;
  v83 = sub_25B88B5F4;
  v84 = sub_25B88B5F4;
  v85 = sub_25B88B6B4;
  v86 = sub_25B88B5F4;
  v87 = sub_25B88B5F4;
  v88 = sub_25B8A3EB8;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v105 = 0uLL;
  v106 = 0;
  v99 = 0;
  v89 = sub_25B946C48();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v93 = v42 - v92;
  v111 = v3;
  v112 = v2;
  v110 = v1;
  sub_25B946ED8();
  v96 = sub_25B946F58();
  v98 = SCNetworkServiceCopyProtocol(v95, v96);
  MEMORY[0x277D82BD8](v96);

  if (v98)
  {
    v75 = v98;
    result = v98;
    v99 = v98;
  }

  else
  {
    v5 = v93;
    static SCError.current(_:)(v77, 0xCuLL, 2u, &v107);
    v52 = v107;
    v53 = v108;
    v54 = v109;
    v105 = v107;
    LOBYTE(v106) = v108;
    HIDWORD(v106) = v109;
    v6 = sub_25B921008();
    (*(v90 + 16))(v5, v6, v89);
    sub_25B946ED8();
    v60 = 32;
    v61 = 7;
    v7 = swift_allocObject();
    v8 = object;
    v55 = v7;
    *(v7 + 16) = countAndFlagsBits;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v52.n128_u64[1];
    v11 = v53;
    v12 = v54;
    v59 = v9;
    *(v9 + 16) = v52.n128_u64[0];
    *(v9 + 24) = v10;
    *(v9 + 32) = v11;
    *(v9 + 36) = v12;
    sub_25B8A1C38();

    v73 = sub_25B946C18();
    v74 = sub_25B947458();
    v57 = 17;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    v58 = 8;
    *(v65 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v55;
    v56 = v13;
    *(v13 + 16) = v78;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v56;
    v66 = v15;
    *(v15 + 16) = v79;
    *(v15 + 24) = v16;
    v67 = swift_allocObject();
    *(v67 + 16) = 64;
    v68 = swift_allocObject();
    *(v68 + 16) = v58;
    v17 = swift_allocObject();
    v18 = v59;
    v62 = v17;
    *(v17 + 16) = v80;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v62;
    v63 = v19;
    *(v19 + 16) = v81;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v63;
    v70 = v21;
    *(v21 + 16) = v82;
    *(v21 + 24) = v22;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v69 = sub_25B947838();
    v71 = v23;

    v24 = v64;
    v25 = v71;
    *v71 = v83;
    v25[1] = v24;

    v26 = v65;
    v27 = v71;
    v71[2] = v84;
    v27[3] = v26;

    v28 = v66;
    v29 = v71;
    v71[4] = v85;
    v29[5] = v28;

    v30 = v67;
    v31 = v71;
    v71[6] = v86;
    v31[7] = v30;

    v32 = v68;
    v33 = v71;
    v71[8] = v87;
    v33[9] = v32;

    v34 = v70;
    v35 = v71;
    v71[10] = v88;
    v35[11] = v34;
    sub_25B8860FC();

    if (os_log_type_enabled(v73, v74))
    {
      v44 = sub_25B9474D8();
      v42[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v43 = 1;
      v45 = sub_25B8895FC(1);
      v46 = sub_25B8895FC(v43);
      v48 = &v104;
      v104 = v44;
      v49 = &v103;
      v103 = v45;
      v50 = &v102;
      v102 = v46;
      v47 = 2;
      sub_25B889650(2, &v104);
      sub_25B889650(v47, v48);
      v36 = v76;
      v100 = v83;
      v101 = v64;
      sub_25B889664(&v100, v48, v49, v50);
      v51 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v100 = v84;
        v101 = v65;
        sub_25B889664(&v100, &v104, &v103, &v102);
        v42[6] = 0;
        v100 = v85;
        v101 = v66;
        sub_25B889664(&v100, &v104, &v103, &v102);
        v42[5] = 0;
        v100 = v86;
        v101 = v67;
        sub_25B889664(&v100, &v104, &v103, &v102);
        v42[4] = 0;
        v100 = v87;
        v101 = v68;
        sub_25B889664(&v100, &v104, &v103, &v102);
        v42[3] = 0;
        v100 = v88;
        v101 = v70;
        sub_25B889664(&v100, &v104, &v103, &v102);
        _os_log_impl(&dword_25B859000, v73, v74, "Unable to get protocol %s: %@", v44, 0x16u);
        v42[2] = 1;
        sub_25B8896B0(v45);
        sub_25B8896B0(v46);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v73);
    (*(v90 + 8))(v93, v89);
    sub_25B9115BC();
    v37 = swift_allocError();
    v38 = v52.n128_u64[1];
    v39 = v53;
    v40 = v54;
    v42[1] = v37;
    *v41 = v52.n128_u64[0];
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    *(v41 + 20) = v40;
    swift_willThrow();
    return v42[7];
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.add(protocolType:)(Swift::String protocolType)
{
  countAndFlagsBits = protocolType._countAndFlagsBits;
  object = protocolType._object;
  v75 = "add(protocolType:)";
  v76 = sub_25B8994FC;
  v77 = sub_25B88B668;
  v78 = sub_25B910408;
  v79 = sub_25B8A3C9C;
  v80 = sub_25B8A3CE8;
  v81 = sub_25B88B5F4;
  v82 = sub_25B88B5F4;
  v83 = sub_25B88B6B4;
  v84 = sub_25B88B5F4;
  v85 = sub_25B88B5F4;
  v86 = sub_25B8A3EB8;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v102 = 0uLL;
  v103 = 0;
  v87 = sub_25B946C48();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v91 = v41 - v90;
  v108 = v3;
  v109 = v2;
  v107 = v1;
  sub_25B946ED8();
  v94 = sub_25B946F58();
  v96 = SCNetworkServiceAddProtocolType(v93, v94);
  MEMORY[0x277D82BD8](v94);

  if (!v96)
  {
    v4 = v91;
    static SCError.current(_:)(v75, 0x12uLL, 2u, &v104);
    v51 = v104;
    v52 = v105;
    v53 = v106;
    v102 = v104;
    LOBYTE(v103) = v105;
    HIDWORD(v103) = v106;
    v5 = sub_25B921008();
    (*(v88 + 16))(v4, v5, v87);
    sub_25B946ED8();
    v59 = 32;
    v60 = 7;
    v6 = swift_allocObject();
    v7 = object;
    v54 = v6;
    *(v6 + 16) = countAndFlagsBits;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v51.n128_u64[1];
    v10 = v52;
    v11 = v53;
    v58 = v8;
    *(v8 + 16) = v51.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v72 = sub_25B946C18();
    v73 = sub_25B947458();
    v56 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    v57 = 8;
    *(v64 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v54;
    v55 = v12;
    *(v12 + 16) = v76;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v55;
    v65 = v14;
    *(v14 + 16) = v77;
    *(v14 + 24) = v15;
    v66 = swift_allocObject();
    *(v66 + 16) = 64;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v16 = swift_allocObject();
    v17 = v58;
    v61 = v16;
    *(v16 + 16) = v78;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v61;
    v62 = v18;
    *(v18 + 16) = v79;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v62;
    v69 = v20;
    *(v20 + 16) = v80;
    *(v20 + 24) = v21;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v68 = sub_25B947838();
    v70 = v22;

    v23 = v63;
    v24 = v70;
    *v70 = v81;
    v24[1] = v23;

    v25 = v64;
    v26 = v70;
    v70[2] = v82;
    v26[3] = v25;

    v27 = v65;
    v28 = v70;
    v70[4] = v83;
    v28[5] = v27;

    v29 = v66;
    v30 = v70;
    v70[6] = v84;
    v30[7] = v29;

    v31 = v67;
    v32 = v70;
    v70[8] = v85;
    v32[9] = v31;

    v33 = v69;
    v34 = v70;
    v70[10] = v86;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v72, v73))
    {
      v43 = sub_25B9474D8();
      v41[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v42 = 1;
      v44 = sub_25B8895FC(1);
      v45 = sub_25B8895FC(v42);
      v47 = &v101;
      v101 = v43;
      v48 = &v100;
      v100 = v44;
      v49 = &v99;
      v99 = v45;
      v46 = 2;
      sub_25B889650(2, &v101);
      sub_25B889650(v46, v47);
      v35 = v74;
      v97 = v81;
      v98 = v63;
      sub_25B889664(&v97, v47, v48, v49);
      v50 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v97 = v82;
        v98 = v64;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[6] = 0;
        v97 = v83;
        v98 = v65;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[5] = 0;
        v97 = v84;
        v98 = v66;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[4] = 0;
        v97 = v85;
        v98 = v67;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[3] = 0;
        v97 = v86;
        v98 = v69;
        sub_25B889664(&v97, &v101, &v100, &v99);
        _os_log_impl(&dword_25B859000, v72, v73, "Unable to add protocol type %s: %@", v43, 0x16u);
        v41[2] = 1;
        sub_25B8896B0(v44);
        sub_25B8896B0(v45);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v72);
    (*(v88 + 8))(v91, v87);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v51.n128_u64[1];
    v38 = v52;
    v39 = v53;
    v41[1] = v36;
    *v40 = v51.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.remove(protocolType:)(Swift::String protocolType)
{
  countAndFlagsBits = protocolType._countAndFlagsBits;
  object = protocolType._object;
  v75 = "remove(protocolType:)";
  v76 = sub_25B8994FC;
  v77 = sub_25B88B668;
  v78 = sub_25B910408;
  v79 = sub_25B8A3C9C;
  v80 = sub_25B8A3CE8;
  v81 = sub_25B88B5F4;
  v82 = sub_25B88B5F4;
  v83 = sub_25B88B6B4;
  v84 = sub_25B88B5F4;
  v85 = sub_25B88B5F4;
  v86 = sub_25B8A3EB8;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v102 = 0uLL;
  v103 = 0;
  v87 = sub_25B946C48();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v91 = v41 - v90;
  v108 = v3;
  v109 = v2;
  v107 = v1;
  sub_25B946ED8();
  v94 = sub_25B946F58();
  v96 = SCNetworkServiceRemoveProtocolType(v93, v94);
  MEMORY[0x277D82BD8](v94);

  if (!v96)
  {
    v4 = v91;
    static SCError.current(_:)(v75, 0x15uLL, 2u, &v104);
    v51 = v104;
    v52 = v105;
    v53 = v106;
    v102 = v104;
    LOBYTE(v103) = v105;
    HIDWORD(v103) = v106;
    v5 = sub_25B921008();
    (*(v88 + 16))(v4, v5, v87);
    sub_25B946ED8();
    v59 = 32;
    v60 = 7;
    v6 = swift_allocObject();
    v7 = object;
    v54 = v6;
    *(v6 + 16) = countAndFlagsBits;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v51.n128_u64[1];
    v10 = v52;
    v11 = v53;
    v58 = v8;
    *(v8 + 16) = v51.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v72 = sub_25B946C18();
    v73 = sub_25B947458();
    v56 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    v57 = 8;
    *(v64 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v54;
    v55 = v12;
    *(v12 + 16) = v76;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v55;
    v65 = v14;
    *(v14 + 16) = v77;
    *(v14 + 24) = v15;
    v66 = swift_allocObject();
    *(v66 + 16) = 64;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v16 = swift_allocObject();
    v17 = v58;
    v61 = v16;
    *(v16 + 16) = v78;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v61;
    v62 = v18;
    *(v18 + 16) = v79;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v62;
    v69 = v20;
    *(v20 + 16) = v80;
    *(v20 + 24) = v21;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v68 = sub_25B947838();
    v70 = v22;

    v23 = v63;
    v24 = v70;
    *v70 = v81;
    v24[1] = v23;

    v25 = v64;
    v26 = v70;
    v70[2] = v82;
    v26[3] = v25;

    v27 = v65;
    v28 = v70;
    v70[4] = v83;
    v28[5] = v27;

    v29 = v66;
    v30 = v70;
    v70[6] = v84;
    v30[7] = v29;

    v31 = v67;
    v32 = v70;
    v70[8] = v85;
    v32[9] = v31;

    v33 = v69;
    v34 = v70;
    v70[10] = v86;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v72, v73))
    {
      v43 = sub_25B9474D8();
      v41[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v42 = 1;
      v44 = sub_25B8895FC(1);
      v45 = sub_25B8895FC(v42);
      v47 = &v101;
      v101 = v43;
      v48 = &v100;
      v100 = v44;
      v49 = &v99;
      v99 = v45;
      v46 = 2;
      sub_25B889650(2, &v101);
      sub_25B889650(v46, v47);
      v35 = v74;
      v97 = v81;
      v98 = v63;
      sub_25B889664(&v97, v47, v48, v49);
      v50 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v97 = v82;
        v98 = v64;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[6] = 0;
        v97 = v83;
        v98 = v65;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[5] = 0;
        v97 = v84;
        v98 = v66;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[4] = 0;
        v97 = v85;
        v98 = v67;
        sub_25B889664(&v97, &v101, &v100, &v99);
        v41[3] = 0;
        v97 = v86;
        v98 = v69;
        sub_25B889664(&v97, &v101, &v100, &v99);
        _os_log_impl(&dword_25B859000, v72, v73, "Unable to remove protocol type %s: %@", v43, 0x16u);
        v41[2] = 1;
        sub_25B8896B0(v44);
        sub_25B8896B0(v45);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v72);
    (*(v88 + 8))(v91, v87);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v51.n128_u64[1];
    v38 = v52;
    v39 = v53;
    v41[1] = v36;
    *v40 = v51.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

uint64_t sub_25B927828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9278A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B92796C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9279AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9279EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927BF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927C34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927D38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927E7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B927FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B9281C4()
{
  v2 = qword_27FBAB750;
  if (!qword_27FBAB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB748, &qword_25B94C890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B92824C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928310()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9283E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9284A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B92856C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9285AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9286C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9287C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9288A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9288E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B928960()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11C0);
  __swift_project_value_buffer(v1, qword_27FBB11C0);
  return sub_25B946C38();
}

uint64_t sub_25B9289AC()
{
  if (qword_27FBAAA98 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11C0);
}

uint64_t sub_25B928A18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B9289AC();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkSetRef.addService(service:)(SCNetworkServiceRef service)
{
  v61 = service;
  v54 = "addService(service:)";
  v55 = sub_25B910408;
  v56 = sub_25B8A3C9C;
  v57 = sub_25B8A3CE8;
  v58 = sub_25B88B5F4;
  v59 = sub_25B88B5F4;
  v60 = sub_25B8A3EB8;
  v79 = 0;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v62);
  v67 = v28 - v66;
  v79 = v2;
  v78 = v1;
  if (!SCNetworkSetAddService(v1, v2))
  {
    v3 = v67;
    static SCError.current(_:)(v54, 0x14uLL, 2u, &v75);
    v36 = v75;
    v37 = v76;
    v38 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v4 = sub_25B9289AC();
    (*(v64 + 16))(v3, v4, v63);
    v42 = 7;
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v57;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v58;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v59;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v60;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v72;
      v72 = v29;
      v33 = &v71;
      v71 = v30;
      v34 = &v70;
      v70 = v31;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v32);
      v22 = v53;
      v68 = v58;
      v69 = v45;
      sub_25B889664(&v68, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v28[1] = 0;
        v68 = v60;
        v69 = v48;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to add service to network set: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[0] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkSetRef.removeService(service:)(SCNetworkServiceRef service)
{
  v61 = service;
  v54 = "removeService(service:)";
  v55 = sub_25B910408;
  v56 = sub_25B8A3C9C;
  v57 = sub_25B8A3CE8;
  v58 = sub_25B88B5F4;
  v59 = sub_25B88B5F4;
  v60 = sub_25B8A3EB8;
  v79 = 0;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v62);
  v67 = v28 - v66;
  v79 = v2;
  v78 = v1;
  if (!SCNetworkSetRemoveService(v1, v2))
  {
    v3 = v67;
    static SCError.current(_:)(v54, 0x17uLL, 2u, &v75);
    v36 = v75;
    v37 = v76;
    v38 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v4 = sub_25B9289AC();
    (*(v64 + 16))(v3, v4, v63);
    v42 = 7;
    v5 = swift_allocObject();
    v6 = v36.n128_u64[1];
    v7 = v37;
    v8 = v38;
    v40 = v5;
    *(v5 + 16) = v36.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v9 = swift_allocObject();
    v10 = v40;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v44 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v44;
    v48 = v13;
    *(v13 + 16) = v57;
    *(v13 + 24) = v14;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v15;

    v16 = v45;
    v17 = v49;
    *v49 = v58;
    v17[1] = v16;

    v18 = v46;
    v19 = v49;
    v49[2] = v59;
    v19[3] = v18;

    v20 = v48;
    v21 = v49;
    v49[4] = v60;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1);
      v31 = sub_25B8895FC(0);
      v32 = &v72;
      v72 = v29;
      v33 = &v71;
      v71 = v30;
      v34 = &v70;
      v70 = v31;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v32);
      v22 = v53;
      v68 = v58;
      v69 = v45;
      sub_25B889664(&v68, v32, v33, v34);
      v35 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v28[1] = 0;
        v68 = v60;
        v69 = v48;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to remove service from network set: %@", v29, 0xCu);
        sub_25B8896B0(v30);
        sub_25B8896B0(v31);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v36.n128_u64[1];
    v25 = v37;
    v26 = v38;
    v28[0] = v23;
    *v27 = v36.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

uint64_t SCNetworkSetRef.services()()
{
  v7 = SCNetworkSetCopyServices(v0);
  if (v7)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
      MEMORY[0x277D82BE0](v6);
      sub_25B929EB4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v6);
      if (v8)
      {
        v5 = v8;
LABEL_7:
        v4 = v5;
        goto LABEL_8;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:
  if (v4)
  {
    return v4;
  }

  sub_25B9115BC();
  swift_allocError();
  SCError.init(context:rawValue:)("services()", 0xAuLL, 2u, 1004, v2);
  swift_willThrow();
  return v3;
}

uint64_t sub_25B929CB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B929CF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B929D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B929DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B929E34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B929E74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B929EB4()
{
  v2 = qword_27FBAB760;
  if (!qword_27FBAB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB758, &qword_25B94C898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B929F60()
{
  sub_25B946E58();
  sub_25B947838();
  sub_25B939428();
  return sub_25B947548();
}

uint64_t sub_25B929FC4()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11D8);
  __swift_project_value_buffer(v1, qword_27FBB11D8);
  return sub_25B946C38();
}

uint64_t sub_25B92A010()
{
  if (qword_27FBAAAA0 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11D8);
}

uint64_t sub_25B92A07C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B92A010();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

SCPreferencesRef static SCPreferencesRef.create(_:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v73 = a2;
  v58 = "create(_:)";
  v71 = 0;
  v59 = sub_25B910408;
  v60 = sub_25B8A3C9C;
  v61 = sub_25B8A3CE8;
  v62 = sub_25B88B5F4;
  v63 = sub_25B88B5F4;
  v64 = sub_25B8A3EB8;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v81 = 0uLL;
  v82 = 0;
  v75 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v73);
  v69 = v31 - v68;
  v87 = v4;
  v88 = v3;
  v86 = v2;
  sub_25B946ED8();
  v72 = sub_25B946F58();
  v74 = SCPreferencesCreate(v71, v72, v71);
  MEMORY[0x277D82BD8](v72);

  if (v74)
  {
    v56 = v74;
    result = v74;
    v75 = v74;
  }

  else
  {
    v6 = v69;
    static SCError.current(_:)(v58, 0xAuLL, 2u, &v83);
    v39 = v83;
    v40 = v84;
    v41 = v85;
    v81 = v83;
    LOBYTE(v82) = v84;
    HIDWORD(v82) = v85;
    v7 = sub_25B92A010();
    (*(v66 + 16))(v6, v7, v65);
    v45 = 7;
    v8 = swift_allocObject();
    v9 = v39.n128_u64[1];
    v10 = v40;
    v11 = v41;
    v43 = v8;
    *(v8 + 16) = v39.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v54 = sub_25B946C18();
    v55 = sub_25B947458();
    v42 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 64;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v12 = swift_allocObject();
    v13 = v43;
    v46 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v47 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v47;
    v51 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v50 = sub_25B947838();
    v52 = v18;

    v19 = v48;
    v20 = v52;
    *v52 = v62;
    v20[1] = v19;

    v21 = v49;
    v22 = v52;
    v52[2] = v63;
    v22[3] = v21;

    v23 = v51;
    v24 = v52;
    v52[4] = v64;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v54, v55))
    {
      v32 = sub_25B9474D8();
      v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v33 = sub_25B8895FC(1);
      v34 = sub_25B8895FC(0);
      v35 = &v80;
      v80 = v32;
      v36 = &v79;
      v79 = v33;
      v37 = &v78;
      v78 = v34;
      sub_25B889650(2, &v80);
      sub_25B889650(1, v35);
      v25 = v57;
      v76 = v62;
      v77 = v48;
      sub_25B889664(&v76, v35, v36, v37);
      v38 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v76 = v63;
        v77 = v49;
        sub_25B889664(&v76, &v80, &v79, &v78);
        v31[1] = 0;
        v76 = v64;
        v77 = v51;
        sub_25B889664(&v76, &v80, &v79, &v78);
        _os_log_impl(&dword_25B859000, v54, v55, "Unable to create SCPreferences: %@", v32, 0xCu);
        sub_25B8896B0(v33);
        sub_25B8896B0(v34);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v54);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v39.n128_u64[1];
    v28 = v40;
    v29 = v41;
    v31[0] = v26;
    *v30 = v39.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    swift_willThrow();
    return v31[2];
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.commit()()
{
  v51 = "commit()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCPreferencesCommitChanges(v74))
  {
    v0 = v63;
    static SCError.current(_:)(v51, 8uLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B92A010();
    (*(v60 + 16))(v0, v1, v59);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to commit SCPreferences: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.apply()()
{
  v51 = "apply()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCPreferencesApplyChanges(v74))
  {
    v0 = v63;
    v39 = 7;
    static SCError.current(_:)(v51, 7uLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B92A010();
    (*(v60 + 16))(v0, v1, v59);
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to apply SCPreferences: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.interfaceWith(bsdName:)(Swift::String bsdName)
{
  countAndFlagsBits = bsdName._countAndFlagsBits;
  object = bsdName._object;
  v128 = sub_25B8994FC;
  v129 = sub_25B88B668;
  v130 = sub_25B88B5F4;
  v131 = sub_25B88B5F4;
  v132 = sub_25B88B6B4;
  v133 = sub_25B8994FC;
  v134 = sub_25B88B668;
  v135 = sub_25B88B5F4;
  v136 = sub_25B88B5F4;
  v137 = sub_25B88B6B4;
  v138 = "interfaceWith(bsdName:)";
  v170 = 0;
  v171 = 0;
  v169 = 0;
  v168[0] = 0;
  v168[1] = 0;
  v167 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v2 = v139;
  v142 = sub_25B946C48();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](countAndFlagsBits);
  v146 = &v48 - v145;
  v147 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v148 = &v48 - v147;
  v170 = v5;
  v171 = v6;
  v169 = v1;
  v7 = SCPreferencesRef.services()();
  v149 = v2;
  v150 = v7;
  v151 = v2;
  if (!v2)
  {
    v161 = v150;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
    sub_25B937FE4();
    sub_25B947418();
    for (i = v149; ; i = v81)
    {
      v124 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB770, &qword_25B94C8A0);
      sub_25B9475E8();
      v125 = v160;
      if (!v160)
      {
        sub_25B86CFA0(v168);
        v80 = v124;
        goto LABEL_16;
      }

      v123 = v125;
      v119 = v125;
      v159 = v125;
      v8 = SCNetworkServiceRef.interface()();
      v120 = v9;
      v121 = v8;
      v122 = v9;
      if (v9)
      {
        break;
      }

      v115 = v121;
      v157 = v121;
      v10 = SCNetworkInterfaceRef.bsdName()();
      v116 = v11;
      v117 = v10;
      v118 = v11;
      if (v11)
      {
        v48 = v118;
        v49 = 0;
        MEMORY[0x277D82BD8](v115);
        v51 = v48;
        v50 = v49;
        goto LABEL_23;
      }

      v111 = v117._object;
      v112 = MEMORY[0x25F870E10](v117._countAndFlagsBits);

      v113 = v115;
      v114 = v119;
      if (v112)
      {
        v12 = v148;
        v96 = v114;
        v97 = v113;
        v13 = sub_25B92A010();
        (*(v143 + 16))(v12, v13, v142);
        sub_25B946ED8();
        v99 = 32;
        v100 = 7;
        v14 = swift_allocObject();
        v15 = object;
        v101 = v14;
        *(v14 + 16) = countAndFlagsBits;
        *(v14 + 24) = v15;
        v109 = sub_25B946C18();
        v110 = sub_25B947438();
        v98 = 17;
        v103 = swift_allocObject();
        *(v103 + 16) = 32;
        v104 = swift_allocObject();
        *(v104 + 16) = 8;
        v16 = swift_allocObject();
        v17 = v101;
        v102 = v16;
        *(v16 + 16) = v128;
        *(v16 + 24) = v17;
        v18 = swift_allocObject();
        v19 = v102;
        v106 = v18;
        *(v18 + 16) = v129;
        *(v18 + 24) = v19;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
        v105 = sub_25B947838();
        v107 = v20;

        v21 = v103;
        v22 = v107;
        *v107 = v130;
        v22[1] = v21;

        v23 = v104;
        v24 = v107;
        v107[2] = v131;
        v24[3] = v23;

        v25 = v106;
        v26 = v107;
        v107[4] = v132;
        v26[5] = v25;
        sub_25B8860FC();

        if (os_log_type_enabled(v109, v110))
        {
          v89 = sub_25B9474D8();
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
          v90 = sub_25B8895FC(0);
          v91 = sub_25B8895FC(1);
          v92 = &v156;
          v156 = v89;
          v93 = &v155;
          v155 = v90;
          v94 = &v154;
          v154 = v91;
          sub_25B889650(2, &v156);
          sub_25B889650(1, v92);
          v27 = v116;
          v152 = v130;
          v153 = v103;
          sub_25B889664(&v152, v92, v93, v94);
          v95 = v27;
          if (v27)
          {

            __break(1u);
          }

          else
          {
            v152 = v131;
            v153 = v104;
            sub_25B889664(&v152, &v156, &v155, &v154);
            v85 = 0;
            v152 = v132;
            v153 = v106;
            sub_25B889664(&v152, &v156, &v155, &v154);
            v84 = 0;
            _os_log_impl(&dword_25B859000, v109, v110, "Found interface for %s", v89, 0xCu);
            sub_25B8896B0(v90);
            sub_25B8896B0(v91);
            sub_25B9474B8();

            v86 = v84;
          }
        }

        else
        {

          v86 = v116;
        }

        v83 = v86;
        MEMORY[0x277D82BD8](v109);
        (*(v143 + 8))(v148, v142);
        MEMORY[0x277D82BD8](v96);
        sub_25B86CFA0(v168);
        return v97;
      }

      MEMORY[0x277D82BD8](v115);
      v82 = v116;
LABEL_14:
      v81 = v82;
      MEMORY[0x277D82BD8](v119);
    }

    v51 = v122;
    v50 = 0;
LABEL_23:
    v53 = v50;
    v52 = v51;
    v47 = v51;
    v158 = v52;

    v82 = v53;
    goto LABEL_14;
  }

  v54 = v151;
  v55 = 0;
  v46 = v151;
  v167 = v54;

  v80 = v55;
LABEL_16:
  v29 = v146;
  v66 = v80;
  v30 = sub_25B92A010();
  (*(v143 + 16))(v29, v30, v142);
  sub_25B946ED8();
  v68 = 32;
  v69 = 7;
  v31 = swift_allocObject();
  v32 = object;
  v70 = v31;
  *(v31 + 16) = countAndFlagsBits;
  *(v31 + 24) = v32;
  v78 = sub_25B946C18();
  v79 = sub_25B947458();
  v67 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v33 = swift_allocObject();
  v34 = v70;
  v71 = v33;
  *(v33 + 16) = v133;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v71;
  v75 = v35;
  *(v35 + 16) = v134;
  *(v35 + 24) = v36;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v74 = sub_25B947838();
  v76 = v37;

  v38 = v72;
  v39 = v76;
  *v76 = v135;
  v39[1] = v38;

  v40 = v73;
  v41 = v76;
  v76[2] = v136;
  v41[3] = v40;

  v42 = v75;
  v43 = v76;
  v76[4] = v137;
  v43[5] = v42;
  sub_25B8860FC();

  if (os_log_type_enabled(v78, v79))
  {
    v59 = sub_25B9474D8();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v60 = sub_25B8895FC(0);
    v61 = sub_25B8895FC(1);
    v62 = &v166;
    v166 = v59;
    v63 = &v165;
    v165 = v60;
    v64 = &v164;
    v164 = v61;
    sub_25B889650(2, &v166);
    sub_25B889650(1, v62);
    v44 = v66;
    v162 = v135;
    v163 = v72;
    sub_25B889664(&v162, v62, v63, v64);
    v65 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v162 = v136;
      v163 = v73;
      sub_25B889664(&v162, &v166, &v165, &v164);
      v57 = 0;
      v162 = v137;
      v163 = v75;
      sub_25B889664(&v162, &v166, &v165, &v164);
      _os_log_impl(&dword_25B859000, v78, v79, "Unable to find interface for %s", v59, 0xCu);
      sub_25B8896B0(v60);
      sub_25B8896B0(v61);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v78);
  (*(v143 + 8))(v146, v142);
  sub_25B9115BC();
  v56 = swift_allocError();
  SCError.init(context:rawValue:)(v138, 0x17uLL, 2u, 1004, v45);
  swift_willThrow();
  return v87;
}

uint64_t SCPreferencesRef.services()()
{
  v7 = SCNetworkServiceCopyAll(v0);
  if (v7)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
      MEMORY[0x277D82BE0](v6);
      sub_25B929EB4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v6);
      if (v8)
      {
        v5 = v8;
LABEL_7:
        v4 = v5;
        goto LABEL_8;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:
  if (v4)
  {
    return v4;
  }

  sub_25B9115BC();
  swift_allocError();
  SCError.init(context:rawValue:)("services()", 0xAuLL, 2u, 1004, v2);
  swift_willThrow();
  return v3;
}

uint64_t sub_25B92CD04()
{
  v52 = "lock()";
  v53 = sub_25B910408;
  v54 = sub_25B8A3C9C;
  v55 = sub_25B8A3CE8;
  v56 = sub_25B88B5F4;
  v57 = sub_25B88B5F4;
  v58 = sub_25B8A3EB8;
  v75 = 0;
  v70 = 0uLL;
  v71 = 0;
  v60 = sub_25B946C48();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v26 - v63;
  v75 = MEMORY[0x28223BE20](v59);
  result = SCPreferencesLock(v75, 1u);
  if (!result)
  {
    v1 = v64;
    static SCError.current(_:)(v52, 6uLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v2 = sub_25B92A010();
    (*(v61 + 16))(v1, v2, v60);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v53;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v54;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v55;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v56;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v57;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v58;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v69;
      v69 = v27;
      v31 = &v68;
      v68 = v28;
      v32 = &v67;
      v67 = v29;
      sub_25B889650(2, &v69);
      sub_25B889650(1, v30);
      v20 = v51;
      v65 = v56;
      v66 = v43;
      sub_25B889664(&v65, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v65 = v57;
        v66 = v44;
        sub_25B889664(&v65, &v69, &v68, &v67);
        v26[1] = 0;
        v65 = v58;
        v66 = v46;
        sub_25B889664(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to lock SCPreferences: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v61 + 8))(v64, v60);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[0] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25B92D4C0()
{
  v52 = "unlock()";
  v53 = sub_25B910408;
  v54 = sub_25B8A3C9C;
  v55 = sub_25B8A3CE8;
  v56 = sub_25B88B5F4;
  v57 = sub_25B88B5F4;
  v58 = sub_25B8A3EB8;
  v75 = 0;
  v70 = 0uLL;
  v71 = 0;
  v60 = sub_25B946C48();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v26 - v63;
  v75 = MEMORY[0x28223BE20](v59);
  result = SCPreferencesUnlock(v75);
  if (!result)
  {
    v1 = v64;
    static SCError.current(_:)(v52, 8uLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v2 = sub_25B92A010();
    (*(v61 + 16))(v1, v2, v60);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v53;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v54;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v55;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v56;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v57;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v58;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v69;
      v69 = v27;
      v31 = &v68;
      v68 = v28;
      v32 = &v67;
      v67 = v29;
      sub_25B889650(2, &v69);
      sub_25B889650(1, v30);
      v20 = v51;
      v65 = v56;
      v66 = v43;
      sub_25B889664(&v65, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v65 = v57;
        v66 = v44;
        sub_25B889664(&v65, &v69, &v68, &v67);
        v26[1] = 0;
        v65 = v58;
        v66 = v46;
        sub_25B889664(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to unlock SCPreferences: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v61 + 8))(v64, v60);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[0] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    return swift_willThrow();
  }

  return result;
}