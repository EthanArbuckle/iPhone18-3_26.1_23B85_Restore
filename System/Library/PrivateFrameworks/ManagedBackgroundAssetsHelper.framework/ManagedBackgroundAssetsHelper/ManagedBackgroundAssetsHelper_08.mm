uint64_t sub_1D30AC614()
{
  v359 = v0;
  v1 = v0;
  v358[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 688);
  v3 = *(v0 + 616);
  v4 = sub_1D30E929C();
  v5 = v2;
  v6 = sub_1D30E8B1C();

  v7 = os_log_type_enabled(v6, v4);
  v8 = *(v0 + 688);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D2FD9000, v6, v4, "Checking for stale license records failed: %{public}@", v9, 0xCu);
    sub_1D2FF14DC(v10, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + 616);
  v14 = sub_1D30E8B1C();
  v15 = sub_1D30E92BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D2FD9000, v14, v15, "Checking for orphaned asset packs…", v16, 2u);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  v17 = *(v1 + 40);

  *(v1 + 768) = *(v17 + 16);
  if (qword_1EC749038 != -1)
  {
LABEL_70:
    swift_once();
  }

  v18 = __swift_project_value_buffer(*(v1 + 144), qword_1EC75A8D8);
  *(v1 + 776) = v18;
  v19 = sub_1D3005160(v18);
  *(v1 + 784) = v19;
  v357 = v1;
  v20 = *(v19 + 2);
  *(v1 + 792) = v20;
  if (!v20)
  {
LABEL_31:

    v123 = *(v1 + 616);
    v124 = sub_1D30E8B1C();
    v125 = sub_1D30E92BC();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_1D2FD9000, v124, v125, "Checking for inactive staging directories…", v126, 2u);
      MEMORY[0x1D38B3760](v126, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v127 = *(v1 + 768);
    v128 = __swift_project_value_buffer(*(v1 + 144), qword_1EE3152D0);
    v129 = sub_1D3005160(v128);
    v130 = *(v129 + 2);
    if (v130)
    {
      v131 = *(v1 + 336);
      v133 = *(v131 + 16);
      v131 += 16;
      v132 = v133;
      v134 = &v129[(*(v131 + 64) + 32) & ~*(v131 + 64)];
      v306 = (v131 + 16);
      v135 = *(v1 + 152);
      v312 = (v135 + 16);
      v332 = (v131 + 32);
      v334 = (v131 - 8);
      v304 = (v135 + 32);
      v310 = (v135 + 8);
      v302 = *(v1 + 96);
      v328 = *(v131 + 56);
      v289 = *MEMORY[0x1E69C76A0];
      v346 = v133;
      v308 = v128;
      do
      {
        v351 = v134;
        v355 = v130;
        v137 = *(v1 + 328);
        v138 = *(v1 + 56);
        v132(*(v1 + 408));
        v139 = sub_1D30E8D4C();
        v141 = v140;

        sub_1D30E8D6C();
        if ((*v332)(v138, 1, v137) == 1)
        {
          v322 = *(v1 + 616);
          v142 = *(v1 + 408);
          v143 = *(v1 + 392);
          v144 = *(v1 + 328);
          v146 = *(v1 + 96);
          v145 = *(v1 + 104);
          v147 = *(v1 + 88);
          v317 = *(v1 + 80);
          v148 = *(v1 + 72);
          sub_1D2FF14DC(*(v1 + 56), &qword_1EC749940, &qword_1D30F1B10);
          *v146 = v139;
          *(v302 + 8) = v141;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          sub_1D3056830(v146, v145, type metadata accessor for FilePath.ResolutionError);
          sub_1D3056830(v145, v147, type metadata accessor for FilePath.ResolutionError);
          LOBYTE(v148) = sub_1D30E929C();
          (v346)(v143, v142, v144);
          sub_1D3058338(v147, v317, type metadata accessor for FilePath.ResolutionError);
          v149 = sub_1D30E8B1C();
          v314 = v148;
          v150 = os_log_type_enabled(v149, v148);
          v323 = *(v1 + 408);
          v151 = *(v1 + 392);
          v152 = *(v1 + 328);
          v153 = *(v1 + 80);
          v318 = *(v1 + 88);
          if (v150)
          {
            v294 = *(v1 + 72);
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v300 = swift_slowAlloc();
            v358[0] = v300;
            *v154 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
            v156 = sub_1D30E977C();
            v158 = v157;
            v298 = *v334;
            (*v334)(v151, v152);
            v159 = sub_1D2FFEA04(v156, v158, v358);
            v132 = v346;

            *(v154 + 4) = v159;
            *(v154 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v153, v160, type metadata accessor for FilePath.ResolutionError);
            v161 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v153, type metadata accessor for FilePath.ResolutionError);
            *(v154 + 14) = v161;
            *v155 = v161;
            _os_log_impl(&dword_1D2FD9000, v149, v314, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v154, 0x16u);
            sub_1D2FF14DC(v155, &qword_1EC7493A0, &qword_1D30EF480);
            MEMORY[0x1D38B3760](v155, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v300);
            MEMORY[0x1D38B3760](v300, -1, -1);
            MEMORY[0x1D38B3760](v154, -1, -1);

            sub_1D3065284(v318, type metadata accessor for FilePath.ResolutionError);
            v298(v323, v152);
          }

          else
          {
            v132 = v346;

            sub_1D3065284(v153, type metadata accessor for FilePath.ResolutionError);
            v136 = *v334;
            (*v334)(v151, v152);
            sub_1D3065284(v318, type metadata accessor for FilePath.ResolutionError);
            v136(v323, v152);
          }
        }

        else
        {
          v162 = *(v1 + 448);
          v163 = *(v1 + 400);
          v164 = *(v1 + 328);
          v165 = *(v1 + 296);
          v166 = *(v1 + 248);
          v315 = *(v1 + 256);
          v167 = *(v1 + 240);
          v168 = *(v1 + 144);
          v169 = *(v1 + 56);

          (*v306)(v163, v169, v164);
          v319 = *v312;
          (*v312)(v165, v308, v168);
          (v346)(v162, v163, v164);
          sub_1D30E8D7C();
          v324 = *v334;
          (*v334)(v163, v164);
          sub_1D30E8D8C();
          (*v304)(v315, v166, v168);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v170 = *(v1 + 256);
          v171 = *(v1 + 232);
          v172 = *(v1 + 144);
          __swift_project_value_buffer(*(v1 + 608), qword_1EE3133A8);
          v173 = sub_1D30E928C();
          v174 = v319;
          v319(v171, v170, v172);
          v175 = sub_1D30E8B1C();
          v176 = os_log_type_enabled(v175, v173);
          v177 = *(v1 + 232);
          v178 = *(v1 + 144);
          if (v176)
          {
            v179 = swift_slowAlloc();
            v180 = swift_slowAlloc();
            v358[0] = v180;
            *v179 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v181 = sub_1D30E977C();
            v183 = v182;
            v184 = *v310;
            (*v310)(v177, v178);
            v185 = sub_1D2FFEA04(v181, v183, v358);
            v174 = v319;

            *(v179 + 4) = v185;
            _os_log_impl(&dword_1D2FD9000, v175, v173, "Item exists at: %{public}s", v179, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v180);
            v186 = v180;
            v1 = v357;
            MEMORY[0x1D38B3760](v186, -1, -1);
            MEMORY[0x1D38B3760](v179, -1, -1);
          }

          else
          {

            v184 = *v310;
            (*v310)(v177, v178);
          }

          v187 = *(v1 + 768);
          sub_1D3003CF4(*(v1 + 256), 0, *(v1 + 224));
          v188 = *(v1 + 224);
          v189 = *(v1 + 144);
          *(v1 + 925) = 0;
          v190 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v191 = sub_1D30E906C();

          v192 = [v190 fileExistsAtPath:v191 isDirectory:v1 + 925];

          v184(v188, v189);
          if (v192)
          {
            v193 = *(v1 + 616);
            v194 = *(v1 + 256);
            v195 = *(v1 + 144);
            if (*(v1 + 925))
            {
              v196 = *(v1 + 208);
              v197 = sub_1D30E927C();
              v174(v196, v194, v195);
              v198 = sub_1D30E8B1C();
              v199 = os_log_type_enabled(v198, v197);
              v200 = *(v1 + 208);
              v201 = *(v1 + 144);
              if (v199)
              {
                v202 = swift_slowAlloc();
                v203 = swift_slowAlloc();
                v358[0] = v203;
                *v202 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v204 = sub_1D30E977C();
                v206 = v205;
                v184(v200, v201);
                v207 = sub_1D2FFEA04(v204, v206, v358);

                *(v202 + 4) = v207;
                _os_log_impl(&dword_1D2FD9000, v198, v197, "Checking whether the staging directory at “%{public}s” is inactive…", v202, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v203);
                v208 = v203;
                v1 = v357;
                MEMORY[0x1D38B3760](v208, -1, -1);
                MEMORY[0x1D38B3760](v202, -1, -1);
              }

              else
              {

                v184(v200, v201);
              }

              v224 = *(v1 + 408);
              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v225 = sub_1D30E906C();

              v226 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v227 = sub_1D30E6D18(v226);
              v229 = *(v1 + 616);
              (v346)(*(v1 + 384), *(v1 + 408), *(v1 + 328));
              v230 = sub_1D30E8B1C();
              v231 = sub_1D30E92BC();
              v232 = os_log_type_enabled(v230, v231);
              v233 = *(v1 + 408);
              v234 = *(v1 + 384);
              v235 = *(v1 + 328);
              v236 = v1;
              v237 = *(v1 + 256);
              v238 = *(v236 + 144);
              if (v232)
              {
                v295 = v184;
                v239 = swift_slowAlloc();
                v240 = swift_slowAlloc();
                v358[0] = v240;
                *v239 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
                v241 = sub_1D30E977C();
                v320 = v233;
                v243 = v242;
                v324(v234, v235);
                v244 = sub_1D2FFEA04(v241, v243, v358);

                *(v239 + 4) = v244;
                _os_log_impl(&dword_1D2FD9000, v230, v231, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v239, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v240);
                MEMORY[0x1D38B3760](v240, -1, -1);
                MEMORY[0x1D38B3760](v239, -1, -1);

                v295(v237, v238);
                v324(v320, v235);
              }

              else
              {

                v324(v234, v235);
                v184(v237, v238);
                v324(v233, v235);
              }

              v1 = v357;
            }

            else
            {
              v211 = *(v1 + 200);
              v212 = sub_1D30E92AC();
              v174(v211, v194, v195);
              v213 = sub_1D30E8B1C();
              v214 = os_log_type_enabled(v213, v212);
              v215 = *(v1 + 200);
              v216 = *(v1 + 144);
              if (v214)
              {
                v217 = swift_slowAlloc();
                v218 = swift_slowAlloc();
                v358[0] = v218;
                *v217 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v219 = sub_1D30E977C();
                v221 = v220;
                v184(v215, v216);
                v222 = sub_1D2FFEA04(v219, v221, v358);

                *(v217 + 4) = v222;
                _os_log_impl(&dword_1D2FD9000, v213, v212, "The item at “%{public}s” isn’t a directory; removing it…", v217, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v218);
                v223 = v218;
                v1 = v357;
                MEMORY[0x1D38B3760](v223, -1, -1);
                MEMORY[0x1D38B3760](v217, -1, -1);
              }

              else
              {

                v184(v215, v216);
              }

              v228 = *(v1 + 768);
              sub_1D3009B38(*(v1 + 256));
              v245 = *(v1 + 408);
              v246 = *(v1 + 328);
              v184(*(v1 + 256), *(v1 + 144));
              v324(v245, v246);
              *(v1 + 924) = 1;
            }
          }

          else
          {
            v209 = *(v1 + 408);
            v210 = *(v1 + 328);
            v184(*(v1 + 256), *(v1 + 144));
            v324(v209, v210);
          }

          v132 = v346;
        }

        v134 = &v351[v328];
        v130 = v355 - 1;
      }

      while (v355 != 1);
    }

    v247 = *(v1 + 600);
    v248 = *(v1 + 592);
    v249 = *(v1 + 584);
    v250 = *(v1 + 576);
    v251 = *(v1 + 552);
    v252 = *(v1 + 544);
    v253 = *(v1 + 520);
    v254 = *(v357 + 512);
    v255 = *(v357 + 488);
    v256 = *(v357 + 464);
    v267 = *(v357 + 456);
    v268 = *(v357 + 448);
    v269 = *(v357 + 440);
    v270 = *(v357 + 432);
    v271 = *(v357 + 424);
    v272 = *(v357 + 416);
    v273 = *(v357 + 408);
    v274 = *(v357 + 400);
    v275 = *(v357 + 392);
    v276 = *(v357 + 384);
    v277 = *(v357 + 376);
    v278 = *(v357 + 368);
    v279 = *(v357 + 360);
    v280 = *(v357 + 352);
    v281 = *(v357 + 344);
    v282 = *(v357 + 320);
    v283 = *(v357 + 312);
    v284 = *(v357 + 304);
    v285 = *(v357 + 296);
    v286 = *(v357 + 288);
    v287 = *(v357 + 280);
    v288 = *(v357 + 272);
    v290 = *(v357 + 264);
    v291 = *(v357 + 256);
    v292 = *(v357 + 248);
    v293 = *(v357 + 240);
    v296 = *(v357 + 232);
    v297 = *(v357 + 224);
    v299 = *(v357 + 216);
    v301 = *(v357 + 208);
    v303 = *(v357 + 200);
    v305 = *(v357 + 192);
    v307 = *(v357 + 184);
    v309 = *(v357 + 176);
    v311 = *(v357 + 168);
    v313 = *(v357 + 160);
    v316 = *(v357 + 136);
    v321 = *(v357 + 128);
    v325 = *(v357 + 120);
    v329 = *(v357 + 112);
    v333 = *(v357 + 104);
    v335 = *(v357 + 96);
    v340 = *(v357 + 88);
    v347 = *(v357 + 80);
    v352 = *(v357 + 64);
    v356 = *(v357 + 56);
    v266 = *(v357 + 924);

    v257 = *(v357 + 8);
    v258 = *MEMORY[0x1E69E9840];

    return v257(v266);
  }

  v21 = 0;
  *(v1 + 920) = *(*(v1 + 336) + 80);
  while (1)
  {
    *(v1 + 800) = v21;
    v22 = *(v1 + 784);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_70;
    }

    v23 = *(v1 + 464);
    v24 = *(v1 + 328);
    v25 = *(v1 + 336);
    v26 = *(v1 + 64);
    v27 = *(v25 + 16);
    v28 = v22 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
    v29 = *(v25 + 72);
    *(v1 + 808) = v29;
    *(v1 + 816) = v27;
    *(v1 + 824) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v353 = v27;
    v27(v23, v28 + v29 * v21, v24);
    v30 = sub_1D30E8D4C();
    v32 = v31;

    sub_1D30E8D6C();
    if ((*(v25 + 48))(v26, 1, v24) == 1)
    {
      v336 = *(v1 + 464);
      v33 = *(v1 + 440);
      v34 = *(v1 + 328);
      v36 = *(v1 + 128);
      v35 = *(v1 + 136);
      v37 = *(v1 + 120);
      v341 = *(v1 + 112);
      v348 = *(v1 + 616);
      v38 = *(v1 + 72);
      sub_1D2FF14DC(*(v1 + 64), &qword_1EC749940, &qword_1D30F1B10);
      *v36 = v30;
      v36[1] = v32;
      swift_storeEnumTagMultiPayload();
      sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
      swift_willThrowTypedImpl();
      sub_1D3056830(v36, v35, type metadata accessor for FilePath.ResolutionError);
      sub_1D3056830(v35, v37, type metadata accessor for FilePath.ResolutionError);
      LOBYTE(v38) = sub_1D30E929C();
      v353(v33, v336, v34);
      sub_1D3058338(v37, v341, type metadata accessor for FilePath.ResolutionError);
      v39 = sub_1D30E8B1C();
      v354 = v38;
      v40 = os_log_type_enabled(v39, v38);
      v41 = *(v1 + 464);
      v42 = *(v1 + 440);
      v43 = *(v1 + 328);
      v44 = *(v1 + 112);
      v45 = *(v1 + 120);
      v46 = (*(v1 + 336) + 8);
      if (v40)
      {
        v326 = *(v1 + 72);
        v349 = *(v1 + 464);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v342 = swift_slowAlloc();
        v358[0] = v342;
        *v47 = 136446466;
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
        v337 = v45;
        v49 = sub_1D30E977C();
        v51 = v50;
        v330 = *v46;
        (*v46)(v42, v43);
        v52 = sub_1D2FFEA04(v49, v51, v358);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2114;
        swift_allocError();
        sub_1D3058338(v44, v53, type metadata accessor for FilePath.ResolutionError);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        sub_1D3065284(v44, type metadata accessor for FilePath.ResolutionError);
        *(v47 + 14) = v54;
        *v48 = v54;
        _os_log_impl(&dword_1D2FD9000, v39, v354, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v47, 0x16u);
        sub_1D2FF14DC(v48, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v342);
        MEMORY[0x1D38B3760](v342, -1, -1);
        MEMORY[0x1D38B3760](v47, -1, -1);

        sub_1D3065284(v337, type metadata accessor for FilePath.ResolutionError);
        v330(v349, v43);
      }

      else
      {

        sub_1D3065284(v44, type metadata accessor for FilePath.ResolutionError);
        v84 = *v46;
        (*v46)(v42, v43);
        sub_1D3065284(v45, type metadata accessor for FilePath.ResolutionError);
        v84(v41, v43);
      }

      goto LABEL_9;
    }

    v55 = *(v1 + 776);
    v56 = *(v1 + 456);
    v57 = *(v357 + 448);
    v58 = *(v357 + 336);
    v59 = *(v357 + 328);
    v343 = v55;
    v350 = *(v357 + 320);
    v331 = *(v357 + 304);
    v60 = *(v357 + 296);
    v61 = *(v357 + 152);
    v62 = *(v357 + 144);
    v338 = *(v357 + 312);
    v63 = *(v357 + 64);

    (*(v58 + 32))(v56, v63, v59);
    v64 = v343;
    v344 = *(v61 + 16);
    (v344)(v60, v64, v62);
    v353(v57, v56, v59);
    v1 = v357;
    sub_1D30E8D7C();
    v65 = *(v58 + 8);
    *(v357 + 832) = v65;
    *(v357 + 840) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v327 = v65;
    v65(v56, v59);
    sub_1D30E8D8C();
    (*(v61 + 32))(v350, v338, v62);
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v66 = *(v357 + 320);
    v67 = *(v357 + 288);
    v68 = *(v357 + 144);
    __swift_project_value_buffer(*(v357 + 608), qword_1EE3133A8);
    v69 = sub_1D30E928C();
    v70 = v344;
    (v344)(v67, v66, v68);
    v71 = sub_1D30E8B1C();
    v339 = v69;
    v72 = os_log_type_enabled(v71, v69);
    v73 = *(v357 + 288);
    v74 = *(v357 + 144);
    v75 = *(v357 + 152);
    if (v72)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v358[0] = v77;
      *v76 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v78 = sub_1D30E977C();
      v80 = v79;
      v81 = *(v75 + 8);
      v81(v73, v74);
      v82 = sub_1D2FFEA04(v78, v80, v358);
      v70 = v344;

      *(v76 + 4) = v82;
      _os_log_impl(&dword_1D2FD9000, v71, v339, "Item exists at: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v83 = v77;
      v1 = v357;
      MEMORY[0x1D38B3760](v83, -1, -1);
      MEMORY[0x1D38B3760](v76, -1, -1);
    }

    else
    {

      v81 = *(v75 + 8);
      v81(v73, v74);
    }

    *(v1 + 848) = v81;
    v85 = *(v1 + 768);
    sub_1D3003CF4(*(v1 + 320), 0, *(v1 + 280));
    v86 = *(v1 + 280);
    v87 = *(v1 + 144);
    v88 = *(v1 + 152) + 8;
    *(v1 + 926) = 0;
    v89 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v90 = sub_1D30E906C();

    v91 = [v89 fileExistsAtPath:v90 isDirectory:v1 + 926];

    *(v1 + 856) = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81(v86, v87);
    if (v91)
    {
      break;
    }

    v95 = *(v1 + 464);
    v96 = *(v1 + 328);
    v81(*(v1 + 320), *(v1 + 144));
    v327(v95, v96);
LABEL_9:
    v21 = *(v1 + 800) + 1;
    if (v21 == *(v1 + 792))
    {
      v122 = *(v1 + 784);
      goto LABEL_31;
    }
  }

  v92 = *(v1 + 320);
  if (!*(v1 + 926))
  {
    v97 = *(v1 + 616);
    v98 = *(v1 + 264);
    v99 = *(v1 + 144);
    v100 = sub_1D30E92AC();
    v70(v98, v92, v99);
    v101 = sub_1D30E8B1C();
    v102 = os_log_type_enabled(v101, v100);
    v103 = *(v1 + 264);
    v104 = *(v1 + 144);
    if (v102)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v358[0] = v106;
      *v105 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v107 = sub_1D30E977C();
      v345 = v100;
      v108 = v81;
      v110 = v109;
      v108(v103, v104);
      v111 = sub_1D2FFEA04(v107, v110, v358);
      v81 = v108;

      *(v105 + 4) = v111;
      _os_log_impl(&dword_1D2FD9000, v101, v345, "The item at “%{public}s” isn’t a directory; removing it…", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      v112 = v106;
      v1 = v357;
      MEMORY[0x1D38B3760](v112, -1, -1);
      MEMORY[0x1D38B3760](v105, -1, -1);
    }

    else
    {

      v81(v103, v104);
    }

    v113 = *(v1 + 768);
    sub_1D3009B38(*(v1 + 320));
    v120 = *(v1 + 464);
    v121 = *(v1 + 328);
    v81(*(v1 + 320), *(v1 + 144));
    v327(v120, v121);
    *(v1 + 924) = 1;
    goto LABEL_9;
  }

  v93 = *(v1 + 768);
  v94 = sub_1D3005160(*(v1 + 320));
  *(v1 + 864) = v94;
  v114 = *(v94 + 2);
  *(v1 + 872) = v114;
  if (!v114)
  {

    v115 = *(v1 + 856);
    v116 = *(v1 + 840);
    v117 = *(v1 + 832);
    v118 = *(v1 + 464);
    v119 = *(v1 + 328);
    (*(v1 + 848))(*(v1 + 320), *(v1 + 144));
    v117(v118, v119);
    goto LABEL_9;
  }

  v260 = (*(v1 + 920) + 32) & ~*(v1 + 920);
  *(v1 + 880) = 0u;
  v261 = *(v1 + 824);
  v262 = *(v1 + 624);
  (*(v1 + 816))(*(v1 + 432), &v94[v260], *(v1 + 328));
  *(v1 + 896) = sub_1D30E91EC();
  v263 = sub_1D30E91AC();
  v265 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v263, v264);
}

uint64_t sub_1D30B0260()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 752);
  v8 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_1D30BBA94;
  }

  else
  {

    v4 = sub_1D30B03B0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30B03B0()
{
  v424 = v0;
  v1 = v0;
  v423[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 736);
  v3 = *(v0 + 600);
  (*(v0 + 728))(*(v0 + 552), *(v0 + 528));
  sub_1D3065284(v3, type metadata accessor for LicenseRecord.StaticRepresentation);
  v397 = *(v0 + 760);
  v4 = *(v0 + 720) + 1;
  v422 = v0;
  if (v4 == *(v0 + 704))
  {
LABEL_11:
    v35 = v1[87];
    *(v1 + 924) = 1;

    v36 = v1[77];
    v37 = sub_1D30E8B1C();
    v38 = sub_1D30E92BC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D2FD9000, v37, v38, "Checking for orphaned asset packs…", v39, 2u);
      MEMORY[0x1D38B3760](v39, -1, -1);
    }

    v40 = v1[5];

    v1[96] = *(v40 + 16);
    if (qword_1EC749038 != -1)
    {
LABEL_88:
      swift_once();
    }

    v41 = __swift_project_value_buffer(v1[18], qword_1EC75A8D8);
    v1[97] = v41;
    v42 = sub_1D3005160(v41);
    v1[98] = v42;
    if (v397)
    {
      v43 = v1[77];
      v44 = sub_1D30E929C();
      v45 = v397;
      v46 = sub_1D30E8B1C();

      if (os_log_type_enabled(v46, v44))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138543362;
        v49 = v397;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_1D2FD9000, v46, v44, "Checking for orphaned asset packs failed: %{public}@", v47, 0xCu);
        sub_1D2FF14DC(v48, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v48, -1, -1);
        MEMORY[0x1D38B3760](v47, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v51 = *(v42 + 2);
      v1[99] = v51;
      if (v51)
      {
        v52 = 0;
        *(v1 + 230) = *(v1[42] + 80);
        while (1)
        {
          v1[100] = v52;
          v54 = v1[98];
          if (v52 >= *(v54 + 16))
          {
            __break(1u);
            goto LABEL_88;
          }

          v55 = v1[58];
          v56 = v1[41];
          v57 = v1[42];
          v58 = v1[8];
          v59 = *(v57 + 16);
          v60 = v54 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
          v61 = *(v57 + 72);
          v1[101] = v61;
          v1[102] = v59;
          v1[103] = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v55, v60 + v61 * v52, v56);
          v62 = sub_1D30E8D4C();
          v64 = v63;

          sub_1D30E8D6C();
          if ((*(v57 + 48))(v58, 1, v56) == 1)
          {
            v65 = v1[77];
            v404 = v1[58];
            v66 = v1[55];
            v67 = v1[41];
            v68 = *(v422 + 136);
            v69 = *(v422 + 128);
            v70 = *(v422 + 120);
            v409 = *(v422 + 112);
            v71 = *(v422 + 72);
            sub_1D2FF14DC(*(v422 + 64), &qword_1EC749940, &qword_1D30F1B10);
            *v69 = v62;
            v69[1] = v64;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            sub_1D3056830(v69, v68, type metadata accessor for FilePath.ResolutionError);
            v72 = v68;
            v1 = v422;
            sub_1D3056830(v72, v70, type metadata accessor for FilePath.ResolutionError);
            v73 = sub_1D30E929C();
            v59(v66, v404, v67);
            sub_1D3058338(v70, v409, type metadata accessor for FilePath.ResolutionError);
            v74 = sub_1D30E8B1C();
            v75 = os_log_type_enabled(v74, v73);
            v76 = *(v422 + 464);
            v77 = *(v422 + 440);
            v78 = *(v422 + 328);
            v80 = *(v422 + 112);
            v79 = *(v422 + 120);
            v81 = (*(v422 + 336) + 8);
            if (v75)
            {
              v397 = *(v422 + 72);
              v416 = *(v422 + 120);
              v82 = swift_slowAlloc();
              v410 = v76;
              v83 = swift_slowAlloc();
              v405 = swift_slowAlloc();
              v423[0] = v405;
              *v82 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
              v84 = sub_1D30E977C();
              v390 = v73;
              v86 = v85;
              v87 = *v81;
              (*v81)(v77, v78);
              v88 = v84;
              v1 = v422;
              v89 = sub_1D2FFEA04(v88, v86, v423);

              *(v82 + 4) = v89;
              *(v82 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v80, v90, type metadata accessor for FilePath.ResolutionError);
              v91 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v80, type metadata accessor for FilePath.ResolutionError);
              *(v82 + 14) = v91;
              *v83 = v91;
              _os_log_impl(&dword_1D2FD9000, v74, v390, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v82, 0x16u);
              sub_1D2FF14DC(v83, &qword_1EC7493A0, &qword_1D30EF480);
              MEMORY[0x1D38B3760](v83, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v405);
              MEMORY[0x1D38B3760](v405, -1, -1);
              MEMORY[0x1D38B3760](v82, -1, -1);

              sub_1D3065284(v416, type metadata accessor for FilePath.ResolutionError);
              v87(v410, v78);
            }

            else
            {

              sub_1D3065284(v80, type metadata accessor for FilePath.ResolutionError);
              v53 = *v81;
              (*v81)(v77, v78);
              sub_1D3065284(v79, type metadata accessor for FilePath.ResolutionError);
              v53(v76, v78);
            }
          }

          else
          {
            v92 = v1[56];
            v93 = v1[57];
            v400 = v59;
            v95 = v1[41];
            v94 = v1[42];
            v411 = v1[97];
            v417 = v1[40];
            v406 = v1[39];
            v397 = v1[38];
            v96 = *(v422 + 296);
            v97 = *(v422 + 152);
            v98 = *(v422 + 144);
            v99 = *(v422 + 64);

            (*(v94 + 32))(v93, v99, v95);
            v100 = v411;
            v412 = *(v97 + 16);
            v412(v96, v100, v98);
            v400(v92, v93, v95);
            sub_1D30E8D7C();
            v101 = *(v94 + 8);
            *(v422 + 832) = v101;
            *(v422 + 840) = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v391 = v101;
            v101(v93, v95);
            sub_1D30E8D8C();
            (*(v97 + 32))(v417, v406, v98);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v102 = *(v422 + 320);
            v103 = *(v422 + 288);
            v104 = *(v422 + 144);
            __swift_project_value_buffer(*(v422 + 608), qword_1EE3133A8);
            v105 = sub_1D30E928C();
            v106 = v412;
            v412(v103, v102, v104);
            v107 = sub_1D30E8B1C();
            v418 = v105;
            v108 = os_log_type_enabled(v107, v105);
            v109 = *(v422 + 288);
            v111 = *(v422 + 144);
            v110 = *(v422 + 152);
            if (v108)
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v423[0] = v113;
              *v112 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v114 = sub_1D30E977C();
              v116 = v115;
              v117 = v111;
              v118 = *(v110 + 8);
              v118(v109, v117);
              v119 = sub_1D2FFEA04(v114, v116, v423);
              v106 = v412;

              *(v112 + 4) = v119;
              _os_log_impl(&dword_1D2FD9000, v107, v418, "Item exists at: %{public}s", v112, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v113);
              MEMORY[0x1D38B3760](v113, -1, -1);
              MEMORY[0x1D38B3760](v112, -1, -1);
            }

            else
            {

              v120 = v111;
              v118 = *(v110 + 8);
              v118(v109, v120);
            }

            *(v422 + 848) = v118;
            v121 = *(v422 + 768);
            sub_1D3003CF4(*(v422 + 320), 0, *(v422 + 280));
            v122 = *(v422 + 280);
            v123 = *(v422 + 144);
            v124 = *(v422 + 152) + 8;
            *(v422 + 926) = 0;
            v125 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v126 = sub_1D30E906C();

            v127 = [v125 fileExistsAtPath:v126 isDirectory:v422 + 926];

            *(v422 + 856) = v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v118(v122, v123);
            if (v127)
            {
              v128 = *(v422 + 320);
              if (*(v422 + 926))
              {
                v129 = *(v422 + 768);
                v130 = sub_1D3005160(*(v422 + 320));
                *(v422 + 864) = v130;
                v151 = *(v130 + 2);
                *(v422 + 872) = v151;
                v1 = v422;
                if (v151)
                {
                  v322 = (*(v422 + 920) + 32) & ~*(v422 + 920);
                  *(v422 + 880) = 0u;
                  v323 = *(v422 + 824);
                  v324 = *(v422 + 624);
                  (*(v422 + 816))(*(v422 + 432), &v130[v322], *(v422 + 328));
                  *(v422 + 896) = sub_1D30E91EC();
                  v325 = sub_1D30E91AC();
                  v327 = *MEMORY[0x1E69E9840];

                  return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v325, v326);
                }

                v152 = *(v422 + 856);
                v153 = *(v422 + 840);
                v154 = *(v422 + 832);
                v155 = *(v422 + 464);
                v156 = *(v422 + 328);
                (*(v422 + 848))(*(v422 + 320), *(v422 + 144));
                v154(v155, v156);
              }

              else
              {
                v419 = v118;
                v133 = *(v422 + 616);
                v134 = *(v422 + 264);
                v135 = *(v422 + 144);
                v136 = sub_1D30E92AC();
                v106(v134, v128, v135);
                v137 = sub_1D30E8B1C();
                v138 = os_log_type_enabled(v137, v136);
                v139 = *(v422 + 264);
                v140 = *(v422 + 144);
                if (v138)
                {
                  v141 = swift_slowAlloc();
                  v142 = swift_slowAlloc();
                  v423[0] = v142;
                  *v141 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                  v143 = sub_1D30E977C();
                  v145 = v144;
                  v146 = v140;
                  v147 = v419;
                  v419(v139, v146);
                  v148 = sub_1D2FFEA04(v143, v145, v423);

                  *(v141 + 4) = v148;
                  _os_log_impl(&dword_1D2FD9000, v137, v136, "The item at “%{public}s” isn’t a directory; removing it…", v141, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v142);
                  MEMORY[0x1D38B3760](v142, -1, -1);
                  MEMORY[0x1D38B3760](v141, -1, -1);
                }

                else
                {

                  v149 = v140;
                  v147 = v419;
                  v419(v139, v149);
                }

                v150 = *(v422 + 768);
                sub_1D3009B38(*(v422 + 320));
                v157 = *(v422 + 464);
                v158 = *(v422 + 328);
                v147(*(v422 + 320), *(v422 + 144));
                v391(v157, v158);
                *(v422 + 924) = 1;
                v1 = v422;
              }
            }

            else
            {
              v131 = *(v422 + 464);
              v132 = *(v422 + 328);
              v118(*(v422 + 320), *(v422 + 144));
              v391(v131, v132);
              v1 = v422;
            }
          }

          v52 = v1[100] + 1;
          if (v52 == v1[99])
          {
            v168 = v1[98];
            break;
          }
        }
      }
    }

    v169 = v1[77];
    v170 = sub_1D30E8B1C();
    v171 = sub_1D30E92BC();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_1D2FD9000, v170, v171, "Checking for inactive staging directories…", v172, 2u);
      MEMORY[0x1D38B3760](v172, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v173 = v1[96];
    v174 = __swift_project_value_buffer(v1[18], qword_1EE3152D0);
    v175 = sub_1D3005160(v174);
    v176 = *(v175 + 2);
    if (v176)
    {
      v177 = v1[42];
      v178 = *(v177 + 16);
      v177 += 16;
      v398 = v178;
      v179 = &v175[(*(v177 + 64) + 32) & ~*(v177 + 64)];
      v386 = (v177 + 32);
      v368 = (v177 + 16);
      v180 = v1[19];
      v372 = (v180 + 16);
      v401 = (v177 - 8);
      v366 = (v180 + 32);
      v388 = (v180 + 8);
      v364 = v1[12];
      v384 = *(v177 + 56);
      v351 = *MEMORY[0x1E69C76A0];
      v370 = v174;
      do
      {
        v413 = v179;
        v420 = v176;
        v191 = v1[41];
        v192 = v1[7];
        (v398)(v1[51]);
        v193 = sub_1D30E8D4C();
        v195 = v194;

        sub_1D30E8D6C();
        if ((*v386)(v192, 1, v191) == 1)
        {
          v392 = v1[77];
          v196 = v1[51];
          v197 = v1[49];
          v198 = v1[41];
          v199 = *(v422 + 104);
          v200 = *(v422 + 96);
          v201 = *(v422 + 88);
          v377 = *(v422 + 80);
          v202 = *(v422 + 72);
          sub_1D2FF14DC(*(v422 + 56), &qword_1EC749940, &qword_1D30F1B10);
          *v200 = v193;
          *(v364 + 8) = v195;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          sub_1D3056830(v200, v199, type metadata accessor for FilePath.ResolutionError);
          v203 = v199;
          v1 = v422;
          sub_1D3056830(v203, v201, type metadata accessor for FilePath.ResolutionError);
          v204 = sub_1D30E929C();
          v398(v197, v196, v198);
          sub_1D3058338(v201, v377, type metadata accessor for FilePath.ResolutionError);
          v205 = sub_1D30E8B1C();
          v374 = v204;
          v206 = os_log_type_enabled(v205, v204);
          v393 = *(v422 + 408);
          v207 = *(v422 + 392);
          v208 = *(v422 + 328);
          v209 = *(v422 + 80);
          v378 = *(v422 + 88);
          if (v206)
          {
            v181 = *(v422 + 72);
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v361 = swift_slowAlloc();
            v423[0] = v361;
            *v182 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
            v184 = sub_1D30E977C();
            v186 = v185;
            log = *v401;
            (*v401)(v207, v208);
            v187 = sub_1D2FFEA04(v184, v186, v423);

            *(v182 + 4) = v187;
            *(v182 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v209, v188, type metadata accessor for FilePath.ResolutionError);
            v189 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v209, type metadata accessor for FilePath.ResolutionError);
            *(v182 + 14) = v189;
            *v183 = v189;
            _os_log_impl(&dword_1D2FD9000, v205, v374, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v182, 0x16u);
            sub_1D2FF14DC(v183, &qword_1EC7493A0, &qword_1D30EF480);
            v1 = v422;
            MEMORY[0x1D38B3760](v183, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v361);
            MEMORY[0x1D38B3760](v361, -1, -1);
            MEMORY[0x1D38B3760](v182, -1, -1);

            sub_1D3065284(v378, type metadata accessor for FilePath.ResolutionError);
            (log)(v393, v208);
          }

          else
          {

            sub_1D3065284(v209, type metadata accessor for FilePath.ResolutionError);
            v210 = *v401;
            (*v401)(v207, v208);
            sub_1D3065284(v378, type metadata accessor for FilePath.ResolutionError);
            v210(v393, v208);
          }

          v190 = v420;
        }

        else
        {
          v211 = v1[56];
          v212 = v1[50];
          v213 = v1[41];
          v214 = v1[37];
          v375 = v1[31];
          v379 = v1[32];
          v215 = v1[30];
          v216 = v1;
          v217 = v1[18];
          v218 = v216[7];

          (*v368)(v212, v218, v213);
          v394 = *v372;
          (*v372)(v214, v370, v217);
          v398(v211, v212, v213);
          sub_1D30E8D7C();
          v219 = *v401;
          (*v401)(v212, v213);
          sub_1D30E8D8C();
          (*v366)(v379, v375, v217);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v220 = v216[32];
          v221 = v216[29];
          v222 = v216[18];
          __swift_project_value_buffer(v216[76], qword_1EE3133A8);
          v223 = sub_1D30E928C();
          v394(v221, v220, v222);
          v224 = sub_1D30E8B1C();
          v225 = os_log_type_enabled(v224, v223);
          v226 = v216[29];
          v227 = v216[18];
          v1 = v216;
          if (v225)
          {
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            v423[0] = v229;
            *v228 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v230 = v219;
            v231 = sub_1D30E977C();
            v380 = v223;
            v233 = v232;
            v234 = *v388;
            (*v388)(v226, v227);
            v235 = v231;
            v219 = v230;
            v236 = sub_1D2FFEA04(v235, v233, v423);

            *(v228 + 4) = v236;
            _os_log_impl(&dword_1D2FD9000, v224, v380, "Item exists at: %{public}s", v228, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v229);
            MEMORY[0x1D38B3760](v229, -1, -1);
            MEMORY[0x1D38B3760](v228, -1, -1);
          }

          else
          {

            v234 = *v388;
            (*v388)(v226, v227);
          }

          v237 = v1[96];
          sub_1D3003CF4(v1[32], 0, v1[28]);
          v238 = v1[28];
          v239 = v1[18];
          *(v1 + 925) = 0;
          v240 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v241 = sub_1D30E906C();

          v242 = [v240 fileExistsAtPath:v241 isDirectory:v1 + 925];

          v234(v238, v239);
          if (v242)
          {
            v243 = v1[77];
            v244 = v1[32];
            v245 = v1[18];
            if (*(v1 + 925))
            {
              v246 = v1[26];
              v247 = sub_1D30E927C();
              v394(v246, v244, v245);
              v248 = sub_1D30E8B1C();
              v249 = os_log_type_enabled(v248, v247);
              v250 = v1[26];
              v251 = v1[18];
              v354 = v234;
              if (v249)
              {
                v252 = swift_slowAlloc();
                v253 = swift_slowAlloc();
                v423[0] = v253;
                *v252 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v254 = v219;
                v255 = sub_1D30E977C();
                v256 = v234;
                v258 = v257;
                v256(v250, v251);
                v259 = v255;
                v219 = v254;
                v260 = sub_1D2FFEA04(v259, v258, v423);

                *(v252 + 4) = v260;
                _os_log_impl(&dword_1D2FD9000, v248, v247, "Checking whether the staging directory at “%{public}s” is inactive…", v252, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v253);
                MEMORY[0x1D38B3760](v253, -1, -1);
                MEMORY[0x1D38B3760](v252, -1, -1);
              }

              else
              {

                v234(v250, v251);
              }

              v278 = v1[51];
              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v279 = sub_1D30E906C();

              v280 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v281 = sub_1D30E6D18(v280);
              v362 = v219;

              v283 = v1[77];
              v398(v1[48], v1[51], v1[41]);
              v284 = sub_1D30E8B1C();
              v285 = sub_1D30E92BC();
              v286 = os_log_type_enabled(v284, v285);
              v287 = v1[51];
              v288 = v1[48];
              v289 = v1[41];
              v290 = v1[32];
              v291 = v1[18];
              if (v286)
              {
                v292 = swift_slowAlloc();
                v293 = swift_slowAlloc();
                v423[0] = v293;
                *v292 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
                v395 = v287;
                v294 = sub_1D30E977C();
                v382 = v290;
                v296 = v295;
                v362(v288, v289);
                v297 = sub_1D2FFEA04(v294, v296, v423);

                *(v292 + 4) = v297;
                _os_log_impl(&dword_1D2FD9000, v284, v285, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v292, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v293);
                v298 = v293;
                v1 = v422;
                MEMORY[0x1D38B3760](v298, -1, -1);
                MEMORY[0x1D38B3760](v292, -1, -1);

                v354(v382, v291);
                v362(v395, v289);
              }

              else
              {

                v362(v288, v289);
                v354(v290, v291);
                v362(v287, v289);
              }
            }

            else
            {
              v263 = v1[25];
              v264 = sub_1D30E92AC();
              v394(v263, v244, v245);
              v265 = sub_1D30E8B1C();
              v266 = os_log_type_enabled(v265, v264);
              v267 = v1[25];
              v268 = v1[18];
              if (v266)
              {
                v269 = swift_slowAlloc();
                v270 = swift_slowAlloc();
                v423[0] = v270;
                *v269 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v271 = v219;
                v272 = sub_1D30E977C();
                v381 = v264;
                v273 = v234;
                v275 = v274;
                v273(v267, v268);
                v276 = v272;
                v219 = v271;
                v277 = sub_1D2FFEA04(v276, v275, v423);
                v234 = v273;

                *(v269 + 4) = v277;
                _os_log_impl(&dword_1D2FD9000, v265, v381, "The item at “%{public}s” isn’t a directory; removing it…", v269, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v270);
                MEMORY[0x1D38B3760](v270, -1, -1);
                MEMORY[0x1D38B3760](v269, -1, -1);
              }

              else
              {

                v234(v267, v268);
              }

              v282 = v1[96];
              sub_1D3009B38(v1[32]);
              v299 = v1[51];
              v300 = v1[41];
              v234(v1[32], v1[18]);
              v219(v299, v300);
              *(v1 + 924) = 1;
            }
          }

          else
          {
            v261 = v1[51];
            v262 = v1[41];
            v234(v1[32], v1[18]);
            v219(v261, v262);
          }

          v190 = v420;
        }

        v179 = &v413[v384];
        v176 = v190 - 1;
      }

      while (v176);
    }

    v301 = v1[75];
    v302 = v1[74];
    v303 = v1[73];
    v304 = *(v422 + 576);
    v305 = *(v422 + 552);
    v306 = *(v422 + 544);
    v307 = *(v422 + 520);
    v308 = *(v422 + 512);
    v309 = *(v422 + 488);
    v310 = *(v422 + 464);
    v329 = *(v422 + 456);
    v330 = *(v422 + 448);
    v331 = *(v422 + 440);
    v332 = *(v422 + 432);
    v333 = *(v422 + 424);
    v334 = *(v422 + 416);
    v335 = *(v422 + 408);
    v336 = *(v422 + 400);
    v337 = *(v422 + 392);
    v338 = *(v422 + 384);
    v339 = *(v422 + 376);
    v340 = *(v422 + 368);
    v341 = *(v422 + 360);
    v342 = *(v422 + 352);
    v343 = *(v422 + 344);
    v344 = *(v422 + 320);
    v345 = *(v422 + 312);
    v346 = *(v422 + 304);
    v347 = *(v422 + 296);
    v348 = *(v422 + 288);
    v349 = *(v422 + 280);
    v350 = *(v422 + 272);
    v352 = *(v422 + 264);
    v353 = *(v422 + 256);
    v355 = *(v422 + 248);
    v356 = *(v422 + 240);
    v357 = *(v422 + 232);
    v358 = *(v422 + 224);
    loga = *(v422 + 216);
    v363 = *(v422 + 208);
    v365 = *(v422 + 200);
    v367 = *(v422 + 192);
    v369 = *(v422 + 184);
    v371 = *(v422 + 176);
    v373 = *(v422 + 168);
    v376 = *(v422 + 160);
    v383 = *(v422 + 136);
    v385 = *(v422 + 128);
    v387 = *(v422 + 120);
    v389 = *(v422 + 112);
    v396 = *(v422 + 104);
    v399 = *(v422 + 96);
    v402 = *(v422 + 88);
    v407 = *(v422 + 80);
    v414 = *(v422 + 64);
    v421 = *(v422 + 56);
    v328 = *(v422 + 924);

    v311 = *(v422 + 8);
    v312 = *MEMORY[0x1E69E9840];

    return v311(v328);
  }

  while (1)
  {
    v1[90] = v4;
    *(v1 + 927) = 1;
    v5 = v1[89];
    v6 = *(v1 + 912);
    v7 = v1[87];
    v8 = v1[77];
    v9 = v1[75];
    v10 = *(v422 + 592);
    sub_1D3058338(v7 + ((v6 + 32) & ~v6) + v5 * v4, v9, type metadata accessor for LicenseRecord.StaticRepresentation);
    v11 = sub_1D30E927C();
    sub_1D3058338(v9, v10, type metadata accessor for LicenseRecord.StaticRepresentation);
    v12 = sub_1D30E8B1C();
    v13 = os_log_type_enabled(v12, v11);
    v14 = *(v422 + 592);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = *v14;
      sub_1D3065284(v14, type metadata accessor for LicenseRecord.StaticRepresentation);
      *(v15 + 4) = v16;
      _os_log_impl(&dword_1D2FD9000, v12, v11, "Checking whether the record of the license with the ID “%llu” is stale…", v15, 0xCu);
      MEMORY[0x1D38B3760](v15, -1, -1);
    }

    else
    {
      sub_1D3065284(*(v422 + 592), type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    v17 = *(v422 + 916);
    v18 = *(v422 + 544);
    v19 = *(v422 + 536);
    v20 = *(v422 + 520);
    v21 = *(v422 + 512);
    v22 = *(v422 + 504);
    v408 = *(v422 + 528);
    v415 = *(v422 + 496);
    v23 = *(v422 + 488);
    v24 = *(v422 + 480);
    v25 = *(v422 + 472);

    sub_1D30E8A9C();
    (*(v24 + 104))(v23, v17, v25);
    sub_1D30E8A0C();
    sub_1D30E8A8C();
    v26 = *(v19 + 8);
    *(v422 + 728) = v26;
    *(v422 + 736) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v403 = v26;
    v26(v18, v408);
    (*(v24 + 8))(v23, v25);
    (*(v22 + 8))(v21, v415);
    v27 = *(v19 + 48);
    v1 = v422;
    if (v27(v20, 1, v408) == 1)
    {
      v28 = *(v422 + 528);
      v29 = *(v422 + 520);
      v30 = *(v422 + 552);
      sub_1D30E896C();
      if (v27(v29, 1, v28) != 1)
      {
        sub_1D2FF14DC(*(v422 + 520), &qword_1EC7491C8, &qword_1D30EEC10);
      }
    }

    else
    {
      (*(*(v422 + 536) + 32))(*(v422 + 552), *(v422 + 520), *(v422 + 528));
    }

    v31 = *(v422 + 600);
    v32 = *(v422 + 552);
    v33 = *(*(v422 + 560) + 28);
    if (sub_1D30E89EC())
    {
      break;
    }

    v34 = *(v422 + 600);
    v403(*(v422 + 552), *(v422 + 528));
    sub_1D3065284(v34, type metadata accessor for LicenseRecord.StaticRepresentation);
    v4 = *(v422 + 720) + 1;
    if (v4 == *(v422 + 704))
    {
      goto LABEL_11;
    }
  }

  v159 = *(v422 + 616);
  v160 = *(v422 + 600);
  v161 = *(v422 + 584);
  v162 = sub_1D30E92AC();
  sub_1D3058338(v160, v161, type metadata accessor for LicenseRecord.StaticRepresentation);
  v163 = sub_1D30E8B1C();
  v164 = os_log_type_enabled(v163, v162);
  v165 = *(v422 + 584);
  if (v164)
  {
    v166 = swift_slowAlloc();
    *v166 = 134217984;
    v167 = *v165;
    sub_1D3065284(v165, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v166 + 4) = v167;
    _os_log_impl(&dword_1D2FD9000, v163, v162, "Reporting a timeout error for the license with the ID “%llu”…", v166, 0xCu);
    MEMORY[0x1D38B3760](v166, -1, -1);
  }

  else
  {
    sub_1D3065284(*(v422 + 584), type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v314 = *(v422 + 600);
  v315 = *(v422 + 40);

  v316 = *(v315 + 56);
  sub_1D30E6DDC();
  v317 = swift_allocError();
  *(v422 + 744) = v317;
  *v318 = 60;
  v319 = *v314;
  v320 = swift_task_alloc();
  *(v422 + 752) = v320;
  *v320 = v422;
  v320[1] = sub_1D30B0260;
  v321 = *MEMORY[0x1E69E9840];

  return sub_1D302438C(v317, v319);
}

uint64_t sub_1D30B43CC()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 896);
  v2 = *(v0 + 880);
  v3 = *(v0 + 464);
  v4 = *(v0 + 432);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  sub_1D30D6228(v4, v3, v6, (v0 + 924));
  *(v0 + 904) = v2;
  if (v2)
  {
    v7 = sub_1D30B7E7C;
  }

  else
  {
    v7 = sub_1D30B44B0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D30B44B0()
{
  v377 = v0;
  v1 = v0;
  v376[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 840);
  (*(v0 + 832))(*(v0 + 432), *(v0 + 328));
  v362 = *(v0 + 904);
  v3 = *(v0 + 888) + 1;
  v4 = *(v0 + 864);
  if (v3 == *(v0 + 872))
  {

    v375 = v0;
LABEL_3:
    v5 = *(v1 + 856);
    v6 = *(v1 + 840);
    v7 = *(v1 + 832);
    v8 = *(v1 + 464);
    v9 = *(v1 + 328);
    (*(v1 + 848))(*(v1 + 320), *(v1 + 144));
    v4 = v7(v8, v9);
    while (1)
    {
      v11 = *(v1 + 800) + 1;
      if (v11 == *(v1 + 792))
      {
        break;
      }

      *(v1 + 800) = v11;
      v12 = *(v1 + 784);
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
LABEL_75:
        v128 = 0;
        v3 = 0;
        goto LABEL_31;
      }

      v13 = *(v1 + 464);
      v14 = *(v1 + 328);
      v15 = *(v1 + 336);
      v16 = *(v1 + 64);
      v17 = *(v15 + 16);
      v18 = v12 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
      v19 = *(v15 + 72);
      *(v1 + 808) = v19;
      *(v1 + 816) = v17;
      *(v1 + 824) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v371 = v17;
      v17(v13, v18 + v19 * v11, v14);
      v20 = sub_1D30E8D4C();
      v22 = v21;

      sub_1D30E8D6C();
      if ((*(v15 + 48))(v16, 1, v14) == 1)
      {
        v366 = *(v1 + 616);
        v23 = *(v1 + 464);
        v24 = *(v1 + 440);
        v25 = *(v1 + 328);
        v26 = *(v1 + 136);
        v27 = *(v375 + 128);
        v28 = *(v375 + 120);
        v357 = *(v375 + 112);
        v29 = *(v375 + 72);
        sub_1D2FF14DC(*(v375 + 64), &qword_1EC749940, &qword_1D30F1B10);
        *v27 = v20;
        v27[1] = v22;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        v30 = v27;
        v1 = v375;
        sub_1D3056830(v30, v26, type metadata accessor for FilePath.ResolutionError);
        sub_1D3056830(v26, v28, type metadata accessor for FilePath.ResolutionError);
        v31 = sub_1D30E929C();
        v371(v24, v23, v25);
        sub_1D3058338(v28, v357, type metadata accessor for FilePath.ResolutionError);
        v32 = sub_1D30E8B1C();
        v33 = os_log_type_enabled(v32, v31);
        v34 = *(v375 + 464);
        v35 = *(v375 + 440);
        v36 = *(v375 + 328);
        v37 = *(v375 + 112);
        v38 = *(v375 + 120);
        v39 = (*(v375 + 336) + 8);
        if (v33)
        {
          v344 = *(v375 + 72);
          v372 = *(v375 + 120);
          v40 = swift_slowAlloc();
          v351 = swift_slowAlloc();
          v358 = swift_slowAlloc();
          v376[0] = v358;
          *v40 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
          v340 = v31;
          v41 = sub_1D30E977C();
          v43 = v42;
          v44 = *v39;
          (*v39)(v35, v36);
          v45 = sub_1D2FFEA04(v41, v43, v376);
          v1 = v375;

          *(v40 + 4) = v45;
          *(v40 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v37, v46, type metadata accessor for FilePath.ResolutionError);
          v47 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v37, type metadata accessor for FilePath.ResolutionError);
          *(v40 + 14) = v47;
          *v351 = v47;
          _os_log_impl(&dword_1D2FD9000, v32, v340, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v40, 0x16u);
          sub_1D2FF14DC(v351, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v351, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v358);
          MEMORY[0x1D38B3760](v358, -1, -1);
          MEMORY[0x1D38B3760](v40, -1, -1);

          sub_1D3065284(v372, type metadata accessor for FilePath.ResolutionError);
          v4 = (v44)(v34, v36);
        }

        else
        {

          sub_1D3065284(v37, type metadata accessor for FilePath.ResolutionError);
          v10 = *v39;
          (*v39)(v35, v36);
          sub_1D3065284(v38, type metadata accessor for FilePath.ResolutionError);
          v4 = (v10)(v34, v36);
        }
      }

      else
      {
        v48 = *(v1 + 448);
        v49 = *(v1 + 456);
        v50 = *(v1 + 328);
        v51 = *(v1 + 336);
        v352 = *(v1 + 312);
        v359 = *(v1 + 320);
        v334 = *(v1 + 776);
        v341 = *(v1 + 304);
        v52 = *(v375 + 296);
        v53 = *(v375 + 152);
        v54 = *(v375 + 144);
        v55 = *(v375 + 64);

        (*(v51 + 32))(v49, v55, v50);
        v367 = *(v53 + 16);
        (v367)(v52, v334, v54);
        v371(v48, v49, v50);
        v1 = v375;
        sub_1D30E8D7C();
        v56 = *(v51 + 8);
        *(v375 + 832) = v56;
        *(v375 + 840) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v335 = v56;
        v56(v49, v50);
        sub_1D30E8D8C();
        (*(v53 + 32))(v359, v352, v54);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v57 = *(v375 + 320);
        v58 = *(v375 + 288);
        v59 = *(v375 + 144);
        __swift_project_value_buffer(*(v375 + 608), qword_1EE3133A8);
        v60 = sub_1D30E928C();
        (v367)(v58, v57, v59);
        v61 = sub_1D30E8B1C();
        v62 = os_log_type_enabled(v61, v60);
        v63 = *(v375 + 288);
        v64 = *(v375 + 144);
        v65 = *(v375 + 152);
        if (v62)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v376[0] = v67;
          *v66 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v68 = sub_1D30E977C();
          v353 = v60;
          v70 = v69;
          v71 = *(v65 + 8);
          v71(v63, v64);
          v72 = sub_1D2FFEA04(v68, v70, v376);

          *(v66 + 4) = v72;
          _os_log_impl(&dword_1D2FD9000, v61, v353, "Item exists at: %{public}s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          MEMORY[0x1D38B3760](v67, -1, -1);
          MEMORY[0x1D38B3760](v66, -1, -1);
        }

        else
        {

          v71 = *(v65 + 8);
          v71(v63, v64);
        }

        *(v375 + 848) = v71;
        v73 = *(v375 + 768);
        sub_1D3003CF4(*(v375 + 320), 0, *(v375 + 280));
        if (v362)
        {
          v74 = *(v375 + 616);
          v75 = *(v375 + 320);
          v76 = *(v375 + 272);
          v77 = *(v375 + 144);
          v78 = sub_1D30E929C();
          (v367)(v76, v75, v77);
          v79 = v362;
          v80 = sub_1D30E8B1C();

          v81 = os_log_type_enabled(v80, v78);
          v82 = *(v375 + 464);
          v83 = *(v375 + 328);
          v368 = *(v375 + 320);
          v84 = *(v375 + 272);
          v86 = *(v375 + 144);
          v85 = *(v375 + 152);
          if (v81)
          {
            v345 = v78;
            v87 = v71;
            v88 = swift_slowAlloc();
            v360 = v83;
            v89 = swift_slowAlloc();
            v354 = v82;
            v90 = swift_slowAlloc();
            v376[0] = v90;
            *v88 = 136446466;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v91 = sub_1D30E977C();
            v93 = v92;
            v87(v84, v86);
            v94 = sub_1D2FFEA04(v91, v93, v376);

            *(v88 + 4) = v94;
            *(v88 + 12) = 2114;
            v95 = v362;
            v96 = _swift_stdlib_bridgeErrorToNSError();
            *(v88 + 14) = v96;
            *v89 = v96;
            _os_log_impl(&dword_1D2FD9000, v80, v345, "The existence of the item at “%{public}s” couldn’t be checked: %{public}@", v88, 0x16u);
            sub_1D2FF14DC(v89, &qword_1EC7493A0, &qword_1D30EF480);
            MEMORY[0x1D38B3760](v89, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v90);
            MEMORY[0x1D38B3760](v90, -1, -1);
            MEMORY[0x1D38B3760](v88, -1, -1);

            v87(v368, v86);
            v97 = v354;
            v98 = v360;
          }

          else
          {

            v71(v84, v86);
            v71(v368, v86);
            v97 = v82;
            v98 = v83;
          }

          v4 = (v335)(v97, v98);
          v362 = 0;
          v1 = v375;
        }

        else
        {
          v99 = *(v375 + 280);
          v100 = *(v375 + 144);
          v101 = *(v375 + 152) + 8;
          *(v375 + 926) = 0;
          v102 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v103 = sub_1D30E906C();

          v104 = [v102 fileExistsAtPath:v103 isDirectory:v375 + 926];

          *(v375 + 856) = v101 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v71(v99, v100);
          if (v104)
          {
            v105 = *(v375 + 320);
            if (*(v375 + 926))
            {
              v106 = *(v375 + 768);
              v4 = sub_1D3005160(*(v375 + 320));
              *(v375 + 864) = v4;
              v127 = *(v4 + 2);
              *(v375 + 872) = v127;
              if (!v127)
              {

                v362 = 0;
                goto LABEL_3;
              }

              goto LABEL_75;
            }

            v109 = *(v375 + 616);
            v110 = *(v375 + 264);
            v111 = *(v375 + 144);
            v112 = sub_1D30E92AC();
            (v367)(v110, v105, v111);
            v113 = sub_1D30E8B1C();
            v114 = os_log_type_enabled(v113, v112);
            v115 = *(v375 + 264);
            v116 = *(v375 + 144);
            if (v114)
            {
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v376[0] = v118;
              *v117 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v119 = sub_1D30E977C();
              v363 = v112;
              v120 = v71;
              v122 = v121;
              v120(v115, v116);
              v123 = sub_1D2FFEA04(v119, v122, v376);
              v71 = v120;

              *(v117 + 4) = v123;
              _os_log_impl(&dword_1D2FD9000, v113, v363, "The item at “%{public}s” isn’t a directory; removing it…", v117, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v118);
              MEMORY[0x1D38B3760](v118, -1, -1);
              MEMORY[0x1D38B3760](v117, -1, -1);
            }

            else
            {

              v71(v115, v116);
            }

            v124 = *(v375 + 768);
            sub_1D3009B38(*(v375 + 320));
            v125 = *(v375 + 464);
            v126 = *(v375 + 328);
            v71(*(v375 + 320), *(v375 + 144));
            v4 = (v335)(v125, v126);
            v362 = 0;
            *(v375 + 924) = 1;
          }

          else
          {
            v107 = *(v375 + 464);
            v108 = *(v375 + 328);
            v71(*(v375 + 320), *(v375 + 144));
            v4 = (v335)(v107, v108);
            v362 = 0;
          }
        }
      }
    }

    v134 = *(v1 + 784);

    v135 = *(v1 + 616);
    v136 = sub_1D30E8B1C();
    v137 = sub_1D30E92BC();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_1D2FD9000, v136, v137, "Checking for inactive staging directories…", v138, 2u);
      MEMORY[0x1D38B3760](v138, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v139 = *(v1 + 768);
    v140 = __swift_project_value_buffer(*(v1 + 144), qword_1EE3152D0);
    v141 = sub_1D3005160(v140);
    if (v362)
    {
      v142 = *(v1 + 616);
      v143 = sub_1D30E929C();
      v144 = v362;
      v145 = sub_1D30E8B1C();

      if (os_log_type_enabled(v145, v143))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *v146 = 138543362;
        v148 = v362;
        v149 = _swift_stdlib_bridgeErrorToNSError();
        *(v146 + 4) = v149;
        *v147 = v149;
        _os_log_impl(&dword_1D2FD9000, v145, v143, "Checking for inactive staging directories failed: %{public}@", v146, 0xCu);
        sub_1D2FF14DC(v147, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v147, -1, -1);
        MEMORY[0x1D38B3760](v146, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v150 = *(v141 + 2);
      if (v150)
      {
        v151 = *(v1 + 336);
        v153 = *(v151 + 16);
        v151 += 16;
        v152 = v153;
        v154 = &v141[(*(v151 + 64) + 32) & ~*(v151 + 64)];
        v330 = (v151 + 32);
        v317 = (v151 + 16);
        v155 = *(v1 + 152);
        v323 = (v155 + 16);
        v355 = (v151 - 8);
        v315 = (v155 + 32);
        v313 = *(v1 + 96);
        v328 = *(v151 + 56);
        v342 = (v155 + 8);
        v306 = *MEMORY[0x1E69C76A0];
        v364 = v153;
        v319 = v140;
        do
        {
          v369 = v154;
          v373 = v150;
          v167 = *(v1 + 328);
          v168 = *(v1 + 56);
          v152(*(v1 + 408));
          v169 = sub_1D30E8D4C();
          v171 = v170;

          sub_1D30E8D6C();
          if ((*v330)(v168, 1, v167) == 1)
          {
            v346 = *(v1 + 616);
            v172 = *(v1 + 408);
            v173 = *(v1 + 392);
            v174 = *(v1 + 328);
            v175 = *(v1 + 104);
            v176 = *(v375 + 96);
            v177 = *(v375 + 88);
            v178 = *(v375 + 80);
            v179 = *(v375 + 72);
            sub_1D2FF14DC(*(v375 + 56), &qword_1EC749940, &qword_1D30F1B10);
            *v176 = v169;
            *(v313 + 8) = v171;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            v180 = v176;
            v1 = v375;
            sub_1D3056830(v180, v175, type metadata accessor for FilePath.ResolutionError);
            sub_1D3056830(v175, v177, type metadata accessor for FilePath.ResolutionError);
            LOBYTE(v179) = sub_1D30E929C();
            (v364)(v173, v172, v174);
            sub_1D3058338(v177, v178, type metadata accessor for FilePath.ResolutionError);
            v181 = sub_1D30E8B1C();
            v325 = v179;
            v182 = os_log_type_enabled(v181, v179);
            v347 = *(v375 + 408);
            v183 = *(v375 + 392);
            v184 = *(v375 + 328);
            v185 = *(v375 + 80);
            v336 = *(v375 + 88);
            if (v182)
            {
              v156 = *(v375 + 72);
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              v311 = swift_slowAlloc();
              v376[0] = v311;
              *v157 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
              v159 = sub_1D30E977C();
              v161 = v160;
              v309 = *v355;
              (*v355)(v183, v184);
              v162 = sub_1D2FFEA04(v159, v161, v376);

              *(v157 + 4) = v162;
              *(v157 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v185, v163, type metadata accessor for FilePath.ResolutionError);
              v164 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v185, type metadata accessor for FilePath.ResolutionError);
              *(v157 + 14) = v164;
              *v158 = v164;
              _os_log_impl(&dword_1D2FD9000, v181, v325, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v157, 0x16u);
              sub_1D2FF14DC(v158, &qword_1EC7493A0, &qword_1D30EF480);
              v165 = v158;
              v1 = v375;
              MEMORY[0x1D38B3760](v165, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v311);
              v152 = v364;
              MEMORY[0x1D38B3760](v311, -1, -1);
              MEMORY[0x1D38B3760](v157, -1, -1);

              sub_1D3065284(v336, type metadata accessor for FilePath.ResolutionError);
              v309(v347, v184);
            }

            else
            {
              v152 = v364;

              sub_1D3065284(v185, type metadata accessor for FilePath.ResolutionError);
              v186 = *v355;
              (*v355)(v183, v184);
              sub_1D3065284(v336, type metadata accessor for FilePath.ResolutionError);
              v186(v347, v184);
            }

            v166 = v373;
          }

          else
          {
            v187 = *(v1 + 448);
            v188 = *(v1 + 400);
            v189 = *(v1 + 328);
            v190 = *(v1 + 296);
            v191 = *(v1 + 248);
            v348 = *(v1 + 256);
            v192 = *(v1 + 240);
            v193 = *(v1 + 144);
            v194 = *(v1 + 56);

            (*v317)(v188, v194, v189);
            v337 = *v323;
            (*v323)(v190, v319, v193);
            (v364)(v187, v188, v189);
            sub_1D30E8D7C();
            v326 = *v355;
            (*v355)(v188, v189);
            sub_1D30E8D8C();
            (*v315)(v348, v191, v193);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v195 = *(v1 + 256);
            v196 = *(v1 + 232);
            v197 = *(v1 + 144);
            __swift_project_value_buffer(*(v1 + 608), qword_1EE3133A8);
            v198 = sub_1D30E928C();
            v337(v196, v195, v197);
            v199 = sub_1D30E8B1C();
            v200 = os_log_type_enabled(v199, v198);
            v201 = *(v1 + 232);
            v202 = *(v1 + 144);
            if (v200)
            {
              v203 = swift_slowAlloc();
              v204 = swift_slowAlloc();
              v376[0] = v204;
              *v203 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v205 = sub_1D30E977C();
              v207 = v206;
              v349 = *v342;
              (*v342)(v201, v202);
              v208 = sub_1D2FFEA04(v205, v207, v376);

              *(v203 + 4) = v208;
              _os_log_impl(&dword_1D2FD9000, v199, v198, "Item exists at: %{public}s", v203, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v204);
              MEMORY[0x1D38B3760](v204, -1, -1);
              MEMORY[0x1D38B3760](v203, -1, -1);
            }

            else
            {

              v349 = *v342;
              (*v342)(v201, v202);
            }

            v209 = *(v375 + 768);
            sub_1D3003CF4(*(v375 + 256), 0, *(v375 + 224));
            v210 = *(v375 + 224);
            v211 = *(v375 + 144);
            *(v375 + 925) = 0;
            v212 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v213 = sub_1D30E906C();

            v214 = [v212 fileExistsAtPath:v213 isDirectory:v375 + 925];

            v215 = v349;
            v349(v210, v211);
            if (v214)
            {
              v216 = *(v375 + 616);
              v217 = *(v375 + 256);
              v218 = *(v375 + 144);
              if (*(v375 + 925))
              {
                v219 = *(v375 + 208);
                v220 = sub_1D30E927C();
                v337(v219, v217, v218);
                v221 = sub_1D30E8B1C();
                v222 = os_log_type_enabled(v221, v220);
                v223 = *(v375 + 208);
                v224 = *(v375 + 144);
                if (v222)
                {
                  v225 = swift_slowAlloc();
                  v226 = swift_slowAlloc();
                  v376[0] = v226;
                  *v225 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                  v227 = sub_1D30E977C();
                  v229 = v228;
                  v349(v223, v224);
                  v230 = sub_1D2FFEA04(v227, v229, v376);

                  *(v225 + 4) = v230;
                  _os_log_impl(&dword_1D2FD9000, v221, v220, "Checking whether the staging directory at “%{public}s” is inactive…", v225, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v226);
                  v231 = v226;
                  v215 = v349;
                  MEMORY[0x1D38B3760](v231, -1, -1);
                  MEMORY[0x1D38B3760](v225, -1, -1);
                }

                else
                {

                  v349(v223, v224);
                }

                v246 = *(v375 + 408);
                sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
                sub_1D30E8D4C();
                v247 = sub_1D30E906C();

                v248 = [objc_opt_self() predicateMatchingBundleIdentifier_];

                v249 = sub_1D30E6D18(v248);
                v1 = v375;
                v251 = *(v375 + 616);
                (v364)(*(v1 + 384), *(v1 + 408), *(v1 + 328));
                v252 = sub_1D30E8B1C();
                v253 = sub_1D30E92BC();
                v254 = os_log_type_enabled(v252, v253);
                v255 = *(v375 + 408);
                v256 = *(v375 + 384);
                v257 = *(v375 + 328);
                v258 = *(v375 + 256);
                v259 = *(v375 + 144);
                if (v254)
                {
                  v338 = *(v375 + 144);
                  v260 = swift_slowAlloc();
                  v261 = swift_slowAlloc();
                  v376[0] = v261;
                  *v260 = 136446210;
                  sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
                  v262 = sub_1D30E977C();
                  v321 = v255;
                  v264 = v263;
                  v326(v256, v257);
                  v265 = sub_1D2FFEA04(v262, v264, v376);

                  *(v260 + 4) = v265;
                  _os_log_impl(&dword_1D2FD9000, v252, v253, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v260, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v261);
                  v266 = v261;
                  v1 = v375;
                  MEMORY[0x1D38B3760](v266, -1, -1);
                  MEMORY[0x1D38B3760](v260, -1, -1);

                  v215(v258, v338);
                  v326(v321, v257);
                }

                else
                {

                  v326(v256, v257);
                  v215(v258, v259);
                  v326(v255, v257);
                }
              }

              else
              {
                v234 = *(v375 + 200);
                v235 = sub_1D30E92AC();
                v337(v234, v217, v218);
                v236 = sub_1D30E8B1C();
                v237 = os_log_type_enabled(v236, v235);
                v238 = *(v375 + 200);
                v239 = *(v375 + 144);
                if (v237)
                {
                  v240 = swift_slowAlloc();
                  v241 = swift_slowAlloc();
                  v376[0] = v241;
                  *v240 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                  v242 = sub_1D30E977C();
                  v244 = v243;
                  v349(v238, v239);
                  v245 = sub_1D2FFEA04(v242, v244, v376);

                  *(v240 + 4) = v245;
                  _os_log_impl(&dword_1D2FD9000, v236, v235, "The item at “%{public}s” isn’t a directory; removing it…", v240, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v241);
                  MEMORY[0x1D38B3760](v241, -1, -1);
                  MEMORY[0x1D38B3760](v240, -1, -1);
                }

                else
                {

                  v349(v238, v239);
                }

                v1 = v375;
                v250 = *(v375 + 768);
                sub_1D3009B38(*(v375 + 256));
                v267 = *(v375 + 408);
                v268 = *(v375 + 328);
                v349(*(v1 + 256), *(v1 + 144));
                v326(v267, v268);
                *(v375 + 924) = 1;
              }
            }

            else
            {
              v232 = *(v375 + 408);
              v233 = *(v375 + 328);
              v349(*(v375 + 256), *(v375 + 144));
              v326(v232, v233);
              v1 = v375;
            }

            v166 = v373;
            v152 = v364;
          }

          v154 = &v369[v328];
          v150 = v166 - 1;
        }

        while (v150);
      }
    }

    v269 = *(v1 + 600);
    v270 = *(v1 + 592);
    v271 = *(v1 + 584);
    v272 = *(v375 + 576);
    v273 = *(v375 + 552);
    v274 = *(v375 + 544);
    v275 = *(v375 + 520);
    v276 = *(v375 + 512);
    v277 = *(v375 + 488);
    v278 = *(v375 + 464);
    v283 = *(v375 + 456);
    v284 = *(v375 + 448);
    v285 = *(v375 + 440);
    v286 = *(v375 + 432);
    v287 = *(v375 + 424);
    v288 = *(v375 + 416);
    v289 = *(v375 + 408);
    v290 = *(v375 + 400);
    v291 = *(v375 + 392);
    v292 = *(v375 + 384);
    v293 = *(v375 + 376);
    v294 = *(v375 + 368);
    v295 = *(v375 + 360);
    v296 = *(v375 + 352);
    v297 = *(v375 + 344);
    v298 = *(v375 + 320);
    v299 = *(v375 + 312);
    v300 = *(v375 + 304);
    v301 = *(v375 + 296);
    log = *(v375 + 288);
    v303 = *(v375 + 280);
    v304 = *(v375 + 272);
    v305 = *(v375 + 264);
    v307 = *(v375 + 256);
    v308 = *(v375 + 248);
    v310 = *(v375 + 240);
    v312 = *(v375 + 232);
    v314 = *(v375 + 224);
    v316 = *(v375 + 216);
    v318 = *(v375 + 208);
    v320 = *(v375 + 200);
    v322 = *(v375 + 192);
    v324 = *(v375 + 184);
    v327 = *(v375 + 176);
    v329 = *(v375 + 168);
    v331 = *(v375 + 160);
    v332 = *(v375 + 136);
    v333 = *(v375 + 128);
    v339 = *(v375 + 120);
    v343 = *(v375 + 112);
    v350 = *(v375 + 104);
    v356 = *(v375 + 96);
    v361 = *(v375 + 88);
    v365 = *(v375 + 80);
    v370 = *(v375 + 64);
    v374 = *(v375 + 56);
    v282 = *(v375 + 924);

    v279 = *(v375 + 8);
    v280 = *MEMORY[0x1E69E9840];

    return v279(v282);
  }

  else
  {
    v128 = *(v0 + 904);
LABEL_31:
    *(v1 + 888) = v3;
    *(v1 + 880) = v128;
    v129 = *(v1 + 824);
    v130 = *(v1 + 624);
    (*(v1 + 816))(*(v1 + 432), &v4[((*(v1 + 920) + 32) & ~*(v1 + 920)) + *(v1 + 808) * v3], *(v1 + 328));
    *(v1 + 896) = sub_1D30E91EC();
    v131 = sub_1D30E91AC();
    v133 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v131, v132);
  }
}

uint64_t sub_1D30B7E7C()
{
  v375 = v0;
  v374[1] = *MEMORY[0x1E69E9840];
  v1 = v0[113];
  v2 = v0[103];
  v3 = v0[102];
  v372 = v0[77];
  v4 = v0[58];
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[52];
  v8 = v0[41];
  v9 = sub_1D30E929C();
  v3(v6, v5, v8);
  v3(v7, v4, v8);
  v10 = v1;
  v11 = sub_1D30E8B1C();

  v367 = v9;
  v12 = os_log_type_enabled(v11, v9);
  v13 = v0[113];
  v14 = v0[105];
  v15 = v0[104];
  v16 = v0[53];
  v17 = v0[54];
  v18 = v0[52];
  v373 = v0;
  v19 = v0[41];
  if (v12)
  {
    v346 = v0[113];
    v20 = swift_slowAlloc();
    v350 = swift_slowAlloc();
    v356 = swift_slowAlloc();
    v374[0] = v356;
    *v20 = 136446722;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
    v362 = v17;
    v21 = sub_1D30E977C();
    v23 = v22;
    v15(v16, v19);
    v24 = sub_1D2FFEA04(v21, v23, v374);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_1D30E977C();
    v27 = v26;
    v15(v18, v19);
    v28 = sub_1D2FFEA04(v25, v27, v374);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2114;
    v29 = v346;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v30;
    *v350 = v30;
    _os_log_impl(&dword_1D2FD9000, v11, v367, "Checking whether the asset pack with the root-directory component “%{public}s” for the app with the bundle ID “%{public}s” is orphaned failed: %{public}@", v20, 0x20u);
    sub_1D2FF14DC(v350, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v350, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v356, -1, -1);
    MEMORY[0x1D38B3760](v20, -1, -1);

    v31 = v362;
  }

  else
  {

    v15(v18, v19);
    v15(v16, v19);
    v31 = v17;
  }

  v15(v31, v19);
  v32 = v373;
  v33 = v373[111] + 1;
  v34 = v373[108];
  if (v33 == v373[109])
  {
LABEL_5:

    v35 = v32[107];
    v36 = v32[105];
    v37 = v32[104];
    v38 = v32[58];
    v39 = v32[41];
    (v32[106])(v32[40], v32[18]);
    v34 = v37(v38, v39);
    while (1)
    {
      v41 = v32[100] + 1;
      if (v41 == v32[99])
      {
        break;
      }

      v32[100] = v41;
      v42 = v32[98];
      if (v41 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v43 = v32[58];
      v44 = v32[41];
      v45 = v32[42];
      v46 = v32[8];
      v47 = *(v45 + 16);
      v48 = v42 + ((*(v32 + 920) + 32) & ~*(v32 + 920));
      v49 = *(v45 + 72);
      v32[101] = v49;
      v32[102] = v47;
      v32[103] = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v368 = v47;
      v47(v43, v48 + v49 * v41, v44);
      v50 = sub_1D30E8D4C();
      v52 = v51;

      sub_1D30E8D6C();
      if ((*(v45 + 48))(v46, 1, v44) == 1)
      {
        v53 = v32[77];
        v54 = v32[58];
        v55 = v32[55];
        v56 = v32[41];
        v57 = v32[17];
        v58 = v373[16];
        v59 = v373[15];
        v357 = v373[14];
        v60 = v373[9];
        sub_1D2FF14DC(v373[8], &qword_1EC749940, &qword_1D30F1B10);
        *v58 = v50;
        v58[1] = v52;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        v61 = v58;
        v32 = v373;
        sub_1D3056830(v61, v57, type metadata accessor for FilePath.ResolutionError);
        sub_1D3056830(v57, v59, type metadata accessor for FilePath.ResolutionError);
        v62 = sub_1D30E929C();
        v368(v55, v54, v56);
        sub_1D3058338(v59, v357, type metadata accessor for FilePath.ResolutionError);
        v63 = sub_1D30E8B1C();
        v64 = os_log_type_enabled(v63, v62);
        v65 = v373[58];
        v66 = v373[55];
        v67 = v373[41];
        v68 = v373[14];
        v369 = v373[15];
        v69 = (v373[42] + 8);
        if (v64)
        {
          v347 = v373[9];
          v363 = v373[58];
          v70 = swift_slowAlloc();
          v351 = swift_slowAlloc();
          v358 = swift_slowAlloc();
          v374[0] = v358;
          *v70 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
          v71 = sub_1D30E977C();
          v339 = v62;
          v73 = v72;
          v74 = *v69;
          (*v69)(v66, v67);
          v75 = v71;
          v32 = v373;
          v76 = sub_1D2FFEA04(v75, v73, v374);

          *(v70 + 4) = v76;
          *(v70 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v68, v77, type metadata accessor for FilePath.ResolutionError);
          v78 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v68, type metadata accessor for FilePath.ResolutionError);
          *(v70 + 14) = v78;
          *v351 = v78;
          _os_log_impl(&dword_1D2FD9000, v63, v339, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v70, 0x16u);
          sub_1D2FF14DC(v351, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v351, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v358);
          MEMORY[0x1D38B3760](v358, -1, -1);
          MEMORY[0x1D38B3760](v70, -1, -1);

          sub_1D3065284(v369, type metadata accessor for FilePath.ResolutionError);
          v34 = (v74)(v363, v67);
        }

        else
        {

          sub_1D3065284(v68, type metadata accessor for FilePath.ResolutionError);
          v40 = *v69;
          (*v69)(v66, v67);
          sub_1D3065284(v369, type metadata accessor for FilePath.ResolutionError);
          v34 = (v40)(v65, v67);
        }
      }

      else
      {
        v79 = v32[56];
        v80 = v32[57];
        v81 = v32[41];
        v82 = v32[42];
        v352 = v32[39];
        v359 = v32[40];
        v335 = v32[97];
        v340 = v32[38];
        v83 = v373[37];
        v84 = v373[19];
        v85 = v373[18];
        v86 = v373[8];

        (*(v82 + 32))(v80, v86, v81);
        v364 = *(v84 + 16);
        (v364)(v83, v335, v85);
        v368(v79, v80, v81);
        v32 = v373;
        sub_1D30E8D7C();
        v87 = *(v82 + 8);
        v373[104] = v87;
        v373[105] = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v336 = v87;
        v87(v80, v81);
        sub_1D30E8D8C();
        (*(v84 + 32))(v359, v352, v85);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v88 = v373[40];
        v89 = v373[36];
        v90 = v373[18];
        __swift_project_value_buffer(v373[76], qword_1EE3133A8);
        v91 = sub_1D30E928C();
        (v364)(v89, v88, v90);
        v92 = sub_1D30E8B1C();
        v93 = os_log_type_enabled(v92, v91);
        v94 = v373[36];
        v95 = v373[18];
        v96 = v373[19];
        if (v93)
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v374[0] = v98;
          *v97 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v99 = sub_1D30E977C();
          v353 = v91;
          v101 = v100;
          v102 = *(v96 + 8);
          v102(v94, v95);
          v103 = sub_1D2FFEA04(v99, v101, v374);

          *(v97 + 4) = v103;
          _os_log_impl(&dword_1D2FD9000, v92, v353, "Item exists at: %{public}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v98);
          MEMORY[0x1D38B3760](v98, -1, -1);
          MEMORY[0x1D38B3760](v97, -1, -1);
        }

        else
        {

          v102 = *(v96 + 8);
          v102(v94, v95);
        }

        v373[106] = v102;
        v104 = v373[96];
        sub_1D3003CF4(v373[40], 0, v373[35]);
        v105 = v373[35];
        v106 = v373[18];
        v107 = v373[19] + 8;
        *(v373 + 926) = 0;
        v108 = [objc_opt_self() defaultManager];
        sub_1D30E8D3C();
        v109 = sub_1D30E906C();

        v110 = [v108 fileExistsAtPath:v109 isDirectory:v373 + 926];

        v373[107] = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v102(v105, v106);
        if (v110)
        {
          v111 = v373[40];
          if (*(v373 + 926))
          {
            v112 = v373[96];
            v34 = sub_1D3005160(v373[40]);
            v373[108] = v34;
            v133 = *(v34 + 2);
            v373[109] = v133;
            if (!v133)
            {
              goto LABEL_5;
            }

LABEL_63:
            v33 = 0;
            goto LABEL_64;
          }

          v115 = v373[77];
          v116 = v373[33];
          v117 = v373[18];
          v118 = sub_1D30E92AC();
          (v364)(v116, v111, v117);
          v119 = sub_1D30E8B1C();
          v120 = os_log_type_enabled(v119, v118);
          v121 = v373[33];
          v122 = v373[18];
          if (v120)
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v374[0] = v124;
            *v123 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v125 = sub_1D30E977C();
            v354 = v118;
            v126 = v102;
            v128 = v127;
            v126(v121, v122);
            v129 = sub_1D2FFEA04(v125, v128, v374);
            v102 = v126;

            *(v123 + 4) = v129;
            _os_log_impl(&dword_1D2FD9000, v119, v354, "The item at “%{public}s” isn’t a directory; removing it…", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v124);
            MEMORY[0x1D38B3760](v124, -1, -1);
            MEMORY[0x1D38B3760](v123, -1, -1);
          }

          else
          {

            v102(v121, v122);
          }

          v130 = v373[96];
          sub_1D3009B38(v373[40]);
          v131 = v373[58];
          v132 = v373[41];
          v102(v373[40], v373[18]);
          v34 = v336(v131, v132);
          *(v373 + 924) = 1;
        }

        else
        {
          v113 = v373[58];
          v114 = v373[41];
          v102(v373[40], v373[18]);
          v34 = v336(v113, v114);
        }
      }
    }

    v134 = v32[98];

    v135 = v32[77];
    v136 = sub_1D30E8B1C();
    v137 = sub_1D30E92BC();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_1D2FD9000, v136, v137, "Checking for inactive staging directories…", v138, 2u);
      MEMORY[0x1D38B3760](v138, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v139 = v32[96];
    v140 = __swift_project_value_buffer(v32[18], qword_1EE3152D0);
    v141 = sub_1D3005160(v140);
    v142 = *(v141 + 2);
    if (v142)
    {
      v143 = v32[42];
      v145 = *(v143 + 16);
      v143 += 16;
      v144 = v145;
      v146 = &v141[(*(v143 + 64) + 32) & ~*(v143 + 64)];
      v327 = (v143 + 32);
      v314 = (v143 + 16);
      v147 = v32[19];
      v320 = (v147 + 16);
      v348 = (v143 - 8);
      v312 = (v147 + 32);
      v310 = v32[12];
      v325 = *(v143 + 56);
      v337 = (v147 + 8);
      v303 = *MEMORY[0x1E69C76A0];
      v360 = v145;
      v316 = v140;
      do
      {
        v365 = v146;
        v370 = v142;
        v159 = v32[41];
        v160 = v32[7];
        (v144)(v32[51]);
        v161 = sub_1D30E8D4C();
        v163 = v162;

        sub_1D30E8D6C();
        if ((*v327)(v160, 1, v159) == 1)
        {
          v341 = v32[77];
          v164 = v32[51];
          v165 = v32[49];
          v166 = v32[41];
          v167 = v32[13];
          v168 = v373[12];
          v169 = v373[11];
          v170 = v373[10];
          v171 = v373[9];
          sub_1D2FF14DC(v373[7], &qword_1EC749940, &qword_1D30F1B10);
          *v168 = v161;
          *(v310 + 8) = v163;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          v172 = v168;
          v32 = v373;
          sub_1D3056830(v172, v167, type metadata accessor for FilePath.ResolutionError);
          sub_1D3056830(v167, v169, type metadata accessor for FilePath.ResolutionError);
          LOBYTE(v171) = sub_1D30E929C();
          (v360)(v165, v164, v166);
          sub_1D3058338(v169, v170, type metadata accessor for FilePath.ResolutionError);
          v173 = sub_1D30E8B1C();
          v322 = v171;
          v174 = os_log_type_enabled(v173, v171);
          v342 = v373[51];
          v175 = v373[49];
          v176 = v373[41];
          v177 = v373[10];
          v329 = v373[11];
          if (v174)
          {
            v148 = v373[9];
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v308 = swift_slowAlloc();
            v374[0] = v308;
            *v149 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
            v151 = sub_1D30E977C();
            v153 = v152;
            v306 = *v348;
            (*v348)(v175, v176);
            v154 = sub_1D2FFEA04(v151, v153, v374);

            *(v149 + 4) = v154;
            *(v149 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v177, v155, type metadata accessor for FilePath.ResolutionError);
            v156 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v177, type metadata accessor for FilePath.ResolutionError);
            *(v149 + 14) = v156;
            *v150 = v156;
            _os_log_impl(&dword_1D2FD9000, v173, v322, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v149, 0x16u);
            sub_1D2FF14DC(v150, &qword_1EC7493A0, &qword_1D30EF480);
            v157 = v150;
            v32 = v373;
            MEMORY[0x1D38B3760](v157, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v308);
            v144 = v360;
            MEMORY[0x1D38B3760](v308, -1, -1);
            MEMORY[0x1D38B3760](v149, -1, -1);

            sub_1D3065284(v329, type metadata accessor for FilePath.ResolutionError);
            v306(v342, v176);
          }

          else
          {
            v144 = v360;

            sub_1D3065284(v177, type metadata accessor for FilePath.ResolutionError);
            v178 = *v348;
            (*v348)(v175, v176);
            sub_1D3065284(v329, type metadata accessor for FilePath.ResolutionError);
            v178(v342, v176);
          }

          v158 = v370;
        }

        else
        {
          v179 = v32[56];
          v180 = v32[50];
          v181 = v32[41];
          v182 = v32[37];
          v183 = v32[31];
          v343 = v32[32];
          v184 = v32[30];
          v185 = v32[18];
          v186 = v32[7];

          (*v314)(v180, v186, v181);
          v330 = *v320;
          (*v320)(v182, v316, v185);
          (v360)(v179, v180, v181);
          sub_1D30E8D7C();
          v323 = *v348;
          (*v348)(v180, v181);
          sub_1D30E8D8C();
          (*v312)(v343, v183, v185);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v187 = v32[32];
          v188 = v32[29];
          v189 = v32[18];
          __swift_project_value_buffer(v32[76], qword_1EE3133A8);
          v190 = sub_1D30E928C();
          v330(v188, v187, v189);
          v191 = sub_1D30E8B1C();
          v192 = os_log_type_enabled(v191, v190);
          v193 = v32[29];
          v194 = v32[18];
          if (v192)
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            v374[0] = v196;
            *v195 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v197 = sub_1D30E977C();
            v199 = v198;
            v344 = *v337;
            (*v337)(v193, v194);
            v200 = sub_1D2FFEA04(v197, v199, v374);

            *(v195 + 4) = v200;
            _os_log_impl(&dword_1D2FD9000, v191, v190, "Item exists at: %{public}s", v195, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v196);
            MEMORY[0x1D38B3760](v196, -1, -1);
            MEMORY[0x1D38B3760](v195, -1, -1);
          }

          else
          {

            v344 = *v337;
            (*v337)(v193, v194);
          }

          v201 = v373[96];
          sub_1D3003CF4(v373[32], 0, v373[28]);
          v202 = v373[28];
          v203 = v373[18];
          *(v373 + 925) = 0;
          v204 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v205 = sub_1D30E906C();

          v206 = [v204 fileExistsAtPath:v205 isDirectory:v373 + 925];

          v207 = v344;
          v344(v202, v203);
          if (v206)
          {
            v208 = v373[77];
            v209 = v373[32];
            v210 = v373[18];
            if (*(v373 + 925))
            {
              v211 = v373[26];
              v212 = sub_1D30E927C();
              v330(v211, v209, v210);
              v213 = sub_1D30E8B1C();
              v214 = os_log_type_enabled(v213, v212);
              v215 = v373[26];
              v216 = v373[18];
              if (v214)
              {
                v217 = swift_slowAlloc();
                v218 = swift_slowAlloc();
                v374[0] = v218;
                *v217 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v219 = sub_1D30E977C();
                v221 = v220;
                v344(v215, v216);
                v222 = sub_1D2FFEA04(v219, v221, v374);

                *(v217 + 4) = v222;
                _os_log_impl(&dword_1D2FD9000, v213, v212, "Checking whether the staging directory at “%{public}s” is inactive…", v217, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v218);
                v223 = v218;
                v207 = v344;
                MEMORY[0x1D38B3760](v223, -1, -1);
                MEMORY[0x1D38B3760](v217, -1, -1);
              }

              else
              {

                v344(v215, v216);
              }

              v238 = v373[51];
              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v239 = sub_1D30E906C();

              v240 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v241 = sub_1D30E6D18(v240);
              v32 = v373;
              v243 = v373[77];
              (v360)(v32[48], v32[51], v32[41]);
              v244 = sub_1D30E8B1C();
              v245 = sub_1D30E92BC();
              v246 = os_log_type_enabled(v244, v245);
              v247 = v373[51];
              v248 = v373[48];
              v249 = v373[41];
              v250 = v373[32];
              v251 = v373[18];
              if (v246)
              {
                v331 = v373[18];
                v252 = swift_slowAlloc();
                v253 = swift_slowAlloc();
                v374[0] = v253;
                *v252 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
                v254 = sub_1D30E977C();
                v318 = v247;
                v256 = v255;
                v323(v248, v249);
                v257 = sub_1D2FFEA04(v254, v256, v374);

                *(v252 + 4) = v257;
                _os_log_impl(&dword_1D2FD9000, v244, v245, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v252, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v253);
                v258 = v253;
                v32 = v373;
                MEMORY[0x1D38B3760](v258, -1, -1);
                MEMORY[0x1D38B3760](v252, -1, -1);

                v207(v250, v331);
                v323(v318, v249);
              }

              else
              {

                v323(v248, v249);
                v207(v250, v251);
                v323(v247, v249);
              }
            }

            else
            {
              v226 = v373[25];
              v227 = sub_1D30E92AC();
              v330(v226, v209, v210);
              v228 = sub_1D30E8B1C();
              v229 = os_log_type_enabled(v228, v227);
              v230 = v373[25];
              v231 = v373[18];
              if (v229)
              {
                v232 = swift_slowAlloc();
                v233 = swift_slowAlloc();
                v374[0] = v233;
                *v232 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                v234 = sub_1D30E977C();
                v236 = v235;
                v344(v230, v231);
                v237 = sub_1D2FFEA04(v234, v236, v374);

                *(v232 + 4) = v237;
                _os_log_impl(&dword_1D2FD9000, v228, v227, "The item at “%{public}s” isn’t a directory; removing it…", v232, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v233);
                MEMORY[0x1D38B3760](v233, -1, -1);
                MEMORY[0x1D38B3760](v232, -1, -1);
              }

              else
              {

                v344(v230, v231);
              }

              v32 = v373;
              v242 = v373[96];
              sub_1D3009B38(v373[32]);
              v259 = v373[51];
              v260 = v373[41];
              v344(v32[32], v32[18]);
              v323(v259, v260);
              *(v373 + 924) = 1;
            }
          }

          else
          {
            v224 = v373[51];
            v225 = v373[41];
            v344(v373[32], v373[18]);
            v323(v224, v225);
            v32 = v373;
          }

          v158 = v370;
          v144 = v360;
        }

        v146 = &v365[v325];
        v142 = v158 - 1;
      }

      while (v142);
    }

    v261 = v32[75];
    v262 = v32[74];
    v263 = v32[73];
    v264 = v373[72];
    v265 = v373[69];
    v266 = v373[68];
    v267 = v373[65];
    v268 = v373[64];
    v269 = v373[61];
    v270 = v373[58];
    v280 = v373[57];
    v281 = v373[56];
    v282 = v373[55];
    v283 = v373[54];
    v284 = v373[53];
    v285 = v373[52];
    v286 = v373[51];
    v287 = v373[50];
    v288 = v373[49];
    v289 = v373[48];
    v290 = v373[47];
    v291 = v373[46];
    v292 = v373[45];
    v293 = v373[44];
    v294 = v373[43];
    v295 = v373[40];
    v296 = v373[39];
    v297 = v373[38];
    v298 = v373[37];
    log = v373[36];
    v300 = v373[35];
    v301 = v373[34];
    v302 = v373[33];
    v304 = v373[32];
    v305 = v373[31];
    v307 = v373[30];
    v309 = v373[29];
    v311 = v373[28];
    v313 = v373[27];
    v315 = v373[26];
    v317 = v373[25];
    v319 = v373[24];
    v321 = v373[23];
    v324 = v373[22];
    v326 = v373[21];
    v328 = v373[20];
    v332 = v373[17];
    v333 = v373[16];
    v334 = v373[15];
    v338 = v373[14];
    v345 = v373[13];
    v349 = v373[12];
    v355 = v373[11];
    v361 = v373[10];
    v366 = v373[8];
    v371 = v373[7];
    v279 = *(v373 + 924);

    v271 = v373[1];
    v272 = *MEMORY[0x1E69E9840];

    return v271(v279);
  }

  else
  {
LABEL_64:
    v32[111] = v33;
    v32[110] = 0;
    v274 = v32[103];
    v275 = v32[78];
    (v32[102])(v32[54], &v34[((*(v32 + 920) + 32) & ~*(v32 + 920)) + v32[101] * v33], v32[41]);
    v32[112] = sub_1D30E91EC();
    v276 = sub_1D30E91AC();
    v278 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v276, v277);
  }
}

uint64_t sub_1D30BBA94()
{
  v435 = v0;
  v1 = v0;
  v434[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 760);
  v3 = *(v0 + 616);
  v4 = *(v0 + 600);
  v5 = *(v0 + 576);

  v6 = sub_1D30E929C();
  sub_1D3058338(v4, v5, type metadata accessor for LicenseRecord.StaticRepresentation);
  v7 = v2;
  v8 = sub_1D30E8B1C();

  v9 = os_log_type_enabled(v8, v6);
  v10 = *(v0 + 760);
  v11 = *(v0 + 736);
  v12 = *(v0 + 728);
  v13 = *(v0 + 600);
  v14 = v1[72];
  v15 = v1[69];
  v16 = v1[66];
  v433 = v1;
  if (v9)
  {
    v425 = v6;
    v17 = swift_slowAlloc();
    v417 = swift_slowAlloc();
    *v17 = 134218242;
    v18 = v13;
    v19 = *v14;
    sub_1D3065284(v14, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v17 + 4) = v19;
    v13 = v18;
    *(v17 + 12) = 2114;
    v20 = v10;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v417 = v21;
    _os_log_impl(&dword_1D2FD9000, v8, v425, "A timeout error couldn’t be reported for the license with the ID “%llu”: %{public}@", v17, 0x16u);
    sub_1D2FF14DC(v417, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v417, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  else
  {
    sub_1D3065284(v14, type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v12(v15, v16);
  sub_1D3065284(v13, type metadata accessor for LicenseRecord.StaticRepresentation);
  v408 = *(v1 + 927);
  v22 = v1[90] + 1;
  if (v22 == v1[88])
  {
LABEL_14:
    v50 = v1[87];
    *(v1 + 924) = v408;

    v51 = v1[77];
    v52 = sub_1D30E8B1C();
    v53 = sub_1D30E92BC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1D2FD9000, v52, v53, "Checking for orphaned asset packs…", v54, 2u);
      MEMORY[0x1D38B3760](v54, -1, -1);
    }

    v55 = v1[5];

    v1[96] = *(v55 + 16);
    if (qword_1EC749038 != -1)
    {
LABEL_86:
      swift_once();
    }

    v56 = __swift_project_value_buffer(v1[18], qword_1EC75A8D8);
    v1[97] = v56;
    v57 = sub_1D3005160(v56);
    v1[98] = v57;
    v58 = *(v57 + 2);
    v1[99] = v58;
    if (!v58)
    {
LABEL_43:

      v176 = v1[77];
      v177 = sub_1D30E8B1C();
      v178 = sub_1D30E92BC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_1D2FD9000, v177, v178, "Checking for inactive staging directories…", v179, 2u);
        MEMORY[0x1D38B3760](v179, -1, -1);
      }

      if (qword_1EC749040 != -1)
      {
        swift_once();
      }

      v180 = v1[96];
      v181 = __swift_project_value_buffer(v1[18], qword_1EE3152D0);
      v182 = sub_1D3005160(v181);
      v183 = *(v182 + 2);
      if (v183)
      {
        v184 = v1[42];
        v185 = *(v184 + 16);
        v184 += 16;
        v406 = v185;
        v186 = &v182[(*(v184 + 64) + 32) & ~*(v184 + 64)];
        v393 = (v184 + 32);
        v187 = v1[19];
        v379 = (v187 + 16);
        v410 = (v184 - 8);
        v373 = (v187 + 32);
        v375 = (v184 + 16);
        v395 = (v187 + 8);
        v371 = v1[12];
        v391 = *(v184 + 56);
        v358 = *MEMORY[0x1E69C76A0];
        v377 = v181;
        do
        {
          v423 = v186;
          v431 = v183;
          v198 = v1[41];
          v199 = v1[7];
          (v406)(v1[51]);
          v200 = sub_1D30E8D4C();
          v202 = v201;

          sub_1D30E8D6C();
          if ((*v393)(v199, 1, v198) == 1)
          {
            v399 = v1[77];
            v203 = v1[51];
            v204 = v1[49];
            v205 = v1[41];
            v206 = v433[13];
            v207 = v433[12];
            v208 = v433[11];
            v384 = v433[10];
            v209 = v433[9];
            sub_1D2FF14DC(v433[7], &qword_1EC749940, &qword_1D30F1B10);
            *v207 = v200;
            *(v371 + 8) = v202;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            sub_1D3056830(v207, v206, type metadata accessor for FilePath.ResolutionError);
            v210 = v206;
            v1 = v433;
            sub_1D3056830(v210, v208, type metadata accessor for FilePath.ResolutionError);
            v211 = sub_1D30E929C();
            v406(v204, v203, v205);
            sub_1D3058338(v208, v384, type metadata accessor for FilePath.ResolutionError);
            v212 = sub_1D30E8B1C();
            v381 = v211;
            v213 = os_log_type_enabled(v212, v211);
            v400 = v433[51];
            v214 = v433[49];
            v215 = v433[41];
            v216 = v433[10];
            v385 = v433[11];
            if (v213)
            {
              v188 = v433[9];
              v189 = swift_slowAlloc();
              v190 = swift_slowAlloc();
              v368 = swift_slowAlloc();
              v434[0] = v368;
              *v189 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
              v191 = sub_1D30E977C();
              v193 = v192;
              log = *v410;
              (*v410)(v214, v215);
              v194 = sub_1D2FFEA04(v191, v193, v434);

              *(v189 + 4) = v194;
              *(v189 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v216, v195, type metadata accessor for FilePath.ResolutionError);
              v196 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v216, type metadata accessor for FilePath.ResolutionError);
              *(v189 + 14) = v196;
              *v190 = v196;
              _os_log_impl(&dword_1D2FD9000, v212, v381, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v189, 0x16u);
              sub_1D2FF14DC(v190, &qword_1EC7493A0, &qword_1D30EF480);
              v1 = v433;
              MEMORY[0x1D38B3760](v190, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v368);
              MEMORY[0x1D38B3760](v368, -1, -1);
              MEMORY[0x1D38B3760](v189, -1, -1);

              sub_1D3065284(v385, type metadata accessor for FilePath.ResolutionError);
              (log)(v400, v215);
            }

            else
            {

              sub_1D3065284(v216, type metadata accessor for FilePath.ResolutionError);
              v217 = *v410;
              (*v410)(v214, v215);
              sub_1D3065284(v385, type metadata accessor for FilePath.ResolutionError);
              v217(v400, v215);
            }

            v197 = v431;
          }

          else
          {
            v218 = v1[56];
            v219 = v1[50];
            v220 = v1[41];
            v221 = v1[37];
            v382 = v1[31];
            v386 = v1[32];
            v222 = v1[30];
            v223 = v1;
            v224 = v1[18];
            v225 = v223[7];

            (*v375)(v219, v225, v220);
            v401 = *v379;
            (*v379)(v221, v377, v224);
            v406(v218, v219, v220);
            sub_1D30E8D7C();
            v226 = *v410;
            (*v410)(v219, v220);
            sub_1D30E8D8C();
            (*v373)(v386, v382, v224);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v227 = v223[32];
            v228 = v223[29];
            v229 = v223[18];
            __swift_project_value_buffer(v223[76], qword_1EE3133A8);
            v230 = sub_1D30E928C();
            v401(v228, v227, v229);
            v231 = sub_1D30E8B1C();
            v232 = os_log_type_enabled(v231, v230);
            v233 = v223[29];
            v234 = v223[18];
            v1 = v223;
            if (v232)
            {
              v235 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v434[0] = v236;
              *v235 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v237 = v226;
              v238 = sub_1D30E977C();
              v387 = v230;
              v240 = v239;
              v241 = *v395;
              (*v395)(v233, v234);
              v242 = v238;
              v226 = v237;
              v243 = sub_1D2FFEA04(v242, v240, v434);

              *(v235 + 4) = v243;
              _os_log_impl(&dword_1D2FD9000, v231, v387, "Item exists at: %{public}s", v235, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v236);
              MEMORY[0x1D38B3760](v236, -1, -1);
              MEMORY[0x1D38B3760](v235, -1, -1);
            }

            else
            {

              v241 = *v395;
              (*v395)(v233, v234);
            }

            v244 = v1[96];
            sub_1D3003CF4(v1[32], 0, v1[28]);
            v245 = v1[28];
            v246 = v1[18];
            *(v1 + 925) = 0;
            v247 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v248 = sub_1D30E906C();

            v249 = [v247 fileExistsAtPath:v248 isDirectory:v1 + 925];

            v241(v245, v246);
            if (v249)
            {
              v250 = v1[77];
              v251 = v1[32];
              v252 = v1[18];
              if (*(v1 + 925))
              {
                v253 = v1[26];
                v254 = sub_1D30E927C();
                v401(v253, v251, v252);
                v255 = sub_1D30E8B1C();
                v256 = os_log_type_enabled(v255, v254);
                v257 = v1[26];
                v258 = v1[18];
                v361 = v241;
                if (v256)
                {
                  v259 = swift_slowAlloc();
                  v260 = swift_slowAlloc();
                  v434[0] = v260;
                  *v259 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                  v261 = v226;
                  v262 = sub_1D30E977C();
                  v263 = v241;
                  v265 = v264;
                  v263(v257, v258);
                  v266 = v262;
                  v226 = v261;
                  v267 = sub_1D2FFEA04(v266, v265, v434);

                  *(v259 + 4) = v267;
                  _os_log_impl(&dword_1D2FD9000, v255, v254, "Checking whether the staging directory at “%{public}s” is inactive…", v259, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v260);
                  MEMORY[0x1D38B3760](v260, -1, -1);
                  MEMORY[0x1D38B3760](v259, -1, -1);
                }

                else
                {

                  v241(v257, v258);
                }

                v285 = v1[51];
                sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
                sub_1D30E8D4C();
                v286 = sub_1D30E906C();

                v287 = [objc_opt_self() predicateMatchingBundleIdentifier_];

                v288 = sub_1D30E6D18(v287);
                v369 = v226;

                v290 = v1[77];
                v406(v1[48], v1[51], v1[41]);
                v291 = sub_1D30E8B1C();
                v292 = sub_1D30E92BC();
                v293 = os_log_type_enabled(v291, v292);
                v294 = v1[51];
                v295 = v1[48];
                v296 = v1[41];
                v297 = v1[32];
                v298 = v1[18];
                if (v293)
                {
                  v299 = swift_slowAlloc();
                  v300 = swift_slowAlloc();
                  v434[0] = v300;
                  *v299 = 136446210;
                  sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
                  v402 = v294;
                  v301 = sub_1D30E977C();
                  v389 = v297;
                  v303 = v302;
                  v369(v295, v296);
                  v304 = sub_1D2FFEA04(v301, v303, v434);

                  *(v299 + 4) = v304;
                  _os_log_impl(&dword_1D2FD9000, v291, v292, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v299, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v300);
                  v305 = v300;
                  v1 = v433;
                  MEMORY[0x1D38B3760](v305, -1, -1);
                  MEMORY[0x1D38B3760](v299, -1, -1);

                  v361(v389, v298);
                  v369(v402, v296);
                }

                else
                {

                  v369(v295, v296);
                  v361(v297, v298);
                  v369(v294, v296);
                }
              }

              else
              {
                v270 = v1[25];
                v271 = sub_1D30E92AC();
                v401(v270, v251, v252);
                v272 = sub_1D30E8B1C();
                v273 = os_log_type_enabled(v272, v271);
                v274 = v1[25];
                v275 = v1[18];
                if (v273)
                {
                  v276 = swift_slowAlloc();
                  v277 = swift_slowAlloc();
                  v434[0] = v277;
                  *v276 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
                  v278 = v226;
                  v279 = sub_1D30E977C();
                  v388 = v271;
                  v280 = v241;
                  v282 = v281;
                  v280(v274, v275);
                  v283 = v279;
                  v226 = v278;
                  v284 = sub_1D2FFEA04(v283, v282, v434);
                  v241 = v280;

                  *(v276 + 4) = v284;
                  _os_log_impl(&dword_1D2FD9000, v272, v388, "The item at “%{public}s” isn’t a directory; removing it…", v276, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v277);
                  MEMORY[0x1D38B3760](v277, -1, -1);
                  MEMORY[0x1D38B3760](v276, -1, -1);
                }

                else
                {

                  v241(v274, v275);
                }

                v289 = v1[96];
                sub_1D3009B38(v1[32]);
                v306 = v1[51];
                v307 = v1[41];
                v241(v1[32], v1[18]);
                v226(v306, v307);
                *(v1 + 924) = 1;
              }
            }

            else
            {
              v268 = v1[51];
              v269 = v1[41];
              v241(v1[32], v1[18]);
              v226(v268, v269);
            }

            v197 = v431;
          }

          v186 = &v423[v391];
          v183 = v197 - 1;
        }

        while (v183);
      }

      v308 = v1[75];
      v309 = v1[74];
      v310 = v1[73];
      v311 = v433[72];
      v312 = v433[69];
      v313 = v433[68];
      v314 = v433[65];
      v315 = v433[64];
      v316 = v433[61];
      v317 = v433[58];
      v336 = v433[57];
      v337 = v433[56];
      v338 = v433[55];
      v339 = v433[54];
      v340 = v433[53];
      v341 = v433[52];
      v342 = v433[51];
      v343 = v433[50];
      v344 = v433[49];
      v345 = v433[48];
      v346 = v433[47];
      v347 = v433[46];
      v348 = v433[45];
      v349 = v433[44];
      v350 = v433[43];
      v351 = v433[40];
      v352 = v433[39];
      v353 = v433[38];
      v354 = v433[37];
      v355 = v433[36];
      v356 = v433[35];
      v357 = v433[34];
      v359 = v433[33];
      v360 = v433[32];
      v362 = v433[31];
      v363 = v433[30];
      v364 = v433[29];
      v365 = v433[28];
      loga = v433[27];
      v370 = v433[26];
      v372 = v433[25];
      v374 = v433[24];
      v376 = v433[23];
      v378 = v433[22];
      v380 = v433[21];
      v383 = v433[20];
      v390 = v433[17];
      v392 = v433[16];
      v394 = v433[15];
      v396 = v433[14];
      v403 = v433[13];
      v407 = v433[12];
      v411 = v433[11];
      v416 = v433[10];
      v424 = v433[8];
      v432 = v433[7];
      v335 = *(v433 + 924);

      v318 = v433[1];
      v319 = *MEMORY[0x1E69E9840];

      return v318(v335);
    }

    v59 = 0;
    *(v1 + 230) = *(v1[42] + 80);
    while (1)
    {
      v1[100] = v59;
      v61 = v1[98];
      if (v59 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v62 = v1[58];
      v63 = v1[41];
      v64 = v1[42];
      v65 = v1[8];
      v66 = *(v64 + 16);
      v67 = v61 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
      v68 = *(v64 + 72);
      v1[101] = v68;
      v1[102] = v66;
      v1[103] = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v66(v62, v67 + v68 * v59, v63);
      v69 = sub_1D30E8D4C();
      v71 = v70;

      sub_1D30E8D6C();
      if ((*(v64 + 48))(v65, 1, v63) == 1)
      {
        v72 = v1[77];
        v413 = v1[58];
        v73 = v1[55];
        v74 = v1[41];
        v75 = v433[17];
        v76 = v433[16];
        v77 = v433[15];
        v419 = v433[14];
        v78 = v433[9];
        sub_1D2FF14DC(v433[8], &qword_1EC749940, &qword_1D30F1B10);
        *v76 = v69;
        v76[1] = v71;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        sub_1D3056830(v76, v75, type metadata accessor for FilePath.ResolutionError);
        v79 = v75;
        v1 = v433;
        sub_1D3056830(v79, v77, type metadata accessor for FilePath.ResolutionError);
        v80 = sub_1D30E929C();
        v66(v73, v413, v74);
        sub_1D3058338(v77, v419, type metadata accessor for FilePath.ResolutionError);
        v81 = sub_1D30E8B1C();
        v82 = os_log_type_enabled(v81, v80);
        v83 = v433[58];
        v84 = v433[55];
        v85 = v433[41];
        v87 = v433[14];
        v86 = v433[15];
        v88 = (v433[42] + 8);
        if (v82)
        {
          v404 = v433[9];
          v427 = v433[15];
          v89 = swift_slowAlloc();
          v420 = v83;
          v90 = swift_slowAlloc();
          v414 = swift_slowAlloc();
          v434[0] = v414;
          *v89 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
          v91 = sub_1D30E977C();
          v397 = v80;
          v93 = v92;
          v94 = *v88;
          (*v88)(v84, v85);
          v95 = v91;
          v1 = v433;
          v96 = sub_1D2FFEA04(v95, v93, v434);

          *(v89 + 4) = v96;
          *(v89 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v87, v97, type metadata accessor for FilePath.ResolutionError);
          v98 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v87, type metadata accessor for FilePath.ResolutionError);
          *(v89 + 14) = v98;
          *v90 = v98;
          _os_log_impl(&dword_1D2FD9000, v81, v397, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v89, 0x16u);
          sub_1D2FF14DC(v90, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v90, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v414);
          MEMORY[0x1D38B3760](v414, -1, -1);
          MEMORY[0x1D38B3760](v89, -1, -1);

          sub_1D3065284(v427, type metadata accessor for FilePath.ResolutionError);
          v94(v420, v85);
        }

        else
        {

          sub_1D3065284(v87, type metadata accessor for FilePath.ResolutionError);
          v60 = *v88;
          (*v88)(v84, v85);
          sub_1D3065284(v86, type metadata accessor for FilePath.ResolutionError);
          v60(v83, v85);
        }
      }

      else
      {
        v99 = v1[56];
        v100 = v1[57];
        v409 = v66;
        v102 = v1[41];
        v101 = v1[42];
        v421 = v1[97];
        v428 = v1[40];
        v415 = v1[39];
        v405 = v1[38];
        v103 = v433[37];
        v104 = v433[19];
        v105 = v433[18];
        v106 = v433[8];

        (*(v101 + 32))(v100, v106, v102);
        v107 = v421;
        v422 = *(v104 + 16);
        v422(v103, v107, v105);
        v409(v99, v100, v102);
        sub_1D30E8D7C();
        v108 = *(v101 + 8);
        v433[104] = v108;
        v433[105] = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v398 = v108;
        v108(v100, v102);
        sub_1D30E8D8C();
        (*(v104 + 32))(v428, v415, v105);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v109 = v433[40];
        v110 = v433[36];
        v111 = v433[18];
        __swift_project_value_buffer(v433[76], qword_1EE3133A8);
        v112 = sub_1D30E928C();
        v113 = v422;
        v422(v110, v109, v111);
        v114 = sub_1D30E8B1C();
        v429 = v112;
        v115 = os_log_type_enabled(v114, v112);
        v116 = v433[36];
        v118 = v433[18];
        v117 = v433[19];
        if (v115)
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v434[0] = v120;
          *v119 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v121 = sub_1D30E977C();
          v123 = v122;
          v124 = v118;
          v125 = *(v117 + 8);
          v125(v116, v124);
          v126 = sub_1D2FFEA04(v121, v123, v434);
          v113 = v422;

          *(v119 + 4) = v126;
          _os_log_impl(&dword_1D2FD9000, v114, v429, "Item exists at: %{public}s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x1D38B3760](v120, -1, -1);
          MEMORY[0x1D38B3760](v119, -1, -1);
        }

        else
        {

          v127 = v118;
          v125 = *(v117 + 8);
          v125(v116, v127);
        }

        v433[106] = v125;
        v128 = v433[96];
        sub_1D3003CF4(v433[40], 0, v433[35]);
        v129 = v433[35];
        v130 = v433[18];
        v131 = v433[19] + 8;
        *(v433 + 926) = 0;
        v132 = [objc_opt_self() defaultManager];
        sub_1D30E8D3C();
        v133 = sub_1D30E906C();

        v134 = [v132 fileExistsAtPath:v133 isDirectory:v433 + 926];

        v433[107] = v131 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v125(v129, v130);
        if (v134)
        {
          v135 = v433[40];
          if (*(v433 + 926))
          {
            v136 = v433[96];
            v137 = sub_1D3005160(v433[40]);
            v433[108] = v137;
            v158 = *(v137 + 2);
            v433[109] = v158;
            v1 = v433;
            if (v158)
            {
              v329 = (*(v433 + 920) + 32) & ~*(v433 + 920);
              *(v433 + 55) = 0u;
              v330 = v433[103];
              v331 = v433[78];
              (v433[102])(v433[54], &v137[v329], v433[41]);
              v433[112] = sub_1D30E91EC();
              v332 = sub_1D30E91AC();
              v334 = *MEMORY[0x1E69E9840];

              return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v332, v333);
            }

            v159 = v433[107];
            v160 = v433[105];
            v161 = v433[104];
            v162 = v433[58];
            v163 = v433[41];
            (v433[106])(v433[40], v433[18]);
            v161(v162, v163);
          }

          else
          {
            v430 = v125;
            v140 = v433[77];
            v141 = v433[33];
            v142 = v433[18];
            v143 = sub_1D30E92AC();
            v113(v141, v135, v142);
            v144 = sub_1D30E8B1C();
            v145 = os_log_type_enabled(v144, v143);
            v146 = v433[33];
            v147 = v433[18];
            if (v145)
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v434[0] = v149;
              *v148 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v150 = sub_1D30E977C();
              v152 = v151;
              v153 = v147;
              v154 = v430;
              v430(v146, v153);
              v155 = sub_1D2FFEA04(v150, v152, v434);

              *(v148 + 4) = v155;
              _os_log_impl(&dword_1D2FD9000, v144, v143, "The item at “%{public}s” isn’t a directory; removing it…", v148, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v149);
              MEMORY[0x1D38B3760](v149, -1, -1);
              MEMORY[0x1D38B3760](v148, -1, -1);
            }

            else
            {

              v156 = v147;
              v154 = v430;
              v430(v146, v156);
            }

            v157 = v433[96];
            sub_1D3009B38(v433[40]);
            v164 = v433[58];
            v165 = v433[41];
            v154(v433[40], v433[18]);
            v398(v164, v165);
            *(v433 + 924) = 1;
            v1 = v433;
          }
        }

        else
        {
          v138 = v433[58];
          v139 = v433[41];
          v125(v433[40], v433[18]);
          v398(v138, v139);
          v1 = v433;
        }
      }

      v59 = v1[100] + 1;
      if (v59 == v1[99])
      {
        v175 = v1[98];
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v1[90] = v22;
    *(v1 + 927) = v408;
    v23 = v1[77];
    v24 = v1[75];
    v25 = v1[74];
    sub_1D3058338(v1[87] + ((*(v1 + 912) + 32) & ~*(v1 + 912)) + v1[89] * v22, v24, type metadata accessor for LicenseRecord.StaticRepresentation);
    v26 = sub_1D30E927C();
    sub_1D3058338(v24, v25, type metadata accessor for LicenseRecord.StaticRepresentation);
    v27 = sub_1D30E8B1C();
    v28 = os_log_type_enabled(v27, v26);
    v29 = v433[74];
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      v31 = *v29;
      sub_1D3065284(v29, type metadata accessor for LicenseRecord.StaticRepresentation);
      *(v30 + 4) = v31;
      _os_log_impl(&dword_1D2FD9000, v27, v26, "Checking whether the record of the license with the ID “%llu” is stale…", v30, 0xCu);
      MEMORY[0x1D38B3760](v30, -1, -1);
    }

    else
    {
      sub_1D3065284(v433[74], type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    v32 = *(v433 + 229);
    v33 = v433[68];
    v34 = v433[67];
    v35 = v433[65];
    v36 = v433[64];
    v37 = v433[63];
    v418 = v433[66];
    v426 = v433[62];
    v38 = v433[61];
    v39 = v433[60];
    v40 = v433[59];

    sub_1D30E8A9C();
    (*(v39 + 104))(v38, v32, v40);
    sub_1D30E8A0C();
    sub_1D30E8A8C();
    v41 = *(v34 + 8);
    v433[91] = v41;
    v433[92] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v412 = v41;
    v41(v33, v418);
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v36, v426);
    v42 = *(v34 + 48);
    v1 = v433;
    if (v42(v35, 1, v418) == 1)
    {
      v43 = v433[66];
      v44 = v433[65];
      v45 = v433[69];
      sub_1D30E896C();
      if (v42(v44, 1, v43) != 1)
      {
        sub_1D2FF14DC(v433[65], &qword_1EC7491C8, &qword_1D30EEC10);
      }
    }

    else
    {
      (*(v433[67] + 32))(v433[69], v433[65], v433[66]);
    }

    v46 = v433[75];
    v47 = v433[69];
    v48 = *(v433[70] + 28);
    if (sub_1D30E89EC())
    {
      break;
    }

    v49 = v433[75];
    v412(v433[69], v433[66]);
    sub_1D3065284(v49, type metadata accessor for LicenseRecord.StaticRepresentation);
    v22 = v433[90] + 1;
    if (v22 == v433[88])
    {
      goto LABEL_14;
    }
  }

  v166 = v433[77];
  v167 = v433[75];
  v168 = v433[73];
  v169 = sub_1D30E92AC();
  sub_1D3058338(v167, v168, type metadata accessor for LicenseRecord.StaticRepresentation);
  v170 = sub_1D30E8B1C();
  v171 = os_log_type_enabled(v170, v169);
  v172 = v433[73];
  if (v171)
  {
    v173 = swift_slowAlloc();
    *v173 = 134217984;
    v174 = *v172;
    sub_1D3065284(v172, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v173 + 4) = v174;
    _os_log_impl(&dword_1D2FD9000, v170, v169, "Reporting a timeout error for the license with the ID “%llu”…", v173, 0xCu);
    MEMORY[0x1D38B3760](v173, -1, -1);
  }

  else
  {
    sub_1D3065284(v433[73], type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v321 = v433[75];
  v322 = v433[5];

  v323 = *(v322 + 56);
  sub_1D30E6DDC();
  v324 = swift_allocError();
  v433[93] = v324;
  *v325 = 60;
  v326 = *v321;
  v327 = swift_task_alloc();
  v433[94] = v327;
  *v327 = v433;
  v327[1] = sub_1D30B0260;
  v328 = *MEMORY[0x1E69E9840];

  return sub_1D302438C(v324, v326);
}

uint64_t sub_1D30BFC60()
{
  v1 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Erase database", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = sub_1D30E8B1C();
  v7 = sub_1D30E92BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D2FD9000, v6, v7, "Erasing the entire database…", v8, 2u);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v9 = *(v1 + 32);
  return sub_1D30E8E9C();
}

uint64_t sub_1D30BFDBC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D30BFDE0, 0, 0);
}

uint64_t sub_1D30BFDE0()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 16);

  *(v0 + 24) = *(v6 + 48);
  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30BFF48, v8, v7);
}

uint64_t sub_1D30BFF48()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);

  v4 = sub_1D3039470(v3);
  v5 = *(v0 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_1D30BFFB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = type metadata accessor for HelperError();
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0074, 0, 0);
}

uint64_t sub_1D30C0074()
{
  v33 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1D30E8B3C();
  v0[10] = __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1D38B26B0](v5, MEMORY[0x1E69E6158]);
    v10 = sub_1D2FFEA04(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Apps were uninstalled with bundle IDs: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v11 = v0[5];
  v12 = v11[2];
  v0[11] = v12;
  if (v12)
  {
    v13 = sub_1D30E91FC();
    v0[13] = 0;
    v0[14] = 0;
    v0[12] = v13;
    v14 = v0[10];
    v15 = v11[4];
    v0[15] = v15;
    v16 = v11[5];
    v0[16] = v16;
    swift_bridgeObjectRetain_n();
    v17 = sub_1D30E8B1C();
    v18 = sub_1D30E92BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1D2FFEA04(v15, v16, &v32);
      _os_log_impl(&dword_1D2FD9000, v17, v18, "The app with the bundle ID “%{public}s” was uninstalled.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38B3760](v20, -1, -1);
      MEMORY[0x1D38B3760](v19, -1, -1);
    }

    v21 = v0[10];

    v22 = sub_1D30E928C();

    v23 = sub_1D30E8B1C();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1D2FFEA04(v15, v16, &v32);
      _os_log_impl(&dword_1D2FD9000, v23, v22, "Remove all asset packs for app with bundle ID: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D38B3760](v25, -1, -1);
      MEMORY[0x1D38B3760](v24, -1, -1);
    }

    v26 = v0[12];
    v0[17] = sub_1D30E91EC();
    v28 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v28, v27);
  }

  else
  {
    v29 = v0[9];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1D30C0450()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[6];
  v5 = v0[7];

  sub_1D30CF8A8(v3, v2, v6);
  v0[18] = v4;
  if (v4)
  {
    v7 = sub_1D30C068C;
  }

  else
  {
    v7 = sub_1D30C0500;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D30C0500()
{
  v16 = v0;
  v1 = v0[16];

  v0[19] = v0[18];
  v2 = v0[16];
  v3 = v0[10];
  v4 = sub_1D30E928C();

  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v4))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1D2FFEA04(v7, v6, &v15);
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Remove App Review record of app with bundle ID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v10 = v0[12];
  v11 = v0[6];

  v0[20] = sub_1D30E91EC();
  v13 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0974, v13, v12);
}

uint64_t sub_1D30C068C()
{
  v30 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[10];

  v4 = sub_1D30E929C();

  v5 = v1;
  v6 = sub_1D30E8B1C();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[18];
  if (v7)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1D2FFEA04(v10, v9, &v29);
    *(v11 + 12) = 2114;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_1D2FD9000, v6, v4, "The asset packs for the app with the bundle ID “%{public}s” couldn’t be removed: %{public}@", v11, 0x16u);
    sub_1D2FF14DC(v12, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  else
  {
  }

  v0[19] = 0;
  v16 = v0[16];
  v17 = v0[10];
  v18 = sub_1D30E928C();

  v19 = sub_1D30E8B1C();

  if (os_log_type_enabled(v19, v18))
  {
    v21 = v0[15];
    v20 = v0[16];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1D2FFEA04(v21, v20, &v29);
    _os_log_impl(&dword_1D2FD9000, v19, v18, "Remove App Review record of app with bundle ID: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38B3760](v23, -1, -1);
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  v24 = v0[12];
  v25 = v0[6];

  v0[20] = sub_1D30E91EC();
  v27 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0974, v27, v26);
}

uint64_t sub_1D30C0974()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[6];

  sub_1D30D2AC0(v3, v4, v5, v5, v0 + 2);
  v0[21] = v2;
  if (v2)
  {
    v6 = sub_1D30C0CEC;
  }

  else
  {
    v7 = v0[16];
    v8 = v0[3];

    v6 = sub_1D30C0A38;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D30C0A38()
{
  v22 = v0;
  v1 = v0[14] + 1;
  if (v1 == v0[11])
  {
    v2 = v0[9];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[13] = v0[21];
    v0[14] = v1;
    v5 = v0[10];
    v6 = v0[5] + 16 * v1;
    v7 = *(v6 + 32);
    v0[15] = v7;
    v8 = *(v6 + 40);
    v0[16] = v8;
    swift_bridgeObjectRetain_n();
    v9 = sub_1D30E8B1C();
    v10 = sub_1D30E92BC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1D2FFEA04(v7, v8, &v21);
      _os_log_impl(&dword_1D2FD9000, v9, v10, "The app with the bundle ID “%{public}s” was uninstalled.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1D38B3760](v12, -1, -1);
      MEMORY[0x1D38B3760](v11, -1, -1);
    }

    v13 = v0[10];

    v14 = sub_1D30E928C();

    v15 = sub_1D30E8B1C();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1D2FFEA04(v7, v8, &v21);
      _os_log_impl(&dword_1D2FD9000, v15, v14, "Remove all asset packs for app with bundle ID: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38B3760](v17, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    v18 = v0[12];
    v0[17] = sub_1D30E91EC();
    v20 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v20, v19);
  }
}

uint64_t sub_1D30C0CEC()
{
  v59 = v0;
  v1 = *(v0 + 168);
  *(v0 + 32) = v1;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v7 = *v6;
      v8 = v6[1];
      if (*(v0 + 120) == v7 && *(v0 + 128) == v8)
      {

LABEL_14:
        v28 = *(v0 + 128);
        v29 = *(v0 + 80);

        v30 = sub_1D30E927C();

        v31 = sub_1D30E8B1C();

        v32 = os_log_type_enabled(v31, v30);
        v33 = *(v0 + 128);
        if (v32)
        {
          v34 = *(v0 + 120);
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v58 = v36;
          *v35 = 136446210;
          v37 = sub_1D2FFEA04(v34, v33, &v58);

          *(v35 + 4) = v37;
          _os_log_impl(&dword_1D2FD9000, v31, v30, "The app with the bundle ID “%{public}s” isn’t an App Review app.", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x1D38B3760](v36, -1, -1);
          MEMORY[0x1D38B3760](v35, -1, -1);
        }

        else
        {
        }

        v27 = *(v0 + 32);
        goto LABEL_18;
      }

      v10 = sub_1D30E97CC();

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D3065284(v6, type metadata accessor for HelperError);
    }
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 128);
  v13 = *(v0 + 80);

  v14 = sub_1D30E929C();

  v15 = v11;
  v16 = sub_1D30E8B1C();

  v17 = os_log_type_enabled(v16, v14);
  v18 = *(v0 + 168);
  v19 = *(v0 + 128);
  if (v17)
  {
    v20 = *(v0 + 120);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58 = v23;
    *v21 = 136446466;
    v24 = sub_1D2FFEA04(v20, v19, &v58);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2114;
    v25 = v18;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v22 = v26;
    _os_log_impl(&dword_1D2FD9000, v16, v14, "The App Review record for the app with the bundle ID “%{public}s” couldn’t be removed: %{public}@", v21, 0x16u);
    sub_1D2FF14DC(v22, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38B3760](v23, -1, -1);
    MEMORY[0x1D38B3760](v21, -1, -1);

    goto LABEL_19;
  }

  v27 = v18;
LABEL_18:

LABEL_19:
  v38 = *(v0 + 112) + 1;
  if (v38 == *(v0 + 88))
  {
    v39 = *(v0 + 72);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = v38;
    v42 = *(v0 + 80);
    v43 = *(v0 + 40) + 16 * v38;
    v44 = *(v43 + 32);
    *(v0 + 120) = v44;
    v45 = *(v43 + 40);
    *(v0 + 128) = v45;
    swift_bridgeObjectRetain_n();
    v46 = sub_1D30E8B1C();
    v47 = sub_1D30E92BC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_1D2FFEA04(v44, v45, &v58);
      _os_log_impl(&dword_1D2FD9000, v46, v47, "The app with the bundle ID “%{public}s” was uninstalled.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D38B3760](v49, -1, -1);
      MEMORY[0x1D38B3760](v48, -1, -1);
    }

    v50 = *(v0 + 80);

    v51 = sub_1D30E928C();

    v52 = sub_1D30E8B1C();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_1D2FFEA04(v44, v45, &v58);
      _os_log_impl(&dword_1D2FD9000, v52, v51, "Remove all asset packs for app with bundle ID: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1D38B3760](v54, -1, -1);
      MEMORY[0x1D38B3760](v53, -1, -1);
    }

    v55 = *(v0 + 96);
    *(v0 + 136) = sub_1D30E91EC();
    v57 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v57, v56);
  }
}

void _s29ManagedBackgroundAssetsHelper0D0C8validate_5usingyAC7MessageO_AA27XPCPeerRequirementValidatorVtAC15PermissionErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121 = sub_1D30E8C6C();
  v6 = *(v121 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Helper.Message(0);
  v9 = *(*(v119 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v119);
  v120 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v114 - v12;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE314B60);
  v16 = sub_1D30E928C();
  sub_1D3058338(a1, v13, type metadata accessor for Helper.Message);
  v118 = v15;
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v117 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v116 = v3;
    v115 = v20;
    v123 = v20;
    *v19 = 136446466;
    v21 = Helper.Message.description.getter();
    v22 = a1;
    v24 = v23;
    sub_1D3065284(v13, type metadata accessor for Helper.Message);
    v25 = sub_1D2FFEA04(v21, v24, &v123);
    a1 = v22;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1D2FFEA04(0xD000000000000020, 0x80000001D30EAD70, &v123);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "Validate: %{public}s using: %{public}s", v19, 0x16u);
    v26 = v115;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v26, -1, -1);
    v27 = v19;
    a3 = v117;
    MEMORY[0x1D38B3760](v27, -1, -1);
  }

  else
  {

    sub_1D3065284(v13, type metadata accessor for Helper.Message);
  }

  v28 = v122;
  sub_1D30E8C4C();
  v29 = sub_1D30E8C8C();
  v32 = *(v6 + 8);
  v30 = v6 + 8;
  v31 = v32;
  v33 = v121;
  v32(v28, v121);
  if ((v29 & 1) != 0 && os_variant_allows_internal_security_policies())
  {
    v34 = sub_1D30E927C();
    v35 = sub_1D30E8B1C();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D2FD9000, v35, v34, "The peer has the validation-bypass entitlement and internal security policies are allowed, so no further message validation will be performed.", v36, 2u);
      MEMORY[0x1D38B3760](v36, -1, -1);
    }

    return;
  }

  v37 = v120;
  sub_1D3058338(a1, v120, type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xAu:
    case 0x21u:
      v119 = v30;
      v43 = *(v37 + 24);
      if (v43)
      {
        v118 = *(v37 + 8);
        v116 = *(v37 + 16);
        v117 = *v37;
        goto LABEL_51;
      }

      goto LABEL_78;
    case 2u:
    case 3u:
    case 5u:
    case 6u:
    case 8u:
    case 0x12u:
    case 0x15u:
    case 0x17u:
    case 0x1Bu:
    case 0x1Eu:
    case 0x2Bu:
      sub_1D3065284(v37, type metadata accessor for Helper.Message);
      goto LABEL_61;
    case 7u:
      v68 = *v37;
      v69 = *(v37 + 8);
      v70 = *(v37 + 24);
      v117 = *(v37 + 16);
      v116 = *(v37 + 32);
      v43 = *(v37 + 40);
      sub_1D2FF1804(v68, v69);
      if (sub_1D2FE4A8C(&unk_1F4EA8F08))
      {
        goto LABEL_52;
      }

      v119 = v30;
      if (v43)
      {
        v118 = v70;
        goto LABEL_51;
      }

      goto LABEL_77;
    case 9u:
    case 0x1Au:
    case 0x1Cu:
    case 0x2Au:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
      goto LABEL_61;
    case 0xBu:
      v119 = v30;
      v38 = *(v37 + 8);
      v116 = *v37;
      v73 = *(v37 + 24);
      v115 = *(v37 + 16);
      v118 = v73;
      v117 = *(v37 + 40);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v75 = *(v74 + 48);
      v76 = v37;
      v77 = *(v74 + 80);
      v78 = sub_1D30E8D5C();
      (*(*(v78 - 8) + 8))(v76 + v77, v78);
      sub_1D3065284(v76 + v75, type metadata accessor for AssetPackHost);
      goto LABEL_15;
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x11u:
      v119 = v30;
      v38 = *(v37 + 8);
      v116 = *v37;
      v39 = *(v37 + 24);
      v115 = *(v37 + 16);
      v118 = v39;
      v40 = *(v37 + 40);
      goto LABEL_14;
    case 0xFu:
      v119 = v30;
      v38 = *(v37 + 16);
      v116 = *(v37 + 8);
      v79 = *(v37 + 32);
      v115 = *(v37 + 24);
      v118 = v79;
      v40 = *(v37 + 48);
LABEL_14:
      v117 = v40;
      goto LABEL_15;
    case 0x10u:
      v119 = v30;
      v38 = *(v37 + 8);
      v116 = *v37;
      v80 = *(v37 + 24);
      v115 = *(v37 + 16);
      v118 = v80;
      v117 = *(v37 + 40);

      goto LABEL_15;
    case 0x13u:
      sub_1D3065284(v37, type metadata accessor for Helper.Message);
      if (sub_1D2FE4A8C(&unk_1F4EA8F08))
      {
        return;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      v50 = &unk_1F4EA9038;
      goto LABEL_63;
    case 0x14u:
      v81 = *(v37 + 8);

      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v119 = v30;
      v54 = *(v82 + 48);
      v83 = *(v37 + *(v82 + 80) + 8);

      v56 = sub_1D30E8A4C();
      goto LABEL_46;
    case 0x16u:
      if (*v37)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    case 0x18u:
    case 0x19u:
      sub_1D3065284(v37, type metadata accessor for Helper.Message);
      goto LABEL_60;
    case 0x1Du:
      sub_1D3065284(v37, type metadata accessor for Helper.Message);
LABEL_60:
      if ((sub_1D2FE4A8C(&unk_1F4EA8F08) & 1) == 0)
      {
        goto LABEL_61;
      }

      return;
    case 0x1Fu:
      v119 = v30;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v85 = (v37 + *(v84 + 48));
      v38 = v85[1];
      v116 = *v85;
      v86 = v85[3];
      v115 = v85[2];
      v118 = v86;
      v117 = v85[5];
      v87 = *(v37 + *(v84 + 64));

      v88 = sub_1D30E8D9C();
      (*(*(v88 - 8) + 8))(v37, v88);
LABEL_15:
      v41 = v122;
      sub_1D30E8C5C();
      v42 = sub_1D30E8C8C();
      v31(v41, v121);
      if (v42)
      {

        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D30EE930;
      v45 = v116;
      *(inited + 32) = v116;
      *(inited + 40) = v38;

      v46 = sub_1D2FE4A8C(inited);
      swift_setDeallocating();
      sub_1D30DCC4C(inited + 32);
      if ((v46 & 1) == 0)
      {
        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
        v50 = swift_allocObject();
        v50[1] = xmmword_1D30EE910;
        v50[2] = xmmword_1D30F5460;
        *(v50 + 48) = 2;
        *(v50 + 7) = v45;
        *(v50 + 8) = v38;
        *(v50 + 72) = 0;

        goto LABEL_63;
      }

      v47 = v118;
      if (!v118)
      {

        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        v50 = &unk_1F4EA8FE8;
        goto LABEL_63;
      }

      v48 = v115;
      if (sub_1D2FE53A0(v115, v47))
      {
        goto LABEL_53;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
      v49 = swift_allocObject();
      v50 = v49;
      *(v49 + 16) = xmmword_1D30EE910;
      *(v49 + 32) = xmmword_1D30F5460;
      *(v49 + 48) = 2;
      *(v49 + 56) = v48;
      *(v49 + 64) = v47;
      goto LABEL_67;
    case 0x20u:
      v119 = v30;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v63 = (v37 + v62[12]);
      v64 = v63[1];
      v117 = *v63;
      v65 = (v37 + v62[16]);
      v66 = *v65;
      v43 = v65[1];
      v67 = *(v37 + v62[20]);

      if (v43)
      {
        v116 = v66;
        v118 = v64;
        goto LABEL_50;
      }

      v109 = sub_1D30E8D9C();
      (*(*(v109 - 8) + 8))(v37, v109);
LABEL_77:
      v33 = v121;
      goto LABEL_78;
    case 0x22u:
      v119 = v30;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v90 = (v37 + *(v89 + 48));
      v91 = (v37 + *(v89 + 64));
      v43 = v91[1];
      if (!v43)
      {
        v110 = v90[1];

        v111 = sub_1D30E8D9C();
        (*(*(v111 - 8) + 8))(v37, v111);
        goto LABEL_78;
      }

      v118 = v90[1];
      v116 = *v91;
      v117 = *v90;
LABEL_50:
      v92 = sub_1D30E8D9C();
      (*(*(v92 - 8) + 8))(v37, v92);
      goto LABEL_51;
    case 0x23u:
    case 0x29u:
      goto LABEL_24;
    case 0x24u:
    case 0x26u:
      sub_1D2FF1804(*v37, *(v37 + 8));
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v119 = v30;
      v54 = *(v53 + 48);
      v55 = *(v37 + *(v53 + 64) + 8);

      v56 = sub_1D30E8D9C();
LABEL_46:
      (*(*(v56 - 8) + 8))(v37 + v54, v56);
      goto LABEL_61;
    case 0x25u:
    case 0x27u:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478);
      sub_1D2FF1804(*(v37 + *(v51 + 48)), *(v37 + *(v51 + 48) + 8));
LABEL_24:
      v52 = sub_1D30E8D9C();
      (*(*(v52 - 8) + 8))(v37, v52);
LABEL_61:
      sub_1D30E8C5C();
      v102 = sub_1D30E8C8C();
      v31(v28, v33);
      if (v102)
      {
        return;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      v50 = &unk_1F4EA8FB0;
      goto LABEL_63;
    case 0x28u:
      v119 = v30;
      sub_1D2FF1804(*v37, *(v37 + 8));
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v58 = v57[12];
      v59 = (v37 + v57[16]);
      v60 = (v37 + v57[20]);
      v43 = v60[1];
      if (v43)
      {
        v118 = v59[1];
        v116 = *v60;
        v117 = *v59;
        v61 = sub_1D30E8D5C();
        (*(*(v61 - 8) + 8))(v37 + v58, v61);
LABEL_51:
        v93 = v122;
        sub_1D30E8C5C();
        v94 = sub_1D30E8C8C();
        v31(v93, v121);
        if (v94)
        {
LABEL_52:

LABEL_53:

          return;
        }

        v122 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
        v95 = swift_initStackObject();
        *(v95 + 16) = xmmword_1D30EE930;
        v96 = v117;
        *(v95 + 32) = v117;
        v97 = v118;
        *(v95 + 40) = v118;

        v98 = sub_1D2FE4A8C(v95);
        swift_setDeallocating();
        sub_1D30DCC4C(v95 + 32);
        if (v98)
        {

          v99 = v116;
          v100 = v122;
          if (sub_1D2FE53A0(v116, v122))
          {
            goto LABEL_53;
          }

          sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
          v49 = swift_allocObject();
          v50 = v49;
          *(v49 + 16) = xmmword_1D30EE910;
          *(v49 + 32) = xmmword_1D30F5460;
          *(v49 + 48) = 2;
          *(v49 + 56) = v99;
          *(v49 + 64) = v100;
LABEL_67:
          *(v49 + 72) = 1;
        }

        else
        {

          sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
          v101 = swift_allocObject();
          v50 = v101;
          *(v101 + 16) = xmmword_1D30EE910;
          *(v101 + 32) = xmmword_1D30F5460;
          *(v101 + 48) = 2;
          *(v101 + 56) = v96;
          *(v101 + 64) = v97;
LABEL_58:
          *(v101 + 72) = 0;
        }

LABEL_63:
        *(a3 + *(type metadata accessor for Helper.PermissionError(0) + 20)) = v50;
        sub_1D3045A34(&qword_1EC74AD00, type metadata accessor for Helper.PermissionError);
        swift_willThrowTypedImpl();
        return;
      }

      v107 = v59[1];

      v108 = sub_1D30E8D5C();
      (*(*(v108 - 8) + 8))(v37 + v58, v108);
LABEL_78:
      v112 = v122;
      sub_1D30E8C5C();
      v113 = sub_1D30E8C8C();
      v31(v112, v33);
      if ((v113 & 1) == 0)
      {
        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        v50 = &unk_1F4EA8F78;
        goto LABEL_63;
      }

      return;
    default:
      v71 = *(v37 + 8);
      v119 = *v37;
      v120 = v71;
      sub_1D30E8C5C();
      v72 = sub_1D30E8C8C();
      v31(v28, v33);
      if (v72)
      {
        goto LABEL_53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
      v103 = swift_initStackObject();
      *(v103 + 16) = xmmword_1D30EE930;
      v104 = v119;
      *(v103 + 32) = v119;
      v105 = v120;
      *(v103 + 40) = v120;

      v106 = sub_1D2FE4A8C(v103);
      swift_setDeallocating();
      sub_1D30DCC4C(v103 + 32);
      if (v106)
      {
        goto LABEL_53;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
      v101 = swift_allocObject();
      v50 = v101;
      *(v101 + 16) = xmmword_1D30EE910;
      *(v101 + 32) = xmmword_1D30F5460;
      *(v101 + 48) = 2;
      *(v101 + 56) = v104;
      *(v101 + 64) = v105;
      goto LABEL_58;
  }
}

uint64_t sub_1D30C24F0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X1>, BOOL *a3@<X2>, BOOL *a4@<X8>)
{
  v24 = a3;
  v22 = a4;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 32);
  v15 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v15);
  v16 = v24;
  *(&v22 - 2) = v23;
  *(&v22 - 1) = v16;
  v26 = type metadata accessor for AppReviewRecord();
  sub_1D30E8ACC();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8EBC();
  v18 = v25;
  v19 = sub_1D30E8E1C();
  (*(v10 + 8))(v13, v9);
  if (v18)
  {
  }

  else
  {

    if (v19 >> 62)
    {
      v21 = sub_1D30E958C();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v22 = v21 != 0;
  }

  return result;
}

id sub_1D30C281C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E906C();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1D30C2904@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v39 = a2;
  v37 = a3;
  v4 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v15 = *(v40 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v36 - v17;
  sub_1D30E91FC();
  v38 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a1 + 32);
  v20 = sub_1D30E8E7C();
  v42 = &v36;
  MEMORY[0x1EEE9AC00](v20);
  *(&v36 - 16) = v39 & 1;
  v44 = type metadata accessor for AssetPackRecord(0);
  sub_1D30E8ACC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v23 = v41;
  v24 = sub_1D30E8E1C();
  (*(v15 + 8))(v18, v40);
  if (v23)
  {
  }

  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_20:

    v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *v37 = v27;
    return result;
  }

  v26 = sub_1D30E958C();
  if (!v26)
  {
    goto LABEL_20;
  }

LABEL_7:
  v43 = v22;
  result = sub_1D3028C78(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v27 = v43;
    v28 = v36;
    if ((v24 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v26; ++i)
      {
        MEMORY[0x1D38B29E0](i, v24);
        sub_1D3010570(v10);
        swift_unknownObjectRelease();
        v43 = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D3028C78(v30 > 1, v31 + 1, 1);
          v27 = v43;
        }

        *(v27 + 16) = v31 + 1;
        sub_1D3056830(v10, v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, type metadata accessor for AssetPackRecord.StaticRepresentation);
      }
    }

    else
    {
      v32 = 32;
      do
      {
        v33 = *(v24 + v32);

        sub_1D3010570(v28);

        v43 = v27;
        v35 = *(v27 + 16);
        v34 = *(v27 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D3028C78(v34 > 1, v35 + 1, 1);
          v27 = v43;
        }

        *(v27 + 16) = v35 + 1;
        sub_1D3056830(v28, v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v32 += 8;
        --v26;
      }

      while (v26);
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D30C2E70@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B000, &qword_1D30FCFC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26[-v18];
  v20 = *a1;
  sub_1D30E91FC();
  v28 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = v27 & 1;
  sub_1D30E87AC();
  v33 = 1;
  sub_1D30E87AC();
  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v29 + 8))(v7, v4);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B008, &qword_1D30FCFF0);
  v22 = v30;
  v30[3] = v21;
  v22[4] = sub_1D30E5798();
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  sub_1D2FF1768(&qword_1EC74B020, &qword_1EC74B000, &qword_1D30FCFC0);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00);
  v23 = v32;
  sub_1D30E878C();
  (*(v31 + 8))(v11, v23);
  v24 = *(v13 + 8);
  v24(v17, v12);
  v24(v19, v12);
}

uint64_t sub_1D30C32A8@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B000, &qword_1D30FCFC0);
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23[-v15];
  v17 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v9 + 8))(v12, v8);
  v29 = v24 & 1;
  sub_1D30E87AC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B030, &unk_1D30FD020);
  v19 = v26;
  v26[3] = v18;
  v19[4] = sub_1D30E58B4();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00);
  sub_1D2FF1768(&qword_1EC74B020, &qword_1EC74B000, &qword_1D30FCFC0);
  v20 = v25;
  v21 = v28;
  sub_1D30E879C();
  (*(v27 + 8))(v7, v21);
  (*(v13 + 8))(v16, v20);
}

uint64_t sub_1D30C3678(uint64_t a1)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 32);
  v3 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D30E8DFC();
}

uint64_t sub_1D30C379C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v188 = a3;
  v189 = a5;
  v191 = a4;
  v150 = a2;
  v177 = a1;
  v145 = type metadata accessor for FilePath.ResolutionError();
  v5 = *(*(v145 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v145);
  v157 = (&v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v141 - v8;
  v168 = sub_1D30E8D9C();
  v186 = *(v168 - 8);
  v9 = *(v186 + 64);
  v10 = MEMORY[0x1EEE9AC00](v168);
  v151 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v156 = &v141 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v141 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v153 = &v141 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v141 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v170 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v141 - v23;
  v184 = sub_1D30E8D5C();
  v192 = *(v184 - 8);
  v24 = v192[8];
  v25 = MEMORY[0x1EEE9AC00](v184);
  v155 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v169 = &v141 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v180 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v166 = &v141 - v31;
  v190 = type metadata accessor for AssetPackHost();
  v32 = *(*(v190 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v190);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v141 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v141 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v141 - v44;
  sub_1D30E91FC();
  v152 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = *(v177 + 32);
  sub_1D30E8E7C();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v47 - 8) + 56))(v40, 1, 1, v47);
  v48 = type metadata accessor for AssetPackRecord(0);
  v49 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8EBC();
  v50 = v193;
  v51 = sub_1D30E8E1C();
  (*(v42 + 8))(v45, v41);
  if (v50)
  {
LABEL_55:
  }

  v163 = 0;
  v164 = v46;

  sub_1D3058338(v188, v194, type metadata accessor for AssetPackHost);
  v52 = v192[2];
  v149 = v192 + 2;
  v148 = v52;
  v52(v166, v189, v184);
  v53 = *(v48 + 48);
  v54 = *(v48 + 52);
  v55 = swift_allocObject();
  v55[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A88, &qword_1D30FD030);
  *&v195 = v48;
  *(&v195 + 1) = v48;
  *&v196 = v49;
  *(&v196 + 1) = v49;
  v55[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v55 + 2);
  v179 = v49;
  v162 = v48;
  sub_1D30E8ECC();
  v56 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  swift_getKeyPath();
  v176 = v51;
  LOBYTE(v195) = 1;
  sub_1D30E8DEC();

  v161 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  sub_1D30E8AFC();
  v57 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  swift_getKeyPath();
  v58 = v150[1];
  v195 = *v150;
  v196 = v58;
  v197 = v150[2];
  sub_1D2FF6708();
  sub_1D30E8DEC();

  sub_1D3058338(v194, v35, type metadata accessor for AssetPackHost);
  v59 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EC749A60, type metadata accessor for AssetPackHost);
  sub_1D30E8DEC();

  sub_1D3065284(v35, type metadata accessor for AssetPackHost);
  v60 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  swift_getKeyPath();
  *&v195 = v191;
  sub_1D30E8DEC();

  v61 = v166;
  v62 = sub_1D30E8D4C();
  v64 = v63;
  v65 = v55[5];
  v66 = v55[6];
  v167 = v55;
  __swift_project_boxed_opaque_existential_1(v55 + 2, v65);
  swift_getKeyPath();
  *&v195 = v62;
  *(&v195 + 1) = v64;
  sub_1D30E8DEC();

  v67 = v192[1];
  v175 = v192 + 1;
  v174 = v67;
  v67(v61, v184);
  sub_1D3065284(v194, type metadata accessor for AssetPackHost);

  v69 = v176;
  if (v176 >> 62)
  {
LABEL_60:
    v70 = sub_1D30E958C();
  }

  else
  {
    v70 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = &unk_1D30EF000;
  if (!v70)
  {
LABEL_50:

    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v133 = sub_1D30E8B3C();
    __swift_project_value_buffer(v133, qword_1EE314B60);
    v134 = v150;
    sub_1D30E5940(v150, &v195);
    v135 = sub_1D30E8B1C();
    v136 = sub_1D30E92BC();
    sub_1D30E599C(v134);
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v195 = v138;
      *v137 = v71[133];
      *(v137 + 4) = sub_1D2FFEA04(*(v134 + 32), *(v134 + 40), &v195);
      *(v137 + 12) = 2082;
      *(v137 + 14) = sub_1D2FFEA04(*v134, *(v134 + 8), &v195);
      _os_log_impl(&dword_1D2FD9000, v135, v136, "Adding a record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” to the database…", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v138, -1, -1);
      MEMORY[0x1D38B3760](v137, -1, -1);
    }

    sub_1D30E8E7C();
    sub_1D30E8E4C();

    goto LABEL_55;
  }

  v72 = 0;
  v183 = v69 & 0xC000000000000001;
  v158 = v69 & 0xFFFFFFFFFFFFFF8;
  v160 = (v192 + 6);
  v73 = *(v150 + 1);
  v189 = *v150;
  v187 = v73;
  v159 = (v192 + 4);
  v165 = (v186 + 8);
  v147 = (v186 + 16);
  v74 = *(v150 + 3);
  v172 = *(v150 + 2);
  v185 = v74;
  v75 = *(v150 + 5);
  v186 = *(v150 + 4);
  v181 = v75;
  *&v68 = 136446466;
  v142 = v68;
  *&v68 = 136446722;
  v141 = v68;
  v182 = v70;
  while (1)
  {
    if (v183)
    {
      v79 = MEMORY[0x1D38B29E0](v72, v69);
      v80 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v72 >= *(v158 + 16))
      {
        goto LABEL_59;
      }

      v79 = *(v69 + 8 * v72 + 32);

      v80 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v192 = v80;
    v193 = v72;
    v81 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    v198 = v79;
    swift_getKeyPath();
    v190 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    v191 = v81;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v188 = sub_1D2FF67A4();
    v194 = v79;
    sub_1D30E8F0C();

    v82 = v195;
    v83 = v197;
    if (!*(&v196 + 1))
    {
      break;
    }

    if (v185 && v196 != __PAIR128__(v185, v172))
    {
      v84 = sub_1D30E97CC();
      if (v82 == __PAIR128__(v187, v189))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v84 = 1;
      if (v195 == __PAIR128__(v187, v189))
      {
        if (v197 == __PAIR128__(v181, v186))
        {
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

LABEL_27:
    if ((sub_1D30E97CC() & 1) == 0)
    {

      goto LABEL_9;
    }

LABEL_28:
    if (v83 != __PAIR128__(v181, v186))
    {
      goto LABEL_32;
    }

    if (v84)
    {
      goto LABEL_34;
    }

LABEL_8:

LABEL_9:
    v71 = &unk_1D30EF000;
    v76 = v182;
    v78 = v192;
    v77 = v193;
LABEL_10:
    v72 = v77 + 1;
    if (v78 == v76)
    {
      goto LABEL_50;
    }
  }

  v84 = 1;
  if (v195 != __PAIR128__(v187, v189))
  {
    goto LABEL_27;
  }

  if (v197 != __PAIR128__(v181, v186))
  {
LABEL_32:
    v85 = sub_1D30E97CC();

    if (v85 & 1) != 0 && (v84)
    {
      goto LABEL_34;
    }

    goto LABEL_8;
  }

LABEL_25:

LABEL_34:
  *&v195 = v194;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v86 = v171;
  sub_1D30E8D6C();
  v87 = *v160;
  v88 = v184;
  result = (*v160)(v86, 1, v184);
  if (result == 1)
  {
    goto LABEL_62;
  }

  v178 = *v159;
  v178(v180, v86, v88);
  *&v195 = v167;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  v90 = v184;
  sub_1D30E8F0C();

  v91 = v170;
  sub_1D30E8D6C();
  result = v87(v91, 1, v90);
  if (result != 1)
  {
    v92 = v169;
    v178(v169, v91, v90);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
    v93 = v180;
    v94 = sub_1D30E905C();
    v95 = v92;
    v96 = v174;
    v174(v95, v90);
    v96(v93, v90);
    v97 = v194;
    if (v94)
    {
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v98 = sub_1D30E8B3C();
      __swift_project_value_buffer(v98, qword_1EE314B60);

      v99 = sub_1D30E8B1C();
      v100 = sub_1D30E92BC();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v198 = v178;
        *v101 = v142;
        *&v195 = v97;
        swift_getKeyPath();
        v146 = v100;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v102 = v197;

        v103 = v194;
        v104 = sub_1D2FFEA04(v102, *(&v102 + 1), &v198);

        *(v101 + 4) = v104;
        *(v101 + 12) = 2082;
        *&v195 = v103;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v105 = v195;

        v106 = sub_1D2FFEA04(v105, *(&v105 + 1), &v198);

        *(v101 + 14) = v106;
        _os_log_impl(&dword_1D2FD9000, v99, v146, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v101, 0x16u);
        v107 = v178;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v107, -1, -1);
        MEMORY[0x1D38B3760](v101, -1, -1);

        goto LABEL_48;
      }

      v71 = &unk_1D30EF000;
      v76 = v182;
      v78 = v192;
      v77 = v193;
    }

    else
    {
      v108 = *(v177 + 16);
      v109 = v155;
      sub_1D3010008(v155);
      v198 = v97;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v110 = v195;

      v111 = v163;
      sub_1D302D670(v110, *(&v110 + 1), v157, v156);
      if (v111)
      {
        v174(v109, v90);

        v139 = v144;
        sub_1D3056830(v157, v144, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v139, v140, type metadata accessor for FilePath.ResolutionError);
      }

      v112 = v90;
      sub_1D30E8D8C();
      v148(v166, v109, v90);
      v113 = v153;
      sub_1D30E8D7C();
      v174(v109, v112);
      sub_1D3003CF4(v113, 1, v173);
      v163 = 0;
      v114 = *v165;
      v115 = v168;
      (*v165)(v113, v168);
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v116 = sub_1D30E8B3C();
      __swift_project_value_buffer(v116, qword_1EE314B60);
      v117 = v151;
      v118 = v173;
      (*v147)(v151, v173, v115);

      v119 = sub_1D30E8B1C();
      v120 = sub_1D30E92BC();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = v117;
        v122 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v198 = v178;
        *v122 = v141;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v146 = v120;
        v123 = sub_1D30E977C();
        v125 = v124;
        v114(v121, v168);
        v126 = sub_1D2FFEA04(v123, v125, &v198);

        *(v122 + 4) = v126;
        *(v122 + 12) = 2082;
        *&v195 = v194;
        swift_getKeyPath();
        v143 = v114;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v127 = v197;

        v128 = sub_1D2FFEA04(v127, *(&v127 + 1), &v198);
        v129 = v194;

        *(v122 + 14) = v128;
        *(v122 + 22) = 2082;
        *&v195 = v129;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v130 = v195;

        v131 = sub_1D2FFEA04(v130, *(&v130 + 1), &v198);

        *(v122 + 24) = v131;
        _os_log_impl(&dword_1D2FD9000, v119, v146, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v122, 0x20u);
        v132 = v178;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v132, -1, -1);
        MEMORY[0x1D38B3760](v122, -1, -1);

        v143(v173, v168);
      }

      else
      {

        v114(v117, v115);
        v114(v118, v115);
      }

LABEL_48:
      v71 = &unk_1D30EF000;
      v76 = v182;
      v78 = v192;
      v77 = v193;
    }

    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v69 = v176;
    goto LABEL_10;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1D30C52BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v165 = a4;
  v164 = a3;
  v189 = a2;
  v158 = a5;
  v6 = type metadata accessor for FilePath.ResolutionError();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v171 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v151 - v10;
  v179 = sub_1D30E8D9C();
  v159 = *(v179 - 8);
  v12 = *(v159 + 64);
  v13 = MEMORY[0x1EEE9AC00](v179);
  v163 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v170 = &v151 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v168 = &v151 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v167 = &v151 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v184 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v185 = &v151 - v26;
  v190 = sub_1D30E8D5C();
  v162 = *(v190 - 8);
  v27 = *(v162 + 64);
  v28 = MEMORY[0x1EEE9AC00](v190);
  v166 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v151 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v183 = &v151 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v151 - v35;
  v36 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v196 = &v151 - v42;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v197 = *(v199 - 1);
  v43 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v45 = &v151 - v44;
  if (qword_1EE3152C8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v46 = sub_1D30E8B3C();
  v47 = __swift_project_value_buffer(v46, qword_1EE314B60);
  v48 = sub_1D30E928C();
  sub_1D30E5940(a1, &v204);
  v186 = v47;
  v49 = sub_1D30E8B1C();
  sub_1D30E599C(a1);
  v50 = os_log_type_enabled(v49, v48);
  v169 = v32;
  v195 = a1;
  v156 = v6;
  v160 = v39;
  v155 = v11;
  if (v50)
  {
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v207 = v32;
    *v11 = 136446466;
    v51 = *(a1 + 16);
    v204 = *a1;
    v205 = v51;
    v206 = *(a1 + 32);
    sub_1D30E5940(a1, &v201);
    v52 = AssetPackRecord.GlobalID.description.getter();
    v54 = v53;

    v55 = sub_1D2FFEA04(v52, v54, &v207);

    *(v11 + 4) = v55;
    *(v11 + 6) = 2082;
    *(v11 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v207);
    _os_log_impl(&dword_1D2FD9000, v49, v48, "With record of asset pack with global ID: %{public}s body: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v32, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  a1 = *(v189 + 32);
  sub_1D30E8E7C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v56 - 8) + 56))(v196, 1, 1, v56);
  v57 = type metadata accessor for AssetPackRecord(0);
  v58 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v60 = v200;
  v61 = sub_1D30E8E1C();
  v196 = v60;
  if (!v60)
  {
    v63 = v61;
    v198 = v58;
    v181 = v57;
    v180 = a1;
    (*(v197 + 8))(v45, v199);

    v201 = v59;
    if (v63 >> 62)
    {
      v39 = sub_1D30E958C();
      v6 = v198;
      if (v39)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v39 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v198;
      if (v39)
      {
LABEL_9:
        v64 = 0;
        v194 = v63 & 0xC000000000000001;
        v193 = v63 & 0xFFFFFFFFFFFFFF8;
        v191 = v63;
        v192 = v39;
        while (1)
        {
          if (v194)
          {
            v45 = MEMORY[0x1D38B29E0](v64, v63);
            v65 = (v64 + 1);
            if (__OFADD__(v64, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              v74 = v201;
              goto LABEL_51;
            }
          }

          else
          {
            if (v64 >= *(v193 + 16))
            {
              __break(1u);
              goto LABEL_48;
            }

            v45 = *(v63 + 8 * v64 + 32);

            v65 = (v64 + 1);
            if (__OFADD__(v64, 1))
            {
              goto LABEL_45;
            }
          }

          v200 = v65;
          sub_1D30E91FC();
          v199 = sub_1D30E91EC();
          sub_1D30E91AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v203 = v45;
          swift_getKeyPath();
          sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          sub_1D30E8F0C();

          v66 = *(&v204 + 1);
          a1 = v204;
          v68 = *(&v206 + 1);
          v67 = v206;
          v70 = *v195;
          v69 = *(v195 + 8);
          v32 = *(v195 + 32);
          v71 = *(v195 + 40);
          if (*(&v205 + 1))
          {
            if (*(v195 + 24) && v205 != *(v195 + 16))
            {
              v182 = *(v195 + 40);
              v187 = v206;
              LODWORD(v197) = sub_1D30E97CC();
              if (a1 == v70)
              {
                v67 = v187;
                v71 = v182;
                if (v66 != v69)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v67 = v187;
                v71 = v182;
LABEL_33:
                a1 = v67;
                v72 = v71;
                v73 = sub_1D30E97CC();
                v71 = v72;
                v67 = a1;
                if ((v73 & 1) == 0)
                {

                  v6 = v198;
                  v63 = v191;
                  v39 = v192;
                  goto LABEL_11;
                }
              }

              if (v67 == v32)
              {
                v6 = v198;
                v39 = v192;
                if (v68 == v71)
                {

LABEL_39:
                  v63 = v191;
                  v11 = v200;
                  if ((v197 & 1) == 0)
                  {

                    goto LABEL_12;
                  }

LABEL_40:
                  sub_1D30E950C();
                  a1 = *(v201 + 16);
                  sub_1D30E953C();
                  sub_1D30E954C();
                  sub_1D30E951C();
                  goto LABEL_12;
                }

                goto LABEL_38;
              }

              goto LABEL_37;
            }

            LODWORD(v197) = 1;
            if (v204 != __PAIR128__(v69, v70))
            {
              goto LABEL_33;
            }

            LODWORD(v197) = 1;
            if (v206 == v32)
            {
              v6 = v198;
              v39 = v192;
              if (*(&v206 + 1) == v71)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            }
          }

          else
          {
            LODWORD(v197) = 1;
            if (v204 != __PAIR128__(v69, v70))
            {
              goto LABEL_33;
            }

            LODWORD(v197) = 1;
            if (v206 == v32)
            {
              v6 = v198;
              v39 = v192;
              if (*(&v206 + 1) == v71)
              {
LABEL_28:

                v63 = v191;
                v11 = v200;
                goto LABEL_40;
              }

              goto LABEL_38;
            }
          }

LABEL_37:
          v6 = v198;
          v39 = v192;
LABEL_38:
          a1 = sub_1D30E97CC();

          if (a1)
          {
            goto LABEL_39;
          }

          v63 = v191;
LABEL_11:
          v11 = v200;
LABEL_12:
          ++v64;
          if (v11 == v39)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v74 = MEMORY[0x1E69E7CC0];
LABEL_51:

    v207 = v74;
    v201 = 0;
    v202 = 1;
    if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
    {
LABEL_96:
      v75 = sub_1D30E958C();
    }

    else
    {
      v75 = *(v74 + 16);
    }

    if (v75)
    {
      v76 = 0;
      while (1)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x1D38B29E0](v76, v74);
        }

        else
        {
          if (v76 >= *(v74 + 16))
          {
            goto LABEL_94;
          }

          v77 = *(v74 + 8 * v76 + 32);
        }

        v78 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v79 = v196;
        v80 = sub_1D30D75AC(v76, v77, v189, &v201);
        v196 = v79;
        if (v79)
        {

          goto LABEL_6;
        }

        if (v80)
        {
          break;
        }

        ++v76;
        if (v78 == v75)
        {
          goto LABEL_65;
        }
      }

      if ((v202 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
LABEL_65:

      v81 = sub_1D3028008();
      if (!v81)
      {
LABEL_88:
        type metadata accessor for HelperError();
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
        swift_allocError();
        v137 = v195;
        v139 = *(v195 + 16);
        v138 = *(v195 + 32);
        *v140 = *v195;
        v140[1] = v139;
        v140[2] = v138;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D30E5940(v137, &v204);

        sub_1D30E599C(v164);
      }

      v77 = v81;
      if ((v202 & 1) == 0)
      {
LABEL_67:
        sub_1D30287B4(v201);
      }
    }

    v83 = v207;
    if (v207 >> 62)
    {
      v74 = sub_1D30E958C();
      if (v74)
      {
LABEL_70:
        v84 = 0;
        v182 = v83 & 0xC000000000000001;
        v176 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
        v177 = v83 & 0xFFFFFFFFFFFFFF8;
        v85 = (v162 + 48);
        v175 = (v162 + 32);
        v187 = (v162 + 8);
        v161 = (v162 + 16);
        v162 = v159 + 8;
        v159 += 16;
        *&v82 = 136446466;
        v152 = v82;
        *&v82 = 136446722;
        v151 = v82;
        v200 = v77;
        v174 = v83;
        v173 = v74;
        v172 = v85;
        while (1)
        {
          if (v182)
          {
            v88 = MEMORY[0x1D38B29E0](v84, v83);
            v89 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v84 >= *(v177 + 16))
            {
              goto LABEL_95;
            }

            v88 = *(v83 + 8 * v84 + 32);

            v89 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }
          }

          v191 = v89;
          v192 = v84;
          v90 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
          *&v204 = v88;
          swift_getKeyPath();
          v91 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
          v194 = v90;
          sub_1D30E8AEC();

          swift_getKeyPath();
          v197 = v88;
          sub_1D30E8F0C();

          v92 = v185;
          sub_1D30E8D6C();
          v93 = v190;
          v199 = *v85;
          result = v199(v92, 1, v190);
          if (result == 1)
          {
            goto LABEL_105;
          }

          v195 = *v175;
          (v195)(v188, v92, v93);
          *&v204 = v200;
          swift_getKeyPath();
          v193 = v91;
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();
          v94 = v190;

          v95 = v184;
          sub_1D30E8D6C();
          result = v199(v95, 1, v94);
          if (result == 1)
          {
            break;
          }

          v96 = v183;
          (v195)(v183, v95, v94);
          sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
          v97 = v188;
          v98 = sub_1D30E905C();
          v99 = *v187;
          (*v187)(v96, v94);
          v99(v97, v94);
          if (v98)
          {
            v100 = v197;

            v101 = sub_1D30E8B1C();
            v102 = sub_1D30E92BC();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              v203 = v199;
              *&v204 = v100;
              *v103 = v152;
              swift_getKeyPath();
              LODWORD(v195) = v102;
              v157 = v101;
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D2FF67A4();
              sub_1D30E8F0C();

              v104 = v206;

              v105 = sub_1D2FFEA04(v104, *(&v104 + 1), &v203);

              *(v103 + 4) = v105;
              *(v103 + 12) = 2082;
              *&v204 = v100;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v106 = v204;

              v107 = sub_1D2FFEA04(v106, *(&v106 + 1), &v203);

              *(v103 + 14) = v107;
              v108 = v157;
              _os_log_impl(&dword_1D2FD9000, v157, v195, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v103, 0x16u);
              v109 = v199;
              swift_arrayDestroy();
              MEMORY[0x1D38B3760](v109, -1, -1);
              MEMORY[0x1D38B3760](v103, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v110 = *(v189 + 16);
            v111 = v169;
            v112 = v197;
            sub_1D3010008(v169);
            v203 = v112;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            v113 = sub_1D2FF67A4();
            sub_1D30E8F0C();

            v114 = v204;

            v115 = v196;
            sub_1D302D670(v114, *(&v114 + 1), v171, v170);
            if (v115)
            {
              v99(v111, v190);

              v141 = v155;
              sub_1D3056830(v171, v155, type metadata accessor for FilePath.ResolutionError);
              sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
              swift_allocError();
              sub_1D3056830(v141, v142, type metadata accessor for FilePath.ResolutionError);

              sub_1D30E599C(v164);
            }

            v199 = v113;

            sub_1D30E8D8C();
            v116 = v190;
            (*v161)(v166, v111, v190);
            v117 = v167;
            sub_1D30E8D7C();
            v99(v111, v116);
            v118 = v178;
            sub_1D3003CF4(v117, 1, v178);
            v196 = 0;
            v119 = *v162;
            v120 = v179;
            (*v162)(v117, v179);
            v121 = v163;
            (*v159)(v163, v118, v120);

            v122 = sub_1D30E8B1C();
            v123 = sub_1D30E92BC();

            if (os_log_type_enabled(v122, v123))
            {
              v124 = swift_slowAlloc();
              LODWORD(v157) = v123;
              v125 = v124;
              v195 = swift_slowAlloc();
              v203 = v195;
              *v125 = v151;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
              v154 = v122;
              v126 = sub_1D30E977C();
              v127 = v121;
              v129 = v128;
              v119(v127, v120);
              v130 = sub_1D2FFEA04(v126, v129, &v203);

              *(v125 + 4) = v130;
              *(v125 + 12) = 2082;
              *&v204 = v112;
              swift_getKeyPath();
              v153 = v119;
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v131 = v206;

              v132 = sub_1D2FFEA04(v131, *(&v131 + 1), &v203);

              *(v125 + 14) = v132;
              *(v125 + 22) = 2082;
              *&v204 = v112;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v133 = v204;

              v134 = sub_1D2FFEA04(v133, *(&v133 + 1), &v203);

              *(v125 + 24) = v134;
              v135 = v154;
              _os_log_impl(&dword_1D2FD9000, v154, v157, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v125, 0x20u);
              v136 = v195;
              swift_arrayDestroy();
              MEMORY[0x1D38B3760](v136, -1, -1);
              MEMORY[0x1D38B3760](v125, -1, -1);

              v153(v178, v179);
            }

            else
            {

              v119(v121, v120);
              v119(v118, v120);
            }
          }

          v86 = v174;
          v74 = v173;
          v87 = v192;
          v85 = v172;
          sub_1D30E8E7C();
          sub_1D30E8E3C();

          v84 = v87 + 1;
          v83 = v86;
          if (v191 == v74)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
        return result;
      }
    }

    else
    {
      v74 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v74)
      {
        goto LABEL_70;
      }
    }

LABEL_98:
    v143 = v164;
    sub_1D30E5940(v164, &v204);
    v144 = sub_1D30E8B1C();
    v145 = sub_1D30E92BC();
    sub_1D30E599C(v143);
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v204 = v147;
      *v146 = 136446466;
      *(v146 + 4) = sub_1D2FFEA04(*(v143 + 32), *(v143 + 40), &v204);
      *(v146 + 12) = 2082;
      *(v146 + 14) = sub_1D2FFEA04(*v143, *(v143 + 8), &v204);
      _os_log_impl(&dword_1D2FD9000, v144, v145, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v146, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v147, -1, -1);
      MEMORY[0x1D38B3760](v146, -1, -1);
    }

    v148 = v160;
    v149 = v196;
    v150 = *(v165 + 32);
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    sub_1D3010570(v148);
    sub_1D30E8E7C();
    sub_1D30E8E0C();
    if (v149)
    {
      sub_1D3065284(v148, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    else
    {

      sub_1D3056830(v148, v158, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    sub_1D30E599C(v143);
  }

  (*(v197 + 8))(v45, v199);

LABEL_6:
  sub_1D30E599C(v164);
}

uint64_t sub_1D30C6FE0(uint64_t a1, unint64_t a2)
{
  v168 = a2;
  v140 = type metadata accessor for FilePath.ResolutionError();
  v3 = *(*(v140 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v140);
  v151 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v134 - v6;
  v8 = sub_1D30E8D9C();
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v134 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v148 = &v134 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v147 = &v134 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v134 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v134 - v24;
  v169 = sub_1D30E8D5C();
  v143 = *(v169 - 8);
  v25 = *(v143 + 64);
  v26 = MEMORY[0x1EEE9AC00](v169);
  v145 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v134 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v162 = &v134 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v134 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v176 = &v134 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v177 = *(v37 - 8);
  v178 = v37;
  v38 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v134 - v39;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v41 = sub_1D30E8B3C();
    v42 = __swift_project_value_buffer(v41, qword_1EE314B60);
    v43 = sub_1D30E928C();
    sub_1D30E5940(a1, &v183);
    v161 = v42;
    v44 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v45 = os_log_type_enabled(v44, v43);
    v149 = v8;
    v174 = a1;
    v139 = v7;
    v150 = v14;
    v164 = v33;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v186 = v33;
      *v46 = 136446466;
      v47 = *(a1 + 16);
      v183 = *a1;
      v184 = v47;
      v185 = *(a1 + 32);
      sub_1D30E5940(a1, &v180);
      v48 = AssetPackRecord.GlobalID.description.getter();
      v50 = v49;

      v51 = sub_1D2FFEA04(v48, v50, &v186);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v186);
      _os_log_impl(&dword_1D2FD9000, v44, v43, "With record of asset pack with global ID: %{public}s body: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v33, -1, -1);
      MEMORY[0x1D38B3760](v46, -1, -1);
    }

    v52 = v179;
    a1 = *(v168 + 32);
    sub_1D30E8E7C();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    v14 = v176;
    (*(*(v53 - 8) + 56))(v176, 1, 1, v53);
    v54 = type metadata accessor for AssetPackRecord(0);
    v55 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v57 = sub_1D30E8E1C();
    v175 = v52;
    if (v52)
    {
      (*(v177 + 8))(v40, v178);

      return a1 & 1;
    }

    v8 = v57;
    v157 = v54;
    v179 = v55;
    v159 = a1;
    (*(v177 + 8))(v40, v178);

    v180 = v56;
    v7 = v8 >> 62 ? sub_1D30E958C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v168;
    if (!v7)
    {
      break;
    }

    v40 = 0;
    v173 = (v8 & 0xC000000000000001);
    v172 = v8 & 0xFFFFFFFFFFFFFF8;
    v170 = v8;
    v171 = v7;
    while (v173)
    {
      v14 = MEMORY[0x1D38B29E0](v40, v8);
      v60 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        a1 = v180;
        v40 = v168;
        goto LABEL_48;
      }

LABEL_16:
      v178 = v60;
      sub_1D30E91FC();
      v177 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v182 = v14;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v61 = v183;
      v33 = *(&v185 + 1);
      v62 = v185;
      v63 = *v174;
      a1 = *(v174 + 1);
      v65 = *(v174 + 4);
      v64 = *(v174 + 5);
      if (*(&v184 + 1))
      {
        if (*(v174 + 3) && v184 != *(v174 + 1))
        {
          v160 = *(v174 + 5);
          v167 = v185;
          LODWORD(v176) = sub_1D30E97CC();
          if (v61 == v63)
          {
            v62 = v167;
            v64 = v160;
            if (*(&v61 + 1) == a1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v62 = v167;
            v64 = v160;
          }
        }

        else
        {
          LODWORD(v176) = 1;
          if (v183 == __PAIR128__(a1, v63))
          {
            LODWORD(v176) = 1;
            if (v185 != v65)
            {
              goto LABEL_37;
            }

            v7 = v171;
            v59 = v178;
            if (*(&v185 + 1) != v64)
            {
              goto LABEL_38;
            }

LABEL_28:

            v8 = v170;
            goto LABEL_40;
          }
        }
      }

      else
      {
        LODWORD(v176) = 1;
        if (v183 == __PAIR128__(a1, v63))
        {
          LODWORD(v176) = 1;
          if (v185 != v65)
          {
            goto LABEL_37;
          }

          v7 = v171;
          v59 = v178;
          if (*(&v185 + 1) != v64)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      a1 = v62;
      v66 = v64;
      v67 = sub_1D30E97CC();
      v64 = v66;
      v62 = a1;
      if (v67)
      {
LABEL_34:
        if (v62 == v65)
        {
          v7 = v171;
          v59 = v178;
          if (v33 == v64)
          {

            goto LABEL_39;
          }

LABEL_38:
          a1 = sub_1D30E97CC();

          if ((a1 & 1) == 0)
          {

            v8 = v170;
            goto LABEL_12;
          }

LABEL_39:
          v8 = v170;
          if ((v176 & 1) == 0)
          {

            goto LABEL_12;
          }

LABEL_40:
          sub_1D30E950C();
          a1 = *(v180 + 16);
          sub_1D30E953C();
          sub_1D30E954C();
          sub_1D30E951C();
          goto LABEL_12;
        }

LABEL_37:
        v7 = v171;
        v59 = v178;
        goto LABEL_38;
      }

      v8 = v170;
      v7 = v171;
      v59 = v178;
LABEL_12:
      ++v40;
      if (v59 == v7)
      {
        goto LABEL_46;
      }
    }

    if (v40 < *(v172 + 16))
    {
      v14 = *(v8 + 8 * v40 + 32);

      v60 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v186 = a1;
  v180 = 0;
  v181 = 1;
  if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
  {
    v68 = sub_1D30E958C();
  }

  else
  {
    v68 = *(a1 + 16);
  }

  if (!v68)
  {
LABEL_63:

    v72 = sub_1D3028008();
    if (!v72)
    {
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v128 = v174;
      v130 = *(v174 + 1);
      v129 = *(v174 + 2);
      *v131 = *v174;
      v131[1] = v130;
      v131[2] = v129;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      LOBYTE(a1) = v186;
      sub_1D30E5940(v128, &v183);

      return a1 & 1;
    }

    v8 = v72;
    if (v181)
    {
      goto LABEL_66;
    }

LABEL_65:
    sub_1D30287B4(v180);

    goto LABEL_66;
  }

  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D38B29E0](v7, a1);
      v69 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v7 >= *(a1 + 16))
      {
        goto LABEL_96;
      }

      v8 = *(a1 + 8 * v7 + 32);

      v69 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    v70 = v175;
    v71 = sub_1D30D75AC(v7, v8, v40, &v180);
    v175 = v70;
    if (v70)
    {

      return a1 & 1;
    }

    if (v71)
    {
      break;
    }

    ++v7;
    if (v69 == v68)
    {
      goto LABEL_63;
    }
  }

  if ((v181 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_66:
  v40 = v186;
  if (v186 >> 62)
  {
    v74 = sub_1D30E958C();
  }

  else
  {
    v74 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v160 = v8;
  v158 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  if (!v74)
  {
LABEL_87:
    *&v183 = v160;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    LOBYTE(a1) = v183;
    sub_1D30E8E7C();
    v127 = v175;
    sub_1D30E8E0C();
    if (v127)
    {
    }

    else
    {
    }

    return a1 & 1;
  }

  v8 = 0;
  v156 = v40 & 0xC000000000000001;
  v155 = v40 & 0xFFFFFFFFFFFFFF8;
  v75 = (v143 + 48);
  v7 = v143 + 32;
  v167 = (v143 + 8);
  v142 = (v143 + 16);
  v143 = v141 + 8;
  a1 = &unk_1D30FD088;
  v141 += 16;
  v33 = MEMORY[0x1E69E6190];
  *&v73 = 136446466;
  v135 = v73;
  *&v73 = 136446722;
  v134 = v73;
  v153 = v40;
  v152 = v74;
  v176 = v75;
  v154 = v7;
  while (1)
  {
    if (v156)
    {
      v78 = MEMORY[0x1D38B29E0](v8, v40);
      v79 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v8 >= *(v155 + 16))
      {
        goto LABEL_97;
      }

      v78 = *(v40 + 8 * v8 + 32);

      v79 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    v170 = v79;
    v171 = v8;
    v80 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    *&v183 = v78;
    swift_getKeyPath();
    v81 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    v82 = v75;
    v172 = v80;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v178 = v78;
    sub_1D30E8F0C();

    v83 = v166;
    sub_1D30E8D6C();
    v84 = v169;
    v174 = *v82;
    result = v174(v83, 1, v169);
    if (result == 1)
    {
      goto LABEL_103;
    }

    v85 = v164;
    v173 = *v154;
    v173(v164, v83, v84);
    *&v183 = v160;
    swift_getKeyPath();
    v177 = v81;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();
    v86 = v169;

    v87 = v165;
    sub_1D30E8D6C();
    result = v174(v87, 1, v86);
    if (result == 1)
    {
      break;
    }

    v88 = v162;
    v173(v162, v87, v86);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
    v89 = sub_1D30E905C();
    v90 = *v167;
    (*v167)(v88, v86);
    v90(v85, v86);
    v91 = v178;
    v92 = v163;
    if (v89)
    {

      v93 = sub_1D30E8B1C();
      v94 = sub_1D30E92BC();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v182 = v96;
        *&v183 = v91;
        *v95 = v135;
        v174 = v93;
        swift_getKeyPath();
        LODWORD(v173) = v94;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF67A4();
        sub_1D30E8F0C();

        v97 = v185;

        v98 = sub_1D2FFEA04(v97, *(&v97 + 1), &v182);

        *(v95 + 4) = v98;
        *(v95 + 12) = 2082;
        *&v183 = v178;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v100 = *(&v183 + 1);
        v99 = v183;

        v101 = sub_1D2FFEA04(v99, v100, &v182);

        *(v95 + 14) = v101;
        v93 = v174;
        _os_log_impl(&dword_1D2FD9000, v174, v173, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v96, -1, -1);
        MEMORY[0x1D38B3760](v95, -1, -1);
      }
    }

    else
    {
      v102 = *(v168 + 16);
      sub_1D3010008(v163);
      v182 = v91;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      v103 = sub_1D2FF67A4();
      sub_1D30E8F0C();

      v104 = v183;

      v105 = v175;
      sub_1D302D670(v104, *(&v104 + 1), v151, v150);
      if (v105)
      {
        v90(v92, v169);

        a1 = type metadata accessor for FilePath.ResolutionError;
        v132 = v139;
        sub_1D3056830(v151, v139, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v132, v133, type metadata accessor for FilePath.ResolutionError);

        return a1 & 1;
      }

      v174 = v103;

      sub_1D30E8D8C();
      v106 = v169;
      (*v142)(v145, v92, v169);
      v107 = v147;
      sub_1D30E8D7C();
      v90(v92, v106);
      v108 = v146;
      sub_1D3003CF4(v107, 1, v146);
      v175 = 0;
      v109 = *v143;
      v110 = v107;
      v111 = v149;
      (*v143)(v110, v149);
      v112 = v144;
      (*v141)(v144, v108, v111);
      v113 = v178;

      v114 = sub_1D30E8B1C();
      v115 = sub_1D30E92BC();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v182 = v173;
        *v116 = v134;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v138 = v114;
        v117 = sub_1D30E977C();
        v136 = v115;
        v119 = v118;
        v109(v112, v111);
        v120 = sub_1D2FFEA04(v117, v119, &v182);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2082;
        *&v183 = v113;
        swift_getKeyPath();
        v137 = v109;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v121 = v185;

        v122 = sub_1D2FFEA04(v121, *(&v121 + 1), &v182);

        *(v116 + 14) = v122;
        *(v116 + 22) = 2082;
        *&v183 = v113;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v123 = v183;

        v124 = sub_1D2FFEA04(v123, *(&v123 + 1), &v182);

        *(v116 + 24) = v124;
        v125 = v138;
        _os_log_impl(&dword_1D2FD9000, v138, v136, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v116, 0x20u);
        v126 = v173;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v126, -1, -1);
        MEMORY[0x1D38B3760](v116, -1, -1);

        v137(v108, v111);
      }

      else
      {

        v109(v112, v111);
        v109(v108, v111);
      }
    }

    v7 = v157;
    v40 = v153;
    v76 = v152;
    v77 = v171;
    a1 = &unk_1D30FD088;
    v33 = MEMORY[0x1E69E6190];
    v14 = v170;
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v8 = v77 + 1;
    v75 = v176;
    if (v14 == v76)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1D30C8B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X8>)
{
  v165 = a4;
  v193 = a2;
  v8 = type metadata accessor for FilePath.ResolutionError();
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v176 = (&v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v154 - v12;
  v183 = sub_1D30E8D9C();
  v163 = *(v183 - 8);
  v14 = *(v163 + 64);
  v15 = MEMORY[0x1EEE9AC00](v183);
  v169 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v175 = &v154 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v173 = &v154 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v172 = &v154 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v154 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v188 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v189 = &v154 - v28;
  v194 = sub_1D30E8D5C();
  v168 = *(v194 - 8);
  v29 = *(v168 + 64);
  v30 = MEMORY[0x1EEE9AC00](v194);
  v170 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v174 = &v154 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v187 = &v154 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v192 = &v154 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v164 = &v154 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v200 = &v154 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v202 = *(v42 - 8);
  v203 = v42;
  v43 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v154 - v44;
  if (qword_1EE3152C8 != -1)
  {
LABEL_108:
    swift_once();
  }

  v46 = sub_1D30E8B3C();
  v47 = __swift_project_value_buffer(v46, qword_1EE314B60);
  v48 = sub_1D30E928C();
  sub_1D30E5940(a1, &v208);
  v190 = v47;
  v49 = sub_1D30E8B1C();
  sub_1D30E599C(a1);
  v50 = os_log_type_enabled(v49, v48);
  v191 = a3;
  v199 = a1;
  v162 = a5;
  v159 = v8;
  v158 = v13;
  if (v50)
  {
    v8 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v211 = v51;
    *v8 = 136446466;
    v52 = *(a1 + 16);
    v208 = *a1;
    v209 = v52;
    v210 = *(a1 + 32);
    sub_1D30E5940(a1, &v205);
    v53 = AssetPackRecord.GlobalID.description.getter();
    v55 = v54;

    a3 = v191;

    v56 = sub_1D2FFEA04(v53, v55, &v211);

    *(v8 + 4) = v56;
    *(v8 + 6) = 2082;
    *(v8 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v211);
    _os_log_impl(&dword_1D2FD9000, v49, v48, "With record of asset pack with global ID: %{public}s body: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v51, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v57 = *(v193 + 32);
  sub_1D30E8E7C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v58 - 8) + 56))(v200, 1, 1, v58);
  a1 = type metadata accessor for AssetPackRecord(0);
  v13 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v60 = v204;
  v61 = sub_1D30E8E1C();
  v200 = v60;
  if (v60)
  {
    (*(v202 + 8))(v45, v203);

    return sub_1D30E599C(a3);
  }

  v63 = v61;
  v182 = a1;
  v184 = v57;
  (*(v202 + 8))(v45, v203);

  v205 = v59;
  if (v63 >> 62)
  {
    a5 = sub_1D30E958C();
    v201 = v13;
    if (!a5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    a5 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v201 = v13;
    if (!a5)
    {
      goto LABEL_46;
    }
  }

  a3 = 0;
  v198 = v63 & 0xC000000000000001;
  v197 = v63 & 0xFFFFFFFFFFFFFF8;
  v196 = v63;
  v195 = a5;
  while (!v198)
  {
    if (a3 >= *(v197 + 16))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v45 = *(v63 + 8 * a3 + 32);

    v64 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_44;
    }

LABEL_15:
    v204 = v64;
    sub_1D30E91FC();
    v203 = sub_1D30E91EC();
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v207 = v45;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v65 = v208;
    v8 = *(&v210 + 1);
    v66 = v210;
    v68 = *v199;
    v67 = *(v199 + 8);
    v70 = *(v199 + 32);
    v69 = *(v199 + 40);
    if (*(&v209 + 1))
    {
      if (*(v199 + 24) && v209 != *(v199 + 16))
      {
        v185 = *(v199 + 40);
        v186 = v210;
        LODWORD(v202) = sub_1D30E97CC();
        if (v65 == v68)
        {
          v66 = v186;
          v69 = v185;
          if (*(&v65 + 1) == v67)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v66 = v186;
          v69 = v185;
        }
      }

      else
      {
        LODWORD(v202) = 1;
        if (v208 == __PAIR128__(v67, v68))
        {
          LODWORD(v202) = 1;
          if (v210 == v70)
          {
            v63 = v196;
            a5 = v195;
            a1 = v204;
            if (*(&v210 + 1) == v69)
            {
              goto LABEL_27;
            }

            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      LODWORD(v202) = 1;
      if (v208 == __PAIR128__(v67, v68))
      {
        LODWORD(v202) = 1;
        if (v210 == v70)
        {
          v63 = v196;
          a5 = v195;
          a1 = v204;
          if (*(&v210 + 1) == v69)
          {
LABEL_27:

            v13 = v201;
LABEL_39:
            sub_1D30E950C();
            v75 = *(v205 + 16);
            sub_1D30E953C();
            sub_1D30E954C();
            sub_1D30E951C();
            goto LABEL_11;
          }

          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    v71 = v66;
    v72 = v69;
    v73 = sub_1D30E97CC();
    v69 = v72;
    v66 = v71;
    if (v73)
    {
LABEL_33:
      if (v66 == v70)
      {
        v63 = v196;
        a5 = v195;
        a1 = v204;
        if (v8 == v69)
        {

LABEL_38:
          v13 = v201;
          if ((v202 & 1) == 0)
          {

            goto LABEL_11;
          }

          goto LABEL_39;
        }

LABEL_37:
        v74 = sub_1D30E97CC();

        if ((v74 & 1) == 0)
        {

          v13 = v201;
          goto LABEL_11;
        }

        goto LABEL_38;
      }

LABEL_36:
      v63 = v196;
      a5 = v195;
      a1 = v204;
      goto LABEL_37;
    }

    v13 = v201;
    v63 = v196;
    a5 = v195;
    a1 = v204;
LABEL_11:
    ++a3;
    if (a1 == a5)
    {
      goto LABEL_45;
    }
  }

  v45 = MEMORY[0x1D38B29E0](a3, v63);
  v64 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    goto LABEL_15;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v59 = v205;
  a3 = v191;
LABEL_46:

  v211 = v59;
  v205 = 0;
  v206 = 1;
  if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
  {
    v76 = sub_1D30E958C();
  }

  else
  {
    v76 = *(v59 + 16);
  }

  if (v76)
  {
    a5 = 0;
    a1 = v59 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v77 = MEMORY[0x1D38B29E0](a5, v59);
      }

      else
      {
        if (a5 >= *(v59 + 16))
        {
          goto LABEL_106;
        }

        v77 = *(v59 + 8 * a5 + 32);
      }

      v45 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        goto LABEL_105;
      }

      v78 = v200;
      v79 = sub_1D30D75AC(a5, v77, v193, &v205);
      v200 = v78;
      if (v78)
      {
        break;
      }

      if (v79)
      {

        if (v206)
        {
          goto LABEL_63;
        }

LABEL_62:
        sub_1D30287B4(v205);

        goto LABEL_63;
      }

      ++a5;
      if (v45 == v76)
      {
        goto LABEL_60;
      }
    }

    return sub_1D30E599C(a3);
  }

LABEL_60:

  v80 = sub_1D3028008();
  if (!v80)
  {
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v144 = v199;
    v146 = *(v199 + 16);
    v145 = *(v199 + 32);
    *v147 = *v199;
    v147[1] = v146;
    v147[2] = v145;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D30E5940(v144, &v208);

    return sub_1D30E599C(a3);
  }

  v77 = v80;
  if ((v206 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  a1 = v211;
  if (v211 >> 62)
  {
    v45 = sub_1D30E958C();
  }

  else
  {
    v45 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v186 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v203 = v77;
  v185 = a1;
  if (v45)
  {
    v82 = 0;
    v181 = a1 & 0xC000000000000001;
    v180 = a1 & 0xFFFFFFFFFFFFFF8;
    a5 = v168 + 48;
    v195 = (v168 + 8);
    v166 = (v168 + 16);
    v167 = (v163 + 8);
    v8 = &unk_1D30FD088;
    v163 += 16;
    *&v81 = 136446466;
    v155 = v81;
    *&v81 = 136446722;
    v154 = v81;
    v178 = v45;
    v177 = v168 + 48;
    v179 = (v168 + 32);
    do
    {
      if (v181)
      {
        v83 = MEMORY[0x1D38B29E0](v82, a1);
        v84 = (v82 + 1);
        if (__OFADD__(v82, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v82 >= *(v180 + 16))
        {
          goto LABEL_107;
        }

        v83 = *(a1 + 8 * v82 + 32);

        v84 = (v82 + 1);
        if (__OFADD__(v82, 1))
        {
LABEL_84:
          __break(1u);
          break;
        }
      }

      v196 = v84;
      v197 = v82;
      v85 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
      *&v208 = v83;
      swift_getKeyPath();
      v86 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      v198 = v85;
      sub_1D30E8AEC();

      swift_getKeyPath();
      v199 = v83;
      sub_1D30E8F0C();

      v87 = v189;
      sub_1D30E8D6C();
      v88 = v194;
      v202 = *a5;
      result = (v202)(v87, 1, v194);
      if (result == 1)
      {
        goto LABEL_114;
      }

      v89 = *v179;
      (*v179)(v192, v87, v88);
      *&v208 = v203;
      swift_getKeyPath();
      v204 = v86;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();
      v90 = v194;

      v91 = v188;
      sub_1D30E8D6C();
      result = (v202)(v91, 1, v90);
      if (result == 1)
      {
        __break(1u);
LABEL_114:
        __break(1u);
        return result;
      }

      v92 = v187;
      v89(v187, v91, v90);
      sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
      v93 = v192;
      v94 = sub_1D30E905C();
      v95 = *v195;
      (*v195)(v92, v90);
      v95(v93, v90);
      if (v94)
      {
        v96 = v199;

        v97 = sub_1D30E8B1C();
        v98 = sub_1D30E92BC();

        v99 = os_log_type_enabled(v97, v98);
        v13 = v201;
        if (v99)
        {
          v100 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v207 = v202;
          *&v208 = v96;
          *v100 = v155;
          LODWORD(v161) = v98;
          swift_getKeyPath();
          v160 = v97;
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          sub_1D30E8F0C();

          v101 = v210;

          v102 = sub_1D2FFEA04(v101, *(&v101 + 1), &v207);

          *(v100 + 4) = v102;
          *(v100 + 12) = 2082;
          *&v208 = v96;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          v13 = v201;
          sub_1D30E8F0C();

          v104 = *(&v208 + 1);
          v103 = v208;

          v105 = sub_1D2FFEA04(v103, v104, &v207);

          *(v100 + 14) = v105;
          v97 = v160;
          _os_log_impl(&dword_1D2FD9000, v160, v161, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v100, 0x16u);
          v106 = v202;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v106, -1, -1);
          MEMORY[0x1D38B3760](v100, -1, -1);
        }
      }

      else
      {
        v107 = *(v193 + 16);
        v108 = v174;
        v109 = v199;
        sub_1D3010008(v174);
        v207 = v109;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v110 = sub_1D2FF67A4();
        sub_1D30E8F0C();

        v111 = v208;

        v112 = v200;
        sub_1D302D670(v111, *(&v111 + 1), v176, v175);
        if (v112)
        {
          v95(v108, v194);

          v152 = v158;
          sub_1D3056830(v176, v158, type metadata accessor for FilePath.ResolutionError);
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
          swift_allocError();
          sub_1D3056830(v152, v153, type metadata accessor for FilePath.ResolutionError);

          goto LABEL_102;
        }

        v202 = v110;

        v113 = v108;
        sub_1D30E8D8C();
        v114 = v194;
        (*v166)(v170, v108, v194);
        v115 = v172;
        v116 = v171;
        sub_1D30E8D7C();
        v95(v113, v114);
        sub_1D3003CF4(v115, 1, v116);
        v200 = 0;
        v117 = *v167;
        v118 = v183;
        (*v167)(v115, v183);
        v119 = v169;
        (*v163)(v169, v116, v118);

        v120 = sub_1D30E8B1C();
        v121 = sub_1D30E92BC();

        if (!os_log_type_enabled(v120, v121))
        {

          v117(v119, v118);
          v117(v116, v118);
          a3 = v191;
          v13 = v201;
          goto LABEL_69;
        }

        v122 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v207 = v161;
        *v122 = v154;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v160 = v120;
        v123 = sub_1D30E977C();
        v124 = v119;
        v126 = v125;
        v117(v124, v118);
        v127 = sub_1D2FFEA04(v123, v126, &v207);

        *(v122 + 4) = v127;
        *(v122 + 12) = 2082;
        *&v208 = v109;
        swift_getKeyPath();
        v157 = v117;
        v156 = v121;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v128 = v210;

        v129 = sub_1D2FFEA04(v128, *(&v128 + 1), &v207);

        *(v122 + 14) = v129;
        *(v122 + 22) = 2082;
        *&v208 = v109;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v130 = v201;
        sub_1D30E8F0C();

        v131 = v208;

        v132 = sub_1D2FFEA04(v131, *(&v131 + 1), &v207);

        *(v122 + 24) = v132;
        v133 = v160;
        _os_log_impl(&dword_1D2FD9000, v160, v156, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v122, 0x20u);
        v134 = v161;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v134, -1, -1);
        v135 = v122;
        v13 = v130;
        MEMORY[0x1D38B3760](v135, -1, -1);

        v157(v116, v183);
      }

      a3 = v191;
LABEL_69:
      v77 = v203;
      a1 = v185;
      v45 = v178;
      sub_1D30E8E7C();
      sub_1D30E8E3C();

      v82 = v197 + 1;
      a5 = v177;
      v8 = &unk_1D30FD088;
    }

    while (v196 != v45);
  }

  sub_1D30E5940(a3, &v208);
  v136 = sub_1D30E8B1C();
  v137 = sub_1D30E92BC();
  sub_1D30E599C(a3);
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v208 = v139;
    *v138 = 136446722;
    *(v138 + 4) = sub_1D2FFEA04(*(a3 + 32), *(a3 + 40), &v208);
    *(v138 + 12) = 2082;
    *(v138 + 14) = sub_1D2FFEA04(*a3, *(a3 + 8), &v208);
    *(v138 + 22) = 2082;
    v140 = v165;
    if (v165)
    {
      v141 = 0x6C62616C69617661;
    }

    else
    {
      v141 = 0x616C696176616E75;
    }

    if (v165)
    {
      v142 = 0xE900000000000065;
    }

    else
    {
      v142 = 0xEB00000000656C62;
    }

    v143 = sub_1D2FFEA04(v141, v142, &v208);

    *(v138 + 24) = v143;
    v77 = v203;
    _os_log_impl(&dword_1D2FD9000, v136, v137, "Making the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” %{public}s…", v138, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v139, -1, -1);
    MEMORY[0x1D38B3760](v138, -1, -1);
  }

  else
  {

    v140 = v165;
  }

  v148 = v194;
  v149 = v164;
  *&v208 = v77;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v154 - 2) = v77;
  *(&v154 - 8) = v140 & 1;
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  v151 = v200;
  sub_1D30E8ADC();

  sub_1D3010008(v149);
  sub_1D30E8E7C();
  sub_1D30E8E0C();
  if (v151)
  {
    (*(v168 + 8))(v149, v148);

LABEL_102:
  }

  else
  {

    (*(v168 + 32))(v162, v149, v148);
  }

  return sub_1D30E599C(v191);
}

uint64_t sub_1D30CA8DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a5;
  v180 = a4;
  v179 = a3;
  v178 = a2;
  v146 = a6;
  v7 = type metadata accessor for FilePath.ResolutionError();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v162 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v141 - v11;
  v173 = sub_1D30E8D9C();
  v150 = *(v173 - 8);
  v13 = *(v150 + 64);
  v14 = MEMORY[0x1EEE9AC00](v173);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v141 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v159 = &v141 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v158 = &v141 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v170 = &v141 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v176 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v141 - v29;
  v182 = sub_1D30E8D5C();
  v155 = *(v182 - 8);
  v30 = *(v155 + 64);
  v31 = MEMORY[0x1EEE9AC00](v182);
  v157 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v160 = &v141 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v175 = &v141 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v181 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v151 = &v141 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v188 = &v141 - v42;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v189 = *(v191 - 8);
  v43 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v45 = &v141 - v44;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v46 = sub_1D30E8B3C();
    v47 = __swift_project_value_buffer(v46, qword_1EE314B60);
    v48 = sub_1D30E928C();
    sub_1D30E5940(a1, &v196);
    v174 = v47;
    v49 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v50 = os_log_type_enabled(v49, v48);
    v156 = v16;
    v187 = a1;
    v148 = v7;
    v147 = v12;
    v161 = v19;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v199 = v19;
      *v51 = 136446466;
      v52 = *(a1 + 16);
      v196 = *a1;
      v197 = v52;
      v198 = *(a1 + 32);
      sub_1D30E5940(a1, &v193);
      v53 = AssetPackRecord.GlobalID.description.getter();
      v55 = v54;

      v56 = sub_1D2FFEA04(v53, v55, &v199);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v199);
      _os_log_impl(&dword_1D2FD9000, v49, v48, "With record of asset pack with global ID: %{public}s body: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v51, -1, -1);
    }

    a1 = *(v178 + 32);
    sub_1D30E8E7C();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v57 - 8) + 56))(v188, 1, 1, v57);
    v58 = type metadata accessor for AssetPackRecord(0);
    v16 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v60 = v192;
    v61 = sub_1D30E8E1C();
    v188 = v60;
    if (v60)
    {
      (*(v189 + 8))(v45, v191);

      goto LABEL_6;
    }

    v12 = v61;
    v168 = v58;
    v169 = a1;
    (*(v189 + 8))(v45, v191);

    v193 = v59;
    v7 = v12 >> 62 ? sub_1D30E958C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v178;
    v190 = v16;
    if (!v7)
    {
      break;
    }

    v45 = 0;
    v186 = v12 & 0xC000000000000001;
    v185 = v12 & 0xFFFFFFFFFFFFFF8;
    v184 = v12;
    v183 = v7;
    while (v186)
    {
      v64 = MEMORY[0x1D38B29E0](v45, v12);
      v65 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        a1 = v193;
        v45 = v178;
        goto LABEL_49;
      }

LABEL_17:
      v192 = v65;
      sub_1D30E91FC();
      v191 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v195 = v64;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v66 = *(&v196 + 1);
      a1 = v196;
      v19 = *(&v198 + 1);
      v67 = v198;
      v69 = *v187;
      v68 = *(v187 + 8);
      v71 = *(v187 + 32);
      v70 = *(v187 + 40);
      if (*(&v197 + 1))
      {
        if (*(v187 + 24) && v197 != *(v187 + 16))
        {
          v171 = *(v187 + 40);
          v172 = v198;
          LODWORD(v189) = sub_1D30E97CC();
          if (a1 == v69)
          {
            v67 = v172;
            v70 = v171;
            if (v66 != v68)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v67 = v172;
            v70 = v171;
LABEL_34:
            a1 = v67;
            v72 = v70;
            v73 = sub_1D30E97CC();
            v70 = v72;
            v67 = a1;
            if ((v73 & 1) == 0)
            {

              v16 = v190;
              v12 = v184;
              v7 = v183;
              goto LABEL_12;
            }
          }

          if (v67 == v71)
          {
            v12 = v184;
            v7 = v183;
            if (v19 == v70)
            {

LABEL_40:
              v16 = v190;
              v63 = v192;
              if ((v189 & 1) == 0)
              {

                goto LABEL_13;
              }

LABEL_41:
              sub_1D30E950C();
              a1 = *(v193 + 16);
              sub_1D30E953C();
              sub_1D30E954C();
              sub_1D30E951C();
              goto LABEL_13;
            }

            goto LABEL_39;
          }

          goto LABEL_38;
        }

        LODWORD(v189) = 1;
        if (v196 != __PAIR128__(v68, v69))
        {
          goto LABEL_34;
        }

        LODWORD(v189) = 1;
        if (v198 == v71)
        {
          v12 = v184;
          v7 = v183;
          if (*(&v198 + 1) == v70)
          {
            goto LABEL_29;
          }

          goto LABEL_39;
        }
      }

      else
      {
        LODWORD(v189) = 1;
        if (v196 != __PAIR128__(v68, v69))
        {
          goto LABEL_34;
        }

        LODWORD(v189) = 1;
        if (v198 == v71)
        {
          v12 = v184;
          v7 = v183;
          if (*(&v198 + 1) == v70)
          {
LABEL_29:

            v16 = v190;
            v63 = v192;
            goto LABEL_41;
          }

          goto LABEL_39;
        }
      }

LABEL_38:
      v12 = v184;
      v7 = v183;
LABEL_39:
      a1 = sub_1D30E97CC();

      if (a1)
      {
        goto LABEL_40;
      }

      v16 = v190;
LABEL_12:
      v63 = v192;
LABEL_13:
      ++v45;
      if (v63 == v7)
      {
        goto LABEL_47;
      }
    }

    if (v45 < *(v185 + 16))
    {
      v64 = *(v12 + 8 * v45 + 32);

      v65 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_49:

  v199 = a1;
  v193 = 0;
  v194 = 1;
  if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
  {
    v74 = sub_1D30E958C();
  }

  else
  {
    v74 = *(a1 + 16);
  }

  if (!v74)
  {
LABEL_64:

    v79 = sub_1D3028008();
    if (!v79)
    {
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v135 = v187;
      v137 = *(v187 + 16);
      v136 = *(v187 + 32);
      *v138 = *v187;
      v138[1] = v137;
      v138[2] = v136;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D30E5940(v135, &v196);

      sub_1D30E599C(v179);
    }

    v75 = v79;
    if (v194)
    {
      goto LABEL_67;
    }

LABEL_66:
    sub_1D30287B4(v193);

    goto LABEL_67;
  }

  v7 = 0;
  v12 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v75 = MEMORY[0x1D38B29E0](v7, a1);
      v76 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v7 >= *(a1 + 16))
      {
        goto LABEL_98;
      }

      v75 = *(a1 + 8 * v7 + 32);

      v76 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v77 = v188;
    v78 = sub_1D30D75AC(v7, v75, v45, &v193);
    v188 = v77;
    if (v77)
    {

      goto LABEL_6;
    }

    if (v78)
    {
      break;
    }

    ++v7;
    if (v76 == v74)
    {
      goto LABEL_64;
    }
  }

  if ((v194 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_67:
  v12 = v199;
  if (v199 >> 62)
  {
    v81 = sub_1D30E958C();
  }

  else
  {
    v81 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v180;
  v82 = v179;
  if (!v81)
  {
LABEL_89:
    v133 = v151;
    v134 = v188;
    sub_1D30CF228(v75, v82, a1, v151);
    if (v134)
    {

      sub_1D30E599C(v82);
    }

    sub_1D30E8E7C();
    sub_1D30E8E0C();

    (*(v155 + 32))(v146, v133, v182);
LABEL_6:
    sub_1D30E599C(v179);
  }

  v45 = 0;
  v172 = v12 & 0xC000000000000001;
  v167 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v171 = v12 & 0xFFFFFFFFFFFFFF8;
  v19 = (v155 + 48);
  v166 = (v155 + 32);
  v183 = (v155 + 8);
  v153 = (v155 + 16);
  v154 = (v150 + 8);
  v16 = &unk_1D30FD088;
  v150 += 16;
  *&v80 = 136446466;
  v142 = v80;
  *&v80 = 136446722;
  v141 = v80;
  v191 = v75;
  v165 = v12;
  v164 = v81;
  v163 = (v155 + 48);
  while (1)
  {
    if (v172)
    {
      v87 = MEMORY[0x1D38B29E0](v45, v12);
      v88 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v45 >= *(v171 + 16))
      {
        goto LABEL_99;
      }

      v87 = *(v12 + 8 * v45 + 32);

      v88 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v184 = v88;
    v185 = v45;
    v89 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    *&v196 = v87;
    swift_getKeyPath();
    v90 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    v186 = v89;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v187 = v87;
    sub_1D30E8F0C();

    v91 = v177;
    sub_1D30E8D6C();
    v92 = v182;
    v189 = *v19;
    result = (v189)(v91, 1, v182);
    if (result == 1)
    {
      goto LABEL_105;
    }

    v93 = *v166;
    (*v166)(v181, v91, v92);
    *&v196 = v191;
    swift_getKeyPath();
    v192 = v90;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();
    v94 = v182;

    v95 = v176;
    sub_1D30E8D6C();
    result = (v189)(v95, 1, v94);
    if (result == 1)
    {
      break;
    }

    v96 = v175;
    v93(v175, v95, v94);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
    v97 = v181;
    v98 = sub_1D30E905C();
    v99 = *v183;
    (*v183)(v96, v94);
    v99(v97, v94);
    if (v98)
    {
      v7 = v187;

      v100 = sub_1D30E8B1C();
      v101 = sub_1D30E92BC();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v195 = v189;
        *&v196 = v7;
        *v102 = v142;
        swift_getKeyPath();
        LODWORD(v149) = v101;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF67A4();
        sub_1D30E8F0C();

        v103 = v198;

        v104 = sub_1D2FFEA04(v103, *(&v103 + 1), &v195);

        *(v102 + 4) = v104;
        *(v102 + 12) = 2082;
        *&v196 = v7;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v105 = v196;

        v106 = sub_1D2FFEA04(v105, *(&v105 + 1), &v195);

        *(v102 + 14) = v106;
        _os_log_impl(&dword_1D2FD9000, v100, v149, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v102, 0x16u);
        v107 = v189;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v107, -1, -1);
        MEMORY[0x1D38B3760](v102, -1, -1);
      }
    }

    else
    {
      v108 = *(v178 + 16);
      v109 = v160;
      v7 = v187;
      sub_1D3010008(v160);
      v195 = v7;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      v110 = sub_1D2FF67A4();
      sub_1D30E8F0C();

      v111 = v196;

      v112 = v188;
      sub_1D302D670(v111, *(&v111 + 1), v162, v161);
      v113 = v154;
      if (v112)
      {
        v99(v109, v182);

        v139 = v147;
        sub_1D3056830(v162, v147, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v139, v140, type metadata accessor for FilePath.ResolutionError);

        sub_1D30E599C(v179);
      }

      v189 = v110;

      sub_1D30E8D8C();
      v114 = v182;
      (*v153)(v157, v109, v182);
      v115 = v158;
      sub_1D30E8D7C();
      v99(v109, v114);
      v116 = v170;
      sub_1D3003CF4(v115, 1, v170);
      v188 = 0;
      v117 = *v113;
      v118 = v173;
      (*v113)(v115, v173);
      v119 = v156;
      (*v150)(v156, v116, v118);

      v120 = sub_1D30E8B1C();
      v121 = sub_1D30E92BC();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v195 = v149;
        *v122 = v141;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v145 = v121;
        v123 = sub_1D30E977C();
        v125 = v124;
        v117(v119, v173);
        v126 = sub_1D2FFEA04(v123, v125, &v195);

        *(v122 + 4) = v126;
        *(v122 + 12) = 2082;
        *&v196 = v7;
        v143 = v120;
        swift_getKeyPath();
        v144 = v117;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v127 = v198;

        v128 = sub_1D2FFEA04(v127, *(&v127 + 1), &v195);

        *(v122 + 14) = v128;
        *(v122 + 22) = 2082;
        *&v196 = v7;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v129 = v196;

        v130 = sub_1D2FFEA04(v129, *(&v129 + 1), &v195);

        *(v122 + 24) = v130;
        v131 = v143;
        _os_log_impl(&dword_1D2FD9000, v143, v145, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v122, 0x20u);
        v132 = v149;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v132, -1, -1);
        MEMORY[0x1D38B3760](v122, -1, -1);

        v144(v170, v173);
      }

      else
      {

        v117(v119, v118);
        v117(v116, v118);
      }
    }

    v75 = v191;
    v12 = v165;
    v83 = v164;
    v84 = v185;
    v19 = v163;
    v85 = v184;
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v45 = v84 + 1;
    v86 = v85 == v83;
    a1 = v180;
    v82 = v179;
    v16 = &unk_1D30FD088;
    if (v86)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_1D30CC4DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a3;
  v5 = type metadata accessor for FilePath.ResolutionError();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v168 = (&v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v148 - v9;
  v11 = sub_1D30E8D9C();
  v156 = *(v11 - 8);
  v12 = *(v156 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v161 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v167 = &v148 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v164 = &v148 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v163 = &v148 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v148 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v182 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v148 - v26;
  v185 = sub_1D30E8D5C();
  v160 = *(v185 - 8);
  v27 = *(v160 + 64);
  v28 = MEMORY[0x1EEE9AC00](v185);
  v162 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v166 = &v148 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v181 = &v148 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v184 = &v148 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v193 = &v148 - v37;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v192 = *(v194 - 8);
  v38 = *(v192 + 8);
  MEMORY[0x1EEE9AC00](v194);
  v40 = &v148 - v39;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v41 = sub_1D30E8B3C();
    v42 = __swift_project_value_buffer(v41, qword_1EE314B60);
    v43 = sub_1D30E928C();
    sub_1D30E5940(a1, &v199);
    v180 = v42;
    v44 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v45 = os_log_type_enabled(v44, v43);
    v177 = a2;
    v165 = v11;
    v190 = a1;
    v154 = v5;
    v153 = v10;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v202 = v47;
      *v46 = 136446466;
      v48 = *(a1 + 16);
      v199 = *a1;
      v200 = v48;
      v201 = *(a1 + 32);
      sub_1D30E5940(a1, &v196);
      v49 = AssetPackRecord.GlobalID.description.getter();
      v51 = v50;

      v52 = v177;

      v53 = sub_1D2FFEA04(v49, v51, &v202);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v202);
      _os_log_impl(&dword_1D2FD9000, v44, v43, "With record of asset pack with global ID: %{public}s body: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      v54 = v47;
      a2 = v52;
      MEMORY[0x1D38B3760](v54, -1, -1);
      MEMORY[0x1D38B3760](v46, -1, -1);
    }

    a1 = v195;
    v55 = v193;
    v56 = *(a2 + 32);
    sub_1D30E8E7C();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
    v10 = type metadata accessor for AssetPackRecord(0);
    v58 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v60 = sub_1D30E8E1C();
    v191 = a1;
    if (a1)
    {
      (*(v192 + 1))(v40, v194);
    }

    v11 = v60;
    v193 = v58;
    v174 = v10;
    v176 = v56;
    (*(v192 + 1))(v40, v194);

    v196 = v59;
    if (!(v11 >> 62))
    {
      v62 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = v193;
      if (!v62)
      {
        break;
      }

      goto LABEL_8;
    }

    v62 = sub_1D30E958C();
    v5 = v193;
    if (!v62)
    {
      break;
    }

LABEL_8:
    a1 = 0;
    v189 = v11 & 0xC000000000000001;
    v188 = v11 & 0xFFFFFFFFFFFFFF8;
    v186 = v11;
    v187 = v62;
    while (v189)
    {
      v10 = MEMORY[0x1D38B29E0](a1, v11);
      v64 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        v59 = v196;
        a2 = v177;
        goto LABEL_45;
      }

LABEL_14:
      v195 = v64;
      sub_1D30E91FC();
      v194 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v198 = v10;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v65 = v199;
      a2 = *(&v201 + 1);
      v66 = v201;
      v68 = *v190;
      v67 = *(v190 + 8);
      v70 = *(v190 + 32);
      v69 = *(v190 + 40);
      if (*(&v200 + 1))
      {
        if (*(v190 + 24) && v200 != *(v190 + 16))
        {
          v178 = *(v190 + 40);
          v179 = v201;
          LODWORD(v192) = sub_1D30E97CC();
          if (v65 == v68)
          {
            v66 = v179;
            v69 = v178;
            if (*(&v65 + 1) == v67)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v66 = v179;
            v69 = v178;
          }
        }

        else
        {
          LODWORD(v192) = 1;
          if (v199 == __PAIR128__(v67, v68))
          {
            LODWORD(v192) = 1;
            if (v201 != v70)
            {
              goto LABEL_35;
            }

            v5 = v193;
            v63 = v187;
            v40 = v195;
            if (*(&v201 + 1) != v69)
            {
              goto LABEL_36;
            }

LABEL_26:

            v11 = v186;
            goto LABEL_38;
          }
        }
      }

      else
      {
        LODWORD(v192) = 1;
        if (v199 == __PAIR128__(v67, v68))
        {
          LODWORD(v192) = 1;
          if (v201 != v70)
          {
            goto LABEL_35;
          }

          v5 = v193;
          v63 = v187;
          v40 = v195;
          if (*(&v201 + 1) != v69)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }
      }

      v71 = v66;
      v72 = v69;
      v73 = sub_1D30E97CC();
      v69 = v72;
      v66 = v71;
      if (v73)
      {
LABEL_32:
        if (v66 == v70)
        {
          v5 = v193;
          v63 = v187;
          v40 = v195;
          if (a2 == v69)
          {

            goto LABEL_37;
          }

LABEL_36:
          v74 = sub_1D30E97CC();

          if ((v74 & 1) == 0)
          {

            v11 = v186;
            goto LABEL_10;
          }

LABEL_37:
          v11 = v186;
          if ((v192 & 1) == 0)
          {

            goto LABEL_10;
          }

LABEL_38:
          sub_1D30E950C();
          v75 = *(v196 + 16);
          sub_1D30E953C();
          sub_1D30E954C();
          sub_1D30E951C();
          goto LABEL_10;
        }

LABEL_35:
        v5 = v193;
        v63 = v187;
        v40 = v195;
        goto LABEL_36;
      }

      v5 = v193;
      v11 = v186;
      v63 = v187;
      v40 = v195;
LABEL_10:
      ++a1;
      if (v40 == v63)
      {
        goto LABEL_44;
      }
    }

    if (a1 < *(v188 + 16))
    {
      v10 = *(v11 + 8 * a1 + 32);

      v64 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_43;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
  }

LABEL_45:

  v202 = v59;
  v196 = 0;
  v197 = 1;
  if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
  {
    v76 = sub_1D30E958C();
  }

  else
  {
    v76 = *(v59 + 16);
  }

  if (!v76)
  {
LABEL_60:

    v80 = sub_1D3028008();
    v5 = v193;
    if (!v80)
    {
LABEL_84:
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v140 = v190;
      v142 = *(v190 + 16);
      v141 = *(v190 + 32);
      *v143 = *v190;
      v143[1] = v142;
      v143[2] = v141;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D30E5940(v140, &v199);
    }

    v40 = v80;
    if (v197)
    {
      goto LABEL_63;
    }

LABEL_62:
    sub_1D30287B4(v196);

    goto LABEL_63;
  }

  v5 = 0;
  v10 = v59 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v40 = MEMORY[0x1D38B29E0](v5, v59);
      v77 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 >= *(v59 + 16))
      {
        goto LABEL_90;
      }

      v40 = *(v59 + 8 * v5 + 32);

      v77 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v78 = v191;
    v79 = sub_1D30D75AC(v5, v40, a2, &v196);
    v191 = v78;
    if (v78)
    {
    }

    if (v79)
    {
      break;
    }

    ++v5;
    if (v77 == v76)
    {
      goto LABEL_60;
    }
  }

  v5 = v193;
  if ((v197 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  v10 = v202;
  if (v202 >> 62)
  {
    v82 = sub_1D30E958C();
    if (!v82)
    {
      goto LABEL_97;
    }

LABEL_65:
    v11 = 0;
    v179 = v10 & 0xC000000000000001;
    v173 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    v178 = v10 & 0xFFFFFFFFFFFFFF8;
    a1 = v160 + 48;
    v186 = (v160 + 8);
    v158 = (v160 + 16);
    v159 = (v156 + 8);
    v156 += 16;
    *&v81 = 136446466;
    v149 = v81;
    *&v81 = 136446722;
    v148 = v81;
    v192 = v40;
    v171 = v10;
    v170 = v82;
    v169 = v160 + 48;
    v172 = (v160 + 32);
    while (1)
    {
      if (v179)
      {
        v86 = MEMORY[0x1D38B29E0](v11, v10);
        v87 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v11 >= *(v178 + 16))
        {
          goto LABEL_91;
        }

        v85 = *(v10 + 8 * v11 + 32);

        v87 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }
      }

      v187 = v87;
      v88 = v86;
      v188 = v11;
      v89 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
      *&v199 = v86;
      swift_getKeyPath();
      v90 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      v189 = v89;
      sub_1D30E8AEC();

      swift_getKeyPath();
      v195 = v88;
      sub_1D30E8F0C();

      v91 = v183;
      sub_1D30E8D6C();
      v92 = v185;
      v190 = *a1;
      result = (v190)(v91, 1, v185);
      if (result == 1)
      {
        goto LABEL_102;
      }

      v93 = *v172;
      (*v172)(v184, v91, v92);
      *&v199 = v192;
      swift_getKeyPath();
      v194 = v90;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();
      v94 = v185;

      v95 = v182;
      sub_1D30E8D6C();
      result = (v190)(v95, 1, v94);
      if (result == 1)
      {
        __break(1u);
LABEL_102:
        __break(1u);
        return result;
      }

      v96 = v181;
      v93(v181, v95, v94);
      sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
      v97 = v184;
      v98 = sub_1D30E905C();
      v99 = *v186;
      (*v186)(v96, v94);
      v99(v97, v94);
      if (v98)
      {
        v100 = v195;

        v101 = sub_1D30E8B1C();
        v102 = sub_1D30E92BC();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v198 = v190;
          *&v199 = v100;
          *v103 = v149;
          LODWORD(v155) = v102;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          a2 = v193;
          sub_1D30E8F0C();

          v104 = v201;

          v105 = sub_1D2FFEA04(v104, *(&v104 + 1), &v198);
          v106 = v195;

          *(v103 + 4) = v105;
          *(v103 + 12) = 2082;
          *&v199 = v106;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v107 = v199;

          v108 = sub_1D2FFEA04(v107, *(&v107 + 1), &v198);

          *(v103 + 14) = v108;
          _os_log_impl(&dword_1D2FD9000, v101, v155, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v103, 0x16u);
          v109 = v190;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v109, -1, -1);
          MEMORY[0x1D38B3760](v103, -1, -1);

          goto LABEL_68;
        }
      }

      else
      {
        v110 = *(v177 + 16);
        v111 = v166;
        v112 = v195;
        sub_1D3010008(v166);
        v198 = v112;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v113 = sub_1D2FF67A4();
        sub_1D30E8F0C();

        v114 = v199;

        v115 = v191;
        sub_1D302D670(v114, *(&v114 + 1), v168, v167);
        if (v115)
        {
          v99(v111, v185);

          v144 = v153;
          sub_1D3056830(v168, v153, type metadata accessor for FilePath.ResolutionError);
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
          swift_allocError();
          sub_1D3056830(v144, v145, type metadata accessor for FilePath.ResolutionError);
        }

        v190 = v113;

        sub_1D30E8D8C();
        v116 = v111;
        v117 = v111;
        v118 = v185;
        (*v158)(v162, v116, v185);
        v119 = v163;
        sub_1D30E8D7C();
        v120 = v118;
        v121 = v175;
        v99(v117, v120);
        sub_1D3003CF4(v119, 1, v121);
        v191 = 0;
        v122 = *v159;
        v123 = v165;
        (*v159)(v119, v165);
        v124 = v161;
        (*v156)(v161, v121, v123);

        v125 = sub_1D30E8B1C();
        v126 = sub_1D30E92BC();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v152 = v126;
          v128 = v127;
          v155 = swift_slowAlloc();
          v198 = v155;
          *v128 = v148;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v151 = v125;
          v129 = sub_1D30E977C();
          v131 = v130;
          v122(v124, v123);
          v132 = sub_1D2FFEA04(v129, v131, &v198);

          *(v128 + 4) = v132;
          *(v128 + 12) = 2082;
          *&v199 = v195;
          swift_getKeyPath();
          v150 = v122;
          sub_1D30E8AEC();

          swift_getKeyPath();
          a2 = v193;
          sub_1D30E8F0C();

          v133 = v201;

          v134 = v195;
          v135 = sub_1D2FFEA04(v133, *(&v133 + 1), &v198);

          *(v128 + 14) = v135;
          *(v128 + 22) = 2082;
          *&v199 = v134;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v136 = v199;

          v137 = sub_1D2FFEA04(v136, *(&v136 + 1), &v198);

          *(v128 + 24) = v137;
          v138 = v151;
          _os_log_impl(&dword_1D2FD9000, v151, v152, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v128, 0x20u);
          v139 = v155;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v139, -1, -1);
          MEMORY[0x1D38B3760](v128, -1, -1);

          v150(v175, v123);
          goto LABEL_68;
        }

        v122(v124, v123);
        v122(v121, v123);
      }

      a2 = v193;
LABEL_68:
      v40 = v192;
      v10 = v171;
      v83 = v170;
      v84 = v188;
      sub_1D30E8E7C();
      sub_1D30E8E3C();

      v11 = v84 + 1;
      v5 = a2;
      a1 = v169;
      if (v187 == v83)
      {
        goto LABEL_97;
      }
    }
  }

  v82 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v82)
  {
    goto LABEL_65;
  }

LABEL_97:
  v146 = v157;
  sub_1D3010008(v157);
  sub_1D30E8E7C();
  v147 = v191;
  sub_1D30E8E0C();
  if (v147)
  {
    (*(v160 + 8))(v146, v185);
  }

  else
  {
  }
}