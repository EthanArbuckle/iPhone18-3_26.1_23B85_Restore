void sub_1CF2B6580(NSObject *a1, void *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v335 = a2;
  v336 = a3;
  v334 = a1;
  v361 = *MEMORY[0x1E69E9840];
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v10 = *(*(v307 - 8) + 64);
  MEMORY[0x1EEE9AC00](v307);
  v306 = (v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v305 = (v289 - v13);
  v333 = type metadata accessor for VFSItem(0);
  v331 = *(v333 - 8);
  v14 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v312 = v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v330 = v289 - v17;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v18 = *(*(v311 - 8) + 64);
  MEMORY[0x1EEE9AC00](v311);
  v310 = (v289 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v308 = (v289 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v314 = (v289 - v23);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v24 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v323 = v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v321 = (v289 - v27);
  v28 = sub_1CF9E6068();
  v329 = *(v28 - 8);
  v29 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v325 = v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v332 = v289 - v36;
  v324 = type metadata accessor for Signpost(0);
  v37 = *(*(v324 - 8) + 64);
  MEMORY[0x1EEE9AC00](v324);
  v39 = v289 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v318 = v289 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v320 = v289 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v315 = v289 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v289 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v326 = (v289 - v52);
  v53 = sub_1CF9E6118();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v55);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v58);
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v60);
  MEMORY[0x1EEE9AC00](v61);
  v72 = v289 - v71;
  if ((a6 & 0x10) == 0)
  {
    v296 = v64;
    v297 = v67;
    v290 = v63;
    v291 = v66;
    v294 = a6;
    v295 = v65;
    v292 = v70;
    v293 = v69;
    v316 = v68;
    v317 = v62;
    v327 = v49;
    v73 = objc_sync_enter(v6);
    if (v73)
    {
LABEL_102:
      MEMORY[0x1EEE9AC00](v73);
      v287 = v6;
      goto LABEL_105;
    }

    v301 = a4;
    v309 = a6;
    v304 = a5;
    v313 = v39;
    v74 = v6[20];

    v75 = objc_sync_exit(v6);
    v76 = v6;
    if (v75)
    {
      MEMORY[0x1EEE9AC00](v75);
      v287 = v6;
    }

    else
    {
      v299 = *(v74 + 40);
      v300 = *(v74 + 48);

      v77 = v334;
      v78 = v335;
      v79 = sub_1CF9E6888();
      v80 = [v79 fp_prettyPath];

      v303 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v322 = v81;

      v328 = v76;
      v82 = sub_1CF25D188();
      if (*(v83 + 8))
      {

        v84 = sub_1CF6E995C(&v345, v336, v77, v78);

        (v82)(aBlock, 0);
        v85 = v327;
        v86 = v329;
        if ((v84 & 1) == 0)
        {
          v87 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v88 = v322;

          v89 = sub_1CF9E6108();
          v90 = sub_1CF9E7298();

          v91 = os_log_type_enabled(v89, v90);
          v92 = v304;
          if (v91)
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *aBlock = v94;
            *v93 = 134218242;
            *(v93 + 4) = v336;
            *(v93 + 12) = 2082;
            v95 = sub_1CEFD0DF0(v303, v88, aBlock);

            *(v93 + 14) = v95;
            _os_log_impl(&dword_1CEFC7000, v89, v90, "deduplicating FSEvent lookup for %llu at %{public}s", v93, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v94);
            MEMORY[0x1D386CDC0](v94, -1, -1);
            MEMORY[0x1D386CDC0](v93, -1, -1);
          }

          else
          {
          }

          (*(v316 + 8))(v72, v317);
          v182 = v309;
          v183 = v334;
          if (v92)
          {
            v185 = sub_1CF25D188();
            if (*(v184 + 8))
            {
              v186 = v184;
              v187 = v326;
              *v326 = v92;
              *(v187 + 8) = 0;
              v188 = type metadata accessor for SyncState();
              swift_storeEnumTagMultiPayload();
              (*(*(v188 - 8) + 56))(v187, 0, 1, v188);
              sub_1CF1C8B4C(v187, 3);
              *(v186 + 48) = v92;
              *(v186 + 56) = 0;
            }

            (v185)(aBlock, 0);
          }

          sub_1CF2A4868(v182, 0, v183, v335, v336);
          goto LABEL_80;
        }
      }

      else
      {
        (v82)(aBlock, 0);
        v85 = v327;
        v86 = v329;
      }

      v101 = *(v331 + 56);
      v329 = v331 + 56;
      v302 = v101;
      v101(v85, 1, 1, v333);
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v102 = qword_1EDEBBE40;
      v103 = v332;
      (*(v86 + 56))(v332, 1, 1, v28);
      *aBlock = 0;
      *&aBlock[8] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(aBlock, "lookup path ");
      aBlock[13] = 0;
      *&aBlock[14] = -5120;
      MEMORY[0x1D3868CC0](v303, v322);
      MEMORY[0x1D3868CC0](0x2044496D65746920, 0xE800000000000000);
      *&v345 = v336;
      v104 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v104);

      v303 = *aBlock;
      v298 = *&aBlock[8];
      sub_1CEFCCBDC(v103, v34, &unk_1EC4BED20, &unk_1CFA00700);
      v105 = *(v86 + 48);
      if (v105(v34, 1, v28) == 1)
      {
        v106 = v102;
        v107 = v325;
        sub_1CF9E6048();
        if (v105(v34, 1, v28) != 1)
        {
          sub_1CEFCCC44(v34, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v107 = v325;
        (*(v86 + 32))(v325, v34, v28);
      }

      v108 = v313;
      (*(v86 + 16))(v313, v107, v28);
      v109 = v324;
      *&v108[*(v324 + 20)] = v102;
      v110 = &v108[*(v109 + 24)];
      *v110 = "FS: handle event";
      *(v110 + 1) = 16;
      v110[16] = 2;
      v111 = v102;
      v112 = v107;
      v113 = v111;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      *(v114 + 56) = MEMORY[0x1E69E6158];
      *(v114 + 64) = sub_1CEFD51C4();
      v115 = v298;
      *(v114 + 32) = v303;
      *(v114 + 40) = v115;
      v287 = v114;
      BYTE8(v286) = 2;
      *&v286 = 2;
      v116 = v113;
      sub_1CF9E6028();

      (*(v86 + 8))(v112, v28);
      sub_1CEFCCC44(v332, &unk_1EC4BED20, &unk_1CFA00700);
      v117 = v328;
      v118 = objc_sync_enter(v328);
      if (v118)
      {
        MEMORY[0x1EEE9AC00](v118);
        v287 = v117;
LABEL_105:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v286, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v119 = v117[20];

      v120 = objc_sync_exit(v117);
      if (!v120)
      {
        v121 = type metadata accessor for VFSFileTree(0);
        Strong = swift_unknownObjectWeakLoadStrong();
        v123 = v117[36];

        *aBlock = v336;
        memset(&aBlock[8], 0, 32);
        v124 = sub_1CEFDADE0(aBlock, *(v119 + 16), 2129920);
        v289[3] = v116;
        v133 = v124;
        LODWORD(v332) = v124;

        v325 = *(v119 + 24);
        os_unfair_lock_lock((v119 + 56));
        v135 = *(v119 + 64);
        v134 = *(v119 + 72);
        LODWORD(v324) = *(v119 + 88);
        LODWORD(v303) = *(v119 + 89);
        LODWORD(v298) = *(v119 + 90);

        v136 = *(v119 + 80);
        os_unfair_lock_unlock((v119 + 56));
        v289[1] = v289;
        MEMORY[0x1EEE9AC00](v137);
        v289[-10] = v121;
        LODWORD(v289[-9]) = v133;
        v289[-8] = v119;
        v289[-7] = Strong;
        v289[4] = Strong;
        v289[-6] = v123;
        LOBYTE(v289[-5]) = 0;
        v286 = xmmword_1CF9FD950;
        LOBYTE(v287) = -1;
        v288 = 0;
        *&aBlock[32] = v135;
        *&aBlock[40] = v134;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1CEFDB088;
        *&aBlock[24] = &block_descriptor_1433;
        v138 = _Block_copy(aBlock);
        v289[2] = v134;

        v289[0] = v138;
        *&v345 = v138;
        *(&v345 + 1) = v136;
        LOBYTE(v346) = v324;
        BYTE1(v346) = v303;
        BYTE2(v346) = v298;
        sub_1CEFDB034();
        v139 = swift_allocError();
        *v140 = 6;
        *(v140 + 8) = 0u;
        *(v140 + 24) = 0u;
        *(v140 + 40) = 19;
        v141 = v314;
        *v314 = v139;
        swift_storeEnumTagMultiPayload();
        v142 = swift_allocObject();
        v142[2] = v141;
        v142[3] = sub_1CF2B9F90;
        v142[4] = &v289[-12];
        v143 = swift_allocObject();
        *(v143 + 16) = sub_1CF1DBD3C;
        *(v143 + 24) = v142;
        *&aBlock[32] = sub_1CF1DBD5C;
        *&aBlock[40] = v143;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1CEFDB270;
        *&aBlock[24] = &block_descriptor_1444;
        v144 = _Block_copy(aBlock);

        v145 = fpfs_fgetfileattrs_detailed();
        _Block_release(v144);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        if (v145)
        {
          swift_getErrorValue();
          v147 = v337;
          v148 = swift_allocError();
          *v149 = 6;
          *(v149 + 8) = 0u;
          *(v149 + 24) = 0u;
          *(v149 + 40) = 19;
          v150 = v145;
          v151 = sub_1CF199074(v148, v147);

          v141 = v314;
          v152 = v308;
          *v308 = v151;
          swift_storeEnumTagMultiPayload();
          sub_1CEFDA9E0(v152, v141, &qword_1EC4BE000, &unk_1CFA006A0);
        }

        v153 = v310;
        sub_1CEFCCBDC(v141, v310, &qword_1EC4BE000, &unk_1CFA006A0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          sub_1CEFE55D0(v153, v321, &unk_1EC4BE2F0, qword_1CFA04220);
          sub_1CEFCCC44(v141, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v289[0]);

          v157 = v313;
          v132 = v333;
          v159 = v323;
          goto LABEL_41;
        }

        *aBlock = *v153;
        v154 = *aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v141, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v289[0]);

        v155 = v154;
        *aBlock = sub_1CF9E52A8();
        sub_1CF196978();
        v156 = sub_1CF9E5658();

        v157 = v313;
        v158 = v330;
        v159 = v323;
        if (v156)
        {

          v160 = v321;
          *v321 = xmmword_1CF9FD940;
          *(v160 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v132 = v333;
LABEL_41:
          v127 = v157;
          v131 = v320;
          if ((v332 & 0x80000000) == 0)
          {
            close(v332);
          }

          swift_unknownObjectRelease();
          v128 = v327;
          sub_1CEFCCC44(v327, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v130 = v309;
          v129 = v321;
          goto LABEL_44;
        }

        v181 = v328;
        if ((v332 & 0x80000000) == 0)
        {
          close(v332);
        }

        v125 = v154;
        *aBlock = sub_1CF9E5328();
        sub_1CF196978();
        v126 = sub_1CF9E5658();

        swift_unknownObjectRelease();

        if (v126)
        {
          v127 = v157;
          v128 = v327;
          sub_1CEFCCC44(v327, &unk_1EC4BEC00, &unk_1CF9FCB60);

          v129 = v321;
          *v321 = xmmword_1CF9FD930;
          *(v129 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v130 = v309;
          v131 = v320;
          v132 = v333;
LABEL_44:
          sub_1CEFE55D0(v129, v159, &unk_1EC4BE2F0, qword_1CFA04220);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1CEFCCC44(v159, &unk_1EC4BE2F0, qword_1CFA04220);
            v189 = 1;
            v190 = v128;
            v191 = v315;
          }

          else
          {
            v192 = v159;
            v191 = v315;
            sub_1CEFE4C60(v192, v315, type metadata accessor for VFSItem);
            v189 = 0;
            v190 = v128;
          }

          v302(v191, v189, 1, v132);
          sub_1CEFE55D0(v191, v190, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v157 = v127;
          v158 = v330;
          goto LABEL_56;
        }

        v339 = v154;
        v161 = v154;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        if (swift_dynamicCast())
        {
          v343[5] = v357;
          v343[6] = v358;
          v343[7] = v359;
          v343[1] = *&aBlock[16];
          v343[2] = *&aBlock[32];
          v343[3] = v355;
          v343[4] = v356;
          v343[0] = *aBlock;
          v351 = v358;
          v352 = v359;
          v347 = *&aBlock[32];
          v348 = v355;
          v349 = v356;
          v350 = v357;
          v344 = v360;
          v353 = v360;
          v345 = *aBlock;
          v346 = *&aBlock[16];
          if (sub_1CF2B971C(&v345) == 4)
          {
            v162 = nullsub_1(&v345);
            v336 = *v162;
            v163 = *(v162 + 8);
            v164 = *(v162 + 16);
            v165 = *(v162 + 24);
            v166 = fpfs_current_or_default_log();
            v167 = v291;
            sub_1CF9E6128();
            v168 = sub_1CF9E6108();
            v169 = sub_1CF9E7298();
            v170 = os_log_type_enabled(v168, v169);
            LODWORD(v335) = v163;
            v334 = v164;
            LODWORD(v332) = v165;
            if (v170)
            {
              LODWORD(v331) = v169;
              v171 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v340 = v172;
              v341 = v164;
              *v171 = 136315394;
              v342 = v165;
              v174 = VFSItemID.description.getter(v172, v173);
              v6 = v175;
              v176 = sub_1CEFD0DF0(v174, v175, &v340);

              *(v171 + 4) = v176;
              *(v171 + 12) = 2080;
              if (v163 == 255)
              {
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v341 = v336;
              v342 = v163;
              v178 = VFSItemID.description.getter(v73, v177);
              v180 = sub_1CEFD0DF0(v178, v179, &v340);

              *(v171 + 14) = v180;
              _os_log_impl(&dword_1CEFC7000, v168, v331, "Item mismatch when resolving FSEvent: got %s when expecting %s", v171, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v172, -1, -1);
              MEMORY[0x1D386CDC0](v171, -1, -1);

              (*(v316 + 8))(v291, v317);
              v181 = v328;
            }

            else
            {

              (*(v316 + 8))(v167, v317);
            }

            v264 = v327;
            if (v304)
            {
              v266 = sub_1CF25D188();
              if (*(v265 + 8))
              {
                v267 = v265;
                v268 = v304;
                v269 = v326;
                *v326 = v304;
                *(v269 + 8) = 0;
                v270 = type metadata accessor for SyncState();
                swift_storeEnumTagMultiPayload();
                (*(*(v270 - 8) + 56))(v269, 0, 1, v270);
                sub_1CF1C8B4C(v269, 3);
                *(v267 + 48) = v268;
                *(v267 + 56) = 0;
              }

              (v266)(&v341, 0);
            }

            v271 = sub_1CF25D188();
            if (*(v272 + 8))
            {
              v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v274 = *(v273 + 48);
              v275 = *(v273 + 64);
              v276 = v305;
              v277 = v333;
              *v305 = v334;
              *(v276 + 8) = v332;
              v302(v276 + v274, 1, 1, v277);
              *(v276 + v275) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CF25C780(v276, 0, 0);
              sub_1CEFCCC44(v276, &unk_1EC4BED40, &unk_1CFA00720);
            }

            (v271)(&v341, 0);
            v6 = v181;
            v73 = sub_1CF25D188();
            v278 = v73;
            if (!*(v279 + 8))
            {

              v278(&v341, 0);
              goto LABEL_98;
            }

            v280 = v335;
            if (v335 != 255)
            {

              v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v282 = *(v281 + 48);
              v283 = *(v281 + 64);

              v284 = v306;
              *v306 = v336;
              *(v284 + 8) = v280;
              v302(v284 + v282, 1, 1, v333);
              *(v284 + v283) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CF25C780(v284, 0, 0);
              sub_1CEFCCC44(v284, &unk_1EC4BED40, &unk_1CFA00720);
              v278(&v341, 0);
LABEL_98:
              sub_1CF9E7458();
              v285 = v313;
              sub_1CF9E6038();
              sub_1CEFCCC44(v264, &unk_1EC4BEC00, &unk_1CF9FCB60);
              sub_1CEFE5888(v285, type metadata accessor for Signpost);

              goto LABEL_80;
            }

            __break(1u);
            goto LABEL_101;
          }

          sub_1CEFCCC44(v343, &unk_1EC4BE320, &unk_1CFA08B50);
        }

        v193 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v194 = v154;
        v195 = sub_1CF9E6108();
        v196 = sub_1CF9E7298();

        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *v197 = 138412290;
          swift_getErrorValue();
          v199 = Error.prettyDescription.getter(v338);
          *(v197 + 4) = v199;
          *v198 = v199;
          _os_log_impl(&dword_1CEFC7000, v195, v196, "error when resolving item: %@", v197, 0xCu);
          sub_1CEFCCC44(v198, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v198, -1, -1);
          v200 = v197;
          v158 = v330;
          MEMORY[0x1D386CDC0](v200, -1, -1);
        }

        else
        {
        }

        v130 = v309;
        v131 = v320;
        v190 = v327;
        (*(v316 + 8))(v297, v317);
        v132 = v333;
LABEL_56:
        sub_1CF9E7458();
        sub_1CF9E6038();
        sub_1CEFCCBDC(v190, v131, &unk_1EC4BEC00, &unk_1CF9FCB60);
        if ((*(v331 + 48))(v131, 1, v132) == 1)
        {
          sub_1CEFCCC44(v131, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if ((v294 & 0x80A00) == 0x80000)
          {
            v201 = sub_1CF25D188();
            if (*(v202 + 8))
            {
              sub_1CF8DD07C(v336, v334, v335);
            }

            (v201)(aBlock, 0);
            v203 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v204 = sub_1CF9E6108();
            v205 = sub_1CF9E7298();
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 134349056;
              *(v206 + 4) = v336;
              _os_log_impl(&dword_1CEFC7000, v204, v205, "Ignoring unresolved own-event on fileID(%{public}llu)", v206, 0xCu);
              MEMORY[0x1D386CDC0](v206, -1, -1);
            }

            (*(v316 + 8))(v295, v317);
            v207 = v190;
            goto LABEL_74;
          }

          v234 = v132;
          v235 = sub_1CF25D188();
          if (*(v236 + 8))
          {
            v237 = v335;

            sub_1CF6E9AF0(&v345, v334, v237);
          }

          (v235)(aBlock, 0);
          v238 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v239 = sub_1CF9E6108();
          v240 = sub_1CF9E7298();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            *v241 = 134349056;
            *(v241 + 4) = v336;
            _os_log_impl(&dword_1CEFC7000, v239, v240, "Unable to resolve FSEvent item attributes for event on fileID(%{public}llu)", v241, 0xCu);
            MEMORY[0x1D386CDC0](v241, -1, -1);
          }

          (*(v316 + 8))(v296, v317);
          v242 = v318;
          v302(v318, 1, 1, v234);
          sub_1CF2B2820(v334, v335, v336, v301, v299, v300, v304, v130, v242);
          sub_1CEFCCC44(v242, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          sub_1CEFE4C60(v131, v158, type metadata accessor for VFSItem);
          v208 = v158 + *(v132 + 28);
          v209 = type metadata accessor for ItemMetadata();
          v210 = *(v208 + *(v209 + 68));
          if (v210 == 2 || (v210 & 1) == 0 || *(v208 + *(v209 + 80)) == 1)
          {
            v211 = v190;
            v212 = [objc_allocWithZone(FPLoggerScope) init];
            v213 = fpfs_current_or_default_log();
            v214 = v292;
            sub_1CF9E6128();
            v215 = v312;
            sub_1CEFD90AC(v158, v312, type metadata accessor for VFSItem);
            v216 = v212;
            v217 = sub_1CF9E6108();
            v218 = sub_1CF9E7298();

            if (os_log_type_enabled(v217, v218))
            {
              v219 = swift_slowAlloc();
              v220 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              v332 = v216;
              v222 = v221;
              *aBlock = v221;
              *v219 = 138412546;
              v223 = [v332 enter];
              *(v219 + 4) = v223;
              *v220 = v223;
              *(v219 + 12) = 2080;
              v224 = sub_1CF255338();
              v226 = v225;
              sub_1CEFE5888(v215, type metadata accessor for VFSItem);
              v227 = sub_1CEFD0DF0(v224, v226, aBlock);

              *(v219 + 14) = v227;
              _os_log_impl(&dword_1CEFC7000, v217, v218, "%@ Delivering FSEvent notification for change on %s", v219, 0x16u);
              sub_1CEFCCC44(v220, &qword_1EC4BE350, &unk_1CF9FC3B0);
              v228 = v220;
              v229 = v327;
              MEMORY[0x1D386CDC0](v228, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v222);
              v230 = v222;
              v216 = v332;
              MEMORY[0x1D386CDC0](v230, -1, -1);
              v231 = v219;
              v158 = v330;
              MEMORY[0x1D386CDC0](v231, -1, -1);

              v232 = *(v316 + 8);
              v232(v214, v317);
              v233 = v335;
            }

            else
            {

              sub_1CEFE5888(v215, type metadata accessor for VFSItem);
              v232 = *(v316 + 8);
              v232(v214, v317);
              v233 = v335;
              v229 = v211;
            }

            v244 = v318;
            sub_1CEFD90AC(v158, v318, type metadata accessor for VFSItem);
            v302(v244, 0, 1, v333);
            sub_1CF2B2820(v334, v233, v336, v301, v299, v300, v304, v309, v244);
            sub_1CEFCCC44(v244, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v245 = fpfs_current_or_default_log();
            v246 = v293;
            sub_1CF9E6128();
            v247 = v216;
            v248 = sub_1CF9E6108();
            v249 = v158;
            v250 = sub_1CF9E7298();

            if (os_log_type_enabled(v248, v250))
            {
              v251 = swift_slowAlloc();
              v252 = swift_slowAlloc();
              *v251 = 138412290;
              v253 = [v247 leave];
              *(v251 + 4) = v253;
              *v252 = v253;
              _os_log_impl(&dword_1CEFC7000, v248, v250, "%@", v251, 0xCu);
              sub_1CEFCCC44(v252, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v252, -1, -1);
              MEMORY[0x1D386CDC0](v251, -1, -1);
            }

            v232(v246, v317);
            sub_1CEFE5888(v249, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v229, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v243 = v313;
            goto LABEL_79;
          }

          v255 = sub_1CF25D188();
          if (*(v256 + 8))
          {
            v257 = v335;

            v258 = v257;
            v158 = v330;
            sub_1CF6E9AF0(&v345, v334, v258);
          }

          (v255)(aBlock, 0);
          v259 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v260 = sub_1CF9E6108();
          v261 = sub_1CF9E7298();
          if (os_log_type_enabled(v260, v261))
          {
            v262 = swift_slowAlloc();
            *v262 = 134349056;
            *(v262 + 4) = v336;
            _os_log_impl(&dword_1CEFC7000, v260, v261, "Ignoring event for item in an ignored folder fileID(%{public}llu)", v262, 0xCu);
            MEMORY[0x1D386CDC0](v262, -1, -1);
          }

          (*(v316 + 8))(v290, v317);
          v263 = v318;
          v302(v318, 1, 1, v333);
          sub_1CF2B2820(v334, v335, v336, v301, v299, v300, v304, v130, v263);
          sub_1CEFCCC44(v263, &unk_1EC4BEC00, &unk_1CF9FCB60);
          sub_1CEFE5888(v158, type metadata accessor for VFSItem);
        }

        v207 = v190;
LABEL_74:
        sub_1CEFCCC44(v207, &unk_1EC4BEC00, &unk_1CF9FCB60);
        v243 = v157;
LABEL_79:
        sub_1CEFE5888(v243, type metadata accessor for Signpost);
        goto LABEL_80;
      }

      MEMORY[0x1EEE9AC00](v120);
      v287 = v117;
    }

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v286, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v97 = sub_1CF25D188();
  if (*(v96 + 8))
  {
    v98 = v96;
    v99 = v326;
    *v326 = a5;
    *(v99 + 8) = 0;
    v100 = type metadata accessor for SyncState();
    swift_storeEnumTagMultiPayload();
    (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
    sub_1CF1C8B4C(v99, 3);
    *(v98 + 48) = a5;
    *(v98 + 56) = 0;
  }

  (v97)(aBlock, 0);
LABEL_80:
  v254 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF2B8C00()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDEBB990;
  (*(v2 + 56))(v12, 1, 1, v1);
  sub_1CEFCCBDC(v12, v9, &unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(v2 + 48);
  if (v14(v9, 1, v1) == 1)
  {
    v15 = v13;
    sub_1CF9E6048();
    if (v14(v9, 1, v1) != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
  }

  sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v16 = swift_allocObject();
  v29 = xmmword_1CF9FA450;
  *(v16 + 16) = xmmword_1CF9FA450;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1CEFD51C4();
  *(v16 + 32) = 0x20646570706F7244;
  *(v16 + 40) = 0xEF746E6576455346;
  sub_1CF9E6028();

  (*(v2 + 8))(v5, v1);
  sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
  v17 = v0 + qword_1EDEBBE70;
  result = swift_beginAccess();
  v19 = *(v17 + 16);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
    v22 = *(v0 + 16);
    if (v22)
    {
      v23 = *(v0 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v29;
      v28 = v27 + v26;
      *v28 = 1;
      *(v28 + 8) = 3;
      *(v28 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      v22(v27, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v22);
    }
  }

  return result;
}

uint64_t sub_1CF2B9060(unint64_t a1)
{
  v2 = sub_1CF9E6068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDEBB990;
  (*(v3 + 56))(v13, 1, 1, v2);
  v44 = a1;
  v15 = resetReason2str(a1);
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  sub_1CEFCCBDC(v13, v10, &unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(v3 + 48);
  if (v19(v10, 1, v2) == 1)
  {
    v20 = v14;
    sub_1CF9E6048();
    if (v19(v10, 1, v2) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
  }

  sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v21 = swift_allocObject();
  v43 = xmmword_1CF9FA450;
  *(v21 + 16) = xmmword_1CF9FA450;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1CEFD51C4();
  *(v21 + 32) = v16;
  *(v21 + 40) = v18;
  sub_1CF9E6028();

  (*(v3 + 8))(v6, v2);

  result = sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = v44;
  if (v44 == 11)
  {
    v24 = *(v45 + 16);
    if (!v24)
    {
      return result;
    }

    v25 = *(v45 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v26 = *(type metadata accessor for SyncState() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v43;

    sub_1CF25F590(v29 + v28);
    swift_storeEnumTagMultiPayload();
    v24(MEMORY[0x1E69E7CC0], v29, 0, 0);
    sub_1CEFF7124(v24);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = 0;
    v30 = v45;

    result = sub_1CF9E62A8();
    v31 = *(v30 + 16);
    if (!v31)
    {
      return result;
    }

    v32 = *(v30 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v43;
    v37 = v36 + v35;
    *v37 = (v23 & 0xFFFFFFFFFFFFFFFELL) == 8;
    *(v37 + 8) = v23;
    *(v37 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v38 = *(type metadata accessor for SyncState() - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1CF9FA440;
    v42 = v41 + v40;

    *v42 = FSEventsGetCurrentEventId();
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1CF25F590(v41 + v40 + v39);
    swift_storeEnumTagMultiPayload();
    v31(v36, v41, 0, 0);
    sub_1CEFF7124(v31);
  }
}

__CFString *resetReason2str(unint64_t a1)
{
  if (a1 <= 0xD)
  {
    v1 = off_1E83C20B0[a1];
    v2 = off_1E83C2040[a1];
  }

  return v1;
}

uint64_t sub_1CF2B971C(uint64_t a1)
{
  if (*(a1 + 128) <= 0xAu)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1CF2B9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF2664E0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 9) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_1CF2B97A8@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1CF2A63C0(*(v1 + 48), a1);
}

uint64_t sub_1CF2B9854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1CF9E5A58() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v2 + 40);

  return a2(a1, v6, v7, v8, v10, v2 + v5, v9);
}

void sub_1CF2B9910(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + 40);

  sub_1CF28979C(a1, v5, v6, v7, v11, v1 + v4, v9, v10);
}

uint64_t objectdestroy_191Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t objectdestroy_179Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF2B9B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF2B9B68(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1CF2B9BBC()
{
  result = qword_1EDEA62B0[0];
  if (!qword_1EDEA62B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA62B0);
  }

  return result;
}

unint64_t sub_1CF2B9C14()
{
  result = qword_1EC4BEE68;
  if (!qword_1EC4BEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE68);
  }

  return result;
}

unint64_t sub_1CF2B9C6C()
{
  result = qword_1EC4BEE70;
  if (!qword_1EC4BEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE70);
  }

  return result;
}

unint64_t sub_1CF2B9CC4()
{
  result = qword_1EC4BEE78;
  if (!qword_1EC4BEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE78);
  }

  return result;
}

id FPDiagnosticSignatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDiagnosticSignatures.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDiagnosticSignatures();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FPDiagnosticSignatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDiagnosticSignatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CF2BA390(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v18[0] = *(a1 + 16);
  v18[1] = v4;
  v5 = type metadata accessor for ThrottlingKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v15, v2, a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v10 + 8))(v15, a1);
      return 0xD000000000000015;
    }

    else
    {
      (*(v6 + 32))(v9, v15, v5);
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3DDA0);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      (*(v6 + 8))(v9, v5);
      return 0xD000000000000011;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0xD000000000000011;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x6564206B63757473;
  }

  else
  {
    return 0xD000000000000010;
  }
}

BOOL sub_1CF2BA6AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    return EnumCaseMultiPayload != 2 && EnumCaseMultiPayload == 3;
  }

  (*(v2 + 8))(v6, a1);
  return 0;
}

uint64_t sub_1CF2BA7B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v34 - v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = swift_getAssociatedTypeWitness();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v34 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v38 = v11;
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = v15;
  v16 = type metadata accessor for ReconciliationID();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  (*(v21 + 16))(&v34 - v19, v2, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v36;
    v22 = v37;
    (*(v37 + 32))(v36, v20, AssociatedTypeWitness);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](980444732, 0xE400000000000000);
    v24 = *(v15 + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v25 = v2 + *(a1 + 52);
    v26 = sub_1CF19F0C0(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24) | (*(v25 + 26) << 16));
    MEMORY[0x1D3868CC0](v26);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v27 = v38;
    (*(v22 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v29 = v34;
    v28 = v35;
    (*(v35 + 32))(v34, v20, v11);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
    v30 = *(AssociatedConformanceWitness + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v31 = v2 + *(a1 + 52);
    v32 = sub_1CF19F0C0(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24) | (*(v31 + 26) << 16));
    MEMORY[0x1D3868CC0](v32);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v27 = v38;
    (*(v28 + 8))(v29, v11);
  }

  return v27;
}

uint64_t sub_1CF2BABCC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_1CF024490(a1, a2, AssociatedTypeWitness, v4))
  {
    v5 = *(type metadata accessor for FPDiagnosticsManagerStateKey() + 52);
    v6 = sub_1CF1A752C(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16), *(a1 + v5 + 24) | (*(a1 + v5 + 26) << 16), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16), *(a2 + v5 + 24) | (*(a2 + v5 + 26) << 16));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1CF2BAD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA2DD50 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF2BADF4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1CF2BAE2C(void *a1, void *a2)
{
  v3 = a2[2];
  v25 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v23 = a2;
  *(&v29 + 1) = v25;
  v30 = v4;
  v31 = v5;
  type metadata accessor for FPDiagnosticsManagerStateKey.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1CF9E7F78();
  v27 = *(v24 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v32 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = v26;
  v14 = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = v11;
  v15 = v24;
  v30 = AssociatedConformanceWitness;
  v31 = v14;
  type metadata accessor for ReconciliationID();
  swift_getWitnessTable();
  v16 = v28;
  sub_1CF9E7F08();
  if (v16)
  {
    return (*(v27 + 8))(v8, v15);
  }

  v18 = v27;
  v19 = (v13 + *(v23 + 13));
  v20 = *v19;
  v21 = *(v19 + 2);
  v22 = *(v19 + 12);
  LOBYTE(v19) = *(v19 + 26);
  v29 = v20;
  v30 = v21;
  LOWORD(v31) = v22;
  BYTE2(v31) = v19;
  v32 = 1;
  sub_1CF1A8980();
  sub_1CF9E7F08();
  return (*(v18 + 8))(v8, v15);
}

uint64_t sub_1CF2BB100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID();
  sub_1CF01D348(a1, v8);
  v9 = v2 + *(a2 + 52);
  return sub_1CF1A0B24(a1, *v9, *(v9 + 8), *(v9 + 16), *(v9 + 24) | (*(v9 + 26) << 16));
}

uint64_t sub_1CF2BB228(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF2BB100(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BB270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v38 = a6;
  *&v46 = swift_getAssociatedTypeWitness();
  *(&v46 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = swift_getAssociatedConformanceWitness();
  v42 = type metadata accessor for ReconciliationID();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v36 - v11;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  AssociatedConformanceWitness = a4;
  v48 = a5;
  type metadata accessor for FPDiagnosticsManagerStateKey.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1CF9E7E08();
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v36 - v13;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  AssociatedConformanceWitness = a4;
  v48 = a5;
  v15 = type metadata accessor for FPDiagnosticsManagerStateKey();
  v37 = *(v15 - 8);
  v16 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = v44;
  v20 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v21 = v45;
  sub_1CF9E8298();
  v22 = v19;
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v23 = v18;
  v45 = v15;
  v25 = v39;
  v24 = v40;
  v26 = v22;
  LOBYTE(v46) = 0;
  v27 = v42;
  swift_getWitnessTable();
  v28 = v41;
  sub_1CF9E7D88();
  (*(v24 + 32))(v23, v43, v27);
  v49 = 1;
  sub_1CF1A8870();
  sub_1CF9E7D88();
  (*(v25 + 8))(v14, v28);
  v29 = AssociatedConformanceWitness;
  v30 = v48;
  v31 = BYTE2(v48);
  v32 = v45;
  v33 = &v23[*(v45 + 52)];
  *v33 = v46;
  *(v33 + 2) = v29;
  *(v33 + 12) = v30;
  v33[26] = v31;
  v34 = v37;
  (*(v37 + 16))(v38, v23, v32);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return (*(v34 + 8))(v23, v32);
}

uint64_t sub_1CF2BB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v12 = HIWORD(a5);
  v13 = a5 >> 8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ReconciliationID();
  (*(*(v7 - 8) + 32))(a6, a1, v7);
  result = type metadata accessor for FPDiagnosticsManagerStateKey();
  v9 = a6 + *(result + 52);
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = v6;
  *(v9 + 25) = v13;
  *(v9 + 26) = v12;
  return result;
}

BOOL sub_1CF2BB86C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1CF0BA664(*a1, *a2);
}

uint64_t sub_1CF2BB884(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF1FEF68(*v1);
}

uint64_t sub_1CF2BB898(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1CF0BA674(a1, *v2);
}

uint64_t sub_1CF2BB8AC(uint64_t a1, void *a2)
{
  sub_1CF9E81D8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1CF0BA674(v9, *v2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BB8F8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF2BADF4(*v1);
}

uint64_t sub_1CF2BB90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1CF2BAD24(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF2BB940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF2BB994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF2BBA2C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF2BB100(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BBA74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1CF2BABCC(a1, a2);
}

uint64_t sub_1CF2BBA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MEMORY[0x1D3868CC0](a2, a3);
    v5 = 0x3A6E6961686320;
    v4 = 0xE700000000000000;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  sub_1CF9E7948();

  v6 = MEMORY[0x1D3868FE0](a1, MEMORY[0x1E69E6158]);
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](v5, v4);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x657620746E65733CLL;
}

uint64_t sub_1CF2BBB88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF48, &qword_1CFA010F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4BEF50, &qword_1CFA01100);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2CAAA8();
  sub_1CF9E82A8();
  sub_1CF2CAAFC();
  sub_1CF9E7E18();
  v23 = v19;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFE7C14(&qword_1EDEA3780);
  v16 = v20;
  sub_1CF9E7F08();
  if (!v16)
  {
    v21 = 1;
    sub_1CF9E7E38();
  }

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1CF2BBE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953391987 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF2BBECC(uint64_t a1)
{
  v2 = sub_1CF2CAAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF2BBF08(uint64_t a1)
{
  v2 = sub_1CF2CAAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF2BBF44()
{
  if (*v0)
  {
    result = 0x616843726F727265;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1CF2BBF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001CFA3DE80 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616843726F727265 && a2 == 0xEA00000000006E69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1CF9E8048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1CF2BC078(uint64_t a1)
{
  v2 = sub_1CF2CAAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF2BC0B4(uint64_t a1)
{
  v2 = sub_1CF2CAAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF2BC0F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF2C95B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1CF2BC14C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v8 = type metadata accessor for FPDiagnosticsManagerStateKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_1CF9E75D8();
  v15 = *(v71 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v80 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;

  WitnessTable = swift_getWitnessTable();
  if (MEMORY[0x1D3868960](a2, v8, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable))
  {

    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    return sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA3DC40, v22, v23);
  }

  else
  {
    v72 = v20;
    v78 = v15;
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_1CF9E7948();

    v83 = 0xD000000000000017;
    v84 = 0x80000001CFA3DC20;
    v81 = sub_1CF9E6698();
    v27 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v27);

    sub_1CF4FB2BC(v83, v84, v25, v26);

    v28 = 0;
    v64 = a2;
    v29 = a2 + 64;
    v30 = 1 << *(a2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a2 + 64);
    v33 = (v30 + 63) >> 6;
    v73 = TupleTypeMetadata2;
    v70 = TupleTypeMetadata2 - 8;
    v62 = v9 + 16;
    v74 = (v9 + 32);
    v69 = (v78 + 32);
    v63 = v9;
    v66 = (v9 + 8);
    v67 = v29;
    v34 = v8;
    v68 = v8;
    v35 = v80;
    v36 = a1;
    v75 = a1;
    while (v32)
    {
      v40 = v28;
LABEL_18:
      v45 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v46 = v45 | (v40 << 6);
      v47 = v64;
      v48 = v63;
      v49 = v65;
      (*(v63 + 16))(v65, *(v64 + 48) + *(v63 + 72) * v46, v34);
      v50 = (*(v47 + 56) + 24 * v46);
      v51 = *v50;
      v52 = v50[1];
      v53 = v50[2];
      v54 = &v80[*(v73 + 48)];
      v55 = *(v48 + 32);
      v44 = v73;
      v55(v80, v49, v34);
      *v54 = v51;
      *(v54 + 1) = v52;
      *(v54 + 2) = v53;
      v35 = v80;
      v56 = *(v44 - 8);
      (*(v56 + 56))(v80, 0, 1, v44);

      v43 = v72;
      v36 = v75;
LABEL_19:
      (*v69)(v43, v35, v71);
      if ((*(v56 + 48))(v43, 1, v44) == 1)
      {
      }

      v57 = &v43[*(v44 + 48)];
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = *(v57 + 2);
      (*v74)(v79, v43, v34);
      v61 = v36[3];
      v77 = v36[4];
      v78 = v61;
      v76 = __swift_project_boxed_opaque_existential_1(v36, v61);
      v38 = 0xE000000000000000;
      v83 = 0;
      v84 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](538976288, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      if (v60)
      {
        v81 = 0x3A6E6961686320;
        v82 = 0xE700000000000000;
        MEMORY[0x1D3868CC0](v59, v60);
        v37 = v81;
        v38 = v82;
      }

      else
      {
        v37 = 0;
      }

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1CF9E7948();

      v81 = 0x657620746E65733CLL;
      v82 = 0xEF3A736E6F697372;
      v39 = MEMORY[0x1D3868FE0](v58, MEMORY[0x1E69E6158]);
      MEMORY[0x1D3868CC0](v39);

      MEMORY[0x1D3868CC0](v37, v38);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);

      MEMORY[0x1D3868CC0](v81, v82);

      sub_1CF4FB2BC(v83, v84, v78, v77);

      v34 = v68;
      result = (*v66)(v79, v68);
      v36 = v75;
      v35 = v80;
      v29 = v67;
    }

    if (v33 <= v28 + 1)
    {
      v41 = v28 + 1;
    }

    else
    {
      v41 = v33;
    }

    v42 = v41 - 1;
    v43 = v72;
    v44 = v73;
    while (1)
    {
      v40 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v40 >= v33)
      {
        v56 = *(v73 - 8);
        (*(v56 + 56))(v35, 1, 1, v73);
        v32 = 0;
        v28 = v42;
        goto LABEL_19;
      }

      v32 = *(v29 + 8 * v40);
      ++v28;
      if (v32)
      {
        v28 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2BC8C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001CFA3DE60 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_1CF9E8048();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1CF2BC948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  v20 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  type metadata accessor for FPDiagnosticsManagerState.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1CF9E7F78();
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v28 = v20;
  v24 = a3;
  v25 = a4;
  v26 = v18;
  v27 = v19;
  type metadata accessor for FPDiagnosticsManagerStateKey();
  swift_getWitnessTable();
  sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1CF2C9160();
  v22 = WitnessTable;
  v23 = v15;
  swift_getWitnessTable();
  sub_1CF9E7F08();
  return (*(v21 + 8))(v12, v9);
}

uint64_t sub_1CF2BCB6C()
{
  v0 = type metadata accessor for FPDiagnosticsManagerStateKey();
  swift_getTupleTypeMetadata2();
  v1 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1CF04F294(v1, v0, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable);

  return v3;
}

void *sub_1CF2BCC20(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for FPDiagnosticsManagerState.CodingKeys();
  swift_getWitnessTable();
  v10 = sub_1CF9E7E08();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v14 = type metadata accessor for FPDiagnosticsManagerStateKey();
  swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  sub_1CF04F294(v15, v14, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable);

  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v32;
  sub_1CF9E8298();
  if (!v19)
  {
    v20 = v25;
    sub_1CF9E6708();
    v21 = swift_getWitnessTable();
    v22 = sub_1CF2C910C();
    v26 = v21;
    v27 = v22;
    swift_getWitnessTable();
    sub_1CF9E7D88();
    (*(v20 + 8))(v13, v10);
    v18 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t sub_1CF2BCEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1CF2BC8C4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CF2BCF2C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1CF189FC0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1CF2BCF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF2BCFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1CF2BD00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1CF2BCC20(a1, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CF2BD06C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1CF2BCB6C();
  *a2 = result;
  return result;
}

uint64_t sub_1CF2BD0A0(uint64_t a1)
{
  result = sub_1CEFDB148(0xD000000000000018, 0x80000001CFA3DE40, a1);
  if (result)
  {
    v3 = [objc_opt_self() defaultStore];
    v4 = [v3 targetedSPSErrorsPayload];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    v5 = sub_1CF2C8330();

    v6 = objc_sync_enter(v1);
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v10 = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v7 = v1[3];
    v1[3] = v5;

    v8 = objc_sync_exit(v1);
    if (v8)
    {
      MEMORY[0x1EEE9AC00](v8);
      v10 = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }
  }

  return result;
}

uint64_t sub_1CF2BD260()
{
  v0 = sub_1CF9E6F98();

  sub_1CF2BD0A0(v0);
}

uint64_t sub_1CF2BD2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v274 = a5;
  v273 = a4;
  v272 = a3;
  v254 = a2;
  v275 = a1;
  v270 = a6;
  v7 = *v6;
  *&v276 = v6 + 1;
  v269 = sub_1CF9E6118();
  v268 = *(v269 - 8);
  v8 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v265 = &v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v260 = (&v234 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v255 = &v234 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v234 - v15;
  v16 = v7[10];
  v277 = v7[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v7[13];
  v249 = v6;
  v19 = v7[11];
  v20 = v18;
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v284[0] = AssociatedTypeWitness;
  *(&v284[0] + 1) = v21;
  *&v284[1] = AssociatedConformanceWitness;
  *(&v284[1] + 1) = v23;
  v24 = type metadata accessor for ReconciliationID();
  v261 = *(v24 - 8);
  v25 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v257 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v234 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v250 = &v234 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v247 = &v234 - v33;
  *&v284[0] = AssociatedTypeWitness;
  *(&v284[0] + 1) = v21;
  *&v284[1] = AssociatedConformanceWitness;
  *(&v284[1] + 1) = v23;
  v253 = type metadata accessor for CodepathTriggeringDiagnostics();
  v34 = *(v253 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v37 = &v234 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE98, &qword_1CFA00DA0);
  v271 = v24;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v252 = *(TupleTypeMetadata3 - 8);
  v38 = v252[8];
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v246 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v251 = &v234 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v263 = &v234 - v43;
  v259 = v16;
  *&v284[0] = v16;
  *(&v284[0] + 1) = v19;
  v44 = v20;
  v258 = v19;
  *&v284[1] = v277;
  *(&v284[1] + 1) = v20;
  v45 = type metadata accessor for ItemReconciliation();
  v264 = *(v45 - 8);
  v46 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v262 = &v234 - v47;
  v267 = v48;
  v266 = sub_1CF9E75D8();
  v49 = *(v266 - 8);
  v50 = v49[8];
  MEMORY[0x1EEE9AC00](v266);
  v52 = &v234 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v234 - v54;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v61 = fpfs_current_or_default_log();
    v62 = v265;
    sub_1CF9E6128();
    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E72A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1CEFC7000, v63, v64, "checkItemMatchesTargetedSPSError: missing database", v65, 2u);
      MEMORY[0x1D386CDC0](v65, -1, -1);
    }

    (*(v268 + 8))(v62, v269);
    *&v284[0] = v271;
    *(&v284[0] + 1) = &type metadata for TargetedSPSErrorAndValue;
    *&v284[1] = MEMORY[0x1E69E6158];
    *(&v284[1] + 1) = MEMORY[0x1E69E6158];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v270, 1, 1, TupleTypeMetadata);
  }

  *&v276 = v29;
  v57 = *(Strong + 16);
  v58 = Strong;

  v59 = v278;
  sub_1CF68DB40(v275, v272, v273, v274, v55);

  if (v59)
  {
  }

  v278 = 0;
  v244 = v58;
  v67 = v49[2];
  v245 = v55;
  v68 = v266;
  v67(v52, v55, v266);
  v69 = v264;
  v70 = v267;
  if ((*(v264 + 48))(v52, 1, v267) == 1)
  {
    v71 = v49[1];
    v243 = v49 + 1;
    v277 = v71;
    (v71)(v52, v68);
    v72 = fpfs_current_or_default_log();
    v73 = v260;
    sub_1CF9E6128();
    v74 = v261;
    v75 = *(v261 + 16);
    v76 = v257;
    v77 = v271;
    v75(v257, v275, v271);
    v78 = sub_1CF9E6108();
    v79 = sub_1CF9E72A8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      *&v284[0] = v275;
      *v80 = 136315138;
      v81 = v276;
      v75(v276, v76, v77);
      v82 = *(v74 + 8);
      v82(v76, v77);
      v83 = sub_1CF01D738(v77);
      v85 = v84;
      v82(v81, v77);
      v86 = sub_1CEFD0DF0(v83, v85, v284);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_1CEFC7000, v78, v79, "checkItemMatchesTargetedSPSError: missing RT entry for %s", v80, 0xCu);
      v87 = v275;
      __swift_destroy_boxed_opaque_existential_1(v275);
      MEMORY[0x1D386CDC0](v87, -1, -1);
      MEMORY[0x1D386CDC0](v80, -1, -1);

      (*(v268 + 8))(v260, v269);
    }

    else
    {
      (*(v74 + 8))(v76, v77);

      (*(v268 + 8))(v73, v269);
    }

    (v277)(v245, v266);
    v108 = v270;
    *&v284[0] = v77;
LABEL_19:
    *(&v284[0] + 1) = &type metadata for TargetedSPSErrorAndValue;
    *&v284[1] = MEMORY[0x1E69E6158];
    *(&v284[1] + 1) = MEMORY[0x1E69E6158];
    v120 = swift_getTupleTypeMetadata();
    return (*(*(v120 - 8) + 56))(v108, 1, 1, v120);
  }

  (*(v69 + 32))(v262, v52, v70);
  v88 = sub_1CF083B80(v70);
  if (sub_1CF06EE80(v88, 0))
  {
    v243 = v49;
    v89 = fpfs_current_or_default_log();
    v90 = v255;
    sub_1CF9E6128();
    v91 = v261;
    v92 = *(v261 + 16);
    v93 = v250;
    v94 = v271;
    v92(v250, v275, v271);
    v95 = sub_1CF9E6108();
    v96 = sub_1CF9E7288();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v277 = v95;
      v98 = v97;
      v275 = swift_slowAlloc();
      *&v284[0] = v275;
      *v98 = 136315138;
      v99 = v276;
      v92(v276, v93, v94);
      v100 = *(v91 + 8);
      v100(v93, v94);
      v101 = v70;
      v102 = sub_1CF01D738(v94);
      v104 = v103;
      v100(v99, v94);
      v105 = sub_1CEFD0DF0(v102, v104, v284);

      *(v98 + 4) = v105;
      v106 = v277;
      _os_log_impl(&dword_1CEFC7000, v277, v96, "checkItemMatchesTargetedSPSError: dropping %s no longer in SPS", v98, 0xCu);
      v107 = v275;
      __swift_destroy_boxed_opaque_existential_1(v275);
      MEMORY[0x1D386CDC0](v107, -1, -1);
      MEMORY[0x1D386CDC0](v98, -1, -1);

      (*(v268 + 8))(v255, v269);
      (*(v264 + 8))(v262, v101);
    }

    else
    {
      (*(v91 + 8))(v93, v94);

      (*(v268 + 8))(v90, v269);
      (*(v264 + 8))(v262, v70);
    }

    (v243[1])(v245, v266);
    v108 = v270;
    *&v284[0] = v94;
    goto LABEL_19;
  }

  v109 = v253;
  (*(v34 + 16))(v37, v254, v253);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v243 = v49;
    v276 = *v37;
    v110 = *(v37 + 2);
    v111 = *(v37 + 12);
    v112 = v37[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6C0, &qword_1CF9FE540);
    v113 = swift_allocObject();
    v114 = v276;
    *(v113 + 16) = xmmword_1CF9FA450;
    *(v113 + 32) = v114;
    *(v113 + 48) = v110;
    *(v113 + 56) = v111;
    *(v113 + 58) = v112;
    v115 = sub_1CF082CB0(v70);
    v117 = v116;
    v118 = v263;
    (*(v261 + 16))(v263, v275, v271);
    v119 = v278;
  }

  else
  {
    (*(v34 + 8))(v37, v109);
    type metadata accessor for FPCK(0);
    v121 = v247;
    v122 = v262;
    v123 = v278;
    v124 = sub_1CF6BFD3C(v247, v262, v244, v272, v273, v274);
    v119 = v123;
    if (v123)
    {

      (*(v264 + 8))(v122, v70);
      return (v49[1])(v245, v266);
    }

    v113 = v124;
    v243 = v49;
    v118 = v263;
    v115 = v125;
    v117 = v126;
    (*(v261 + 32))(v263, v121, v271);
  }

  v127 = TupleTypeMetadata3;
  *&v118[*(TupleTypeMetadata3 + 48)] = v113;
  v128 = &v118[*(v127 + 64)];
  v235 = v115;
  *v128 = v115;
  v128[1] = v117;
  v236 = v117;

  v129 = v249;
  v130 = objc_sync_enter(v249);
  if (v130)
  {
    goto LABEL_79;
  }

  *&v276 = *(v129 + 3);

  if (v119)
  {

    v232 = objc_sync_exit(v129);
    MEMORY[0x1EEE9AC00](v232);
    v233 = &v234 - 4;
    *(&v234 - 2) = v129;
    goto LABEL_82;
  }

  v130 = objc_sync_exit(v129);
  if (v130)
  {
    MEMORY[0x1EEE9AC00](v130);
    v233 = &v234 - 4;
    *(&v234 - 2) = v129;
LABEL_82:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v233, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v129 = &v281;
  v131 = *(v113 + 16);
  v240 = v113;
  v237 = v44;
  if (v131)
  {
    v282 = 0u;
    memset(v283, 0, 25);
    v281 = 0u;
    if (!*(v113 + 16))
    {
      goto LABEL_78;
    }

    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v129 = 0;
    v140 = 0;
    v239 = v113 + 32;
    v141 = v276 + 64;
    v142 = 0;
    v238 = v131;
LABEL_29:
    if (v133)
    {
      LODWORD(v279[0]) = *(&v282 + 11);
      v115 = &v285 + 4;
      BYTE4(v279[0]) = HIBYTE(v282);
      goto LABEL_60;
    }

    v278 = v119;
    v249 = v132;
    v143 = v239 + 32 * v132;
    v144 = *(v143 + 8);
    v275 = *v143;
    v145 = *(v143 + 16);
    LODWORD(v250) = *(v143 + 24);
    v241 = *(v143 + 25);
    v242 = v241;
    LODWORD(v247) = *(v143 + 26);
    v146 = 1 << *(v276 + 32);
    if (v146 < 64)
    {
      v147 = ~(-1 << v146);
    }

    else
    {
      v147 = -1;
    }

    v148 = v147 & *(v276 + 64);
    v149 = (v146 + 63) >> 6;
    v272 = v144;

    v150 = v145;
    v151 = 0;
    v255 = v150;
LABEL_35:
    if (v148)
    {
      v152 = v275;
      goto LABEL_42;
    }

    v152 = v275;
    while (1)
    {
      v153 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        break;
      }

      if (v153 >= v149)
      {

        v133 = *(&v281 + 1);
        v134 = v281;
        v135 = v282;
        v136 = BYTE8(v282);
        v137 = BYTE9(v282);
        v138 = BYTE10(v282);
        LODWORD(v279[0]) = *(&v282 + 11);
        BYTE4(v279[0]) = HIBYTE(v282);
        v129 = *(&v283[0] + 1);
        v139 = *&v283[0];
        v142 = *&v283[1];
        v140 = BYTE8(v283[1]);
        v119 = v278;
        v70 = v267;
        v118 = v263;
        v113 = v240;
        v131 = v238;
        goto LABEL_59;
      }

      v148 = *(v141 + 8 * v153);
      ++v151;
      if (v148)
      {
        v151 = v153;
LABEL_42:
        v154 = __clz(__rbit64(v148));
        v148 &= v148 - 1;
        v155 = (v151 << 11) | (32 * v154);
        v156 = *(v276 + 48) + v155;
        v157 = *v156;
        v158 = *(v156 + 8);
        v115 = *(v156 + 16);
        v159 = *(v156 + 24);
        v119 = *(v156 + 25);
        v160 = *(v156 + 26);
        v161 = *(v276 + 56) + v155;
        v265 = *v161;
        v260 = *(v161 + 8);
        v142 = *(v161 + 16);
        LODWORD(v257) = *(v161 + 24);
        if (v157 != v152 || v158 != v272)
        {
          v163 = sub_1CF9E8048();
          v150 = v255;
          if ((v163 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        if (v115 != v150 || v159 != 6 && v159 != v250 || v119 != 89 && (v242 == 89 || qword_1CFA01448[v119] != qword_1CFA01448[v241]) || v160 != 2 && (v247 == 2 || ((v160 ^ v247) & 1) != 0))
        {
          goto LABEL_35;
        }

        v129 = v260;

        sub_1CEFCCC44(&v281, qword_1EC4BEEA0, &qword_1CFA00DA8);

        v135 = v255;
        v119 = v278;
        v70 = v267;
        v118 = v263;
        v113 = v240;
        v131 = v238;
        v133 = v272;
        v134 = v275;
        v136 = v250;
        v137 = v242;
        v138 = v247;
        v139 = v265;
        v140 = v257;
LABEL_59:
        v132 = v249;
LABEL_60:
        if (++v132 == v131)
        {
          v278 = v119;
          v164 = v138;
          v165 = v133;
          v260 = v129;
          v166 = v134;
          v167 = v135;
          v168 = v137;
          v265 = v139;
          LODWORD(v257) = v140;

          *&v284[0] = v166;
          *(&v284[0] + 1) = v165;
          *&v284[1] = v167;
          BYTE8(v284[1]) = v136;
          BYTE9(v284[1]) = v168;
          BYTE10(v284[1]) = v164;
          *(&v284[1] + 11) = v279[0];
          HIBYTE(v284[1]) = BYTE4(v279[0]);
          *&v284[2] = v265;
          *(&v284[2] + 1) = v260;
          *&v284[3] = v142;
          BYTE8(v284[3]) = v257;
          goto LABEL_66;
        }

        *&v281 = v134;
        *(&v281 + 1) = v133;
        *&v282 = v135;
        BYTE8(v282) = v136;
        BYTE9(v282) = v137;
        BYTE10(v282) = v138;
        *(&v282 + 11) = v279[0];
        HIBYTE(v282) = BYTE4(v279[0]);
        *&v283[0] = v139;
        *(&v283[0] + 1) = v129;
        *&v283[1] = v142;
        BYTE8(v283[1]) = v140;
        if (v132 >= *(v113 + 16))
        {
LABEL_78:
          __break(1u);
LABEL_79:
          MEMORY[0x1EEE9AC00](v130);
          *(&v234 - 2) = v129;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v234 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v278 = 0;

  memset(v284, 0, 57);
LABEL_66:
  v169 = v252[2];
  v170 = TupleTypeMetadata3;
  v169(v251, v118, TupleTypeMetadata3);
  *v280 = *(&v284[1] + 11);
  *&v280[14] = *(&v284[2] + 9);
  v171 = v245;
  v172 = v262;
  if (!*(&v284[0] + 1))
  {
    if (!sub_1CF2BA6AC(v253))
    {

      v214 = v252[1];
      v215 = TupleTypeMetadata3;
      v214(v251, TupleTypeMetadata3);
      (*(v264 + 8))(v172, v70);
      (v243[1])(v171, v266);
      v214(v263, v215);
      *&v281 = v271;
      *(&v281 + 1) = &type metadata for TargetedSPSErrorAndValue;
      *&v282 = MEMORY[0x1E69E6158];
      *(&v282 + 1) = MEMORY[0x1E69E6158];
      v216 = swift_getTupleTypeMetadata();
      return (*(*(v216 - 8) + 56))(v270, 1, 1, v216);
    }

    v119 = 0xEE00646574656772;
    v115 = 0x6154737961776C41;
    if (*(v240 + 16))
    {
      v119 = *(v240 + 40);
      v268 = *(v240 + 32);
      *&v276 = *(v240 + 48);
      LODWORD(v269) = *(v240 + 56);
      LODWORD(v272) = *(v240 + 57);
      LODWORD(v275) = *(v240 + 58);

LABEL_77:
      v217 = v271;
      *&v281 = v271;
      *(&v281 + 1) = &type metadata for TargetedSPSErrorAndValue;
      *&v282 = MEMORY[0x1E69E6158];
      *(&v282 + 1) = MEMORY[0x1E69E6158];
      v218 = swift_getTupleTypeMetadata();
      v219 = v270;
      v220 = v270 + v218[12];
      v221 = (v270 + v218[16]);
      v222 = (v270 + v218[20]);
      v223 = v263;
      (*(v261 + 16))(v270, v263, v217);
      *v220 = v268;
      *(v220 + 8) = v119;
      *(v220 + 16) = v276;
      *(v220 + 24) = v269;
      *(v220 + 25) = v272;
      *(v220 + 26) = v275;
      *(v220 + 27) = v281;
      *(v220 + 31) = BYTE4(v281);
      *(v220 + 32) = v115 + 32;
      *(v220 + 40) = 0xEE00646574656772;
      *(v220 + 48) = 0x3FF0000000000000;
      *(v220 + 56) = 1;
      v224 = v236;
      *v221 = v235;
      v221[1] = v224;

      v225 = v251;
      v226 = sub_1CF2BF318(v251);
      v228 = v227;

      v229 = v252[1];
      v230 = v225;
      v231 = TupleTypeMetadata3;
      v229(v230, TupleTypeMetadata3);
      (*(v264 + 8))(v262, v267);
      (v243[1])(v245, v266);
      v229(v223, v231);
      *v222 = v226;
      v222[1] = v228;
      return (*(*(v218 - 1) + 56))(v219, 0, 1, v218);
    }

LABEL_76:
    *&v276 = 0;
    LODWORD(v275) = 2;
    LODWORD(v272) = 89;
    LODWORD(v269) = 5;
    v268 = v115;
    goto LABEL_77;
  }

  v260 = *&v284[1];
  v265 = *&v284[0];
  LODWORD(v272) = BYTE10(v284[1]);
  LODWORD(v276) = BYTE9(v284[1]);
  LODWORD(v275) = BYTE8(v284[1]);
  v257 = *(&v284[0] + 1);
  v173 = fpfs_current_or_default_log();
  v174 = v248;
  sub_1CF9E6128();
  v175 = v246;
  v169(v246, v118, v170);
  v281 = v284[0];
  v282 = v284[1];
  v283[0] = v284[2];
  *(v283 + 9) = *(&v284[2] + 9);
  sub_1CF1A8918(&v281, v279);
  v176 = sub_1CF9E6108();
  v177 = sub_1CF9E7288();
  sub_1CEFCCC44(v284, qword_1EC4BEEA0, &qword_1CFA00DA8);
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v279[0] = v253;
    *v178 = 136315394;
    v179 = v275 | (v276 << 8) | (v272 << 16);
    v180 = v257;

    v181 = sub_1CF19F0C0(v265, v180, v260, v179);
    v183 = v182;

    v184 = sub_1CEFD0DF0(v181, v183, v279);

    *(v178 + 4) = v184;
    *(v178 + 12) = 2080;
    v185 = *&v175[*(v170 + 48)];
    v186 = v252[1];
    v254 = (v252 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v187 = v175;
    v188 = v170;
    v255 = v186;
    (v186)(v187, v170);
    v189 = MEMORY[0x1D3868FE0](v185, &type metadata for TargetedSPSError);
    v191 = v190;

    v192 = v189;
    v70 = v267;
    v193 = sub_1CEFD0DF0(v192, v191, v279);

    *(v178 + 14) = v193;
    v194 = v271;
    _os_log_impl(&dword_1CEFC7000, v176, v177, "checkItemMatchesTargetedSPSError: matching %s found in %s", v178, 0x16u);
    v195 = v253;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v195, -1, -1);
    v196 = v178;
    v197 = v276;
    MEMORY[0x1D386CDC0](v196, -1, -1);

    (*(v268 + 8))(v248, v269);
  }

  else
  {
    v198 = v252[1];
    v254 = (v252 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v199 = v175;
    v188 = v170;
    v255 = v198;
    (v198)(v199, v170);

    (*(v268 + 8))(v174, v269);
    v194 = v271;
    v180 = v257;
    v197 = v276;
  }

  v279[0] = v194;
  v279[1] = &type metadata for TargetedSPSErrorAndValue;
  v279[2] = MEMORY[0x1E69E6158];
  v279[3] = MEMORY[0x1E69E6158];
  v200 = swift_getTupleTypeMetadata();
  v201 = v194;
  v202 = v270;
  v203 = v270 + v200[12];
  v204 = (v270 + v200[16]);
  *&v276 = v270 + v200[20];
  v205 = v263;
  (*(v261 + 16))(v270, v263, v201);
  *v203 = v265;
  *(v203 + 8) = v180;
  *(v203 + 16) = v260;
  *(v203 + 24) = v275;
  *(v203 + 25) = v197;
  *(v203 + 26) = v272;
  *(v203 + 27) = *v280;
  *(v203 + 41) = *&v280[14];
  v206 = v236;
  *v204 = v235;
  v204[1] = v206;

  v207 = v251;
  v208 = sub_1CF2BF318(v251);
  v210 = v209;

  v211 = v207;
  v212 = v255;
  (v255)(v211, v188);
  (*(v264 + 8))(v262, v70);
  (v243[1])(v245, v266);
  (v212)(v205, v188);
  v213 = v276;
  *v276 = v208;
  *(v213 + 8) = v210;
  return (*(*(v200 - 1) + 56))(v202, 0, 1, v200);
}

uint64_t sub_1CF2BF318(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE98, &qword_1CFA00DA0);
  v2 = *(a1 + *(swift_getTupleTypeMetadata3() + 48));
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v3, 0);
    v4 = (v2 + 58);
    do
    {
      v5 = *(v4 - 26);
      v6 = *(v4 - 18);
      v7 = *(v4 - 10);
      LODWORD(v2) = v2 & 0xFF000000 | *(v4 - 2) | (*(v4 - 1) << 8) | (*v4 << 16);

      v8 = sub_1CF19F0C0(v5, v6, v7, v2);
      v10 = v9;

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1CEFE95CC((v11 > 1), v12 + 1, 1);
      }

      v4 += 32;
      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v14 = sub_1CF9E67D8();

  return v14;
}

uint64_t sub_1CF2BF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v92 = a4;
  v89 = a1;
  v90 = a2;
  v5 = *v4;
  v6 = *(*v4 + 104);
  v7 = *(*v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = type metadata accessor for ItemState();
  v78 = *(v79 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v70 - v11;
  v12 = type metadata accessor for SnapshotItem();
  v76 = sub_1CF9E75D8();
  v75 = *(v76 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v84 = v12;
  v85 = &v70 - v14;
  v83 = *(v12 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v70 - v17;
  v87 = *(AssociatedTypeWitness - 8);
  v18 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v70 - v20;
  v21 = *(v5 + 96);
  v22 = *(v5 + 80);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v74 = type metadata accessor for ItemState();
  v73 = *(v74 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v70 - v26;
  v27 = type metadata accessor for SnapshotItem();
  v71 = sub_1CF9E75D8();
  v70 = *(v71 - 8);
  v28 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v30 = &v70 - v29;
  v81 = *(v27 - 8);
  v31 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v80 = &v70 - v33;
  v88 = *(v23 - 8);
  v34 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v70 - v36;
  v97 = v23;
  v98 = AssociatedTypeWitness;
  v99 = v24;
  v100 = AssociatedConformanceWitness;
  v38 = type metadata accessor for ReconciliationID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v70 - v41;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0x6D20424420412F4ELL;
  }

  v44 = Strong;
  (*(v39 + 16))(v42, v89, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v86;
    v45 = v87;
    (*(v87 + 32))(v86, v42, AssociatedTypeWitness);
    v47 = *(v44 + 40);
    v48 = *(*v47 + 240);

    v49 = v85;
    v50 = v101;
    v48(v46, 1, v90, v91, v92);
    if (v50)
    {
      (*(v45 + 8))(v46, AssociatedTypeWitness);
LABEL_8:

      return v47;
    }

    v55 = v83;
    v56 = v84;
    if ((*(v83 + 48))(v49, 1, v84) == 1)
    {
      v47 = 0xD000000000000017;
      (*(v75 + 8))(v49, v76);

      (*(v45 + 8))(v46, AssociatedTypeWitness);
    }

    else
    {
      (*(v55 + 32))();
      WitnessTable = swift_getWitnessTable();
      v59 = v77;
      sub_1CF937E0C(v56, WitnessTable, v77);
      v60 = v79;
      v61 = (v59 + *(v79 + 36));
      v62 = v61[1];
      v101 = *v61;
      v63 = *(v78 + 8);

      v63(v59, v60);
      v97 = v101;
      v98 = v62;
      v95 = 47;
      v96 = 0xE100000000000000;
      v93 = 58;
      v94 = 0xE100000000000000;
      sub_1CEFE4E68();
      v47 = sub_1CF9E7668();

      (*(v83 + 8))(v82, v84);
      (*(v45 + 8))(v46, AssociatedTypeWitness);
    }
  }

  else
  {
    v51 = v88;
    (*(v88 + 32))(v37, v42, v23);
    v47 = *(v44 + 32);
    v52 = *(*v47 + 240);

    v53 = v101;
    v52(v37, 1, v90, v91, v92);
    v101 = v53;
    if (v53)
    {
      (*(v51 + 8))(v37, v23);
      goto LABEL_8;
    }

    v57 = v81;
    if ((*(v81 + 48))(v30, 1, v27) == 1)
    {
      v47 = 0xD000000000000017;
      (*(v70 + 8))(v30, v71);

      (*(v88 + 8))(v37, v23);
    }

    else
    {
      (*(v57 + 32))();
      v64 = swift_getWitnessTable();
      v65 = v72;
      sub_1CF937E0C(v27, v64, v72);
      v66 = v74;
      v67 = (v65 + *(v74 + 36));
      v68 = v67[1];
      v92 = *v67;
      v69 = *(v73 + 8);

      v69(v65, v66);
      v97 = v92;
      v98 = v68;
      v95 = 47;
      v96 = 0xE100000000000000;
      v93 = 58;
      v94 = 0xE100000000000000;
      sub_1CEFE4E68();
      v47 = sub_1CF9E7668();

      (*(v57 + 8))(v80, v27);
      (*(v88 + 8))(v37, v23);
    }
  }

  return v47;
}

uint64_t sub_1CF2C0070(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), void (**a5)(uint64_t))
{
  v116 = a5;
  v115 = a4;
  v114 = a3;
  v106 = a2;
  v140 = a1;
  v6 = *v5;
  v129 = v5 + 2;
  v7 = v6[13];
  v8 = v6[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v6[12];
  v11 = v6[10];
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *&v135 = AssociatedTypeWitness;
  *(&v135 + 1) = v12;
  *&v136 = AssociatedConformanceWitness;
  *(&v136 + 1) = v14;
  v15 = type metadata accessor for ThrottlingKey();
  v104 = *(v15 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v100 - v17;
  v118 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = *(TupleTypeMetadata2 - 8);
  v19 = v119[8];
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v103 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v100 - v22;
  v101 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v100 - v25;
  v110 = sub_1CF9E75D8();
  v109 = *(v110 - 8);
  v26 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v100 - v27;
  v113 = *(AssociatedTypeWitness - 8);
  v28 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v100 - v30;
  *&v135 = v12;
  *(&v135 + 1) = AssociatedTypeWitness;
  v128 = AssociatedTypeWitness;
  v126 = v14;
  *&v136 = v14;
  *(&v136 + 1) = AssociatedConformanceWitness;
  v127 = AssociatedConformanceWitness;
  v31 = type metadata accessor for ThrottlingKey();
  v32 = swift_getTupleTypeMetadata2();
  v122 = *(v32 - 8);
  v33 = v122[8];
  MEMORY[0x1EEE9AC00](v32);
  v105 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v100 - v36;
  v102 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v100 - v40;
  v42 = sub_1CF9E75D8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v100 - v45;
  v47 = *(v12 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v125 = &v100 - v50;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_36;
  }

  v129 = v31;
  sub_1CF050EC8(v31, v46);
  if ((*(v47 + 48))(v46, 1, v12) == 1)
  {
    v123 = v12;
    (*(v43 + 8))(v46, v42);
    v37 = v112;
    sub_1CF94A2D4(v129, v112);
    v51 = v113;
    v52 = v128;
    if ((*(v113 + 48))(v37, 1, v128) == 1)
    {

      (*(v109 + 8))(v37, v110);
LABEL_36:
      LOBYTE(v37) = 0;
      return v37 & 1;
    }

    v58 = v111;
    (*(v51 + 32))(v111, v37, v52);
    v59 = *(Strong + 24);

    v60 = sub_1CF051078(v129);
    v61 = v124;
    v62 = (*(*v59 + 376))(v58, v60, 0, 1, v114, v115, v116);
    if (v61)
    {
      (*(v51 + 8))(v58, v52);
      goto LABEL_9;
    }

    v75 = v62;
    v124 = 0;

    v76 = TupleTypeMetadata2;
    v77 = sub_1CF9E6DF8();
    v78 = v107;
    if (v77)
    {
      v79 = 0;
      v122 = v119 + 2;
      v116 = (v104 + 32);
      v125 = (v104 + 8);
      v115 = (v119 + 1);
      while (1)
      {
        v80 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v80)
        {
          (v119[2])(v121, v75 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + v119[9] * v79, v76);
          v81 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v101 != 8)
          {
            goto LABEL_41;
          }

          *&v135 = result;
          (*v122)(v121, &v135, v76);
          swift_unknownObjectRelease();
          v81 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v82 = &v121[*(v76 + 48)];
        v139 = *(v82 + 8);
        v83 = *(v82 + 3);
        v137 = *(v82 + 2);
        v138 = v83;
        v84 = *(v82 + 1);
        v135 = *v82;
        v136 = v84;
        v85 = v78 + *(v76 + 48);
        v86 = v118;
        (*v116)(v78);
        v87 = v138;
        *(v85 + 32) = v137;
        *(v85 + 48) = v87;
        *(v85 + 64) = v139;
        v88 = v136;
        *v85 = v135;
        *(v85 + 16) = v88;
        v89 = v117;
        sub_1CF05043C(v129, v117);
        LOBYTE(v85) = sub_1CF94A0F4(v78, v89, v52, v123, v127, v126);
        v90 = *v125;
        (*v125)(v89, v86);
        if (v85)
        {
          break;
        }

        (*v115)(v78, v76);
        v91 = sub_1CF9E6DF8();
        ++v79;
        v52 = v128;
        if (v81 == v91)
        {
          goto LABEL_34;
        }
      }

      (*(v113 + 8))(v111, v128);

      v96 = v103;
      (v119[4])(v103, v78, v76);
      v97 = &v96[*(v76 + 48)];
      v134 = *(v97 + 8);
      v98 = *(v97 + 3);
      v132 = *(v97 + 2);
      v133 = v98;
      v99 = *(v97 + 1);
      v130 = *v97;
      v131 = v99;
      sub_1CF2CA1E8(&v130);
      LOBYTE(v37) = v131 >= v106;
      v90(v96, v118);
      return v37 & 1;
    }

LABEL_34:
    (*(v113 + 8))(v111, v52);
LABEL_35:

    goto LABEL_36;
  }

  v53 = v125;
  (*(v47 + 32))();
  v54 = *(Strong + 24);

  v55 = sub_1CF051078(v129);
  v56 = v124;
  v57 = (*(*v54 + 384))(v53, v55, 0, 1, v114, v115, v116);
  if (v56)
  {
    (*(v47 + 8))(v53, v12);
LABEL_9:

    return v37 & 1;
  }

  v63 = v57;
  v123 = v12;
  v124 = 0;

  if (!sub_1CF9E6DF8())
  {
LABEL_22:
    (*(v47 + 8))(v53, v123);
    goto LABEL_35;
  }

  v64 = 0;
  v121 = (v122 + 2);
  v119 = v129 - 1;
  v118 = (v122 + 1);
  while (1)
  {
    v65 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v65)
    {
      (v122[2])(v41, v63 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v122[9] * v64, v32);
      v53 = (v64 + 1);
      if (__OFADD__(v64, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    result = sub_1CF9E7998();
    if (v102 != 8)
    {
      break;
    }

    *&v135 = result;
    (*v121)(v41, &v135, v32);
    swift_unknownObjectRelease();
    v53 = (v64 + 1);
    if (__OFADD__(v64, 1))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_14:
    v66 = &v41[*(v32 + 48)];
    v139 = *(v66 + 8);
    v67 = *(v66 + 3);
    v137 = *(v66 + 2);
    v138 = v67;
    v68 = *(v66 + 1);
    v135 = *v66;
    v136 = v68;
    v69 = v37 + *(v32 + 48);
    v70 = *(v129 - 1);
    (*(v70 + 32))(v37, v41);
    v71 = v138;
    *(v69 + 32) = v137;
    *(v69 + 48) = v71;
    *(v69 + 64) = v139;
    v72 = v136;
    *v69 = v135;
    *(v69 + 16) = v72;
    if (sub_1CF94A0F4(v37, v140, v123, v128, v126, v127))
    {
      (*(v47 + 8))(v125, v123);

      v92 = v105;
      (v122[4])(v105, v37, v32);
      v93 = &v92[*(v32 + 48)];
      v134 = *(v93 + 8);
      v94 = *(v93 + 3);
      v132 = *(v93 + 2);
      v133 = v94;
      v95 = *(v93 + 1);
      v130 = *v93;
      v131 = v95;
      sub_1CF2CA1E8(&v130);
      LOBYTE(v37) = v131 >= v106;
      (*(v70 + 8))(v92, v129);
      return v37 & 1;
    }

    (*v118)(v37, v32);
    ++v64;
    v73 = v53 == sub_1CF9E6DF8();
    v53 = v125;
    if (v73)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1CF2C0F7C()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF2C10C8(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF2C10C8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_1CF1F8AAC(*(v3 + 16), 0);
  v6 = sub_1CF1F97A8(&v7, (v5 + 4), v4, v3);

  result = sub_1CEFCB59C();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2C1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 432))(2, a1, a2, a3);
  }

  else
  {
    sub_1CF2CA194();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1CF2C1264()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1CF2C128C()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2C1384(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v65 = a4;
  v67 = a3;
  v71 = a2;
  v7 = *v4;
  v8 = sub_1CF9E6118();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v73 = v7[10];
  v74 = v7[11];
  v75 = v7[12];
  v76 = v7[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v77[0] = AssociatedTypeWitness;
  v77[1] = v12;
  v78 = AssociatedConformanceWitness;
  v79 = v14;
  v15 = type metadata accessor for ReconciliationID();
  swift_getWitnessTable();
  v16 = MEMORY[0x1E69E6158];
  v70 = v15;
  v17 = sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  v63 = sub_1CF054A5C(sub_1CF2CA124, v72, v17, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  if (v65)
  {
    v20 = v67;
  }

  else
  {
    v20 = 0;
  }

  if (v65)
  {
    v21 = v65;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v77[0] = AssociatedTypeWitness;
  v77[1] = v12;
  v78 = AssociatedConformanceWitness;
  v79 = v14;
  v22 = type metadata accessor for CodepathTriggeringDiagnostics();
  v23 = sub_1CF2BA390(v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(v77, "FileProvider ");
  HIWORD(v77[1]) = -4864;
  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](0x6574636574656420, 0xE900000000000064);
  MEMORY[0x1D3868CC0](v20, v21);

  v30 = v77[1];
  v64 = v77[0];
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](v27, v29);

  MEMORY[0x1D3868CC0](0x6D6F6420726F6620, 0xED0000203A6E6961);
  v67 = v5;
  v65 = v5[3];
  v31 = [v65 fp_obfuscatedProviderDomainID];
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;

  MEMORY[0x1D3868CC0](v32, v34);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3DCC0);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v35 = v63;
  v80 = *(v63 + 16);
  v36 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v36);

  MEMORY[0x1D3868CC0](0xA3A736D65744920, 0xE800000000000000);
  v80 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v37 = sub_1CF9E67D8();
  MEMORY[0x1D3868CC0](v37);

  v71 = v77[0];
  v38 = fpfs_current_or_default_log();
  v39 = v66;
  sub_1CF9E6128();

  v40 = v39;
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E72A8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v62 = v30;
    v44 = v43;
    v45 = swift_slowAlloc();
    v77[0] = v45;
    *v44 = 136315138;
    v80 = v35;
    v46 = sub_1CF9E67D8();
    v48 = v47;

    v49 = sub_1CEFD0DF0(v46, v48, v77);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "DiagnosticsManager: TTR-ing stuck deletion:\n%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D386CDC0](v45, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);
  }

  else
  {
  }

  (*(v68 + 8))(v40, v69);
  v50 = v67[2];
  v51 = sub_1CF9E6888();

  v52 = sub_1CF9E6888();

  sub_1CF2CA148();
  v53 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v54 = sub_1CF9E6D28();
  v55 = sub_1CF9E6888();
  v56 = v65;
  v57 = [v56 pathComponents];
  v58 = sub_1CF9E6D48();

  v59 = *(v58 + 16);

  if (v59 >= 2)
  {
    v60 = [v56 stringByDeletingLastPathComponent];
    if (!v60)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v60 = sub_1CF9E6888();
    }

    v56 = v60;
  }

  [v50 requestTapToRadarWithTitle:v51 description:v52 keywords:v53 attachments:v54 displayReason:v55 providerID:v56];

  return sub_1CF9E6DA8();
}

uint64_t sub_1CF2C1B04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(*(TupleTypeMetadata2 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v17 - v7;
  (*(v9 + 16))(&v17 - v7, a1, TupleTypeMetadata2, v6);
  v10 = *&v8[*(TupleTypeMetadata2 + 48) + 8];

  v11 = sub_1CF01D738(v3);
  v13 = v12;
  (*(*(v3 - 1) + 8))(v8, v3);
  AssociatedTypeWitness = v11;
  v20 = v13;
  MEMORY[0x1D3868CC0](2108704, 0xE300000000000000);
  result = MEMORY[0x1D3868CC0](*(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  v15 = v20;
  v16 = v18;
  *v18 = AssociatedTypeWitness;
  v16[1] = v15;
  return result;
}

uint64_t sub_1CF2C1D58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2C1DBC()
{
  v1 = (v0 + *(*v0 + 152));
  v3 = *v1;
  v2 = v1[1];
  swift_getObjectType();
  return sub_1CF9E6F38();
}

uint64_t sub_1CF2C1E04()
{
  v1 = *(*(*v0 + 120) + 64);
  v2 = *(*v0 + 96);
  v3 = v0 + *(*v0 + 144);
  return v1(v2);
}

uint64_t sub_1CF2C1E78(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v3 + 88);
  v10 = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ReconciliationID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  *&v33 = v6;
  *(&v33 + 1) = v9;
  v34 = AssociatedConformanceWitness;
  v35 = v10;
  v16 = type metadata accessor for FPDiagnosticsManagerStateKey();
  v29 = *(v16 - 8);
  v17 = *(v29 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  (*(v12 + 16))(v15, v30, v11, v18);
  v21 = v31;
  v27 = v10;
  sub_1CF2BB6F4(v15, *v31, *(v31 + 8), *(v31 + 16), *(v31 + 24) | (*(v31 + 26) << 16), v20);
  v22 = *(v2 + *(*v2 + 160));
  sub_1CF9CCC54(&v32);

  swift_getWitnessTable();
  sub_1CF9E6728();

  v24 = v33;
  if (v33)
  {
    v33 = *(v21 + 32);
    MEMORY[0x1EEE9AC00](v23);
    v27 = &v33;
    v25 = sub_1CF7F7438(sub_1CF25107C, (&v28 - 4), v24);
    sub_1CF2CA088(v24);
    (*(v29 + 8))(v20, v16);
  }

  else
  {
    (*(v29 + 8))(v20, v16);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1CF2C2264(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a2;
  *(v3 + 176) = v2;
  *(v3 + 160) = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  *(v3 + 184) = v5;
  v6 = v4[11];
  *(v3 + 192) = v6;
  v7 = v4[12];
  *(v3 + 200) = v7;
  v8 = v4[13];
  *(v3 + 208) = v8;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v11 = v4[14];
  *(v3 + 216) = v11;
  v12 = v4[15];
  *(v3 + 224) = v12;
  v13 = v4[16];
  *(v3 + 232) = v13;
  v14 = v4[17];
  *(v3 + 240) = v14;
  *(v3 + 16) = v9;
  *&v9 = v13;
  *(&v9 + 1) = v14;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  *(v3 + 32) = v10;
  *(v3 + 48) = v15;
  *(v3 + 64) = v9;
  type metadata accessor for FPDiagnosticsManager();
  swift_getWitnessTable();
  v17 = sub_1CF9E6EC8();
  *(v3 + 248) = v17;
  *(v3 + 256) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C23FC, v17, v16);
}

uint64_t sub_1CF2C23FC()
{
  if (fpfs_is_seed_build() && !fpfs_supports_tap_to_feedback())
  {
    goto LABEL_5;
  }

  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v31 = v0[30];
  if (sub_1CF2C9A24(v0[21]))
  {
    v8 = v0[24];
    v9 = v0[23];
    v34 = v0[22];
    v35 = v0[21];
    v36 = v0[20];
    v33 = v0[28];
    v37 = v0[25];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = swift_getAssociatedConformanceWitness();
    v13 = swift_getAssociatedTypeWitness();
    v14 = swift_getAssociatedConformanceWitness();
    v15 = swift_getAssociatedConformanceWitness();
    v0[10] = AssociatedTypeWitness;
    v0[11] = v13;
    v0[12] = v14;
    v0[13] = v15;
    v16 = type metadata accessor for ReconciliationID();
    v17 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v18 = sub_1CF9E6DA8();
    WitnessTable = swift_getWitnessTable();
    v20 = sub_1CF04F294(v18, v16, v17, WitnessTable);

    v0[18] = v20;
    v32 = *(*v34 + 144);
    v21 = swift_task_alloc();
    v21[2] = v35;
    v21[3] = v34;
    v21[4] = v36;
    v21[5] = v0 + 18;
    v22 = *(v33 + 72);
    v0[14] = v9;
    v0[15] = v8;
    v0[16] = AssociatedConformanceWitness;
    v0[17] = v12;
    type metadata accessor for FPDiagnosticsManagerStateKey();
    swift_getTupleTypeMetadata3();
    v23 = sub_1CF9E6E58();
    v22(sub_1CF2CA0C8, v21, v23, v37, v33);

    v26 = v0[18];
    v27 = v0[19];
    v0[33] = v27;
    v0[34] = v26;
    v28 = swift_task_alloc();
    v0[35] = v28;
    *v28 = v0;
    v28[1] = sub_1CF2C2794;
    v29 = v0[21];
    v30 = v0[22];

    return sub_1CF2C38F0(v27, v26, v29);
  }

  else
  {
LABEL_5:
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1CF2C2794()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[33];

  v6 = v2[32];
  v7 = v2[31];
  if (v0)
  {
    v8 = sub_1CF2C294C;
  }

  else
  {
    v8 = sub_1CF2C28E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CF2C28E8()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF2C294C()
{
  v1 = v0[36];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CF2C29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v64 = a2;
  v58 = a1;
  v59 = a5;
  v57 = a4;
  v51 = a6;
  v7 = *a3;
  v8 = sub_1CF9E6118();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[15];
  v12 = v7[12];
  v13 = v7[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = v7[11];
  v52 = v12;
  v53 = v11;
  v17 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v62 = AssociatedConformanceWitness;
  v63 = v13;
  v19 = swift_getAssociatedConformanceWitness();
  v60 = v17;
  v61 = v16;
  v20 = v64;
  v21 = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v67 = v18;
  v68 = v19;
  v69 = v21;
  v22 = type metadata accessor for CodepathTriggeringDiagnostics();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  v66 = AssociatedTypeWitness;
  v67 = v18;
  v55 = v19;
  v56 = v18;
  v68 = v19;
  v69 = v21;
  v54 = v21;
  v27 = type metadata accessor for ThrottlingKey();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v47 - v31;
  (*(v23 + 16))(v26, v20, v22, v30);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = (*(v23 + 8))(v26, v22);
    goto LABEL_7;
  }

  v34 = v53;
  v35 = (*(v28 + 32))(v32, v26, v27);
  if (*(a3 + *(*a3 + 192)) != 1)
  {
    v33 = (*(v28 + 8))(v32, v27);
    goto LABEL_7;
  }

  v36 = *(*a3 + 144);
  v37 = MEMORY[0x1EEE9AC00](v35);
  *(&v47 - 2) = a3;
  *(&v47 - 1) = v32;
  v38 = v65;
  (*(v34 + 9))(&v66, sub_1CF2CA108, v37);
  if (v38)
  {
    return (*(v28 + 8))(v32, v27);
  }

  v53 = v32;
  v65 = 0;
  if (v66 == 1)
  {
    v33 = (*(v28 + 8))(v53, v27);
LABEL_7:
    v70 = v57;
    MEMORY[0x1EEE9AC00](v33);
    v40 = v59;
    *(&v47 - 4) = v58;
    *(&v47 - 3) = a3;
    *(&v47 - 2) = v20;
    *(&v47 - 1) = v40;
    v66 = AssociatedTypeWitness;
    v67 = v56;
    v68 = v55;
    v69 = v54;
    type metadata accessor for ReconciliationID();
    sub_1CF9E6E58();
    v66 = v63;
    v67 = v61;
    v68 = v62;
    v69 = v60;
    type metadata accessor for FPDiagnosticsManagerStateKey();
    swift_getTupleTypeMetadata3();
    swift_getWitnessTable();
    v41 = v65;
    result = sub_1CF9E6B88();
    if (!v41)
    {
      *v51 = result;
    }

    return result;
  }

  v42 = fpfs_current_or_default_log();
  v43 = v48;
  sub_1CF9E6128();
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E7298();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1CEFC7000, v44, v45, "Item not yet throttled - giving up", v46, 2u);
    MEMORY[0x1D386CDC0](v46, -1, -1);
  }

  (*(v49 + 8))(v43, v50);
  v66 = v63;
  v67 = v61;
  v68 = v62;
  v69 = v60;
  type metadata accessor for FPDiagnosticsManagerStateKey();
  swift_getTupleTypeMetadata3();
  *v51 = sub_1CF9E6DA8();
  return (*(v28 + 8))(v53, v27);
}

uint64_t sub_1CF2C3090@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a2;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = *(*a2 + 144);
  v13 = sub_1CF2C9F28();
  result = (*(*(v8 + 120) + 56))(a3, v13, v11, v9, v10, *(v8 + 96));
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1CF2C316C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v77 = a1;
  v78 = a4;
  v75 = a2;
  v73 = a6;
  v7 = *a3;
  v8 = *(*a3 + 80);
  v9 = *(*a3 + 88);
  v74 = *(*a3 + 120);
  v76 = *(v7 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v79 = v8;
  v80 = v9;
  v81 = AssociatedConformanceWitness;
  v82 = v11;
  v72 = type metadata accessor for FPDiagnosticsManagerStateKey();
  v67 = *(v72 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v62 = &v61 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  v66 = AssociatedConformanceWitness;
  v64 = v8;
  v16 = a3;
  v17 = swift_getAssociatedConformanceWitness();
  v65 = v11;
  v63 = v9;
  v18 = swift_getAssociatedConformanceWitness();
  v79 = AssociatedTypeWitness;
  v80 = v15;
  v81 = v17;
  v82 = v18;
  v79 = type metadata accessor for ReconciliationID();
  v80 = &type metadata for TargetedSPSErrorAndValue;
  v81 = MEMORY[0x1E69E6158];
  v82 = MEMORY[0x1E69E6158];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = sub_1CF9E75D8();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  v79 = AssociatedTypeWitness;
  v80 = v15;
  v81 = v17;
  v82 = v18;
  v23 = type metadata accessor for ReconciliationID();
  v69 = *(v23 - 8);
  v24 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  v30 = v75[3];
  v31 = v75[4];
  v32 = __swift_project_boxed_opaque_existential_1(v75, v30);
  v33 = v16 + *(*v16 + 144);
  v34 = v88;
  result = (*(v74 + 40))(v77, v78, v32, v30, v31, v76);
  if (!v34)
  {
    v36 = v70;
    v37 = v69;
    v78 = v26;
    v38 = v29;
    v88 = 0;
    v39 = TupleTypeMetadata;
    if ((*(*(TupleTypeMetadata - 8) + 48))(v22, 1, TupleTypeMetadata) == 1)
    {
      (*(v36 + 8))(v22, v19);
LABEL_6:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v73, 1, 1, TupleTypeMetadata3);
    }

    v40 = &v22[v39[12]];
    v41 = *(v40 + 1);
    v83 = *v40;
    v84 = v41;
    *v85 = *(v40 + 2);
    *&v85[9] = *(v40 + 41);
    v42 = &v22[v39[16]];
    v43 = *v42;
    v44 = *(v42 + 1);
    v45 = &v22[v39[20]];
    v46 = *v45;
    v47 = *(v45 + 1);
    v76 = v43;
    v77 = v46;
    v48 = v23;
    (*(v37 + 32))(v38, v22, v23);
    if (sub_1CF2C1E78(v38, &v83))
    {
      (*(v37 + 8))(v38, v23);

      sub_1CF1A8950(&v83);
      goto LABEL_6;
    }

    v50 = v44;
    v51 = *(v37 + 16);
    v75 = v47;
    v52 = v78;
    v51(v78, v38, v23);
    v53 = v62;
    sub_1CF2BB6F4(v52, v83, *(&v83 + 1), v84, WORD4(v84) | (BYTE10(v84) << 16), v62);
    v51(v52, v38, v48);
    v79 = v76;
    v80 = v50;

    swift_getWitnessTable();
    sub_1CF9E6708();
    sub_1CF9E6738();
    (*(v37 + 8))(v38, v48);
    v54 = v72;
    v55 = swift_getTupleTypeMetadata3();
    v56 = v73;
    v57 = v73 + *(v55 + 48);
    v58 = (v73 + *(v55 + 64));
    (*(v67 + 32))(v73, v53, v54);
    v59 = *v85;
    v86 = *&v85[16];
    v87 = v85[24];

    sub_1CF1A8950(&v83);
    *v57 = v59;
    *(v57 + 16) = v86;
    *(v57 + 24) = v87;
    v60 = v75;
    *v58 = v77;
    v58[1] = v60;
    return (*(*(v55 - 8) + 56))(v56, 0, 1, v55);
  }

  return result;
}

uint64_t sub_1CF2C38F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 224) = a3;
  *(v4 + 232) = v3;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;
  v5 = *v3;
  v6 = sub_1CF9E5CF8();
  *(v4 + 240) = v6;
  v7 = *(v6 - 8);
  *(v4 + 248) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v9 = sub_1CF9E6118();
  *(v4 + 264) = v9;
  v10 = *(v9 - 8);
  *(v4 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v12 = v5[15];
  *(v4 + 288) = v12;
  v13 = v5[12];
  *(v4 + 296) = v13;
  v14 = v5[10];
  *(v4 + 304) = v14;
  *(v4 + 312) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 320) = AssociatedTypeWitness;
  v16 = v5[11];
  *(v4 + 328) = v16;
  *(v4 + 336) = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  *(v4 + 344) = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 352) = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  *(v4 + 360) = v19;
  *(v4 + 80) = AssociatedTypeWitness;
  *(v4 + 88) = v17;
  *(v4 + 96) = AssociatedConformanceWitness;
  *(v4 + 104) = v19;
  v20 = type metadata accessor for CodepathTriggeringDiagnostics();
  *(v4 + 368) = v20;
  v21 = *(v20 - 8);
  *(v4 + 376) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  v23 = v5[13];
  *(v4 + 392) = v23;
  v24 = v5[14];
  *(v4 + 400) = v24;
  v25 = v5[16];
  *(v4 + 408) = v25;
  v26 = v5[17];
  *(v4 + 416) = v26;
  *&v27 = v14;
  *(&v27 + 1) = v16;
  *&v28 = v13;
  *(&v28 + 1) = v23;
  *(v4 + 16) = v27;
  *&v27 = v25;
  *(&v27 + 1) = v26;
  *(v4 + 64) = v27;
  *&v27 = v24;
  *(&v27 + 1) = v12;
  *(v4 + 32) = v28;
  *(v4 + 48) = v27;
  type metadata accessor for FPDiagnosticsManager();
  swift_getWitnessTable();
  v30 = sub_1CF9E6EC8();
  *(v4 + 424) = v30;
  *(v4 + 432) = v29;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C3CBC, v30, v29);
}

uint64_t sub_1CF2C3CBC()
{
  v56 = v0;
  *(v0 + 112) = *(v0 + 304);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  *(v0 + 176) = *(v0 + 208);
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = v1;
  type metadata accessor for FPDiagnosticsManagerStateKey();
  swift_getTupleTypeMetadata3();
  v4 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  if (sub_1CF9E7128())
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 184) = *(v0 + 208);
    v10 = *(v0 + 232);
    swift_getWitnessTable();
    v11 = sub_1CF9E6BE8();
    *(v0 + 440) = *(v10 + *(*v10 + 160));
    sub_1CF9CCD64(v11);
    v46 = *(v0 + 408);
    v47 = *(v0 + 416);
    v44 = *(v0 + 392);
    v45 = *(v0 + 400);
    v52 = *(v0 + 368);
    v53 = *(v0 + 384);
    v49 = *(v0 + 360);
    v13 = *(v0 + 328);
    v48 = *(v0 + 320);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v43 = *(v0 + 288);
    v50 = *(v0 + 224);
    v51 = *(v0 + 376);
    *(v0 + 192) = *(v0 + 208);
    v16 = swift_task_alloc();
    v17 = swift_task_alloc();
    v18 = *(v0 + 344);
    v16[2] = v15;
    v16[3] = v13;
    v16[4] = v14;
    v16[5] = v44;
    v16[6] = v45;
    v16[7] = v43;
    v16[8] = v46;
    v16[9] = v47;
    v17[2] = v15;
    v17[3] = v13;
    v17[4] = v14;
    v17[5] = v44;
    v17[6] = v45;
    v17[7] = v43;
    v17[8] = v46;
    v17[9] = v47;
    v17[10] = sub_1CF2C946C;
    v17[11] = v16;
    *(v0 + 144) = v48;
    *(v0 + 152) = v18;
    *(v0 + 168) = v49;
    *(v0 + 448) = type metadata accessor for ReconciliationID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v21 = sub_1CF054A5C(sub_1CF2C94AC, v17, v4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);
    *(v0 + 456) = v21;

    (*(v51 + 16))(v53, v50, v52);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    (*(v51 + 8))(v53, v52);
    if (EnumCaseMultiPayload == 4)
    {
      v23 = *(v0 + 280);
      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7288();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 272);
      v29 = *(v0 + 280);
      v30 = *(v0 + 264);
      if (v27)
      {
        v54 = *(v0 + 280);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v55 = v32;
        *v31 = 136315138;
        v33 = MEMORY[0x1D3868FE0](v21, TupleTypeMetadata2);
        v35 = v34;

        v36 = sub_1CEFD0DF0(v33, v35, &v55);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1CEFC7000, v25, v26, "A provider triggered diagnostics on %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1D386CDC0](v32, -1, -1);
        MEMORY[0x1D386CDC0](v31, -1, -1);

        (*(v28 + 8))(v54, v30);
      }

      else
      {

        (*(v28 + 8))(v29, v30);
      }
    }

    v37 = *(v0 + 256);
    sub_1CF9E5CE8();
    v38 = swift_task_alloc();
    *(v0 + 464) = v38;
    *v38 = v0;
    v38[1] = sub_1CF2C41F0;
    v39 = *(v0 + 256);
    v40 = *(v0 + 224);
    v41 = *(v0 + 232);
    v42 = *(v0 + 216);

    return sub_1CF2C5C08(v21, v42, v39, v40);
  }
}

uint64_t sub_1CF2C41F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *(*v2 + 248);
  v7 = *v2;
  v4[59] = v1;

  v8 = (v6 + 8);
  v9 = v4[57];
  v10 = v4[32];
  v11 = v4[30];
  if (v1)
  {
    (*v8)(v10, v11);

    v12 = v4[53];
    v13 = v4[54];
    v14 = sub_1CF2C44D4;
  }

  else
  {
    v4[60] = a1;
    (*v8)(v10, v11);

    v12 = v4[53];
    v13 = v4[54];
    v14 = sub_1CF2C43A0;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1CF2C43A0()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[29];
  v6 = v0[26];
  sub_1CF9CD178();
  v0[25] = v1;
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E6BE8();

  sub_1CF9CCF38();
  v8 = v0[48];
  v9 = v0[35];
  v10 = v0[32];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CF2C44D4()
{
  v1 = v0[59];
  v2 = v0[48];
  v3 = v0[35];
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CF2C4558(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 120);
  v7 = *(*a2 + 96);
  v57 = *(*a2 + 80);
  v58 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FPDiagnosticsManagerStateKey();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(TupleTypeMetadata3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v61 = MEMORY[0x1E69E7CC0];
  v22 = *(a2 + *(v4 + 160));
  v23 = *(v10 + 16);
  v23(&v48 - v20, a1, TupleTypeMetadata3, v19);
  v24 = *&v21[*(TupleTypeMetadata3 + 48) + 8];

  v25 = *&v21[*(TupleTypeMetadata3 + 64) + 8];

  v53 = v22;
  sub_1CF9CCC54(v56);
  WitnessTable = swift_getWitnessTable();
  sub_1CF9E6728();

  v26 = v57;
  v49 = *(v8 - 8);
  if (v57)
  {
    (*(v49 + 8))(v21, v8);

    sub_1CF1E8CF8(v26);
  }

  else
  {
    (*(v49 + 8))(v21, v8);
  }

  v52 = v23;
  (v23)(v17, a1, TupleTypeMetadata3);
  v27 = &v17[*(TupleTypeMetadata3 + 48)];
  v28 = *v27;
  v48 = *(v27 + 1);
  v29 = *&v17[*(TupleTypeMetadata3 + 64) + 8];

  v30 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_1CF0710C0(0, *(v30 + 2) + 1, 1, v30);
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_1CF0710C0((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[16 * v33];
  v35 = v48;
  v36 = v49;
  *(v34 + 4) = v28;
  *(v34 + 5) = v35;
  v49 = *(v36 + 8);
  (v49)(v17, v8);
  v37 = v54;
  v38 = v51;
  v39 = v52;
  v52(v54, v51, TupleTypeMetadata3);
  v40 = *&v37[*(TupleTypeMetadata3 + 48) + 8];

  v41 = *&v37[*(TupleTypeMetadata3 + 64) + 8];

  v42 = v55;
  v39(v55, v38, TupleTypeMetadata3);
  v43 = *&v42[*(TupleTypeMetadata3 + 48) + 8];

  v44 = &v42[*(TupleTypeMetadata3 + 64)];
  v46 = *v44;
  v45 = *(v44 + 1);
  v57 = v30;
  v58 = v46;
  AssociatedConformanceWitness = v45;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  sub_1CF9CD588();
  return (v49)(v42, v8);
}

uint64_t sub_1CF2C4A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ReconciliationID();
  (*(*(v9 - 8) + 16))(a1, a2, v9);
  v10 = (a2 + *(type metadata accessor for FPDiagnosticsManagerStateKey() + 52));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = *(v10 + 12);
  LOBYTE(v10) = *(v10 + 26);
  *a6 = v12;
  *(a6 + 8) = v11;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 26) = v10;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a7;
  *(a6 + 56) = a5;
}

double sub_1CF2C4C48@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = swift_getAssociatedConformanceWitness();
  *(&v21 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for FPDiagnosticsManagerStateKey();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = (a1 + *(TupleTypeMetadata3 + 48));
  v16 = *(v7 + 1);
  v17 = *v7;
  v8 = v7[2];
  v9 = (a1 + *(TupleTypeMetadata3 + 64));
  v14 = v9[1];
  v15 = *v9;
  v13 = *(v7 + 24);
  *&v20 = swift_getAssociatedTypeWitness();
  *(&v20 + 1) = swift_getAssociatedTypeWitness();
  *&v21 = swift_getAssociatedConformanceWitness();
  *(&v21 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  v10 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
  a2(&v20, v8);
  v11 = v21;
  *v10 = v20;
  v10[1] = v11;
  v10[2] = v22[0];
  result = *(v22 + 9);
  *(v10 + 41) = *(v22 + 9);
  return result;
}

uint64_t sub_1CF2C4E60(void (*a1)(void, void, void), uint64_t a2, uint64_t *a3)
{
  v68 = a1;
  v5 = *a3;
  v6 = *a3;
  WitnessTable = sub_1CF9E6118();
  v65 = *(WitnessTable - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](WitnessTable);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v6 + 80);
  v9 = *(v5 + 96);
  v79 = v71;
  v10 = *(v5 + 120);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v80 = AssociatedConformanceWitness;
  v81 = v12;
  v67 = type metadata accessor for FPDiagnosticsManagerStateKey();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v63 = sub_1CF9E75D8();
  v62 = *(v63 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v16 = &v56 - v15;
  v69 = *(TupleTypeMetadata3 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  *&v79 = a2;
  v72 = v71;
  v60 = v9;
  v73 = v9;
  v58 = *(v6 + 104);
  v74 = v58;
  v61 = v10;
  v75 = v10;
  v59 = *(v6 + 128);
  v76 = v59;
  v77 = v68;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  v26 = v70;
  v27 = sub_1CF9E7A08();
  v70 = v26;
  *&v79 = v27;
  swift_getWitnessTable();
  v28 = v69;
  sub_1CF9E7118();
  if ((*(v28 + 48))(v16, 1, TupleTypeMetadata3) == 1)
  {
    (*(v62 + 8))(v16, v63);

    v29 = fpfs_current_or_default_log();
    v30 = v64;
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Cannot add back unsentItem, couldn't find matching item", v33, 2u);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    return (*(v65 + 8))(v30, WitnessTable);
  }

  (*(v28 + 32))(v25, v16, TupleTypeMetadata3);

  v35 = *(a3 + *(*a3 + 160));
  v68 = *(v28 + 16);
  v68(v22, v25, TupleTypeMetadata3);
  v36 = *&v22[*(TupleTypeMetadata3 + 48) + 8];

  v37 = *&v22[*(TupleTypeMetadata3 + 64) + 8];

  sub_1CF9CCC54(&v78);
  v38 = v67;
  WitnessTable = swift_getWitnessTable();
  sub_1CF9E6728();

  v39 = v79;
  if (!v79)
  {
    (*(*(v38 - 8) + 8))(v22, v38);
    return (*(v28 + 8))(v25, TupleTypeMetadata3);
  }

  v40 = v80;
  v65 = *(&v79 + 1);
  v41 = (*(*(v38 - 8) + 8))(v22, v38);
  v64 = &v56;
  v82 = v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v42.i64[0] = v60;
  v43 = vzip1q_s64(v42, v58);
  *&v44 = vdupq_laneq_s64(v58, 1).u64[0];
  *(&v56 - 5) = v71;
  *(&v56 - 4) = v43;
  *(&v44 + 1) = v61;
  v45 = v59;
  *(&v56 - 3) = v44;
  *(&v56 - 2) = v45;
  *(&v56 - 2) = v25;
  *&v71 = v40;

  v46 = v70;
  result = sub_1CF8DF4CC(sub_1CF2C957C, (&v56 - 12));
  v47 = v82;
  v48 = *(v82 + 16);
  if (result > v48)
  {
    __break(1u);
    goto LABEL_19;
  }

  v49 = result;
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = result;
  if (__OFADD__(v48, result - v48))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v70 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v50 > *(v47 + 3) >> 1)
  {
    if (v48 <= v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = v48;
    }

    v47 = sub_1CF0710C0(isUniquelyReferenced_nonNull_native, v52, 1, v47);
    v82 = v47;
  }

  sub_1CF8E6498(v49, v48, 0);
  v53 = v57;
  v68(v57, v25, TupleTypeMetadata3);
  v54 = *&v53[*(TupleTypeMetadata3 + 48) + 8];

  v55 = *&v53[*(TupleTypeMetadata3 + 64) + 8];

  *&v79 = v47;
  *(&v79 + 1) = v65;
  v80 = v71;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  sub_1CF2CA088(v39);
  sub_1CF9CD588();
  return (*(v69 + 8))(v25, TupleTypeMetadata3);
}

uint64_t sub_1CF2C56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = v9;
  v31 = v26;
  v32 = v25;
  v10 = type metadata accessor for ReconciliationID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v29 = a3;
  v30 = a4;
  v31 = AssociatedConformanceWitness;
  v32 = v8;
  v15 = type metadata accessor for FPDiagnosticsManagerStateKey();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(*(TupleTypeMetadata3 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v20 = &v25 - v19;
  (*(v21 + 16))(&v25 - v19, v27, TupleTypeMetadata3, v18);
  v22 = *&v20[*(TupleTypeMetadata3 + 48) + 8];

  v23 = *&v20[*(TupleTypeMetadata3 + 64) + 8];

  (*(v11 + 16))(v14, v20, v10);
  (*(*(v15 - 8) + 8))(v20, v15);
  LOBYTE(v15) = sub_1CF024490(v14, v28, AssociatedTypeWitness, v9);
  (*(v11 + 8))(v14, v10);
  return v15 & 1;
}

uint64_t sub_1CF2C5A14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = swift_getAssociatedConformanceWitness();
  v22[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FPDiagnosticsManagerStateKey();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(*(TupleTypeMetadata3 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = v22 - v10;
  v13 = *a1;
  v12 = a1[1];
  (*(v14 + 16))(v22 - v10, a2, TupleTypeMetadata3, v9);
  v15 = &v11[*(TupleTypeMetadata3 + 48)];
  v17 = *v15;
  v16 = *(v15 + 1);
  v18 = *&v11[*(TupleTypeMetadata3 + 64) + 8];

  if (v13 == v17 && v12 == v16)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1CF9E8048();
  }

  (*(*(v6 - 8) + 8))(v11, v6);
  return v20 & 1;
}

uint64_t sub_1CF2C5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = v4;
  *(v5 + 240) = a2;
  *(v5 + 248) = a3;
  *(v5 + 232) = a1;
  v6 = *v4;
  v7 = sub_1CF9E6118();
  *(v5 + 272) = v7;
  v8 = *(v7 - 8);
  *(v5 + 280) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  v10 = v6[15];
  *(v5 + 296) = v10;
  v11 = v6[12];
  *(v5 + 304) = v11;
  v12 = v6[10];
  *(v5 + 312) = v12;
  swift_getAssociatedConformanceWitness();
  v34 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v6[11];
  *(v5 + 320) = v14;
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v16 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  *(v5 + 120) = v16;
  *(v5 + 128) = v15;
  *(v5 + 136) = AssociatedConformanceWitness;
  *(v5 + 144) = v18;
  *(v5 + 328) = type metadata accessor for ReconciliationID();
  *(v5 + 336) = swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E75D8();
  *(v5 + 344) = v19;
  v20 = *(v19 - 8);
  *(v5 + 352) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 152) = v16;
  *(v5 + 160) = v15;
  *(v5 + 168) = AssociatedConformanceWitness;
  *(v5 + 176) = v18;
  v22 = type metadata accessor for CodepathTriggeringDiagnostics();
  *(v5 + 368) = v22;
  v23 = *(v22 - 8);
  *(v5 + 376) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  v25 = v6[13];
  *(v5 + 392) = v25;
  v26 = v6[14];
  *(v5 + 400) = v26;
  v27 = v6[16];
  *(v5 + 408) = v27;
  v28 = v6[17];
  *(v5 + 416) = v28;
  *&v29 = v34;
  *&v30 = v11;
  *(&v29 + 1) = v14;
  *(&v30 + 1) = v25;
  *(v5 + 16) = v29;
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *(v5 + 64) = v29;
  *&v29 = v26;
  *(&v29 + 1) = v10;
  *(v5 + 32) = v30;
  *(v5 + 48) = v29;
  type metadata accessor for FPDiagnosticsManager();
  swift_getWitnessTable();
  v32 = sub_1CF9E6EC8();
  *(v5 + 424) = v32;
  *(v5 + 432) = v31;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C6008, v32, v31);
}

uint64_t sub_1CF2C6008()
{
  v1 = *(v0 + 264);
  v2 = v1 + *(*v1 + 208);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);
    v5 = *(v0 + 232);

    v3(v5);
    v14 = *(v0 + 328);
    v15 = sub_1CF9E6DA8();
    sub_1CEFF7124(v3);
LABEL_14:
    v64 = *(v0 + 384);
    v65 = *(v0 + 360);
    v66 = *(v0 + 288);

    v67 = *(v0 + 8);

    return v67(v15);
  }

  v6 = *(v0 + 328);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 232);
  v10 = *(*v1 + 144);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v1;
  v12 = *(v8 + 72);
  swift_getTupleTypeMetadata3();
  v13 = sub_1CF9E6E58();
  v12(sub_1CF2C933C, v11, v13, v7, v8);

  v16 = *(v0 + 184);
  v17 = *(v0 + 376);
  v18 = *(v0 + 384);
  v19 = *(v0 + 368);
  (*(v17 + 16))(v18, *(v0 + 256), v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v17 + 8))(v18, v19);
  if (sub_1CF2BA6AC(v19))
  {
    v21 = *(v0 + 328);
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    *(v0 + 224) = v16;
    v24 = swift_task_alloc();
    v25 = *(v0 + 392);
    v26 = *(v0 + 408);
    *(v24 + 16) = *(v0 + 312);
    *(v24 + 32) = v22;
    *(v24 + 40) = v25;
    *(v24 + 56) = v23;
    *(v24 + 64) = v26;
    swift_getWitnessTable();
    v15 = sub_1CF9E6B88();

    v27 = *(v0 + 328);

    *(v0 + 192) = v15;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    LOBYTE(v27) = sub_1CF9E7128();

    if (v27)
    {
      v28 = *(v0 + 328);

      v15 = sub_1CF9E6DA8();
    }

    else if (fpfs_is_internal_build())
    {
      v43 = *(v0 + 408);
      v45 = *(v0 + 392);
      v44 = *(v0 + 400);
      v71 = *(v0 + 360);
      v73 = *(v0 + 416);
      v46 = *(v0 + 312);
      v47 = *(v0 + 320);
      v48 = *(v0 + 296);
      v49 = *(v0 + 304);
      v68 = *(v0 + 240);
      v69 = *(v0 + 232);
      v70 = *(v0 + 336);
      v50 = swift_task_alloc();
      v50[2] = v46;
      v50[3] = v47;
      v50[4] = v49;
      v50[5] = v45;
      v50[6] = v44;
      v50[7] = v48;
      v50[8] = v43;
      v50[9] = v73;
      v50[10] = v15;

      swift_getWitnessTable();
      v75 = sub_1CF9E66C8();

      *(v0 + 200) = v69;
      v51 = swift_task_alloc();
      v51[2] = v46;
      v51[3] = v47;
      v51[4] = v49;
      v51[5] = v45;
      v51[6] = v44;
      v51[7] = v48;
      v51[8] = v43;
      v51[9] = v73;
      v51[10] = v15;
      sub_1CF9E6E58();

      swift_getWitnessTable();
      v52 = sub_1CF9E7A08();

      *(v0 + 208) = v52;
      swift_getWitnessTable();
      sub_1CF9E7118();

      v53 = (*(*(v70 - 8) + 48))(v71, 1, v70);
      v54 = *(v0 + 360);
      if (v53 == 1)
      {
        (*(*(v0 + 352) + 8))(v54, *(v0 + 344));
        v55 = 0;
        v56 = 0;
      }

      else
      {
        v57 = (v54 + *(*(v0 + 336) + 48));
        v59 = *v57;
        v58 = v57[1];
        v60 = v57[2];
        v61 = v57[5];
        (*(*(*(v0 + 328) - 8) + 8))();

        MEMORY[0x1D3868CC0](v59, v58);

        MEMORY[0x1D3868CC0](58, 0xE100000000000000);
        *(v0 + 216) = v60;
        v62 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v62);

        v55 = 8250;
        v56 = 0xE200000000000000;
      }

      v63 = *(v0 + 264) + *(**(v0 + 264) + 184);
      v15 = (*(*(v0 + 416) + 40))(v75, *(v0 + 256), v55, v56, *(v0 + 400));
    }

    goto LABEL_14;
  }

  v74 = *(v0 + 408);
  v29 = *(v0 + 328);
  v30 = *(v0 + 264);
  v31 = EnumCaseMultiPayload == 4;
  v32 = *(*v30 + 168);
  swift_getTupleTypeMetadata3();
  v33 = sub_1CF9E7B48();
  *(v0 + 440) = v33;

  v34 = *(*v30 + 200);
  v35 = *(v30 + *(*v30 + 176));
  *(v0 + 104) = type metadata accessor for FPFeedbackUIManager();
  *(v0 + 112) = &off_1F4BFD800;
  *(v0 + 80) = v35;
  v36 = *(v74 + 40);

  v72 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 448) = v38;
  *v38 = v0;
  v38[1] = sub_1CF2C699C;
  v39 = *(v0 + 408);
  v40 = *(v0 + 392);
  v41 = *(v0 + 248);

  return v72(v33, v41, v30 + v34, v31, v0 + 80, v40, v39);
}

uint64_t sub_1CF2C699C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = (*v3)[56];
  v12 = *v3;
  (*v3)[57] = v2;

  v7 = v5[55];

  if (v2)
  {
    v8 = v5[53];
    v9 = v5[54];
    v10 = sub_1CF2C6F30;
  }

  else
  {
    v5[58] = a2;
    __swift_destroy_boxed_opaque_existential_1(v5 + 10);
    v8 = v5[53];
    v9 = v5[54];
    v10 = sub_1CF2C6AD8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CF2C6AD8()
{
  v1 = v0[58];
  v35 = v0[57];
  v2 = v0[41];

  v0[24] = v1;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_1CF9E7128();

  if (v2)
  {
    v3 = v0[41];

    v1 = sub_1CF9E6DA8();
  }

  else if (fpfs_is_internal_build())
  {
    v33 = v0[51];
    v34 = v0[52];
    v5 = v0[49];
    v4 = v0[50];
    v31 = v0[42];
    v32 = v0[45];
    v6 = v0[39];
    v7 = v0[40];
    v9 = v0[37];
    v8 = v0[38];
    v29 = v0[30];
    v30 = v0[29];
    v10 = swift_task_alloc();
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    v10[5] = v5;
    v10[6] = v4;
    v10[7] = v9;
    v10[8] = v33;
    v10[9] = v34;
    v10[10] = v1;

    swift_getWitnessTable();
    v36 = sub_1CF9E66C8();

    v0[25] = v30;
    v11 = swift_task_alloc();
    v11[2] = v6;
    v11[3] = v7;
    v11[4] = v8;
    v11[5] = v5;
    v11[6] = v4;
    v11[7] = v9;
    v11[8] = v33;
    v11[9] = v34;
    v11[10] = v1;
    sub_1CF9E6E58();

    swift_getWitnessTable();
    v12 = sub_1CF9E7A08();

    v0[26] = v12;
    swift_getWitnessTable();
    sub_1CF9E7118();

    v13 = (*(*(v31 - 8) + 48))(v32, 1, v31);
    v14 = v0[45];
    if (v13 == 1)
    {
      (*(v0[44] + 8))(v14, v0[43]);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v17 = (v14 + *(v0[42] + 48));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[5];
      (*(*(v0[41] - 8) + 8))();

      MEMORY[0x1D3868CC0](v18, v19);

      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v0[27] = v20;
      v22 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v22);

      v15 = 8250;
      v16 = 0xE200000000000000;
    }

    v23 = v0[33] + *(*v0[33] + 184);
    v1 = (*(v0[52] + 40))(v36, v0[32], v15, v16, v0[50]);
  }

  v24 = v0[48];
  v25 = v0[45];
  v26 = v0[36];

  v27 = v0[1];

  return v27(v1);
}

uint64_t sub_1CF2C6F30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[36];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CF2C6FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a3;
  v5 = *a3;
  v33[3] = a2;
  v27 = a1;
  v28 = a3;
  v18 = v4[10];
  v19 = v4[11];
  v20 = *(v5 + 6);
  v21 = v4[14];
  v22 = *(v5 + 15);
  v23 = v4[17];
  v24 = sub_1CF2C9408;
  v25 = &v26;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = v7;
  v31 = AssociatedConformanceWitness;
  v32 = v9;
  type metadata accessor for ReconciliationID();
  swift_getTupleTypeMetadata2();
  v10 = sub_1CF9E6E58();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF054A5C(sub_1CF2C9424, v17, v10, TupleTypeMetadata3, v12, WitnessTable, MEMORY[0x1E69E7288], v33);
  if (!v16)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF2C7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v35 = *(a3 + 8);
  v36 = *a3;
  v34 = *(a3 + 16);
  v32 = *(a3 + 25);
  v33 = *(a3 + 24);
  v31 = *(a3 + 26);
  v29 = *(a3 + 40);
  v30 = *(a3 + 32);
  v12 = *(a3 + 48);
  v28 = *(a3 + 56);
  v14 = a4[3];
  v13 = a4[4];
  v25 = *a5;
  v15 = __swift_project_boxed_opaque_existential_1(a4, v14);
  v16 = *(*a5 + 144);
  v27 = a2;
  result = (*(*(v11 + 120) + 48))(a2, v15, v14, v13, *(v11 + 96), *(v11 + 120));
  if (!v6)
  {
    v19 = *(v25 + 80);
    v23 = v18;
    v24 = result;
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = *(v25 + 88);
    swift_getAssociatedConformanceWitness();
    v37[0] = AssociatedTypeWitness;
    v37[1] = swift_getAssociatedTypeWitness();
    v37[2] = swift_getAssociatedConformanceWitness();
    v37[3] = swift_getAssociatedConformanceWitness();
    v22 = type metadata accessor for ReconciliationID();
    (*(*(v22 - 8) + 16))(a1, v27, v22);
    result = sub_1CF1A8918(a3, v37);
    *a6 = v36;
    *(a6 + 8) = v35;
    *(a6 + 16) = v34;
    *(a6 + 24) = v33;
    *(a6 + 25) = v32;
    *(a6 + 26) = v31;
    *(a6 + 32) = v30;
    *(a6 + 40) = v29;
    *(a6 + 48) = v12;
    *(a6 + 56) = v28;
    *(a6 + 64) = v24;
    *(a6 + 72) = v23;
  }

  return result;
}

void *sub_1CF2C7550@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  v8 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  *&v41[9] = *(v8 + 41);
  v9 = v8[1];
  v39 = *v8;
  v40 = v9;
  *v41 = v8[2];
  result = a2(&v29);
  if (v27)
  {
    *a7 = v27;
  }

  else
  {
    v11 = v29;
    v12 = AssociatedConformanceWitness;
    v13 = v32;
    v14 = BYTE1(v32);
    v15 = BYTE2(v32);
    v16 = v33;
    v26 = v34;
    v28 = v30;
    v17 = v35;
    v24 = v36;
    v20 = v38;
    v22 = v37;
    result = swift_getTupleTypeMetadata3();
    v18 = a3 + *(result + 12);
    v19 = (a3 + *(result + 16));
    *v18 = v11;
    *(v18 + 8) = v28;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 25) = v14;
    *(v18 + 26) = v15;
    *(v18 + 32) = v16;
    *(v18 + 40) = v26;
    *(v18 + 48) = v17;
    *(v18 + 56) = v24;
    *v19 = v22;
    v19[1] = v20;
  }

  return result;
}

uint64_t sub_1CF2C77A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = AssociatedTypeWitness;
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(*(TupleTypeMetadata3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v8 = &v17 - v7;
  (*(v9 + 16))(&v17 - v7, v17, TupleTypeMetadata3, v6);
  v10 = &v8[*(TupleTypeMetadata3 + 48)];
  v11 = *(v10 + 1);
  v12 = *(v10 + 5);

  v13 = *&v8[*(TupleTypeMetadata3 + 64) + 8];

  v14 = *(v3 - 8);
  v15 = v18;
  (*(v14 + 32))(v18, v8, v3);
  return (*(v14 + 56))(v15, 0, 1, v3);
}

uint64_t sub_1CF2C7A30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a1;
  v18 = a3;
  v16 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = AssociatedTypeWitness;
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  v12 = *v16;
  v11 = v16[1];
  (*(*(v4 - 8) + 16))(&v15 - v9, v17, v4, v8);
  v13 = &v10[*(TupleTypeMetadata2 + 48)];
  *v13 = v12;
  *(v13 + 1) = v11;
  v19 = v18;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  swift_getWitnessTable();
  LOBYTE(v11) = sub_1CF9E6C08();
  (*(v6 + 8))(v10, TupleTypeMetadata2);
  return v11 & 1;
}

uint64_t sub_1CF2C7CDC()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1CF9E6C08() & 1;
}

uint64_t sub_1CF2C7E80(uint64_t a1)
{
  v2 = *v1;
  v9 = a1;
  v3 = v2[6];
  v10 = v2[5];
  v11 = v3;
  v4 = v2[8];
  v12 = v2[7];
  v13 = v4;
  v5 = type metadata accessor for FPDiagnosticsManager();
  WitnessTable = swift_getWitnessTable();
  return sub_1CF559504(sub_1CF2C928C, v8, "FileProviderDaemon/FPDiagnosticsManager.swift", 45, 2, 823, v5, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
}

uint64_t sub_1CF2C7F58(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + *(*a1 + 160));
  sub_1CF9CCC54(&v18);
  v6 = v18;
  v7 = v4[10];
  v8 = v4[11];
  v9 = v4[15];
  v10 = v4[12];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  sub_1CF2BC14C(a2, v6, v7, v8, AssociatedConformanceWitness, v12);

  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA3DC00, v13, v14);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF2C92A8, a1, v15, MEMORY[0x1E69E7CA8] + 8, v16);
}

uint64_t *sub_1CF2C8114()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 144));
  v2 = *(v0 + *(*v0 + 152));
  swift_unknownObjectRelease();
  v3 = *(v0 + *(*v0 + 160));

  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 168));
  v4 = *(v0 + *(*v0 + 176));

  (*(*(*(v1 + 112) - 8) + 8))(v0 + *(*v0 + 184));
  sub_1CEFCCC44(v0 + *(*v0 + 200), &unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = (v0 + *(*v0 + 208));
  v6 = v5[1];
  sub_1CEFF7124(*v5);
  return v0;
}

uint64_t sub_1CF2C82D4()
{
  sub_1CF2C8114();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF2C8330()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6938();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6918();
  v10 = sub_1CF9E68C8();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  if (v12 >> 60 == 15)
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "Error decoding targetedSPSErrorsPayload as UTF8", v16, 2u);
      MEMORY[0x1D386CDC0](v16, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return sub_1CF4E26CC(MEMORY[0x1E69E7CC0]);
  }

  v18 = sub_1CF9E5408();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1CF9E53F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE90, &qword_1CFA00D98);
  sub_1CF2C91B4();
  sub_1CF9E53E8();
  v59 = v21;
  v60 = v10;
  v61 = v12;
  v22 = v72;
  v64 = v72[2];
  if (!v64)
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_20:

    sub_1CEFE48D8(v60, v61);

    return v17;
  }

  v23 = 0;
  v24 = v72 + 6;
  v17 = MEMORY[0x1E69E7CC8];
  v63 = v72;
  while (v23 < v22[2])
  {
    v65 = v23;
    v28 = *(v24 - 2);
    v29 = *(v24 - 1);
    v30 = *v24;
    v31 = *(v24 + 8);
    v32 = *(v24 + 9);
    v33 = *(v24 + 10);
    v34 = v24[3];
    v71 = v24[2];
    v35 = v24[4];
    v67 = *(v24 + 40);
    swift_bridgeObjectRetain_n();
    v66 = v34;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v17;
    v68 = v32;
    v69 = v31;
    v37 = v9 & 0xFF000000 | v31 & 0xFFFF00FF | (v32 << 8);
    v38 = v33;
    LODWORD(v9) = v37 & 0xFF00FFFF | (v33 << 16);
    v70 = v28;
    v39 = v30;
    v41 = sub_1CF7BF840(v28, v29, v30, v9);
    v42 = v17[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_23;
    }

    v45 = v40;
    if (v17[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D0140();
      }
    }

    else
    {
      v46 = v68 << 8;
      sub_1CF7C5610(v44, isUniquelyReferenced_nonNull_native);
      v62 = v62 & 0xFF000000 | v69 | v46 | (v33 << 16);
      v47 = sub_1CF7BF840(v70, v29, v39, v62);
      if ((v45 & 1) != (v48 & 1))
      {
        goto LABEL_25;
      }

      v41 = v47;
    }

    v49 = v67;
    v50 = v71;
    if (v45)
    {

      v17 = v72;
      v25 = v72[7] + 32 * v41;
      v26 = *(v25 + 8);
      v27 = v66;
      *v25 = v50;
      *(v25 + 8) = v27;
      *(v25 + 16) = v35;
      *(v25 + 24) = v49;
    }

    else
    {
      v17 = v72;
      v72[(v41 >> 6) + 8] |= 1 << v41;
      v51 = v17[6] + 32 * v41;
      *v51 = v70;
      *(v51 + 8) = v29;
      *(v51 + 16) = v39;
      v52 = v68;
      *(v51 + 24) = v69;
      *(v51 + 25) = v52;
      *(v51 + 26) = v38;
      v53 = v17[7] + 32 * v41;
      v54 = v66;
      *v53 = v50;
      *(v53 + 8) = v54;
      *(v53 + 16) = v35;
      *(v53 + 24) = v49;

      v55 = v17[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_24;
      }

      v17[2] = v57;
    }

    v23 = v65 + 1;
    v24 += 8;
    v22 = v63;
    if (v64 == v65 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t _s18FileProviderDaemon22FPDiagnosticSignaturesC22validateJSONSignatures10jsonStringSaySSGSS_tFZ_0()
{
  result = sub_1CF2C8330();
  if (*(result + 16))
  {
    v1 = 0;
    v2 = result + 64;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(result + 64);
    v6 = (v3 + 63) >> 6;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 0x205D5254545BLL;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (v1 << 11) | (32 * v9);
        v11 = *(result + 56) + v10;
        if (*(v11 + 16) > 0.0)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v30 = result;
      v13 = *(result + 48) + v10;
      v14 = *(v13 + 8);
      v27 = *(v13 + 16);
      v28 = *v13;
      v15 = *(v13 + 24);
      v25 = *(v13 + 26);
      v26 = *(v13 + 25);
      v16 = *(v11 + 8);
      v17 = *(v11 + 24);

      if (v17 == 2 || (v17 & 1) == 0)
      {
        v8 = 0;
        v18 = 0xE000000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      v31 = v8;
      v32 = v18;
      v19 = sub_1CF19F0C0(v28, v14, v27, v29 & 0xFF000000 | v15 | (v26 << 8) | (v25 << 16));
      v21 = v20;

      MEMORY[0x1D3868CC0](v19, v21);

      v29 = v29 & 0xFF000000 | v15 | (v26 << 8) | (v25 << 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1CF0710C0(0, *(v7 + 2) + 1, 1, v7);
      }

      result = v30;
      v23 = *(v7 + 2);
      v22 = *(v7 + 3);
      if (v23 >= v22 >> 1)
      {
        v7 = sub_1CF0710C0((v22 > 1), v23 + 1, 1, v7);
        result = v30;
      }

      *(v7 + 2) = v23 + 1;
      v24 = &v7[16 * v23];
      *(v24 + 4) = v31;
      *(v24 + 5) = v32;
      v8 = 0x205D5254545BLL;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v12 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v12 >= v6)
      {

        return v7;
      }

      v5 = *(v2 + 8 * v12);
      ++v1;
      if (v5)
      {
        v1 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t _s18FileProviderDaemon22FPDiagnosticSignaturesC015isErrorMatchingE010jsonString5error9direction7jobCode10underlyingSbSS_So7NSErrorCSo8NSNumberCSgA2NtFZ_0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = sub_1CF2C8330();
  if (!*(v10 + 16))
  {
    goto LABEL_40;
  }

  if (a4)
  {
    v35 = [a4 integerValue];
    if (v35 >= 7)
    {
LABEL_40:

      return 0;
    }
  }

  else
  {
    v35 = 6;
  }

  if (a5)
  {
    v11 = sub_1CF043D7C([a5 integerValue]);
    if (a6)
    {
LABEL_8:
      v34 = [a6 BOOLValue];
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 89;
    if (a6)
    {
      goto LABEL_8;
    }
  }

  v34 = 2;
LABEL_11:
  v12 = [a3 domain];
  v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  v36 = [a3 code];
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v32 = v11;
  v33 = v11;
  while (v17)
  {
LABEL_19:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = (v20 << 11) | (32 * v22);
    v24 = *(v10 + 48) + v23;
    result = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    v27 = *(v24 + 25);
    v28 = *(v24 + 26);
    v29 = *(*(v10 + 56) + v23 + 16);
    if (*v24 != v37 || *(v24 + 8) != v14)
    {
      result = sub_1CF9E8048();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v25 == v36)
    {
      v31 = v26 == 6 || v35 == v26;
      if (v31 && (v27 == 89 || v33 != 89 && qword_1CFA01448[v27] == qword_1CFA01448[v32]) && (v28 == 2 || v34 != 2 && ((v28 ^ v34) & 1) == 0) && v29 > 0.0)
      {

        return 1;
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      goto LABEL_40;
    }

    v17 = *(v10 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF2C8EFC(void *a1)
{
  v2 = a1[12];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v13 = *(v3 - 8) + 64;
    v5 = a1[13];
    v6 = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      v14 = *(v6 - 8) + 64;
      v8 = a1[14];
      v9 = swift_checkMetadataState();
      if (v10 <= 0x3F)
      {
        v15 = *(v9 - 8) + 64;
        sub_1CF1DEC4C();
        if (v12 <= 0x3F)
        {
          v16 = *(v11 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1CF2C9088()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF2C910C()
{
  result = qword_1EC4BEE80;
  if (!qword_1EC4BEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE80);
  }

  return result;
}

unint64_t sub_1CF2C9160()
{
  result = qword_1EC4BEE88;
  if (!qword_1EC4BEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE88);
  }

  return result;
}

unint64_t sub_1CF2C91B4()
{
  result = qword_1EDEAB678;
  if (!qword_1EDEAB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE90, &qword_1CFA00D98);
    sub_1CF2C9238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB678);
  }

  return result;
}

unint64_t sub_1CF2C9238()
{
  result = qword_1EDEAC5B0;
  if (!qword_1EDEAC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5B0);
  }

  return result;
}

uint64_t sub_1CF2C92A8(uint64_t a1)
{
  v2 = *(*(*v1 + 128) + 48);
  v3 = *(*v1 + 104);
  v4 = v1 + *(*v1 + 168);
  return v2(a1, v3);
}

uint64_t sub_1CF2C9358(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v10 = *(v2 + 72);
  v9 = *(v2 + 56);
  return sub_1CF2C7A30(a1, a2, *(v2 + 80)) & 1;
}

uint64_t sub_1CF2C9398()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[9];
  return sub_1CF2C7CDC() & 1;
}

uint64_t sub_1CF2C93D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  return sub_1CF2C77A8(a1, a2);
}

uint64_t sub_1CF2C946C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(v7 + 16);
  v13 = *(v7 + 72);
  v11 = *(v7 + 40);
  v12 = *(v7 + 56);
  v10 = *(v7 + 24);
  return sub_1CF2C4A6C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1CF2C9540(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  return sub_1CF2C56F8(a1, v1[10], v1[2], v1[3]) & 1;
}

uint64_t sub_1CF2C957C(uint64_t *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  return sub_1CF2C5A14(a1, v1[10], v1[2], v1[3]) & 1;
}

uint64_t sub_1CF2C95B8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF28, &qword_1CFA010E0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF30, &qword_1CFA010E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CF2CAAA8();
  sub_1CF9E8298();
  if (v1)
  {
    goto LABEL_6;
  }

  v20 = v8;
  v14 = sub_1CF9E7DF8();
  v15 = (2 * *(v14 + 16)) | 1;
  v24 = v14;
  v25 = v14 + 32;
  v26 = 0;
  v27 = v15;
  if (sub_1CF18BDE0() || v26 != v27 >> 1)
  {
    v16 = sub_1CF9E79E8();
    swift_allocError();
    v18 = v17;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0) + 48);
    *v18 = &type metadata for FPDiagnosticsManagerStateValue;
    sub_1CF9E7C98();
    sub_1CF9E79D8();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v20 + 8))(v11, v7);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

  sub_1CF2CAAFC();
  sub_1CF9E7C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v23 = 0;
  sub_1CEFE7C14(&qword_1EDEAB660);
  sub_1CF9E7D88();
  v13 = v28;
  v23 = 1;
  sub_1CF9E7CB8();
  (*(v21 + 8))(v6, v3);
  (*(v20 + 8))(v11, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v13;
}

uint64_t sub_1CF2C9A24(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *&v21 = AssociatedTypeWitness;
  *(&v21 + 1) = swift_getAssociatedTypeWitness();
  *&v22 = swift_getAssociatedConformanceWitness();
  *(&v22 + 1) = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for CodepathTriggeringDiagnostics();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  if (fpfs_is_internal_build() && (v8 = objc_allocWithZone(MEMORY[0x1E695E000]), v9 = sub_1CF9E6888(), v10 = [v8 initWithSuiteName_], v9, v10))
  {
    v11 = sub_1CF9E6888();
    v12 = [v10 objectForKey_];

    if (v12)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      sub_1CEFCCC44(&v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v13 = sub_1CF9E6888();
      v14 = [v10 stringForKey_];

      if (v14)
      {
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      (*(v4 + 16))(v7, a1, v3);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          if (!v17)
          {
            goto LABEL_34;
          }

          if (v15 != 1801678950 || v17 != 0xE400000000000000)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 3)
          {
            if (v17)
            {
              if (v15 != 0xD000000000000014 || v17 != 0x80000001CFA3DCA0)
              {
LABEL_39:
                v18 = sub_1CF9E8048();

                return v18 & 1;
              }

              goto LABEL_33;
            }

LABEL_34:

            v18 = 0;
            return v18 & 1;
          }

          if (!v17)
          {
            goto LABEL_34;
          }

          if (v15 != 0x72656469766F7270 || v17 != 0xE800000000000000)
          {
            goto LABEL_39;
          }
        }

LABEL_33:

        v18 = 1;
        return v18 & 1;
      }

      if (EnumCaseMultiPayload)
      {
        (*(v4 + 8))(v7, v3);
        if (!v17)
        {
          goto LABEL_34;
        }

        if (v15 != 0x687370616E737066 || v17 != 0xEA0000000000746FLL)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      if (v17)
      {
        if (v15 == 0x4563696D616E7964 && v17 == 0xED000073726F7272)
        {
          v18 = 1;
        }

        else
        {
          v18 = sub_1CF9E8048();
        }
      }

      else
      {
        v18 = 0;
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {

      v21 = 0u;
      v22 = 0u;
      sub_1CEFCCC44(&v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_1CF2C9F28()
{
  if (fpfs_is_internal_build())
  {
    v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v1 = sub_1CF9E6888();
    v2 = [v0 initWithSuiteName_];

    if (v2)
    {
      v3 = sub_1CF9E6888();
      v4 = [v2 objectForKey_];

      if (v4)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v5 = sub_1CF9E6888();
        v6 = [v2 integerForKey_];

        return v6;
      }

      memset(v8, 0, sizeof(v8));
      sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }
  }

  return 7;
}

uint64_t sub_1CF2CA088(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CF2CA124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1CF2C1B04(a1, a2);
}

unint64_t sub_1CF2CA148()
{
  result = qword_1EDEAED20;
  if (!qword_1EDEAED20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED20);
  }

  return result;
}

unint64_t sub_1CF2CA194()
{
  result = qword_1EC4BFBA0;
  if (!qword_1EC4BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFBA0);
  }

  return result;
}

uint64_t sub_1CF2CA23C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = type metadata accessor for ThrottlingKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF2CA2B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = v3 + 2;
  v6 = 27;
  if (v5 > 0x1B)
  {
    v6 = v5;
  }

  v7 = 253 - (2u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_29;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 < 2)
    {
LABEL_29:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_29;
  }

LABEL_18:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v13) + 1;
}

void sub_1CF2CA410(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 2;
  if (v6 <= 0x1B)
  {
    v6 = 27;
  }

  v7 = 253 - (2u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v8] = v15;
  }
}

uint64_t sub_1CF2CA604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF2CA64C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CF2CA69C(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[5];
  v5 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ReconciliationID();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF2CA7D0(unsigned __int16 *a1, int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = a3[5];
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v8)
  {
    v11 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && (v14 = (v11 & 0xFFFFFFFFFFFFFFF8) + 35, *(a1 + v14)))
  {
    if ((v14 & 0xFFFFFFFB) == 3)
    {
      v15 = (*(a1 + v14) << 24) - 0x1000000;
    }

    else
    {
      v15 = 0;
    }

    if ((v14 & 0xFFFFFFFB) == 3)
    {
      v16 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v16 = *a1;
    }

    return (v16 | v15) ^ 0x80000000;
  }

  else
  {
    v12 = *(((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1CF2CA8F4(_BYTE *a1, unsigned int a2, int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = a4[5];
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 35;
  if ((a2 & 0x80000000) != 0)
  {
    bzero(a1, (v13 & 0xFFFFFFFFFFFFFFF8) + 35);
    if (v14 == 3)
    {
      *a1 = a2;
      a1[2] = BYTE2(a2);
      if ((a3 & 0x80000000) == 0)
      {
        return;
      }
    }

    else
    {
      *a1 = a2 & 0x7FFFFFFF;
      if ((a3 & 0x80000000) == 0)
      {
        return;
      }
    }

    v15 = (HIBYTE(a2) & 0x7F) + 1;
    if (v14 != 3)
    {
      LOBYTE(v15) = 1;
    }

    a1[v14] = v15;
  }

  else
  {
    if (a3 < 0)
    {
      a1[v14] = 0;
    }

    if (a2)
    {
      *((&a1[v13 + 8] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
    }
  }
}

unint64_t sub_1CF2CAAA8()
{
  result = qword_1EC4BEF38;
  if (!qword_1EC4BEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEF38);
  }

  return result;
}

unint64_t sub_1CF2CAAFC()
{
  result = qword_1EC4BEF40;
  if (!qword_1EC4BEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEF40);
  }

  return result;
}

unint64_t sub_1CF2CAB90()
{
  result = qword_1EC4BEFD8;
  if (!qword_1EC4BEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFD8);
  }

  return result;
}

unint64_t sub_1CF2CABE8()
{
  result = qword_1EC4BEFE0;
  if (!qword_1EC4BEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFE0);
  }

  return result;
}

unint64_t sub_1CF2CAC40()
{
  result = qword_1EC4BEFE8;
  if (!qword_1EC4BEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFE8);
  }

  return result;
}

unint64_t sub_1CF2CAC98()
{
  result = qword_1EC4BEFF0;
  if (!qword_1EC4BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFF0);
  }

  return result;
}

unint64_t sub_1CF2CACF0()
{
  result = qword_1EC4BEFF8;
  if (!qword_1EC4BEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFF8);
  }

  return result;
}

unint64_t sub_1CF2CAD48()
{
  result = qword_1EC4BF000;
  if (!qword_1EC4BF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF000);
  }

  return result;
}

id NSFileProviderItemIdentifier.init(rs:at:)(void *a1, uint64_t a2)
{
  v3 = [a1 stringAtIndex_];
  if (!v3)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v3 = sub_1CF9E6888();
  }

  return v3;
}

uint64_t static NSFileProviderItemIdentifier.< infix(_:_:)()
{
  v0 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  if (v0 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1CF9E8048();
  }

  return v4 & 1;
}

uint64_t sub_1CF2CAEDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

uint64_t sub_1CF2CAF64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1CF2CB000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1CF2CB09C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

__C::NSFileProviderItemIdentifier_optional __swiftcall NSFileProviderItemIdentifier.init(parsing:)(Swift::String parsing)
{
  v1 = sub_1CF9E6888();

  v3 = v1;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

id sub_1CF2CB1E4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1CF2CB2A4@<X0>(void *a1@<X2>, void **a2@<X3>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_1CF2CB30C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CF9E6888();

  *a1 = v2;
  return result;
}

char *sub_1CF2CB34C@<X0>(sqlite3_value *a1@<X0>, char **a2@<X8>)
{
  result = sub_1CF2CB644(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1CF2CB460(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 64))(v13, v12) & 1) != 0 && (a2)
  {
    v14 = MEMORY[0x1E6967258];
  }

  else
  {
    if (((*(a4 + 72))(a3, a4) & 1) == 0 || (a2 & 1) == 0)
    {
      (*(v8 + 16))(v11, a1, a3);
      type metadata accessor for NSFileProviderItemIdentifier(0);
      if (swift_dynamicCast())
      {
        return v19[0];
      }

      v19[0] = 0x2F73662F70665F5FLL;
      v19[1] = 0xE800000000000000;
      v17 = (*(a4 + 80))(a3, a4);
      MEMORY[0x1D3868CC0](v17);

      v18 = sub_1CF9E6888();

      return v18;
    }

    v14 = MEMORY[0x1E6967280];
  }

  v15 = *v14;

  return v15;
}

char *sub_1CF2CB644(sqlite3_value *a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sqlite3_value_blob(a1);
  result = sqlite3_value_bytes(a1);
  if (v6)
  {
    v8 = sub_1CF51FAD8(v6, result);
    v10 = v9;
    sub_1CF9E6918();
    v11 = sub_1CF9E68D8();
    if (v12)
    {
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v5 = sub_1CF9E6888();
        sub_1CEFE4714(v8, v10);

        return v5;
      }
    }

    sub_1CF24CD3C();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 9;
    swift_willThrow();
    sub_1CEFE4714(v8, v10);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2CB7D4(void *a1)
{
  a1[2] = sub_1CF2CB884(&qword_1EDEAB530);
  a1[3] = sub_1CF2CB884(&qword_1EDEAB538);
  a1[4] = sub_1CF2CB884(&qword_1EDEAB558);
  result = sub_1CF2CB884(&qword_1EDEAB550);
  a1[5] = result;
  return result;
}

uint64_t sub_1CF2CB884(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSFileProviderItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CF2CB8C8(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v56 = a5;
  v57 = a1;
  v58 = a4;
  v59 = a3;
  v7 = sub_1CF9E53C8();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v47 - v26);
  if (a2)
  {
    *v27 = a2;
    swift_storeEnumTagMultiPayload();
    v28 = a2;
LABEL_3:
    v59(v27);
    return sub_1CEFCCC44(v27, &qword_1EC4BF008, &unk_1CFA01CB0);
  }

  v47 = v16;
  v48 = v15;
  v29 = v57;
  v50 = v7;
  v51 = v14;
  v49 = v10;
  v52 = v25;
  if (!v57)
  {
    v40 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E7288();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "⚔️  no addition was created", v43, 2u);
      MEMORY[0x1D386CDC0](v43, -1, -1);
    }

    (*(v47 + 8))(v19, v48);
    v60 = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    v45 = v49;
    v44 = v50;
    sub_1CF9E57D8();
    v46 = sub_1CF9E53A8();
    (*(v53 + 8))(v45, v44);
    *v27 = v46;
    swift_storeEnumTagMultiPayload();
    goto LABEL_3;
  }

  v30 = objc_opt_self();
  v31 = v29;
  v32 = sub_1CF9E5928();
  v33 = [v31 nameSpace];
  v34 = [v31 name];
  [v30 __itemAtURL_didGainVersionWithClientID_name_purposeID_];

  v35 = v55;
  (*(v55 + 16))(v23, v54, v11);
  result = [v31 url];
  if (result)
  {
    v37 = result;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890) + 48);
    v39 = v51;
    sub_1CF9E59D8();

    (*(v35 + 32))(&v23[v38], v39, v11);
    swift_storeEnumTagMultiPayload();
    v59(v23);

    v27 = v23;
    return sub_1CEFCCC44(v27, &qword_1EC4BF008, &unk_1CFA01CB0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2CBDAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CF2CC430(a1, a3, a4);
  if (!v5)
  {
    v8 = v7;
    v30 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
    {
      v10 = 0;
      v27 = v8 & 0xC000000000000001;
      v28 = v5;
      v25 = a2;
      v26 = v8 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v27)
        {
          v11 = MEMORY[0x1D3869C30](v10, v8);
        }

        else
        {
          if (v10 >= *(v26 + 16))
          {
            goto LABEL_19;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 name];
        if (v14)
        {
          v15 = v8;
          v16 = i;
          v17 = v14;
          v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v20 = v19;

          a2 = &v25;
          v29[0] = v18;
          v29[1] = v20;
          MEMORY[0x1EEE9AC00](v21);
          v24[2] = v29;
          v5 = v28;
          LOBYTE(v17) = sub_1CF7F7438(sub_1CF25107C, v24, v25);
          v28 = v5;

          if (v17)
          {
            sub_1CF9E7A18();
            v22 = *(v30 + 16);
            sub_1CF9E7A58();
            sub_1CF9E7A68();
            sub_1CF9E7A28();
          }

          else
          {
          }

          i = v16;
          v8 = v15;
        }

        else
        {
        }

        ++v10;
        if (v13 == i)
        {
          v4 = v30;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v4;
}

uint64_t sub_1CF2CBFC0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_1CF4E2964(MEMORY[0x1E69E7CC0]);
    v7 = *(v6 + 16);
    if (v7)
    {
LABEL_3:
      v45 = a3;
      v56 = MEMORY[0x1E69E7CC0];

      sub_1CF680D0C(0, v7, 0);
      v8 = v56;
      v9 = v6 + 64;
      v10 = -1 << *(v6 + 32);
      v11 = sub_1CF9E77C8();
      v12 = 0;
      v13 = *(v6 + 36);
      v48 = v7;
      v49 = v13;
      do
      {
        if (v11 < 0 || v11 >= 1 << *(v6 + 32))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        a3 = v11 >> 6;
        if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_40;
        }

        if (v13 != *(v6 + 36))
        {
          goto LABEL_41;
        }

        v50 = v12;
        sub_1CF0272BC(*(v6 + 48) + 40 * v11, v54);
        v15 = *(*(v6 + 56) + 8 * v11);
        v51[0] = v54[0];
        v51[1] = v54[1];
        v52 = v55;
        v53 = v15;
        v16 = v15;
        v17 = sub_1CF9E7868();
        v19 = v18;
        v20 = v15;
        sub_1CEFCCC44(v51, &qword_1EC4BF018, &unk_1CFA018A0);
        v56 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        v23 = v8;
        if (v22 >= v21 >> 1)
        {
          sub_1CF680D0C((v21 > 1), v22 + 1, 1);
          v23 = v56;
        }

        *(v23 + 16) = v22 + 1;
        v24 = (v23 + 24 * v22);
        v24[4] = v17;
        v24[5] = v19;
        v24[6] = v15;
        v14 = 1 << *(v6 + 32);
        if (v11 >= v14)
        {
          goto LABEL_42;
        }

        v9 = v6 + 64;
        v25 = *(v6 + 64 + 8 * a3);
        if ((v25 & (1 << v11)) == 0)
        {
          goto LABEL_43;
        }

        v8 = v23;
        v13 = v49;
        if (v49 != *(v6 + 36))
        {
          goto LABEL_44;
        }

        v26 = v25 & (-2 << (v11 & 0x3F));
        if (v26)
        {
          v14 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = a3 << 6;
          v28 = a3 + 1;
          v29 = (v6 + 72 + 8 * a3);
          while (v28 < (v14 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              sub_1CF0663D8(v11, v49, 0);
              v14 = __clz(__rbit64(v30)) + v27;
              goto LABEL_5;
            }
          }

          sub_1CF0663D8(v11, v49, 0);
        }

LABEL_5:
        v12 = v50 + 1;
        v11 = v14;
      }

      while (v50 + 1 != v48);

      a3 = v45;
      if (!*(v8 + 16))
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
    v32 = sub_1CF9E7BE8();
    goto LABEL_26;
  }

LABEL_25:
  v32 = MEMORY[0x1E69E7CC8];
LABEL_26:
  *&v54[0] = v32;

  sub_1CF2CC6AC(v33, 1, v54);

  v50 = *&v54[0];
  if (!(a3 >> 62))
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_28;
    }

LABEL_46:
    a5(v50, a2);
  }

LABEL_45:
  v34 = sub_1CF9E7818();
  if (!v34)
  {
    goto LABEL_46;
  }

LABEL_28:
  v35 = 0;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1D3869C30](v35, a3);
    }

    else
    {
      if (v35 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v36 = *(a3 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v39 = [v36 nameSpace];
    if (!v39)
    {
      break;
    }

    v40 = v39;
    v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v43 = v42;

    sub_1CF2CCC54(v37, v41, v43);

    ++v35;
    if (v38 == v34)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1CF2CC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  v6 = sub_1CF9E5928();
  v12[0] = 0;
  v7 = [v5 permanentStorageForItemAtURL:v6 allocateIfNone:0 error:v12];

  if (v7)
  {
    v8 = v12[0];
    a3 = sub_1CF2CCA40(v7);
  }

  else
  {
    v9 = v12[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

id sub_1CF2CC52C(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  v11[0] = 0;
  v5 = [v4 permanentStorageForItemWithDocID:a1 deviceID:a2 allocateIfNone:0 error:v11];
  if (v5)
  {
    v6 = v5;
    v7 = v11[0];
    v8 = sub_1CF2CCA40(v6);
  }

  else
  {
    v8 = v11[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t GSRemoteVersionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1CF2CC6AC(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1CEFE4328(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1CF7C59C0(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_1CEFE4328(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1CF9E8108();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1CF7D02E0();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v8;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](39, 0xE100000000000000);
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v28 = *a3;

      v29 = v8;
      v30 = sub_1CEFE4328(v7, v6);
      v32 = v28[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v28[3] < v34)
      {
        sub_1CF7C59C0(v34, 1);
        v35 = *a3;
        v30 = sub_1CEFE4328(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v8;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1CF2CCA40(void *a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  v2 = sub_1CF9E6888();
  v3 = [a1 enumeratorForAdditionsInNameSpace:v2 withOptions:0 withoutOptions:0 ordering:0];

  if (v3)
  {
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ([v3 nextObject])
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
      if (!*(&v9 + 1))
      {
        break;
      }

      sub_1CEFE9EB8(&v10, v12);
      sub_1CEFD1104(v12, &v10);
      sub_1CF2CCC08();
      if (swift_dynamicCast())
      {
        v5 = v8;
        MEMORY[0x1D3868FA0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        __swift_destroy_boxed_opaque_existential_1(v12);
        v4 = v13;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1CEFCCC44(&v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  return v4;
}

unint64_t sub_1CF2CCC08()
{
  result = qword_1EC4C4FE0;
  if (!qword_1EC4C4FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4C4FE0);
  }

  return result;
}

void sub_1CF2CCC54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *MEMORY[0x1E69A07A8];
  if (_sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = sub_1CF9E8048();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v18 = [a1 storage];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v19 = [v18 documentURL];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_1CF9E59D8();

    v19 = sub_1CF9E5928();
    (*(v7 + 8))(v13, v6);
  }

  v20 = objc_opt_self();
  v21 = [a1 nameSpace];
  v22 = [a1 name];
  [v20 __itemAtURL_didResolveConflictVersionWithClientID_name_purposeID_];

LABEL_12:
  v23 = [a1 storage];
  if (!v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = [v23 documentURL];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_1CF9E59D8();

    v24 = sub_1CF9E5928();
    (*(v7 + 8))(v10, v6);
  }

  v25 = objc_opt_self();
  v26 = [a1 nameSpace];
  v27 = [a1 name];
  [v25 __itemAtURL_didLoseVersionWithClientID_name_purposeID_];
}

id sub_1CF2CCF64()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  qword_1EC4EBCA8 = result;
  return result;
}

id sub_1CF2CCF98(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v32 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  v30 = sub_1CF75C4E8(v11, a4);
  v12 = *(a1 + 8);
  v13 = sub_1CF75C4E8(v12, a4);
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v16 = *(v7 + 48);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  sub_1CEFF4408(v17, &v10[v16]);
  *v10 = v13;
  *(v10 + 1) = v15;
  *(v10 + 2) = v14;
  v18 = qword_1EDEA47A0;
  v19 = v12;
  v31 = v13;

  if (v18 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDEBB6B8;
  v20 = v30;
  v21 = v32;
  v22 = sub_1CEFE5A60(v30, v29, v32, v10, &v33, 0);
  sub_1CEFCCC44(v10, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v22 setFormerIdentifier_];
  [v22 setParentFormerIdentifier_];

  v23 = *v17;
  [v22 isExcludedFromSync];
  v24 = *(v17 + 5);
  if (v21)
  {
    v25 = [v21 supportsSyncingTrash];
  }

  else
  {
    v25 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v26 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v23 == 1)
    {
      if ((~v24 & 0x140) != 0)
      {
LABEL_15:
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v24 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v26 |= 1uLL;
    goto LABEL_15;
  }

  if (v23 == 1)
  {
    if ((~v24 & 0x140) == 0)
    {
LABEL_12:
      v26 = 44;
      goto LABEL_14;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v26 = 44;
  if ((v24 & 0x80) == 0)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v26 |= 2uLL;
LABEL_17:
  if (v25)
  {
LABEL_18:
    v26 |= 0x10uLL;
  }

LABEL_19:
  [v22 setCapabilities_];

  return v22;
}

id sub_1CF2CD248(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = sub_1CF75C4E8(*a1, a4);
  v13 = sub_1CF75C4E8(*(a1 + 8), a4);
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v16 = *(v8 + 48);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  sub_1CEFF4408(v17, &v11[v16]);
  *v11 = v13;
  *(v11 + 1) = v15;
  *(v11 + 2) = v14;
  v18 = qword_1EDEA47A0;
  v19 = v13;

  if (v18 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBB6B8;
  v20 = v27;
  v21 = sub_1CEFE5A60(v12, a2, v27, v11, &v28, 0);
  sub_1CEFCCC44(v11, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v21 setFormerIdentifier_];
  [v21 setParentFormerIdentifier_];
  v22 = *v17;
  [v21 isExcludedFromSync];
  v23 = *(v17 + 5);
  if (v20)
  {
    v24 = [v20 supportsSyncingTrash];
  }

  else
  {
    v24 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v25 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v22 == 1)
    {
      if ((~v23 & 0x140) != 0)
      {
LABEL_15:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v25 |= 1uLL;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    if ((~v23 & 0x140) == 0)
    {
LABEL_12:
      v25 = 44;
      goto LABEL_14;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v25 = 44;
  if ((v23 & 0x80) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v25 |= 2uLL;
LABEL_17:
  if (v24)
  {
LABEL_18:
    v25 |= 0x10uLL;
  }

LABEL_19:
  [v21 setCapabilities_];

  return v21;
}

id sub_1CF2CD4D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = sub_1CF75C40C(*a1, *(a1 + 8), a4);
  v14 = v12 == 2 && v11 == 0;
  v36 = v13;
  if (v14)
  {
    v35 = *MEMORY[0x1E6967258];
  }

  else
  {
    v35 = 0;
  }

  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = sub_1CF75C40C(v15, *(a1 + 24), a4 & 1);
  v18 = 0;
  if (v16 == 2 && !v15)
  {
    v18 = *MEMORY[0x1E6967258];
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v21 = *(v7 + 40);
  v22 = (a1 + *(type metadata accessor for VFSItem(0) + 28));
  sub_1CEFF4408(v22, &v10[v21]);
  *v10 = v17;
  *(v10 + 1) = v20;
  *(v10 + 2) = v19;
  v23 = qword_1EDEA47A0;
  v24 = v17;
  v25 = v18;

  if (v23 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDEBB6B8;
  v26 = v36;
  v27 = sub_1CEFE5A60(v36, v34, a3, v10, &v37, 0);
  sub_1CEFCCC44(v10, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v28 = v35;
  [v27 setFormerIdentifier_];
  [v27 setParentFormerIdentifier_];

  v29 = *v22;
  [v27 isExcludedFromSync];
  v30 = *(v22 + 5);
  if (a3)
  {
    v31 = [a3 supportsSyncingTrash];
  }

  else
  {
    v31 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v32 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v29 == 1)
    {
      if ((~v30 & 0x140) != 0)
      {
LABEL_24:
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v30 & 0x100) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    v32 |= 1uLL;
    goto LABEL_24;
  }

  if (v29 == 1)
  {
    if ((~v30 & 0x140) == 0)
    {
LABEL_21:
      v32 = 44;
      goto LABEL_23;
    }
  }

  else if ((v30 & 0x100) != 0)
  {
    goto LABEL_21;
  }

  v32 = 44;
  if ((v30 & 0x80) == 0)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_25:
  v32 |= 2uLL;
LABEL_26:
  if (v31)
  {
LABEL_27:
    v32 |= 0x10uLL;
  }

LABEL_28:
  [v27 setCapabilities_];

  return v27;
}

id sub_1CF2CD7C8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v47 = a2;
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = sub_1CF75C40C(*a1, *(a1 + 8), a4);
  v14 = v12;
  if (v11 == 2 && v10 == 0)
  {
    v19 = MEMORY[0x1E6967258];
LABEL_12:
    v18 = *v19;
    goto LABEL_13;
  }

  if (v11 == 2 && v10 == 1)
  {
    v19 = MEMORY[0x1E6967280];
    goto LABEL_12;
  }

  v52 = 0x2F73662F70665F5FLL;
  v53 = 0xE800000000000000;
  v50 = v10;
  v51 = v11;
  v17 = VFSItemID.description.getter(v12, v13);
  MEMORY[0x1D3868CC0](v17);

  v18 = sub_1CF9E6888();

LABEL_13:
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = sub_1CF75C40C(v20, *(a1 + 24), a4 & 1);
  v24 = v22;
  v49 = v18;
  if (v21 == 2 && !v20)
  {
    v25 = v14;
    v26 = MEMORY[0x1E6967258];
LABEL_19:
    v27 = *v26;
    goto LABEL_21;
  }

  if (v21 == 2 && v20 == 1)
  {
    v25 = v14;
    v26 = MEMORY[0x1E6967280];
    goto LABEL_19;
  }

  v25 = v14;
  v52 = 0x2F73662F70665F5FLL;
  v53 = 0xE800000000000000;
  v50 = v20;
  v51 = v21;
  v28 = VFSItemID.description.getter(v22, v23);
  MEMORY[0x1D3868CC0](v28);

  v27 = sub_1CF9E6888();

LABEL_21:
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  v31 = *(v6 + 40);
  v32 = (a1 + *(type metadata accessor for VFSItem(0) + 28));
  sub_1CEFF4408(v32, &v9[v31]);
  *v9 = v24;
  *(v9 + 1) = v29;
  *(v9 + 2) = v30;
  v33 = qword_1EDEA47A0;
  v34 = v24;
  v35 = v27;

  if (v33 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDEBB6B8;
  v36 = v25;
  v37 = v48;
  v38 = sub_1CEFE5A60(v25, v47, v48, v9, &v52, 0);
  sub_1CEFCCC44(v9, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v39 = v49;
  [v38 setFormerIdentifier_];
  [v38 setParentFormerIdentifier_];

  v40 = *v32;
  [v38 isExcludedFromSync];
  v41 = v37;
  v42 = *(v32 + 5);
  if (v41)
  {
    v43 = [v41 supportsSyncingTrash];
  }

  else
  {
    v43 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v44 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v40 == 1)
    {
      if ((~v42 & 0x140) != 0)
      {
LABEL_35:
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else if ((v42 & 0x100) == 0)
    {
      goto LABEL_35;
    }

LABEL_34:
    v44 |= 1uLL;
    goto LABEL_35;
  }

  if (v40 == 1)
  {
    if ((~v42 & 0x140) == 0)
    {
LABEL_32:
      v44 = 44;
      goto LABEL_34;
    }
  }

  else if ((v42 & 0x100) != 0)
  {
    goto LABEL_32;
  }

  v44 = 44;
  if ((v42 & 0x80) == 0)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_36:
  v44 |= 2uLL;
LABEL_37:
  if (v43)
  {
LABEL_38:
    v44 |= 0x10uLL;
  }

LABEL_39:
  [v38 setCapabilities_];

  return v38;
}

id sub_1CF2CDBA4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = sub_1CF75C40C(*a1, *(a1 + 8), a4);
  v14 = sub_1CF75C40C(*(a1 + 16), *(a1 + 24), a4);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(v9 + 48);
  v18 = (a1 + *(type metadata accessor for VFSItem(0) + 28));
  sub_1CEFF4408(v18, &v12[v17]);
  *v12 = v14;
  *(v12 + 1) = v15;
  *(v12 + 2) = v16;
  v19 = qword_1EDEA47A0;
  v20 = v14;

  if (v19 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBB6B8;
  v21 = sub_1CEFE5A60(v13, a2, a3, v12, &v28, 0);
  sub_1CEFCCC44(v12, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v21 setFormerIdentifier_];
  [v21 setParentFormerIdentifier_];
  v22 = *v18;
  [v21 isExcludedFromSync];
  v23 = *(v18 + 5);
  if (a3)
  {
    v24 = [a3 supportsSyncingTrash];
  }

  else
  {
    v24 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v25 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v22 == 1)
    {
      if ((~v23 & 0x140) != 0)
      {
LABEL_15:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v25 |= 1uLL;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    if ((~v23 & 0x140) == 0)
    {
LABEL_12:
      v25 = 44;
      goto LABEL_14;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v25 = 44;
  if ((v23 & 0x80) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v25 |= 2uLL;
LABEL_17:
  if (v24)
  {
LABEL_18:
    v25 |= 0x10uLL;
  }

LABEL_19:
  [v21 setCapabilities_];

  return v21;
}

id sub_1CF2CDE20(void *a1, uint64_t a2, void *a3, char a4)
{
  v45 = a3;
  v43 = a2;
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  *&v15 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v17 = &v40 - v16;
  v18 = [a1 itemID];
  v19 = [v18 identifier];

  v42 = sub_1CF75C4E8(v19, a4);
  v20 = [a1 itemID];

  v21 = sub_1CF0689E4();
  v22 = sub_1CF75C4E8(v21, a4);

  v23 = v22;
  v24 = [a1 filename];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  v50[0] = v25;
  v50[1] = v27;
  v48 = 58;
  v49 = 0xE100000000000000;
  v46 = 47;
  v47 = 0xE100000000000000;
  sub_1CEFE4E68();
  v28 = sub_1CF9E7668();
  v30 = v29;

  sub_1CEFF54BC(&v17[*(v13 + 48)]);
  v41 = v23;
  *v17 = v23;
  *(v17 + 1) = v28;
  *(v17 + 2) = v30;
  if (qword_1EDEA47A0 != -1)
  {
    swift_once();
  }

  v50[0] = qword_1EDEBB6B8;
  v31 = v42;
  v32 = v45;
  v33 = sub_1CEFE5A60(v42, v43, v45, v17, v50, 0);
  sub_1CEFCCC44(v17, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v33 setFormerIdentifier_];
  [v33 setParentFormerIdentifier_];
  sub_1CEFF54BC(v11);
  v34 = *v11;
  sub_1CF06DA00(v11);
  [v33 isExcludedFromSync];
  v35 = v44;
  sub_1CEFF54BC(v44);
  v36 = *(v35 + 5);
  sub_1CF06DA00(v35);
  if (v32)
  {
    v37 = [v32 supportsSyncingTrash];
  }

  else
  {
    v37 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v38 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v34 == 1)
    {
      if ((~v36 & 0x140) != 0)
      {
LABEL_15:
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v36 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v38 |= 1uLL;
    goto LABEL_15;
  }

  if (v34 == 1)
  {
    if ((~v36 & 0x140) == 0)
    {
LABEL_12:
      v38 = 44;
      goto LABEL_14;
    }
  }

  else if ((v36 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v38 = 44;
  if ((v36 & 0x80) == 0)
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v38 |= 2uLL;
LABEL_17:
  if (v37)
  {
LABEL_18:
    v38 |= 0x10uLL;
  }

LABEL_19:
  [v33 setCapabilities_];

  return v33;
}

id sub_1CF2CE21C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = sub_1CF75C40C(*a1, *(a1 + 8), a4);
  v14 = sub_1CF75C40C(*(a1 + 16), *(a1 + 24), a4);
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  v17 = *(v9 + 48);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  sub_1CEFF4408(v18, &v12[v17]);
  *v12 = v14;
  *(v12 + 1) = v15;
  *(v12 + 2) = v16;
  v19 = qword_1EDEA47A0;
  v20 = v14;

  if (v19 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBB6B8;
  v21 = sub_1CEFE5A60(v13, a2, a3, v12, &v28, 0);
  sub_1CEFCCC44(v12, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v21 setFormerIdentifier_];
  [v21 setParentFormerIdentifier_];
  v22 = *v18;
  [v21 isExcludedFromSync];
  v23 = *(v18 + 5);
  if (a3)
  {
    v24 = [a3 supportsSyncingTrash];
  }

  else
  {
    v24 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v25 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v22 == 1)
    {
      if ((~v23 & 0x140) != 0)
      {
LABEL_15:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v25 |= 1uLL;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    if ((~v23 & 0x140) == 0)
    {
LABEL_12:
      v25 = 44;
      goto LABEL_14;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v25 = 44;
  if ((v23 & 0x80) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v25 |= 2uLL;
LABEL_17:
  if (v24)
  {
LABEL_18:
    v25 |= 0x10uLL;
  }

LABEL_19:
  [v21 setCapabilities_];

  return v21;
}

id sub_1CF2CE4A4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a6;
  v72 = a5;
  LODWORD(v70) = a4;
  v62 = a3;
  v60 = a2;
  v11 = type metadata accessor for ItemMetadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v57 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - v24;
  v26 = *(a8 + 64);
  v26(a7, a8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = sub_1CF2CB460(v25, v70, AssociatedTypeWitness, AssociatedConformanceWitness);
  v28 = *(v17 + 8);
  v27 = (v17 + 8);
  v74 = v28;
  v28(v25, AssociatedTypeWitness);
  v65 = a1;
  v66 = a8;
  v67 = a7;
  v26(a7, a8);
  v29 = v68;
  v30 = v72(v23);
  if (!v29)
  {
    v57 = v30;
    v74(v23, AssociatedTypeWitness);
    v68 = 0;
    v32 = v66;
    v33 = *(v66 + 72);
    v34 = v67;
    v33(v67, v66);
    v70 = sub_1CF2CB460(v25, v70 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v74(v25, AssociatedTypeWitness);
    v35 = v64;
    v33(v34, v32);
    v36 = v68;
    v37 = v72(v35);
    if (v36)
    {
      v74(v35, AssociatedTypeWitness);

      v31 = v57;
      goto LABEL_5;
    }

    v39 = v37;
    v68 = 0;
    v74(v35, AssociatedTypeWitness);
    v40 = v66;
    v41 = *(v66 + 80);
    v42 = v39;
    v43 = v70;
    v44 = v67;
    v41(v73, v67, v40);
    v45 = v73[0];
    v46 = v73[1];
    v47 = v59;
    v48 = &v59[*(v58 + 40)];
    v72 = *(v40 + 104);
    (v72)(v44, v40);
    v74 = v43;
    *v47 = v43;
    *(v47 + 8) = v45;
    *(v47 + 16) = v46;
    v49 = v44;
    if (qword_1EDEA47A0 != -1)
    {
      swift_once();
    }

    v73[0] = qword_1EDEBB6B8;
    v50 = v62;
    v27 = sub_1CEFE5A60(v69, v60, v62, v47, v73, 0);
    sub_1CEFCCC44(v47, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    [v27 setFormerIdentifier_];
    [v27 setParentFormerIdentifier_];
    v51 = v42;

    sub_1CF06D940(v49, v40, v73);
    v52 = LOBYTE(v73[0]);
    [v27 isExcludedFromSync];
    v53 = v61;
    (v72)(v49, v40);
    v54 = *(v53 + 10);
    sub_1CF06DA00(v53);
    if (v50)
    {
      v55 = [v50 supportsSyncingTrash];
    }

    else
    {
      v55 = 1;
    }

    if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
    {
      v56 = *MEMORY[0x1E6967238] | 0x2CLL;
      if (v52 == 1)
      {
        if ((~v54 & 0x140) != 0)
        {
          goto LABEL_26;
        }
      }

      else if ((v54 & 0x100) == 0)
      {
LABEL_26:
        if ((v54 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_25:
      v56 |= 1uLL;
      goto LABEL_26;
    }

    if (v52 == 1)
    {
      if ((~v54 & 0x140) != 0)
      {
LABEL_18:
        if ((v54 & 0x80) == 0)
        {
          v56 = 44;
          if (v55)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        v56 = 44;
LABEL_27:
        v56 |= 2uLL;
LABEL_28:
        if (v55)
        {
LABEL_29:
          v56 |= 0x10uLL;
        }

LABEL_30:
        [v27 setCapabilities_];

        return v27;
      }
    }

    else if ((v54 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    v56 = 44;
    goto LABEL_25;
  }

  v74(v23, AssociatedTypeWitness);
  v31 = v69;
LABEL_5:

  return v27;
}

unint64_t sub_1CF2CEABC()
{
  result = qword_1EDEAD660;
  if (!qword_1EDEAD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD660);
  }

  return result;
}

unint64_t sub_1CF2CEB14()
{
  result = qword_1EDEAB560;
  if (!qword_1EDEAB560)
  {
    type metadata accessor for NSFileProviderItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB560);
  }

  return result;
}

unint64_t sub_1CF2CEB6C(uint64_t a1)
{
  result = sub_1CF2CEB94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF2CEB94()
{
  result = qword_1EDEAB518;
  if (!qword_1EDEAB518)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB520, 0x1E6967388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB518);
  }

  return result;
}

uint64_t sub_1CF2CEC48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E6388();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1CF9E7388();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v70 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E7318();
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v68 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = v61 - v14;
  v15 = sub_1CF9E6448();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  v21 = sub_1CF9E6498();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + qword_1EDEBB6C0) = 0;
  v26 = (v2 + qword_1EDEBB6D0);
  *v26 = 0;
  v26[1] = 0;
  v27 = v2 + qword_1EDEBB730;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v2 + qword_1EDEBB720;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v2 + qword_1EDEBB748;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v2 + qword_1EDEBB710;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v2 + qword_1EDEBB708;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v2 + qword_1EDEBB740;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v2 + qword_1EDEBB6C8;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v2 + qword_1EDEBB770) = 0;
  v34 = (v2 + qword_1EDEBB700);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v2 + qword_1EDEBB6F8);
  *v35 = 0;
  v35[1] = 0;
  v36 = v2 + qword_1EDEBB758;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EDEA4990) = sub_1CF4E2A8C(MEMORY[0x1E69E7CC0]);
  sub_1CF9E6458();
  v38 = *(v22 + 32);
  v38(v2 + qword_1EDEA4980, v25, v21);
  sub_1CF9E6458();
  v38(v2 + qword_1EDEA4988, v25, v21);
  *(v2 + 120) = [objc_allocWithZone(FPFSVolume) init];
  v39 = sub_1CF9E5A18();
  v40 = (v2 + qword_1EDEA4970);
  *v40 = v39;
  v40[1] = v41;
  v63 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  v64 = a1;
  v42 = *(a1 + 24);
  *&v76 = *(a1 + 16);
  *(&v76 + 1) = v42;

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA3E330);
  v61[0] = *(&v76 + 1);
  v61[1] = v76;
  sub_1CF9E63F8();
  *&v76 = v37;
  sub_1CF2F1F24(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v43 = v62;
  v44 = v10;
  sub_1CF9E77B8();
  v45 = v66;
  v46 = v67;
  (*(v66 + 16))(v65, v20, v67);
  v47 = v69;
  (*(v69 + 16))(v68, v43, v44);
  (*(v71 + 104))(v70, *MEMORY[0x1E69E8098], v72);
  v48 = sub_1CF9E73B8();
  (*(v47 + 8))(v43, v44);
  (*(v45 + 8))(v20, v46);
  *(v2 + qword_1EDEA4968) = v48;
  v49 = [objc_opt_self() defaultStore];
  v50 = [v49 minimumDiskSpaceRequiredToBeGreedy];
  *(v2 + qword_1EDEBB738) = v50;
  [v49 relativeDiskSpaceRequiredToBeGreedy];
  *(v2 + qword_1EDEBB728) = v51;
  v52 = [v49 diskSpaceRequiredToReturnToGreedyState];
  *(v2 + qword_1EDEBB750) = v52;
  [v49 relativeDiskSpaceRequiredToReturnToGreedyState];
  *(v2 + qword_1EDEBB718) = v53;
  v54 = [v49 diskSpaceCheckInterval];
  v56 = v73;
  v55 = v74;
  *v73 = v54;
  v57 = v75;
  (*(v55 + 104))(v56, *MEMORY[0x1E69E7F48], v75);
  (*(v55 + 32))(v2 + qword_1EDEBB6D8, v56, v57);
  v58 = [v49 minTimeBetweenSpeculativeDownloadsPurgeSession];
  *(v2 + qword_1EDEBB768) = 1000000000 * v58;
  v59 = [v49 minTimeToPreventDownloadsAfterReturningToGreedyState];
  *(v2 + qword_1EDEBB760) = 1000000000 * v59;
  *(v2 + qword_1EDEBB6F0) = 0;
  *(v2 + qword_1EDEBB6E8) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + qword_1EDEBB6E0) = 0x7FFFFFFFFFFFFFFFLL;
  v77 = type metadata accessor for DocumentWharf();
  v78 = &off_1F4C2E638;
  *&v76 = v64;

  *(v2 + 72) = 0;
  sub_1CF054EA0(&v76, v2 + 16);
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  *(v2 + 56) = 0xD00000000000002BLL;
  *(v2 + 64) = 0x80000001CFA3E360;
  return v2;
}