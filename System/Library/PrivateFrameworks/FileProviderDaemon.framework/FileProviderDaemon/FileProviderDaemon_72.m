void sub_1CF782070(int a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v22 = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v19, v20);
  sub_1CEFE9EB8(&v21, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v18, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  *&v21 = v16;
  BYTE8(v21) = 1;
  v17 = v16;
  a3(&v21);
}

void sub_1CF782284(int a1, id a2, void (*a3)(void, void, id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1CEFE9EB8(v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v17, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  a3(0, 0, v16);
}

void sub_1CF782488(int a1, id a2, void (*a3)(void, id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1CEFE9EB8(v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v17, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  a3(0, v16);
}

uint64_t sub_1CF782688(NSObject *a1, int a2, uint64_t a3, void *a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(id), char *a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t), char *a14, id a15, uint64_t a16, uint64_t (*a17)(uint64_t), char *a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t), void *a24, uint64_t (*a25)(uint64_t), uint64_t (*a26)(uint64_t))
{
  v330 = a3;
  LODWORD(v331) = a2;
  v338 = a10;
  v30 = sub_1CF9E63A8();
  v304 = *(v30 - 8);
  v305 = v30;
  v31 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v303 = &v301 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E53C8();
  v328 = *(v33 - 8);
  v329 = v33;
  v34 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v327 = &v301 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E6388();
  v323 = *(v36 - 8);
  v324 = v36;
  v37 = *(v323 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v319 = (&v301 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v320 = &v301 - v40;
  v41 = sub_1CF9E6498();
  v321 = *(v41 - 8);
  v322 = v41;
  v42 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v318 = &v301 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v309 = &v301 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v310 = &v301 - v48;
  v49 = sub_1CF9E63D8();
  v316 = *(v49 - 8);
  v317 = v49;
  v50 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v307 = &v301 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v308 = &v301 - v53;
  v54 = sub_1CF9E6448();
  v325 = *(v54 - 8);
  v326 = v54;
  v55 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v302 = &v301 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v311 = &v301 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v312 = &v301 - v60;
  v61 = sub_1CF9E73D8();
  v314 = *(v61 - 8);
  v315 = v61;
  v62 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v313 = &v301 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CF9E5248();
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v332 = (&v301 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1CF9E5268();
  v68 = *(v67 - 8);
  v334 = v67;
  v335 = v68;
  v69 = v68[8];
  MEMORY[0x1EEE9AC00](v67);
  v333 = &v301 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = swift_allocObject();
  v337 = a5;
  *(v71 + 16) = a5;
  *(v71 + 24) = a6;
  v72 = swift_allocObject();
  v72[2] = a4;
  v72[3] = a9;
  v306 = a9;
  v72[4] = v71;
  swift_retain_n();
  v370 = a1;
  v341 = a6;
  swift_retain_n();
  v73 = a4;
  v339 = v71;
  swift_retain_n();
  v340 = v73;
  v74 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v351 = v367;
    v352 = v368;
    v347 = v364;
    v348 = v365;
    v349 = v366[0];
    v350 = v366[1];
    v345 = aBlock;
    v346 = v363;
    v359 = v367;
    v360 = v368;
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    v358[1] = v366[1];
    v353 = v369;
    v361 = v369;
    v354 = aBlock;
    v355 = v363;
    if (sub_1CF2B971C(&v354))
    {
      sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v84 = nullsub_1(&v354);
    v85 = *v84;
    v86 = *(v84 + 8);
    v87 = *(v84 + 112);

    v88 = sub_1CEFCCC44(v84 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v86 != 2 || v85)
    {
      v92 = v340;
      v91 = v341;
      if (v86 == 2 && v85 == 1)
      {
        v90 = *MEMORY[0x1E6967280];
        if (v87)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v344[0] = 0x2F73662F70665F5FLL;
        v344[1] = 0xE800000000000000;
        v342 = v85;
        v343 = v86;
        v143 = VFSItemID.description.getter(v88, v89);
        MEMORY[0x1D3868CC0](v143);

        v90 = sub_1CF9E6888();

        if (v87)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v90 = *MEMORY[0x1E6967258];
      v92 = v340;
      v91 = v341;
      if (v87)
      {
LABEL_16:
        v93 = v87;
LABEL_54:

        v144 = v87;
        (v338)(v93, v92, v337, v91);

        goto LABEL_73;
      }
    }

    v93 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v336 = v72;

  *&v345 = a1;
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v358 + 9) = *(v366 + 9);
    v357 = v365;
    v358[0] = v366[0];
    v355 = v363;
    v356 = v364;
    v354 = aBlock;
    if (!BYTE8(v366[1]))
    {
      v94 = *(&v358[0] + 1);
      v95 = *(&v356 + 1);
      v96 = v356;
      v97 = *(&v355 + 1);
      v98 = v355;
      v99 = *(&v354 + 1);
      v335 = v354;

      sub_1CF1D56D0(v99, v98, v97, v96, v95);
      if (v94)
      {
        v100 = v94;
        v101 = v340;
        v102 = v341;
        v103 = v337;
        v104 = v338;
        v105 = v335;
      }

      else
      {
        v141 = objc_opt_self();
        v105 = v335;
        v100 = [v141 fileProviderErrorForNonExistentItemWithIdentifier_];
        v101 = v340;
        v102 = v341;
        v103 = v337;
        v104 = v338;
      }

      v142 = v94;
      (v104)(v100, v101, v103, v102);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v354, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v344[0] = a1;
  v76 = a1;
  if (swift_dynamicCast())
  {
    v351 = v367;
    v352 = v368;
    v347 = v364;
    v348 = v365;
    v349 = v366[0];
    v350 = v366[1];
    v345 = aBlock;
    v346 = v363;
    v359 = v367;
    v360 = v368;
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    v358[1] = v366[1];
    v353 = v369;
    v361 = v369;
    v354 = aBlock;
    v355 = v363;
    v77 = sub_1CF2B971C(&v354);
    switch(v77)
    {
      case 5:
        nullsub_1(&v354);
        v113 = v344[0];
LABEL_30:

        v115 = v340;
        v116 = v341;
        v117 = v337;
        v118 = v338;
        goto LABEL_31;
      case 3:
        v106 = nullsub_1(&v354);
        v107 = *v106;
        v108 = *(v106 + 8);
        sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v331)
        {
          LODWORD(v342) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v109 = v327;
          v110 = v329;
          sub_1CF9E57D8();
          v111 = sub_1CF9E53A8();
          v112 = v328;
LABEL_48:
          v112[1](v109, v110);
          v138 = v341;

          v139 = v340;
          (v338)(v111, v340, v337, v138);

          v140 = v344[0];
LABEL_72:

          goto LABEL_73;
        }

        LODWORD(v334) = v108;
        v335 = v107;
        v337 = a19;
        v333 = a18;
        v332 = a17;
        v145 = v330;
        v146 = *(*(*(v330 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v147 = swift_dynamicCastClassUnconditional();
        v148 = swift_allocObject();
        v149 = v336;
        *(v148 + 2) = a12;
        *(v148 + 3) = v149;
        v338 = v148;
        *(v148 + 4) = v145;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v331 = v147;
        v150 = *(v147 + 216);
        v342 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v151 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v152 = v313;
        v153 = v315;
        sub_1CF9E77B8();
        v154 = sub_1CF9E73E8();

        (*(v314 + 8))(v152, v153);
        qos_class_self();
        v155 = v309;
        sub_1CF9E63B8();
        v157 = v316;
        v156 = v317;
        v158 = *(v316 + 48);
        if (v158(v155, 1, v317) == 1)
        {
          (*(v157 + 104))(v307, *MEMORY[0x1E69E7FA0], v156);
          if (v158(v155, 1, v156) != 1)
          {
            sub_1CEFCCC44(v155, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v157 + 32))(v307, v155, v156);
        }

        ObjectType = swift_getObjectType();
        v179 = v311;
        sub_1CF9E6428();
        v180 = swift_allocObject();
        v181 = v335;
        *(v180 + 16) = v331;
        *(v180 + 24) = v181;
        *(v180 + 32) = v334;
        *(v180 + 40) = 0u;
        *(v180 + 56) = 0u;
        *(v180 + 72) = 0u;
        *(v180 + 88) = 0u;
        *(v180 + 104) = 0u;
        *(v180 + 120) = 0u;
        *(v180 + 136) = 0;
        *(v180 + 144) = 1;
        v182 = v333;
        *(v180 + 152) = v154;
        *(v180 + 160) = v182;
        *(v180 + 168) = v338;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v179, v337, v180);

        (*(v325 + 8))(v179, v326);
        v183 = v318;
        sub_1CF9E6478();
        v184 = v320;
        sub_1CEFD5B64(v320);
        v185 = v319;
        sub_1CEFD5BD8(v319);
        MEMORY[0x1D3869770](v183, v184, v185, ObjectType);
        v186 = *(v323 + 8);
        v187 = v185;
        v188 = v324;
        v186(v187, v324);
        v186(v184, v188);
        (*(v321 + 8))(v183, v322);
        sub_1CF9E7448();

        goto LABEL_67;
      case 1:
        v78 = nullsub_1(&v354);
        v79 = *v78;
        v80 = *(v78 + 8);
        v81 = *(v78 + 24);
        v82 = *(v78 + 48);
        v83 = *(v78 + 56);

        sub_1CF480620(v82, v83);

        if (v331)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v109 = v333;
          v110 = v334;
          sub_1CF9E57D8();
          v111 = sub_1CF9E50D8();
          v112 = v335;
          goto LABEL_48;
        }

        LODWORD(v334) = v80;
        v335 = v79;
        v337 = a15;
        v333 = a14;
        v332 = a13;
        v159 = v330;
        v160 = *(*(*(v330 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v161 = swift_dynamicCastClassUnconditional();
        v162 = swift_allocObject();
        v163 = v336;
        *(v162 + 2) = a12;
        *(v162 + 3) = v163;
        v338 = v162;
        *(v162 + 4) = v159;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v164 = v161;
        v165 = *(v161 + 216);
        v342 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v331 = v160;

        v166 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v167 = v313;
        v168 = v315;
        sub_1CF9E77B8();
        v169 = sub_1CF9E73E8();

        (*(v314 + 8))(v167, v168);
        qos_class_self();
        v170 = v310;
        sub_1CF9E63B8();
        v172 = v316;
        v171 = v317;
        v173 = *(v316 + 48);
        if (v173(v170, 1, v317) == 1)
        {
          (*(v172 + 104))(v308, *MEMORY[0x1E69E7FA0], v171);
          if (v173(v170, 1, v171) != 1)
          {
            sub_1CEFCCC44(v170, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v172 + 32))(v308, v170, v171);
        }

        v189 = swift_getObjectType();
        v190 = v312;
        sub_1CF9E6428();
        v191 = swift_allocObject();
        v192 = v335;
        *(v191 + 16) = v164;
        *(v191 + 24) = v192;
        *(v191 + 32) = v334;
        *(v191 + 40) = 0u;
        *(v191 + 56) = 0u;
        *(v191 + 72) = 0u;
        *(v191 + 88) = 0u;
        *(v191 + 104) = 0u;
        *(v191 + 120) = 0u;
        *(v191 + 136) = 0;
        *(v191 + 144) = 1;
        v193 = v333;
        *(v191 + 152) = v169;
        *(v191 + 160) = v193;
        *(v191 + 168) = v338;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v190, v337, v191);

        (*(v325 + 8))(v190, v326);
        v194 = v318;
        sub_1CF9E6478();
        v195 = v320;
        sub_1CEFD5B64(v320);
        v196 = v319;
        sub_1CEFD5BD8(v319);
        MEMORY[0x1D3869770](v194, v195, v196, v189);
        v197 = *(v323 + 8);
        v198 = v196;
        v199 = v324;
        v197(v198, v324);
        v197(v195, v199);
        (*(v321 + 8))(v194, v322);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v200 = v340;
    }

    sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v345 = a1;
  v114 = a1;
  if (swift_dynamicCast())
  {
    *(v358 + 9) = *(v366 + 9);
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    v354 = aBlock;
    v355 = v363;
    if (BYTE8(v366[1]) == 5)
    {
      v113 = v345;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v354, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v122 = a1;
  if (swift_dynamicCast())
  {
    v117 = v337;
    v118 = v338;
    if (v354 > 2u)
    {
      v115 = v340;
      v116 = v341;
      if (v354 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v134 = v333;
        v135 = v334;
        sub_1CF9E57D8();
        v136 = sub_1CF9E50D8();
        (*(v335 + 1))(v134, v135);

        (v118)(v136, v115, v117, v116);

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v115 = v340;
    v116 = v341;
    if (v354 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v119 = v333;
    v120 = v334;
    sub_1CF9E57D8();
    v121 = sub_1CF9E50D8();
    (*(v335 + 1))(v119, v120);

    (v118)(v121, v115, v117, v116);

    goto LABEL_33;
  }

  *&v354 = a1;
  v123 = a1;
  if (swift_dynamicCast())
  {
    if ((v363 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v363);
      LODWORD(v345) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v174 = v327;
      v175 = v329;
      sub_1CF9E57D8();
      v176 = sub_1CF9E53A8();
      (*(v328 + 8))(v174, v175);
      v177 = v341;

      v139 = v340;
      (v338)(v176, v340, v337, v177);

      v140 = v354;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v354 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1CF9FA450;
    v125 = *MEMORY[0x1E696A578];
    *(v124 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v124 + 40) = v126;
    v127 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v128 = FPLocv();

    v129 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v131 = v130;

    *(v124 + 72) = MEMORY[0x1E69E6158];
    *(v124 + 48) = v129;
    *(v124 + 56) = v131;
    sub_1CF4E04E8(v124);
    swift_setDeallocating();
    sub_1CEFCCC44(v124 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v121 = aBlock;
    v132 = v341;

    v133 = v340;
    (v338)(v121, v340, v337, v132);

LABEL_33:

    goto LABEL_73;
  }

  v344[0] = a1;
  v137 = a1;
  if (swift_dynamicCast())
  {
    v351 = v367;
    v352 = v368;
    v347 = v364;
    v348 = v365;
    v349 = v366[0];
    v350 = v366[1];
    v345 = aBlock;
    v346 = v363;
    v359 = v367;
    v360 = v368;
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    v358[1] = v366[1];
    v353 = v369;
    v361 = v369;
    v354 = aBlock;
    v355 = v363;
    if (sub_1CF2B971C(&v354) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v201 = a1;
  if (swift_dynamicCast())
  {
    v202 = FPDomainUnavailableError();
    if (!v202)
    {
LABEL_120:

      v262 = v340;

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v252);
      *(&v301 - 2) = a1;

      v263 = v340;

      fp_preconditionFailure(_:file:line:)(v332, (&v301 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v203 = v202;
    v204 = v341;

    v139 = v340;
    (v338)(v203, v340, v337, v204);

    v140 = aBlock;
    goto LABEL_72;
  }

  v342 = a1;
  v206 = a1;
  if (swift_dynamicCast())
  {
    v351 = v367;
    v352 = v368;
    v347 = v364;
    v348 = v365;
    v349 = v366[0];
    v350 = v366[1];
    v345 = aBlock;
    v346 = v363;
    v359 = v367;
    v360 = v368;
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    v358[1] = v366[1];
    v353 = v369;
    v361 = v369;
    v354 = aBlock;
    v355 = v363;
    if (sub_1CF2B971C(&v354) == 10)
    {
      v207 = *(nullsub_1(&v354) + 16);
      if (!v207)
      {
        LODWORD(v344[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v208 = v327;
        v209 = v329;
        sub_1CF9E57D8();
        v207 = sub_1CF9E53A8();
        (*(v328 + 8))(v208, v209);
      }

      v211 = v340;
      v210 = v341;
      v212 = v338;
      v213 = v337;

      sub_1CEFCCBDC(&v345, v344, &unk_1EC4BE320, &unk_1CFA08B50);
      (v212)(v207, v211, v213, v210);

      sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v345, &unk_1EC4BE320, &unk_1CFA08B50);
    v215 = v342;
    goto LABEL_83;
  }

  *&v345 = a1;
  v214 = a1;
  if (swift_dynamicCast())
  {
    v356 = v364;
    v357 = v365;
    v358[0] = v366[0];
    *(v358 + 9) = *(v366 + 9);
    v354 = aBlock;
    v355 = v363;
    sub_1CEFCCC44(&v354, &qword_1EC4BF270, &qword_1CFA01B70);
    v215 = v345;
LABEL_83:

LABEL_84:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v216 = v333;
    v217 = v334;
    sub_1CF9E57D8();
    v121 = sub_1CF9E50D8();
    (*(v335 + 1))(v216, v217);
    v218 = v341;

    v219 = v340;
    (v338)(v121, v340, v337, v218);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v220 = a1;
  v221 = swift_dynamicCast();

  if (v221)
  {
    goto LABEL_84;
  }

  *&v354 = a1;
  v222 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v363, *(&v363 + 1), v364);
LABEL_92:

    goto LABEL_84;
  }

  *&v354 = a1;
  v223 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v363, SBYTE8(v363));
    goto LABEL_92;
  }

  *&v354 = a1;
  v224 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_92;
  }

  v225 = sub_1CF9E57E8();
  v226 = [v225 userInfo];
  v227 = sub_1CF9E6638();

  v228 = *MEMORY[0x1E696AA08];
  v229 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (*(v227 + 16))
  {
    v231 = sub_1CEFE4328(v229, v230);
    v233 = v232;

    if (v233)
    {
      sub_1CEFD1104(*(v227 + 56) + 32 * v231, &aBlock);

      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v234 = v354;
        v235 = v340;
        v236 = v339;

        v237 = v225;
        v238 = v234;
        sub_1CF777DC8(v238, v331 & 1, v330, v237, v235, v306, v236);
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v239 = swift_allocObject();
  v240 = [v225 userInfo];
  v241 = sub_1CF9E6638();

  v242 = *MEMORY[0x1E696A750];
  v243 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v241 + 16))
  {

    goto LABEL_114;
  }

  v335 = a12;
  v245 = sub_1CEFE4328(v243, v244);
  v247 = v246;

  if ((v247 & 1) == 0)
  {
LABEL_114:

    goto LABEL_115;
  }

  sub_1CEFD1104(*(v241 + 56) + 32 * v245, &aBlock);

  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_115:
    swift_deallocUninitializedObject();
    v259 = v341;

    v260 = v340;
    (v338)(a1, v340, v337, v259);

    goto LABEL_116;
  }

  v333 = v225;
  v239[2] = v354;
  v248 = dispatch_group_create();
  v249 = v239[2];
  if (v249 >> 62)
  {
    goto LABEL_118;
  }

  v250 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v250)
  {
    goto LABEL_124;
  }

  do
  {
    v251 = 0;
    v332 = a25;
    while (1)
    {
      a1 = v248;
      v252 = objc_sync_enter(a1);
      if (v252)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v253 = v239[2];
      if ((v253 & 0xC000000000000001) != 0)
      {
        v254 = MEMORY[0x1D3869C30](v251);
        goto LABEL_109;
      }

      if (v251 >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v254 = *(v253 + 8 * v251 + 32);
LABEL_109:
      v255 = v254;
      swift_endAccess();
      v256 = objc_sync_exit(a1);
      if (v256)
      {
        MEMORY[0x1EEE9AC00](v256);
        *(&v301 - 2) = a1;

        v264 = v340;

        fp_preconditionFailure(_:file:line:)(a26, (&v301 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(a1);
      v257 = a1;

      v258 = v255;
      sub_1CF774BF8(v258, v331 & 1, v330, v257, v239, v251);

      if (v250 == ++v251)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v261 = sub_1CF9E7818();
    if (v261 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v250 = v261;
  }

  while (v261);
LABEL_124:
  if (v331)
  {
    v265 = v333;
    v266 = [v333 userInfo];
    v267 = sub_1CF9E6638();

    v268 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v270 = v269;
    swift_beginAccess();
    v271 = v239[2];
    *(&v363 + 1) = v334;
    *&aBlock = v271;
    sub_1CEFE9EB8(&aBlock, &v354);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v344[0] = v267;
    sub_1CF1D154C(&v354, v268, v270, isUniquelyReferenced_nonNull_native);

    v273 = [v265 domain];
    if (!v273)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v273 = sub_1CF9E6888();
    }

    v225 = v333;
    v274 = [v333 code];
    v275 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v276 = sub_1CF9E6618();

    v277 = [v275 initWithDomain:v273 code:v274 userInfo:v276];

    v278 = v341;

    v279 = v340;
    (v338)(v277, v340, v337, v278);

LABEL_116:
LABEL_73:
  }

  else
  {
    v334 = a24;
    v332 = a23;
    v331 = a22;
    v329 = a21;
    v280 = *(*(v330 + 16) + 64);
    v281 = swift_allocObject();
    v282 = v333;
    v281[2] = v333;
    v281[3] = v239;
    v283 = v336;
    v281[4] = v335;
    v281[5] = v283;
    v284 = v281;

    v285 = v280;
    v338 = v282;

    v286 = fpfs_current_log();
    v337 = fpfs_adopt_log();
    v287 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v288;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v289 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v289);

    sub_1CF9E6978();

    v290 = __fp_log_fork();

    *(v287 + 2) = v290;
    v291 = swift_allocObject();
    *(v291 + 16) = v286;
    *(v291 + 24) = v287;
    v333 = v287;
    *(v291 + 32) = v285;
    *(v291 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v291 + 48) = 48;
    *(v291 + 56) = 2;
    v292 = v332;
    *(v291 + 64) = v331;
    *(v291 + 72) = v284;
    v330 = v284;
    *&v364 = v292;
    *(&v364 + 1) = v291;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v363 = sub_1CEFCA444;
    *(&v363 + 1) = v334;
    v293 = _Block_copy(&aBlock);
    v334 = v285;
    v335 = v286;

    v294 = v302;
    sub_1CF9E63F8();
    *&v354 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v295 = v303;
    v296 = v305;
    sub_1CF9E77B8();
    v297 = v334;
    sub_1CF9E7308();
    _Block_release(v293);
    (*(v304 + 8))(v295, v296);
    (*(v325 + 8))(v294, v326);

    v298 = v337;
    v299 = fpfs_adopt_log();

    v300 = v340;
  }
}

void sub_1CF7850C0(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v269 = a3;
  LODWORD(v270) = a2;
  v8 = sub_1CF9E63A8();
  v247 = *(v8 - 8);
  v248 = v8;
  v9 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v246 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v267 = *(v11 - 8);
  v268 = v11;
  v12 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v266 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v262 = *(v14 - 8);
  v263 = v14;
  v15 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v258 = (&v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v259 = &v245 - v18;
  v19 = sub_1CF9E6498();
  v260 = *(v19 - 8);
  v261 = v19;
  v20 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v257 = &v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v251 = &v245 - v27;
  v28 = sub_1CF9E63D8();
  v255 = *(v28 - 8);
  v256 = v28;
  v29 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v249 = &v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v250 = &v245 - v32;
  v33 = sub_1CF9E6448();
  v264 = *(v33 - 8);
  v265 = v33;
  v34 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v245 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v252 = &v245 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v253 = &v245 - v39;
  v40 = sub_1CF9E73D8();
  v254 = *(v40 - 8);
  v41 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5248();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v271 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5268();
  v48 = *(v47 - 1);
  v273 = v47;
  v274 = v48;
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v272 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  v277 = a4;
  *(v51 + 16) = a4;
  *(v51 + 24) = a5;
  v311 = a1;
  swift_retain_n();
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v292 = v308;
    v293 = v309;
    v288 = v305;
    v289 = v306;
    v290 = v307[0];
    v291 = v307[1];
    v286 = aBlock;
    v287 = v304;
    v300 = v308;
    v301 = v309;
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    v299[1] = v307[1];
    v294 = v310;
    v302 = v310;
    v295 = aBlock;
    v296 = v304;
    if (sub_1CF2B971C(&v295))
    {
      sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v63 = nullsub_1(&v295);
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = *(v63 + 112);

    v67 = sub_1CEFCCC44(v63 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v65 != 2 || v64)
    {
      if (v65 != 2 || v64 != 1)
      {
        v278 = 0x2F73662F70665F5FLL;
        v279 = 0xE800000000000000;
        v282 = v64;
        LOBYTE(v283) = v65;
        v116 = VFSItemID.description.getter(v67, v68);
        MEMORY[0x1D3868CC0](v116);

        v79 = sub_1CF9E6888();

        if (v66)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v69 = MEMORY[0x1E6967280];
    }

    else
    {
      v69 = MEMORY[0x1E6967258];
    }

    v79 = *v69;
    if (v66)
    {
LABEL_22:
      v80 = v66;
LABEL_54:
      v279 = 0;
      v280 = 0;
      v278 = v80;
      v281 = 1;
      v117 = v66;
      v118 = v80;
      v277(&v278);

      v119 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v275 = a5;
  v276 = v51;

  v278 = a1;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v299 + 9) = *(v307 + 9);
    v298 = v306;
    v299[0] = v307[0];
    v296 = v304;
    v297 = v305;
    v295 = aBlock;
    if (!BYTE8(v307[1]))
    {
      v70 = *(&v299[0] + 1);
      v71 = *(&v297 + 1);
      v72 = v297;
      v73 = *(&v296 + 1);
      v74 = v296;
      v75 = *(&v295 + 1);
      v274 = v295;

      sub_1CF1D56D0(v75, v74, v73, v72, v71);
      if (v70)
      {
        v76 = v70;
        v77 = v277;
        v78 = v274;
      }

      else
      {
        v113 = objc_opt_self();
        v78 = v274;
        v76 = [v113 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v277;
      }

      *&v287 = 0;
      v286 = v76;
      BYTE8(v287) = 1;
      v114 = v70;
      v115 = v76;
      v77(&v286);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v295, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v282 = a1;
  v55 = a1;
  if (swift_dynamicCast())
  {
    v292 = v308;
    v293 = v309;
    v288 = v305;
    v289 = v306;
    v290 = v307[0];
    v291 = v307[1];
    v286 = aBlock;
    v287 = v304;
    v300 = v308;
    v301 = v309;
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    v299[1] = v307[1];
    v294 = v310;
    v302 = v310;
    v295 = aBlock;
    v296 = v304;
    v56 = sub_1CF2B971C(&v295);
    switch(v56)
    {
      case 5:
        nullsub_1(&v295);
        v88 = v282;
LABEL_30:

        v90 = v277;
        goto LABEL_31;
      case 3:
        v81 = nullsub_1(&v295);
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v270)
        {
          LODWORD(v278) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v84 = v266;
          v85 = v268;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v267;
LABEL_48:
          v87[1](v84, v85);
          v279 = 0;
          v280 = 0;
          v278 = v86;
          v281 = 1;
          v111 = v86;
          v277(&v278);

          v112 = v282;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v272) = v83;
        v273 = v82;
        v120 = v269;
        v121 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v122 = swift_dynamicCastClassUnconditional();
        v123 = swift_allocObject();
        v124 = v276;
        v123[2] = sub_1CF79603C;
        v123[3] = v124;
        v274 = v123;
        v123[4] = v120;
        v270 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v271 = v122;
        v125 = *(v122 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        v268 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v277 = v121;

        v126 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v127 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        sub_1CF9E63B8();
        v129 = v255;
        v128 = v256;
        v130 = *(v255 + 48);
        if (v130(v25, 1, v256) == 1)
        {
          (*(v129 + 104))(v249, *MEMORY[0x1E69E7FA0], v128);
          if (v130(v25, 1, v128) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v129 + 32))(v249, v25, v128);
        }

        ObjectType = swift_getObjectType();
        v148 = v252;
        sub_1CF9E6428();
        v149 = swift_allocObject();
        v150 = v273;
        v151 = v274;
        *(v149 + 16) = v271;
        *(v149 + 24) = v150;
        *(v149 + 32) = v272;
        *(v149 + 40) = 0u;
        *(v149 + 56) = 0u;
        *(v149 + 72) = 0u;
        *(v149 + 88) = 0u;
        *(v149 + 104) = 0u;
        *(v149 + 120) = 0u;
        *(v149 + 136) = 0;
        *(v149 + 144) = 1;
        *(v149 + 152) = v127;
        *(v149 + 160) = sub_1CF796A00;
        *(v149 + 168) = v151;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v148, sub_1CF72A328, v149);

        (*(v264 + 8))(v148, v265);
LABEL_68:
        v154 = v257;
        sub_1CF9E6478();
        v155 = v259;
        sub_1CEFD5B64(v259);
        v156 = v258;
        sub_1CEFD5BD8(v258);
        MEMORY[0x1D3869770](v154, v155, v156, ObjectType);
        v157 = *(v262 + 8);
        v158 = v156;
        v159 = v263;
        v157(v158, v263);
        v157(v155, v159);
        (*(v260 + 8))(v154, v261);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        v57 = nullsub_1(&v295);
        v58 = *v57;
        v59 = *(v57 + 8);
        v60 = *(v57 + 24);
        v61 = *(v57 + 48);
        v62 = *(v57 + 56);

        sub_1CF480620(v61, v62);

        if (v270)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v84 = v272;
          v85 = v273;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v274;
          goto LABEL_48;
        }

        LODWORD(v273) = v59;
        v131 = v269;
        v132 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v133 = swift_dynamicCastClassUnconditional();
        v134 = swift_allocObject();
        v135 = v276;
        v134[2] = sub_1CF79603C;
        v134[3] = v135;
        v274 = v134;
        v134[4] = v131;
        v271 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v272 = v133;
        v136 = *(v133 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v277 = v132;

        v137 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v138 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        v139 = v251;
        sub_1CF9E63B8();
        v141 = v255;
        v140 = v256;
        v142 = *(v255 + 48);
        if (v142(v139, 1, v256) == 1)
        {
          (*(v141 + 104))(v250, *MEMORY[0x1E69E7FA0], v140);
          if (v142(v139, 1, v140) != 1)
          {
            sub_1CEFCCC44(v139, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v141 + 32))(v250, v139, v140);
        }

        ObjectType = swift_getObjectType();
        v152 = v253;
        sub_1CF9E6428();
        v153 = swift_allocObject();
        *(v153 + 16) = v272;
        *(v153 + 24) = v58;
        *(v153 + 32) = v273;
        *(v153 + 40) = 0u;
        *(v153 + 56) = 0u;
        *(v153 + 72) = 0u;
        *(v153 + 88) = 0u;
        *(v153 + 104) = 0u;
        *(v153 + 120) = 0u;
        *(v153 + 136) = 0;
        *(v153 + 144) = 1;
        *(v153 + 152) = v138;
        *(v153 + 160) = sub_1CF796A04;
        *(v153 + 168) = v274;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v152, sub_1CF72A328, v153);

        (*(v264 + 8))(v152, v265);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v286 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v299 + 9) = *(v307 + 9);
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    v295 = aBlock;
    v296 = v304;
    if (BYTE8(v307[1]) == 5)
    {
      v88 = v286;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v295, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v295 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v286 > 2u)
    {
      v90 = v277;
      if (v286 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v107 = v272;
        v106 = v273;
        sub_1CF9E57D8();
        v108 = sub_1CF9E50D8();
        (*(v274 + 1))(v107, v106);
        *&v304 = 0;
        aBlock = v108;
        BYTE8(v304) = 1;
        v109 = v108;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v277;
    if (v286 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v92 = v272;
    v91 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v92, v91);
    *&v304 = 0;
    aBlock = v93;
    BYTE8(v304) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v286 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v296 + 3) >= 2u)
    {
      sub_1CF3386E4(v295, *(&v295 + 1), v296);
      LODWORD(aBlock) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v143 = v266;
      v144 = v268;
      sub_1CF9E57D8();
      v145 = sub_1CF9E53A8();
      (*(v267 + 8))(v143, v144);
      *&v304 = 0;
      aBlock = v145;
      BYTE8(v304) = 1;
      v146 = v145;
      v277(&aBlock);

      v112 = v286;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    v98 = *MEMORY[0x1E696A578];
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v102;
    *(v97 + 56) = v104;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v93 = v295;
    *&v304 = 0;
    aBlock = v295;
    BYTE8(v304) = 1;
    v105 = v295;
    v277(&aBlock);

LABEL_33:

    return;
  }

  v282 = a1;
  v110 = a1;
  if (swift_dynamicCast())
  {
    v292 = v308;
    v293 = v309;
    v288 = v305;
    v289 = v306;
    v290 = v307[0];
    v291 = v307[1];
    v286 = aBlock;
    v287 = v304;
    v300 = v308;
    v301 = v309;
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    v299[1] = v307[1];
    v294 = v310;
    v302 = v310;
    v295 = aBlock;
    v296 = v304;
    if (sub_1CF2B971C(&v295) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v295 = a1;
  v160 = a1;
  if (swift_dynamicCast())
  {
    v161 = FPDomainUnavailableError();
    if (!v161)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v204);
      v244 = v53;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v162 = v161;
    *&v304 = 0;
    aBlock = v161;
    BYTE8(v304) = 1;
    v163 = v161;
    v277(&aBlock);

    v112 = v295;
    goto LABEL_73;
  }

  v311 = a1;
  v164 = a1;
  if (swift_dynamicCast())
  {
    v292 = v308;
    v293 = v309;
    v288 = v305;
    v289 = v306;
    v290 = v307[0];
    v291 = v307[1];
    v286 = aBlock;
    v287 = v304;
    v300 = v308;
    v301 = v309;
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    v299[1] = v307[1];
    v294 = v310;
    v302 = v310;
    v295 = aBlock;
    v296 = v304;
    if (sub_1CF2B971C(&v295) == 10)
    {
      v165 = *(nullsub_1(&v295) + 16);
      if (!v165)
      {
        LODWORD(v278) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v166 = v266;
        v167 = v268;
        sub_1CF9E57D8();
        v165 = sub_1CF9E53A8();
        (*(v267 + 8))(v166, v167);
      }

      v283 = 0;
      v284 = 0;
      v282 = v165;
      v285 = 1;
      sub_1CEFCCBDC(&v286, &v278, &unk_1EC4BE320, &unk_1CFA08B50);
      v168 = v165;
      v277(&v282);

      sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
      v119 = v165;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v286, &unk_1EC4BE320, &unk_1CFA08B50);
    v170 = v311;
    goto LABEL_92;
  }

  *&v286 = a1;
  v169 = a1;
  if (swift_dynamicCast())
  {
    v297 = v305;
    v298 = v306;
    v299[0] = v307[0];
    *(v299 + 9) = *(v307 + 9);
    v295 = aBlock;
    v296 = v304;
    sub_1CEFCCC44(&v295, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v177 = v272;
    v176 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v177, v176);
    *&v304 = 0;
    aBlock = v93;
    BYTE8(v304) = 1;
    v178 = v93;
    v277(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v171 = a1;
  v172 = swift_dynamicCast();

  if (v172)
  {
    goto LABEL_93;
  }

  *&v295 = a1;
  v173 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v304, *(&v304 + 1), v305);
LABEL_91:
    v170 = v295;
LABEL_92:

    goto LABEL_93;
  }

  *&v295 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v304, SBYTE8(v304));
    goto LABEL_91;
  }

  *&v295 = a1;
  v175 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v179 = sub_1CF9E57E8();
  v180 = [v179 userInfo];
  v181 = sub_1CF9E6638();

  v182 = *MEMORY[0x1E696AA08];
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v181 + 16))
  {

    goto LABEL_99;
  }

  v185 = sub_1CEFE4328(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_99:

    goto LABEL_100;
  }

  sub_1CEFD1104(*(v181 + 56) + 32 * v185, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v188 = v295;
    v189 = v275;

    v190 = v179;
    v191 = v188;
    sub_1CF782688(v191, v270 & 1, v269, v190, v277, v189, &unk_1F4C153F8, &unk_1F4C15420, sub_1CF796A94, sub_1CF77F1A0, &unk_1F4C15510, sub_1CF7969FC, &unk_1F4C15538, sub_1CF796A04, sub_1CF72A328, &unk_1F4C154C0, &unk_1F4C154E8, sub_1CF796A00, sub_1CF72A328, &unk_1F4C15448, &unk_1F4C15470, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_509, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_100:
  v192 = swift_allocObject();
  v193 = [v179 userInfo];
  v194 = sub_1CF9E6638();

  v195 = *MEMORY[0x1E696A750];
  v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v194 + 16))
  {

    goto LABEL_115;
  }

  v198 = sub_1CEFE4328(v196, v197);
  v53 = v199;

  if ((v53 & 1) == 0)
  {
LABEL_115:

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v194 + 56) + 32 * v198, &aBlock);

  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    v211 = v277;
    swift_deallocUninitializedObject();
    *&v304 = 0;
    aBlock = a1;
    BYTE8(v304) = 1;
    v212 = a1;
    v211(&aBlock);

    return;
  }

  v192[2] = v295;
  v200 = dispatch_group_create();
  v201 = v192[2];
  if (v201 >> 62)
  {
    goto LABEL_118;
  }

  v202 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v202)
  {
    goto LABEL_124;
  }

  do
  {
    v203 = 0;
    while (1)
    {
      v53 = v200;
      v204 = objc_sync_enter(v53);
      if (v204)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v205 = v192[2];
      if ((v205 & 0xC000000000000001) != 0)
      {
        v206 = MEMORY[0x1D3869C30](v203);
        goto LABEL_110;
      }

      if (v203 >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v206 = *(v205 + 8 * v203 + 32);
LABEL_110:
      v207 = v206;
      swift_endAccess();
      v208 = objc_sync_exit(v53);
      if (v208)
      {
        MEMORY[0x1EEE9AC00](v208);
        v244 = v53;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v53);
      v209 = v53;

      v210 = v207;
      sub_1CF774BF8(v210, v270 & 1, v269, v209, v192, v203);

      if (v202 == ++v203)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v213 = sub_1CF9E7818();
    if (v213 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v202 = v213;
  }

  while (v213);
LABEL_124:
  if (v270)
  {
    v214 = [v179 userInfo];
    v215 = sub_1CF9E6638();

    v216 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v218 = v217;
    swift_beginAccess();
    v219 = v192[2];
    *(&v304 + 1) = v274;
    *&aBlock = v219;
    sub_1CEFE9EB8(&aBlock, &v295);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278 = v215;
    sub_1CF1D154C(&v295, v216, v218, isUniquelyReferenced_nonNull_native);

    v221 = [v179 domain];
    if (!v221)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v221 = sub_1CF9E6888();
    }

    v222 = [v179 code];
    v223 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v224 = sub_1CF9E6618();

    v225 = [v223 initWithDomain:v221 code:v222 userInfo:v224];

    *&v304 = 0;
    aBlock = v225;
    BYTE8(v304) = 1;
    v226 = v225;
    v277(&aBlock);

LABEL_75:
  }

  else
  {
    v227 = *(*(v269 + 16) + 64);
    v228 = swift_allocObject();
    v228[2] = v179;
    v228[3] = v192;
    v228[4] = sub_1CF79603C;
    v228[5] = v276;

    v229 = v227;
    v277 = v179;

    v230 = fpfs_current_log();
    v274 = fpfs_adopt_log();
    v231 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v232;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v233 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v233);

    sub_1CF9E6978();

    v234 = __fp_log_fork();

    *(v231 + 16) = v234;
    v235 = swift_allocObject();
    *(v235 + 16) = v230;
    *(v235 + 24) = v231;
    v272 = v231;
    *(v235 + 32) = v229;
    *(v235 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v235 + 48) = 48;
    *(v235 + 56) = 2;
    *(v235 + 64) = sub_1CF796ACC;
    *(v235 + 72) = v228;
    *&v305 = sub_1CF2B9F54;
    *(&v305 + 1) = v235;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v304 = sub_1CEFCA444;
    *(&v304 + 1) = &block_descriptor_470_0;
    v236 = _Block_copy(&aBlock);
    v271 = v229;
    v273 = v230;

    v237 = v245;
    sub_1CF9E63F8();
    *&v295 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v238 = v246;
    v239 = v248;
    sub_1CF9E77B8();
    v240 = v271;
    sub_1CF9E7308();
    _Block_release(v236);
    (*(v247 + 8))(v238, v239);
    (*(v264 + 8))(v237, v265);

    v241 = v274;
    v242 = fpfs_adopt_log();
  }
}

void sub_1CF7879EC(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v278 = a3;
  LODWORD(v279) = a2;
  v8 = sub_1CF9E63A8();
  v258 = *(v8 - 8);
  v259 = v8;
  v9 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v257 = &v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v276 = *(v11 - 8);
  v277 = v11;
  v12 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v275 = &v255 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v271 = *(v14 - 8);
  v272 = v14;
  v15 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v267 = (&v255 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v268 = &v255 - v18;
  v19 = sub_1CF9E6498();
  v269 = *(v19 - 8);
  v270 = v19;
  v20 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v266 = &v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v255 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v255 - v27;
  v29 = sub_1CF9E63D8();
  v264 = *(v29 - 8);
  v265 = v29;
  v30 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v255 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v260 = &v255 - v34;
  v35 = sub_1CF9E6448();
  v273 = *(v35 - 8);
  v274 = v35;
  v36 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v256 = &v255 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v261 = &v255 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v262 = &v255 - v41;
  v42 = sub_1CF9E73D8();
  v263 = *(v42 - 8);
  v43 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v255 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E5248();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v280 = &v255 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CF9E5268();
  v50 = *(v49 - 1);
  v282 = v49;
  v283 = v50;
  v51 = v50[8];
  MEMORY[0x1EEE9AC00](v49);
  v281 = &v255 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_allocObject();
  v285 = a4;
  v286 = v53;
  *(v53 + 16) = a4;
  *(v53 + 24) = a5;
  v322 = a1;
  swift_retain_n();
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v303 = v319;
    v304 = v320;
    v299 = v316;
    v300 = v317;
    v301 = *v318;
    v302 = *&v318[16];
    v297 = aBlock;
    v298 = v315;
    v311 = v319;
    v312 = v320;
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    v310[1] = *&v318[16];
    v305 = v321;
    v313 = v321;
    v306 = aBlock;
    v307 = v315;
    if (sub_1CF2B971C(&v306))
    {
      sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v65 = nullsub_1(&v306);
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 112);

    v69 = sub_1CEFCCC44(v65 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v67 != 2 || v66)
    {
      v72 = v285;
      if (v67 == 2 && v66 == 1)
      {
        v71 = *MEMORY[0x1E6967280];
        if (v68)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v287 = 0x2F73662F70665F5FLL;
        v288 = 0xE800000000000000;
        v292 = v66;
        LOBYTE(v293) = v67;
        v118 = VFSItemID.description.getter(v69, v70);
        MEMORY[0x1D3868CC0](v118);

        v71 = sub_1CF9E6888();

        if (v68)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v71 = *MEMORY[0x1E6967258];
      v72 = v285;
      if (v68)
      {
LABEL_16:
        v73 = v68;
LABEL_54:
        v287 = v73;
        v288 = 0;
        v289 = 0;
        v290 = 0;
        v291 = 1;
        v119 = v68;
        v120 = v73;
        v72(&v287);

        v121 = v73;
LABEL_55:

        goto LABEL_74;
      }
    }

    v73 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v284 = a5;

  v287 = a1;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v310 + 9) = *&v318[9];
    v309 = v317;
    v310[0] = *v318;
    v307 = v315;
    v308 = v316;
    v306 = aBlock;
    if (!v318[24])
    {
      v74 = *(&v310[0] + 1);
      v75 = *(&v308 + 1);
      v76 = v308;
      v77 = *(&v307 + 1);
      v78 = v307;
      v79 = *(&v306 + 1);
      v283 = v306;

      sub_1CF1D56D0(v79, v78, v77, v76, v75);
      if (v74)
      {
        v80 = v74;
        v81 = v285;
        v82 = v283;
      }

      else
      {
        v115 = objc_opt_self();
        v82 = v283;
        v80 = [v115 fileProviderErrorForNonExistentItemWithIdentifier_];
        v81 = v285;
      }

      v297 = v80;
      v298 = 0uLL;
      LOBYTE(v299) = 1;
      v116 = v74;
      v117 = v80;
      v81(&v297);

      v114 = v287;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v306, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v292 = a1;
  v57 = a1;
  if (swift_dynamicCast())
  {
    v303 = v319;
    v304 = v320;
    v299 = v316;
    v300 = v317;
    v301 = *v318;
    v302 = *&v318[16];
    v297 = aBlock;
    v298 = v315;
    v311 = v319;
    v312 = v320;
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    v310[1] = *&v318[16];
    v305 = v321;
    v313 = v321;
    v306 = aBlock;
    v307 = v315;
    v58 = sub_1CF2B971C(&v306);
    switch(v58)
    {
      case 5:
        nullsub_1(&v306);
        v90 = v292;
LABEL_30:

        v92 = v285;
        goto LABEL_31;
      case 3:
        v83 = nullsub_1(&v306);
        v84 = *v83;
        v85 = *(v83 + 8);
        sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v279)
        {
          LODWORD(v287) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v86 = v275;
          v87 = v277;
          sub_1CF9E57D8();
          v88 = sub_1CF9E53A8();
          v89 = v276;
LABEL_48:
          v89[1](v86, v87);
          v287 = v88;
          v288 = 0;
          v289 = 0;
          v290 = 0;
          v291 = 1;
          v113 = v88;
          v285(&v287);

          v114 = v292;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v281) = v85;
        v282 = v84;
        v122 = v278;
        v123 = *(*(*(v278 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v124 = swift_dynamicCastClassUnconditional();
        v125 = swift_allocObject();
        v126 = v286;
        v125[2] = sub_1CF796158;
        v125[3] = v126;
        v283 = v125;
        v125[4] = v122;
        v279 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v280 = v124;
        v127 = *(v124 + 216);
        v287 = MEMORY[0x1E69E7CC0];
        v277 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v285 = v123;

        v128 = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v129 = sub_1CF9E73E8();

        (*(v263 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v131 = v264;
        v130 = v265;
        v132 = *(v264 + 48);
        if (v132(v25, 1, v265) == 1)
        {
          (*(v131 + 104))(v32, *MEMORY[0x1E69E7FA0], v130);
          if (v132(v25, 1, v130) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v131 + 32))(v32, v25, v130);
        }

        ObjectType = swift_getObjectType();
        v149 = v261;
        sub_1CF9E6428();
        v150 = swift_allocObject();
        v151 = v282;
        v152 = v283;
        *(v150 + 16) = v280;
        *(v150 + 24) = v151;
        *(v150 + 32) = v281;
        *(v150 + 40) = 0u;
        *(v150 + 56) = 0u;
        *(v150 + 72) = 0u;
        *(v150 + 88) = 0u;
        *(v150 + 104) = 0u;
        *(v150 + 120) = 0u;
        *(v150 + 136) = 0;
        *(v150 + 144) = 1;
        *(v150 + 152) = v129;
        *(v150 + 160) = sub_1CF796A00;
        *(v150 + 168) = v152;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v149, sub_1CF72A328, v150);

        (*(v273 + 8))(v149, v274);
        v153 = v266;
        sub_1CF9E6478();
        v154 = v268;
        sub_1CEFD5B64(v268);
        v155 = v267;
        sub_1CEFD5BD8(v267);
        MEMORY[0x1D3869770](v153, v154, v155, ObjectType);
        v156 = *(v271 + 8);
        v157 = v155;
        v158 = v272;
        v156(v157, v272);
        v156(v154, v158);
        (*(v269 + 8))(v153, v270);
        sub_1CF9E7448();
LABEL_68:

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        v59 = nullsub_1(&v306);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 24);
        v63 = *(v59 + 48);
        v64 = *(v59 + 56);

        sub_1CF480620(v63, v64);

        if (v279)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v86 = v281;
          v87 = v282;
          sub_1CF9E57D8();
          v88 = sub_1CF9E50D8();
          v89 = v283;
          goto LABEL_48;
        }

        LODWORD(v281) = v61;
        v282 = v60;
        v133 = v278;
        v134 = *(*(*(v278 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v135 = swift_dynamicCastClassUnconditional();
        v136 = swift_allocObject();
        v137 = v286;
        v136[2] = sub_1CF796158;
        v136[3] = v137;
        v283 = v136;
        v136[4] = v133;
        v279 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v280 = v135;
        v138 = *(v135 + 216);
        v287 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v285 = v134;

        v139 = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v140 = sub_1CF9E73E8();

        (*(v263 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v142 = v264;
        v141 = v265;
        v143 = *(v264 + 48);
        if (v143(v28, 1, v265) == 1)
        {
          (*(v142 + 104))(v260, *MEMORY[0x1E69E7FA0], v141);
          if (v143(v28, 1, v141) != 1)
          {
            sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v142 + 32))(v260, v28, v141);
        }

        v159 = swift_getObjectType();
        v160 = v262;
        sub_1CF9E6428();
        v161 = swift_allocObject();
        v162 = v282;
        v163 = v283;
        *(v161 + 16) = v280;
        *(v161 + 24) = v162;
        *(v161 + 32) = v281;
        *(v161 + 40) = 0u;
        *(v161 + 56) = 0u;
        *(v161 + 72) = 0u;
        *(v161 + 88) = 0u;
        *(v161 + 104) = 0u;
        *(v161 + 120) = 0u;
        *(v161 + 136) = 0;
        *(v161 + 144) = 1;
        *(v161 + 152) = v140;
        *(v161 + 160) = sub_1CF796A04;
        *(v161 + 168) = v163;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v160, sub_1CF72A328, v161);

        (*(v273 + 8))(v160, v274);
        v164 = v266;
        sub_1CF9E6478();
        v165 = v268;
        sub_1CEFD5B64(v268);
        v166 = v267;
        sub_1CEFD5BD8(v267);
        MEMORY[0x1D3869770](v164, v165, v166, v159);
        v167 = *(v271 + 8);
        v168 = v166;
        v169 = v272;
        v167(v168, v272);
        v167(v165, v169);
        (*(v269 + 8))(v164, v270);
        sub_1CF9E7448();
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v297 = a1;
  v91 = a1;
  if (swift_dynamicCast())
  {
    *(v310 + 9) = *&v318[9];
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    v306 = aBlock;
    v307 = v315;
    if (v318[24] == 5)
    {
      v90 = v297;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v306, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v306 = a1;
  v97 = a1;
  if (swift_dynamicCast())
  {
    if (v297 <= 2u)
    {
      v92 = v285;
      if (v297 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v94 = v281;
      v93 = v282;
      sub_1CF9E57D8();
      v95 = sub_1CF9E50D8();
      (*(v283 + 1))(v94, v93);
      aBlock = v95;
      v315 = 0uLL;
      LOBYTE(v316) = 1;
      v96 = v95;
      v92(&aBlock);
      goto LABEL_33;
    }

    v92 = v285;
    if (v297 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v109 = v281;
    v108 = v282;
    sub_1CF9E57D8();
    v110 = sub_1CF9E50D8();
    (*(v283 + 1))(v109, v108);
    aBlock = v110;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v111 = v110;
    v92(&aBlock);

LABEL_74:

    goto LABEL_75;
  }

  *&v297 = a1;
  v98 = a1;
  if (swift_dynamicCast())
  {
    if ((v307 + 3) >= 2u)
    {
      sub_1CF3386E4(v306, *(&v306 + 1), v307);
      LODWORD(aBlock) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v144 = v275;
      v145 = v277;
      sub_1CF9E57D8();
      v146 = sub_1CF9E53A8();
      (*(v276 + 8))(v144, v145);
      aBlock = v146;
      v315 = 0uLL;
      LOBYTE(v316) = 1;
      v147 = v146;
      v285(&aBlock);

      v114 = v297;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1CF9FA450;
    v100 = *MEMORY[0x1E696A578];
    *(v99 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v99 + 40) = v101;
    v102 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v103 = FPLocv();

    v104 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v106 = v105;

    *(v99 + 72) = MEMORY[0x1E69E6158];
    *(v99 + 48) = v104;
    *(v99 + 56) = v106;
    sub_1CF4E04E8(v99);
    swift_setDeallocating();
    sub_1CEFCCC44(v99 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v95 = v306;
    aBlock = v306;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v107 = v306;
    v285(&aBlock);
LABEL_33:

    return;
  }

  v292 = a1;
  v112 = a1;
  if (swift_dynamicCast())
  {
    v303 = v319;
    v304 = v320;
    v299 = v316;
    v300 = v317;
    v301 = *v318;
    v302 = *&v318[16];
    v297 = aBlock;
    v298 = v315;
    v311 = v319;
    v312 = v320;
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    v310[1] = *&v318[16];
    v305 = v321;
    v313 = v321;
    v306 = aBlock;
    v307 = v315;
    if (sub_1CF2B971C(&v306) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v306 = a1;
  v170 = a1;
  if (swift_dynamicCast())
  {
    v171 = FPDomainUnavailableError();
    if (!v171)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v215);
      v254 = v55;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v253, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v172 = v171;
    aBlock = v171;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v173 = v171;
    v285(&aBlock);

    v114 = v306;
    goto LABEL_73;
  }

  v322 = a1;
  v174 = a1;
  if (swift_dynamicCast())
  {
    v303 = v319;
    v304 = v320;
    v299 = v316;
    v300 = v317;
    v301 = *v318;
    v302 = *&v318[16];
    v297 = aBlock;
    v298 = v315;
    v311 = v319;
    v312 = v320;
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    v310[1] = *&v318[16];
    v305 = v321;
    v313 = v321;
    v306 = aBlock;
    v307 = v315;
    if (sub_1CF2B971C(&v306) == 10)
    {
      v175 = *(nullsub_1(&v306) + 16);
      if (!v175)
      {
        LODWORD(v287) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v176 = v275;
        v177 = v277;
        sub_1CF9E57D8();
        v175 = sub_1CF9E53A8();
        (*(v276 + 8))(v176, v177);
      }

      v178 = v285;
      v292 = v175;
      v293 = 0;
      v294 = 0;
      v295 = 0;
      v296 = 1;
      sub_1CEFCCBDC(&v297, &v287, &unk_1EC4BE320, &unk_1CFA08B50);
      v179 = v175;
      v178(&v292);

      sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
      v121 = v175;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v297, &unk_1EC4BE320, &unk_1CFA08B50);
    v181 = v322;
    goto LABEL_92;
  }

  *&v297 = a1;
  v180 = a1;
  if (swift_dynamicCast())
  {
    v308 = v316;
    v309 = v317;
    v310[0] = *v318;
    *(v310 + 9) = *&v318[9];
    v306 = aBlock;
    v307 = v315;
    sub_1CEFCCC44(&v306, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v188 = v281;
    v187 = v282;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v283 + 1))(v188, v187);
    aBlock = v95;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v189 = v95;
    v285(&aBlock);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v182 = a1;
  v183 = swift_dynamicCast();

  if (v183)
  {
    goto LABEL_93;
  }

  *&v306 = a1;
  v184 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v315, *(&v315 + 1), v316);
LABEL_91:
    v181 = v306;
LABEL_92:

    goto LABEL_93;
  }

  *&v306 = a1;
  v185 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v315, SBYTE8(v315));
    goto LABEL_91;
  }

  *&v306 = a1;
  v186 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v190 = sub_1CF9E57E8();
  v191 = [v190 userInfo];
  v192 = sub_1CF9E6638();

  v193 = *MEMORY[0x1E696AA08];
  v194 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v192 + 16))
  {

    goto LABEL_99;
  }

  v196 = sub_1CEFE4328(v194, v195);
  v198 = v197;

  if ((v198 & 1) == 0)
  {
LABEL_99:

    goto LABEL_100;
  }

  sub_1CEFD1104(*(v192 + 56) + 32 * v196, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v199 = v306;
    v200 = v284;

    v201 = v190;
    v202 = v199;
    sub_1CF782688(v202, v279 & 1, v278, v201, v285, v200, &unk_1F4C156A0, &unk_1F4C156C8, sub_1CF796A98, sub_1CF77F3B8, &unk_1F4C157B8, sub_1CF7969FC, &unk_1F4C157E0, sub_1CF796A04, sub_1CF72A328, &unk_1F4C15768, &unk_1F4C15790, sub_1CF796A00, sub_1CF72A328, &unk_1F4C156F0, &unk_1F4C15718, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_582, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_100:
  v203 = swift_allocObject();
  v204 = [v190 userInfo];
  v205 = sub_1CF9E6638();

  v206 = *MEMORY[0x1E696A750];
  v207 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v205 + 16))
  {

    goto LABEL_115;
  }

  v209 = sub_1CEFE4328(v207, v208);
  v55 = v210;

  if ((v55 & 1) == 0)
  {
LABEL_115:

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v205 + 56) + 32 * v209, &aBlock);

  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    aBlock = a1;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v222 = a1;
    v285(&aBlock);

    return;
  }

  v203[2] = v306;
  v211 = dispatch_group_create();
  v212 = v203[2];
  if (v212 >> 62)
  {
    goto LABEL_118;
  }

  v213 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v213)
  {
    goto LABEL_124;
  }

  do
  {
    v214 = 0;
    while (1)
    {
      v55 = v211;
      v215 = objc_sync_enter(v55);
      if (v215)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v216 = v203[2];
      if ((v216 & 0xC000000000000001) != 0)
      {
        v217 = MEMORY[0x1D3869C30](v214);
        goto LABEL_110;
      }

      if (v214 >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v217 = *(v216 + 8 * v214 + 32);
LABEL_110:
      v218 = v217;
      swift_endAccess();
      v219 = objc_sync_exit(v55);
      if (v219)
      {
        MEMORY[0x1EEE9AC00](v219);
        v254 = v55;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v253, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v55);
      v220 = v55;

      v221 = v218;
      sub_1CF774BF8(v221, v279 & 1, v278, v220, v203, v214);

      if (v213 == ++v214)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v223 = sub_1CF9E7818();
    if (v223 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v213 = v223;
  }

  while (v223);
LABEL_124:
  if (v279)
  {
    v224 = [v190 userInfo];
    v225 = sub_1CF9E6638();

    v226 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v228 = v227;
    swift_beginAccess();
    v229 = v203[2];
    *(&v315 + 1) = v283;
    *&aBlock = v229;
    sub_1CEFE9EB8(&aBlock, &v306);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v287 = v225;
    sub_1CF1D154C(&v306, v226, v228, isUniquelyReferenced_nonNull_native);

    v231 = [v190 domain];
    if (!v231)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v231 = sub_1CF9E6888();
    }

    v232 = [v190 code];
    v233 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v234 = sub_1CF9E6618();

    v235 = [v233 initWithDomain:v231 code:v232 userInfo:v234];

    aBlock = v235;
    v315 = 0uLL;
    LOBYTE(v316) = 1;
    v236 = v235;
    v285(&aBlock);

LABEL_75:
  }

  else
  {
    v237 = *(*(v278 + 16) + 64);
    v238 = swift_allocObject();
    v238[2] = v190;
    v238[3] = v203;
    v238[4] = sub_1CF796158;
    v238[5] = v286;

    v239 = v237;
    v285 = v190;

    v240 = fpfs_current_log();
    v283 = fpfs_adopt_log();
    v241 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v242;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v243 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v243);

    sub_1CF9E6978();

    v244 = __fp_log_fork();

    *(v241 + 16) = v244;
    v245 = swift_allocObject();
    *(v245 + 16) = v240;
    *(v245 + 24) = v241;
    v281 = v241;
    *(v245 + 32) = v239;
    *(v245 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v245 + 48) = 48;
    *(v245 + 56) = 2;
    *(v245 + 64) = sub_1CF796ACC;
    *(v245 + 72) = v238;
    *&v316 = sub_1CF2B9F54;
    *(&v316 + 1) = v245;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v315 = sub_1CEFCA444;
    *(&v315 + 1) = &block_descriptor_543;
    v246 = _Block_copy(&aBlock);
    v280 = v239;
    v282 = v240;

    v247 = v256;
    sub_1CF9E63F8();
    *&v306 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v248 = v257;
    v249 = v259;
    sub_1CF9E77B8();
    v250 = v280;
    sub_1CF9E7308();
    _Block_release(v246);
    (*(v258 + 8))(v248, v249);
    (*(v273 + 8))(v247, v274);

    v251 = v283;
    v252 = fpfs_adopt_log();
  }
}

void sub_1CF78A358(void *a1, int a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v269 = a3;
  LODWORD(v270) = a2;
  v8 = sub_1CF9E63A8();
  v247 = *(v8 - 8);
  v248 = v8;
  v9 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v246 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v267 = *(v11 - 8);
  v268 = v11;
  v12 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v266 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v262 = *(v14 - 8);
  v263 = v14;
  v15 = *(v262 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v258 = (&v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v259 = &v245 - v18;
  v19 = sub_1CF9E6498();
  v260 = *(v19 - 8);
  v261 = v19;
  v20 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v257 = &v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v251 = &v245 - v27;
  v28 = sub_1CF9E63D8();
  v255 = *(v28 - 8);
  v256 = v28;
  v29 = *(v255 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v249 = &v245 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v250 = &v245 - v32;
  v33 = sub_1CF9E6448();
  v264 = *(v33 - 8);
  v265 = v33;
  v34 = *(v264 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v245 = &v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v252 = &v245 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v253 = &v245 - v39;
  v40 = sub_1CF9E73D8();
  v254 = *(v40 - 8);
  v41 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5248();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v271 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5268();
  v48 = *(v47 - 1);
  v273 = v47;
  v274 = v48;
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v272 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  v277 = a4;
  *(v51 + 16) = a4;
  *(v51 + 24) = a5;
  v307 = a1;
  swift_retain_n();
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291))
    {
      sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v63 = nullsub_1(&v291);
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = *(v63 + 112);

    v67 = sub_1CEFCCC44(v63 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v65 != 2 || v64)
    {
      if (v65 != 2 || v64 != 1)
      {
        v278 = 0x2F73662F70665F5FLL;
        v279 = 0xE800000000000000;
        v280 = v64;
        v281 = v65;
        v116 = VFSItemID.description.getter(v67, v68);
        MEMORY[0x1D3868CC0](v116);

        v79 = sub_1CF9E6888();

        if (v66)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v69 = MEMORY[0x1E6967280];
    }

    else
    {
      v69 = MEMORY[0x1E6967258];
    }

    v79 = *v69;
    if (v66)
    {
LABEL_22:
      v80 = v66;
LABEL_54:
      v278 = v80;
      LOBYTE(v279) = 1;
      v117 = v66;
      v118 = v80;
      v277(&v278);

      v119 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v275 = a5;
  v276 = v51;

  v278 = a1;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v295 + 9) = *(v303 + 9);
    v294 = v302;
    v295[0] = v303[0];
    v292 = v300;
    v293 = v301;
    v291 = aBlock;
    if (!BYTE8(v303[1]))
    {
      v70 = *(&v295[0] + 1);
      v71 = *(&v293 + 1);
      v72 = v293;
      v73 = *(&v292 + 1);
      v74 = v292;
      v75 = *(&v291 + 1);
      v274 = v291;

      sub_1CF1D56D0(v75, v74, v73, v72, v71);
      if (v70)
      {
        v76 = v70;
        v77 = v277;
        v78 = v274;
      }

      else
      {
        v113 = objc_opt_self();
        v78 = v274;
        v76 = [v113 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v277;
      }

      *&v282 = v76;
      BYTE8(v282) = 1;
      v114 = v70;
      v115 = v76;
      v77(&v282);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v280 = a1;
  v55 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    v56 = sub_1CF2B971C(&v291);
    switch(v56)
    {
      case 5:
        nullsub_1(&v291);
        v88 = v280;
LABEL_30:

        v90 = v277;
        goto LABEL_31;
      case 3:
        v81 = nullsub_1(&v291);
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v270)
        {
          LODWORD(v278) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v84 = v266;
          v85 = v268;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v267;
LABEL_48:
          v87[1](v84, v85);
          v278 = v86;
          LOBYTE(v279) = 1;
          v111 = v86;
          v277(&v278);

          v112 = v280;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v272) = v83;
        v273 = v82;
        v120 = v269;
        v121 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v122 = swift_dynamicCastClassUnconditional();
        v123 = swift_allocObject();
        v124 = v276;
        v123[2] = sub_1CF7968B0;
        v123[3] = v124;
        v274 = v123;
        v123[4] = v120;
        v270 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v271 = v122;
        v125 = *(v122 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        v268 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v277 = v121;

        v126 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v127 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        sub_1CF9E63B8();
        v129 = v255;
        v128 = v256;
        v130 = *(v255 + 48);
        if (v130(v26, 1, v256) == 1)
        {
          (*(v129 + 104))(v249, *MEMORY[0x1E69E7FA0], v128);
          if (v130(v26, 1, v128) != 1)
          {
            sub_1CEFCCC44(v26, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v129 + 32))(v249, v26, v128);
        }

        ObjectType = swift_getObjectType();
        v148 = v252;
        sub_1CF9E6428();
        v149 = swift_allocObject();
        v150 = v273;
        v151 = v274;
        *(v149 + 16) = v271;
        *(v149 + 24) = v150;
        *(v149 + 32) = v272;
        *(v149 + 40) = 0u;
        *(v149 + 56) = 0u;
        *(v149 + 72) = 0u;
        *(v149 + 88) = 0u;
        *(v149 + 104) = 0u;
        *(v149 + 120) = 0u;
        *(v149 + 136) = 0;
        *(v149 + 144) = 1;
        *(v149 + 152) = v127;
        *(v149 + 160) = sub_1CF796A00;
        *(v149 + 168) = v151;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v148, sub_1CF72A328, v149);

        (*(v264 + 8))(v148, v265);
LABEL_68:
        v154 = v257;
        sub_1CF9E6478();
        v155 = v259;
        sub_1CEFD5B64(v259);
        v156 = v258;
        sub_1CEFD5BD8(v258);
        MEMORY[0x1D3869770](v154, v155, v156, ObjectType);
        v157 = *(v262 + 8);
        v158 = v156;
        v159 = v263;
        v157(v158, v263);
        v157(v155, v159);
        (*(v260 + 8))(v154, v261);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        v57 = nullsub_1(&v291);
        v58 = *v57;
        v59 = *(v57 + 8);
        v60 = *(v57 + 24);
        v61 = *(v57 + 48);
        v62 = *(v57 + 56);

        sub_1CF480620(v61, v62);

        if (v270)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v84 = v272;
          v85 = v273;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v274;
          goto LABEL_48;
        }

        LODWORD(v273) = v59;
        v131 = v269;
        v132 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v133 = swift_dynamicCastClassUnconditional();
        v134 = swift_allocObject();
        v135 = v276;
        v134[2] = sub_1CF7968B0;
        v134[3] = v135;
        v274 = v134;
        v134[4] = v131;
        v271 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v272 = v133;
        v136 = *(v133 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v277 = v132;

        v137 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v138 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        v139 = v251;
        sub_1CF9E63B8();
        v141 = v255;
        v140 = v256;
        v142 = *(v255 + 48);
        if (v142(v139, 1, v256) == 1)
        {
          (*(v141 + 104))(v250, *MEMORY[0x1E69E7FA0], v140);
          if (v142(v139, 1, v140) != 1)
          {
            sub_1CEFCCC44(v139, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v141 + 32))(v250, v139, v140);
        }

        ObjectType = swift_getObjectType();
        v152 = v253;
        sub_1CF9E6428();
        v153 = swift_allocObject();
        *(v153 + 16) = v272;
        *(v153 + 24) = v58;
        *(v153 + 32) = v273;
        *(v153 + 40) = 0u;
        *(v153 + 56) = 0u;
        *(v153 + 72) = 0u;
        *(v153 + 88) = 0u;
        *(v153 + 104) = 0u;
        *(v153 + 120) = 0u;
        *(v153 + 136) = 0;
        *(v153 + 144) = 1;
        *(v153 + 152) = v138;
        *(v153 + 160) = sub_1CF796A04;
        *(v153 + 168) = v274;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v152, sub_1CF72A328, v153);

        (*(v264 + 8))(v152, v265);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v282 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v295 + 9) = *(v303 + 9);
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v291 = aBlock;
    v292 = v300;
    if (BYTE8(v303[1]) == 5)
    {
      v88 = v282;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v291 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v282 > 2u)
    {
      v90 = v277;
      if (v282 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v107 = v272;
        v106 = v273;
        sub_1CF9E57D8();
        v108 = sub_1CF9E50D8();
        (*(v274 + 1))(v107, v106);
        *&aBlock = v108;
        BYTE8(aBlock) = 1;
        v109 = v108;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v277;
    if (v282 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v92 = v272;
    v91 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v92, v91);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v282 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v300 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v300);
      LODWORD(v291) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v143 = v266;
      v144 = v268;
      sub_1CF9E57D8();
      v145 = sub_1CF9E53A8();
      (*(v267 + 8))(v143, v144);
      *&v291 = v145;
      BYTE8(v291) = 1;
      v146 = v145;
      v277(&v291);

      v112 = v282;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    v98 = *MEMORY[0x1E696A578];
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v102;
    *(v97 + 56) = v104;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v93 = v291;
    *&aBlock = v291;
    BYTE8(aBlock) = 1;
    v105 = v291;
    v277(&aBlock);

LABEL_33:

    return;
  }

  v280 = a1;
  v110 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v291 = a1;
  v160 = a1;
  if (swift_dynamicCast())
  {
    v161 = FPDomainUnavailableError();
    if (!v161)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v204);
      v244 = v53;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v162 = v161;
    *&aBlock = v161;
    BYTE8(aBlock) = 1;
    v163 = v161;
    v277(&aBlock);

    v112 = v291;
    goto LABEL_73;
  }

  v307 = a1;
  v164 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291) == 10)
    {
      v165 = *(nullsub_1(&v291) + 16);
      if (!v165)
      {
        LODWORD(v278) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v166 = v266;
        v167 = v268;
        sub_1CF9E57D8();
        v165 = sub_1CF9E53A8();
        (*(v267 + 8))(v166, v167);
      }

      v280 = v165;
      v281 = 1;
      sub_1CEFCCBDC(&v282, &v278, &unk_1EC4BE320, &unk_1CFA08B50);
      v168 = v165;
      v277(&v280);

      sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
      v119 = v165;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
    v170 = v307;
    goto LABEL_92;
  }

  *&v282 = a1;
  v169 = a1;
  if (swift_dynamicCast())
  {
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    *(v295 + 9) = *(v303 + 9);
    v291 = aBlock;
    v292 = v300;
    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v177 = v272;
    v176 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v177, v176);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v178 = v93;
    v277(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v171 = a1;
  v172 = swift_dynamicCast();

  if (v172)
  {
    goto LABEL_93;
  }

  *&v291 = a1;
  v173 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v300, *(&v300 + 1), v301);
LABEL_91:
    v170 = v291;
LABEL_92:

    goto LABEL_93;
  }

  *&v291 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v300, SBYTE8(v300));
    goto LABEL_91;
  }

  *&v291 = a1;
  v175 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v179 = sub_1CF9E57E8();
  v180 = [v179 userInfo];
  v181 = sub_1CF9E6638();

  v182 = *MEMORY[0x1E696AA08];
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v181 + 16))
  {

    goto LABEL_99;
  }

  v185 = sub_1CEFE4328(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_99:

    goto LABEL_100;
  }

  sub_1CEFD1104(*(v181 + 56) + 32 * v185, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v188 = v291;
    v189 = v275;

    v190 = v179;
    v191 = v188;
    sub_1CF77F5D0(v191, v270 & 1, v269, v190, v277, v189, &unk_1F4C16668, &unk_1F4C16690, sub_1CF796A8C, &unk_1F4C16780, sub_1CF7969FC, &unk_1F4C167A8, sub_1CF796A04, sub_1CF72A328, &unk_1F4C16730, &unk_1F4C16758, sub_1CF796A00, sub_1CF72A328, &unk_1F4C166B8, &unk_1F4C166E0, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_992, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_100:
  v192 = swift_allocObject();
  v193 = [v179 userInfo];
  v194 = sub_1CF9E6638();

  v195 = *MEMORY[0x1E696A750];
  v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v194 + 16))
  {

    goto LABEL_115;
  }

  v198 = sub_1CEFE4328(v196, v197);
  v53 = v199;

  if ((v53 & 1) == 0)
  {
LABEL_115:

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v194 + 56) + 32 * v198, &aBlock);

  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    v211 = v277;
    swift_deallocUninitializedObject();
    *&aBlock = a1;
    BYTE8(aBlock) = 1;
    v212 = a1;
    v211(&aBlock);

    return;
  }

  v192[2] = v291;
  v200 = dispatch_group_create();
  v201 = v192[2];
  if (v201 >> 62)
  {
    goto LABEL_118;
  }

  v202 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v202)
  {
    goto LABEL_124;
  }

  do
  {
    v203 = 0;
    while (1)
    {
      v53 = v200;
      v204 = objc_sync_enter(v53);
      if (v204)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v205 = v192[2];
      if ((v205 & 0xC000000000000001) != 0)
      {
        v206 = MEMORY[0x1D3869C30](v203);
        goto LABEL_110;
      }

      if (v203 >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v206 = *(v205 + 8 * v203 + 32);
LABEL_110:
      v207 = v206;
      swift_endAccess();
      v208 = objc_sync_exit(v53);
      if (v208)
      {
        MEMORY[0x1EEE9AC00](v208);
        v244 = v53;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v53);
      v209 = v53;

      v210 = v207;
      sub_1CF774BF8(v210, v270 & 1, v269, v209, v192, v203);

      if (v202 == ++v203)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v213 = sub_1CF9E7818();
    if (v213 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v202 = v213;
  }

  while (v213);
LABEL_124:
  if (v270)
  {
    v214 = [v179 userInfo];
    v215 = sub_1CF9E6638();

    v216 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v218 = v217;
    swift_beginAccess();
    v219 = v192[2];
    *(&v300 + 1) = v274;
    *&aBlock = v219;
    sub_1CEFE9EB8(&aBlock, &v291);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278 = v215;
    sub_1CF1D154C(&v291, v216, v218, isUniquelyReferenced_nonNull_native);

    v221 = [v179 domain];
    if (!v221)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v221 = sub_1CF9E6888();
    }

    v222 = [v179 code];
    v223 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v224 = sub_1CF9E6618();

    v225 = [v223 initWithDomain:v221 code:v222 userInfo:v224];

    *&aBlock = v225;
    BYTE8(aBlock) = 1;
    v226 = v225;
    v277(&aBlock);

LABEL_75:
  }

  else
  {
    v227 = *(*(v269 + 16) + 64);
    v228 = swift_allocObject();
    v228[2] = v179;
    v228[3] = v192;
    v228[4] = sub_1CF7968B0;
    v228[5] = v276;

    v229 = v227;
    v277 = v179;

    v230 = fpfs_current_log();
    v274 = fpfs_adopt_log();
    v231 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v232;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v233 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v233);

    sub_1CF9E6978();

    v234 = __fp_log_fork();

    *(v231 + 16) = v234;
    v235 = swift_allocObject();
    *(v235 + 16) = v230;
    *(v235 + 24) = v231;
    v272 = v231;
    *(v235 + 32) = v229;
    *(v235 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v235 + 48) = 48;
    *(v235 + 56) = 2;
    *(v235 + 64) = sub_1CF796ACC;
    *(v235 + 72) = v228;
    *&v301 = sub_1CF2B9F54;
    *(&v301 + 1) = v235;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v300 = sub_1CEFCA444;
    *(&v300 + 1) = &block_descriptor_953;
    v236 = _Block_copy(&aBlock);
    v271 = v229;
    v273 = v230;

    v237 = v245;
    sub_1CF9E63F8();
    *&v291 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v238 = v246;
    v239 = v248;
    sub_1CF9E77B8();
    v240 = v271;
    sub_1CF9E7308();
    _Block_release(v236);
    (*(v247 + 8))(v238, v239);
    (*(v264 + 8))(v237, v265);

    v241 = v274;
    v242 = fpfs_adopt_log();
  }
}

void sub_1CF78CC3C(void *a1, int a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v269 = a3;
  LODWORD(v270) = a2;
  v8 = sub_1CF9E63A8();
  v247 = *(v8 - 8);
  v248 = v8;
  v9 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v246 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v267 = *(v11 - 8);
  v268 = v11;
  v12 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v266 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v262 = *(v14 - 8);
  v263 = v14;
  v15 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v258 = (&v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v259 = &v245 - v18;
  v19 = sub_1CF9E6498();
  v260 = *(v19 - 8);
  v261 = v19;
  v20 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v257 = &v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v251 = &v245 - v27;
  v28 = sub_1CF9E63D8();
  v255 = *(v28 - 8);
  v256 = v28;
  v29 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v249 = &v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v250 = &v245 - v32;
  v33 = sub_1CF9E6448();
  v264 = *(v33 - 8);
  v265 = v33;
  v34 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v245 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v252 = &v245 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v253 = &v245 - v39;
  v40 = sub_1CF9E73D8();
  v254 = *(v40 - 8);
  v41 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5248();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v271 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5268();
  v48 = *(v47 - 1);
  v273 = v47;
  v274 = v48;
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v272 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  v277 = a4;
  *(v51 + 16) = a4;
  *(v51 + 24) = a5;
  v307 = a1;
  swift_retain_n();
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291))
    {
      sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v63 = nullsub_1(&v291);
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = *(v63 + 112);

    v67 = sub_1CEFCCC44(v63 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v65 != 2 || v64)
    {
      if (v65 != 2 || v64 != 1)
      {
        v278 = 0x2F73662F70665F5FLL;
        v279 = 0xE800000000000000;
        v280 = v64;
        v281 = v65;
        v116 = VFSItemID.description.getter(v67, v68);
        MEMORY[0x1D3868CC0](v116);

        v79 = sub_1CF9E6888();

        if (v66)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v69 = MEMORY[0x1E6967280];
    }

    else
    {
      v69 = MEMORY[0x1E6967258];
    }

    v79 = *v69;
    if (v66)
    {
LABEL_22:
      v80 = v66;
LABEL_54:
      v278 = v80;
      LOBYTE(v279) = 1;
      v117 = v66;
      v118 = v80;
      v277(&v278);

      v119 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v275 = a5;
  v276 = v51;

  v278 = a1;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v295 + 9) = *(v303 + 9);
    v294 = v302;
    v295[0] = v303[0];
    v292 = v300;
    v293 = v301;
    v291 = aBlock;
    if (!BYTE8(v303[1]))
    {
      v70 = *(&v295[0] + 1);
      v71 = *(&v293 + 1);
      v72 = v293;
      v73 = *(&v292 + 1);
      v74 = v292;
      v75 = *(&v291 + 1);
      v274 = v291;

      sub_1CF1D56D0(v75, v74, v73, v72, v71);
      if (v70)
      {
        v76 = v70;
        v77 = v277;
        v78 = v274;
      }

      else
      {
        v113 = objc_opt_self();
        v78 = v274;
        v76 = [v113 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v277;
      }

      *&v282 = v76;
      BYTE8(v282) = 1;
      v114 = v70;
      v115 = v76;
      v77(&v282);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v280 = a1;
  v55 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    v56 = sub_1CF2B971C(&v291);
    switch(v56)
    {
      case 5:
        nullsub_1(&v291);
        v88 = v280;
LABEL_30:

        v90 = v277;
        goto LABEL_31;
      case 3:
        v81 = nullsub_1(&v291);
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v270)
        {
          LODWORD(v278) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v84 = v266;
          v85 = v268;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v267;
LABEL_48:
          v87[1](v84, v85);
          v278 = v86;
          LOBYTE(v279) = 1;
          v111 = v86;
          v277(&v278);

          v112 = v280;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v272) = v83;
        v273 = v82;
        v120 = v269;
        v121 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v122 = swift_dynamicCastClassUnconditional();
        v123 = swift_allocObject();
        v124 = v276;
        v123[2] = sub_1CF796A8C;
        v123[3] = v124;
        v274 = v123;
        v123[4] = v120;
        v270 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v271 = v122;
        v125 = *(v122 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        v268 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v277 = v121;

        v126 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v127 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        sub_1CF9E63B8();
        v129 = v255;
        v128 = v256;
        v130 = *(v255 + 48);
        if (v130(v25, 1, v256) == 1)
        {
          (*(v129 + 104))(v249, *MEMORY[0x1E69E7FA0], v128);
          if (v130(v25, 1, v128) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v129 + 32))(v249, v25, v128);
        }

        ObjectType = swift_getObjectType();
        v148 = v252;
        sub_1CF9E6428();
        v149 = swift_allocObject();
        v150 = v273;
        v151 = v274;
        *(v149 + 16) = v271;
        *(v149 + 24) = v150;
        *(v149 + 32) = v272;
        *(v149 + 40) = 0u;
        *(v149 + 56) = 0u;
        *(v149 + 72) = 0u;
        *(v149 + 88) = 0u;
        *(v149 + 104) = 0u;
        *(v149 + 120) = 0u;
        *(v149 + 136) = 0;
        *(v149 + 144) = 1;
        *(v149 + 152) = v127;
        *(v149 + 160) = sub_1CF796A00;
        *(v149 + 168) = v151;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v148, sub_1CF72A328, v149);

        (*(v264 + 8))(v148, v265);
LABEL_68:
        v154 = v257;
        sub_1CF9E6478();
        v155 = v259;
        sub_1CEFD5B64(v259);
        v156 = v258;
        sub_1CEFD5BD8(v258);
        MEMORY[0x1D3869770](v154, v155, v156, ObjectType);
        v157 = *(v262 + 8);
        v158 = v156;
        v159 = v263;
        v157(v158, v263);
        v157(v155, v159);
        (*(v260 + 8))(v154, v261);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        v57 = nullsub_1(&v291);
        v58 = *v57;
        v59 = *(v57 + 8);
        v60 = *(v57 + 24);
        v61 = *(v57 + 48);
        v62 = *(v57 + 56);

        sub_1CF480620(v61, v62);

        if (v270)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v84 = v272;
          v85 = v273;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v274;
          goto LABEL_48;
        }

        LODWORD(v273) = v59;
        v131 = v269;
        v132 = *(*(*(v269 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v133 = swift_dynamicCastClassUnconditional();
        v134 = swift_allocObject();
        v135 = v276;
        v134[2] = sub_1CF796A8C;
        v134[3] = v135;
        v274 = v134;
        v134[4] = v131;
        v271 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v272 = v133;
        v136 = *(v133 + 216);
        v278 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v277 = v132;

        v137 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v138 = sub_1CF9E73E8();

        (*(v254 + 8))(v43, v40);
        qos_class_self();
        v139 = v251;
        sub_1CF9E63B8();
        v141 = v255;
        v140 = v256;
        v142 = *(v255 + 48);
        if (v142(v139, 1, v256) == 1)
        {
          (*(v141 + 104))(v250, *MEMORY[0x1E69E7FA0], v140);
          if (v142(v139, 1, v140) != 1)
          {
            sub_1CEFCCC44(v139, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v141 + 32))(v250, v139, v140);
        }

        ObjectType = swift_getObjectType();
        v152 = v253;
        sub_1CF9E6428();
        v153 = swift_allocObject();
        *(v153 + 16) = v272;
        *(v153 + 24) = v58;
        *(v153 + 32) = v273;
        *(v153 + 40) = 0u;
        *(v153 + 56) = 0u;
        *(v153 + 72) = 0u;
        *(v153 + 88) = 0u;
        *(v153 + 104) = 0u;
        *(v153 + 120) = 0u;
        *(v153 + 136) = 0;
        *(v153 + 144) = 1;
        *(v153 + 152) = v138;
        *(v153 + 160) = sub_1CF796A04;
        *(v153 + 168) = v274;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v152, sub_1CF72A328, v153);

        (*(v264 + 8))(v152, v265);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v282 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v295 + 9) = *(v303 + 9);
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v291 = aBlock;
    v292 = v300;
    if (BYTE8(v303[1]) == 5)
    {
      v88 = v282;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v291 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v282 > 2u)
    {
      v90 = v277;
      if (v282 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v107 = v272;
        v106 = v273;
        sub_1CF9E57D8();
        v108 = sub_1CF9E50D8();
        (*(v274 + 1))(v107, v106);
        *&aBlock = v108;
        BYTE8(aBlock) = 1;
        v109 = v108;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v277;
    if (v282 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v92 = v272;
    v91 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v92, v91);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v282 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v300 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v300);
      LODWORD(v291) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v143 = v266;
      v144 = v268;
      sub_1CF9E57D8();
      v145 = sub_1CF9E53A8();
      (*(v267 + 8))(v143, v144);
      *&v291 = v145;
      BYTE8(v291) = 1;
      v146 = v145;
      v277(&v291);

      v112 = v282;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    v98 = *MEMORY[0x1E696A578];
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v102;
    *(v97 + 56) = v104;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v93 = v291;
    *&aBlock = v291;
    BYTE8(aBlock) = 1;
    v105 = v291;
    v277(&aBlock);

LABEL_33:

    return;
  }

  v280 = a1;
  v110 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v291 = a1;
  v160 = a1;
  if (swift_dynamicCast())
  {
    v161 = FPDomainUnavailableError();
    if (!v161)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v204);
      v244 = v53;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v162 = v161;
    *&aBlock = v161;
    BYTE8(aBlock) = 1;
    v163 = v161;
    v277(&aBlock);

    v112 = v291;
    goto LABEL_73;
  }

  v307 = a1;
  v164 = a1;
  if (swift_dynamicCast())
  {
    v288 = v304;
    v289 = v305;
    v284 = v301;
    v285 = v302;
    v286 = v303[0];
    v287 = v303[1];
    v282 = aBlock;
    v283 = v300;
    v296 = v304;
    v297 = v305;
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    v295[1] = v303[1];
    v290 = v306;
    v298 = v306;
    v291 = aBlock;
    v292 = v300;
    if (sub_1CF2B971C(&v291) == 10)
    {
      v165 = *(nullsub_1(&v291) + 16);
      if (!v165)
      {
        LODWORD(v278) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v166 = v266;
        v167 = v268;
        sub_1CF9E57D8();
        v165 = sub_1CF9E53A8();
        (*(v267 + 8))(v166, v167);
      }

      v280 = v165;
      v281 = 1;
      sub_1CEFCCBDC(&v282, &v278, &unk_1EC4BE320, &unk_1CFA08B50);
      v168 = v165;
      v277(&v280);

      sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
      v119 = v165;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v282, &unk_1EC4BE320, &unk_1CFA08B50);
    v170 = v307;
    goto LABEL_92;
  }

  *&v282 = a1;
  v169 = a1;
  if (swift_dynamicCast())
  {
    v293 = v301;
    v294 = v302;
    v295[0] = v303[0];
    *(v295 + 9) = *(v303 + 9);
    v291 = aBlock;
    v292 = v300;
    sub_1CEFCCC44(&v291, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v177 = v272;
    v176 = v273;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v274 + 1))(v177, v176);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v178 = v93;
    v277(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v171 = a1;
  v172 = swift_dynamicCast();

  if (v172)
  {
    goto LABEL_93;
  }

  *&v291 = a1;
  v173 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v300, *(&v300 + 1), v301);
LABEL_91:
    v170 = v291;
LABEL_92:

    goto LABEL_93;
  }

  *&v291 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v300, SBYTE8(v300));
    goto LABEL_91;
  }

  *&v291 = a1;
  v175 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v179 = sub_1CF9E57E8();
  v180 = [v179 userInfo];
  v181 = sub_1CF9E6638();

  v182 = *MEMORY[0x1E696AA08];
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v181 + 16))
  {

    goto LABEL_99;
  }

  v185 = sub_1CEFE4328(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_99:

    goto LABEL_100;
  }

  sub_1CEFD1104(*(v181 + 56) + 32 * v185, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v188 = v291;
    v189 = v275;

    v190 = v179;
    v191 = v188;
    sub_1CF77F5D0(v191, v270 & 1, v269, v190, v277, v189, &unk_1F4C14CA0, &unk_1F4C14CC8, sub_1CF796A8C, &unk_1F4C14DB8, sub_1CF7969FC, &unk_1F4C14DE0, sub_1CF796A04, sub_1CF72A328, &unk_1F4C14D68, &unk_1F4C14D90, sub_1CF796A00, sub_1CF72A328, &unk_1F4C14CF0, &unk_1F4C14D18, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_312_0, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_100:
  v192 = swift_allocObject();
  v193 = [v179 userInfo];
  v194 = sub_1CF9E6638();

  v195 = *MEMORY[0x1E696A750];
  v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v194 + 16))
  {

    goto LABEL_115;
  }

  v198 = sub_1CEFE4328(v196, v197);
  v53 = v199;

  if ((v53 & 1) == 0)
  {
LABEL_115:

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v194 + 56) + 32 * v198, &aBlock);

  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    v211 = v277;
    swift_deallocUninitializedObject();
    *&aBlock = a1;
    BYTE8(aBlock) = 1;
    v212 = a1;
    v211(&aBlock);

    return;
  }

  v192[2] = v291;
  v200 = dispatch_group_create();
  v201 = v192[2];
  if (v201 >> 62)
  {
    goto LABEL_118;
  }

  v202 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v202)
  {
    goto LABEL_124;
  }

  do
  {
    v203 = 0;
    while (1)
    {
      v53 = v200;
      v204 = objc_sync_enter(v53);
      if (v204)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v205 = v192[2];
      if ((v205 & 0xC000000000000001) != 0)
      {
        v206 = MEMORY[0x1D3869C30](v203);
        goto LABEL_110;
      }

      if (v203 >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v206 = *(v205 + 8 * v203 + 32);
LABEL_110:
      v207 = v206;
      swift_endAccess();
      v208 = objc_sync_exit(v53);
      if (v208)
      {
        MEMORY[0x1EEE9AC00](v208);
        v244 = v53;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v243, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v53);
      v209 = v53;

      v210 = v207;
      sub_1CF774BF8(v210, v270 & 1, v269, v209, v192, v203);

      if (v202 == ++v203)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v213 = sub_1CF9E7818();
    if (v213 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v202 = v213;
  }

  while (v213);
LABEL_124:
  if (v270)
  {
    v214 = [v179 userInfo];
    v215 = sub_1CF9E6638();

    v216 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v218 = v217;
    swift_beginAccess();
    v219 = v192[2];
    *(&v300 + 1) = v274;
    *&aBlock = v219;
    sub_1CEFE9EB8(&aBlock, &v291);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278 = v215;
    sub_1CF1D154C(&v291, v216, v218, isUniquelyReferenced_nonNull_native);

    v221 = [v179 domain];
    if (!v221)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v221 = sub_1CF9E6888();
    }

    v222 = [v179 code];
    v223 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v224 = sub_1CF9E6618();

    v225 = [v223 initWithDomain:v221 code:v222 userInfo:v224];

    *&aBlock = v225;
    BYTE8(aBlock) = 1;
    v226 = v225;
    v277(&aBlock);

LABEL_75:
  }

  else
  {
    v227 = *(*(v269 + 16) + 64);
    v228 = swift_allocObject();
    v228[2] = v179;
    v228[3] = v192;
    v228[4] = sub_1CF796A8C;
    v228[5] = v276;

    v229 = v227;
    v277 = v179;

    v230 = fpfs_current_log();
    v274 = fpfs_adopt_log();
    v231 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v232;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v233 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v233);

    sub_1CF9E6978();

    v234 = __fp_log_fork();

    *(v231 + 16) = v234;
    v235 = swift_allocObject();
    *(v235 + 16) = v230;
    *(v235 + 24) = v231;
    v272 = v231;
    *(v235 + 32) = v229;
    *(v235 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v235 + 48) = 48;
    *(v235 + 56) = 2;
    *(v235 + 64) = sub_1CF796ACC;
    *(v235 + 72) = v228;
    *&v301 = sub_1CF2B9F54;
    *(&v301 + 1) = v235;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v300 = sub_1CEFCA444;
    *(&v300 + 1) = &block_descriptor_273_0;
    v236 = _Block_copy(&aBlock);
    v271 = v229;
    v273 = v230;

    v237 = v245;
    sub_1CF9E63F8();
    *&v291 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v238 = v246;
    v239 = v248;
    sub_1CF9E77B8();
    v240 = v271;
    sub_1CF9E7308();
    _Block_release(v236);
    (*(v247 + 8))(v238, v239);
    (*(v264 + 8))(v237, v265);

    v241 = v274;
    v242 = fpfs_adopt_log();
  }
}

void sub_1CF78F520(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v266 = a3;
  LODWORD(v267) = a2;
  v8 = sub_1CF9E63A8();
  v246 = *(v8 - 8);
  v247 = v8;
  v9 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v245 = &v243 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v264 = *(v11 - 8);
  v265 = v11;
  v12 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v263 = &v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v259 = *(v14 - 8);
  v260 = v14;
  v15 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v255 = (&v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v256 = &v243 - v18;
  v19 = sub_1CF9E6498();
  v257 = *(v19 - 8);
  v258 = v19;
  v20 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v254 = &v243 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v243 - v27;
  v29 = sub_1CF9E63D8();
  v252 = *(v29 - 8);
  v253 = v29;
  v30 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v243 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v248 = &v243 - v34;
  v35 = sub_1CF9E6448();
  v261 = *(v35 - 8);
  v262 = v35;
  v36 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v244 = &v243 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v249 = &v243 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v250 = &v243 - v41;
  v42 = sub_1CF9E73D8();
  v251 = *(v42 - 8);
  v43 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v243 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E5248();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v268 = &v243 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CF9E5268();
  v50 = *(v49 - 1);
  v270 = v49;
  v271 = v50;
  v51 = v50[8];
  MEMORY[0x1EEE9AC00](v49);
  v269 = &v243 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_allocObject();
  v273 = a4;
  v274 = v53;
  *(v53 + 16) = a4;
  *(v53 + 24) = a5;
  v304 = a1;
  swift_retain_n();
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v285 = v301;
    v286 = v302;
    v281 = v298;
    v282 = v299;
    v283 = *v300;
    v284 = *&v300[16];
    v279 = aBlock;
    v280 = v297;
    v293 = v301;
    v294 = v302;
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    v292[1] = *&v300[16];
    v287 = v303;
    v295 = v303;
    v288 = aBlock;
    v289 = v297;
    if (sub_1CF2B971C(&v288))
    {
      sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v65 = nullsub_1(&v288);
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 112);

    v69 = sub_1CEFCCC44(v65 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v67 != 2 || v66)
    {
      v72 = v273;
      if (v67 == 2 && v66 == 1)
      {
        v71 = *MEMORY[0x1E6967280];
        if (v68)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v277[0] = 0x2F73662F70665F5FLL;
        *(&v277[0] + 1) = 0xE800000000000000;
        v275 = v66;
        v276 = v67;
        v113 = VFSItemID.description.getter(v69, v70);
        MEMORY[0x1D3868CC0](v113);

        v71 = sub_1CF9E6888();

        if (v68)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v71 = *MEMORY[0x1E6967258];
      v72 = v273;
      if (v68)
      {
LABEL_16:
        v73 = v68;
LABEL_54:
        v114 = v68;
        v72(0, 0, v73);

LABEL_73:

        return;
      }
    }

    v73 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v272 = a5;

  *&v279 = a1;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v292 + 9) = *&v300[9];
    v291 = v299;
    v292[0] = *v300;
    v289 = v297;
    v290 = v298;
    v288 = aBlock;
    if (!v300[24])
    {
      v74 = *(&v292[0] + 1);
      v75 = *(&v290 + 1);
      v76 = v290;
      v77 = *(&v289 + 1);
      v78 = v289;
      v79 = *(&v288 + 1);
      v271 = v288;

      sub_1CF1D56D0(v79, v78, v77, v76, v75);
      if (v74)
      {
        v80 = v74;
        v81 = v273;
        v82 = v271;
      }

      else
      {
        v111 = objc_opt_self();
        v82 = v271;
        v80 = [v111 fileProviderErrorForNonExistentItemWithIdentifier_];
        v81 = v273;
      }

      v112 = v74;
      v81(0, 0, v80);

      v109 = v279;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v288, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v277[0] = a1;
  v57 = a1;
  if (swift_dynamicCast())
  {
    v285 = v301;
    v286 = v302;
    v281 = v298;
    v282 = v299;
    v283 = *v300;
    v284 = *&v300[16];
    v279 = aBlock;
    v280 = v297;
    v293 = v301;
    v294 = v302;
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    v292[1] = *&v300[16];
    v287 = v303;
    v295 = v303;
    v288 = aBlock;
    v289 = v297;
    v58 = sub_1CF2B971C(&v288);
    switch(v58)
    {
      case 5:
        nullsub_1(&v288);
        v90 = *&v277[0];
LABEL_30:

        v92 = v273;
        goto LABEL_31;
      case 3:
        v83 = nullsub_1(&v288);
        v84 = *v83;
        v85 = *(v83 + 8);
        sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v267)
        {
          LODWORD(v275) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v86 = v263;
          v87 = v265;
          sub_1CF9E57D8();
          v88 = sub_1CF9E53A8();
          v89 = v264;
LABEL_48:
          v89[1](v86, v87);
          (v273)(0, 0, v88);

          v109 = *&v277[0];
          goto LABEL_72;
        }

        LODWORD(v269) = v85;
        v270 = v84;
        v115 = v266;
        v116 = *(*(*(v266 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v117 = swift_dynamicCastClassUnconditional();
        v118 = swift_allocObject();
        v119 = v274;
        v118[2] = sub_1CF796004;
        v118[3] = v119;
        v271 = v118;
        v118[4] = v115;
        v267 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v268 = v117;
        v120 = *(v117 + 216);
        v275 = MEMORY[0x1E69E7CC0];
        v265 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v273 = v116;

        v121 = v120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v122 = sub_1CF9E73E8();

        (*(v251 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v124 = v252;
        v123 = v253;
        v125 = *(v252 + 48);
        if (v125(v25, 1, v253) == 1)
        {
          (*(v124 + 104))(v32, *MEMORY[0x1E69E7FA0], v123);
          if (v125(v25, 1, v123) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v124 + 32))(v32, v25, v123);
        }

        ObjectType = swift_getObjectType();
        v141 = v249;
        sub_1CF9E6428();
        v142 = swift_allocObject();
        v143 = v270;
        v144 = v271;
        *(v142 + 16) = v268;
        *(v142 + 24) = v143;
        *(v142 + 32) = v269;
        *(v142 + 40) = 0u;
        *(v142 + 56) = 0u;
        *(v142 + 72) = 0u;
        *(v142 + 88) = 0u;
        *(v142 + 104) = 0u;
        *(v142 + 120) = 0u;
        *(v142 + 136) = 0;
        *(v142 + 144) = 1;
        *(v142 + 152) = v122;
        *(v142 + 160) = sub_1CF796A00;
        *(v142 + 168) = v144;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v141, sub_1CF72A328, v142);

        (*(v261 + 8))(v141, v262);
        v145 = v254;
        sub_1CF9E6478();
        v146 = v256;
        sub_1CEFD5B64(v256);
        v147 = v255;
        sub_1CEFD5BD8(v255);
        MEMORY[0x1D3869770](v145, v146, v147, ObjectType);
        v148 = *(v259 + 8);
        v149 = v147;
        v150 = v260;
        v148(v149, v260);
        v148(v146, v150);
        (*(v257 + 8))(v145, v258);
        sub_1CF9E7448();
LABEL_67:

        swift_unknownObjectRelease();

        goto LABEL_73;
      case 1:
        v59 = nullsub_1(&v288);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 24);
        v63 = *(v59 + 48);
        v64 = *(v59 + 56);

        sub_1CF480620(v63, v64);

        if (v267)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v86 = v269;
          v87 = v270;
          sub_1CF9E57D8();
          v88 = sub_1CF9E50D8();
          v89 = v271;
          goto LABEL_48;
        }

        LODWORD(v269) = v61;
        v270 = v60;
        v126 = v266;
        v127 = *(*(*(v266 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v128 = swift_dynamicCastClassUnconditional();
        v129 = swift_allocObject();
        v130 = v274;
        v129[2] = sub_1CF796004;
        v129[3] = v130;
        v271 = v129;
        v129[4] = v126;
        v267 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v268 = v128;
        v131 = *(v128 + 216);
        v275 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v273 = v127;

        v132 = v131;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v133 = sub_1CF9E73E8();

        (*(v251 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v135 = v252;
        v134 = v253;
        v136 = *(v252 + 48);
        if (v136(v28, 1, v253) == 1)
        {
          (*(v135 + 104))(v248, *MEMORY[0x1E69E7FA0], v134);
          if (v136(v28, 1, v134) != 1)
          {
            sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v135 + 32))(v248, v28, v134);
        }

        v151 = swift_getObjectType();
        v152 = v250;
        sub_1CF9E6428();
        v153 = swift_allocObject();
        v154 = v270;
        v155 = v271;
        *(v153 + 16) = v268;
        *(v153 + 24) = v154;
        *(v153 + 32) = v269;
        *(v153 + 40) = 0u;
        *(v153 + 56) = 0u;
        *(v153 + 72) = 0u;
        *(v153 + 88) = 0u;
        *(v153 + 104) = 0u;
        *(v153 + 120) = 0u;
        *(v153 + 136) = 0;
        *(v153 + 144) = 1;
        *(v153 + 152) = v133;
        *(v153 + 160) = sub_1CF796A04;
        *(v153 + 168) = v155;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v152, sub_1CF72A328, v153);

        (*(v261 + 8))(v152, v262);
        v156 = v254;
        sub_1CF9E6478();
        v157 = v256;
        sub_1CEFD5B64(v256);
        v158 = v255;
        sub_1CEFD5BD8(v255);
        MEMORY[0x1D3869770](v156, v157, v158, v151);
        v159 = *(v259 + 8);
        v160 = v158;
        v161 = v260;
        v159(v160, v260);
        v159(v157, v161);
        (*(v257 + 8))(v156, v258);
        sub_1CF9E7448();
        goto LABEL_67;
    }

    sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v279 = a1;
  v91 = a1;
  if (swift_dynamicCast())
  {
    *(v292 + 9) = *&v300[9];
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    v288 = aBlock;
    v289 = v297;
    if (v300[24] == 5)
    {
      v90 = v279;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v288, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if (v288 > 2u)
    {
      v92 = v273;
      if (v288 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v107 = v269;
        v106 = v270;
        sub_1CF9E57D8();
        v108 = sub_1CF9E50D8();
        (*(v271 + 1))(v107, v106);
        v92(0, 0, v108);

        v109 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v92 = v273;
    if (v288 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v94 = v269;
    v93 = v270;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v271 + 1))(v94, v93);
    v92(0, 0, v95);
    goto LABEL_33;
  }

  *&v288 = a1;
  v97 = a1;
  if (swift_dynamicCast())
  {
    if ((v297 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v297);
      LODWORD(v279) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v137 = v263;
      v138 = v265;
      sub_1CF9E57D8();
      v139 = sub_1CF9E53A8();
      (*(v264 + 8))(v137, v138);
      (v273)(0, 0, v139);

      v109 = v288;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v288 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1CF9FA450;
    v99 = *MEMORY[0x1E696A578];
    *(v98 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v98 + 40) = v100;
    v101 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v102 = FPLocv();

    v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v105 = v104;

    *(v98 + 72) = MEMORY[0x1E69E6158];
    *(v98 + 48) = v103;
    *(v98 + 56) = v105;
    sub_1CF4E04E8(v98);
    swift_setDeallocating();
    sub_1CEFCCC44(v98 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v95 = aBlock;
    (v273)(0, 0, aBlock);
LABEL_33:

    return;
  }

  *&v277[0] = a1;
  v110 = a1;
  if (swift_dynamicCast())
  {
    v285 = v301;
    v286 = v302;
    v281 = v298;
    v282 = v299;
    v283 = *v300;
    v284 = *&v300[16];
    v279 = aBlock;
    v280 = v297;
    v293 = v301;
    v294 = v302;
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    v292[1] = *&v300[16];
    v287 = v303;
    v295 = v303;
    v288 = aBlock;
    v289 = v297;
    if (sub_1CF2B971C(&v288) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v162 = a1;
  if (swift_dynamicCast())
  {
    v163 = FPDomainUnavailableError();
    if (!v163)
    {
LABEL_118:

      __break(1u);
LABEL_119:
      MEMORY[0x1EEE9AC00](v205);
      v242 = v55;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v241, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v164 = v163;
    (v273)(0, 0, v163);

    v109 = aBlock;
    goto LABEL_72;
  }

  v275 = a1;
  v165 = a1;
  if (swift_dynamicCast())
  {
    v285 = v301;
    v286 = v302;
    v281 = v298;
    v282 = v299;
    v283 = *v300;
    v284 = *&v300[16];
    v279 = aBlock;
    v280 = v297;
    v293 = v301;
    v294 = v302;
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    v292[1] = *&v300[16];
    v287 = v303;
    v295 = v303;
    v288 = aBlock;
    v289 = v297;
    if (sub_1CF2B971C(&v288) == 10)
    {
      v166 = *(nullsub_1(&v288) + 16);
      if (!v166)
      {
        LODWORD(v277[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v167 = v263;
        v168 = v265;
        sub_1CF9E57D8();
        v166 = sub_1CF9E53A8();
        (*(v264 + 8))(v167, v168);
      }

      v169 = v273;
      v277[6] = v285;
      v277[7] = v286;
      v278 = v287;
      v277[2] = v281;
      v277[3] = v282;
      v277[4] = v283;
      v277[5] = v284;
      v277[0] = v279;
      v277[1] = v280;
      v170 = *(nullsub_1(v277) + 16);
      v169(0, 0, v166);
      sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);

      v109 = v275;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v279, &unk_1EC4BE320, &unk_1CFA08B50);
    v172 = v275;
    goto LABEL_90;
  }

  *&v279 = a1;
  v171 = a1;
  if (swift_dynamicCast())
  {
    v290 = v298;
    v291 = v299;
    v292[0] = *v300;
    *(v292 + 9) = *&v300[9];
    v288 = aBlock;
    v289 = v297;
    sub_1CEFCCC44(&v288, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v179 = v269;
    v178 = v270;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v271 + 1))(v179, v178);
    (v273)(0, 0, v95);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v173 = a1;
  v174 = swift_dynamicCast();

  if (v174)
  {
    goto LABEL_91;
  }

  *&v288 = a1;
  v175 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v297, *(&v297 + 1), v298);
LABEL_89:
    v172 = v288;
LABEL_90:

    goto LABEL_91;
  }

  *&v288 = a1;
  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v297, SBYTE8(v297));
    goto LABEL_89;
  }

  *&v288 = a1;
  v177 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v180 = sub_1CF9E57E8();
  v181 = [v180 userInfo];
  v182 = sub_1CF9E6638();

  v183 = *MEMORY[0x1E696AA08];
  v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v182 + 16))
  {

    goto LABEL_97;
  }

  v186 = sub_1CEFE4328(v184, v185);
  v188 = v187;

  if ((v188 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  sub_1CEFD1104(*(v182 + 56) + 32 * v186, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v189 = v288;
    v190 = v272;

    v191 = v180;
    v192 = v189;
    sub_1CF782688(v192, v267 & 1, v266, v191, v273, v190, &unk_1F4C15128, &unk_1F4C15150, sub_1CF796AD4, sub_1CF782284, &unk_1F4C15240, sub_1CF7969FC, &unk_1F4C15268, sub_1CF796A04, sub_1CF72A328, &unk_1F4C151F0, &unk_1F4C15218, sub_1CF796A00, sub_1CF72A328, &unk_1F4C15178, &unk_1F4C151A0, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_433, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_98:
  v193 = swift_allocObject();
  v194 = [v180 userInfo];
  v195 = sub_1CF9E6638();

  v196 = *MEMORY[0x1E696A750];
  v197 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v195 + 16))
  {

    goto LABEL_113;
  }

  v199 = sub_1CEFE4328(v197, v198);
  v55 = v200;

  if ((v55 & 1) == 0)
  {
LABEL_113:

    goto LABEL_114;
  }

  sub_1CEFD1104(*(v195 + 56) + 32 * v199, &aBlock);

  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_114:
    swift_deallocUninitializedObject();
    (v273)(0, 0, a1);

    return;
  }

  v193[2] = v288;
  v201 = dispatch_group_create();
  v202 = v193[2];
  if (v202 >> 62)
  {
    goto LABEL_116;
  }

  v203 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v203)
  {
    goto LABEL_122;
  }

  do
  {
    v204 = 0;
    while (1)
    {
      v55 = v201;
      v205 = objc_sync_enter(v55);
      if (v205)
      {
        goto LABEL_119;
      }

      swift_beginAccess();
      v206 = v193[2];
      if ((v206 & 0xC000000000000001) != 0)
      {
        v207 = MEMORY[0x1D3869C30](v204);
        goto LABEL_108;
      }

      if (v204 >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v207 = *(v206 + 8 * v204 + 32);
LABEL_108:
      v208 = v207;
      swift_endAccess();
      v209 = objc_sync_exit(v55);
      if (v209)
      {
        MEMORY[0x1EEE9AC00](v209);
        v242 = v55;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v241, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v55);
      v210 = v55;

      v211 = v208;
      sub_1CF774BF8(v211, v267 & 1, v266, v210, v193, v204);

      if (v203 == ++v204)
      {
        goto LABEL_122;
      }
    }

    __break(1u);
LABEL_116:
    v212 = sub_1CF9E7818();
    if (v212 < 0)
    {
      __break(1u);
      goto LABEL_118;
    }

    v203 = v212;
  }

  while (v212);
LABEL_122:
  if (v267)
  {
    v213 = [v180 userInfo];
    v214 = sub_1CF9E6638();

    v215 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v217 = v216;
    swift_beginAccess();
    v218 = v193[2];
    *(&v297 + 1) = v271;
    *&aBlock = v218;
    sub_1CEFE9EB8(&aBlock, &v288);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v277[0] = v214;
    sub_1CF1D154C(&v288, v215, v217, isUniquelyReferenced_nonNull_native);

    v220 = [v180 domain];
    if (!v220)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v220 = sub_1CF9E6888();
    }

    v221 = [v180 code];
    v222 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v223 = sub_1CF9E6618();

    v224 = [v222 initWithDomain:v220 code:v221 userInfo:v223];

    (v273)(0, 0, v224);
  }

  else
  {
    v225 = *(*(v266 + 16) + 64);
    v226 = swift_allocObject();
    v226[2] = v180;
    v226[3] = v193;
    v226[4] = sub_1CF796004;
    v226[5] = v274;

    v227 = v225;
    v273 = v180;

    v228 = fpfs_current_log();
    v271 = fpfs_adopt_log();
    v229 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v230;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v231 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v231);

    sub_1CF9E6978();

    v232 = __fp_log_fork();

    *(v229 + 16) = v232;
    v233 = swift_allocObject();
    *(v233 + 16) = v228;
    *(v233 + 24) = v229;
    v269 = v229;
    *(v233 + 32) = v227;
    *(v233 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v233 + 48) = 48;
    *(v233 + 56) = 2;
    *(v233 + 64) = sub_1CF796ACC;
    *(v233 + 72) = v226;
    *&v298 = sub_1CF2B9F54;
    *(&v298 + 1) = v233;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v297 = sub_1CEFCA444;
    *(&v297 + 1) = &block_descriptor_394;
    v234 = _Block_copy(&aBlock);
    v268 = v227;
    v270 = v228;

    v235 = v244;
    sub_1CF9E63F8();
    *&v288 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v236 = v245;
    v237 = v247;
    sub_1CF9E77B8();
    v238 = v268;
    sub_1CF9E7308();
    _Block_release(v234);
    (*(v246 + 8))(v236, v237);
    (*(v261 + 8))(v235, v262);

    v239 = v271;
    v240 = fpfs_adopt_log();
  }
}

void sub_1CF791DB8(void *a1, int a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v256 = a3;
  LODWORD(v257) = a2;
  v8 = sub_1CF9E63A8();
  v236 = *(v8 - 8);
  v237 = v8;
  v9 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v235 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v254 = *(v11 - 8);
  v255 = v11;
  v12 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v253 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v249 = *(v14 - 8);
  v250 = v14;
  v15 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v245 = (&v233 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v246 = &v233 - v18;
  v19 = sub_1CF9E6498();
  v247 = *(v19 - 8);
  v248 = v19;
  v20 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v244 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v233 - v27;
  v29 = sub_1CF9E63D8();
  v242 = *(v29 - 8);
  v243 = v29;
  v30 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v233 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v238 = &v233 - v34;
  v35 = sub_1CF9E6448();
  v251 = *(v35 - 8);
  v252 = v35;
  v36 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v234 = &v233 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v239 = &v233 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v240 = &v233 - v41;
  v42 = sub_1CF9E73D8();
  v241 = *(v42 - 8);
  v43 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v233 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E5248();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v258 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CF9E5268();
  v50 = *(v49 - 1);
  v260 = v49;
  v261 = v50;
  v51 = v50[8];
  MEMORY[0x1EEE9AC00](v49);
  v259 = &v233 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_allocObject();
  v263 = a4;
  v264 = v53;
  *(v53 + 16) = a4;
  *(v53 + 24) = a5;
  v294 = a1;
  swift_retain_n();
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v275 = v291;
    v276 = v292;
    v271 = v288;
    v272 = v289;
    v273 = *v290;
    v274 = *&v290[16];
    v269 = aBlock;
    v270 = v287;
    v283 = v291;
    v284 = v292;
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    v282[1] = *&v290[16];
    v277 = v293;
    v285 = v293;
    v278 = aBlock;
    v279 = v287;
    if (sub_1CF2B971C(&v278))
    {
      sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v65 = nullsub_1(&v278);
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 112);

    v69 = sub_1CEFCCC44(v65 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v67 != 2 || v66)
    {
      if (v67 != 2 || v66 != 1)
      {
        *&v267[0] = 0x2F73662F70665F5FLL;
        *(&v267[0] + 1) = 0xE800000000000000;
        v265 = v66;
        v266 = v67;
        v112 = VFSItemID.description.getter(v69, v70);
        MEMORY[0x1D3868CC0](v112);

        v80 = sub_1CF9E6888();

        if (v68)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v71 = MEMORY[0x1E6967280];
    }

    else
    {
      v71 = MEMORY[0x1E6967258];
    }

    v80 = *v71;
    if (v68)
    {
LABEL_22:
      v81 = v68;
LABEL_54:
      v113 = v68;
      v263(0, v81);

LABEL_73:

      return;
    }

LABEL_53:
    v81 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v262 = a5;

  *&v269 = a1;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v282 + 9) = *&v290[9];
    v281 = v289;
    v282[0] = *v290;
    v279 = v287;
    v280 = v288;
    v278 = aBlock;
    if (!v290[24])
    {
      v72 = *(&v282[0] + 1);
      v73 = *(&v280 + 1);
      v74 = v280;
      v75 = *(&v279 + 1);
      v76 = v279;
      v77 = *(&v278 + 1);
      v261 = v278;

      sub_1CF1D56D0(v77, v76, v75, v74, v73);
      if (v72)
      {
        v78 = v72;
        v79 = v261;
      }

      else
      {
        v110 = objc_opt_self();
        v79 = v261;
        v78 = [v110 fileProviderErrorForNonExistentItemWithIdentifier_];
      }

      v111 = v72;
      v263(0, v78);

      v108 = v269;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v278, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v267[0] = a1;
  v57 = a1;
  if (swift_dynamicCast())
  {
    v275 = v291;
    v276 = v292;
    v271 = v288;
    v272 = v289;
    v273 = *v290;
    v274 = *&v290[16];
    v269 = aBlock;
    v270 = v287;
    v283 = v291;
    v284 = v292;
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    v282[1] = *&v290[16];
    v277 = v293;
    v285 = v293;
    v278 = aBlock;
    v279 = v287;
    v58 = sub_1CF2B971C(&v278);
    switch(v58)
    {
      case 5:
        nullsub_1(&v278);
        v89 = *&v267[0];
LABEL_30:

        v91 = v263;
        goto LABEL_31;
      case 3:
        v82 = nullsub_1(&v278);
        v83 = *v82;
        v84 = *(v82 + 8);
        sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v257)
        {
          LODWORD(v265) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v85 = v253;
          v86 = v255;
          sub_1CF9E57D8();
          v87 = sub_1CF9E53A8();
          v88 = v254;
LABEL_48:
          v88[1](v85, v86);
          v263(0, v87);

          v108 = *&v267[0];
          goto LABEL_72;
        }

        LODWORD(v259) = v84;
        v260 = v83;
        v114 = v256;
        v115 = *(*(*(v256 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v116 = swift_dynamicCastClassUnconditional();
        v117 = swift_allocObject();
        v118 = v264;
        v117[2] = sub_1CF5534C4;
        v117[3] = v118;
        v261 = v117;
        v117[4] = v114;
        v257 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v258 = v116;
        v119 = *(v116 + 216);
        v265 = MEMORY[0x1E69E7CC0];
        v255 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v263 = v115;

        v120 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v121 = sub_1CF9E73E8();

        (*(v241 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v123 = v242;
        v122 = v243;
        v124 = *(v242 + 48);
        if (v124(v25, 1, v243) == 1)
        {
          (*(v123 + 104))(v32, *MEMORY[0x1E69E7FA0], v122);
          if (v124(v25, 1, v122) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v123 + 32))(v32, v25, v122);
        }

        ObjectType = swift_getObjectType();
        v140 = v239;
        sub_1CF9E6428();
        v141 = swift_allocObject();
        v142 = v260;
        v143 = v261;
        *(v141 + 16) = v258;
        *(v141 + 24) = v142;
        *(v141 + 32) = v259;
        *(v141 + 40) = 0u;
        *(v141 + 56) = 0u;
        *(v141 + 72) = 0u;
        *(v141 + 88) = 0u;
        *(v141 + 104) = 0u;
        *(v141 + 120) = 0u;
        *(v141 + 136) = 0;
        *(v141 + 144) = 1;
        *(v141 + 152) = v121;
        *(v141 + 160) = sub_1CF796A00;
        *(v141 + 168) = v143;

        swift_unknownObjectRetain();

LABEL_67:
        sub_1CEFD5828(0, v140, sub_1CF72A328, v141);

        (*(v251 + 8))(v140, v252);
        v146 = v244;
        sub_1CF9E6478();
        v147 = v246;
        sub_1CEFD5B64(v246);
        v148 = v245;
        sub_1CEFD5BD8(v245);
        MEMORY[0x1D3869770](v146, v147, v148, ObjectType);
        v149 = *(v249 + 8);
        v150 = v148;
        v151 = v250;
        v149(v150, v250);
        v149(v147, v151);
        (*(v247 + 8))(v146, v248);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_73;
      case 1:
        v59 = nullsub_1(&v278);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 24);
        v63 = *(v59 + 48);
        v64 = *(v59 + 56);

        sub_1CF480620(v63, v64);

        if (v257)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v85 = v259;
          v86 = v260;
          sub_1CF9E57D8();
          v87 = sub_1CF9E50D8();
          v88 = v261;
          goto LABEL_48;
        }

        LODWORD(v259) = v61;
        v260 = v60;
        v125 = v256;
        v126 = *(*(*(v256 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v127 = swift_dynamicCastClassUnconditional();
        v128 = swift_allocObject();
        v129 = v264;
        v128[2] = sub_1CF5534C4;
        v128[3] = v129;
        v261 = v128;
        v128[4] = v125;
        v257 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v258 = v127;
        v130 = *(v127 + 216);
        v265 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v263 = v126;

        v131 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v132 = sub_1CF9E73E8();

        (*(v241 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v134 = v242;
        v133 = v243;
        v135 = *(v242 + 48);
        if (v135(v28, 1, v243) == 1)
        {
          (*(v134 + 104))(v238, *MEMORY[0x1E69E7FA0], v133);
          if (v135(v28, 1, v133) != 1)
          {
            sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v134 + 32))(v238, v28, v133);
        }

        ObjectType = swift_getObjectType();
        v140 = v240;
        sub_1CF9E6428();
        v141 = swift_allocObject();
        v144 = v260;
        v145 = v261;
        *(v141 + 16) = v258;
        *(v141 + 24) = v144;
        *(v141 + 32) = v259;
        *(v141 + 40) = 0u;
        *(v141 + 56) = 0u;
        *(v141 + 72) = 0u;
        *(v141 + 88) = 0u;
        *(v141 + 104) = 0u;
        *(v141 + 120) = 0u;
        *(v141 + 136) = 0;
        *(v141 + 144) = 1;
        *(v141 + 152) = v132;
        *(v141 + 160) = sub_1CF796A04;
        *(v141 + 168) = v145;

        swift_unknownObjectRetain();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v269 = a1;
  v90 = a1;
  if (swift_dynamicCast())
  {
    *(v282 + 9) = *&v290[9];
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    v278 = aBlock;
    v279 = v287;
    if (v290[24] == 5)
    {
      v89 = v269;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v278, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v278 > 2u)
    {
      v91 = v263;
      if (v278 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v106 = v259;
        v105 = v260;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v261 + 1))(v106, v105);
        v91(0, v107);

        v108 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v91 = v263;
    if (v278 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v93 = v259;
    v92 = v260;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v261 + 1))(v93, v92);
    v91(0, v94);
    goto LABEL_33;
  }

  *&v278 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v287 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v287);
      LODWORD(v269) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v136 = v253;
      v137 = v255;
      sub_1CF9E57D8();
      v138 = sub_1CF9E53A8();
      (*(v254 + 8))(v136, v137);
      v263(0, v138);

      v108 = v278;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v278 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    v98 = *MEMORY[0x1E696A578];
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v102;
    *(v97 + 56) = v104;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v94 = aBlock;
    v263(0, aBlock);
LABEL_33:

    return;
  }

  *&v267[0] = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v275 = v291;
    v276 = v292;
    v271 = v288;
    v272 = v289;
    v273 = *v290;
    v274 = *&v290[16];
    v269 = aBlock;
    v270 = v287;
    v283 = v291;
    v284 = v292;
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    v282[1] = *&v290[16];
    v277 = v293;
    v285 = v293;
    v278 = aBlock;
    v279 = v287;
    if (sub_1CF2B971C(&v278) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v152 = a1;
  if (swift_dynamicCast())
  {
    v153 = FPDomainUnavailableError();
    if (!v153)
    {
LABEL_118:

      __break(1u);
LABEL_119:
      MEMORY[0x1EEE9AC00](v195);
      v232 = v55;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v231, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v154 = v153;
    v263(0, v153);

    v108 = aBlock;
    goto LABEL_72;
  }

  v265 = a1;
  v155 = a1;
  if (swift_dynamicCast())
  {
    v275 = v291;
    v276 = v292;
    v271 = v288;
    v272 = v289;
    v273 = *v290;
    v274 = *&v290[16];
    v269 = aBlock;
    v270 = v287;
    v283 = v291;
    v284 = v292;
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    v282[1] = *&v290[16];
    v277 = v293;
    v285 = v293;
    v278 = aBlock;
    v279 = v287;
    if (sub_1CF2B971C(&v278) == 10)
    {
      v156 = *(nullsub_1(&v278) + 16);
      if (!v156)
      {
        LODWORD(v267[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v157 = v253;
        v158 = v255;
        sub_1CF9E57D8();
        v156 = sub_1CF9E53A8();
        (*(v254 + 8))(v157, v158);
      }

      v159 = v263;
      v267[6] = v275;
      v267[7] = v276;
      v268 = v277;
      v267[2] = v271;
      v267[3] = v272;
      v267[4] = v273;
      v267[5] = v274;
      v267[0] = v269;
      v267[1] = v270;
      v160 = *(nullsub_1(v267) + 16);
      v159(0, v156);
      sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);

      v108 = v265;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v269, &unk_1EC4BE320, &unk_1CFA08B50);
    v162 = v265;
    goto LABEL_90;
  }

  *&v269 = a1;
  v161 = a1;
  if (swift_dynamicCast())
  {
    v280 = v288;
    v281 = v289;
    v282[0] = *v290;
    *(v282 + 9) = *&v290[9];
    v278 = aBlock;
    v279 = v287;
    sub_1CEFCCC44(&v278, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v169 = v259;
    v168 = v260;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v261 + 1))(v169, v168);
    v263(0, v94);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v163 = a1;
  v164 = swift_dynamicCast();

  if (v164)
  {
    goto LABEL_91;
  }

  *&v278 = a1;
  v165 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v287, *(&v287 + 1), v288);
LABEL_89:
    v162 = v278;
LABEL_90:

    goto LABEL_91;
  }

  *&v278 = a1;
  v166 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v287, SBYTE8(v287));
    goto LABEL_89;
  }

  *&v278 = a1;
  v167 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v170 = sub_1CF9E57E8();
  v171 = [v170 userInfo];
  v172 = sub_1CF9E6638();

  v173 = *MEMORY[0x1E696AA08];
  v174 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v172 + 16))
  {

    goto LABEL_97;
  }

  v176 = sub_1CEFE4328(v174, v175);
  v178 = v177;

  if ((v178 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  sub_1CEFD1104(*(v172 + 56) + 32 * v176, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v179 = v278;
    v180 = v262;

    v181 = v170;
    v182 = v179;
    sub_1CF782688(v182, v257 & 1, v256, v181, v263, v180, &unk_1F4C162D0, &unk_1F4C162F8, sub_1CF796AD8, sub_1CF782488, &unk_1F4C163E8, sub_1CF7969FC, &unk_1F4C16410, sub_1CF796A04, sub_1CF72A328, &unk_1F4C16398, &unk_1F4C163C0, sub_1CF796A00, sub_1CF72A328, &unk_1F4C16320, &unk_1F4C16348, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_893, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_98:
  v183 = swift_allocObject();
  v184 = [v170 userInfo];
  v185 = sub_1CF9E6638();

  v186 = *MEMORY[0x1E696A750];
  v187 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v185 + 16))
  {

    goto LABEL_113;
  }

  v189 = sub_1CEFE4328(v187, v188);
  v55 = v190;

  if ((v55 & 1) == 0)
  {
LABEL_113:

    goto LABEL_114;
  }

  sub_1CEFD1104(*(v185 + 56) + 32 * v189, &aBlock);

  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_114:
    swift_deallocUninitializedObject();
    v263(0, a1);

    return;
  }

  v183[2] = v278;
  v191 = dispatch_group_create();
  v192 = v183[2];
  if (v192 >> 62)
  {
    goto LABEL_116;
  }

  v193 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v193)
  {
    goto LABEL_122;
  }

  do
  {
    v194 = 0;
    while (1)
    {
      v55 = v191;
      v195 = objc_sync_enter(v55);
      if (v195)
      {
        goto LABEL_119;
      }

      swift_beginAccess();
      v196 = v183[2];
      if ((v196 & 0xC000000000000001) != 0)
      {
        v197 = MEMORY[0x1D3869C30](v194);
        goto LABEL_108;
      }

      if (v194 >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v197 = *(v196 + 8 * v194 + 32);
LABEL_108:
      v198 = v197;
      swift_endAccess();
      v199 = objc_sync_exit(v55);
      if (v199)
      {
        MEMORY[0x1EEE9AC00](v199);
        v232 = v55;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v231, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v55);
      v200 = v55;

      v201 = v198;
      sub_1CF774BF8(v201, v257 & 1, v256, v200, v183, v194);

      if (v193 == ++v194)
      {
        goto LABEL_122;
      }
    }

    __break(1u);
LABEL_116:
    v202 = sub_1CF9E7818();
    if (v202 < 0)
    {
      __break(1u);
      goto LABEL_118;
    }

    v193 = v202;
  }

  while (v202);
LABEL_122:
  if (v257)
  {
    v203 = [v170 userInfo];
    v204 = sub_1CF9E6638();

    v205 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v207 = v206;
    swift_beginAccess();
    v208 = v183[2];
    *(&v287 + 1) = v261;
    *&aBlock = v208;
    sub_1CEFE9EB8(&aBlock, &v278);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v267[0] = v204;
    sub_1CF1D154C(&v278, v205, v207, isUniquelyReferenced_nonNull_native);

    v210 = [v170 domain];
    if (!v210)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v210 = sub_1CF9E6888();
    }

    v211 = [v170 code];
    v212 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v213 = sub_1CF9E6618();

    v214 = [v212 initWithDomain:v210 code:v211 userInfo:v213];

    v263(0, v214);
  }

  else
  {
    v215 = *(*(v256 + 16) + 64);
    v216 = swift_allocObject();
    v216[2] = v170;
    v216[3] = v183;
    v216[4] = sub_1CF5534C4;
    v216[5] = v264;

    v217 = v215;
    v263 = v170;

    v218 = fpfs_current_log();
    v261 = fpfs_adopt_log();
    v219 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v220;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v221 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v221);

    sub_1CF9E6978();

    v222 = __fp_log_fork();

    *(v219 + 16) = v222;
    v223 = swift_allocObject();
    *(v223 + 16) = v218;
    *(v223 + 24) = v219;
    v259 = v219;
    *(v223 + 32) = v217;
    *(v223 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v223 + 48) = 48;
    *(v223 + 56) = 2;
    *(v223 + 64) = sub_1CF796ACC;
    *(v223 + 72) = v216;
    *&v288 = sub_1CF2B9F54;
    *(&v288 + 1) = v223;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v287 = sub_1CEFCA444;
    *(&v287 + 1) = &block_descriptor_854;
    v224 = _Block_copy(&aBlock);
    v258 = v217;
    v260 = v218;

    v225 = v234;
    sub_1CF9E63F8();
    *&v278 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v226 = v235;
    v227 = v237;
    sub_1CF9E77B8();
    v228 = v258;
    sub_1CF9E7308();
    _Block_release(v224);
    (*(v236 + 8))(v226, v227);
    (*(v251 + 8))(v225, v252);

    v229 = v261;
    v230 = fpfs_adopt_log();
  }
}

void sub_1CF794540(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, id a7, void *a8, void (*a9)(void *, id, id), uint64_t a10)
{
  v127 = a4;
  v128 = a3;
  v116 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v15 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v114 - v16;
  v17 = sub_1CF9E6118();
  v129 = *(v17 - 8);
  v18 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v125 = (&v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v114 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  v121 = a6;
  *(v23 + 24) = a6;
  v24 = a1;
  *(v23 + 32) = a7;
  *(v23 + 40) = a8;
  v120 = a9;
  *(v23 + 48) = a9;
  *(v23 + 56) = a10;
  v25 = v128;
  v122 = a5;
  sub_1CEFD09A0(a5);
  v124 = a7;

  v26 = a8;
  v123 = a10;

  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(v25);
  v28 = sub_1CF9E6108();
  v29 = v129;
  v30 = v28;
  v31 = sub_1CF9E7298();

  sub_1CEFD0A98(v25);
  v32 = os_log_type_enabled(v30, v31);
  v126 = v17;
  if (v32)
  {
    v115 = v22;
    v117 = v23;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v130 = v34;
    *v33 = 136446466;
    v35 = swift_beginAccess();
    v37 = *(v24 + 32);
    v38 = *(v24 + 40);
    if (*(v24 + 41))
    {
      v39 = v37;
      v40 = NSFileProviderItemIdentifier.description.getter();
      v42 = v41;
      sub_1CEFD0994(v37, v38, 1);
    }

    else
    {
      v132[1] = *(v24 + 32);
      v133 = v38;
      v40 = VFSItemID.description.getter(v35, v36);
      v42 = v45;
    }

    v46 = sub_1CEFD0DF0(v40, v42, &v130);

    *(v33 + 4) = v46;
    *(v33 + 12) = 2082;
    v25 = v128;
    v47 = sub_1CEFD11AC(v128);
    v49 = sub_1CEFD0DF0(v47, v48, &v130);

    *(v33 + 14) = v49;
    _os_log_impl(&dword_1CEFC7000, v30, v31, "resolving URL for %{public}s for %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v34, -1, -1);
    MEMORY[0x1D386CDC0](v33, -1, -1);

    v43 = *(v129 + 8);
    v44 = v126;
    v43(v115, v126);
    v23 = v117;
  }

  else
  {

    v43 = *(v29 + 8);
    v43(v22, v17);
    v44 = v17;
  }

  swift_beginAccess();
  v50 = *(v24 + 32);
  v51 = *(v24 + 40);
  if (*(v24 + 41) != 1)
  {
    v59 = v125;
    if (!v50 && v51 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v115 = v43;
  v52 = v25;
  v53 = qword_1EDEA34B0;
  v54 = v50;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v57 = v56;
  if (v55 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v57 != v58)
  {
    v69 = sub_1CF9E8048();

    sub_1CEFD0994(v50, v51, 1);
    v25 = v52;
    v59 = v125;
    v44 = v126;
    v43 = v115;
    if (v69)
    {
      goto LABEL_15;
    }

LABEL_19:
    v70 = v44;
    v71 = v127;
    v123 = *(v127 + 16);
    v72 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v124 = [v72 init];
    v73 = swift_allocObject();
    v73[2] = sub_1CF796704;
    v73[3] = v23;
    v73[4] = v71;
    v73[5] = v24;
    v74 = swift_allocObject();
    v74[2] = sub_1CF7969DC;
    v74[3] = v73;
    v125 = v74;
    v74[4] = v25;
    sub_1CEFD09A0(v25);

    sub_1CEFD09A0(v25);

    v122 = v73;

    v75 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v25);

    sub_1CEFD09A0(v25);
    v76 = sub_1CF9E6108();
    v77 = sub_1CF9E7298();
    if (os_log_type_enabled(v76, v77))
    {
      v115 = v43;
      v117 = v23;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v81 = v79;
      v132[0] = v79;
      *v78 = 136315906;
      v82 = *(v24 + 32);
      v83 = *(v24 + 40);
      if (*(v24 + 41))
      {
        v84 = v82;
        v85 = NSFileProviderItemIdentifier.description.getter();
        v87 = v86;
        sub_1CEFD0994(v82, v83, 1);
      }

      else
      {
        v130 = *(v24 + 32);
        v131 = v83;
        v85 = VFSItemID.description.getter(v79, v80);
        v87 = v88;
      }

      v89 = sub_1CEFD0DF0(v85, v87, v132);

      *(v78 + 4) = v89;
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v132);
      *(v78 + 22) = 2080;
      v25 = v128;
      v90 = sub_1CEFD11AC(v128);
      v92 = v91;
      sub_1CEFD0A98(v25);
      sub_1CEFD0A98(v25);
      v93 = sub_1CEFD0DF0(v90, v92, v132);

      *(v78 + 24) = v93;
      *(v78 + 32) = 2048;
      *(v78 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v76, v77, "Lookup itemID %s with behavior %s request %s iteration %ld", v78, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v81, -1, -1);
      MEMORY[0x1D386CDC0](v78, -1, -1);

      (v115)(v59, v126);
    }

    else
    {
      sub_1CEFD0A98(v25);
      sub_1CEFD0A98(v25);

      v43(v59, v70);
    }

    v94 = *(v24 + 32);
    v95 = *(v24 + 40);
    v96 = v124;
    if (*(v24 + 41))
    {
      v97 = v25;
      v98 = qword_1EDEA34B0;
      v99 = v94;
      if (v98 != -1)
      {
        swift_once();
      }

      v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v102 = v101;
      if (v100 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v102 == v103)
      {

        sub_1CEFD0994(v94, v95, 1);
        v25 = v97;
LABEL_33:
        sub_1CF90CAC8(v25, sub_1CF796A0C, v125);
LABEL_39:

        sub_1CEFD0A98(v25);

        return;
      }

      v104 = sub_1CF9E8048();

      sub_1CEFD0994(v94, v95, 1);
      v25 = v97;
      if (v104)
      {
        goto LABEL_33;
      }
    }

    else if (!v94 && v95 == 2)
    {
      goto LABEL_33;
    }

    if (((v25 >> 58) & 0x3C | (v25 >> 1) & 3) == 0x1E)
    {
      v105 = *((v25 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v106 = v105;
    }

    else
    {
      v107 = swift_allocObject();
      *(v107 + 16) = v25;
      v106 = v107 | 0x7000000000000004;
      v105 = v25;
    }

    v108 = v125;
    sub_1CEFD09A0(v105);
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1CF796A0C;
    *(v109 + 24) = v108;
    v110 = v123;
    *(v109 + 32) = v123;
    *(v109 + 40) = 1;
    *(v109 + 48) = v25;
    *(v109 + 56) = v24;
    LOBYTE(v108) = v116 & 1;
    *(v109 + 64) = v116 & 1;
    *(v109 + 72) = v96;
    *(v109 + 80) = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v24;
    *(v111 + 24) = v110;
    *(v111 + 32) = v108;
    *(v111 + 33) = 0;
    *(v111 + 40) = sub_1CF796A90;
    *(v111 + 48) = v109;
    *(v111 + 56) = v106;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1CF796A90;
    *(v112 + 24) = v109;
    swift_retain_n();

    sub_1CEFD09A0(v25);

    v113 = v96;
    sub_1CEFD09A0(v106);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v112, sub_1CF796A9C, v111);

    sub_1CEFD0A98(v106);
    goto LABEL_39;
  }

  sub_1CEFD0994(v50, v51, 1);
LABEL_15:
  v60 = *(*(*(v127 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v61 = swift_dynamicCastClassUnconditional();

  v62 = objc_sync_enter(v61);
  if (v62)
  {
    MEMORY[0x1EEE9AC00](v62);
    *(&v114 - 2) = v61;

    sub_1CEFD0A98(v122);

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v114 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v63 = v61[20];

  v64 = objc_sync_exit(v61);
  if (v64)
  {
    MEMORY[0x1EEE9AC00](v64);
    *(&v114 - 2) = v61;

    sub_1CEFD0A98(v122);

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v114 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v65 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v66 = sub_1CF9E5A58();
  v67 = v63 + v65;
  v68 = v119;
  (*(*(v66 - 8) + 16))(v119, v67, v66);

  swift_storeEnumTagMultiPayload();
  sub_1CF867E48(v68, v122, v121 & 1, v124, v26, v120, v123);
  sub_1CEFCCC44(v68, &unk_1EC4C5270, &unk_1CFA01BC0);
}

void sub_1CF795294(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5, id a6, uint64_t a7, void (*a8)(void, id), uint64_t a9)
{
  v124 = a4;
  v125 = a3;
  v112 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v14 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v110 - v15;
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v122 = (&v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - v21;
  v23 = swift_allocObject();
  v117 = a5;
  v118 = a8;
  v23[2] = a5;
  v23[3] = a6;
  v24 = a1;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a9;
  v121 = a6;
  v25 = v125;

  v120 = a7;

  v119 = a9;

  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(v25);
  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E7298();

  sub_1CEFD0A98(v25);
  v29 = os_log_type_enabled(v27, v28);
  v123 = v17;
  if (v29)
  {
    v111 = v22;
    v113 = v16;
    v114 = v23;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v126 = v31;
    *v30 = 136446466;
    v32 = swift_beginAccess();
    v34 = *(v24 + 32);
    v35 = *(v24 + 40);
    if (*(v24 + 41))
    {
      v36 = v34;
      v37 = NSFileProviderItemIdentifier.description.getter();
      v39 = v38;
      sub_1CEFD0994(v34, v35, 1);
    }

    else
    {
      v128[1] = *(v24 + 32);
      v129 = v35;
      v37 = VFSItemID.description.getter(v32, v33);
      v39 = v41;
    }

    v42 = sub_1CEFD0DF0(v37, v39, &v126);

    *(v30 + 4) = v42;
    *(v30 + 12) = 2082;
    v25 = v125;
    v43 = sub_1CEFD11AC(v125);
    v45 = sub_1CEFD0DF0(v43, v44, &v126);

    *(v30 + 14) = v45;
    _os_log_impl(&dword_1CEFC7000, v27, v28, "resolving URL for %{public}s for %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v30, -1, -1);

    v40 = *(v123 + 8);
    v16 = v113;
    v40(v111, v113);
    v23 = v114;
  }

  else
  {

    v40 = *(v17 + 8);
    v40(v22, v16);
  }

  swift_beginAccess();
  v46 = *(v24 + 32);
  v47 = *(v24 + 40);
  if (*(v24 + 41) != 1)
  {
    v56 = v122;
    if (!v46 && v47 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v111 = v40;
  v48 = v16;
  v49 = v25;
  v50 = qword_1EDEA34B0;
  v51 = v46;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  if (v52 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v54 != v55)
  {
    v66 = sub_1CF9E8048();

    sub_1CEFD0994(v46, v47, 1);
    v25 = v49;
    v16 = v48;
    v56 = v122;
    v40 = v111;
    if (v66)
    {
      goto LABEL_15;
    }

LABEL_19:
    v67 = v124;
    v120 = *(v124 + 16);
    v68 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v121 = [v68 init];
    v69 = swift_allocObject();
    v69[2] = sub_1CF795FC0;
    v69[3] = v23;
    v69[4] = v67;
    v69[5] = v24;
    v70 = swift_allocObject();
    v70[2] = sub_1CF795FD0;
    v70[3] = v69;
    v122 = v70;
    v70[4] = v25;
    sub_1CEFD09A0(v25);

    sub_1CEFD09A0(v25);

    v119 = v69;

    v71 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v25);

    sub_1CEFD09A0(v25);
    v72 = sub_1CF9E6108();
    v73 = sub_1CF9E7298();
    if (os_log_type_enabled(v72, v73))
    {
      v111 = v40;
      v113 = v16;
      v114 = v23;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = v75;
      v128[0] = v75;
      *v74 = 136315906;
      v78 = *(v24 + 32);
      v79 = *(v24 + 40);
      if (*(v24 + 41))
      {
        v80 = v78;
        v81 = NSFileProviderItemIdentifier.description.getter();
        v83 = v82;
        sub_1CEFD0994(v78, v79, 1);
      }

      else
      {
        v126 = *(v24 + 32);
        v127 = v79;
        v81 = VFSItemID.description.getter(v75, v76);
        v83 = v84;
      }

      v85 = sub_1CEFD0DF0(v81, v83, v128);

      *(v74 + 4) = v85;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v128);
      *(v74 + 22) = 2080;
      v25 = v125;
      v86 = sub_1CEFD11AC(v125);
      v88 = v87;
      sub_1CEFD0A98(v25);
      sub_1CEFD0A98(v25);
      v89 = sub_1CEFD0DF0(v86, v88, v128);

      *(v74 + 24) = v89;
      *(v74 + 32) = 2048;
      *(v74 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v72, v73, "Lookup itemID %s with behavior %s request %s iteration %ld", v74, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v77, -1, -1);
      MEMORY[0x1D386CDC0](v74, -1, -1);

      (v111)(v56, v113);
    }

    else
    {
      sub_1CEFD0A98(v25);
      sub_1CEFD0A98(v25);

      v40(v56, v16);
    }

    v90 = *(v24 + 32);
    v91 = *(v24 + 40);
    v92 = v121;
    if (*(v24 + 41))
    {
      v93 = v25;
      v94 = qword_1EDEA34B0;
      v95 = v90;
      if (v94 != -1)
      {
        swift_once();
      }

      v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v98 = v97;
      if (v96 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v98 == v99)
      {

        sub_1CEFD0994(v90, v91, 1);
        v25 = v93;
LABEL_33:
        sub_1CF90CAC8(v25, sub_1CF795FDC, v122);
LABEL_39:

        sub_1CEFD0A98(v25);

        return;
      }

      v100 = sub_1CF9E8048();

      sub_1CEFD0994(v90, v91, 1);
      v25 = v93;
      if (v100)
      {
        goto LABEL_33;
      }
    }

    else if (!v90 && v91 == 2)
    {
      goto LABEL_33;
    }

    if (((v25 >> 58) & 0x3C | (v25 >> 1) & 3) == 0x1E)
    {
      v101 = *((v25 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v102 = v101;
    }

    else
    {
      v103 = swift_allocObject();
      *(v103 + 16) = v25;
      v102 = v103 | 0x7000000000000004;
      v101 = v25;
    }

    v104 = v122;
    sub_1CEFD09A0(v101);
    v105 = swift_allocObject();
    *(v105 + 16) = sub_1CF795FDC;
    *(v105 + 24) = v104;
    v106 = v120;
    *(v105 + 32) = v120;
    *(v105 + 40) = 1;
    *(v105 + 48) = v25;
    *(v105 + 56) = v24;
    LOBYTE(v104) = v112 & 1;
    *(v105 + 64) = v112 & 1;
    *(v105 + 72) = v92;
    *(v105 + 80) = 0;
    v107 = swift_allocObject();
    *(v107 + 16) = v24;
    *(v107 + 24) = v106;
    *(v107 + 32) = v104;
    *(v107 + 33) = 0;
    *(v107 + 40) = sub_1CF795FE8;
    *(v107 + 48) = v105;
    *(v107 + 56) = v102;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_1CF795FE8;
    *(v108 + 24) = v105;
    swift_retain_n();

    sub_1CEFD09A0(v25);

    v109 = v92;
    sub_1CEFD09A0(v102);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v108, sub_1CF795FEC, v107);

    sub_1CEFD0A98(v102);
    goto LABEL_39;
  }

  sub_1CEFD0994(v46, v47, 1);
LABEL_15:
  v57 = *(*(*(v124 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v58 = swift_dynamicCastClassUnconditional();

  v59 = objc_sync_enter(v58);
  if (v59)
  {
    MEMORY[0x1EEE9AC00](v59);
    *(&v110 - 2) = v58;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v110 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v60 = v58[20];

  v61 = objc_sync_exit(v58);
  if (v61)
  {
    MEMORY[0x1EEE9AC00](v61);
    *(&v110 - 2) = v58;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v110 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v62 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v63 = sub_1CF9E5A58();
  v64 = v60 + v62;
  v65 = v116;
  (*(*(v63 - 8) + 16))(v116, v64, v63);

  swift_storeEnumTagMultiPayload();
  sub_1CF91CEE4(v65, v117, v121, v120, v118, v119);
  sub_1CEFCCC44(v65, &unk_1EC4C5270, &unk_1CFA01BC0);
}

uint64_t sub_1CF79600C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1) & 1;
}

void sub_1CF796040(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a1;
  v7 = 1;
  v5 = a1;
  v4(v6);
}

uint64_t sub_1CF7960A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v13 = v2[10];
  v12 = v2[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1CF76BB00(a1, 0, 1, v13, v12, AssociatedTypeWitness, v5, v6, v7, v10, v9);
  *a2 = result;
  return result;
}

void sub_1CF79615C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6[0] = a1;
  memset(&v6[1], 0, 24);
  v7 = 1;
  v5 = a1;
  v4(v6);
}

id sub_1CF796210()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1CF9E5758();
  return [v1 unpublish];
}

id sub_1CF796430(id result, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!a4)
    {
      v7 = result;

      v6 = v7;
      result = a2;

      return result;
    }

    if (a4 == 1)
    {
LABEL_4:

      return result;
    }
  }

  return result;
}

void sub_1CF7964BC(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {

      goto LABEL_6;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {

LABEL_6:
    }
  }

  else
  {
  }
}

uint64_t sub_1CF796548@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_785Tm()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return swift_deallocObject();
}

char *sub_1CF7965E8(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF76EB10(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_1CF79668C(void *a1)
{
  v3 = *(*(sub_1CF9E5A58() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_1CF76FE98(a1, v4, v5, v6);
}

uint64_t objectdestroy_333Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t objectdestroy_336Tm()
{
  v1 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_342Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_345Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  sub_1CEFD0A98(v0[7]);

  return swift_deallocObject();
}

void sub_1CF7968B4(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v7 = 1;
  v5 = a1;
  v4(&v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

id InternalPathsManager.__allocating_init(providerDomainID:personaIdentifier:extensionManager:volume:rtcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v13 = sub_1CF9E5A58();
  v14 = *(*(v13 - 8) + 56);
  v14(&v11[v12], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v15 = &v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = a4;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = a5;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = a6;
  v19.receiver = v11;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1CF796CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a3;
  v99 = sub_1CF9E5A58();
  v98 = *(v99 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87[-v10];
  v12 = sub_1CF9E53C8();
  v94 = *(v12 - 8);
  v13 = *(v94 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_1CF9E6118();
  v96 = *(v97 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v87[-v22];
  sub_1CF9E5A18();
  v93 = v4;
  v104 = v4;
  v105 = a1;
  v100 = a1;
  v101 = a2;
  v106 = a2;
  v115 = xmmword_1CF9FC980;
  v114 = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = &v115;
  *(v23 + 24) = sub_1CF7A4D18;
  *(v23 + 32) = &v103;
  *(v23 + 40) = &v114;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF7A4D38;
  *(v24 + 24) = v23;
  v112 = sub_1CF005DC8;
  v113 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v110 = sub_1CF005DF8;
  v111 = &block_descriptor_41;
  v25 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v26 = fpfs_openat();

  _Block_release(v25);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v28 = v114;
    if (v114)
    {
      swift_willThrow();

      goto LABEL_4;
    }

    if (v26 < 0)
    {
      if (MEMORY[0x1D38683F0](v27))
      {
        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          v64 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
          swift_willThrow();

          swift_bridgeObjectRelease_n();
          goto LABEL_5;
        }

        MEMORY[0x1D38683F0]();
        v74 = sub_1CF9E6138();
        if ((v74 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v74;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v75 = sub_1CF9E53A8();
        (*(v94 + 1))(v15, v12);
        swift_willThrow();

LABEL_4:

LABEL_5:
        sub_1CF6FCF40(v115, *(&v115 + 1));
        return;
      }

      goto LABEL_27;
    }

    v29 = *(&v115 + 1);
    if (*(&v115 + 1) != 1)
    {
      v30 = v115;

      v31 = v102;
      if (v29)
      {
        v32 = v20;
        v33 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v34 = v98;
        v35 = *(v98 + 16);
        v36 = v101;
        v37 = v99;
        v35(v11, v101, v99);
        v35(v31, v100, v37);

        v38 = sub_1CF9E6108();
        v39 = sub_1CF9E72C8();
        sub_1CF6FCF40(v30, v29);
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v89 = v30;
          v41 = v34;
          v42 = v40;
          v91 = swift_slowAlloc();
          aBlock = v91;
          *v42 = 136315650;
          v90 = v38;
          v43 = sub_1CF9E5928();
          v44 = [v43 fp_shortDescription];
          v94 = v32;
          v45 = v44;

          v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v88 = v39;
          v47 = v31;
          v49 = v48;

          v50 = *(v41 + 8);
          v50(v11, v37);
          v51 = sub_1CEFD0DF0(v46, v49, &aBlock);

          *(v42 + 4) = v51;
          *(v42 + 12) = 2080;
          v52 = sub_1CF9E5928();
          v53 = [v52 fp_shortDescription];

          v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v56 = v55;

          v50(v47, v37);
          v36 = v101;
          v57 = sub_1CEFD0DF0(v54, v56, &aBlock);

          *(v42 + 14) = v57;
          *(v42 + 22) = 2080;
          v58 = v89;
          v59 = sub_1CEFD0DF0(v89, v29, &aBlock);
          sub_1CF6FCF40(v58, v29);
          *(v42 + 24) = v59;
          v60 = v90;
          _os_log_impl(&dword_1CEFC7000, v90, v88, "refreshing relocation symlink from %s to %s: %s", v42, 0x20u);
          v61 = v91;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v61, -1, -1);
          MEMORY[0x1D386CDC0](v42, -1, -1);

          v62 = *(v96 + 8);
          v63 = v94;
        }

        else
        {

          sub_1CF6FCF40(v30, v29);
          v65 = *(v34 + 8);
          v65(v31, v37);
          v65(v11, v37);
          v62 = *(v96 + 8);
          v63 = v32;
        }

        v66 = v97;
        v62(v63, v97);
        sub_1CF9E5A18();
        v67 = sub_1CF9E6978();

        v68 = unlink((v67 + 32));

        if (v68)
        {
          v69 = fpfs_current_or_default_log();
          v70 = v95;
          sub_1CF9E6128();
          v71 = sub_1CF9E6108();
          v72 = sub_1CF9E72A8();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 67109120;
            *(v73 + 4) = MEMORY[0x1D38683F0]();
            _os_log_impl(&dword_1CEFC7000, v71, v72, "couldn't remove existing symlink: %{darwin.errno}d", v73, 8u);
            MEMORY[0x1D386CDC0](v73, -1, -1);
          }

          v62(v70, v66);
        }

        else
        {
          sub_1CF79BE08(v100, v36, v92);
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_27:

  aBlock = 0;
  v109 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v109 = 0x80000001CFA2DF30;
  v107 = v26;
  v76 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v76);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v77 = aBlock;
  v78 = v109;
  v79 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v80 = sub_1CF9E6108();
  v81 = sub_1CF9E72B8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    aBlock = v83;
    *v82 = 136315650;
    v84 = sub_1CF9E7988();
    v86 = sub_1CEFD0DF0(v84, v85, &aBlock);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2048;
    *(v82 + 14) = 315;
    *(v82 + 22) = 2080;
    *(v82 + 24) = sub_1CEFD0DF0(v77, v78, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v80, v81, "[ASSERT] ‼️  %s:%lu: %s", v82, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v83, -1, -1);
    MEMORY[0x1D386CDC0](v82, -1, -1);
  }

  (*(v96 + 8))(v91, v97);
  sub_1CF9E7B68();
  __break(1u);
}

id InternalPathsManager.init(providerDomainID:)(uint64_t a1)
{
  v3 = type metadata accessor for InternalPathsManager();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v6 = sub_1CF9E5A58();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v6);
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v8 = &v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = 0;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = 0;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  swift_getObjectType();
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v9;
}

id InternalPathsManager.init(providerDomainID:personaIdentifier:extensionManager:volume:rtcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v13 = sub_1CF9E5A58();
  v14 = *(*(v13 - 8) + 56);
  v14(&v6[v12], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v13);
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v15 = &v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = a4;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = a5;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for InternalPathsManager();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t type metadata accessor for InternalPathsManager()
{
  result = qword_1EDEACD20;
  if (!qword_1EDEACD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF797D80()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v13)
  {
    sub_1CF513D28("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/InternalPathsManager.swift", 94, 2, 106);
  }

  v14 = v12;
  v15 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume) systemDirectory];
  sub_1CF9E59D8();

  (*(v2 + 32))(v11, v8, v1);
  sub_1CF9E5A18();
  v16 = *(v2 + 8);
  v16(v11, v1);
  v17 = sub_1CF9E6888();

  [v14 fp:v17 createPathIfNeeded:?];

  v18 = [v13 syncRootsDirectory];
  sub_1CF9E59D8();

  sub_1CF9E5A18();
  v16(v5, v1);
  v19 = sub_1CF9E6888();

  [v14 fp:v19 createPathIfNeeded:?];
}

void sub_1CF797FEC(uint64_t a1, void (*a2)(char *, id), uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1CF9E5A58();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v60 = v55 - v17;
  v18 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v18)
  {
LABEL_22:
    __break(1u);
  }

  v62[0] = 0;
  v19 = [v18 rootURLForLocation:a1 error:{v62, v16}];
  v20 = v62[0];
  if (!v19)
  {
    v42 = v62[0];
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_20;
  }

  v56 = v7;
  v21 = v19;
  sub_1CF9E59D8();
  v22 = v20;

  v23 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v24 = sub_1CF9E6888();

  v62[0] = 0;
  v25 = [v23 contentsOfDirectoryAtPath:v24 error:v62];

  v26 = v62[0];
  if (!v25)
  {
    v43 = v11;
    v44 = v62[0];
    v45 = sub_1CF9E57F8();

    swift_willThrow();
    v46 = v45;
    sub_1CF9E50F8();
    sub_1CF7A4E50(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    LOBYTE(v44) = sub_1CF9E5658();

    v47 = *(v56 + 8);
    v47(v10, v6);
    if (v44)
    {
      (*(v43 + 8))(v60, v59);
    }

    else
    {
      v52 = v45;
      sub_1CF9E5118();
      v53 = sub_1CF9E5658();

      v47(v10, v6);
      (*(v43 + 8))(v60, v59);
      if ((v53 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

  v27 = sub_1CF9E6D48();
  v28 = v26;

  v29 = *(v27 + 16);
  if (!v29)
  {
    (*(v11 + 8))(v60, v59);
    goto LABEL_17;
  }

  v56 = v4;
  v30 = v11;
  v31 = 0;
  v32 = (v30 + 8);
  v33 = (v27 + 40);
  v55[1] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  do
  {
    if (v31 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v35 = *(v33 - 1);
    v36 = *v33;

    sub_1CF9E5958();

    v37 = objc_opt_self();
    v38 = sub_1CF9E5928();
    v61 = 0;
    v62[0] = 0;
    LODWORD(v37) = [v37 getProviderDomainID:v38 location:a1 foundDomainID:v62 error:&v61];

    v39 = v62[0];
    v40 = v61;
    if (!v37)
    {
      v48 = v40;
      v49 = v39;
      sub_1CF9E57F8();

      swift_willThrow();

      v50 = *v32;
      v51 = v59;
      (*v32)(v14, v59);
      v50(v60, v51);
      goto LABEL_20;
    }

    if (v39)
    {
      v41 = v39;
      v57(v14, v41);
    }

    ++v31;
    v34 = *v32;
    (*v32)(v14, v59);
    v33 += 2;
  }

  while (v29 != v31);
  v34(v60, v59);
LABEL_17:

LABEL_20:
  v54 = *MEMORY[0x1E69E9840];
}

void sub_1CF798558(uint64_t a1)
{
  v56[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  v54 = v1;
  v51 = v16;
  sub_1CEFCCBDC(v1 + v16, v14, &unk_1EC4BE310, qword_1CF9FCBE0);
  v49 = v4[6];
  v50 = v4 + 6;
  if (v49(v14, 1, v3) == 1)
  {
    goto LABEL_18;
  }

  sub_1CF9E5A18();
  v17 = sub_1CF9E6888();

  v18 = v4 + 1;
  v19 = v4[1];
  v48 = v18;
  v19(v14, v3);
  [v15 fp:v17 createPathIfNeeded:?];

  sub_1CF9E5A18();
  v20 = sub_1CF9E6888();

  v56[0] = 0;
  v21 = [v15 contentsOfDirectoryAtPath:v20 error:v56];

  v22 = v56[0];
  if (v21)
  {
    v45 = v3;
    v46 = a1;
    v23 = sub_1CF9E6D48();
    v24 = v22;

    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = (v23 + 40);
      v43 = v23;
      v44 = v15;
      v42 = v25;
      while (v26 < *(v23 + 16))
      {
        v29 = *(v27 - 1);
        v28 = *v27;

        if (sub_1CF9E6AE8())
        {
          v30 = v53;
          sub_1CF9E5958();
          v55 = sub_1CF9E5928();
          v31 = v45;
          v19(v30, v45);
          v32 = v52;
          sub_1CEFCCBDC(v54 + v51, v52, &unk_1EC4BE310, qword_1CF9FCBE0);
          if (v49(v32, 1, v31) == 1)
          {
            goto LABEL_17;
          }

          v33 = v19;
          v34 = v47;
          sub_1CF9E5958();

          v33(v32, v31);
          v35 = sub_1CF9E5928();
          v33(v34, v31);
          v56[0] = 0;
          v15 = v44;
          v36 = v55;
          v37 = [v44 moveItemAtURL:v55 toURL:v35 error:v56];

          v38 = v56[0];
          v19 = v33;
          v25 = v42;
          v23 = v43;
          if (!v37)
          {
            v39 = v38;

            goto LABEL_14;
          }
        }

        else
        {
        }

        ++v26;
        v27 += 2;
        if (v25 == v26)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

LABEL_12:
  }

  else
  {
    v39 = v56[0];
LABEL_14:
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF798A20(void *a1)
{
  v3 = [a1 nsDomain];
  v4 = [v3 personaIdentifier];

  if (v4)
  {
    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](v5);
  v10[2] = v1;
  v10[3] = a1;
  sub_1CF8255E8(v6, v8, sub_1CF7A4CFC, v10);
}

void sub_1CF798B08(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultManager];
  sub_1CF797D80();
  if (!v2)
  {
    v6 = objc_sync_enter(a1);
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v9 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    sub_1CF798C9C(a1, a2, v5);
    v7 = objc_sync_exit(a1);
    if (v7)
    {
      MEMORY[0x1EEE9AC00](v7);
      v9 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }
  }
}

id sub_1CF798C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v140 = a3;
  v148[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v122 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v119 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v137 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v134 = &v119 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v139 = &v119 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v136 = &v119 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v141 = &v119 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v138 = &v119 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v119 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v144 = &v119 - v48;
  *&v51 = MEMORY[0x1EEE9AC00](v49).n128_u64[0];
  v52 = &v119 - v50;
  v53 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (v53)
  {
    v148[0] = 0;
    v54 = [v53 supportPathForDomain:a2 failIfNotExisting:0 error:{v148, v51}];
    v55 = v148[0];
    if (!v54)
    {
      v99 = v148[0];
      sub_1CF9E57F8();

      result = swift_willThrow();
      goto LABEL_26;
    }

    v56 = v54;
    sub_1CF9E59D8();
    v57 = v55;

    v58 = v6[7];
    v59 = v52;
    v60 = 0;
  }

  else
  {
    v58 = v6[7];
    v59 = &v119 - v50;
    v60 = 1;
  }

  v142 = v58;
  v58(v59, v60, 1, v5);
  v61 = v5;
  v121 = v53;
  v62 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v52, a1 + v62, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  sub_1CEFCCBDC(a1 + v62, v46, &unk_1EC4BE310, qword_1CF9FCBE0);
  v63 = v6[6];
  v145 = v6 + 6;
  v143 = v63;
  result = v63(v46, 1, v61);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v65 = v144;
  sub_1CF9E5958();
  v146 = v6[1];
  v146(v46, v61);
  v147 = v6 + 1;
  v66 = (v6 + 7);
  v67 = v142;
  v142(v65, 0, 1, v61);
  v68 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  v120 = v68;
  sub_1CEFDA9E0(v65, a1 + v68, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v144 = v62;
  v69 = v141;
  sub_1CEFCCBDC(a1 + v62, v141, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v143(v69, 1, v61);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v70 = v138;
  sub_1CF9E5958();
  v71 = v146;
  v146(v69, v61);
  v67(v70, 0, 1, v61);
  v72 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v70, a1 + v72, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v73 = a1 + v72;
  v74 = v139;
  sub_1CEFCCBDC(v73, v139, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v143(v74, 1, v61);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v75 = v136;
  sub_1CF9E5958();
  v71(v74, v61);
  v141 = v66;
  v67(v75, 0, 1, v61);
  v76 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v75, a1 + v76, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v77 = v137;
  sub_1CEFCCBDC(&v144[a1], v137, &unk_1EC4BE310, qword_1CF9FCBE0);
  v78 = v143;
  result = v143(v77, 1, v61);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v79 = v61;
  v80 = v134;
  sub_1CF9E5958();
  v146(v77, v61);
  v67(v80, 0, 1, v61);
  v142 = v67;
  v81 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v80, a1 + v81, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v82 = v135;
  sub_1CEFCCBDC(&v144[a1], v135, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v78(v82, 1, v79);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v83 = v79;
  v138 = v81;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v84 = v132;
  sub_1CF9E5958();

  v85 = v79;
  v86 = v146;
  v146(v82, v85);
  v142(v84, 0, 1, v83);
  v87 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL;
  swift_beginAccess();
  v139 = v87;
  sub_1CEFDA9E0(v84, a1 + v87, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v88 = v133;
  sub_1CEFCCBDC(&v144[a1], v133, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v78(v88, 1, v83);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v89 = v130;
  sub_1CF9E5958();

  v86(v88, v83);
  v142(v89, 0, 1, v83);
  v90 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL;
  swift_beginAccess();
  v142 = v90;
  sub_1CEFDA9E0(v89, a1 + v90, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v91 = v131;
  sub_1CEFCCBDC(&v144[a1], v131, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v78(v91, 1, v83);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v92 = v129;
  sub_1CF798558(v91);
  v93 = v91;
  if (v92)
  {
    result = (v146)(v91, v83);
LABEL_26:
    v118 = *MEMORY[0x1E69E9840];
    return result;
  }

  v94 = v146;
  v146(v93, v83);
  v95 = v128;
  sub_1CEFCCBDC(a1 + v139, v128, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v143(v95, 1, v83);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v96 = sub_1CF9E5928();
  v94(v95, v83);
  v148[0] = 0;
  v97 = [v140 removeItemAtURL:v96 error:v148];

  if (v97)
  {
    v98 = v148[0];
  }

  else
  {
    v100 = v148[0];
    v101 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v102 = v127;
  sub_1CEFCCBDC(a1 + v139, v127, &unk_1EC4BE310, qword_1CF9FCBE0);
  v103 = v143;
  result = v143(v102, 1, v83);
  if (result == 1)
  {
    goto LABEL_35;
  }

  sub_1CF9E5A18();
  v104 = sub_1CF9E6888();

  v146(v102, v83);
  [v140 fp:v104 createPathIfNeeded:?];

  v105 = v126;
  sub_1CEFCCBDC(a1 + v120, v126, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v103(v105, 1, v83);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1CF9E5A18();
  v106 = sub_1CF9E6888();

  v146(v105, v83);
  [v140 fp:v106 createPathIfNeeded:?];

  result = v121;
  if (!v121)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v107 = [v121 purgatoryDirectory];
  v108 = v124;
  sub_1CF9E59D8();

  sub_1CF9E5A18();
  v146(v108, v83);
  v109 = sub_1CF9E6888();

  [v140 fp:v109 createPathIfNeeded:?];

  v110 = v125;
  sub_1CEFCCBDC(v142 + a1, v125, &unk_1EC4BE310, qword_1CF9FCBE0);
  v111 = v143;
  result = v143(v110, 1, v83);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1CF9E5A18();
  v112 = sub_1CF9E6888();

  v113 = v146;
  v146(v110, v83);
  v114 = v140;
  [v140 fp:v112 createPathIfNeeded:?];

  v115 = v123;
  sub_1CEFCCBDC(&v138[a1], v123, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v111(v115, 1, v83);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1CF9E5A18();
  v116 = sub_1CF9E6888();

  v113(v115, v83);
  [v114 fp:v116 createPathIfNeeded:?];

  v117 = v122;
  sub_1CEFCCBDC(&v144[a1], v122, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v111(v117, 1, v83);
  if (result != 1)
  {
    sub_1CF7A37E8();
    result = (v113)(v117, v83);
    goto LABEL_26;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF799C50(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() prettyNameForDomain_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  sub_1CF7A3F14(v9, v11);

  v12 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v12)
  {
    __break(1u);
  }

  v20[0] = 0;
  v13 = [v12 rootURLForLocation:1 error:v20];
  v14 = v20[0];
  if (v13)
  {
    v15 = v13;
    sub_1CF9E59D8();
    v16 = v14;

    sub_1CF9E5958();

    result = (*(v4 + 8))(v7, v3);
  }

  else
  {
    v18 = v20[0];

    sub_1CF9E57F8();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF799E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v77 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v77 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = [a1 provider];
  if (!v21)
  {
LABEL_45:
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1CF9E7948();

    v85 = 0xD000000000000017;
    v86 = 0x80000001CFA5A760;
    v68 = [a1 description];
    v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v70;

    MEMORY[0x1D3868CC0](v69, v71);

    goto LABEL_47;
  }

  v22 = v21;
  v79 = v9;
  v80 = v15;
  v78 = v2;
  v23 = [a1 identifier];
  if (!v23)
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1CF9E7948();

    v85 = 0xD000000000000019;
    v86 = 0x80000001CFA5A780;
    v72 = [a1 description];
    v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v75 = v74;

    MEMORY[0x1D3868CC0](v73, v75);

    goto LABEL_47;
  }

  v24 = v23;
  v81 = v22;
  v25 = [v22 identifier];
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;

  if (v26 == 0xD00000000000002BLL && 0x80000001CFA30030 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    v29 = *MEMORY[0x1E6967178];
    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;
    if (v30 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v32 == v33)
    {

LABEL_17:
      (*(v84 + 56))(v82, 1, 1, v83);

LABEL_18:
      v41 = *MEMORY[0x1E69E9840];
    }

    v34 = sub_1CF9E8048();

    if (v34)
    {
      goto LABEL_17;
    }

    v35 = [objc_opt_self() fp_personaSharedDirectory];
    if (v35)
    {
      v36 = v35;

      sub_1CF9E59D8();

      v37 = v83;
      (*(v84 + 32))(v20, v18, v83);
      v38 = v82;
      sub_1CF9E5958();

      (*(v84 + 8))(v20, v37);
      goto LABEL_12;
    }

    while (1)
    {
LABEL_47:
      sub_1CF9E7B68();
      __break(1u);
    }
  }

  if (v26 == 0xD000000000000032 && 0x80000001CFA30060 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    if (fpfs_supports_sokoban())
    {
      goto LABEL_17;
    }

    v42 = *MEMORY[0x1E6967178];
    v43 = v24;
    v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v46 = v45;
    if (v44 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v46 == v47)
    {
    }

    else
    {
      v53 = sub_1CF9E8048();

      if ((v53 & 1) == 0)
      {
        v54 = [objc_opt_self() fp_personaSharedDirectory];
        if (v54)
        {
          v55 = v54;

          sub_1CF9E59D8();

          v37 = v83;
          v56 = v80;
          (*(v84 + 32))(v80, v12, v83);
          v38 = v82;
          sub_1CF9E5958();

          (*(v84 + 8))(v56, v37);
          goto LABEL_12;
        }

        goto LABEL_47;
      }
    }

    (*(v84 + 56))(v82, 1, 1, v83);

    goto LABEL_18;
  }

  if (v26 == 0xD00000000000001ELL && 0x80000001CFA51A60 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    if (os_variant_has_internal_content())
    {
      v48 = [a1 nsDomain];
      v49 = [v48 identifier];

      v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v52 = v51;

      if (v50 == 0xD00000000000002ALL && 0x80000001CFA5A7A0 == v52)
      {

LABEL_37:
        v58 = *(v78 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
        if (v58)
        {

          v85 = 0;
          v59 = [v58 rootURLForLocation:1 error:&v85];
          v60 = v85;
          if (!v59)
          {
            v76 = v85;
            sub_1CF9E57F8();

            swift_willThrow();
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v61 = v59;
          v62 = v79;
          sub_1CF9E59D8();
          v63 = v60;

          v38 = v82;
          sub_1CF9E5958();

          v37 = v83;
          (*(v84 + 8))(v62, v83);
LABEL_12:
          result = (*(v84 + 56))(v38, 0, 1, v37);
          v40 = *MEMORY[0x1E69E9840];
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

      v57 = sub_1CF9E8048();

      if (v57)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
  }

  v64 = *(v84 + 56);
  v65 = *MEMORY[0x1E69E9840];
  v66 = v82;
  v67 = v83;

  return v64(v66, 1, 1, v67);
}

void sub_1CF79A7F0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  sub_1CF799E50(a1, v16 - v6);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
    v10 = [a1 volume];
    v16[0] = 0;
    v11 = [v10 findProviderDomainDirectory:a1 location:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_1CF9E59D8();
      v13 = v12;
    }

    else
    {
      v14 = v16[0];
      sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1CF79A9D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  sub_1CF799E50(a1, v16 - v6);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
    v10 = [a1 volume];
    v16[0] = 0;
    v11 = [v10 findProviderDomainDirectory:a1 location:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_1CF9E59D8();
      v13 = v12;
    }

    else
    {
      v14 = v16[0];
      sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF79ABBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF799E50(a1, v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1CF79A9D8(a1, v12);
    if (v2)
    {
      result = v13(v7, 1, v8);
      if (result != 1)
      {
        return sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      return result;
    }

    if (v13(v7, 1, v8) != 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v15 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v16 = sub_1CF9E6888();

  v17 = [v15 fileExistsAtPath_];

  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = sub_1CF7A4BF8(v12, a1);
  if (v2)
  {
    return (*(v9 + 8))(v12, v8);
  }

  if (v18)
  {
    v19 = v21;
    (*(v9 + 32))(v21, v12, v8);
    return (*(v9 + 56))(v19, 0, 1, v8);
  }

  else
  {
LABEL_14:
    (*(v9 + 8))(v12, v8);
    return (*(v9 + 56))(v21, 1, 1, v8);
  }
}