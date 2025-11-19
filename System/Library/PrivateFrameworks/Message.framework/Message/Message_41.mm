id sub_1B0A01070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v19 = *a1;
  v40 = *a1;
  v39 = a2;
  v37 = a3;
  v38 = a4;
  v36 = sub_1B0917A3C();
  v20 = v36;
  if ((v36 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    type metadata accessor for PersistenceAdaptor.TransferResult();
    v5 = MEMORY[0x1E69E5928](v19);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v5);
    sub_1B0A1ED2C();
    v6 = swift_allocError();
    v7 = sub_1B0A016E8(v19, v6);
    result = sub_1B0A47D18(v7);
    *a5 = result;
  }

  else
  {
    v35 = v36;
    swift_beginAccess();
    v12 = sub_1B095936C(a3, a4, 0, v20, 2, 0, 1);
    swift_endAccess();
    MEMORY[0x1E69E5928](v19);
    v8 = swift_allocObject();
    *(v8 + 16) = v19;
    v33 = sub_1B0A1EDA8;
    v34 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = 0;
    v31 = sub_1B0A014B8;
    v32 = &block_descriptor_6453;
    v11 = _Block_copy(&aBlock);

    v14 = [v12 map_];
    _Block_release(v11);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5928](v19);
    v9 = swift_allocObject();
    *(v9 + 16) = v19;
    v26 = sub_1B0A1EE14;
    v27 = v9;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = 0;
    v24 = sub_1B0A0172C;
    v25 = &block_descriptor_6459;
    v13 = _Block_copy(&v21);

    v15 = [v14 recover_];
    _Block_release(v13);
    MEMORY[0x1E69E5920](v14);
    result = v15;
    *a5 = v15;
  }

  return result;
}

char *sub_1B0A013E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for PersistenceAdaptor.TransferResult();
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a1);
  result = sub_1B0A01474(a2, a1);
  a3[3] = v6;
  *a3 = result;
  return result;
}

id sub_1B0A014B8(uint64_t a1, void *a2)
{
  v18 = a2;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);

  v2 = v18;
  v17(v19, v18);
  if (v20)
  {
    v10 = v20;
    v13 = v19;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v8 = *(v10 - 8);
    v9 = v8;
    v3 = *(v8 + 64);
    v12 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v11 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))();
    v14 = sub_1B0E46A58();
    (*(v9 + 8))(v11, v10);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v7 = v15;

  v5 = v7;

  return v5;
}

id sub_1B0A01654(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  type metadata accessor for PersistenceAdaptor.TransferResult();
  MEMORY[0x1E69E5928](a2);
  v2 = a1;
  v3 = sub_1B0A016E8(a2, a1);
  return sub_1B0A47D18(v3);
}

id sub_1B0A0172C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  v6 = v3(a2);

  return v6;
}

uint64_t sub_1B0A017B8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v1007 = v2;
  v1006 = v3;
  v1008 = v4;
  v1018 = v1;
  v1021 = 0;
  v1058 = 0;
  v1057 = 0;
  v1056 = 0;
  v1055 = 0;
  v1053 = 0;
  v1051 = 0;
  v1048 = 0;
  v1046 = 0;
  v1040[1] = 0;
  v1040[0] = 0;
  v1037 = 0;
  v1035 = 0;
  v1000 = _s6LoggerVMa();
  v1002 = *(*(v1000 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](0);
  v1004 = (v1002 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1001 = &v255 - v1004;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v1003 = &v255 - v1004;
  MEMORY[0x1EEE9AC00](v6);
  v1005 = &v255 - v1004;
  v1009 = sub_1B0E439A8();
  v1010 = *(v1009 - 8);
  v1011 = v1010;
  v1013 = *(v1010 + 64);
  v7 = MEMORY[0x1EEE9AC00](v1018);
  v1015 = (v1013 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1012 = &v255 - v1015;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v1014 = &v255 - v1015;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v1016 = &v255 - v1015;
  v1058 = v9;
  v1057 = v10;
  v1056 = v11;
  v1055 = v12;
  v13 = v9;
  v1022 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3768, &qword_1B0EA2D70);
  v1017 = v1022;
  v14 = v1018;
  sub_1B0A1E924();
  sub_1B0E46B48();

  v1020 = v1054;
  v1019 = v1054;
  v1053 = v1054;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1052[2] = v1020;
  sub_1B0A1E9AC();
  v15 = sub_1B0E46398();
  v1023 = 0;
  v1024 = v15;
  v1052[0] = v15;
  KeyPath = swift_getKeyPath();
  v993 = KeyPath;

  v996 = sub_1B071C094();
  v994 = v996;
  v997 = sub_1B0A1EA68();
  v17 = sub_1B039CA88(sub_1B0A1EA34, KeyPath, v1017, v996, MEMORY[0x1E69E73E0], v997, MEMORY[0x1E69E7410], v16);
  v998 = 0;
  v999 = v17;
  v989 = v17;

  sub_1B039E440(v1052);
  v1051 = v989;
  v1050 = v1019;
  v990 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3788, &qword_1B0EA2D98);
  sub_1B0A1EAF0();
  v18 = sub_1B0E44F58();
  v991 = 0;
  v992 = v18;
  v1049 = v18;
  v985 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3798, &qword_1B0EA2DA0);
  v986 = sub_1B0A1EB78();
  sub_1B0A1EBF8();
  v987 = sub_1B0E445E8();
  v1048 = v987;
  v1047 = v989;
  v988 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  if (sub_1B0E45748())
  {
    (*(v1011 + 16))(v1012, v1008, v1009);
    sub_1B0394784(v1008, v1005);
    sub_1B0394784(v1005, v1003);
    sub_1B03F4FD0(v1005, v1001);
    v180 = (v1003 + *(v1000 + 20));
    v303 = *v180;
    v304 = *(v180 + 1);
    sub_1B039480C(v1003);
    v306 = 24;
    v341 = 7;
    v181 = swift_allocObject();
    v182 = v304;
    v315 = v181;
    *(v181 + 16) = v303;
    *(v181 + 20) = v182;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v183 = swift_allocObject();
    v184 = v304;
    v305 = v183;
    *(v183 + 16) = v303;
    *(v183 + 20) = v184;

    v340 = 32;
    v185 = swift_allocObject();
    v186 = v305;
    v327 = v185;
    *(v185 + 16) = sub_1B039BBE8;
    *(v185 + 24) = v186;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v1001);
    v187 = v1018;
    v188 = swift_allocObject();
    v189 = v1006;
    v333 = v188;
    *(v188 + 16) = v1018;
    v190 = v189;
    v342 = swift_allocObject();
    *(v342 + 16) = v1006;
    v367 = sub_1B0E43988();
    v307 = v367;
    v366 = sub_1B0E45908();
    v308 = v366;
    v336 = 17;
    v345 = swift_allocObject();
    v309 = v345;
    v318 = 16;
    *(v345 + 16) = 16;
    v346 = swift_allocObject();
    v310 = v346;
    v325 = 4;
    *(v346 + 16) = 4;
    v191 = swift_allocObject();
    v311 = v191;
    *(v191 + 16) = sub_1B0394C30;
    v321 = 0;
    *(v191 + 24) = 0;
    v192 = swift_allocObject();
    v193 = v311;
    v347 = v192;
    v312 = v192;
    *(v192 + 16) = sub_1B0394C24;
    *(v192 + 24) = v193;
    v348 = swift_allocObject();
    v313 = v348;
    v330 = 0;
    *(v348 + 16) = 0;
    v349 = swift_allocObject();
    v314 = v349;
    *(v349 + 16) = 1;
    v194 = swift_allocObject();
    v195 = v315;
    v316 = v194;
    *(v194 + 16) = sub_1B039BA2C;
    *(v194 + 24) = v195;
    v196 = swift_allocObject();
    v197 = v316;
    v350 = v196;
    v317 = v196;
    *(v196 + 16) = sub_1B039BA88;
    *(v196 + 24) = v197;
    v351 = swift_allocObject();
    v319 = v351;
    *(v351 + 16) = v318;
    v352 = swift_allocObject();
    v320 = v352;
    *(v352 + 16) = v325;
    v198 = swift_allocObject();
    v199 = v321;
    v322 = v198;
    *(v198 + 16) = sub_1B039BB94;
    *(v198 + 24) = v199;
    v200 = swift_allocObject();
    v201 = v322;
    v353 = v200;
    v323 = v200;
    *(v200 + 16) = sub_1B0394C24;
    *(v200 + 24) = v201;
    v354 = swift_allocObject();
    v324 = v354;
    *(v354 + 16) = v330;
    v355 = swift_allocObject();
    v326 = v355;
    *(v355 + 16) = v325;
    v202 = swift_allocObject();
    v203 = v327;
    v328 = v202;
    *(v202 + 16) = sub_1B039BBA0;
    *(v202 + 24) = v203;
    v204 = swift_allocObject();
    v205 = v328;
    v356 = v204;
    v329 = v204;
    *(v204 + 16) = sub_1B039BC08;
    *(v204 + 24) = v205;
    v357 = swift_allocObject();
    v331 = v357;
    *(v357 + 16) = v330;
    v358 = swift_allocObject();
    v332 = v358;
    v338 = 8;
    *(v358 + 16) = 8;
    v206 = swift_allocObject();
    v207 = v333;
    v334 = v206;
    *(v206 + 16) = sub_1B0A1EC80;
    *(v206 + 24) = v207;
    v208 = swift_allocObject();
    v209 = v334;
    v359 = v208;
    v335 = v208;
    *(v208 + 16) = sub_1B03B0DF8;
    *(v208 + 24) = v209;
    v360 = swift_allocObject();
    v337 = v360;
    *(v360 + 16) = 64;
    v361 = swift_allocObject();
    v339 = v361;
    *(v361 + 16) = v338;
    v210 = swift_allocObject();
    v211 = v342;
    v343 = v210;
    *(v210 + 16) = sub_1B092A7B4;
    *(v210 + 24) = v211;
    v212 = swift_allocObject();
    v213 = v343;
    v364 = v212;
    v344 = v212;
    *(v212 + 16) = sub_1B070B324;
    *(v212 + 24) = v213;
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v362 = sub_1B0E46A48();
    v363 = v214;

    v215 = v345;
    v216 = v363;
    *v363 = sub_1B0398F5C;
    v216[1] = v215;

    v217 = v346;
    v218 = v363;
    v363[2] = sub_1B0398F5C;
    v218[3] = v217;

    v219 = v347;
    v220 = v363;
    v363[4] = sub_1B0399178;
    v220[5] = v219;

    v221 = v348;
    v222 = v363;
    v363[6] = sub_1B0398F5C;
    v222[7] = v221;

    v223 = v349;
    v224 = v363;
    v363[8] = sub_1B0398F5C;
    v224[9] = v223;

    v225 = v350;
    v226 = v363;
    v363[10] = sub_1B039BA94;
    v226[11] = v225;

    v227 = v351;
    v228 = v363;
    v363[12] = sub_1B0398F5C;
    v228[13] = v227;

    v229 = v352;
    v230 = v363;
    v363[14] = sub_1B0398F5C;
    v230[15] = v229;

    v231 = v353;
    v232 = v363;
    v363[16] = sub_1B0399178;
    v232[17] = v231;

    v233 = v354;
    v234 = v363;
    v363[18] = sub_1B0398F5C;
    v234[19] = v233;

    v235 = v355;
    v236 = v363;
    v363[20] = sub_1B0398F5C;
    v236[21] = v235;

    v237 = v356;
    v238 = v363;
    v363[22] = sub_1B03991EC;
    v238[23] = v237;

    v239 = v357;
    v240 = v363;
    v363[24] = sub_1B0398F5C;
    v240[25] = v239;

    v241 = v358;
    v242 = v363;
    v363[26] = sub_1B0398F5C;
    v242[27] = v241;

    v243 = v359;
    v244 = v363;
    v363[28] = sub_1B0399260;
    v244[29] = v243;

    v245 = v360;
    v246 = v363;
    v363[30] = sub_1B0398F5C;
    v246[31] = v245;

    v247 = v361;
    v248 = v363;
    v363[32] = sub_1B0398F5C;
    v248[33] = v247;

    v249 = v363;
    v250 = v364;
    v363[34] = sub_1B070B4B4;
    v249[35] = v250;
    sub_1B0394964();

    if (os_log_type_enabled(v367, v366))
    {
      v251 = v991;
      v297 = sub_1B0E45D78();
      v294 = v297;
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v298 = sub_1B03949A8(1);
      v296 = v298;
      v299 = sub_1B03949A8(0);
      v1045 = v297;
      v1044 = v298;
      v1043 = v299;
      v300 = &v1045;
      sub_1B0394A48(2, &v1045);
      sub_1B0394A48(6, v300);
      v1041 = sub_1B0398F5C;
      v1042 = v309;
      sub_1B03949FC(&v1041, v300, &v1044, &v1043);
      v301 = v251;
      v302 = v251;
      if (v251)
      {
        v292 = 0;

        __break(1u);
      }

      else
      {
        v1041 = sub_1B0398F5C;
        v1042 = v310;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v290 = 0;
        v291 = 0;
        v1041 = sub_1B0399178;
        v1042 = v312;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v288 = 0;
        v289 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v313;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v286 = 0;
        v287 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v314;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v284 = 0;
        v285 = 0;
        v1041 = sub_1B039BA94;
        v1042 = v317;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v282 = 0;
        v283 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v319;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v280 = 0;
        v281 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v320;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v278 = 0;
        v279 = 0;
        v1041 = sub_1B0399178;
        v1042 = v323;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v276 = 0;
        v277 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v324;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v274 = 0;
        v275 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v326;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v272 = 0;
        v273 = 0;
        v1041 = sub_1B03991EC;
        v1042 = v329;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v270 = 0;
        v271 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v331;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v268 = 0;
        v269 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v332;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v266 = 0;
        v267 = 0;
        v1041 = sub_1B0399260;
        v1042 = v335;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v264 = 0;
        v265 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v337;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v262 = 0;
        v263 = 0;
        v1041 = sub_1B0398F5C;
        v1042 = v339;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v260 = 0;
        v261 = 0;
        v1041 = sub_1B070B4B4;
        v1042 = v344;
        sub_1B03949FC(&v1041, &v1045, &v1044, &v1043);
        v258 = 0;
        v259 = 0;
        _os_log_impl(&dword_1B0389000, v307, v308, "[%.*hhx-%.*X] Did download %ld messages for cross-account transfer %@", v294, 0x2Bu);
        sub_1B03998A8(v296);
        sub_1B03998A8(v299);
        sub_1B0E45D58();

        v293 = v258;
      }
    }

    else
    {
      v252 = v991;

      v293 = v252;
    }

    v257 = v293;

    (*(v1011 + 8))(v1012, v1009);
    v850 = v257;
  }

  else
  {
    v909 = *(v1011 + 16);
    v910 = (v1011 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v909(v1016, v1008, v1009);
    sub_1B0394784(v1008, v1005);
    sub_1B0394784(v1005, v1003);
    sub_1B03F4FD0(v1005, v1001);
    v19 = (v1003 + *(v1000 + 20));
    v911 = *v19;
    v912 = *(v19 + 1);
    sub_1B039480C(v1003);
    v914 = 24;
    v954 = 7;
    v20 = swift_allocObject();
    v21 = v912;
    v923 = v20;
    *(v20 + 16) = v911;
    *(v20 + 20) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = swift_allocObject();
    v23 = v912;
    v913 = v22;
    *(v22 + 16) = v911;
    *(v22 + 20) = v23;

    v953 = 32;
    v24 = swift_allocObject();
    v25 = v913;
    v935 = v24;
    *(v24 + 16) = sub_1B039BBE8;
    *(v24 + 24) = v25;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v1001);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = swift_allocObject();
    v27 = v1018;
    v940 = v26;
    *(v26 + 16) = v989;
    v28 = v27;
    v29 = swift_allocObject();
    v30 = v1006;
    v946 = v29;
    *(v29 + 16) = v1018;
    v31 = v30;
    v955 = swift_allocObject();
    *(v955 + 16) = v1006;
    v984 = sub_1B0E43988();
    v915 = v984;
    v983 = sub_1B0E458E8();
    v916 = v983;
    v949 = 17;
    v959 = swift_allocObject();
    v917 = v959;
    v926 = 16;
    *(v959 + 16) = 16;
    v960 = swift_allocObject();
    v918 = v960;
    v933 = 4;
    *(v960 + 16) = 4;
    v32 = swift_allocObject();
    v919 = v32;
    *(v32 + 16) = sub_1B0394C30;
    v929 = 0;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v919;
    v961 = v33;
    v920 = v33;
    *(v33 + 16) = sub_1B0394C24;
    *(v33 + 24) = v34;
    v962 = swift_allocObject();
    v921 = v962;
    v943 = 0;
    *(v962 + 16) = 0;
    v963 = swift_allocObject();
    v922 = v963;
    *(v963 + 16) = 1;
    v35 = swift_allocObject();
    v36 = v923;
    v924 = v35;
    *(v35 + 16) = sub_1B039BA2C;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v924;
    v964 = v37;
    v925 = v37;
    *(v37 + 16) = sub_1B039BA88;
    *(v37 + 24) = v38;
    v965 = swift_allocObject();
    v927 = v965;
    *(v965 + 16) = v926;
    v966 = swift_allocObject();
    v928 = v966;
    *(v966 + 16) = v933;
    v39 = swift_allocObject();
    v40 = v929;
    v930 = v39;
    *(v39 + 16) = sub_1B039BB94;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v930;
    v967 = v41;
    v931 = v41;
    *(v41 + 16) = sub_1B0394C24;
    *(v41 + 24) = v42;
    v968 = swift_allocObject();
    v932 = v968;
    *(v968 + 16) = v943;
    v969 = swift_allocObject();
    v934 = v969;
    *(v969 + 16) = v933;
    v43 = swift_allocObject();
    v44 = v935;
    v936 = v43;
    *(v43 + 16) = sub_1B039BBA0;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v936;
    v970 = v45;
    v937 = v45;
    *(v45 + 16) = sub_1B039BC08;
    *(v45 + 24) = v46;
    v971 = swift_allocObject();
    v938 = v971;
    *(v971 + 16) = v943;
    v972 = swift_allocObject();
    v939 = v972;
    v951 = 8;
    *(v972 + 16) = 8;
    v47 = swift_allocObject();
    v48 = v940;
    v941 = v47;
    *(v47 + 16) = sub_1B0A1EC94;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v941;
    v973 = v49;
    v942 = v49;
    *(v49 + 16) = sub_1B03B0DF8;
    *(v49 + 24) = v50;
    v974 = swift_allocObject();
    v944 = v974;
    *(v974 + 16) = v943;
    v975 = swift_allocObject();
    v945 = v975;
    *(v975 + 16) = v951;
    v51 = swift_allocObject();
    v52 = v946;
    v947 = v51;
    *(v51 + 16) = sub_1B0A1EC80;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v947;
    v976 = v53;
    v948 = v53;
    *(v53 + 16) = sub_1B03B0DF8;
    *(v53 + 24) = v54;
    v977 = swift_allocObject();
    v950 = v977;
    *(v977 + 16) = 64;
    v978 = swift_allocObject();
    v952 = v978;
    *(v978 + 16) = v951;
    v55 = swift_allocObject();
    v56 = v955;
    v956 = v55;
    *(v55 + 16) = sub_1B092A7B4;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v956;
    v981 = v57;
    v957 = v57;
    *(v57 + 16) = sub_1B070B324;
    *(v57 + 24) = v58;
    v982 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v958 = v982;
    v979 = sub_1B0E46A48();
    v980 = v59;

    v60 = v959;
    v61 = v980;
    *v980 = sub_1B0398F5C;
    v61[1] = v60;

    v62 = v960;
    v63 = v980;
    v980[2] = sub_1B0398F5C;
    v63[3] = v62;

    v64 = v961;
    v65 = v980;
    v980[4] = sub_1B0399178;
    v65[5] = v64;

    v66 = v962;
    v67 = v980;
    v980[6] = sub_1B0398F5C;
    v67[7] = v66;

    v68 = v963;
    v69 = v980;
    v980[8] = sub_1B0398F5C;
    v69[9] = v68;

    v70 = v964;
    v71 = v980;
    v980[10] = sub_1B039BA94;
    v71[11] = v70;

    v72 = v965;
    v73 = v980;
    v980[12] = sub_1B0398F5C;
    v73[13] = v72;

    v74 = v966;
    v75 = v980;
    v980[14] = sub_1B0398F5C;
    v75[15] = v74;

    v76 = v967;
    v77 = v980;
    v980[16] = sub_1B0399178;
    v77[17] = v76;

    v78 = v968;
    v79 = v980;
    v980[18] = sub_1B0398F5C;
    v79[19] = v78;

    v80 = v969;
    v81 = v980;
    v980[20] = sub_1B0398F5C;
    v81[21] = v80;

    v82 = v970;
    v83 = v980;
    v980[22] = sub_1B03991EC;
    v83[23] = v82;

    v84 = v971;
    v85 = v980;
    v980[24] = sub_1B0398F5C;
    v85[25] = v84;

    v86 = v972;
    v87 = v980;
    v980[26] = sub_1B0398F5C;
    v87[27] = v86;

    v88 = v973;
    v89 = v980;
    v980[28] = sub_1B0399260;
    v89[29] = v88;

    v90 = v974;
    v91 = v980;
    v980[30] = sub_1B0398F5C;
    v91[31] = v90;

    v92 = v975;
    v93 = v980;
    v980[32] = sub_1B0398F5C;
    v93[33] = v92;

    v94 = v976;
    v95 = v980;
    v980[34] = sub_1B0399260;
    v95[35] = v94;

    v96 = v977;
    v97 = v980;
    v980[36] = sub_1B0398F5C;
    v97[37] = v96;

    v98 = v978;
    v99 = v980;
    v980[38] = sub_1B0398F5C;
    v99[39] = v98;

    v100 = v980;
    v101 = v981;
    v980[40] = sub_1B070B4B4;
    v100[41] = v101;
    sub_1B0394964();

    if (os_log_type_enabled(v984, v983))
    {
      v102 = v991;
      v903 = sub_1B0E45D78();
      v900 = v903;
      v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v904 = sub_1B03949A8(1);
      v902 = v904;
      v905 = sub_1B03949A8(0);
      v1029 = v903;
      v1028 = v904;
      v1027 = v905;
      v906 = &v1029;
      sub_1B0394A48(2, &v1029);
      sub_1B0394A48(7, v906);
      v1025 = sub_1B0398F5C;
      v1026 = v917;
      sub_1B03949FC(&v1025, v906, &v1028, &v1027);
      v907 = v102;
      v908 = v102;
      if (v102)
      {
        v898 = 0;

        __break(1u);
      }

      else
      {
        v1025 = sub_1B0398F5C;
        v1026 = v918;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v896 = 0;
        v897 = 0;
        v1025 = sub_1B0399178;
        v1026 = v920;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v894 = 0;
        v895 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v921;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v892 = 0;
        v893 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v922;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v890 = 0;
        v891 = 0;
        v1025 = sub_1B039BA94;
        v1026 = v925;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v888 = 0;
        v889 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v927;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v886 = 0;
        v887 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v928;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v884 = 0;
        v885 = 0;
        v1025 = sub_1B0399178;
        v1026 = v931;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v882 = 0;
        v883 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v932;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v880 = 0;
        v881 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v934;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v878 = 0;
        v879 = 0;
        v1025 = sub_1B03991EC;
        v1026 = v937;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v876 = 0;
        v877 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v938;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v874 = 0;
        v875 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v939;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v872 = 0;
        v873 = 0;
        v1025 = sub_1B0399260;
        v1026 = v942;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v870 = 0;
        v871 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v944;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v868 = 0;
        v869 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v945;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v866 = 0;
        v867 = 0;
        v1025 = sub_1B0399260;
        v1026 = v948;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v864 = 0;
        v865 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v950;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v862 = 0;
        v863 = 0;
        v1025 = sub_1B0398F5C;
        v1026 = v952;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v860 = 0;
        v861 = 0;
        v1025 = sub_1B070B4B4;
        v1026 = v957;
        sub_1B03949FC(&v1025, &v1029, &v1028, &v1027);
        v858 = 0;
        v859 = 0;
        _os_log_impl(&dword_1B0389000, v915, v916, "[%.*hhx-%.*X] Failed to download %ld of %ld messages for cross-account transfer %@", v900, 0x35u);
        sub_1B03998A8(v902);
        sub_1B03998A8(v905);
        sub_1B0E45D58();

        v899 = v858;
      }
    }

    else
    {
      v103 = v991;

      v899 = v103;
    }

    v856 = v899;

    v854 = *(v1011 + 8);
    v855 = (v1011 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v854(v1016, v1009);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1039 = v1019;
    sub_1B0E45798();
    for (i = v856; ; i = v368)
    {
      v852 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37B8, &qword_1B0EA2DA8);
      sub_1B0E46518();
      v853 = v1038;
      if (!v1038)
      {
        break;
      }

      v851 = v853;
      v845 = v853;
      v1037 = v853;
      v846 = &v853[OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result];
      v848 = &v1036;
      swift_beginAccess();
      v847 = *v846;
      v849 = v846[8];
      sub_1B0A1D214(v847, v849);
      swift_endAccess();
      if (v849 == 1)
      {
        v844 = v847;
        v779 = v847;
        v1035 = v847;
        v909(v1014, v1008, v1009);
        sub_1B0394784(v1008, v1005);
        sub_1B0394784(v1005, v1003);
        sub_1B03F4FD0(v1005, v1001);
        v104 = (v1003 + *(v1000 + 20));
        v775 = *v104;
        v776 = *(v104 + 1);
        sub_1B039480C(v1003);
        v778 = 24;
        v816 = 7;
        v105 = swift_allocObject();
        v106 = v776;
        v788 = v105;
        *(v105 + 16) = v775;
        *(v105 + 20) = v106;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v107 = swift_allocObject();
        v108 = v776;
        v777 = v107;
        *(v107 + 16) = v775;
        *(v107 + 20) = v108;

        v815 = 32;
        v109 = swift_allocObject();
        v110 = v777;
        v801 = v109;
        *(v109 + 16) = sub_1B039BBE8;
        *(v109 + 24) = v110;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v1001);
        v111 = v845;
        v112 = swift_allocObject();
        v113 = v779;
        v806 = v112;
        *(v112 + 16) = v845;
        v114 = v113;
        v814 = swift_allocObject();
        *(v814 + 16) = v779;
        sub_1B07575C4();

        v841 = sub_1B0E43988();
        v780 = v841;
        v840 = sub_1B0E458E8();
        v781 = v840;
        v810 = 17;
        v820 = swift_allocObject();
        v782 = v820;
        v791 = 16;
        *(v820 + 16) = 16;
        v821 = swift_allocObject();
        v783 = v821;
        v799 = 4;
        *(v821 + 16) = 4;
        v115 = swift_allocObject();
        v784 = v115;
        *(v115 + 16) = sub_1B0394C30;
        v794 = 0;
        *(v115 + 24) = 0;
        v116 = swift_allocObject();
        v117 = v784;
        v822 = v116;
        v785 = v116;
        *(v116 + 16) = sub_1B0394C24;
        *(v116 + 24) = v117;
        v823 = swift_allocObject();
        v786 = v823;
        v797 = 0;
        *(v823 + 16) = 0;
        v824 = swift_allocObject();
        v787 = v824;
        *(v824 + 16) = 1;
        v118 = swift_allocObject();
        v119 = v788;
        v789 = v118;
        *(v118 + 16) = sub_1B039BA2C;
        *(v118 + 24) = v119;
        v120 = swift_allocObject();
        v121 = v789;
        v825 = v120;
        v790 = v120;
        *(v120 + 16) = sub_1B039BA88;
        *(v120 + 24) = v121;
        v826 = swift_allocObject();
        v792 = v826;
        *(v826 + 16) = v791;
        v827 = swift_allocObject();
        v793 = v827;
        *(v827 + 16) = v799;
        v122 = swift_allocObject();
        v123 = v794;
        v795 = v122;
        *(v122 + 16) = sub_1B039BB94;
        *(v122 + 24) = v123;
        v124 = swift_allocObject();
        v125 = v795;
        v828 = v124;
        v796 = v124;
        *(v124 + 16) = sub_1B0394C24;
        *(v124 + 24) = v125;
        v829 = swift_allocObject();
        v798 = v829;
        *(v829 + 16) = v797;
        v830 = swift_allocObject();
        v800 = v830;
        *(v830 + 16) = v799;
        v126 = swift_allocObject();
        v127 = v801;
        v802 = v126;
        *(v126 + 16) = sub_1B039BBA0;
        *(v126 + 24) = v127;
        v128 = swift_allocObject();
        v129 = v802;
        v831 = v128;
        v803 = v128;
        *(v128 + 16) = sub_1B039BC08;
        *(v128 + 24) = v129;
        v832 = swift_allocObject();
        v804 = v832;
        v809 = 64;
        *(v832 + 16) = 64;
        v833 = swift_allocObject();
        v805 = v833;
        v812 = 8;
        *(v833 + 16) = 8;
        v130 = swift_allocObject();
        v131 = v806;
        v807 = v130;
        *(v130 + 16) = sub_1B0A1EC9C;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v807;
        v834 = v132;
        v808 = v132;
        *(v132 + 16) = sub_1B070B324;
        *(v132 + 24) = v133;
        v835 = swift_allocObject();
        v811 = v835;
        *(v835 + 16) = v809;
        v836 = swift_allocObject();
        v813 = v836;
        *(v836 + 16) = v812;
        v134 = swift_allocObject();
        v135 = v814;
        v817 = v134;
        *(v134 + 16) = sub_1B0911A54;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v817;
        v818 = v136;
        *(v136 + 16) = sub_1B0911A5C;
        *(v136 + 24) = v137;
        v138 = swift_allocObject();
        v139 = v818;
        v839 = v138;
        v819 = v138;
        *(v138 + 16) = sub_1B070B324;
        *(v138 + 24) = v139;
        v837 = sub_1B0E46A48();
        v838 = v140;

        v141 = v820;
        v142 = v838;
        *v838 = sub_1B0398F5C;
        v142[1] = v141;

        v143 = v821;
        v144 = v838;
        v838[2] = sub_1B0398F5C;
        v144[3] = v143;

        v145 = v822;
        v146 = v838;
        v838[4] = sub_1B0399178;
        v146[5] = v145;

        v147 = v823;
        v148 = v838;
        v838[6] = sub_1B0398F5C;
        v148[7] = v147;

        v149 = v824;
        v150 = v838;
        v838[8] = sub_1B0398F5C;
        v150[9] = v149;

        v151 = v825;
        v152 = v838;
        v838[10] = sub_1B039BA94;
        v152[11] = v151;

        v153 = v826;
        v154 = v838;
        v838[12] = sub_1B0398F5C;
        v154[13] = v153;

        v155 = v827;
        v156 = v838;
        v838[14] = sub_1B0398F5C;
        v156[15] = v155;

        v157 = v828;
        v158 = v838;
        v838[16] = sub_1B0399178;
        v158[17] = v157;

        v159 = v829;
        v160 = v838;
        v838[18] = sub_1B0398F5C;
        v160[19] = v159;

        v161 = v830;
        v162 = v838;
        v838[20] = sub_1B0398F5C;
        v162[21] = v161;

        v163 = v831;
        v164 = v838;
        v838[22] = sub_1B03991EC;
        v164[23] = v163;

        v165 = v832;
        v166 = v838;
        v838[24] = sub_1B0398F5C;
        v166[25] = v165;

        v167 = v833;
        v168 = v838;
        v838[26] = sub_1B0398F5C;
        v168[27] = v167;

        v169 = v834;
        v170 = v838;
        v838[28] = sub_1B070B4B4;
        v170[29] = v169;

        v171 = v835;
        v172 = v838;
        v838[30] = sub_1B0398F5C;
        v172[31] = v171;

        v173 = v836;
        v174 = v838;
        v838[32] = sub_1B0398F5C;
        v174[33] = v173;

        v175 = v838;
        v176 = v839;
        v838[34] = sub_1B070B4B4;
        v175[35] = v176;
        sub_1B0394964();

        if (os_log_type_enabled(v841, v840))
        {
          v178 = v852;
          v750 = sub_1B0E45D78();
          v747 = v750;
          v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v752 = 2;
          v751 = sub_1B03949A8(2);
          v749 = v751;
          v753 = sub_1B03949A8(0);
          v1034 = v750;
          v1033 = v751;
          v1032 = v753;
          v754 = &v1034;
          sub_1B0394A48(v752, &v1034);
          sub_1B0394A48(6, v754);
          v1030 = sub_1B0398F5C;
          v1031 = v782;
          sub_1B03949FC(&v1030, v754, &v1033, &v1032);
          v755 = v178;
          v756 = v782;
          v757 = v783;
          v758 = v785;
          v759 = v786;
          v760 = v787;
          v761 = v790;
          v762 = v792;
          v763 = v793;
          v764 = v796;
          v765 = v798;
          v766 = v800;
          v767 = v803;
          v768 = v804;
          v769 = v805;
          v770 = v808;
          v771 = v811;
          v772 = v813;
          v773 = v819;
          v774 = v178;
          if (v178)
          {
            v727 = v756;
            v728 = v757;
            v729 = v758;
            v730 = v759;
            v731 = v760;
            v732 = v761;
            v733 = v762;
            v734 = v763;
            v735 = v764;
            v736 = v765;
            v737 = v766;
            v738 = v767;
            v739 = v768;
            v740 = v769;
            v741 = v770;
            v742 = v771;
            v743 = v772;
            v744 = v773;
            v745 = 0;
            v386 = v773;
            v385 = v772;
            v384 = v771;
            v383 = v770;
            v382 = v769;
            v381 = v768;
            v380 = v767;
            v379 = v766;
            v378 = v765;
            v377 = v764;
            v376 = v763;
            v375 = v762;
            v374 = v761;
            v373 = v760;
            v372 = v759;
            v371 = v758;
            v370 = v757;

            __break(1u);
          }

          else
          {
            v1030 = sub_1B0398F5C;
            v1031 = v783;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v707 = 0;
            v708 = v782;
            v709 = v783;
            v710 = v785;
            v711 = v786;
            v712 = v787;
            v713 = v790;
            v714 = v792;
            v715 = v793;
            v716 = v796;
            v717 = v798;
            v718 = v800;
            v719 = v803;
            v720 = v804;
            v721 = v805;
            v722 = v808;
            v723 = v811;
            v724 = v813;
            v725 = v819;
            v726 = 0;
            v1030 = sub_1B0399178;
            v1031 = v785;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v687 = 0;
            v688 = v782;
            v689 = v783;
            v690 = v785;
            v691 = v786;
            v692 = v787;
            v693 = v790;
            v694 = v792;
            v695 = v793;
            v696 = v796;
            v697 = v798;
            v698 = v800;
            v699 = v803;
            v700 = v804;
            v701 = v805;
            v702 = v808;
            v703 = v811;
            v704 = v813;
            v705 = v819;
            v706 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v786;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v667 = 0;
            v668 = v782;
            v669 = v783;
            v670 = v785;
            v671 = v786;
            v672 = v787;
            v673 = v790;
            v674 = v792;
            v675 = v793;
            v676 = v796;
            v677 = v798;
            v678 = v800;
            v679 = v803;
            v680 = v804;
            v681 = v805;
            v682 = v808;
            v683 = v811;
            v684 = v813;
            v685 = v819;
            v686 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v787;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v647 = 0;
            v648 = v782;
            v649 = v783;
            v650 = v785;
            v651 = v786;
            v652 = v787;
            v653 = v790;
            v654 = v792;
            v655 = v793;
            v656 = v796;
            v657 = v798;
            v658 = v800;
            v659 = v803;
            v660 = v804;
            v661 = v805;
            v662 = v808;
            v663 = v811;
            v664 = v813;
            v665 = v819;
            v666 = 0;
            v1030 = sub_1B039BA94;
            v1031 = v790;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v627 = 0;
            v628 = v782;
            v629 = v783;
            v630 = v785;
            v631 = v786;
            v632 = v787;
            v633 = v790;
            v634 = v792;
            v635 = v793;
            v636 = v796;
            v637 = v798;
            v638 = v800;
            v639 = v803;
            v640 = v804;
            v641 = v805;
            v642 = v808;
            v643 = v811;
            v644 = v813;
            v645 = v819;
            v646 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v792;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v607 = 0;
            v608 = v782;
            v609 = v783;
            v610 = v785;
            v611 = v786;
            v612 = v787;
            v613 = v790;
            v614 = v792;
            v615 = v793;
            v616 = v796;
            v617 = v798;
            v618 = v800;
            v619 = v803;
            v620 = v804;
            v621 = v805;
            v622 = v808;
            v623 = v811;
            v624 = v813;
            v625 = v819;
            v626 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v793;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v587 = 0;
            v588 = v782;
            v589 = v783;
            v590 = v785;
            v591 = v786;
            v592 = v787;
            v593 = v790;
            v594 = v792;
            v595 = v793;
            v596 = v796;
            v597 = v798;
            v598 = v800;
            v599 = v803;
            v600 = v804;
            v601 = v805;
            v602 = v808;
            v603 = v811;
            v604 = v813;
            v605 = v819;
            v606 = 0;
            v1030 = sub_1B0399178;
            v1031 = v796;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v567 = 0;
            v568 = v782;
            v569 = v783;
            v570 = v785;
            v571 = v786;
            v572 = v787;
            v573 = v790;
            v574 = v792;
            v575 = v793;
            v576 = v796;
            v577 = v798;
            v578 = v800;
            v579 = v803;
            v580 = v804;
            v581 = v805;
            v582 = v808;
            v583 = v811;
            v584 = v813;
            v585 = v819;
            v586 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v798;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v547 = 0;
            v548 = v782;
            v549 = v783;
            v550 = v785;
            v551 = v786;
            v552 = v787;
            v553 = v790;
            v554 = v792;
            v555 = v793;
            v556 = v796;
            v557 = v798;
            v558 = v800;
            v559 = v803;
            v560 = v804;
            v561 = v805;
            v562 = v808;
            v563 = v811;
            v564 = v813;
            v565 = v819;
            v566 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v800;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v527 = 0;
            v528 = v782;
            v529 = v783;
            v530 = v785;
            v531 = v786;
            v532 = v787;
            v533 = v790;
            v534 = v792;
            v535 = v793;
            v536 = v796;
            v537 = v798;
            v538 = v800;
            v539 = v803;
            v540 = v804;
            v541 = v805;
            v542 = v808;
            v543 = v811;
            v544 = v813;
            v545 = v819;
            v546 = 0;
            v1030 = sub_1B03991EC;
            v1031 = v803;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v507 = 0;
            v508 = v782;
            v509 = v783;
            v510 = v785;
            v511 = v786;
            v512 = v787;
            v513 = v790;
            v514 = v792;
            v515 = v793;
            v516 = v796;
            v517 = v798;
            v518 = v800;
            v519 = v803;
            v520 = v804;
            v521 = v805;
            v522 = v808;
            v523 = v811;
            v524 = v813;
            v525 = v819;
            v526 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v804;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v487 = 0;
            v488 = v782;
            v489 = v783;
            v490 = v785;
            v491 = v786;
            v492 = v787;
            v493 = v790;
            v494 = v792;
            v495 = v793;
            v496 = v796;
            v497 = v798;
            v498 = v800;
            v499 = v803;
            v500 = v804;
            v501 = v805;
            v502 = v808;
            v503 = v811;
            v504 = v813;
            v505 = v819;
            v506 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v805;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v467 = 0;
            v468 = v782;
            v469 = v783;
            v470 = v785;
            v471 = v786;
            v472 = v787;
            v473 = v790;
            v474 = v792;
            v475 = v793;
            v476 = v796;
            v477 = v798;
            v478 = v800;
            v479 = v803;
            v480 = v804;
            v481 = v805;
            v482 = v808;
            v483 = v811;
            v484 = v813;
            v485 = v819;
            v486 = 0;
            v1030 = sub_1B070B4B4;
            v1031 = v808;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v447 = 0;
            v448 = v782;
            v449 = v783;
            v450 = v785;
            v451 = v786;
            v452 = v787;
            v453 = v790;
            v454 = v792;
            v455 = v793;
            v456 = v796;
            v457 = v798;
            v458 = v800;
            v459 = v803;
            v460 = v804;
            v461 = v805;
            v462 = v808;
            v463 = v811;
            v464 = v813;
            v465 = v819;
            v466 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v811;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v427 = 0;
            v428 = v782;
            v429 = v783;
            v430 = v785;
            v431 = v786;
            v432 = v787;
            v433 = v790;
            v434 = v792;
            v435 = v793;
            v436 = v796;
            v437 = v798;
            v438 = v800;
            v439 = v803;
            v440 = v804;
            v441 = v805;
            v442 = v808;
            v443 = v811;
            v444 = v813;
            v445 = v819;
            v446 = 0;
            v1030 = sub_1B0398F5C;
            v1031 = v813;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v407 = 0;
            v408 = v782;
            v409 = v783;
            v410 = v785;
            v411 = v786;
            v412 = v787;
            v413 = v790;
            v414 = v792;
            v415 = v793;
            v416 = v796;
            v417 = v798;
            v418 = v800;
            v419 = v803;
            v420 = v804;
            v421 = v805;
            v422 = v808;
            v423 = v811;
            v424 = v813;
            v425 = v819;
            v426 = 0;
            v1030 = sub_1B070B4B4;
            v1031 = v819;
            sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
            v387 = 0;
            v388 = v782;
            v389 = v783;
            v390 = v785;
            v391 = v786;
            v392 = v787;
            v393 = v790;
            v394 = v792;
            v395 = v793;
            v396 = v796;
            v397 = v798;
            v398 = v800;
            v399 = v803;
            v400 = v804;
            v401 = v805;
            v402 = v808;
            v403 = v811;
            v404 = v813;
            v405 = v819;
            v406 = 0;
            _os_log_impl(&dword_1B0389000, v780, v781, "[%.*hhx-%.*X] Download for cross-account transfer of item %@ failed with error: %@", v747, 0x2Bu);
            sub_1B03998A8(v749);
            sub_1B03998A8(v753);
            sub_1B0E45D58();

            v746 = v387;
          }
        }

        else
        {
          v179 = v852;

          v746 = v179;
        }

        v369 = v746;

        v854(v1014, v1009);
        v842 = v369;
      }

      else
      {
        v843 = v847;

        v842 = v852;
      }

      v368 = v842;
    }

    sub_1B039E440(v1040);
    v850 = v852;
  }

  sub_1B074EFAC();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v255 = &v255;
  MEMORY[0x1EEE9AC00](&v255);
  *(&v255 - 2) = v989;
  *(&v255 - 1) = v253;
  v256 = sub_1B0740A78(sub_1B0A1EC88, (&v255 - 4));

  v1046 = v256;
  [v1007 persistResults_forAction_];
}

BOOL sub_1B0A0712C(uint64_t *a1)
{
  v4 = 0;
  v4 = *a1;
  v3 = sub_1B0A071A8();
  v2 = v3 == 0;
  sub_1B06D4E94(&v3);
  return v2;
}

void *sub_1B0A071A8()
{
  v3 = v0 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_1B0A1D214(*v3, v5 & 1);
  swift_endAccess();
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  return 0;
}

uint64_t sub_1B0A07268(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);

  swift_getAtKeyPath();
  MEMORY[0x1E69E5920](v2);
}

void *sub_1B0A072E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8 = *a1;
  result = sub_1B0A071A8();
  v9 = result;
  if (result)
  {
    v5 = (v8 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item);
    swift_beginAccess();
    v6 = *v5;
    MEMORY[0x1E69E5928](*v5);
    swift_endAccess();
    MEMORY[0x1E69E5928](v9);
    v3 = sub_1B0E42F38();
    *a2 = v6;
    a2[1] = v3;
    a2[2] = v4;
    MEMORY[0x1E69E5920](v9);
    return MEMORY[0x1E69E5920](v9);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_1B0A07454(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A074BC(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B071C094();
  v2 = sub_1B0E451A8();

  [a1 setFailedItems_];
  MEMORY[0x1E69E5920](v2);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0A1EB78();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37C0, &unk_1B0EA2DB0);
  sub_1B0A1ECA4();
  sub_1B0E45378();
  v3 = sub_1B0E451A8();

  [a1 setCompletedItems_];
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E44598();

  [a1 setDownloadedDataByCopyItems_];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B0A076B8()
{
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);
  v3 = sub_1B0885A84();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

unint64_t sub_1B0A07720()
{
  v2 = qword_1EB6DAA50;
  if (!qword_1EB6DAA50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A07784(uint64_t a1)
{
  v34 = a1;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v42 = 0;
  v31 = 0;
  v32 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = &v12 - v32;
  v39 = sub_1B0E44468();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v34);
  v40 = (&v12 - v35);
  v47 = v2;
  v46 = v1;

  v36 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v36);
  v3 = v37;
  *v40 = v36;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v41 = sub_1B0E44488();
  (*(v37 + 8))(v40, v39);
  result = v41;
  if (v41)
  {

    v27 = (v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
    v28 = &v44;
    swift_beginAccess();
    v29 = *v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    if (v29)
    {
      v26 = v29;
      v24 = v29;
      v42 = v29;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = v24;

      v25 = v24;
    }

    else
    {
      v23 = sub_1B0877320(v34);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = v23;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = (v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
      v22 = &v43;
      swift_beginAccess();
      v6 = *v21;
      *v21 = v23;

      swift_endAccess();
      v25 = v23;
    }

    v14 = v25;
    v12 = *(v30 + 112);
    MEMORY[0x1E69E5928](v12);
    v7 = sub_1B0889C84();
    v8 = v30;
    v13 = v7;
    MEMORY[0x1E69E5920](v12);
    v19 = *(v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    v15 = sub_1B0879EF0();
    v16 = v9;
    v17 = v10;
    v18 = v11;
    sub_1B0394784(v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v33);
    v20 = sub_1B0877ABC(v13, v19, v15, v16, v17, v18, v14, v33);
    sub_1B039480C(v33);

    sub_1B039E440(&v45);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A07BD8(uint64_t a1)
{
  v1131 = MEMORY[0x1EEE9AC00](a1);
  v1132 = v2;
  v1060 = v1;
  v1150 = 0;
  v1149 = sub_1B0A0D260;
  v1061 = sub_1B074E050;
  v1062 = sub_1B0394C30;
  v1063 = sub_1B0394C24;
  v1064 = sub_1B074DFFC;
  v1065 = sub_1B039BA88;
  v1066 = sub_1B039BB94;
  v1067 = sub_1B0394C24;
  v1068 = sub_1B039BBA0;
  v1069 = sub_1B039BC08;
  v1070 = 0x786F626C69616DLL;
  v1071 = sub_1B06BA324;
  v1072 = sub_1B074E0E4;
  v1073 = sub_1B039BCF8;
  v1074 = sub_1B0398F5C;
  v1075 = sub_1B0398F5C;
  v1076 = sub_1B0399178;
  v1077 = sub_1B0398F5C;
  v1078 = sub_1B0398F5C;
  v1079 = sub_1B039BA94;
  v1080 = sub_1B0398F5C;
  v1081 = sub_1B0398F5C;
  v1082 = sub_1B0399178;
  v1083 = sub_1B0398F5C;
  v1084 = sub_1B0398F5C;
  v1085 = sub_1B03991EC;
  v1086 = sub_1B0398F5C;
  v1087 = sub_1B0398F5C;
  v1088 = sub_1B03993BC;
  v1089 = sub_1B0398F5C;
  v1090 = sub_1B0398F5C;
  v1091 = sub_1B039BCEC;
  v1092 = sub_1B074E050;
  v1093 = sub_1B0394C24;
  v1094 = sub_1B074DFFC;
  v1095 = sub_1B039BA88;
  v1096 = sub_1B0394C24;
  v1097 = sub_1B039BBA0;
  v1098 = sub_1B039BC08;
  v1099 = sub_1B06BA324;
  v1100 = sub_1B074E0E4;
  v1101 = sub_1B039BCF8;
  v1102 = sub_1B0398F5C;
  v1103 = sub_1B0398F5C;
  v1104 = sub_1B0399178;
  v1105 = sub_1B0398F5C;
  v1106 = sub_1B0398F5C;
  v1107 = sub_1B039BA94;
  v1108 = sub_1B0398F5C;
  v1109 = sub_1B0398F5C;
  v1110 = sub_1B0399178;
  v1111 = sub_1B0398F5C;
  v1112 = sub_1B0398F5C;
  v1113 = sub_1B03991EC;
  v1114 = sub_1B0398F5C;
  v1115 = sub_1B0398F5C;
  v1116 = sub_1B03993BC;
  v1117 = sub_1B0398F5C;
  v1118 = sub_1B0398F5C;
  v1119 = sub_1B039BCEC;
  v1185 = 0;
  v1184 = 0;
  v1183 = 0;
  v1182 = 0;
  v1181 = 0;
  v1178 = 0;
  v1176 = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  v1172 = 0;
  memset(v1171, 0, sizeof(v1171));
  v1167 = 0;
  v1168 = 0;
  v1160 = 0;
  v1161 = 0;
  v1133 = 0;
  v1122 = sub_1B0E439A8();
  v1123 = *(v1122 - 8);
  v1124 = v1122 - 8;
  v1125 = (*(v1123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v1126 = v171 - v1125;
  v1127 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v1128 = v171 - v1127;
  v1129 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1133);
  v1130 = v171 - v1129;
  v1134 = _s6LoggerVMa_1();
  v1142 = *(*(v1134 - 8) + 64);
  v1135 = (v1142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v1133);
  v1136 = v171 - v1135;
  v1185 = v171 - v1135;
  v1137 = (v1142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v1138 = v171 - v1137;
  v1139 = (v1142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v1140 = v171 - v1139;
  v1141 = (v1142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v1143 = v171 - v1141;
  v1144 = (v1142 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1145 = v171 - v1144;
  v1184 = v171 - v1144;
  v1183 = v9;
  v1182 = v10;
  v1181 = v1;
  v1179[1] = v9;
  v1146 = &type metadata for MailboxName;
  v1147 = sub_1B0E46A48();
  v1148 = sub_1B0451F2C();
  v11 = sub_1B0E45438();
  v1153 = v1179;
  v1179[0] = v11;
  v1151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36E0, &qword_1B0E9C120);
  v1152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B07C869C();
  sub_1B0E44FD8();
  v1154 = 0;
  v1056 = v1180;
  v1178 = v1180;
  v1054 = (v1060 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove);
  v1055 = &v1177;
  swift_beginAccess();
  v1057 = *v1054;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v1058 = &type metadata for MailboxName;
  v1059 = sub_1B0E45418();
  v1176 = v1059;
  if ((sub_1B0E454F8() & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1052 = &v1186;
    sub_1B0E45448();
    memcpy(__b, v1052, sizeof(__b));
    for (i = v1154; ; i = v613)
    {
      v1047 = i;
      v1048 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3640, &qword_1B0EA2098);
      sub_1B0E45508();
      v1049 = v1173;
      v1050 = v1174;
      v1051 = v1048;
      if (!v1173)
      {
        break;
      }

      v1045 = v1049;
      v1046 = v1050;
      v12 = v1128;
      v1000 = v1050;
      v999 = v1049;
      v1160 = v1049;
      v1161 = v1050;
      sub_1B0394784(v1060 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v1130);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07B91DC(v1130, v999, v1000, v1145);
      (*(v1123 + 16))(v12, v1145, v1122);
      sub_1B074B69C(v1145, v1143);
      sub_1B074B69C(v1143, v1140);
      sub_1B074E41C(v1143, v1138);
      v13 = (v1140 + *(v1134 + 20));
      v1003 = *v13;
      v1004 = *(v13 + 1);
      v1005 = *(v13 + 1);
      v1006 = *(v13 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1140);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1002 = 36;
      v1019 = 7;
      v14 = swift_allocObject();
      v15 = v1004;
      v16 = v1005;
      v17 = v1006;
      v1008 = v14;
      *(v14 + 16) = v1003;
      *(v14 + 20) = v15;
      *(v14 + 24) = v16;
      *(v14 + 32) = v17;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = swift_allocObject();
      v19 = v1004;
      v20 = v1005;
      v21 = v1006;
      v1001 = v18;
      *(v18 + 16) = v1003;
      *(v18 + 20) = v19;
      *(v18 + 24) = v20;
      *(v18 + 32) = v21;

      v1018 = 32;
      v22 = swift_allocObject();
      v23 = v1001;
      v1013 = v22;
      *(v22 + 16) = v1061;
      *(v22 + 24) = v23;
      sub_1B0394868();
      sub_1B0394868();

      v24 = swift_allocObject();
      v25 = v1004;
      v26 = v1005;
      v27 = v1006;
      v28 = v24;
      v29 = v1138;
      v1020 = v28;
      *(v28 + 16) = v1003;
      *(v28 + 20) = v25;
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      sub_1B074B764(v29);
      v1043 = sub_1B0E43988();
      v1044 = sub_1B0E45908();
      v1016 = 17;
      v1022 = swift_allocObject();
      v1010 = 16;
      *(v1022 + 16) = 16;
      v1023 = swift_allocObject();
      v1012 = 4;
      *(v1023 + 16) = 4;
      v30 = swift_allocObject();
      v1007 = v30;
      *(v30 + 16) = v1062;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      v32 = v1007;
      v1024 = v31;
      *(v31 + 16) = v1063;
      *(v31 + 24) = v32;
      v1025 = swift_allocObject();
      *(v1025 + 16) = 0;
      v1026 = swift_allocObject();
      *(v1026 + 16) = 1;
      v33 = swift_allocObject();
      v34 = v1008;
      v1009 = v33;
      *(v33 + 16) = v1064;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v1009;
      v1027 = v35;
      *(v35 + 16) = v1065;
      *(v35 + 24) = v36;
      v1028 = swift_allocObject();
      *(v1028 + 16) = v1010;
      v1029 = swift_allocObject();
      *(v1029 + 16) = v1012;
      v37 = swift_allocObject();
      v1011 = v37;
      *(v37 + 16) = v1066;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v1011;
      v1030 = v38;
      *(v38 + 16) = v1067;
      *(v38 + 24) = v39;
      v1031 = swift_allocObject();
      *(v1031 + 16) = 0;
      v1032 = swift_allocObject();
      *(v1032 + 16) = v1012;
      v40 = swift_allocObject();
      v41 = v1013;
      v1014 = v40;
      *(v40 + 16) = v1068;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v1014;
      v1033 = v42;
      *(v42 + 16) = v1069;
      *(v42 + 24) = v43;
      v1034 = swift_allocObject();
      *(v1034 + 16) = 112;
      v1035 = swift_allocObject();
      v1017 = 8;
      *(v1035 + 16) = 8;
      v1015 = swift_allocObject();
      *(v1015 + 16) = v1070;
      v44 = swift_allocObject();
      v45 = v1015;
      v1036 = v44;
      *(v44 + 16) = v1071;
      *(v44 + 24) = v45;
      v1037 = swift_allocObject();
      *(v1037 + 16) = 37;
      v1038 = swift_allocObject();
      *(v1038 + 16) = v1017;
      v46 = swift_allocObject();
      v47 = v1020;
      v1021 = v46;
      *(v46 + 16) = v1072;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v1021;
      v1040 = v48;
      *(v48 + 16) = v1073;
      *(v48 + 24) = v49;
      v1042 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1039 = sub_1B0E46A48();
      v1041 = v50;

      v51 = v1022;
      v52 = v1041;
      *v1041 = v1074;
      v52[1] = v51;

      v53 = v1023;
      v54 = v1041;
      v1041[2] = v1075;
      v54[3] = v53;

      v55 = v1024;
      v56 = v1041;
      v1041[4] = v1076;
      v56[5] = v55;

      v57 = v1025;
      v58 = v1041;
      v1041[6] = v1077;
      v58[7] = v57;

      v59 = v1026;
      v60 = v1041;
      v1041[8] = v1078;
      v60[9] = v59;

      v61 = v1027;
      v62 = v1041;
      v1041[10] = v1079;
      v62[11] = v61;

      v63 = v1028;
      v64 = v1041;
      v1041[12] = v1080;
      v64[13] = v63;

      v65 = v1029;
      v66 = v1041;
      v1041[14] = v1081;
      v66[15] = v65;

      v67 = v1030;
      v68 = v1041;
      v1041[16] = v1082;
      v68[17] = v67;

      v69 = v1031;
      v70 = v1041;
      v1041[18] = v1083;
      v70[19] = v69;

      v71 = v1032;
      v72 = v1041;
      v1041[20] = v1084;
      v72[21] = v71;

      v73 = v1033;
      v74 = v1041;
      v1041[22] = v1085;
      v74[23] = v73;

      v75 = v1034;
      v76 = v1041;
      v1041[24] = v1086;
      v76[25] = v75;

      v77 = v1035;
      v78 = v1041;
      v1041[26] = v1087;
      v78[27] = v77;

      v79 = v1036;
      v80 = v1041;
      v1041[28] = v1088;
      v80[29] = v79;

      v81 = v1037;
      v82 = v1041;
      v1041[30] = v1089;
      v82[31] = v81;

      v83 = v1038;
      v84 = v1041;
      v1041[32] = v1090;
      v84[33] = v83;

      v85 = v1040;
      v86 = v1041;
      v1041[34] = v1091;
      v86[35] = v85;
      sub_1B0394964();

      if (os_log_type_enabled(v1043, v1044))
      {
        v87 = v1047;
        v974 = sub_1B0E45D78();
        v973 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v975 = sub_1B03949A8(0);
        v976 = sub_1B03949A8(1);
        v977 = &v1159;
        v1159 = v974;
        v978 = &v1158;
        v1158 = v975;
        v979 = &v1157;
        v1157 = v976;
        sub_1B0394A48(3, &v1159);
        sub_1B0394A48(6, v977);
        v1155 = v1074;
        v1156 = v1022;
        sub_1B03949FC(&v1155, v977, v978, v979);
        v980 = v87;
        v981 = v1022;
        v982 = v1023;
        v983 = v1024;
        v984 = v1025;
        v985 = v1026;
        v986 = v1027;
        v987 = v1028;
        v988 = v1029;
        v989 = v1030;
        v990 = v1031;
        v991 = v1032;
        v992 = v1033;
        v993 = v1034;
        v994 = v1035;
        v995 = v1036;
        v996 = v1037;
        v997 = v1038;
        v998 = v1040;
        if (v87)
        {
          v954 = v981;
          v955 = v982;
          v956 = v983;
          v957 = v984;
          v958 = v985;
          v959 = v986;
          v960 = v987;
          v961 = v988;
          v962 = v989;
          v963 = v990;
          v964 = v991;
          v965 = v992;
          v966 = v993;
          v967 = v994;
          v968 = v995;
          v969 = v996;
          v970 = v997;
          v971 = v998;
          v630 = v998;
          v629 = v997;
          v628 = v996;
          v627 = v995;
          v626 = v994;
          v625 = v993;
          v624 = v992;
          v623 = v991;
          v622 = v990;
          v621 = v989;
          v620 = v988;
          v619 = v987;
          v618 = v986;
          v617 = v985;
          v616 = v984;
          v615 = v983;
          v614 = v982;

          __break(1u);
        }

        else
        {
          v1155 = v1075;
          v1156 = v1023;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v935 = 0;
          v936 = v1022;
          v937 = v1023;
          v938 = v1024;
          v939 = v1025;
          v940 = v1026;
          v941 = v1027;
          v942 = v1028;
          v943 = v1029;
          v944 = v1030;
          v945 = v1031;
          v946 = v1032;
          v947 = v1033;
          v948 = v1034;
          v949 = v1035;
          v950 = v1036;
          v951 = v1037;
          v952 = v1038;
          v953 = v1040;
          v1155 = v1076;
          v1156 = v1024;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v916 = 0;
          v917 = v1022;
          v918 = v1023;
          v919 = v1024;
          v920 = v1025;
          v921 = v1026;
          v922 = v1027;
          v923 = v1028;
          v924 = v1029;
          v925 = v1030;
          v926 = v1031;
          v927 = v1032;
          v928 = v1033;
          v929 = v1034;
          v930 = v1035;
          v931 = v1036;
          v932 = v1037;
          v933 = v1038;
          v934 = v1040;
          v1155 = v1077;
          v1156 = v1025;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v897 = 0;
          v898 = v1022;
          v899 = v1023;
          v900 = v1024;
          v901 = v1025;
          v902 = v1026;
          v903 = v1027;
          v904 = v1028;
          v905 = v1029;
          v906 = v1030;
          v907 = v1031;
          v908 = v1032;
          v909 = v1033;
          v910 = v1034;
          v911 = v1035;
          v912 = v1036;
          v913 = v1037;
          v914 = v1038;
          v915 = v1040;
          v1155 = v1078;
          v1156 = v1026;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v878 = 0;
          v879 = v1022;
          v880 = v1023;
          v881 = v1024;
          v882 = v1025;
          v883 = v1026;
          v884 = v1027;
          v885 = v1028;
          v886 = v1029;
          v887 = v1030;
          v888 = v1031;
          v889 = v1032;
          v890 = v1033;
          v891 = v1034;
          v892 = v1035;
          v893 = v1036;
          v894 = v1037;
          v895 = v1038;
          v896 = v1040;
          v1155 = v1079;
          v1156 = v1027;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v859 = 0;
          v860 = v1022;
          v861 = v1023;
          v862 = v1024;
          v863 = v1025;
          v864 = v1026;
          v865 = v1027;
          v866 = v1028;
          v867 = v1029;
          v868 = v1030;
          v869 = v1031;
          v870 = v1032;
          v871 = v1033;
          v872 = v1034;
          v873 = v1035;
          v874 = v1036;
          v875 = v1037;
          v876 = v1038;
          v877 = v1040;
          v1155 = v1080;
          v1156 = v1028;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v840 = 0;
          v841 = v1022;
          v842 = v1023;
          v843 = v1024;
          v844 = v1025;
          v845 = v1026;
          v846 = v1027;
          v847 = v1028;
          v848 = v1029;
          v849 = v1030;
          v850 = v1031;
          v851 = v1032;
          v852 = v1033;
          v853 = v1034;
          v854 = v1035;
          v855 = v1036;
          v856 = v1037;
          v857 = v1038;
          v858 = v1040;
          v1155 = v1081;
          v1156 = v1029;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v821 = 0;
          v822 = v1022;
          v823 = v1023;
          v824 = v1024;
          v825 = v1025;
          v826 = v1026;
          v827 = v1027;
          v828 = v1028;
          v829 = v1029;
          v830 = v1030;
          v831 = v1031;
          v832 = v1032;
          v833 = v1033;
          v834 = v1034;
          v835 = v1035;
          v836 = v1036;
          v837 = v1037;
          v838 = v1038;
          v839 = v1040;
          v1155 = v1082;
          v1156 = v1030;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v802 = 0;
          v803 = v1022;
          v804 = v1023;
          v805 = v1024;
          v806 = v1025;
          v807 = v1026;
          v808 = v1027;
          v809 = v1028;
          v810 = v1029;
          v811 = v1030;
          v812 = v1031;
          v813 = v1032;
          v814 = v1033;
          v815 = v1034;
          v816 = v1035;
          v817 = v1036;
          v818 = v1037;
          v819 = v1038;
          v820 = v1040;
          v1155 = v1083;
          v1156 = v1031;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v783 = 0;
          v784 = v1022;
          v785 = v1023;
          v786 = v1024;
          v787 = v1025;
          v788 = v1026;
          v789 = v1027;
          v790 = v1028;
          v791 = v1029;
          v792 = v1030;
          v793 = v1031;
          v794 = v1032;
          v795 = v1033;
          v796 = v1034;
          v797 = v1035;
          v798 = v1036;
          v799 = v1037;
          v800 = v1038;
          v801 = v1040;
          v1155 = v1084;
          v1156 = v1032;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v764 = 0;
          v765 = v1022;
          v766 = v1023;
          v767 = v1024;
          v768 = v1025;
          v769 = v1026;
          v770 = v1027;
          v771 = v1028;
          v772 = v1029;
          v773 = v1030;
          v774 = v1031;
          v775 = v1032;
          v776 = v1033;
          v777 = v1034;
          v778 = v1035;
          v779 = v1036;
          v780 = v1037;
          v781 = v1038;
          v782 = v1040;
          v1155 = v1085;
          v1156 = v1033;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v745 = 0;
          v746 = v1022;
          v747 = v1023;
          v748 = v1024;
          v749 = v1025;
          v750 = v1026;
          v751 = v1027;
          v752 = v1028;
          v753 = v1029;
          v754 = v1030;
          v755 = v1031;
          v756 = v1032;
          v757 = v1033;
          v758 = v1034;
          v759 = v1035;
          v760 = v1036;
          v761 = v1037;
          v762 = v1038;
          v763 = v1040;
          v1155 = v1086;
          v1156 = v1034;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v726 = 0;
          v727 = v1022;
          v728 = v1023;
          v729 = v1024;
          v730 = v1025;
          v731 = v1026;
          v732 = v1027;
          v733 = v1028;
          v734 = v1029;
          v735 = v1030;
          v736 = v1031;
          v737 = v1032;
          v738 = v1033;
          v739 = v1034;
          v740 = v1035;
          v741 = v1036;
          v742 = v1037;
          v743 = v1038;
          v744 = v1040;
          v1155 = v1087;
          v1156 = v1035;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v707 = 0;
          v708 = v1022;
          v709 = v1023;
          v710 = v1024;
          v711 = v1025;
          v712 = v1026;
          v713 = v1027;
          v714 = v1028;
          v715 = v1029;
          v716 = v1030;
          v717 = v1031;
          v718 = v1032;
          v719 = v1033;
          v720 = v1034;
          v721 = v1035;
          v722 = v1036;
          v723 = v1037;
          v724 = v1038;
          v725 = v1040;
          v1155 = v1088;
          v1156 = v1036;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v688 = 0;
          v689 = v1022;
          v690 = v1023;
          v691 = v1024;
          v692 = v1025;
          v693 = v1026;
          v694 = v1027;
          v695 = v1028;
          v696 = v1029;
          v697 = v1030;
          v698 = v1031;
          v699 = v1032;
          v700 = v1033;
          v701 = v1034;
          v702 = v1035;
          v703 = v1036;
          v704 = v1037;
          v705 = v1038;
          v706 = v1040;
          v1155 = v1089;
          v1156 = v1037;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v669 = 0;
          v670 = v1022;
          v671 = v1023;
          v672 = v1024;
          v673 = v1025;
          v674 = v1026;
          v675 = v1027;
          v676 = v1028;
          v677 = v1029;
          v678 = v1030;
          v679 = v1031;
          v680 = v1032;
          v681 = v1033;
          v682 = v1034;
          v683 = v1035;
          v684 = v1036;
          v685 = v1037;
          v686 = v1038;
          v687 = v1040;
          v1155 = v1090;
          v1156 = v1038;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v650 = 0;
          v651 = v1022;
          v652 = v1023;
          v653 = v1024;
          v654 = v1025;
          v655 = v1026;
          v656 = v1027;
          v657 = v1028;
          v658 = v1029;
          v659 = v1030;
          v660 = v1031;
          v661 = v1032;
          v662 = v1033;
          v663 = v1034;
          v664 = v1035;
          v665 = v1036;
          v666 = v1037;
          v667 = v1038;
          v668 = v1040;
          v1155 = v1091;
          v1156 = v1040;
          sub_1B03949FC(&v1155, &v1159, &v1158, &v1157);
          v631 = 0;
          v632 = v1022;
          v633 = v1023;
          v634 = v1024;
          v635 = v1025;
          v636 = v1026;
          v637 = v1027;
          v638 = v1028;
          v639 = v1029;
          v640 = v1030;
          v641 = v1031;
          v642 = v1032;
          v643 = v1033;
          v644 = v1034;
          v645 = v1035;
          v646 = v1036;
          v647 = v1037;
          v648 = v1038;
          v649 = v1040;
          _os_log_impl(&dword_1B0389000, v1043, v1044, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Mailbox is unblocked taget for move/copy.", v974, 0x2Bu);
          sub_1B03998A8(v975);
          sub_1B03998A8(v976);
          sub_1B0E45D58();

          v972 = v631;
        }
      }

      else
      {
        v88 = v1047;

        v972 = v88;
      }

      v613 = v972;
      MEMORY[0x1E69E5920](v1043);
      (*(v1123 + 8))(v1128, v1122);
      sub_1B074B764(v1145);
    }

    v609 = v1051;
    sub_1B06B91B0(__b);
    v610 = sub_1B0A0D370(v1059, v1132);
    v1172 = v610;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v611 = &v1187;
    sub_1B0E45448();
    memcpy(v1171, v611, sizeof(v1171));
    for (j = v1047; ; j = v172)
    {
      v606 = j;
      sub_1B0E45508();
      v607 = v1169;
      v608 = v1170;
      if (!v1169)
      {
        break;
      }

      v604 = v607;
      v605 = v608;
      v89 = v1126;
      v559 = v608;
      v558 = v607;
      v1167 = v607;
      v1168 = v608;
      sub_1B0394784(v1060 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v1130);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07B91DC(v1130, v558, v559, v1136);
      (*(v1123 + 16))(v89, v1136, v1122);
      sub_1B074B69C(v1136, v1143);
      sub_1B074B69C(v1143, v1140);
      sub_1B074E41C(v1143, v1138);
      v90 = (v1140 + *(v1134 + 20));
      v562 = *v90;
      v563 = *(v90 + 1);
      v564 = *(v90 + 1);
      v565 = *(v90 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1140);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v561 = 36;
      v578 = 7;
      v91 = swift_allocObject();
      v92 = v563;
      v93 = v564;
      v94 = v565;
      v567 = v91;
      *(v91 + 16) = v562;
      *(v91 + 20) = v92;
      *(v91 + 24) = v93;
      *(v91 + 32) = v94;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v95 = swift_allocObject();
      v96 = v563;
      v97 = v564;
      v98 = v565;
      v560 = v95;
      *(v95 + 16) = v562;
      *(v95 + 20) = v96;
      *(v95 + 24) = v97;
      *(v95 + 32) = v98;

      v577 = 32;
      v99 = swift_allocObject();
      v100 = v560;
      v572 = v99;
      *(v99 + 16) = v1092;
      *(v99 + 24) = v100;
      sub_1B0394868();
      sub_1B0394868();

      v101 = swift_allocObject();
      v102 = v563;
      v103 = v564;
      v104 = v565;
      v105 = v101;
      v106 = v1138;
      v579 = v105;
      *(v105 + 16) = v562;
      *(v105 + 20) = v102;
      *(v105 + 24) = v103;
      *(v105 + 32) = v104;
      sub_1B074B764(v106);
      v602 = sub_1B0E43988();
      v603 = sub_1B0E45908();
      v575 = 17;
      v581 = swift_allocObject();
      v569 = 16;
      *(v581 + 16) = 16;
      v582 = swift_allocObject();
      v571 = 4;
      *(v582 + 16) = 4;
      v107 = swift_allocObject();
      v566 = v107;
      *(v107 + 16) = v1062;
      *(v107 + 24) = 0;
      v108 = swift_allocObject();
      v109 = v566;
      v583 = v108;
      *(v108 + 16) = v1093;
      *(v108 + 24) = v109;
      v584 = swift_allocObject();
      *(v584 + 16) = 0;
      v585 = swift_allocObject();
      *(v585 + 16) = 1;
      v110 = swift_allocObject();
      v111 = v567;
      v568 = v110;
      *(v110 + 16) = v1094;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      v113 = v568;
      v586 = v112;
      *(v112 + 16) = v1095;
      *(v112 + 24) = v113;
      v587 = swift_allocObject();
      *(v587 + 16) = v569;
      v588 = swift_allocObject();
      *(v588 + 16) = v571;
      v114 = swift_allocObject();
      v570 = v114;
      *(v114 + 16) = v1066;
      *(v114 + 24) = 0;
      v115 = swift_allocObject();
      v116 = v570;
      v589 = v115;
      *(v115 + 16) = v1096;
      *(v115 + 24) = v116;
      v590 = swift_allocObject();
      *(v590 + 16) = 0;
      v591 = swift_allocObject();
      *(v591 + 16) = v571;
      v117 = swift_allocObject();
      v118 = v572;
      v573 = v117;
      *(v117 + 16) = v1097;
      *(v117 + 24) = v118;
      v119 = swift_allocObject();
      v120 = v573;
      v592 = v119;
      *(v119 + 16) = v1098;
      *(v119 + 24) = v120;
      v593 = swift_allocObject();
      *(v593 + 16) = 112;
      v594 = swift_allocObject();
      v576 = 8;
      *(v594 + 16) = 8;
      v574 = swift_allocObject();
      *(v574 + 16) = v1070;
      v121 = swift_allocObject();
      v122 = v574;
      v595 = v121;
      *(v121 + 16) = v1099;
      *(v121 + 24) = v122;
      v596 = swift_allocObject();
      *(v596 + 16) = 37;
      v597 = swift_allocObject();
      *(v597 + 16) = v576;
      v123 = swift_allocObject();
      v124 = v579;
      v580 = v123;
      *(v123 + 16) = v1100;
      *(v123 + 24) = v124;
      v125 = swift_allocObject();
      v126 = v580;
      v599 = v125;
      *(v125 + 16) = v1101;
      *(v125 + 24) = v126;
      v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v598 = sub_1B0E46A48();
      v600 = v127;

      v128 = v581;
      v129 = v600;
      *v600 = v1102;
      v129[1] = v128;

      v130 = v582;
      v131 = v600;
      v600[2] = v1103;
      v131[3] = v130;

      v132 = v583;
      v133 = v600;
      v600[4] = v1104;
      v133[5] = v132;

      v134 = v584;
      v135 = v600;
      v600[6] = v1105;
      v135[7] = v134;

      v136 = v585;
      v137 = v600;
      v600[8] = v1106;
      v137[9] = v136;

      v138 = v586;
      v139 = v600;
      v600[10] = v1107;
      v139[11] = v138;

      v140 = v587;
      v141 = v600;
      v600[12] = v1108;
      v141[13] = v140;

      v142 = v588;
      v143 = v600;
      v600[14] = v1109;
      v143[15] = v142;

      v144 = v589;
      v145 = v600;
      v600[16] = v1110;
      v145[17] = v144;

      v146 = v590;
      v147 = v600;
      v600[18] = v1111;
      v147[19] = v146;

      v148 = v591;
      v149 = v600;
      v600[20] = v1112;
      v149[21] = v148;

      v150 = v592;
      v151 = v600;
      v600[22] = v1113;
      v151[23] = v150;

      v152 = v593;
      v153 = v600;
      v600[24] = v1114;
      v153[25] = v152;

      v154 = v594;
      v155 = v600;
      v600[26] = v1115;
      v155[27] = v154;

      v156 = v595;
      v157 = v600;
      v600[28] = v1116;
      v157[29] = v156;

      v158 = v596;
      v159 = v600;
      v600[30] = v1117;
      v159[31] = v158;

      v160 = v597;
      v161 = v600;
      v600[32] = v1118;
      v161[33] = v160;

      v162 = v599;
      v163 = v600;
      v600[34] = v1119;
      v163[35] = v162;
      sub_1B0394964();

      if (os_log_type_enabled(v602, v603))
      {
        v164 = v606;
        v533 = sub_1B0E45D78();
        v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v534 = sub_1B03949A8(0);
        v535 = sub_1B03949A8(1);
        v536 = &v1166;
        v1166 = v533;
        v537 = &v1165;
        v1165 = v534;
        v538 = &v1164;
        v1164 = v535;
        sub_1B0394A48(3, &v1166);
        sub_1B0394A48(6, v536);
        v1162 = v1102;
        v1163 = v581;
        sub_1B03949FC(&v1162, v536, v537, v538);
        v539 = v164;
        v540 = v581;
        v541 = v582;
        v542 = v583;
        v543 = v584;
        v544 = v585;
        v545 = v586;
        v546 = v587;
        v547 = v588;
        v548 = v589;
        v549 = v590;
        v550 = v591;
        v551 = v592;
        v552 = v593;
        v553 = v594;
        v554 = v595;
        v555 = v596;
        v556 = v597;
        v557 = v599;
        if (v164)
        {
          v513 = v540;
          v514 = v541;
          v515 = v542;
          v516 = v543;
          v517 = v544;
          v518 = v545;
          v519 = v546;
          v520 = v547;
          v521 = v548;
          v522 = v549;
          v523 = v550;
          v524 = v551;
          v525 = v552;
          v526 = v553;
          v527 = v554;
          v528 = v555;
          v529 = v556;
          v530 = v557;
          v189 = v557;
          v188 = v556;
          v187 = v555;
          v186 = v554;
          v185 = v553;
          v184 = v552;
          v183 = v551;
          v182 = v550;
          v181 = v549;
          v180 = v548;
          v179 = v547;
          v178 = v546;
          v177 = v545;
          v176 = v544;
          v175 = v543;
          v174 = v542;
          v173 = v541;

          __break(1u);
        }

        else
        {
          v1162 = v1103;
          v1163 = v582;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v494 = 0;
          v495 = v581;
          v496 = v582;
          v497 = v583;
          v498 = v584;
          v499 = v585;
          v500 = v586;
          v501 = v587;
          v502 = v588;
          v503 = v589;
          v504 = v590;
          v505 = v591;
          v506 = v592;
          v507 = v593;
          v508 = v594;
          v509 = v595;
          v510 = v596;
          v511 = v597;
          v512 = v599;
          v1162 = v1104;
          v1163 = v583;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v475 = 0;
          v476 = v581;
          v477 = v582;
          v478 = v583;
          v479 = v584;
          v480 = v585;
          v481 = v586;
          v482 = v587;
          v483 = v588;
          v484 = v589;
          v485 = v590;
          v486 = v591;
          v487 = v592;
          v488 = v593;
          v489 = v594;
          v490 = v595;
          v491 = v596;
          v492 = v597;
          v493 = v599;
          v1162 = v1105;
          v1163 = v584;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v456 = 0;
          v457 = v581;
          v458 = v582;
          v459 = v583;
          v460 = v584;
          v461 = v585;
          v462 = v586;
          v463 = v587;
          v464 = v588;
          v465 = v589;
          v466 = v590;
          v467 = v591;
          v468 = v592;
          v469 = v593;
          v470 = v594;
          v471 = v595;
          v472 = v596;
          v473 = v597;
          v474 = v599;
          v1162 = v1106;
          v1163 = v585;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v437 = 0;
          v438 = v581;
          v439 = v582;
          v440 = v583;
          v441 = v584;
          v442 = v585;
          v443 = v586;
          v444 = v587;
          v445 = v588;
          v446 = v589;
          v447 = v590;
          v448 = v591;
          v449 = v592;
          v450 = v593;
          v451 = v594;
          v452 = v595;
          v453 = v596;
          v454 = v597;
          v455 = v599;
          v1162 = v1107;
          v1163 = v586;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v418 = 0;
          v419 = v581;
          v420 = v582;
          v421 = v583;
          v422 = v584;
          v423 = v585;
          v424 = v586;
          v425 = v587;
          v426 = v588;
          v427 = v589;
          v428 = v590;
          v429 = v591;
          v430 = v592;
          v431 = v593;
          v432 = v594;
          v433 = v595;
          v434 = v596;
          v435 = v597;
          v436 = v599;
          v1162 = v1108;
          v1163 = v587;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v399 = 0;
          v400 = v581;
          v401 = v582;
          v402 = v583;
          v403 = v584;
          v404 = v585;
          v405 = v586;
          v406 = v587;
          v407 = v588;
          v408 = v589;
          v409 = v590;
          v410 = v591;
          v411 = v592;
          v412 = v593;
          v413 = v594;
          v414 = v595;
          v415 = v596;
          v416 = v597;
          v417 = v599;
          v1162 = v1109;
          v1163 = v588;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v380 = 0;
          v381 = v581;
          v382 = v582;
          v383 = v583;
          v384 = v584;
          v385 = v585;
          v386 = v586;
          v387 = v587;
          v388 = v588;
          v389 = v589;
          v390 = v590;
          v391 = v591;
          v392 = v592;
          v393 = v593;
          v394 = v594;
          v395 = v595;
          v396 = v596;
          v397 = v597;
          v398 = v599;
          v1162 = v1110;
          v1163 = v589;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v361 = 0;
          v362 = v581;
          v363 = v582;
          v364 = v583;
          v365 = v584;
          v366 = v585;
          v367 = v586;
          v368 = v587;
          v369 = v588;
          v370 = v589;
          v371 = v590;
          v372 = v591;
          v373 = v592;
          v374 = v593;
          v375 = v594;
          v376 = v595;
          v377 = v596;
          v378 = v597;
          v379 = v599;
          v1162 = v1111;
          v1163 = v590;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v342 = 0;
          v343 = v581;
          v344 = v582;
          v345 = v583;
          v346 = v584;
          v347 = v585;
          v348 = v586;
          v349 = v587;
          v350 = v588;
          v351 = v589;
          v352 = v590;
          v353 = v591;
          v354 = v592;
          v355 = v593;
          v356 = v594;
          v357 = v595;
          v358 = v596;
          v359 = v597;
          v360 = v599;
          v1162 = v1112;
          v1163 = v591;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v323 = 0;
          v324 = v581;
          v325 = v582;
          v326 = v583;
          v327 = v584;
          v328 = v585;
          v329 = v586;
          v330 = v587;
          v331 = v588;
          v332 = v589;
          v333 = v590;
          v334 = v591;
          v335 = v592;
          v336 = v593;
          v337 = v594;
          v338 = v595;
          v339 = v596;
          v340 = v597;
          v341 = v599;
          v1162 = v1113;
          v1163 = v592;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v304 = 0;
          v305 = v581;
          v306 = v582;
          v307 = v583;
          v308 = v584;
          v309 = v585;
          v310 = v586;
          v311 = v587;
          v312 = v588;
          v313 = v589;
          v314 = v590;
          v315 = v591;
          v316 = v592;
          v317 = v593;
          v318 = v594;
          v319 = v595;
          v320 = v596;
          v321 = v597;
          v322 = v599;
          v1162 = v1114;
          v1163 = v593;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v285 = 0;
          v286 = v581;
          v287 = v582;
          v288 = v583;
          v289 = v584;
          v290 = v585;
          v291 = v586;
          v292 = v587;
          v293 = v588;
          v294 = v589;
          v295 = v590;
          v296 = v591;
          v297 = v592;
          v298 = v593;
          v299 = v594;
          v300 = v595;
          v301 = v596;
          v302 = v597;
          v303 = v599;
          v1162 = v1115;
          v1163 = v594;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v266 = 0;
          v267 = v581;
          v268 = v582;
          v269 = v583;
          v270 = v584;
          v271 = v585;
          v272 = v586;
          v273 = v587;
          v274 = v588;
          v275 = v589;
          v276 = v590;
          v277 = v591;
          v278 = v592;
          v279 = v593;
          v280 = v594;
          v281 = v595;
          v282 = v596;
          v283 = v597;
          v284 = v599;
          v1162 = v1116;
          v1163 = v595;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v247 = 0;
          v248 = v581;
          v249 = v582;
          v250 = v583;
          v251 = v584;
          v252 = v585;
          v253 = v586;
          v254 = v587;
          v255 = v588;
          v256 = v589;
          v257 = v590;
          v258 = v591;
          v259 = v592;
          v260 = v593;
          v261 = v594;
          v262 = v595;
          v263 = v596;
          v264 = v597;
          v265 = v599;
          v1162 = v1117;
          v1163 = v596;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v228 = 0;
          v229 = v581;
          v230 = v582;
          v231 = v583;
          v232 = v584;
          v233 = v585;
          v234 = v586;
          v235 = v587;
          v236 = v588;
          v237 = v589;
          v238 = v590;
          v239 = v591;
          v240 = v592;
          v241 = v593;
          v242 = v594;
          v243 = v595;
          v244 = v596;
          v245 = v597;
          v246 = v599;
          v1162 = v1118;
          v1163 = v597;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v209 = 0;
          v210 = v581;
          v211 = v582;
          v212 = v583;
          v213 = v584;
          v214 = v585;
          v215 = v586;
          v216 = v587;
          v217 = v588;
          v218 = v589;
          v219 = v590;
          v220 = v591;
          v221 = v592;
          v222 = v593;
          v223 = v594;
          v224 = v595;
          v225 = v596;
          v226 = v597;
          v227 = v599;
          v1162 = v1119;
          v1163 = v599;
          sub_1B03949FC(&v1162, &v1166, &v1165, &v1164);
          v190 = 0;
          v191 = v581;
          v192 = v582;
          v193 = v583;
          v194 = v584;
          v195 = v585;
          v196 = v586;
          v197 = v587;
          v198 = v588;
          v199 = v589;
          v200 = v590;
          v201 = v591;
          v202 = v592;
          v203 = v593;
          v204 = v594;
          v205 = v595;
          v206 = v596;
          v207 = v597;
          v208 = v599;
          _os_log_impl(&dword_1B0389000, v602, v603, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Mailbox is unblocked source for move/copy.", v533, 0x2Bu);
          sub_1B03998A8(v534);
          sub_1B03998A8(v535);
          sub_1B0E45D58();

          v531 = v190;
        }
      }

      else
      {
        v165 = v606;

        v531 = v165;
      }

      v172 = v531;
      MEMORY[0x1E69E5920](v602);
      (*(v1123 + 8))(v1126, v1122);
      v171[0] = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v166 = v171[0];
      v167 = v559;
      *(v171[0] + 16) = v558;
      *(v166 + 24) = v167;
      v168 = sub_1B0E46A48();
      v169 = v171[0];
      *(v171[0] + 32) = v168;
      *(v169 + 40) = 0;
      v171[1] = v169 | 0x9000000000000000;
      sub_1B039C1F8(v169 | 0x9000000000000000);

      sub_1B074B764(v1136);
    }

    sub_1B06B91B0(v1171);
  }
}

uint64_t sub_1B0A0D260(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v2 = *(a2 + 72);
  v6 = v2;
  v7 = *(a2 + 80);
  v11 = a2;
  sub_1B07C9330(v2);
  v9 = v6;
  v10 = v7;
  v8 = static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v6, v7, 0, 0);
  sub_1B0A1E870(&v9);
  result = v8;
  if ((v8 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B0E454D8();
  }

  return result;
}

uint64_t sub_1B0A0D370(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = 0;
  v35 = 0;
  v37 = a1;
  v36 = a2;
  v33 = a1;
  v21 = sub_1B0E42E68();
  v20 = v21;
  v22 = sub_1B0E46A48();
  v23 = sub_1B07BAD2C();
  v32 = sub_1B0E45438();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  v24 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36F0, &qword_1B0E9EF80);
  sub_1B06E3654();
  sub_1B0E44FD8();
  v27 = 0;

  v17 = v34;
  v31 = v34;
  if (sub_1B0E454F8())
  {
    v6[1] = &type metadata for MailboxName;
    v6[2] = sub_1B0E46A48();
    sub_1B0451F2C();
    v7 = sub_1B0E45438();

    v9 = v7;
    v10 = v27;
  }

  else
  {
    v2 = v27;
    v29 = v18;
    v11 = &type metadata for MailboxName;
    v12 = sub_1B0E46A48();
    sub_1B0451F2C();
    v28 = sub_1B0E45438();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v13 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v14 = v5;
    v5[2] = v17;
    v5[3] = v3;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    sub_1B071CEA8();
    sub_1B0E44FD8();
    v16 = v2;

    v8 = v30;

    v9 = v8;
    v10 = v16;
  }

  return v9;
}

uint64_t sub_1B0A0D6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v16 = 0;
  v3 = _s18MailboxPersistenceVMa();
  v15 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v4 = &v13 - v15;
  v31 = &v13 - v15;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v13 - v17;
  v34 = sub_1B0E42E68();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v21 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v20);
  v22 = &v13 - v21;
  v23 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v24 = &v13 - v23;
  v25 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v26 = &v13 - v25;
  v41 = &v13 - v25;
  v40 = v9;
  v29 = *v10;
  v30 = *(v10 + 8);
  v38 = v29;
  v39 = v30;
  v37 = v11;
  v27 = v11 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v28 = &v36;
  swift_beginAccess();
  sub_1B03F4D78(v27, v4);
  swift_endAccess();
  sub_1B07C122C(v29, v30, v35);
  sub_1B03F4F08(v31);
  if ((*(v32 + 48))(v35, 1, v34) == 1)
  {
    return sub_1B06E3800(v35);
  }

  (*(v32 + 32))(v26, v35, v34);
  (*(v32 + 16))(v22, v26, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36F0, &qword_1B0E9EF80);
  sub_1B0E454D8();
  v14 = *(v32 + 8);
  v13 = v32 + 8;
  v14(v24, v34);
  return (v14)(v26, v34);
}

uint64_t sub_1B0A0DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v103 = 0;
  v104 = 0;
  v72 = 0;
  v4 = _s18MailboxPersistenceVMa();
  v70 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v23[-v70];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v23[-v74];
  v76 = sub_1B0E42E68();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v23[-v79];
  v116 = &v23[-v79];
  v81 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v23[-v81];
  v83 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23[-v81]);
  v84 = &v23[-v83];
  v89 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v88);
  v90 = &v23[-v89];
  v91 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v92 = &v23[-v91];
  v93 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v23[-v93];
  v95 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v96 = &v23[-v95];
  v97 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v98 = &v23[-v97];
  v115 = v16;
  v99 = *v17;
  v114 = v99;
  v113 = v18;
  v112 = v19;
  MEMORY[0x1E69E5928](v99);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v100 = result;
  if (result)
  {
    v69 = v100;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v99);
    v69 = 0;
  }

  v68 = v69;
  if (!v69)
  {
    return result;
  }

  v67 = v68;
  v65 = v68;
  v111 = v68;
  v21 = [v68 transferType];
  v63 = &v110;
  v110 = v21;
  v61 = &v109;
  v109 = 0;
  v62 = type metadata accessor for ECTransferMessageActionType();
  v64 = sub_1B071C014();
  v66 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v65);
  if (v66)
  {
    v60 = 1;
  }

  else
  {
    v108 = [v65 transferType];
    v107 = 1;
    v60 = sub_1B0E46AE8();
  }

  v59 = v60;
  MEMORY[0x1E69E5920](v65);
  if ((v59 & 1) == 0)
  {
    return MEMORY[0x1E69E5920](v65);
  }

  v57 = [v65 itemsToCopy];
  sub_1B071C094();
  v56 = sub_1B0E451B8();
  v106 = v56;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  v58 = sub_1B0E45748();

  MEMORY[0x1E69E5920](v57);
  if (v58)
  {
    return MEMORY[0x1E69E5920](v65);
  }

  MEMORY[0x1E69E5928](v65);
  v49 = [v65 mailboxURL];
  sub_1B0E42DE8();
  v50 = *(v77 + 32);
  v51 = v77 + 32;
  v50(v98, v84, v76);
  MEMORY[0x1E69E5920](v65);
  v52 = *(v77 + 56);
  v53 = v77 + 56;
  v52(v98, 0, 1, v76);
  v54 = [v65 destinationMailboxURL];
  if (v54)
  {
    v48 = v54;
    v47 = v54;
    sub_1B0E42DE8();
    v50(v96, v82, v76);
    v52(v96, 0, 1, v76);
    MEMORY[0x1E69E5920](v47);
  }

  else
  {
    v52(v96, 1, 1, v76);
  }

  v44 = &v75[*(v73 + 48)];
  sub_1B071C180(v98, v75);
  sub_1B071C180(v96, v44);
  v45 = *(v77 + 48);
  v46 = v77 + 48;
  if (v45(v75, 1, v76) == 1)
  {
    if (v45(v44, 1, v76) != 1)
    {
      goto LABEL_23;
    }

    sub_1B06E3800(v75);
    v43 = 1;
  }

  else
  {
    sub_1B071C180(v75, v94);
    if (v45(v44, 1, v76) == 1)
    {
      (*(v77 + 8))(v94, v76);
LABEL_23:
      sub_1B071C2A8(v75);
      v43 = 0;
      goto LABEL_21;
    }

    v50(v82, v44, v76);
    sub_1B071C3D4();
    v42 = sub_1B0E44A28();
    v41 = *(v77 + 8);
    v40 = v77 + 8;
    v41(v82, v76);
    v41(v94, v76);
    sub_1B06E3800(v75);
    v43 = v42;
  }

LABEL_21:
  v39 = v43;
  sub_1B06E3800(v96);
  sub_1B06E3800(v98);
  MEMORY[0x1E69E5920](v49);
  if (v39)
  {
    return MEMORY[0x1E69E5920](v65);
  }

  v38 = [v65 destinationMailboxURL];
  if (v38)
  {
    v37 = v38;
    v36 = v38;
    sub_1B0E42DE8();
    v50(v92, v82, v76);
    v52(v92, 0, 1, v76);
    MEMORY[0x1E69E5920](v36);
  }

  else
  {
    v52(v92, 1, 1, v76);
  }

  if (v45(v92, 1, v76) == 1)
  {
    sub_1B06E3800(v92);
    return MEMORY[0x1E69E5920](v65);
  }

  else
  {
    v50(v80, v92, v76);
    sub_1B07BAD2C();
    if (sub_1B0E45528())
    {
      v33 = v87 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
      v34 = &v105;
      swift_beginAccess();
      sub_1B03F4D78(v33, v71);
      swift_endAccess();
      v35 = [v65 sourceMailboxURL];
      if (v35)
      {
        v32 = v35;
        v31 = v35;
        sub_1B0E42DE8();
        v50(v90, v82, v76);
        v52(v90, 0, 1, v76);
        MEMORY[0x1E69E5920](v31);
      }

      else
      {
        v52(v90, 1, 1, v76);
      }

      v30 = sub_1B07BF5C8(v90);
      v29 = v22;
      sub_1B06E3800(v90);
      sub_1B03F4F08(v71);
      if (v30)
      {
        v27 = v30;
        v28 = v29;
        v24 = v29;
        v26 = v30;
        v103 = v30;
        v104 = v29;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v25 = &v101;
        v101 = v26;
        v102 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
        sub_1B0E454D8();
      }
    }

    (*(v77 + 8))(v80, v76);
    return MEMORY[0x1E69E5920](v65);
  }
}

uint64_t sub_1B0A0EB1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v433 = a1;
  v434 = a2;
  v422 = a3;
  v423 = a4;
  v424 = a5;
  v435 = a6;
  v436 = a7;
  v425 = a8;
  v344 = sub_1B074E050;
  v345 = sub_1B0394C30;
  v346 = sub_1B0394C24;
  v347 = sub_1B074DFFC;
  v348 = sub_1B039BA88;
  v349 = sub_1B039BB94;
  v350 = sub_1B0394C24;
  v351 = sub_1B039BBA0;
  v352 = sub_1B039BC08;
  v353 = 0x786F626C69616DLL;
  v354 = sub_1B06BA324;
  v355 = sub_1B074E0E4;
  v356 = sub_1B039BCF8;
  v357 = sub_1B070B550;
  v358 = sub_1B039BCF8;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0399178;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B039BA94;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0399178;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B03991EC;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0398F5C;
  v373 = sub_1B03993BC;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B039BCEC;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B039BCEC;
  v380 = sub_1B074E050;
  v381 = sub_1B0394C24;
  v382 = sub_1B074DFFC;
  v383 = sub_1B039BA88;
  v384 = sub_1B0394C24;
  v385 = sub_1B039BBA0;
  v386 = sub_1B039BC08;
  v387 = sub_1B06BA324;
  v388 = sub_1B074E0E4;
  v389 = sub_1B039BCF8;
  v390 = sub_1B070B550;
  v391 = sub_1B039BCF8;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0399178;
  v395 = sub_1B0398F5C;
  v396 = sub_1B0398F5C;
  v397 = sub_1B039BA94;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0399178;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0398F5C;
  v403 = sub_1B03991EC;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0398F5C;
  v406 = sub_1B03993BC;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B039BCEC;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0398F5C;
  v412 = sub_1B039BCEC;
  v461 = 0;
  v462 = 0;
  v459 = 0;
  v460 = 0;
  v458 = 0;
  v456 = 0;
  v457 = 0;
  v455 = 0;
  v454 = 0;
  v413 = 0;
  v446 = 0u;
  v447 = 0u;
  v440 = 0;
  v439 = 0;
  v414 = 0;
  v415 = _s6LoggerVMa_1();
  v416 = (*(*(v415 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](0);
  v417 = v199 - v416;
  v418 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v419 = v199 - v418;
  v420 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v421 = v199 - v420;
  v426 = sub_1B0E439A8();
  v427 = *(v426 - 8);
  v428 = v426 - 8;
  v429 = (*(v427 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v433);
  v430 = v199 - v429;
  v431 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v432 = v199 - v431;
  v461 = v15;
  v462 = v16;
  v459 = v17;
  v460 = v18;
  v458 = v19;
  v456 = v20;
  v457 = v21;
  v455 = v22;
  v454 = v8;
  sub_1B0A1D2AC();
  sub_1B092AB14(v433, v434, &unk_1F26C8EE0, v453);
  v437 = v453[0];
  v438 = v453[1];
  if (*(&v453[0] + 1))
  {
    v342 = v437;
    v343 = v438;
    v338 = *(&v438 + 1);
    v339 = *(&v437 + 1);
    v446 = v437;
    v447 = v438;
    v340 = sub_1B0A127A8(v437, *(&v437 + 1), v438, *(&v438 + 1), v424);
    v341 = v23;
    if (v340)
    {
      v336 = v340;
      v337 = v341;
      v333 = v341;
      v332 = v340;
      v440 = v340;
      v439 = v341;

      v334 = v332;
      v335 = v333;
    }

    else
    {
      (*(v427 + 16))(v432, v425, v426);
      sub_1B074B69C(v425, v421);
      sub_1B074B69C(v421, v419);
      sub_1B074E41C(v421, v417);
      v24 = (v419 + *(v415 + 20));
      v285 = *v24;
      v286 = *(v24 + 1);
      v287 = *(v24 + 1);
      v288 = *(v24 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v419);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v284 = 36;
      v303 = 7;
      v25 = swift_allocObject();
      v26 = v286;
      v27 = v287;
      v28 = v288;
      v290 = v25;
      *(v25 + 16) = v285;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v286;
      v31 = v287;
      v32 = v288;
      v283 = v29;
      *(v29 + 16) = v285;
      *(v29 + 20) = v30;
      *(v29 + 24) = v31;
      *(v29 + 32) = v32;

      v302 = 32;
      v33 = swift_allocObject();
      v34 = v283;
      v295 = v33;
      *(v33 + 16) = v344;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      v35 = swift_allocObject();
      v36 = v286;
      v37 = v287;
      v38 = v288;
      v39 = v35;
      v40 = v417;
      v298 = v39;
      *(v39 + 16) = v285;
      *(v39 + 20) = v36;
      *(v39 + 24) = v37;
      *(v39 + 32) = v38;
      sub_1B074B764(v40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = swift_allocObject();
      v42 = v423;
      v304 = v41;
      *(v41 + 16) = v422;
      *(v41 + 24) = v42;
      v330 = sub_1B0E43988();
      v331 = sub_1B0E458E8();
      v300 = 17;
      v306 = swift_allocObject();
      v292 = 16;
      *(v306 + 16) = 16;
      v307 = swift_allocObject();
      v294 = 4;
      *(v307 + 16) = 4;
      v43 = swift_allocObject();
      v289 = v43;
      *(v43 + 16) = v345;
      *(v43 + 24) = 0;
      v44 = swift_allocObject();
      v45 = v289;
      v308 = v44;
      *(v44 + 16) = v346;
      *(v44 + 24) = v45;
      v309 = swift_allocObject();
      *(v309 + 16) = 0;
      v310 = swift_allocObject();
      *(v310 + 16) = 1;
      v46 = swift_allocObject();
      v47 = v290;
      v291 = v46;
      *(v46 + 16) = v347;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v291;
      v311 = v48;
      *(v48 + 16) = v348;
      *(v48 + 24) = v49;
      v312 = swift_allocObject();
      *(v312 + 16) = v292;
      v313 = swift_allocObject();
      *(v313 + 16) = v294;
      v50 = swift_allocObject();
      v293 = v50;
      *(v50 + 16) = v349;
      *(v50 + 24) = 0;
      v51 = swift_allocObject();
      v52 = v293;
      v314 = v51;
      *(v51 + 16) = v350;
      *(v51 + 24) = v52;
      v315 = swift_allocObject();
      *(v315 + 16) = 0;
      v316 = swift_allocObject();
      *(v316 + 16) = v294;
      v53 = swift_allocObject();
      v54 = v295;
      v296 = v53;
      *(v53 + 16) = v351;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v296;
      v317 = v55;
      *(v55 + 16) = v352;
      *(v55 + 24) = v56;
      v318 = swift_allocObject();
      *(v318 + 16) = 112;
      v319 = swift_allocObject();
      v301 = 8;
      *(v319 + 16) = 8;
      v297 = swift_allocObject();
      *(v297 + 16) = v353;
      v57 = swift_allocObject();
      v58 = v297;
      v320 = v57;
      *(v57 + 16) = v354;
      *(v57 + 24) = v58;
      v321 = swift_allocObject();
      *(v321 + 16) = 37;
      v322 = swift_allocObject();
      *(v322 + 16) = v301;
      v59 = swift_allocObject();
      v60 = v298;
      v299 = v59;
      *(v59 + 16) = v355;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v299;
      v323 = v61;
      *(v61 + 16) = v356;
      *(v61 + 24) = v62;
      v324 = swift_allocObject();
      *(v324 + 16) = 34;
      v325 = swift_allocObject();
      *(v325 + 16) = v301;
      v63 = swift_allocObject();
      v64 = v304;
      v305 = v63;
      *(v63 + 16) = v357;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v305;
      v327 = v65;
      *(v65 + 16) = v358;
      *(v65 + 24) = v66;
      v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v326 = sub_1B0E46A48();
      v328 = v67;

      v68 = v306;
      v69 = v328;
      *v328 = v359;
      v69[1] = v68;

      v70 = v307;
      v71 = v328;
      v328[2] = v360;
      v71[3] = v70;

      v72 = v308;
      v73 = v328;
      v328[4] = v361;
      v73[5] = v72;

      v74 = v309;
      v75 = v328;
      v328[6] = v362;
      v75[7] = v74;

      v76 = v310;
      v77 = v328;
      v328[8] = v363;
      v77[9] = v76;

      v78 = v311;
      v79 = v328;
      v328[10] = v364;
      v79[11] = v78;

      v80 = v312;
      v81 = v328;
      v328[12] = v365;
      v81[13] = v80;

      v82 = v313;
      v83 = v328;
      v328[14] = v366;
      v83[15] = v82;

      v84 = v314;
      v85 = v328;
      v328[16] = v367;
      v85[17] = v84;

      v86 = v315;
      v87 = v328;
      v328[18] = v368;
      v87[19] = v86;

      v88 = v316;
      v89 = v328;
      v328[20] = v369;
      v89[21] = v88;

      v90 = v317;
      v91 = v328;
      v328[22] = v370;
      v91[23] = v90;

      v92 = v318;
      v93 = v328;
      v328[24] = v371;
      v93[25] = v92;

      v94 = v319;
      v95 = v328;
      v328[26] = v372;
      v95[27] = v94;

      v96 = v320;
      v97 = v328;
      v328[28] = v373;
      v97[29] = v96;

      v98 = v321;
      v99 = v328;
      v328[30] = v374;
      v99[31] = v98;

      v100 = v322;
      v101 = v328;
      v328[32] = v375;
      v101[33] = v100;

      v102 = v323;
      v103 = v328;
      v328[34] = v376;
      v103[35] = v102;

      v104 = v324;
      v105 = v328;
      v328[36] = v377;
      v105[37] = v104;

      v106 = v325;
      v107 = v328;
      v328[38] = v378;
      v107[39] = v106;

      v108 = v327;
      v109 = v328;
      v328[40] = v379;
      v109[41] = v108;
      sub_1B0394964();

      if (os_log_type_enabled(v330, v331))
      {
        v110 = v413;
        v276 = sub_1B0E45D78();
        v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v277 = sub_1B03949A8(0);
        v278 = sub_1B03949A8(2);
        v279 = &v445;
        v445 = v276;
        v280 = &v444;
        v444 = v277;
        v281 = &v443;
        v443 = v278;
        sub_1B0394A48(3, &v445);
        sub_1B0394A48(7, v279);
        v441 = v359;
        v442 = v306;
        sub_1B03949FC(&v441, v279, v280, v281);
        v282 = v110;
        if (v110)
        {

          __break(1u);
        }

        else
        {
          v441 = v360;
          v442 = v307;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v274 = 0;
          v441 = v361;
          v442 = v308;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v273 = 0;
          v441 = v362;
          v442 = v309;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v272 = 0;
          v441 = v363;
          v442 = v310;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v271 = 0;
          v441 = v364;
          v442 = v311;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v270 = 0;
          v441 = v365;
          v442 = v312;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v269 = 0;
          v441 = v366;
          v442 = v313;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v268 = 0;
          v441 = v367;
          v442 = v314;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v267 = 0;
          v441 = v368;
          v442 = v315;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v266 = 0;
          v441 = v369;
          v442 = v316;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v265 = 0;
          v441 = v370;
          v442 = v317;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v264 = 0;
          v441 = v371;
          v442 = v318;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v263 = 0;
          v441 = v372;
          v442 = v319;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v262 = 0;
          v441 = v373;
          v442 = v320;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v261 = 0;
          v441 = v374;
          v442 = v321;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v260 = 0;
          v441 = v375;
          v442 = v322;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v259 = 0;
          v441 = v376;
          v442 = v323;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v258 = 0;
          v441 = v377;
          v442 = v324;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v257 = 0;
          v441 = v378;
          v442 = v325;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          v256 = 0;
          v441 = v379;
          v442 = v327;
          sub_1B03949FC(&v441, &v445, &v444, &v443);
          _os_log_impl(&dword_1B0389000, v330, v331, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Got %{public}s but opaque data does not match any local actions. Ignoring.", v276, 0x35u);
          sub_1B03998A8(v277);
          sub_1B03998A8(v278);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v330);
      (*(v427 + 8))(v432, v426);

      v334 = 0;
      v335 = 0;
    }
  }

  else
  {
    (*(v427 + 16))(v430, v425, v426);
    sub_1B074B69C(v425, v421);
    sub_1B074B69C(v421, v419);
    sub_1B074E41C(v421, v417);
    v111 = (v419 + *(v415 + 20));
    v209 = *v111;
    v210 = *(v111 + 1);
    v211 = *(v111 + 1);
    v212 = *(v111 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v419);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v208 = 36;
    v227 = 7;
    v112 = swift_allocObject();
    v113 = v210;
    v114 = v211;
    v115 = v212;
    v214 = v112;
    *(v112 + 16) = v209;
    *(v112 + 20) = v113;
    *(v112 + 24) = v114;
    *(v112 + 32) = v115;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v116 = swift_allocObject();
    v117 = v210;
    v118 = v211;
    v119 = v212;
    v207 = v116;
    *(v116 + 16) = v209;
    *(v116 + 20) = v117;
    *(v116 + 24) = v118;
    *(v116 + 32) = v119;

    v226 = 32;
    v120 = swift_allocObject();
    v121 = v207;
    v219 = v120;
    *(v120 + 16) = v380;
    *(v120 + 24) = v121;
    sub_1B0394868();
    sub_1B0394868();

    v122 = swift_allocObject();
    v123 = v210;
    v124 = v211;
    v125 = v212;
    v126 = v122;
    v127 = v417;
    v222 = v126;
    *(v126 + 16) = v209;
    *(v126 + 20) = v123;
    *(v126 + 24) = v124;
    *(v126 + 32) = v125;
    sub_1B074B764(v127);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v128 = swift_allocObject();
    v129 = v423;
    v228 = v128;
    *(v128 + 16) = v422;
    *(v128 + 24) = v129;
    v254 = sub_1B0E43988();
    v255 = sub_1B0E458E8();
    v224 = 17;
    v230 = swift_allocObject();
    v216 = 16;
    *(v230 + 16) = 16;
    v231 = swift_allocObject();
    v218 = 4;
    *(v231 + 16) = 4;
    v130 = swift_allocObject();
    v213 = v130;
    *(v130 + 16) = v345;
    *(v130 + 24) = 0;
    v131 = swift_allocObject();
    v132 = v213;
    v232 = v131;
    *(v131 + 16) = v381;
    *(v131 + 24) = v132;
    v233 = swift_allocObject();
    *(v233 + 16) = 0;
    v234 = swift_allocObject();
    *(v234 + 16) = 1;
    v133 = swift_allocObject();
    v134 = v214;
    v215 = v133;
    *(v133 + 16) = v382;
    *(v133 + 24) = v134;
    v135 = swift_allocObject();
    v136 = v215;
    v235 = v135;
    *(v135 + 16) = v383;
    *(v135 + 24) = v136;
    v236 = swift_allocObject();
    *(v236 + 16) = v216;
    v237 = swift_allocObject();
    *(v237 + 16) = v218;
    v137 = swift_allocObject();
    v217 = v137;
    *(v137 + 16) = v349;
    *(v137 + 24) = 0;
    v138 = swift_allocObject();
    v139 = v217;
    v238 = v138;
    *(v138 + 16) = v384;
    *(v138 + 24) = v139;
    v239 = swift_allocObject();
    *(v239 + 16) = 0;
    v240 = swift_allocObject();
    *(v240 + 16) = v218;
    v140 = swift_allocObject();
    v141 = v219;
    v220 = v140;
    *(v140 + 16) = v385;
    *(v140 + 24) = v141;
    v142 = swift_allocObject();
    v143 = v220;
    v241 = v142;
    *(v142 + 16) = v386;
    *(v142 + 24) = v143;
    v242 = swift_allocObject();
    *(v242 + 16) = 112;
    v243 = swift_allocObject();
    v225 = 8;
    *(v243 + 16) = 8;
    v221 = swift_allocObject();
    *(v221 + 16) = v353;
    v144 = swift_allocObject();
    v145 = v221;
    v244 = v144;
    *(v144 + 16) = v387;
    *(v144 + 24) = v145;
    v245 = swift_allocObject();
    *(v245 + 16) = 37;
    v246 = swift_allocObject();
    *(v246 + 16) = v225;
    v146 = swift_allocObject();
    v147 = v222;
    v223 = v146;
    *(v146 + 16) = v388;
    *(v146 + 24) = v147;
    v148 = swift_allocObject();
    v149 = v223;
    v247 = v148;
    *(v148 + 16) = v389;
    *(v148 + 24) = v149;
    v248 = swift_allocObject();
    *(v248 + 16) = 34;
    v249 = swift_allocObject();
    *(v249 + 16) = v225;
    v150 = swift_allocObject();
    v151 = v228;
    v229 = v150;
    *(v150 + 16) = v390;
    *(v150 + 24) = v151;
    v152 = swift_allocObject();
    v153 = v229;
    v251 = v152;
    *(v152 + 16) = v391;
    *(v152 + 24) = v153;
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v250 = sub_1B0E46A48();
    v252 = v154;

    v155 = v230;
    v156 = v252;
    *v252 = v392;
    v156[1] = v155;

    v157 = v231;
    v158 = v252;
    v252[2] = v393;
    v158[3] = v157;

    v159 = v232;
    v160 = v252;
    v252[4] = v394;
    v160[5] = v159;

    v161 = v233;
    v162 = v252;
    v252[6] = v395;
    v162[7] = v161;

    v163 = v234;
    v164 = v252;
    v252[8] = v396;
    v164[9] = v163;

    v165 = v235;
    v166 = v252;
    v252[10] = v397;
    v166[11] = v165;

    v167 = v236;
    v168 = v252;
    v252[12] = v398;
    v168[13] = v167;

    v169 = v237;
    v170 = v252;
    v252[14] = v399;
    v170[15] = v169;

    v171 = v238;
    v172 = v252;
    v252[16] = v400;
    v172[17] = v171;

    v173 = v239;
    v174 = v252;
    v252[18] = v401;
    v174[19] = v173;

    v175 = v240;
    v176 = v252;
    v252[20] = v402;
    v176[21] = v175;

    v177 = v241;
    v178 = v252;
    v252[22] = v403;
    v178[23] = v177;

    v179 = v242;
    v180 = v252;
    v252[24] = v404;
    v180[25] = v179;

    v181 = v243;
    v182 = v252;
    v252[26] = v405;
    v182[27] = v181;

    v183 = v244;
    v184 = v252;
    v252[28] = v406;
    v184[29] = v183;

    v185 = v245;
    v186 = v252;
    v252[30] = v407;
    v186[31] = v185;

    v187 = v246;
    v188 = v252;
    v252[32] = v408;
    v188[33] = v187;

    v189 = v247;
    v190 = v252;
    v252[34] = v409;
    v190[35] = v189;

    v191 = v248;
    v192 = v252;
    v252[36] = v410;
    v192[37] = v191;

    v193 = v249;
    v194 = v252;
    v252[38] = v411;
    v194[39] = v193;

    v195 = v251;
    v196 = v252;
    v252[40] = v412;
    v196[41] = v195;
    sub_1B0394964();

    if (os_log_type_enabled(v254, v255))
    {
      v197 = v413;
      v200 = sub_1B0E45D78();
      v199[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v201 = sub_1B03949A8(0);
      v202 = sub_1B03949A8(2);
      v203 = &v452;
      v452 = v200;
      v204 = &v451;
      v451 = v201;
      v205 = &v450;
      v450 = v202;
      sub_1B0394A48(3, &v452);
      sub_1B0394A48(7, v203);
      v448 = v392;
      v449 = v230;
      sub_1B03949FC(&v448, v203, v204, v205);
      v206 = v197;
      if (v197)
      {

        __break(1u);
      }

      else
      {
        v448 = v393;
        v449 = v231;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[18] = 0;
        v448 = v394;
        v449 = v232;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[17] = 0;
        v448 = v395;
        v449 = v233;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[16] = 0;
        v448 = v396;
        v449 = v234;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[15] = 0;
        v448 = v397;
        v449 = v235;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[14] = 0;
        v448 = v398;
        v449 = v236;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[13] = 0;
        v448 = v399;
        v449 = v237;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[12] = 0;
        v448 = v400;
        v449 = v238;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[11] = 0;
        v448 = v401;
        v449 = v239;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[10] = 0;
        v448 = v402;
        v449 = v240;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[9] = 0;
        v448 = v403;
        v449 = v241;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[8] = 0;
        v448 = v404;
        v449 = v242;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[7] = 0;
        v448 = v405;
        v449 = v243;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[6] = 0;
        v448 = v406;
        v449 = v244;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[5] = 0;
        v448 = v407;
        v449 = v245;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[4] = 0;
        v448 = v408;
        v449 = v246;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[3] = 0;
        v448 = v409;
        v449 = v247;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[2] = 0;
        v448 = v410;
        v449 = v248;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[1] = 0;
        v448 = v411;
        v449 = v249;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        v199[0] = 0;
        v448 = v412;
        v449 = v251;
        sub_1B03949FC(&v448, &v452, &v451, &v450);
        _os_log_impl(&dword_1B0389000, v254, v255, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Got %{public}s but opaque data is invalid. Ignoring.", v200, 0x35u);
        sub_1B03998A8(v201);
        sub_1B03998A8(v202);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v254);
    (*(v427 + 8))(v430, v426);
    v334 = 0;
    v335 = 0;
  }

  return v334;
}

uint64_t sub_1B0A127A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[9] = 0;
  v15[11] = a1;
  v15[12] = a2;
  v15[13] = a3;
  v15[14] = a4;
  v15[10] = a5;
  v15[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v5 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v15, v7, v5);
  v14 = v15[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36F8, &qword_1B0EA20E0);
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3708, &qword_1B0EA20E8);
  sub_1B0A1D338();
  sub_1B0E45728();

  return v13;
}

uint64_t sub_1B0A129CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v315 = a7;
  v393 = a1;
  v394 = a2;
  v395 = a3;
  v396 = a4;
  v384 = a5;
  v385 = a6;
  v316 = sub_1B074E050;
  v317 = sub_1B0394C30;
  v318 = sub_1B0394C24;
  v319 = sub_1B074DFFC;
  v320 = sub_1B039BA88;
  v321 = sub_1B039BB94;
  v322 = sub_1B0394C24;
  v323 = sub_1B039BBA0;
  v324 = sub_1B039BC08;
  v325 = 0x786F626C69616DLL;
  v326 = sub_1B06BA324;
  v327 = sub_1B074E0E4;
  v328 = sub_1B039BCF8;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B039BA94;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0398F5C;
  v337 = sub_1B0399178;
  v338 = sub_1B0398F5C;
  v339 = sub_1B0398F5C;
  v340 = sub_1B03991EC;
  v341 = sub_1B0398F5C;
  v342 = sub_1B0398F5C;
  v343 = sub_1B03993BC;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0398F5C;
  v346 = sub_1B039BCEC;
  v347 = sub_1B074E050;
  v348 = sub_1B0394C24;
  v349 = sub_1B074DFFC;
  v350 = sub_1B039BA88;
  v351 = sub_1B0394C24;
  v352 = sub_1B039BBA0;
  v353 = sub_1B039BC08;
  v354 = sub_1B06BA324;
  v355 = sub_1B074E0E4;
  v356 = sub_1B039BCF8;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B0399178;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B039BA94;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0399178;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B03991EC;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B03993BC;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B039BCEC;
  v423 = 0;
  v424 = 0;
  v421 = 0;
  v422 = 0;
  v420 = 0;
  v419 = 0;
  v418 = 0;
  v375 = 0;
  v402 = 0;
  v376 = 0;
  v377 = _s6LoggerVMa_1();
  v378 = (*(*(v377 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v379 = v177 - v378;
  v380 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v381 = v177 - v380;
  v382 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v383 = v177 - v382;
  v386 = sub_1B0E439A8();
  v387 = *(v386 - 8);
  v388 = v386 - 8;
  v389 = (*(v387 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v393);
  v390 = v177 - v389;
  v391 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v392 = v177 - v391;
  v423 = v14;
  v424 = v15;
  v421 = v16;
  v422 = v17;
  v420 = v18;
  v419 = v19;
  v418 = v7;
  sub_1B0A1D500();
  sub_1B092AB14(v393, v394, &unk_1F26E26C0, &v413);
  v397 = v413;
  v398 = v414;
  v399 = v415;
  v400 = v416;
  v401 = v417;
  if (v414)
  {
    v310 = v397;
    v311 = v398;
    v312 = v399;
    v313 = v400;
    v314 = v401;
    v304 = v401;
    v305 = v400;
    v306 = v399;
    v307 = v398;
    v308 = v397;
    v425[0] = v397;
    v425[1] = v398;
    v426 = v399;
    v427 = v400;
    v428 = v401;
    result = sub_1B091B114(v425, v384);
    v309 = result;
    if (result)
    {
      v303 = v309;
      v402 = v309;
      v297 = v308;
      v298 = v307;
      v299 = v306;
      v300 = v305;
      v301 = v304;
      v302 = v309;
    }

    else
    {
      (*(v387 + 16))(v392, v385, v386);
      sub_1B074B69C(v385, v383);
      sub_1B074B69C(v383, v381);
      sub_1B074E41C(v383, v379);
      v21 = (v381 + *(v377 + 20));
      v255 = *v21;
      v256 = *(v21 + 1);
      v257 = *(v21 + 1);
      v258 = *(v21 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v381);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v254 = 36;
      v271 = 7;
      v22 = swift_allocObject();
      v23 = v256;
      v24 = v257;
      v25 = v258;
      v260 = v22;
      *(v22 + 16) = v255;
      *(v22 + 20) = v23;
      *(v22 + 24) = v24;
      *(v22 + 32) = v25;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v256;
      v28 = v257;
      v29 = v258;
      v253 = v26;
      *(v26 + 16) = v255;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;

      v270 = 32;
      v30 = swift_allocObject();
      v31 = v253;
      v265 = v30;
      *(v30 + 16) = v316;
      *(v30 + 24) = v31;
      sub_1B0394868();
      sub_1B0394868();

      v32 = swift_allocObject();
      v33 = v256;
      v34 = v257;
      v35 = v258;
      v36 = v32;
      v37 = v379;
      v272 = v36;
      *(v36 + 16) = v255;
      *(v36 + 20) = v33;
      *(v36 + 24) = v34;
      *(v36 + 32) = v35;
      sub_1B074B764(v37);
      v295 = sub_1B0E43988();
      v296 = sub_1B0E458E8();
      v268 = 17;
      v274 = swift_allocObject();
      v262 = 16;
      *(v274 + 16) = 16;
      v275 = swift_allocObject();
      v264 = 4;
      *(v275 + 16) = 4;
      v38 = swift_allocObject();
      v259 = v38;
      *(v38 + 16) = v317;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v259;
      v276 = v39;
      *(v39 + 16) = v318;
      *(v39 + 24) = v40;
      v277 = swift_allocObject();
      *(v277 + 16) = 0;
      v278 = swift_allocObject();
      *(v278 + 16) = 1;
      v41 = swift_allocObject();
      v42 = v260;
      v261 = v41;
      *(v41 + 16) = v319;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v261;
      v279 = v43;
      *(v43 + 16) = v320;
      *(v43 + 24) = v44;
      v280 = swift_allocObject();
      *(v280 + 16) = v262;
      v281 = swift_allocObject();
      *(v281 + 16) = v264;
      v45 = swift_allocObject();
      v263 = v45;
      *(v45 + 16) = v321;
      *(v45 + 24) = 0;
      v46 = swift_allocObject();
      v47 = v263;
      v282 = v46;
      *(v46 + 16) = v322;
      *(v46 + 24) = v47;
      v283 = swift_allocObject();
      *(v283 + 16) = 0;
      v284 = swift_allocObject();
      *(v284 + 16) = v264;
      v48 = swift_allocObject();
      v49 = v265;
      v266 = v48;
      *(v48 + 16) = v323;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v266;
      v285 = v50;
      *(v50 + 16) = v324;
      *(v50 + 24) = v51;
      v286 = swift_allocObject();
      *(v286 + 16) = 112;
      v287 = swift_allocObject();
      v269 = 8;
      *(v287 + 16) = 8;
      v267 = swift_allocObject();
      *(v267 + 16) = v325;
      v52 = swift_allocObject();
      v53 = v267;
      v288 = v52;
      *(v52 + 16) = v326;
      *(v52 + 24) = v53;
      v289 = swift_allocObject();
      *(v289 + 16) = 37;
      v290 = swift_allocObject();
      *(v290 + 16) = v269;
      v54 = swift_allocObject();
      v55 = v272;
      v273 = v54;
      *(v54 + 16) = v327;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v273;
      v292 = v56;
      *(v56 + 16) = v328;
      *(v56 + 24) = v57;
      v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v291 = sub_1B0E46A48();
      v293 = v58;

      v59 = v274;
      v60 = v293;
      *v293 = v329;
      v60[1] = v59;

      v61 = v275;
      v62 = v293;
      v293[2] = v330;
      v62[3] = v61;

      v63 = v276;
      v64 = v293;
      v293[4] = v331;
      v64[5] = v63;

      v65 = v277;
      v66 = v293;
      v293[6] = v332;
      v66[7] = v65;

      v67 = v278;
      v68 = v293;
      v293[8] = v333;
      v68[9] = v67;

      v69 = v279;
      v70 = v293;
      v293[10] = v334;
      v70[11] = v69;

      v71 = v280;
      v72 = v293;
      v293[12] = v335;
      v72[13] = v71;

      v73 = v281;
      v74 = v293;
      v293[14] = v336;
      v74[15] = v73;

      v75 = v282;
      v76 = v293;
      v293[16] = v337;
      v76[17] = v75;

      v77 = v283;
      v78 = v293;
      v293[18] = v338;
      v78[19] = v77;

      v79 = v284;
      v80 = v293;
      v293[20] = v339;
      v80[21] = v79;

      v81 = v285;
      v82 = v293;
      v293[22] = v340;
      v82[23] = v81;

      v83 = v286;
      v84 = v293;
      v293[24] = v341;
      v84[25] = v83;

      v85 = v287;
      v86 = v293;
      v293[26] = v342;
      v86[27] = v85;

      v87 = v288;
      v88 = v293;
      v293[28] = v343;
      v88[29] = v87;

      v89 = v289;
      v90 = v293;
      v293[30] = v344;
      v90[31] = v89;

      v91 = v290;
      v92 = v293;
      v293[32] = v345;
      v92[33] = v91;

      v93 = v292;
      v94 = v293;
      v293[34] = v346;
      v94[35] = v93;
      sub_1B0394964();

      if (os_log_type_enabled(v295, v296))
      {
        v95 = v375;
        v246 = sub_1B0E45D78();
        v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v247 = sub_1B03949A8(0);
        v248 = sub_1B03949A8(1);
        v249 = &v407;
        v407 = v246;
        v250 = &v406;
        v406 = v247;
        v251 = &v405;
        v405 = v248;
        sub_1B0394A48(3, &v407);
        sub_1B0394A48(6, v249);
        v403 = v329;
        v404 = v274;
        sub_1B03949FC(&v403, v249, v250, v251);
        v252 = v95;
        if (v95)
        {

          __break(1u);
        }

        else
        {
          v403 = v330;
          v404 = v275;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v244 = 0;
          v403 = v331;
          v404 = v276;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v243 = 0;
          v403 = v332;
          v404 = v277;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v242 = 0;
          v403 = v333;
          v404 = v278;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v241 = 0;
          v403 = v334;
          v404 = v279;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v240 = 0;
          v403 = v335;
          v404 = v280;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v239 = 0;
          v403 = v336;
          v404 = v281;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v238 = 0;
          v403 = v337;
          v404 = v282;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v237 = 0;
          v403 = v338;
          v404 = v283;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v236 = 0;
          v403 = v339;
          v404 = v284;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v235 = 0;
          v403 = v340;
          v404 = v285;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v234 = 0;
          v403 = v341;
          v404 = v286;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v233 = 0;
          v403 = v342;
          v404 = v287;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v232 = 0;
          v403 = v343;
          v404 = v288;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v231 = 0;
          v403 = v344;
          v404 = v289;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v230 = 0;
          v403 = v345;
          v404 = v290;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          v229 = 0;
          v403 = v346;
          v404 = v292;
          sub_1B03949FC(&v403, &v407, &v406, &v405);
          _os_log_impl(&dword_1B0389000, v295, v296, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Received didMoveOrCopyMessages, but the local action no longer exists.", v246, 0x2Bu);
          sub_1B03998A8(v247);
          sub_1B03998A8(v248);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v295);
      (*(v387 + 8))(v392, v386);

      v297 = 0;
      v298 = 0;
      v299 = 0;
      v300 = 0;
      v301 = 0;
      v302 = 0;
    }
  }

  else
  {
    (*(v387 + 16))(v390, v385, v386);
    sub_1B074B69C(v385, v383);
    sub_1B074B69C(v383, v381);
    sub_1B074E41C(v383, v379);
    v96 = (v381 + *(v377 + 20));
    v187 = *v96;
    v188 = *(v96 + 1);
    v189 = *(v96 + 1);
    v190 = *(v96 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v381);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v186 = 36;
    v203 = 7;
    v97 = swift_allocObject();
    v98 = v188;
    v99 = v189;
    v100 = v190;
    v192 = v97;
    *(v97 + 16) = v187;
    *(v97 + 20) = v98;
    *(v97 + 24) = v99;
    *(v97 + 32) = v100;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v101 = swift_allocObject();
    v102 = v188;
    v103 = v189;
    v104 = v190;
    v185 = v101;
    *(v101 + 16) = v187;
    *(v101 + 20) = v102;
    *(v101 + 24) = v103;
    *(v101 + 32) = v104;

    v202 = 32;
    v105 = swift_allocObject();
    v106 = v185;
    v197 = v105;
    *(v105 + 16) = v347;
    *(v105 + 24) = v106;
    sub_1B0394868();
    sub_1B0394868();

    v107 = swift_allocObject();
    v108 = v188;
    v109 = v189;
    v110 = v190;
    v111 = v107;
    v112 = v379;
    v204 = v111;
    *(v111 + 16) = v187;
    *(v111 + 20) = v108;
    *(v111 + 24) = v109;
    *(v111 + 32) = v110;
    sub_1B074B764(v112);
    v227 = sub_1B0E43988();
    v228 = sub_1B0E458E8();
    v200 = 17;
    v206 = swift_allocObject();
    v194 = 16;
    *(v206 + 16) = 16;
    v207 = swift_allocObject();
    v196 = 4;
    *(v207 + 16) = 4;
    v113 = swift_allocObject();
    v191 = v113;
    *(v113 + 16) = v317;
    *(v113 + 24) = 0;
    v114 = swift_allocObject();
    v115 = v191;
    v208 = v114;
    *(v114 + 16) = v348;
    *(v114 + 24) = v115;
    v209 = swift_allocObject();
    *(v209 + 16) = 0;
    v210 = swift_allocObject();
    *(v210 + 16) = 1;
    v116 = swift_allocObject();
    v117 = v192;
    v193 = v116;
    *(v116 + 16) = v349;
    *(v116 + 24) = v117;
    v118 = swift_allocObject();
    v119 = v193;
    v211 = v118;
    *(v118 + 16) = v350;
    *(v118 + 24) = v119;
    v212 = swift_allocObject();
    *(v212 + 16) = v194;
    v213 = swift_allocObject();
    *(v213 + 16) = v196;
    v120 = swift_allocObject();
    v195 = v120;
    *(v120 + 16) = v321;
    *(v120 + 24) = 0;
    v121 = swift_allocObject();
    v122 = v195;
    v214 = v121;
    *(v121 + 16) = v351;
    *(v121 + 24) = v122;
    v215 = swift_allocObject();
    *(v215 + 16) = 0;
    v216 = swift_allocObject();
    *(v216 + 16) = v196;
    v123 = swift_allocObject();
    v124 = v197;
    v198 = v123;
    *(v123 + 16) = v352;
    *(v123 + 24) = v124;
    v125 = swift_allocObject();
    v126 = v198;
    v217 = v125;
    *(v125 + 16) = v353;
    *(v125 + 24) = v126;
    v218 = swift_allocObject();
    *(v218 + 16) = 112;
    v219 = swift_allocObject();
    v201 = 8;
    *(v219 + 16) = 8;
    v199 = swift_allocObject();
    *(v199 + 16) = v325;
    v127 = swift_allocObject();
    v128 = v199;
    v220 = v127;
    *(v127 + 16) = v354;
    *(v127 + 24) = v128;
    v221 = swift_allocObject();
    *(v221 + 16) = 37;
    v222 = swift_allocObject();
    *(v222 + 16) = v201;
    v129 = swift_allocObject();
    v130 = v204;
    v205 = v129;
    *(v129 + 16) = v355;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v205;
    v224 = v131;
    *(v131 + 16) = v356;
    *(v131 + 24) = v132;
    v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v223 = sub_1B0E46A48();
    v225 = v133;

    v134 = v206;
    v135 = v225;
    *v225 = v357;
    v135[1] = v134;

    v136 = v207;
    v137 = v225;
    v225[2] = v358;
    v137[3] = v136;

    v138 = v208;
    v139 = v225;
    v225[4] = v359;
    v139[5] = v138;

    v140 = v209;
    v141 = v225;
    v225[6] = v360;
    v141[7] = v140;

    v142 = v210;
    v143 = v225;
    v225[8] = v361;
    v143[9] = v142;

    v144 = v211;
    v145 = v225;
    v225[10] = v362;
    v145[11] = v144;

    v146 = v212;
    v147 = v225;
    v225[12] = v363;
    v147[13] = v146;

    v148 = v213;
    v149 = v225;
    v225[14] = v364;
    v149[15] = v148;

    v150 = v214;
    v151 = v225;
    v225[16] = v365;
    v151[17] = v150;

    v152 = v215;
    v153 = v225;
    v225[18] = v366;
    v153[19] = v152;

    v154 = v216;
    v155 = v225;
    v225[20] = v367;
    v155[21] = v154;

    v156 = v217;
    v157 = v225;
    v225[22] = v368;
    v157[23] = v156;

    v158 = v218;
    v159 = v225;
    v225[24] = v369;
    v159[25] = v158;

    v160 = v219;
    v161 = v225;
    v225[26] = v370;
    v161[27] = v160;

    v162 = v220;
    v163 = v225;
    v225[28] = v371;
    v163[29] = v162;

    v164 = v221;
    v165 = v225;
    v225[30] = v372;
    v165[31] = v164;

    v166 = v222;
    v167 = v225;
    v225[32] = v373;
    v167[33] = v166;

    v168 = v224;
    v169 = v225;
    v225[34] = v374;
    v169[35] = v168;
    sub_1B0394964();

    if (os_log_type_enabled(v227, v228))
    {
      v170 = v375;
      v178 = sub_1B0E45D78();
      v177[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v179 = sub_1B03949A8(0);
      v180 = sub_1B03949A8(1);
      v181 = &v412;
      v412 = v178;
      v182 = &v411;
      v411 = v179;
      v183 = &v410;
      v410 = v180;
      sub_1B0394A48(3, &v412);
      sub_1B0394A48(6, v181);
      v408 = v357;
      v409 = v206;
      sub_1B03949FC(&v408, v181, v182, v183);
      v184 = v170;
      if (v170)
      {

        __break(1u);
      }

      else
      {
        v408 = v358;
        v409 = v207;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[15] = 0;
        v408 = v359;
        v409 = v208;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[14] = 0;
        v408 = v360;
        v409 = v209;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[13] = 0;
        v408 = v361;
        v409 = v210;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[12] = 0;
        v408 = v362;
        v409 = v211;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[11] = 0;
        v408 = v363;
        v409 = v212;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[10] = 0;
        v408 = v364;
        v409 = v213;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[9] = 0;
        v408 = v365;
        v409 = v214;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[8] = 0;
        v408 = v366;
        v409 = v215;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[7] = 0;
        v408 = v367;
        v409 = v216;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[6] = 0;
        v408 = v368;
        v409 = v217;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[5] = 0;
        v408 = v369;
        v409 = v218;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[4] = 0;
        v408 = v370;
        v409 = v219;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[3] = 0;
        v408 = v371;
        v409 = v220;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[2] = 0;
        v408 = v372;
        v409 = v221;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[1] = 0;
        v408 = v373;
        v409 = v222;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        v177[0] = 0;
        v408 = v374;
        v409 = v224;
        sub_1B03949FC(&v408, &v412, &v411, &v410);
        _os_log_impl(&dword_1B0389000, v227, v228, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Received didMoveOrCopyMessages, but the opaque ID can’t be decoded.", v178, 0x2Bu);
        sub_1B03998A8(v179);
        sub_1B03998A8(v180);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v227);
    result = (*(v387 + 8))(v390, v386);
    v297 = 0;
    v298 = 0;
    v299 = 0;
    v300 = 0;
    v301 = 0;
    v302 = 0;
  }

  v171 = v315;
  v172 = v298;
  v173 = v299;
  v174 = v300;
  v175 = v301;
  v176 = v302;
  *v315 = v297;
  v171[1] = v172;
  v171[2] = v173;
  v171[3] = v174;
  v171[4] = v175;
  v171[5] = v176;
  return result;
}

uint64_t sub_1B0A15FBC(const void *a1)
{
  memset(&v6[3], 0, 0x28uLL);
  memcpy(__dst, a1, sizeof(__dst));
  v6[3] = __dst[0];
  v6[4] = __dst[1];
  LODWORD(v6[5]) = __dst[2];
  v6[6] = __dst[3];
  v6[7] = __dst[4];
  v6[2] = v2;
  v3 = [v2 itemsToCopy];
  sub_1B071C094();
  v6[0] = sub_1B0E451B8();
  sub_1B0828300(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  sub_1B0E44FB8();
  sub_1B08283D8(a1);
  sub_1B039E440(v6);
  MEMORY[0x1E69E5920](v3);
  return v6[1];
}

uint64_t sub_1B0A16128(const void *a1, uint64_t a2)
{
  v10[9] = 0;
  v10[11] = a1;
  v10[10] = a2;
  v10[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v2 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v10, v4, v2);
  v9 = v10[0];
  sub_1B0828300(a1, v8);
  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x28uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36F8, &qword_1B0EA20E0);
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3708, &qword_1B0EA20E8);
  sub_1B0A1D338();
  sub_1B0E45728();

  return v7;
}

uint64_t sub_1B0A16318@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v44 = a3;
  v43 = a2;
  v38 = a6;
  v53 = 0;
  v52 = 0u;
  v51 = 0u;
  v50 = 0;
  v39 = 0;
  *&v47[4] = 0;
  v40 = *a1;
  v53 = v40;
  *&v51 = a2;
  *(&v51 + 1) = a3;
  *&v52 = a4;
  *(&v52 + 1) = a5;
  v41 = [v40 persistentID];
  v46 = [v41 stringValue];
  v42 = sub_1B0E44AD8();
  v45 = v6;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v47 = MEMORY[0x1B2726DE0](v42, v45, v43, v44);

  if ((v47[0] & 1) == 0)
  {
    v31 = v39;
    goto LABEL_12;
  }

  v7 = v40;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v34 = v35;
  }

  else
  {

    v34 = 0;
  }

  v33 = v34;
  if (!v34)
  {
    v31 = v39;
LABEL_12:
    v15 = v38;
    v16 = v31;
    *v38 = 0;
    v15[1] = 0;
    return v16;
  }

  v32 = v33;
  v8 = v39;
  v23 = v33;
  v50 = v33;
  v25 = [v33 itemsToCopy];
  v24 = v25;
  v26 = sub_1B071C094();
  v48 = sub_1B0E451B8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = &v19;
  MEMORY[0x1EEE9AC00](&v19);
  v28 = v18;
  v18[2] = v9;
  v18[3] = v44;
  v18[4] = v37;
  v18[5] = v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  sub_1B0E44FB8();
  v30 = v8;

  sub_1B039E440(&v48);

  v22 = v49;
  if (!v49)
  {

    v31 = v30;
    goto LABEL_12;
  }

  v21 = v22;
  v19 = v22;
  *&v47[4] = v22;
  v11 = v23;
  v12 = v19;
  v13 = v38;
  v14 = v19;
  *v38 = v23;
  v13[1] = v14;

  return v30;
}

uint64_t sub_1B0A16710(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v17 = a4;
  *(&v17 + 1) = a5;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = *a1;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v18 = [v26 destinationMessage];
  if (v18)
  {
    swift_getObjectType();
    v5 = [v18 persistentID];
    v14 = v5;
    if (v5)
    {
      v10 = sub_1B0E44AD8();
      v11 = v6;
      MEMORY[0x1E69E5920](v14);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    swift_unknownObjectRelease();
    v15 = v12;
    v16 = v13;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22[0] = v15;
  v22[1] = v16;
  v23 = v17;
  if (!v16)
  {
    if (!*(&v23 + 1))
    {
      sub_1B03B1198(v22);
      v9 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1B070B280(v22, &v21);
  if (!*(&v23 + 1))
  {
    sub_1B03B1198(&v21);
LABEL_15:
    sub_1B06FF6F0(v22);
    v9 = 0;
    goto LABEL_14;
  }

  v20 = v21;
  v19 = v23;
  v8 = MEMORY[0x1B2726DE0](v21, *(&v21 + 1), v23, *(&v23 + 1));
  sub_1B03B1198(&v19);
  sub_1B03B1198(&v20);
  sub_1B03B1198(v22);
  v9 = v8;
LABEL_14:

  return v9 & 1;
}

uint64_t sub_1B0A16990@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v34 = a3;
  v52 = 0;
  v51 = 0;
  v50 = 0u;
  v49 = 0u;
  v48 = 0;
  v35 = 0;
  *&v44[4] = 0;
  v3 = *a2;
  v4 = *(a2 + 1);
  v55 = a2[4];
  v54 = v4;
  v53 = v3;
  v36 = *a1;
  v52 = v36;
  v49 = v3;
  LODWORD(v50) = v4;
  *(&v50 + 1) = *(&v4 + 1);
  v51 = v55;
  v37 = [v36 persistentID];
  v43 = [v37 stringValue];
  v39 = sub_1B0E44AD8();
  v42 = v5;

  v40 = *v38;
  v41 = v38[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v44 = MEMORY[0x1B2726DE0](v39, v42, v40, v41);

  if ((v44[0] & 1) == 0)
  {
    v29 = v35;
    goto LABEL_12;
  }

  v6 = v36;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v32 = v33;
  }

  else
  {

    v32 = 0;
  }

  v31 = v32;
  if (!v32)
  {
    v29 = v35;
LABEL_12:
    v13 = v34;
    v14 = v29;
    *v34 = 0;
    v13[1] = 0;
    return v14;
  }

  v30 = v31;
  v7 = v35;
  v21 = v31;
  v48 = v31;
  v23 = [v31 itemsToCopy];
  v22 = v23;
  v24 = sub_1B071C094();
  v46 = sub_1B0E451B8();
  sub_1B0828300(v38, v45);
  v25 = &v17;
  MEMORY[0x1EEE9AC00](&v17);
  v26 = v16;
  v16[2] = v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  sub_1B0E44FB8();
  v28 = v7;
  sub_1B08283D8(v38);
  sub_1B039E440(&v46);

  v20 = v47;
  if (!v47)
  {

    v29 = v28;
    goto LABEL_12;
  }

  v19 = v20;
  v17 = v20;
  *&v44[4] = v20;
  v9 = v21;
  v10 = v17;
  v11 = v34;
  v12 = v17;
  *v34 = v21;
  v11[1] = v12;

  return v28;
}

uint64_t sub_1B0A16E14(id *a1, uint64_t a2)
{
  v24 = 0;
  v23 = 0;
  v24 = *a1;
  v23 = a2;
  v15 = [v24 destinationMessage];
  if (v15)
  {
    swift_getObjectType();
    v2 = [v15 persistentID];
    v11 = v2;
    if (v2)
    {
      v7 = sub_1B0E44AD8();
      v8 = v3;
      MEMORY[0x1E69E5920](v11);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    swift_unknownObjectRelease();
    v12 = v9;
    v13 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = *(a2 + 24);
  sub_1B070B280(&v25, &v22);
  sub_1B070B280(&v25, &v21);
  v19[0] = v12;
  v19[1] = v13;
  v20 = v25;
  if (!v13)
  {
    if (!*(&v20 + 1))
    {
      sub_1B03B1198(v19);
      v6 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1B070B280(v19, &v18);
  if (!*(&v20 + 1))
  {
    sub_1B03B1198(&v18);
LABEL_15:
    sub_1B06FF6F0(v19);
    v6 = 0;
    goto LABEL_14;
  }

  v17 = v18;
  v16 = v20;
  v5 = MEMORY[0x1B2726DE0](v18, *(&v18 + 1), v20, *(&v20 + 1));
  sub_1B03B1198(&v16);
  sub_1B03B1198(&v17);
  sub_1B03B1198(v19);
  v6 = v5;
LABEL_14:
  sub_1B03B1198(&v25);

  return v6 & 1;
}

void *sub_1B0A1708C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v168 = v193;
  v135 = a5;
  v169 = a1;
  v177 = a2;
  v178 = a3;
  v167 = a4;
  v157 = 0;
  v136 = sub_1B039BBE8;
  v137 = sub_1B0394C30;
  v138 = sub_1B0394C24;
  v139 = sub_1B039BA2C;
  v140 = sub_1B039BA88;
  v141 = sub_1B039BB94;
  v142 = sub_1B0394C24;
  v143 = sub_1B039BBA0;
  v144 = sub_1B039BC08;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0399178;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B039BA94;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399178;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B03991EC;
  v176 = 40;
  memset(__b, 0, sizeof(__b));
  memset(v193, 0, sizeof(v193));
  v158 = 0;
  v184 = 0;
  v185 = 0;
  v159 = 0;
  v160 = _s6LoggerVMa();
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v162 = v69 - v161;
  v163 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v164 = v69 - v163;
  v165 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v166 = v69 - v165;
  v170 = sub_1B0E439A8();
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v169);
  v10 = v178;
  v174 = v69 - v173;
  v11[3] = v9;
  v11[1] = v12;
  v11[2] = v10;
  *v11 = v13;
  v175 = __dst;
  memcpy(__dst, (v9 + 24), v14);
  sub_1B0828300(v175, &v192);
  v179 = v191;
  memcpy(v191, v175, v176);
  sub_1B0A1D5AC();
  v180 = sub_1B092A8B0();
  v181 = v15;
  sub_1B08283D8(v179);
  if ((v181 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v171 + 16))(v174, v167, v170);
    sub_1B0394784(v167, v166);
    sub_1B0394784(v166, v164);
    sub_1B03F4FD0(v166, v162);
    v17 = (v164 + *(v160 + 20));
    v79 = *v17;
    v80 = *(v17 + 1);
    sub_1B039480C(v164);
    v78 = 24;
    v90 = 7;
    v18 = swift_allocObject();
    v19 = v80;
    v83 = v18;
    *(v18 + 16) = v79;
    *(v18 + 20) = v19;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = swift_allocObject();
    v21 = v80;
    v81 = v20;
    *(v20 + 16) = v79;
    *(v20 + 20) = v21;

    v89 = 32;
    v22 = swift_allocObject();
    v23 = v81;
    v91 = v22;
    *(v22 + 16) = v136;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v162);
    v108 = sub_1B0E43988();
    v109 = sub_1B0E458E8();
    v87 = 17;
    v93 = swift_allocObject();
    v85 = 16;
    *(v93 + 16) = 16;
    v94 = swift_allocObject();
    v88 = 4;
    *(v94 + 16) = 4;
    v24 = swift_allocObject();
    v82 = v24;
    *(v24 + 16) = v137;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v82;
    v95 = v25;
    *(v25 + 16) = v138;
    *(v25 + 24) = v26;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 1;
    v27 = swift_allocObject();
    v28 = v83;
    v84 = v27;
    *(v27 + 16) = v139;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v84;
    v98 = v29;
    *(v29 + 16) = v140;
    *(v29 + 24) = v30;
    v99 = swift_allocObject();
    *(v99 + 16) = v85;
    v100 = swift_allocObject();
    *(v100 + 16) = v88;
    v31 = swift_allocObject();
    v86 = v31;
    *(v31 + 16) = v141;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v86;
    v101 = v32;
    *(v32 + 16) = v142;
    *(v32 + 24) = v33;
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v88;
    v34 = swift_allocObject();
    v35 = v91;
    v92 = v34;
    *(v34 + 16) = v143;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v92;
    v105 = v36;
    *(v36 + 16) = v144;
    *(v36 + 24) = v37;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v104 = sub_1B0E46A48();
    v106 = v38;

    v39 = v93;
    v40 = v106;
    *v106 = v145;
    v40[1] = v39;

    v41 = v94;
    v42 = v106;
    v106[2] = v146;
    v42[3] = v41;

    v43 = v95;
    v44 = v106;
    v106[4] = v147;
    v44[5] = v43;

    v45 = v96;
    v46 = v106;
    v106[6] = v148;
    v46[7] = v45;

    v47 = v97;
    v48 = v106;
    v106[8] = v149;
    v48[9] = v47;

    v49 = v98;
    v50 = v106;
    v106[10] = v150;
    v50[11] = v49;

    v51 = v99;
    v52 = v106;
    v106[12] = v151;
    v52[13] = v51;

    v53 = v100;
    v54 = v106;
    v106[14] = v152;
    v54[15] = v53;

    v55 = v101;
    v56 = v106;
    v106[16] = v153;
    v56[17] = v55;

    v57 = v102;
    v58 = v106;
    v106[18] = v154;
    v58[19] = v57;

    v59 = v103;
    v60 = v106;
    v106[20] = v155;
    v60[21] = v59;

    v61 = v105;
    v62 = v106;
    v106[22] = v156;
    v62[23] = v61;
    sub_1B0394964();

    if (os_log_type_enabled(v108, v109))
    {
      v63 = v158;
      v71 = sub_1B0E45D78();
      v69[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v70 = 0;
      v72 = sub_1B03949A8(0);
      v73 = sub_1B03949A8(v70);
      v74 = &v190;
      v190 = v71;
      v75 = &v189;
      v189 = v72;
      v76 = &v188;
      v188 = v73;
      sub_1B0394A48(0, &v190);
      sub_1B0394A48(4, v74);
      v186 = v145;
      v187 = v93;
      sub_1B03949FC(&v186, v74, v75, v76);
      v77 = v63;
      if (v63)
      {

        __break(1u);
      }

      else
      {
        v186 = v146;
        v187 = v94;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[11] = 0;
        v186 = v147;
        v187 = v95;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[10] = 0;
        v186 = v148;
        v187 = v96;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[9] = 0;
        v186 = v149;
        v187 = v97;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[8] = 0;
        v186 = v150;
        v187 = v98;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[7] = 0;
        v186 = v151;
        v187 = v99;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[6] = 0;
        v186 = v152;
        v187 = v100;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[5] = 0;
        v186 = v153;
        v187 = v101;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[4] = 0;
        v186 = v154;
        v187 = v102;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[3] = 0;
        v186 = v155;
        v187 = v103;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        v69[2] = 0;
        v186 = v156;
        v187 = v105;
        sub_1B03949FC(&v186, &v190, &v189, &v188);
        _os_log_impl(&dword_1B0389000, v108, v109, "[%.*hhx-%.*X] Unable to encode move/copy reference.", v71, 0x17u);
        v69[1] = 0;
        sub_1B03998A8(v72);
        sub_1B03998A8(v73);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v108);
    (*(v171 + 8))(v174, v170);
    sub_1B039480C(v167);

    result = sub_1B0A1D624(v169);
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
  }

  else
  {
    v133 = v180;
    v134 = v181;
    v129 = v181;
    v130 = v180;
    v184 = v180;
    v185 = v181;
    v196 = *v169 & 1;
    v132 = &v183;
    v183 = v196 & 1;
    v131 = &v182;
    v182 = 1;
    sub_1B0828284();
    v128 = (sub_1B0E46AE8() & 1) != 0;
    v110 = v128;
    v111 = *(v169 + 1);
    v112 = v169[1];
    v113 = *(v169 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v130, v129);
    v114 = v195;
    MoveOrCopy.init(operation:sourceMessage:targetMailbox:targetMessage:)(v110, v111, v112, v113, v130, v129, v195);
    v117 = __b;
    memcpy(__b, v114, sizeof(__b));
    sub_1B0391D50(v130, v129);
    v115 = __b[0];
    v116 = *(v168 + 9);
    v119 = *(v168 + 5);
    v120 = *(v168 + 12);
    v121 = *(v168 + 7);
    v122 = *(v168 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v121, v122);
    v118 = v115 & 1 | (v116 << 32);
    sub_1B039480C(v167);

    sub_1B0A1D624(v169);
    result = sub_1B0929338(v117);
    v123 = v118;
    v124 = v119;
    v125 = v120;
    v126 = v121;
    v127 = v122;
  }

  v64 = v135;
  v65 = v124;
  v66 = v125;
  v67 = v126;
  v68 = v127;
  *v135 = v123;
  v64[1] = v65;
  v64[2] = v66;
  v64[3] = v67;
  v64[4] = v68;
  return result;
}

uint64_t sub_1B0A181FC(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = *v2;
  v4 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  sub_1B0391D50(v3, v4);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B0A1824C()
{
  v2 = (v0 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A182BC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void *sub_1B0A18358()
{
  v2 = v0 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result;
  swift_beginAccess();
  v3 = *v2;
  sub_1B0A1D214(*v2, *(v2 + 8) & 1);
  swift_endAccess();
  return v3;
}

void sub_1B0A183D4(void *a1, char a2)
{
  sub_1B0A1D214(a1, a2 & 1);
  v5 = v2 + OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result;
  swift_beginAccess();
  v3 = *v5;
  v4 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_1B0A1D668(v3, v4 & 1);
  swift_endAccess();
  sub_1B0A1D668(a1, a2 & 1);
}

char *sub_1B0A18498(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = a2;
  v12 = v2;
  MEMORY[0x1E69E5928](a1);
  *&v2[OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item] = a1;
  MEMORY[0x1E69E5928](a2);
  v3 = &v12[OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result];
  *v3 = a2;
  v3[8] = 0;
  v9.receiver = v12;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x1E69E5928](v8);
  v12 = v8;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v12);
  return v8;
}

char *sub_1B0A185C4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v12 = a1;
  v11 = a2;
  v13 = v2;
  MEMORY[0x1E69E5928](a1);
  *&v2[OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_item] = a1;
  v3 = a2;
  v4 = &v13[OBJC_IVAR____TtCFC7Message18PersistenceAdaptorP33_6E9ADBBA6FF43272EC74977344F4BF4840downloadMessagesForCrossAccountTransfersFGSaCSo20ECLocalMessageAction_T_L_14TransferResult_result];
  *v4 = a2;
  v4[8] = 1;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_init);
  MEMORY[0x1E69E5928](v9);
  v13 = v9;

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v13);
  return v9;
}

id sub_1B0A187C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = sub_1B0E44AC8();
  if (a4)
  {
    v6 = sub_1B0E44598();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v9 initWithDomain:v11 code:a3 userInfo:?];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v11);

  return v5;
}

uint64_t sub_1B0A188BC()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

void sub_1B0A188EC(uint64_t a1)
{
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (a1 <= *(*v5 + 24) >> 1)
    {
      goto LABEL_8;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(*v5 + 16) < a1)
  {
    sub_1B0A18B88(v3 & 1, a1, 0);
  }

  else
  {
    sub_1B0A18B88(v3 & 1, *(*v5 + 16), 0);
  }

LABEL_8:
  sub_1B0394A5C();
}

uint64_t sub_1B0A189D4()
{
  v4 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v4;
  if ((result & 1) == 0)
  {
    v2 = sub_1B03B1F90(*v3);
    return sub_1B0A18B88(0, v2 + 1, 1);
  }

  return result;
}

void *sub_1B0A18A44(void *result)
{
  if (*(*v1 + 24) >> 1 < result + 1)
  {
    return sub_1B0A18B88(*(*v1 + 24) >> 1 != 0, result + 1, 1);
  }

  return result;
}

uint64_t sub_1B0A18ABC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*v3 + 16) = result + 1;
  v4 = (*v3 + 32 + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t sub_1B0A18AE0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void *sub_1B0A18B88(char a1, uint64_t a2, char a3)
{
  result = sub_1B0A18BB0((a1 & 1), a2, a3 & 1, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0A18BB0(void *result, uint64_t a2, char a3, void *a4)
{
  v13 = result;
  v15 = a4[3] >> 1;
  if (a3)
  {
    if (v15 < a2)
    {
      if ((v15 * 2) >> 64 != (2 * v15) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v15 < a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = 2 * v15;
      }
    }

    else
    {
      v12 = a4[3] >> 1;
    }
  }

  else
  {
    v12 = a2;
  }

  v11 = a4[2];
  if (v12 < v11)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v12;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v9 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v7 = _swift_stdlib_malloc_size(v9) - 32;
      v9[2] = v11;
      v9[3] = 2 * (v7 / 16);
    }

    else
    {
      v9[2] = v11;
      v9[3] = 2 * v10;
    }

    v8 = v9;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    v8 = v6;
  }

  if (v13)
  {
    __dst = (v8 + 4);
    __src = (a4 + 4);
    if (v8 + 4 < a4 + 4 || __dst >= &__src[16 * v11] || __dst != __src)
    {
      memmove(__dst, __src, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();

    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t sub_1B0A18E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v9 = a4;
  v10 = *(a3 - 8);
  v11 = a3 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v8 - v8;
  v4();
  sub_1B0A18F84(v12, v13, v13, v9, v9);
  v14 = v5;
  v15 = v6;
  (*(v10 + 8))(v12, v13);
  return v14;
}

void sub_1B0A18F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v58 = a3;
  v51 = *(a5 + 8);
  sub_1B0A1F198();
  v52 = sub_1B0E45078();
  v53 = sub_1B0E45078();
  v54 = sub_1B03B1F90(v53);
  if (v54 < 0)
  {
    v50 = 7;
  }

  else if (v54 < 7)
  {
    v50 = v54;
  }

  else
  {
    v50 = 7;
  }

  if (v50 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_1B0A19770(0, v53);
  sub_1B0A19770(v50, v53);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v47 = v53 + 32;
  v48 = (2 * v50) | 1;

  v49 = sub_1B0A197BC(v53, v53 + 32, 0, v48);
  if (v49 >= sub_1B03B1F78(v52))
  {

    if (!v49)
    {
      v42 = sub_1B0A18AE0(0);
LABEL_16:
      v41 = v42;
LABEL_35:
      v56[0] = v41;
      sub_1B0E44838();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      sub_1B0E448E8();

      swift_unknownObjectRelease();
      sub_1B039E440(v56);
      return;
    }

    v57 = sub_1B0A188BC();
    sub_1B0A188EC(v49);
    if ((v49 & 0x8000000000000000) == 0)
    {
      if (v49 > 0)
      {
        v5 = sub_1B0A19824(v53, v47, 0, v48);
        sub_1B0A197E8(0, v5, v53, v47, 0, v48);
        v6 = sub_1B0A19824(v53, v47, 0, v48);
        sub_1B0A197E8(v49 - 1, v6, v53, v47, 0, v48);
        for (i = 0; ; ++i)
        {
          v7 = sub_1B0A19824(v53, v47, 0, v48);
          sub_1B0A19830(i, v7, v53, v47);
          sub_1B0A5D9E4(3);
          v56[1] = sub_1B0E44838();
          v56[2] = v8;

          v9 = String.init(_:)();
          MEMORY[0x1B2726E80](v9);

          v44 = sub_1B0E44C88();
          v45 = v10;
          sub_1B0A189D4();
          v43 = *(v57 + 16);
          sub_1B0A18A44(v43);
          sub_1B0A18ABC(v43, v44, v45);
          sub_1B0394A5C();
          if (i + 1 == v49)
          {
            break;
          }
        }

        v42 = v57;
        goto LABEL_16;
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  swift_unknownObjectRetain();
  v36 = sub_1B0A19838(4, v53, v47, 0, v48);
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = sub_1B0A197BC(v36, v11, v12, v13);
  if (v40)
  {
    v55 = sub_1B0A188BC();
    sub_1B0A188EC(v40);
    if ((v40 & 0x8000000000000000) == 0)
    {
      if (v40 > 0)
      {
        v34 = 0;
        for (j = v38; ; ++j)
        {
          v30 = sub_1B0A19824(v36, v37, v38, v39);
          sub_1B0A197E8(j, v30, v36, v37, v38, v39);
          sub_1B0A19830(j, v30, v36, v37);
          sub_1B0A5D9E4(3);
          sub_1B0E44838();

          v14 = String.init(_:)();
          MEMORY[0x1B2726E80](v14);

          v32 = sub_1B0E44C88();
          v33 = v15;
          sub_1B0A189D4();
          v31 = *(v55 + 16);
          sub_1B0A18A44(v31);
          sub_1B0A18ABC(v31, v32, v33);
          sub_1B0394A5C();
          if (__OFADD__(j, 1))
          {
            break;
          }

          if (v34 + 1 == v40)
          {
            swift_unknownObjectRelease();
            v29 = v55;
            goto LABEL_29;
          }

          ++v34;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = sub_1B0A18AE0(0);
  swift_unknownObjectRelease();
  v29 = v28;
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
  inited = swift_initStackObject();
  v25 = sub_1B03B1F2C(inited, 2);
  v26 = v18;
  *v18 = sub_1B0E44838();
  v26[1] = v19;
  sub_1B0A5D9E4(3);
  sub_1B0E44838();

  v27 = sub_1B03B1F90(v52);
  if (!v27)
  {
    goto LABEL_42;
  }

  v24 = v27 - 1;
  if (!__OFSUB__(v27, 1))
  {
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_1B071D0C4(v24, has_malloc_size & 1, v52);
    sub_1B0A19A14(v24, has_malloc_size & 1, v52);

    v21 = String.init(_:)();
    MEMORY[0x1B2726E80](v21);

    v26[2] = sub_1B0E44C88();
    v26[3] = v22;
    sub_1B03B1EF8();
    sub_1B0A19AA0(v25);
    v41 = v29;
    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1B0A19770(uint64_t a1, uint64_t a2)
{
  result = sub_1B03B1F90(a2);
  if (result < a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a1 < 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A197BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!__OFSUB__(a4 >> 1, a3))
  {
    return (a4 >> 1) - a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A197E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= (a6 >> 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A19838(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    goto LABEL_23;
  }

  if (result > 0)
  {
    if (v9 < 0)
    {
      goto LABEL_14;
    }

    v8 = v9 < result;
  }

  else
  {
    if (v9 > 0)
    {
      goto LABEL_14;
    }

    v8 = result < v9;
  }

  if (v8)
  {
    v7 = a5 >> 1;
    goto LABEL_19;
  }

LABEL_14:
  if (__OFADD__(a4, result))
  {
    goto LABEL_24;
  }

  v7 = a4 + result;
LABEL_19:
  if (v7 < a4)
  {
LABEL_25:
    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  sub_1B0A19D20(a4, a2, a3, a4, a5);
  sub_1B0A19D20(v7, a2, a3, a4, a5);
  result = swift_unknownObjectRetain();
  if ((v7 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRelease();
    return a2;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0A19A14(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + 4 * a1);
  }

  result = sub_1B0A19D5C(a1, a3);
  __break(1u);
  return result;
}

void sub_1B0A19AA0(uint64_t a1)
{
  v21 = sub_1B03B1F78(a1);
  v2 = sub_1B03B1F78(*v1);
  v22 = v2 + v21;
  if (__OFADD__(v2, v21))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v22 > ((*v20)[3] >> 1))
  {
    if ((*v20)[2] < v22)
    {
      v16 = v22;
    }

    else
    {
      v16 = (*v20)[2];
    }

    v15 = *v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = sub_1B0A19F38(isUniquelyReferenced_nonNull_native, v16, 1, v15);
    v5 = *v20;
    *v20 = v4;
  }

  v6 = (*v20)[2];
  v13 = &(*v20)[2 * v6 + 4];
  v7 = (*v20)[3] >> 1;
  v14 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_28;
  }

  if (sub_1B03B1F90(a1))
  {
    if (v14 >= v21)
    {
      swift_arrayInitWithCopy();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      swift_unknownObjectRelease();
      v12 = v21;
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = 0;
LABEL_19:
  if (v12 < v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 <= 0)
  {
LABEL_26:
    sub_1B0394A5C();
    return;
  }

  v9 = (*v20)[2];
  v11 = v9 + v12;
  if (!__OFADD__(v9, v12))
  {
    (*v20)[2] = v11;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1B0A19D20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result > (a5 >> 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result < a4)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A19D5C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  return v6;
}

void *sub_1B0A19F38(void *result, uint64_t a2, char a3, uint64_t *a4)
{
  v9 = result;
  v11 = a4[3] >> 1;
  if (a3)
  {
    if (v11 < a2)
    {
      if ((v11 * 2) >> 64 != (2 * v11) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v11 < a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = 2 * v11;
      }
    }

    else
    {
      v8 = a4[3] >> 1;
    }
  }

  else
  {
    v8 = a2;
  }

  v6 = a4[2];
  v7 = sub_1B0A1A11C(v6, v8);
  if (v9)
  {
    __dst = (v7 + 4);
    __src = (a4 + 4);
    if (v7 + 4 < a4 + 4 || __dst >= &__src[16 * v6] || __dst != __src)
    {
      memmove(__dst, __src, 16 * v6);
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    a4[2] = 0;
  }

  else
  {

    swift_arrayInitWithCopy();
    swift_unknownObjectRelease();
  }

  return v7;
}

void *sub_1B0A1A11C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * (v4 / 16);
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

uint64_t sub_1B0A1A28C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v3 = *(v2 + 32);
  return sub_1B09F044C(a1, a2, *(v2 + 24));
}

unint64_t sub_1B0A1A2C8()
{
  v2 = qword_1EB6E3468;
  if (!qword_1EB6E3468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3468);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1A344(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 40))(a2, a1);
  v10 = _s18MailboxPersistenceVMa();
  v3 = (a2 + *(v10 + 20));
  v4 = *v3;
  *v3 = *(a1 + *(v10 + 20));
  MEMORY[0x1E69E5920](v4);
  v12 = (a1 + *(v10 + 24));
  v13 = (a2 + *(v10 + 24));
  *v13 = *v12;
  v5 = v13[1];
  v13[1] = v12[1];

  v6 = v13[2];
  v13[2] = v12[2];

  v7 = v13[3];
  v13[3] = v12[3];

  v8 = v13[4];
  v13[4] = v12[4];

  return a2;
}

uint64_t *sub_1B0A1A46C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;
  MEMORY[0x1E69E5920](v3);
  v13 = _s15ActivityUpdaterVMa();
  v12 = a1 + *(v13 + 20);
  v10 = a2 + *(v13 + 20);
  v4 = *v10;
  *v10 = *v12;

  v5 = *(v10 + 1);
  *(v10 + 1) = *(v12 + 1);

  v11 = *(_s8ActivityVMa() + 24);
  v6 = sub_1B0E43108();
  (*(*(v6 - 8) + 40))(&v10[v11], &v12[v11]);
  v7 = (a2 + *(v13 + 24));
  v8 = *v7;
  *v7 = *(a1 + *(v13 + 24));

  return a2;
}

unint64_t sub_1B0A1A5CC()
{
  v2 = qword_1EB6E3478;
  if (!qword_1EB6E3478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1A648()
{
  v2 = qword_1EB6DA900;
  if (!qword_1EB6DA900)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA900);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B0A1A6AC(void *a1, void *a2)
{
  *a2 = *a1;
  v7 = _s15ActivityUpdaterVMa();
  v6 = a1 + *(v7 + 20);
  v4 = a2 + *(v7 + 20);
  *v4 = *v6;
  *(v4 + 1) = *(v6 + 1);
  v5 = *(_s8ActivityVMa() + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(&v4[v5], &v6[v5]);
  result = a2;
  *(a2 + *(v7 + 24)) = *(a1 + *(v7 + 24));
  return result;
}

uint64_t block_copy_helper_213(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_219(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A1A914()
{
  v2 = qword_1EB6DB660;
  if (!qword_1EB6DB660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3498, &qword_1B0EA1F78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB660);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_401(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_407(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_511(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_866(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A1AC18()
{
  v2 = qword_1EB6DB748;
  if (!qword_1EB6DB748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34F0, &qword_1B0EA1F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1ACA0()
{
  v2 = qword_1EB6DB008;
  if (!qword_1EB6DB008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3500, &qword_1B0EA1F98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1AD28(unsigned int a1, uint64_t a2)
{
  v12 = *(_s6LoggerVMa() - 8);
  v3 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v4 = (v3 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + 16);
  v6 = *(v2 + v4);
  v7 = *(v2 + v4 + 8);
  v8 = *(v2 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B09C1E44(a1, a2, v5, v2 + v3, v6, v7, v8);
}

unint64_t sub_1B0A1ADF8()
{
  v2 = qword_1EB6DB400;
  if (!qword_1EB6DB400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1AE80()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
  v1 = sub_1B0A1ADF8();

  return sub_1B0A18E98(v5, v3, v4, v1);
}

uint64_t sub_1B0A1AEE8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3540, &unk_1B0EA1FD0);
  v1 = sub_1B0A1AF50();

  return sub_1B0A18E98(v5, v3, v4, v1);
}

unint64_t sub_1B0A1AF50()
{
  v2 = qword_1EB6DAD68;
  if (!qword_1EB6DAD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3540, &unk_1B0EA1FD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1AFF0()
{
  v2 = qword_1EB6E3550;
  if (!qword_1EB6E3550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1B098()
{
  LODWORD(v2) = *(v0 + 24);
  WORD2(v2) = *(v0 + 28);
  return sub_1B09D4B80(*(v0 + 16), v2);
}

uint64_t sub_1B0A1B0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1B09D8BC4();
}

uint64_t sub_1B0A1B128()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3570, &qword_1B0EA1FF8);
  v1 = sub_1B0A1B190();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

unint64_t sub_1B0A1B190()
{
  v2 = qword_1EB6DAD58;
  if (!qword_1EB6DAD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3570, &qword_1B0EA1FF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1B220()
{
  v2 = qword_1EB6DB770;
  if (!qword_1EB6DB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3580, &qword_1B0EA2000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1B2A8()
{
  v2 = qword_1EB6DB290;
  if (!qword_1EB6DB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3598, &unk_1B0EA2010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB290);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1B330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B09EC3F0();
}

unint64_t sub_1B0A1B368()
{
  v2 = qword_1EB6E35B0;
  if (!qword_1EB6E35B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27B8, &qword_1B0EA2020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E35B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B0A1B3F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B06B916C();
  v6 = a1[6];

  v7 = a1[8];

  v8 = a1[10];

  return a1;
}

_BYTE *sub_1B0A1B55C(_BYTE *a1, _BYTE *a2)
{
  v15 = _s6UploadVMa();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2740, &qword_1B0EA1FE0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[8] = a1[8];
    __dst = &a2[*(v15 + 20)];
    __src = &a1[*(v15 + 20)];
    v11 = sub_1B0E43108();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(__src, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(__dst, __src, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(__dst, __src, v11);
      (*(v12 + 56))(__dst, 0, 1, v11);
    }

    v7 = &a2[*(v15 + 24)];
    v3 = &a1[*(v15 + 24)];
    v6 = *v3;
    v8 = v3[1];
    sub_1B03B2000(*v3, v8);
    *v7 = v6;
    v7[1] = v8;
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

uint64_t sub_1B0A1B8C4(uint64_t a1)
{
  v26 = a1;
  if (*(a1 + 176) != 254 && *(v26 + 176) != 255)
  {
    v1 = *v26;
    v2 = *(v26 + 8);
    v3 = *(v26 + 16);
    v4 = *(v26 + 24);
    v5 = *(v26 + 32);
    v6 = *(v26 + 40);
    v7 = *(v26 + 48);
    v8 = *(v26 + 56);
    v9 = *(v26 + 64);
    v10 = *(v26 + 72);
    v11 = *(v26 + 80);
    v12 = *(v26 + 88);
    v13 = *(v26 + 96);
    v14 = *(v26 + 104);
    v15 = *(v26 + 112);
    v16 = *(v26 + 120);
    v17 = *(v26 + 128);
    v18 = *(v26 + 136);
    v19 = *(v26 + 144);
    v20 = *(v26 + 152);
    v21 = *(v26 + 160);
    v22 = *(v26 + 168);
    v23 = *(v26 + 176);
    v25[16] = v25;
    sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  return v26;
}

void *sub_1B0A1B9D4(uint64_t *a1, void *a2)
{
  v65 = a1;
  v64 = a2;
  v66 = _s18SectionsToDownloadVMa();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  if ((*(v67 + 48))(v65, 1))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3560, &qword_1B0EA1FE8);
    memcpy(v64, v65, *(*(v35 - 8) + 64));
  }

  else
  {
    v59 = *v65;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = v64;
    v3 = v66;
    v4 = v65;
    *v64 = v59;
    v60 = v2 + *(v3 + 20);
    v61 = v4 + *(v3 + 20);
    v62 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v5 = sub_1B0E443C8();
      (*(*(v5 - 8) + 16))(v60, v61);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v60, v61, *(*(v62 - 8) + 64));
    }

    v6 = _s31PreviouslyDownloadedMessageDataVMa();
    v55 = *(v6 + 20);
    v56 = *&v61[*(v6 + 20)];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = v64;
    v8 = v66;
    v9 = v65;
    *&v60[v55] = v56;
    v57 = (v7 + *(v8 + 24));
    v58 = (v9 + *(v8 + 24));
    if (*(v58 + 176) == 255)
    {
      memcpy(v57, v58, 0xB1uLL);
    }

    else
    {
      v10 = *v58;
      v11 = v58[1];
      v12 = v58[2];
      v13 = v58[3];
      v14 = v58[4];
      v15 = v58[5];
      v38 = v58[6];
      v39 = v58[7];
      v40 = v58[8];
      v41 = v58[9];
      v42 = v58[10];
      v43 = v58[11];
      v44 = v58[12];
      v45 = v58[13];
      v46 = v58[14];
      v47 = v58[15];
      v48 = v58[16];
      v49 = v58[17];
      v50 = v58[18];
      v51 = v58[19];
      v52 = v58[20];
      v53 = v58[21];
      v54 = *(v58 + 176);
      v37[16] = v37;
      sub_1B0716BB8(v10, v11, v12, v13, v14, v15, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v25 = v47;
      v26 = v48;
      v27 = v49;
      v28 = v50;
      v29 = v51;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v33 = v57;
      *v57 = v10;
      v33[1] = v11;
      v33[2] = v12;
      v33[3] = v13;
      v33[4] = v14;
      v33[5] = v15;
      v33[6] = v16;
      v33[7] = v17;
      v33[8] = v18;
      v33[9] = v19;
      v33[10] = v20;
      v33[11] = v21;
      v33[12] = v22;
      v33[13] = v23;
      v33[14] = v24;
      v33[15] = v25;
      v33[16] = v26;
      v33[17] = v27;
      v33[18] = v28;
      v33[19] = v29;
      v33[20] = v30;
      v33[21] = v31;
      *(v33 + 176) = v32 & 1;
    }

    v34 = v67;
    *(v64 + *(v66 + 28)) = *(v65 + *(v66 + 28));
    (*(v34 + 56))();
  }

  return v64;
}

uint64_t *sub_1B0A1BE78(uint64_t *a1)
{
  v32 = a1;
  v33 = _s18SectionsToDownloadVMa();
  if (!(*(*(v33 - 8) + 48))(v32, 1))
  {
    v1 = *v32;

    v30 = v32 + *(v33 + 20);
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 8))(v30);
    }

    v3 = *&v30[*(_s31PreviouslyDownloadedMessageDataVMa() + 20)];

    v29 = v32 + *(v33 + 24);
    if (v29[176] != 255)
    {
      v4 = *v29;
      v5 = *(v29 + 1);
      v6 = *(v29 + 2);
      v7 = *(v29 + 3);
      v8 = *(v29 + 4);
      v9 = *(v29 + 5);
      v10 = *(v29 + 6);
      v11 = *(v29 + 7);
      v12 = *(v29 + 8);
      v13 = *(v29 + 9);
      v14 = *(v29 + 10);
      v15 = *(v29 + 11);
      v16 = *(v29 + 12);
      v17 = *(v29 + 13);
      v18 = *(v29 + 14);
      v19 = *(v29 + 15);
      v20 = *(v29 + 16);
      v21 = *(v29 + 17);
      v22 = *(v29 + 18);
      v23 = *(v29 + 19);
      v24 = *(v29 + 20);
      v25 = *(v29 + 21);
      v26 = v29[176];
      v28[16] = v28;
      sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  return v32;
}

uint64_t sub_1B0A1C2CC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v6;
  v8 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v8;
  return result;
}

void *sub_1B0A1C37C(void *a1)
{
  v1 = a1[2];

  v2 = a1[4];

  v3 = a1[6];

  v4 = a1[7];

  return a1;
}

unint64_t sub_1B0A1C3D4()
{
  v2 = qword_1EB6DB800;
  if (!qword_1EB6DB800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3648, &unk_1B0EA20A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1C478()
{
  v2 = qword_1EB6E3658;
  if (!qword_1EB6E3658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1C51C()
{
  v10 = *(sub_1B0E42E68() - 8);
  v1 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v2 = (v1 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + v2);
  v6 = (v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1B09ED060(v3, v4, v0 + v1, v5, v7, v8);
}

uint64_t block_copy_helper_3658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A1C640()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B09DF014(v2);
}

uint64_t sub_1B0A1C6B0()
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v7 = (v8 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = sub_1B0E42E68();
  v2 = (v7 + 8 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v3 = (v2 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B09ED640(v0 + v8, *(v0 + v7), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_3759(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B0A1C8C0(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

unint64_t sub_1B0A1CA10()
{
  v2 = qword_1EB6DC978;
  if (!qword_1EB6DC978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC978);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1CA88(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v7 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v7;
  return result;
}

unint64_t sub_1B0A1CB5C()
{
  v2 = qword_1EB6DB740;
  if (!qword_1EB6DB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3680, &qword_1B0EA20B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1CBE4()
{
  v2 = qword_1EB6DB828;
  if (!qword_1EB6DB828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3690, &qword_1B0EA20C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1CC9C()
{
  v2 = qword_1EB6DBF28;
  if (!qword_1EB6DBF28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1CD18()
{
  v2 = qword_1EB6DBF30;
  if (!qword_1EB6DBF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBF30);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_4382(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4388(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4394(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A1CEF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1B09F18E0(v2, v3, v4);
}

uint64_t block_copy_helper_4400(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A1CFD8()
{
  v2 = qword_1EB6DAF68;
  if (!qword_1EB6DAF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1D0C8(uint64_t a1)
{
  v2 = _s6LoggerVMa();
  v3 = (((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)) + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v1 + v3);
  v5 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0A017B8(a1);
}

uint64_t block_copy_helper_5125(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *sub_1B0A1D1E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1B09FC10C(a1);
}

id sub_1B0A1D214(void *a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return MEMORY[0x1E69E5928](a1);
  }
}

unint64_t sub_1B0A1D2AC()
{
  v2 = qword_1EB6DBBD8;
  if (!qword_1EB6DBBD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1D338()
{
  v2 = qword_1EB6DA430;
  if (!qword_1EB6DA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3708, &qword_1B0EA20E8);
    sub_1B0A1D3D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1D3D0()
{
  v2 = qword_1EB6DA3A8;
  if (!qword_1EB6DA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3710, &qword_1B0EA20F0);
    sub_1B0A1D468();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1D468()
{
  v2 = qword_1EB6DA488;
  if (!qword_1EB6DA488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3720, &qword_1B0EA20F8);
    sub_1B074B86C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1D500()
{
  v2 = qword_1EB6DBF98;
  if (!qword_1EB6DBF98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1D5AC()
{
  v2 = qword_1EB6DBFA8;
  if (!qword_1EB6DBFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFA8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A1D624(void *a1)
{
  v1 = a1[1];

  v2 = a1[4];

  v3 = a1[7];

  return a1;
}

void sub_1B0A1D668(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    MEMORY[0x1E69E5920](a1);
  }
}

uint64_t type metadata accessor for PersistenceAdaptor()
{
  v1 = qword_1EB6DBD38;
  if (!qword_1EB6DBD38)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0A1D778()
{
  v6 = _s18MailboxPersistenceVMa();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = _s15ActivityUpdaterVMa();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = _s6LoggerVMa();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_1B0A1DAE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 9))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0A1DBF8(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t sub_1B0A1DF5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xC && *(a1 + 16))
    {
      v5 = *a1 + 12;
    }

    else
    {
      v2 = HIBYTE(*(a1 + 8)) >> 4;
      v3 = 15 - (((4 * v2) | (v2 >> 2)) & 0xF);
      if (v3 >= 0xC)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0A1E094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    if (a3 > 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((~(a2 - 1) & 0xF) >> 2) | (4 * (~(a2 - 1) & 0xF))) << 60;
    }
  }

  return result;
}

uint64_t sub_1B0A1E29C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 12))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A1E3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B0A1E61C()
{
  v2 = qword_1EB6E3740;
  if (!qword_1EB6E3740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1E6B0()
{
  v2 = qword_1EB6E3748;
  if (!qword_1EB6E3748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1E744()
{
  v2 = qword_1EB6E3750;
  if (!qword_1EB6E3750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1E7C0()
{
  v2 = qword_1EB6E3758;
  if (!qword_1EB6E3758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3758);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B0A1E870(uint64_t *a1)
{
  if (*a1 > 2)
  {
    v1 = *a1;
  }

  return a1;
}

unint64_t sub_1B0A1E8C0()
{
  v2 = qword_1EB6DA5D0;
  if (!qword_1EB6DA5D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A1E924()
{
  v2 = qword_1EB6E3770;
  if (!qword_1EB6E3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3768, &qword_1B0EA2D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1E9AC()
{
  v2 = qword_1EB6E3778;
  if (!qword_1EB6E3778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3768, &qword_1B0EA2D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1EA68()
{
  v2 = qword_1EB6E3780;
  if (!qword_1EB6E3780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3768, &qword_1B0EA2D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1EAF0()
{
  v2 = qword_1EB6E3790;
  if (!qword_1EB6E3790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3768, &qword_1B0EA2D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1EB78()
{
  v2 = qword_1EB6E37A0;
  if (!qword_1EB6E37A0)
  {
    sub_1B071C094();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E37A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1EBF8()
{
  v2 = qword_1EB6E37A8;
  if (!qword_1EB6E37A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3798, &qword_1B0EA2DA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E37A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1EC88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B0A074BC(a1);
}

unint64_t sub_1B0A1ECA4()
{
  v2 = qword_1EB6E37C8;
  if (!qword_1EB6E37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E37C0, &unk_1B0EA2DB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E37C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1ED2C()
{
  v2 = qword_1EB6E37D0;
  if (!qword_1EB6E37D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E37D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_6451(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6457(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A1EE80()
{
  v2 = qword_1EB6E37D8;
  if (!qword_1EB6E37D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E37D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A1EEFC()
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8);
  v1 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((v1 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 1);

  return sub_1B09EDDB0(v2, v3, v4, v0 + v1, v6, v7);
}

uint64_t block_copy_helper_6463(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6564(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A1F0B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B09DF0CC();
}

unint64_t sub_1B0A1F198()
{
  v2 = qword_1EB6DCCB0;
  if (!qword_1EB6DCCB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCCB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F23C()
{
  v2 = qword_1EB6DB778;
  if (!qword_1EB6DB778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3800, &qword_1B0EA2E08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F2C4()
{
  v2 = qword_1EB6DB298;
  if (!qword_1EB6DB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3810, &qword_1B0EA2E10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F34C()
{
  v2 = qword_1EB6DB7D8;
  if (!qword_1EB6DB7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3820, &qword_1B0EA2E18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F3D4()
{
  v2 = qword_1EB6DAD18;
  if (!qword_1EB6DAD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16D8, &qword_1B0E998D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F4D4()
{
  v2 = qword_1EB6DB2B0;
  if (!qword_1EB6DB2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3460, &qword_1B0EA1F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A1F570()
{
  v2 = qword_1EB6E3858;
  if (!qword_1EB6E3858)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3858);
    return WitnessTable;
  }

  return v2;
}

double *sub_1B0A1F630(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  v5 = RecentMailboxes.__allocating_init(source:mailboxPersistence:)(a1, &protocol witness table for MFMailboxFrecencyController, a2);

  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);

  return v5;
}

uint64_t RecentMailboxes.Element.account.getter()
{
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t RecentMailboxes.Element.account.setter(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t RecentMailboxes.Element.init(account:mailbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = a1;
  v10 = a2;
  v11 = v6;
  sub_1B0A21094(&v9, a4);

  return sub_1B03B1198(&v9);
}

BOOL static RecentMailboxes.Element.== infix(_:_:)(void *a1, void *a2)
{
  v14 = 0;
  v13 = 0;
  v6 = *a1;
  v9 = a1[1];
  v4 = a1[2];
  v14 = a1;
  v7 = *a2;
  v8 = a2[1];
  v5 = a2[2];
  v13 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = MEMORY[0x1B2726DE0](v6, v9, v7, v8);

  if (v10)
  {
    v12 = v4;
    v11 = v5;
    return static MailboxRowID.== infix(_:_:)(&v12, &v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0A1F9F8()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A1FA54(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_1B0A1FACC()
{
  swift_beginAccess();
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A1FB34(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_1B0A1FBC4()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A1FC20(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_1B0A1FC98()
{
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0A1FCD8()
{
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v3);
  return v3;
}

uint64_t sub_1B0A1FD24()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2;
}

double *sub_1B0A1FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v34 = a1;
  v30 = a2;
  v32 = a3;
  v31 = a4;
  v33 = a5;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v29 = 0;
  v20 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v20 - v20;
  v21 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v20 - v21;
  v22 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v20 - v22;
  v40 = v6;
  v41 = v7;
  v38 = v8;
  v39 = v9;
  v37 = v10;
  v36 = v5;
  *(v5 + 16) = sub_1B0E46A48();
  *(v5 + 24) = 0;
  v23 = 1;
  *(v5 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3860, &unk_1B0EA2E80);
  *(v5 + 40) = sub_1B0E46A48();
  sub_1B06CCC58();
  v24 = sub_1B0E44838();
  v25 = v11;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v28);
  v12 = sub_1B0E45A08();
  v13 = v35;
  v14 = v12;
  v15 = v34;
  *(v35 + 6) = v14;
  MEMORY[0x1E69E5928](v15);
  v16 = v30;
  *(v13 + 7) = v34;
  *(v13 + 8) = v16;

  v17 = v31;
  v18 = v33;
  *(v13 + 9) = v32;
  *(v13 + 10) = v17;
  v13[11] = v18;

  MEMORY[0x1E69E5920](v34);
  return v35;
}

uint64_t RecentMailboxes.deinit()
{
  sub_1B039E440(v0 + 2);
  sub_1B039E440(v0 + 5);
  MEMORY[0x1E69E5920](v0[6]);
  MEMORY[0x1E69E5920](v0[7]);
  v1 = v0[10];

  return v3;
}

double *RecentMailboxes.__allocating_init(source:mailboxPersistence:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v3 = sub_1B0A1FD84();
  v9 = sub_1B0A1FD94(a1, a2, sub_1B0A210E4, v6, v3);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a1);

  return v9;
}

uint64_t sub_1B0A202A8(void *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = v2;
  v10 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v3 = sub_1B06E3764();
  sub_1B0A20554(&v10, v6, v3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3868, &qword_1B0EA2E90);
  sub_1B0A210EC();
  sub_1B0E45598();
  v8 = sub_1B0E453E8();

  v9 = [a1 mailboxDatabaseIDsForMailboxURLStrings_];
  MEMORY[0x1E69E5920](v8);
  sub_1B039A494();
  sub_1B0E445A8();
  MEMORY[0x1E69E5920](v9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3878, &qword_1B0EA2E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3880, &qword_1B0EA2EA0);
  sub_1B0A2119C();
  sub_1B0E44F58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3890, &qword_1B0EA2EA8);
  sub_1B0A21224();
  v5 = sub_1B0E445E8();

  return v5;
}

uint64_t sub_1B0A20554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v50 = a2;
  v49 = a3;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v53 = 0;
  v54 = 0;
  v69 = a2;
  v45 = *(a2 - 8);
  v46 = a2 - 8;
  v37 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v8 - v37;
  v42 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v47);
  v48 = &v8 - v41;
  v68 = &v8 - v41;
  v67 = v4;
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38A0, &unk_1B0EA2EB0);
  sub_1B0E46A48();
  v44 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69E6168];
  v65 = sub_1B0E445D8();
  v64 = sub_1B0E44588();
  (*(v45 + 16))(v3, v47, v50);
  sub_1B0E44F08();
  while (1)
  {
    swift_getAssociatedConformanceWitness();
    sub_1B0E45E38();
    v35 = v62;
    v36 = v63;
    if (!v63)
    {
      break;
    }

    v33 = v35;
    v34 = v36;
    v28 = v36;
    v27 = v35;
    v60 = v35;
    v61 = v36;
    v29 = objc_opt_self();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = sub_1B0E44AC8();

    v30 = *MEMORY[0x1E699A698];
    MEMORY[0x1E69E5928](v30);
    v32 = [v29 accountIDFromMailboxURLString:v31 urlScheme:v30];
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v31);
    if (v32)
    {
      v26 = v32;
      v21 = v32;
      v22 = sub_1B0E44AD8();
      v23 = v6;
      MEMORY[0x1E69E5920](v21);
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v19 = v25;
    v20 = v24;
    if (v25)
    {
      v17 = v20;
      v18 = v19;
      v16 = v19;
      v10 = v20;
      v58 = v20;
      v59 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v55;
      v55[0] = v10;
      v55[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BA8, &qword_1B0E9AFC0);
      sub_1B0E454D8();
      v12 = v56;
      v15 = v57;
      v53 = v56;
      v54 = v57;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14 = v52;
      v52[0] = v12;
      v52[1] = v15;
      v13 = v51;
      v51[0] = v27;
      v51[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38A8, &unk_1B0EA2EC0);
      sub_1B0E44788();
    }
  }

  (*(v39 + 8))(v48, AssociatedTypeWitness);
  v8 = &v65;
  v9 = v65;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(&v64);
  sub_1B039E440(v8);
  return v9;
}

uint64_t sub_1B0A20BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v12 = a1[1];
  v11 = a1[2];
  v28 = *a1;
  v10 = v28;
  v29 = v12;
  v30 = v11;
  v27 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v11);
  v25 = v28;
  v26 = v12;
  MEMORY[0x1E69E5920](v11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v11);
  v24 = [v11 longLongValue];
  MEMORY[0x1E69E5920](v11);

  MailboxRowID.init(_:)(v24, &v22);
  v13 = v22;
  if (v23)
  {
    goto LABEL_6;
  }

  v21 = v22;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = v10;
  v18[1] = v12;
  sub_1B0E44778();
  sub_1B03B1198(v18);
  v7 = v19;
  v8 = v20;
  if (!v20)
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = 0;
  }

  else
  {
    v16 = v19;
    v17 = v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = v13;
    RecentMailboxes.Element.init(account:mailbox:)(v7, v8, &v14, v15);
    v3 = v15[0];
    v4 = v15[1];
    v5 = v15[2];
    *a3 = v10;
    a3[1] = v12;
    a3[2] = v3;
    a3[3] = v4;
    a3[4] = v5;
  }
}

uint64_t sub_1B0A20DFC()
{
  v4 = v0;
  v3 = sub_1B08CA944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B10, &qword_1B0E9F578);
  sub_1B08CDFE0();
  v2 = sub_1B0E44F58();
  sub_1B039E440(&v3);
  return v2;
}

uint64_t sub_1B0A20EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v16 = 0;
  v17 = 0;
  v13 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  __b[0] = v13;
  __b[1] = v2;
  __b[2] = v3;
  __b[3] = v4;
  __b[4] = v5;
  LOBYTE(__b[5]) = v6 & 1;
  v18 = v13;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6 & 1;
  result = sub_1B08D0A64();
  if (v8)
  {
    v16 = result;
    v17 = v8;
    v14 = v13;
    result = RecentMailboxes.Element.init(account:mailbox:)(result, v8, &v14, v15);
    v9 = v15[1];
    v10 = v15[2];
    *a2 = v15[0];
    a2[1] = v9;
    a2[2] = v10;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}