uint64_t sub_1CF5D57A0(void *a1, _BYTE *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[82] & 0x20) == 0)
  {
    return a3(a1);
  }

  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Wait for materialization waiting for flush", v17, 2u);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v20 = *(*a2 + 456);
  swift_retain_n();
  v21 = a1;
  v20("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v18, sub_1CF5DE634, v19);
}

uint64_t sub_1CF5D5A04(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v20 = a5;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E7298();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = a4;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1CEFC7000, v13, v14, v20, v15, 2u);
    a4 = v19;
    MEMORY[0x1D386CDC0](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return a2(a4);
}

void sub_1CF5D5B9C(uint64_t a1, void (*a2)(void), uint64_t a3, const char *a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, a4, v14, 2u);
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_1CF4810BC();
  v15 = swift_allocError();
  *v16 = 0;
  a2();
}

uint64_t sub_1CF5D5D4C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unsigned __int8 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v245 = a7;
  v254 = a6;
  v244 = a5;
  v253 = a3;
  v248 = a2;
  v228 = a1;
  v252 = *&v7->_os_unfair_lock_opaque;
  v249 = sub_1CF9E6118();
  v251 = *(v249 - 8);
  v10 = *(v251 + 64);
  v11 = MEMORY[0x1EEE9AC00](v249);
  v13 = &v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v223 = &v222 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v225 = &v222 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v222 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v243 = &v222 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v222 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v227 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v255 = &v222 - v28;
  v29 = sub_1CF9E64A8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *&v8[16]._os_unfair_lock_opaque;
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x1E69E8020], v29);
  v35 = v34;
  LOBYTE(v34) = sub_1CF9E64D8();
  v37 = *(v30 + 8);
  v36 = v30 + 8;
  v37(v33, v29);
  if ((v34 & 1) == 0)
  {
    goto LABEL_96;
  }

  v38 = [objc_allocWithZone(FPLoggerScope) init];
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  v40 = v38;
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E7298();

  v43 = os_log_type_enabled(v41, v42);
  v247 = a4;
  v242 = v40;
  v226 = v20;
  v222 = v13;
  v224 = v25;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v241 = v45;
    *&v246 = swift_slowAlloc();
    *&v256 = v246;
    *v44 = 138414850;
    v46 = [v40 enter];
    *(v44 + 4) = v46;
    *v45 = v46;
    *(v44 + 12) = 2080;
    v47 = *&v8[8]._os_unfair_lock_opaque;
    v48 = *(*(v47 + 16) + 88);

    v49 = sub_1CF0655D4();
    v51 = v50;

    v52 = sub_1CEFD0DF0(v49, v51, &v256);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2080;
    v53 = *(*(v47 + 16) + 96);

    v54 = sub_1CF0655D4();
    v56 = v55;

    v57 = sub_1CEFD0DF0(v54, v56, &v256);

    *(v44 + 24) = v57;
    *(v44 + 32) = 2080;
    v58 = *(*(v47 + 16) + 104);

    v59 = sub_1CF0655D4();
    v61 = v60;

    v62 = sub_1CEFD0DF0(v59, v61, &v256);

    *(v44 + 34) = v62;
    *(v44 + 42) = 2080;
    v63 = *(*(v47 + 16) + 80);

    v64 = sub_1CF0655D4();
    v66 = v65;

    v67 = sub_1CEFD0DF0(v64, v66, &v256);

    *(v44 + 44) = v67;
    *(v44 + 52) = 2080;
    v68 = *&v8[34]._os_unfair_lock_opaque;

    v69 = sub_1CF52A400();
    v71 = v70;

    v72 = sub_1CEFD0DF0(v69, v71, &v256);

    *(v44 + 54) = v72;
    *(v44 + 62) = 2080;
    v73 = *&v8[10]._os_unfair_lock_opaque;
    v74 = *(*(v73 + 16) + 88);

    v75 = sub_1CF0655D4();
    v77 = v76;

    v78 = sub_1CEFD0DF0(v75, v77, &v256);

    *(v44 + 64) = v78;
    *(v44 + 72) = 2080;
    v79 = *(*(v73 + 16) + 96);

    v80 = sub_1CF0655D4();
    v82 = v81;

    v83 = sub_1CEFD0DF0(v80, v82, &v256);

    *(v44 + 74) = v83;
    *(v44 + 82) = 2080;
    v84 = *(*(v73 + 16) + 104);

    v85 = sub_1CF0655D4();
    v87 = v86;

    v88 = sub_1CEFD0DF0(v85, v87, &v256);

    *(v44 + 84) = v88;
    *(v44 + 92) = 2080;
    v89 = *(*(v73 + 16) + 80);

    v90 = sub_1CF0655D4();
    v92 = v91;

    v93 = sub_1CEFD0DF0(v90, v92, &v256);

    *(v44 + 94) = v93;
    *(v44 + 102) = 2080;
    v94 = *&v8[36]._os_unfair_lock_opaque;

    v95 = sub_1CF52A400();
    v97 = v96;

    v98 = sub_1CEFD0DF0(v95, v97, &v256);

    *(v44 + 104) = v98;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "%@ ⚙️  executing jobs, availabilities update-content-fs:%s update-metadata-only-fs:%s fetch-from-fs:%s other-fs:%s/%s update-content-fp:%s update-metadata-only-fp:%s fetch-from-fp:%s other-fp:%s/%s", v44, 0x70u);
    v99 = v241;
    sub_1CEFCCC44(v241, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v99, -1, -1);
    v100 = v246;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v100, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);
  }

  else
  {
  }

  (*(v251 + 8))(v255, v249);
  os_unfair_lock_lock(v8 + 52);
  v101 = *&v8[54]._os_unfair_lock_opaque;
  *&v8[54]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(v8 + 52);
  v229 = v101;
  if (v101)
  {
    sub_1CF5A60D0(2, 1, 2);
  }

  *(*&v8[40]._os_unfair_lock_opaque + 50) = 0;
  v102 = *&v8[34]._os_unfair_lock_opaque;

  sub_1CF527D90();

  *&v236 = v257;
  v246 = v256;
  v267 = v256;
  v268 = v257;
  v103 = v252;
  v104 = *(v252 + 632);
  v241 = *(v252 + 616);
  v255 = v104;
  type metadata accessor for JobLockRule();
  v240 = &unk_1CFA0A0B8;
  swift_getWitnessTable();
  sub_1CF9E66B8();
  v239 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  *&v238 = MEMORY[0x1E69E5DE8];
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  *&v237 = MEMORY[0x1E69E6CC8];
  swift_getWitnessTable();
  v105 = v8;
  v235 = sub_1CEFCCCEC(&qword_1EDEA3798, &unk_1EC4C1BB0, &unk_1CFA04800);
  sub_1CF9E7AA8();
  v234 = MEMORY[0x1E69E6C68];
  swift_getWitnessTable();
  v106 = sub_1CF9E7978();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
  v233 = MEMORY[0x1E69E5DF0];
  WitnessTable = swift_getWitnessTable();
  v232 = MEMORY[0x1E69E6CD0];
  v108 = swift_getWitnessTable();
  v109 = sub_1CEFCCCEC(&qword_1EDEA3790, &unk_1EC4C1BB0, &unk_1CFA04800);
  v265 = v108;
  v266 = v109;
  v264 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v111 = v250;
  v231 = sub_1CF054A5C(sub_1CF5E14F4, 0, v106, v107, MEMORY[0x1E69E73E0], v110, MEMORY[0x1E69E7410], v112);
  v230 = v111;

  *&v246 = v105;
  v113 = *&v105[36]._os_unfair_lock_opaque;

  sub_1CF527D90();

  v236 = v256;
  v267 = v256;
  v268 = v257;
  v114 = *(v103 + 640);
  *&v250 = *(v103 + 624);
  v252 = v114;
  type metadata accessor for JobLockRule();
  swift_getWitnessTable();
  sub_1CF9E66B8();
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  sub_1CF9E7AA8();
  swift_getWitnessTable();
  v115 = sub_1CF9E7978();
  v263 = swift_getWitnessTable();
  v261 = swift_getWitnessTable();
  v262 = v109;
  v260 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  v117 = v230;
  v119 = sub_1CF054A5C(sub_1CF5E14F4, 0, v115, v107, MEMORY[0x1E69E73E0], v116, MEMORY[0x1E69E7410], v118);

  *&v256 = v231;
  sub_1CF06577C(v119);
  v120 = v256;
  if (*(v256 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BD0, &unk_1CFA0CD30);
    v121 = sub_1CF9E7BE8();
  }

  else
  {
    v121 = MEMORY[0x1E69E7CC8];
  }

  v122 = v253;
  *&v256 = v121;
  sub_1CF5DF270(v120, 1, &v256);
  v123 = v246;
  if (v117)
  {

    __break(1u);
    return result;
  }

  v124 = v256;
  v125 = *(v256 + 16);
  *&v126 = v241;
  *(&v126 + 1) = v250;
  v127 = *(v123 + 128);
  *&v128 = v255;
  *(&v128 + 1) = v252;
  v238 = v128;
  v256 = v126;
  v257 = v128;
  v250 = v126;
  v129 = type metadata accessor for Schedulable();
  v130 = sub_1CF9E6DA8();
  *&v267 = v130;
  v241 = v125;
  v239 = v127;
  v252 = v129;
  v240 = v124;
  if (v125 >= v127)
  {
    v255 = 0;
    v136 = fpfs_current_or_default_log();
    v137 = v227;
    sub_1CF9E6128();

    v138 = sub_1CF9E6108();
    v139 = sub_1CF9E72C8();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 134218240;
      *(v140 + 4) = *(v124 + 16);

      *(v140 + 12) = 2048;
      *(v140 + 14) = *(v123 + 128);

      _os_log_impl(&dword_1CEFC7000, v138, v139, "%ld blocked jobs, cannot schedule any more jobs (limit: %ld)", v140, 0x16u);
      MEMORY[0x1D386CDC0](v140, -1, -1);
    }

    else
    {
    }

    v25 = v242;
    v36 = v249;
    (*(v251 + 8))(v137, v249);
  }

  else
  {
    *&v237 = v130;
    v131 = *(v123 + 24);
    v132 = *(v124 + 16);
    if (v132)
    {
      v133 = sub_1CF1F8AD4(*(v124 + 16), 0);
      v134 = sub_1CF1F9A6C(&v256, (v133 + 4), v132, v124);
      v123 = v258;

      v135 = sub_1CEFCB59C();
      if (v134 != v132)
      {
        __break(1u);
        goto LABEL_99;
      }

      v123 = v246;
      v122 = v253;
    }

    else
    {
      v133 = MEMORY[0x1E69E7CC0];
    }

    v141 = swift_allocObject();
    v142 = v254;
    v143 = v245;
    v141[2] = v254;
    v141[3] = v143;
    v141[4] = v123;
    v144 = *(*v131 + 152);

    v144(v228, v133, v122, sub_1CF5DF558, v141, v142, v143);
    v25 = v242;
    v255 = 0;

    v256 = v250;
    v257 = v238;
    type metadata accessor for SchedulableJob();
    sub_1CF9E7B48();

    sub_1CF9E6DD8();

    if ((*(v123 + 80) & 8) != 0)
    {
      v145 = *(v123 + 16);
      v146 = swift_allocObject();
      v147 = v254;
      v148 = v245;
      v146[2] = v254;
      v146[3] = v148;
      v146[4] = v123;
      v149 = *(*v145 + 280);
      v150 = *(v148 + 8);

      v151 = v150;
      v152 = v255;
      v149(v228, v122, sub_1CF5DF558, v146, v147, v151);
      v255 = v152;
      v36 = v249;
      if (v152)
      {

        swift_unknownObjectRelease();
        v153 = fpfs_current_or_default_log();
        v154 = v223;
        sub_1CF9E6128();
        v155 = v25;
        v156 = sub_1CF9E6108();
        v157 = sub_1CF9E7298();

        if (!os_log_type_enabled(v156, v157))
        {

          v162 = *(v251 + 8);
          goto LABEL_92;
        }

        v158 = swift_slowAlloc();
        v159 = v36;
        v160 = swift_slowAlloc();
        *v158 = 138412290;
        v161 = [v155 leave];
        *(v158 + 4) = v161;
        *v160 = v161;
        _os_log_impl(&dword_1CEFC7000, v156, v157, "%@", v158, 0xCu);
        sub_1CEFCCC44(v160, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v160, -1, -1);
        MEMORY[0x1D386CDC0](v158, -1, -1);

        v162 = *(v251 + 8);
        goto LABEL_86;
      }

      v256 = v250;
      v257 = v238;
      type metadata accessor for SchedulableReconciliation();
      sub_1CF9E7B48();

      sub_1CF9E6DD8();
    }

    else
    {
      v36 = v249;
    }

    sub_1CF9E6E58();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1CF9E6858();
    v123 = v246;
  }

  v163 = v267;
  v164 = qword_1EDEBBCB0;

  if (!sub_1CF9E6DF8())
  {
    *&v250 = 0;
LABEL_57:

    v135 = swift_bridgeObjectRelease_n();
    goto LABEL_58;
  }

  v235 = v164;
  v20 = 0;
  *&v250 = 0;
  *&v238 = v251 + 8;
  *&v165 = 136315138;
  v237 = v165;
  v166 = v245;
LABEL_29:
  v167 = v20;
  while (1)
  {
    v168 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v168)
    {
      v169 = *(v163 + 8 * v167 + 32);
    }

    else
    {
      v169 = sub_1CF9E7998();
    }

    v20 = v167 + 1;
    v170 = v254;
    if (__OFADD__(v167, 1))
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      swift_once();
      goto LABEL_71;
    }

    if (fp_task_tracker_is_cancelled(*(*(v123 + 168) + 16)))
    {

      swift_bridgeObjectRelease_n();
      sub_1CF2CA194();
      v255 = swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease();
      v206 = fpfs_current_or_default_log();
      v154 = v224;
      sub_1CF9E6128();
      v207 = v25;
      v208 = sub_1CF9E6108();
      v157 = sub_1CF9E7298();

      if (!os_log_type_enabled(v208, v157))
      {
        goto LABEL_87;
      }

LABEL_85:
      v210 = swift_slowAlloc();
      v159 = v36;
      v211 = swift_slowAlloc();
      *v210 = 138412290;
      v212 = [v207 leave];
      *(v210 + 4) = v212;
      *v211 = v212;
      _os_log_impl(&dword_1CEFC7000, v208, v157, "%@", v210, 0xCu);
      sub_1CEFCCC44(v211, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v211, -1, -1);
      MEMORY[0x1D386CDC0](v210, -1, -1);

      v162 = *v238;
LABEL_86:
      v213 = v154;
      v214 = v159;
      goto LABEL_93;
    }

    if (v250 >= v248)
    {
      break;
    }

    v135 = objc_sync_enter(v123);
    if (v135)
    {
      goto LABEL_103;
    }

    v171 = v255;
    sub_1CF5D7E78(v123, &v256);
    v255 = v171;
    if (v171)
    {

      v219 = objc_sync_exit(v123);
      MEMORY[0x1EEE9AC00](v219);
      v220 = &v222 - 4;
      *(&v222 - 2) = v123;
      v221 = sub_1CF1C5290;
      goto LABEL_106;
    }

    v172 = objc_sync_exit(v123);
    if (v172)
    {
      MEMORY[0x1EEE9AC00](v172);
      v220 = &v222 - 4;
      *(&v222 - 2) = v123;
      v221 = sub_1CF1C5468;
LABEL_106:
      fp_preconditionFailure(_:file:line:)(v221, v220, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (v256 >= 256)
    {
      break;
    }

    if (v247)
    {
      v173 = v247(v169);
      v170 = v254;
      if ((v173 & 1) == 0)
      {
        v176 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v177 = sub_1CF9E6108();
        v178 = sub_1CF9E7298();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          *&v236 = swift_slowAlloc();
          *&v256 = v236;
          *v179 = v237;
          v259 = v169;

          v180 = sub_1CF9E6948();
          v182 = sub_1CEFD0DF0(v180, v181, &v256);
          v25 = v242;

          *(v179 + 4) = v182;
          v36 = v249;
          _os_log_impl(&dword_1CEFC7000, v177, v178, "filter rejected execution of %s", v179, 0xCu);
          v183 = v236;
          __swift_destroy_boxed_opaque_existential_1(v236);
          MEMORY[0x1D386CDC0](v183, -1, -1);
          v184 = v179;
          v123 = v246;
          MEMORY[0x1D386CDC0](v184, -1, -1);
        }

        else
        {
        }

        (*v238)(v243, v36);
        v166 = v245;
        goto LABEL_32;
      }
    }

    v174 = v255;
    v175 = (*(*v169 + 136))(v123, v253, v170, v166);
    v255 = v174;
    if (v174)
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v209 = fpfs_current_or_default_log();
      v154 = v222;
      sub_1CF9E6128();
      v207 = v25;
      v208 = sub_1CF9E6108();
      v157 = sub_1CF9E7298();

      if (os_log_type_enabled(v208, v157))
      {
        goto LABEL_85;
      }

LABEL_87:

      v162 = *v238;
LABEL_92:
      v213 = v154;
      v214 = v36;
LABEL_93:
      v162(v213, v214);

      return v157 & 1;
    }

    if (v175 != 2)
    {
      if (v175)
      {

        swift_bridgeObjectRelease_n();
        *&v250 = v250 + 1;
        v215 = v169[32];

        if (v215 == 1)
        {
          v216 = *(v123 + v235);
          v187 = __OFADD__(v216, 1);
          v217 = v216 + 1;
          v20 = v226;
          if (v187)
          {
            goto LABEL_102;
          }

          *(v123 + v235) = v217;
LABEL_59:
          if (v241 >= v239)
          {
            goto LABEL_65;
          }

          v189 = *(*(*(*(v123 + 40) + 16) + 80) + 16);
          v190 = *(*(*(*(v123 + 40) + 16) + 80) + 24);
          v187 = __OFSUB__(v190, v189);
          v191 = v190 - v189;
          if (!v187)
          {
            if (v191 > 0)
            {
LABEL_64:
              *(*(v123 + 160) + 50) = 1;
LABEL_65:
              if (!*(v123 + 200))
              {
                goto LABEL_68;
              }

              goto LABEL_70;
            }

            v192 = *(*(*(*(v123 + 32) + 16) + 80) + 16);
            v193 = *(*(*(*(v123 + 32) + 16) + 80) + 24);
            v187 = __OFSUB__(v193, v192);
            v194 = v193 - v192;
            if (!v187)
            {
              if (v194 < 1)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }

            goto LABEL_100;
          }

LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          MEMORY[0x1EEE9AC00](v135);
          *(&v222 - 2) = v123;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v222 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

LABEL_58:
        v20 = v226;
        goto LABEL_59;
      }

      v185 = v169[32];

      if (v185 == 1)
      {
        v186 = *(v123 + v235);
        v187 = __OFADD__(v186, 1);
        v188 = v186 + 1;
        if (v187)
        {
          goto LABEL_101;
        }

        *(v123 + v235) = v188;
      }

      *&v250 = v250 + 1;
      if (v20 == sub_1CF9E6DF8())
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

LABEL_32:
    ++v167;
    if (v20 == sub_1CF9E6DF8())
    {
      goto LABEL_57;
    }
  }

  swift_bridgeObjectRelease_n();
  v20 = v226;
  if (!*(v123 + 200))
  {
LABEL_68:
    if (sub_1CF03BB04())
    {
      v195 = os_transaction_create();
      v196 = *(v123 + 200);
      *(v123 + 200) = v195;
      swift_unknownObjectRelease();
    }
  }

LABEL_70:
  v197 = sub_1CF5A0F38();
  sub_1CF06779C(nullsub_1, 0);

  if (qword_1EDEAD4D8 != -1)
  {
    goto LABEL_97;
  }

LABEL_71:
  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  swift_unknownObjectRelease();
  v198 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v199 = v25;
  v200 = sub_1CF9E6108();
  v201 = sub_1CF9E7298();

  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *v202 = 138412290;
    v204 = [v199 leave];
    *(v202 + 4) = v204;
    *v203 = v204;
    _os_log_impl(&dword_1CEFC7000, v200, v201, "%@", v202, 0xCu);
    sub_1CEFCCC44(v203, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v205 = v203;
    v36 = v249;
    MEMORY[0x1D386CDC0](v205, -1, -1);
    MEMORY[0x1D386CDC0](v202, -1, -1);
  }

  v157 = v250 != 0;
  (*(v251 + 8))(v20, v36);

  return v157 & 1;
}

uint64_t sub_1CF5D7E00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  *a2 = (*(v5 + 16))(v4, v5);
  a2[1] = v6;
  return sub_1CF1A91AC(a1, (a2 + 2));
}

uint64_t sub_1CF5D7E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];

  v8 = *(v4 + 616);
  v9 = *(v4 + 632);
  type metadata accessor for FSOrFPJob();
  v6 = sub_1CF9E6698();

  *a2 = v6;
  return result;
}

uint64_t sub_1CF5D7F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E72C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "🚀  engine is stable and flushed", v11, 2u);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return a2(0);
}

uint64_t sub_1CF5D80B8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t (*a14)(uint64_t))
{
  if (a2)
  {
    a2();
  }

  v17 = a4();
  v18 = a6(v17);
  if (a8)
  {
    v18 = a8(v18);
  }

  v19 = a10(v18);
  a12(v19);
  return a14(a1);
}

double sub_1CF5D818C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v18 = a1[2];
  v19 = v4;
  v5 = a1[5];
  v20 = a1[4];
  v21 = v5;
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = type metadata accessor for FileTreeChangeAggregator();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v15, &v16, v7);
  v9 = sub_1CF5B543C(v15);
  (*(v8 + 40))(a1, v15, v7, v9);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6708();

  sub_1CF9E66A8();
  v11 = v19;
  a2[2] = v18;
  a2[3] = v11;
  v12 = v21;
  a2[4] = v20;
  a2[5] = v12;
  result = *&v16;
  v14 = v17;
  *a2 = v16;
  a2[1] = v14;
  return result;
}

uint64_t sub_1CF5D8358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();

  swift_getWitnessTable();
  result = sub_1CF9E6FE8();
  *a3 = result;
  return result;
}

void sub_1CF5D8458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    for (i = (v8 + 32); ; ++i)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = *i;

      v14 = objc_autoreleasePoolPush();
      (*(*a3 + 2504))(a7, v13);
      if (v7)
      {
        break;
      }

      objc_autoreleasePoolPop(v14);

      if (!--v9)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
    __break(1u);
  }
}

uint64_t sub_1CF5D8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v25 = a2;
  v8 = *v3;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v5[8];
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  result = (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v18 = *(v8 + 616);
    v24[0] = *(v8 + 632);
    v24[1] = v18;
    v26[0] = v18;
    v26[1] = v24[0];
    type metadata accessor for TestingOperation();
    v27 = sub_1CF9E6DA8();
    v19 = v25;
    v20 = (*(*v5[3] + 184))(a1, v25, a3);
    if (v4)
    {
    }

    else
    {
      *&v26[0] = v20;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E6E08();
      *&v26[0] = (*(*v5[2] + 296))(a1, v19, a3);
      sub_1CF9E6E08();
      v21 = v5 + qword_1EDEBBC20;
      os_unfair_lock_lock((v5 + qword_1EDEBBC20));
      sub_1CF5D8904((v21 + 8), &v27, v5, a1);
      swift_getAssociatedTypeWitness();
      v22 = *(swift_getAssociatedConformanceWitness() + 40);
      sub_1CF9E7068();
      sub_1CF9E6708();
      os_unfair_lock_unlock(v21);
      v23 = v5 + qword_1EDEBBC28;
      os_unfair_lock_lock((v5 + qword_1EDEBBC28));
      sub_1CF5D8A6C((v23 + 8), &v27, v5, a1, v25, a3, v26);
      os_unfair_lock_unlock(v23);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5D8904(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  v14 = *a1;
  v15 = a1[1];
  v7 = *a3;
  v8 = *(*a3 + 616);
  v9 = *(*a3 + 632);
  v10 = type metadata accessor for FileTreeChangeAggregator();
  result = sub_1CF5AF9C0(a3, a4, v10);
  if (!v4)
  {
    v12 = *(v7 + 624);
    v13 = *(v7 + 640);
    type metadata accessor for TestingOperation();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    return sub_1CF9E6E08();
  }

  return result;
}

uint64_t sub_1CF5D8A6C(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31[2] = a2;
  v32 = a7;
  v11 = *a3;
  v12 = *a3;
  v13 = a1[3];
  v39 = a1[2];
  v40 = v13;
  v14 = a1[5];
  v41 = a1[4];
  v42 = v14;
  v15 = a1[1];
  v37 = *a1;
  v38 = v15;
  v16 = v12;
  v17 = sub_1CF057B28();
  v18 = *(v11 + 624);
  v19 = *(v11 + 640);
  v20 = type metadata accessor for FileTreeChangeAggregator();
  v21 = sub_1CF5AF9C0(v17, a4, v20);

  if (v7)
  {
    *v32 = v7;
  }

  else
  {
    v43 = v21;
    MEMORY[0x1EEE9AC00](result);
    v30[0] = *(v16 + 616);
    v30[1] = v18;
    v32 = v21;
    v23 = *(v16 + 632);
    v30[5] = a6;
    v31[0] = swift_getKeyPath();
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v31[0]);
    v30[2] = a5;
    v30[3] = a6;
    v30[4] = v24;
    v33 = v18;
    v34 = v30[0];
    v35 = v19;
    v36 = v23;
    type metadata accessor for TestingOperation();
    v25 = sub_1CF9E6E58();
    v33 = v30[0];
    v34 = v18;
    v35 = v23;
    v36 = v19;
    v26 = type metadata accessor for TestingOperation();
    WitnessTable = swift_getWitnessTable();
    v29 = sub_1CF054A5C(sub_1CF4D3194, v30, v25, v26, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v28);

    v33 = v29;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    return sub_1CF9E6E08();
  }

  return result;
}

uint64_t sub_1CF5D8D14()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[90];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

BOOL sub_1CF5D8DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v30 = *v4;
  v31 = a2;
  v6 = v30[77];
  v29 = v30[79];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  (*(v9 + 16))(v12, a1, v8, v16);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    v20 = v4[3];
    v21 = v30[78];
    v22 = v30[80];
    v34 = v6;
    v35 = v21;
    v36 = v29;
    v37 = v22;
    v23 = type metadata accessor for Materialization.MaterializeItem();
    v24 = v38;
    v25 = (*(*v20 + 328))(v18, v23, 0, v31, v32, v33);
    if (v24)
    {
      (*(v13 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      v26 = v25;
      (*(v13 + 8))(v18, AssociatedTypeWitness);
      return (v26 & 1) != 0;
    }
  }

  return v19;
}

id sub_1CF5D9124(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t (*sub_1CF5D9178(uint64_t *a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1CF5DA4C8(v8);
  v8[9] = sub_1CF5D9690(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5E1590;
}

void (*sub_1CF5D9224(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CEFCCBDC(a2, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
  v7[9] = sub_1CF5DA4F0(v7);
  v7[10] = sub_1CF5D9880(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D9328;
}

void sub_1CF5D9328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1CEFCCC44(v3, &unk_1EC4BF650, &unk_1CF9FCB40);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_1CF5D93B4(uint64_t *a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1CF5DA4C8(v8);
  v8[9] = sub_1CF5D9B38(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5E1590;
}

void (*sub_1CF5D9460(uint64_t *a1, void *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 64) = a2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a2;
  v6[9] = sub_1CF5DA4C8(v6);
  v6[10] = sub_1CF5DA04C(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D9510;
}

void sub_1CF5D9510(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();

  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1CF5D9580(uint64_t *a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1CF5DA4C8(v8);
  v8[9] = sub_1CF5DA29C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D962C;
}

void sub_1CF5D9630(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1CF5D9690(uint64_t *a1, uint64_t a2, char a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 32) = a3;
  *(v10 + 8) = a2;
  *(v10 + 16) = v4;
  v12 = *v4;
  v13 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 33) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CF7D0118();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CF7C55E8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1CF7BF2C0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 24) = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1CF5D97E8;
}

void sub_1CF5D97E8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 33);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1CF1D4F30(v4, v1[1], *(v1 + 32), v2, v5);
    }
  }

  else if (*(*a1 + 33))
  {
    sub_1CF1D5A10(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

void (*sub_1CF5D9880(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_1CF7BF520(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1CF7D4234();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1CF7CD964(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_1CF7BF520(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1CF5D9A38;
}

void sub_1CF5D9A38(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 48);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[5];
    if ((*a1)[6])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[4];
      sub_1CEFCCBDC(v1[1], v8, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF1D5354(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[6])
  {
    v6 = v1[5];
    v7 = *v1[2];
    sub_1CEFCCC44(*(v7 + 48) + *(v1[3] + 72) * v6, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CF1D0920(v6, v7);
  }

  v9 = v1[4];
  v10 = *v1;

  free(v9);

  free(v1);
}

void (*sub_1CF5D9B38(uint64_t *a1, uint64_t a2, char a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x60uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 88) = a3;
  *v10 = a2;
  *(v10 + 8) = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  *(v11 + 16) = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  *(v11 + 24) = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    *(v11 + 32) = swift_coroFrameAlloc();
    *(v11 + 40) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v11 + 32) = malloc(*(v13 + 64));
    *(v11 + 40) = malloc(v15);
    v16 = malloc(v15);
  }

  *(v11 + 48) = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30) - 8) + 64);
  if (v9)
  {
    *(v11 + 56) = swift_coroFrameAlloc();
    *(v11 + 64) = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    *(v11 + 56) = malloc(v17);
    *(v11 + 64) = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  *(v11 + 72) = v18;
  v20 = *v5;
  v22 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 89) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      *(v11 + 80) = v22;
      if (v26)
      {
LABEL_17:
        sub_1CEFE55D0(*(*v5 + 56) + *(v14 + 72) * v22, v19, &unk_1EC4C04C0, &qword_1CFA07B10);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1CF5D9E1C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1CF7D4794();
      goto LABEL_16;
    }

    sub_1CF7CE3B0(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_1CF7BF2C0(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      *(v11 + 80) = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF5D9E1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_1CEFCCBDC(v5, v6, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 89);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_1CEFE55D0(v9, *(v2 + 5), &unk_1EC4C04C0, &qword_1CFA07B10);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        v16 = *(v2 + 88);
        sub_1CEFE55D0(v13, v14, &unk_1EC4C04C0, &qword_1CFA07B10);
        sub_1CF1D5494(v12, v15, v16, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 8);
    sub_1CEFCCBDC(v5, v17, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 89);
    v9 = *(v2 + 8);
    if (v18 != 1)
    {
      v19 = *(v2 + 1);
      sub_1CEFE55D0(v9, *(v2 + 6), &unk_1EC4C04C0, &qword_1CFA07B10);
      v11 = *v19;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1CEFE55D0(v13, v11[7] + *(*(v2 + 3) + 72) * v12, &unk_1EC4C04C0, &qword_1CFA07B10);
      goto LABEL_10;
    }
  }

  sub_1CEFCCC44(v9, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  if (v8)
  {
    sub_1CF1D0D60(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  sub_1CEFCCC44(v21, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*sub_1CF5DA04C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_1CEFE863C(a2);
  *(v9 + 25) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1CF7D4DB4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1CF7CEA10(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1CEFE863C(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for NSFileProviderItemIdentifier(0);
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 32 * v11;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 2;
  }

  *v9 = v23;
  *(v9 + 8) = v24;
  *(v9 + 16) = v25;
  *(v9 + 24) = v26;
  return sub_1CF5DA1B8;
}

void sub_1CF5DA1B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 25);
  if (v4 == 2)
  {
    if (*(*a1 + 25))
    {
      v6 = v1[6];
      v7 = *v1[5];
      sub_1CF043504(*(v7 + 48) + 8 * v6, type metadata accessor for NSFileProviderItemIdentifier);
      sub_1CF1D1178(v6, v7);
    }
  }

  else
  {
    v8 = *(v1 + 2);
    v9 = v1[6];
    v10 = *v1[5];
    if (v5)
    {
      v11 = v10[7] + 32 * v9;
      *v11 = v2;
      *(v11 + 8) = v8 & 1;
      *(v11 + 16) = v3;
      *(v11 + 24) = v4 & 1;
    }

    else
    {
      v12 = v1[4];
      sub_1CF1D5560(v9, v12, v2, v8 & 1, v3, v4 & 1, v10);
      v13 = v12;
    }
  }

  free(v1);
}

void (*sub_1CF5DA29C(uint64_t *a1, uint64_t a2, char a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 25) = a3;
  *(v10 + 32) = a2;
  *(v10 + 40) = v4;
  v12 = *v4;
  v13 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 26) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CF7D4F34();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CF7CED04(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1CF7BF2C0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 48) = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 32 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 2;
  }

  *v11 = v25;
  *(v11 + 8) = v26;
  *(v11 + 16) = v27;
  *(v11 + 24) = v28;
  return sub_1CF5DA418;
}

void sub_1CF5DA418(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 26);
  if (v4 == 2)
  {
    if (*(*a1 + 26))
    {
      sub_1CF1D134C(v1[6], *v1[5]);
    }
  }

  else
  {
    v6 = *(v1 + 2);
    v7 = v1[6];
    v8 = *v1[5];
    if (v5)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v6 & 1;
      *(v9 + 16) = v3;
      *(v9 + 24) = v4 & 1;
    }

    else
    {
      sub_1CF1D55B8(v7, v1[4], *(v1 + 25), v2, v6 & 1, v3, v4 & 1, v8);
    }
  }

  free(v1);
}

uint64_t (*sub_1CF5DA4C8(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CF5E14EC;
}

uint64_t (*sub_1CF5DA4F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CF5DA518;
}

unint64_t sub_1CF5DA524(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1CF5DA5A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v4 = v1[4];
      }

      else
      {
        v4 = v1[5];
      }

      return *(*(v4 + 16) + 88);
    }

    else
    {
      if (a1)
      {
        v3 = v1[5];
      }

      else
      {
        v3 = v1[4];
      }

      return *(*(v3 + 16) + 104);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v5 = v1[4];
    }

    else
    {
      v5 = v1[5];
    }

    return *(*(v5 + 16) + 96);
  }

  else
  {
    if (a1 == 6)
    {
      v2 = v1[4];
      return *(*(v2 + 16) + 80);
    }

    if (a1 == 7)
    {
      v2 = v1[5];
      return *(*(v2 + 16) + 80);
    }

    return v1[15];
  }
}

void sub_1CF5DA654(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t **a6, uint64_t a7, void *a8)
{
  v109 = a4;
  v111 = a3;
  v114 = a2;
  v113 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v104 = *(v110 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v98 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v96 - v22;
  v24 = sub_1CF9E63D8();
  v105 = *(v24 - 8);
  v25 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v96 - v28;
  v29 = sub_1CF9E6448();
  v107 = *(v29 - 8);
  v108 = v29;
  v30 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 1);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = (&v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = swift_allocObject();
  v106 = a6;
  v40[2] = a6;
  v40[3] = a7;
  v115 = v40;
  v40[4] = a8;
  v41 = *(a5 + 64);
  *v39 = v41;
  (*(v36 + 104))(v39, *MEMORY[0x1E69E8020], v35);
  v112 = a7;

  v42 = a8;
  v43 = v41;
  LOBYTE(a8) = sub_1CF9E64D8();
  (*(v36 + 8))(v39, v35);
  if ((a8 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v35 = sub_1CF1F7C20(0, v35[2] + 1, 1, v35);
LABEL_28:
    v95 = v35[2];
    v94 = v35[3];
    if (v95 >= v94 >> 1)
    {
      v35 = sub_1CF1F7C20(v94 > 1, v95 + 1, 1, v35);
    }

    v35[2] = v95 + 1;
    sub_1CEFE55D0(v41, v35 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v95, &unk_1EC4C5230, &unk_1CF9FE4C0);
    *(*(v42 + 56) + 8 * v23) = v35;
    *(v39 + a5) = v42;
    swift_endAccess();
LABEL_31:

    return;
  }

  if (*(a5 + 152) == 1)
  {
    v44 = FPDomainUnavailableError();
    if (v44)
    {
      _s3__C4CodeOMa_1(0);
      v117 = -1004;
      v45 = v44;
      sub_1CF5DFB70(&qword_1EDEA3590, _s3__C4CodeOMa_1);
      if ((sub_1CF9E5658() & 1) == 0)
      {
        v73 = v44;
        (v106)(0, v44);

        goto LABEL_18;
      }
    }

    (v106)(v42, 0);

LABEL_18:

    return;
  }

  v39 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!(*(v39 + a5))[2] || (sub_1CF7BF2C0(v113, v114), (v46 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v52 = *(v104 + 72);
    v53 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1CF9FA450;
    v112 = v54;
    v55 = (v54 + v53);
    qos_class_self();
    sub_1CF9E63B8();
    v56 = v105;
    v57 = *(v105 + 48);
    v58 = v57(v23, 1, v24);
    v106 = v39;
    if (v58 == 1)
    {
      (*(v56 + 104))(v103, *MEMORY[0x1E69E7FA0], v24);
      if (v57(v23, 1, v24) != 1)
      {
        sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v56 + 32))(v103, v23, v24);
    }

    sub_1CF9E6428();
    v59 = v110;
    v60 = *(v110 + 64);
    v61 = *(v107 + 32);
    v62 = v102;
    v63 = v34;
    v64 = v108;
    v61(&v102[v60], v63, v108);
    v65 = v111;
    v66 = v109;
    *v55 = v111;
    v55[1] = v66;
    v61(v55 + *(v59 + 64), &v62[v60], v64);
    v67 = (v55 + *(v59 + 80));
    v68 = swift_allocObject();
    v69 = v115;
    *(v68 + 16) = sub_1CF5DFDC0;
    *(v68 + 24) = v69;
    *v67 = sub_1CF5E14E4;
    v67[1] = v68;
    v70 = v106;
    swift_beginAccess();

    sub_1CEFD09A0(v65);
    v71 = *(v70 + a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v70 + a5);
    *(v70 + a5) = 0x8000000000000000;
    sub_1CF1D35F8(v112, v113, v114, isUniquelyReferenced_nonNull_native);
    *(v70 + a5) = v116;
    swift_endAccess();
    goto LABEL_31;
  }

  qos_class_self();
  v47 = v100;
  sub_1CF9E63B8();
  v48 = v105;
  v49 = *(v105 + 48);
  v50 = v49(v47, 1, v24);
  v96 = v42;
  if (v50 == 1)
  {
    (*(v48 + 104))(v97, *MEMORY[0x1E69E7FA0], v24);
    v51 = v49(v47, 1, v24);
    v41 = v98;
    if (v51 != 1)
    {
      sub_1CEFCCC44(v47, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v48 + 32))(v97, v47, v24);
    v41 = v98;
  }

  v74 = v99;
  sub_1CF9E6428();
  v75 = v110;
  v76 = *(v110 + 64);
  v77 = v108;
  v78 = *(v107 + 32);
  v79 = v101;
  v78(&v101[v76], v74, v108);
  v80 = v111;
  v81 = v109;
  *v41 = v111;
  v41[1] = v81;
  v78(v41 + *(v75 + 64), &v79[v76], v77);
  v35 = (v41 + *(v75 + 80));
  v82 = swift_allocObject();
  v83 = v115;
  *(v82 + 16) = sub_1CF5DFDC0;
  *(v82 + 24) = v83;
  *v35 = sub_1CF5E14E4;
  v35[1] = v82;
  swift_beginAccess();

  sub_1CEFD09A0(v80);
  v84 = *(v39 + a5);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *(v39 + a5);
  v85 = v116;
  *(v39 + a5) = 0x8000000000000000;
  v86 = v114;
  v23 = sub_1CF7BF2C0(v113, v114);
  v88 = *(v85 + 16);
  v89 = (v87 & 1) == 0;
  v90 = v88 + v89;
  if (__OFADD__(v88, v89))
  {
    goto LABEL_33;
  }

  v91 = v87;
  if (*(v85 + 24) >= v90)
  {
    goto LABEL_25;
  }

  sub_1CF7CAB14(v90, v42);
  v92 = sub_1CF7BF2C0(v113, v86);
  if ((v91 & 1) == (v93 & 1))
  {
    v23 = v92;
    while ((v91 & 1) == 0)
    {
      while (1)
      {

        __break(1u);
LABEL_25:
        if ((v42 & 1) == 0)
        {
          break;
        }

        if (v91)
        {
          goto LABEL_27;
        }
      }

      sub_1CF7D296C();
    }

LABEL_27:
    v42 = v116;
    v35 = *(*(v116 + 56) + 8 * v23);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF5DB108(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v131 = a4;
  v133 = a3;
  v134 = a1;
  v135 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v126 = *(v132 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v119 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v112 - v24;
  v26 = sub_1CF9E63D8();
  v127 = *(v26 - 8);
  v128 = v26;
  v27 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v123 = &v112 - v30;
  v31 = sub_1CF9E6448();
  v129 = *(v31 - 8);
  v130 = v31;
  v32 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v118 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v121 = &v112 - v35;
  v36 = sub_1CF9E64A8();
  v37 = *(v36 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = swift_allocObject();
  v114 = a6;
  v41[2] = a6;
  v41[3] = a7;
  v42 = v41;
  v124 = a8;
  v41[4] = a8;
  v41[5] = a9;
  v41[6] = a10;
  v43 = *(a5 + 64);
  *v40 = v43;
  (*(v37 + 104))(v40, *MEMORY[0x1E69E8020], v36);
  v115 = a7;

  v125 = a9;

  v44 = a10;
  v45 = v43;
  v46 = sub_1CF9E64D8();
  v48 = *(v37 + 8);
  v47 = v37 + 8;
  v48(v40, v36);
  if ((v46 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*(a5 + 152) == 1)
  {
    v49 = FPDomainUnavailableError();
    v50 = v49;
    if (!v49)
    {
LABEL_21:
      (v124)(v44, 0);

LABEL_23:

      return;
    }

    v51 = v44;
    v52 = v49;
    v53 = sub_1CF9E57E8();
    v54 = [v53 domain];
    v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v56;

    v58 = *MEMORY[0x1E6967190];
    if (v55 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v57 == v59)
    {
    }

    else
    {
      v89 = sub_1CF9E8048();

      if ((v89 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v90 = [v53 code];
    if (v90 == *MEMORY[0x1E69671C8] || [v53 code] == -1004)
    {

      v44 = v51;
      goto LABEL_21;
    }

LABEL_22:
    v91 = v50;
    v114(0, v50);

    goto LABEL_23;
  }

  v43 = a5;
  v60 = qword_1EC4EBD78;
  swift_beginAccess();
  v61 = *(*(a5 + v60) + 16);
  v124 = v60;
  if (!v61 || (sub_1CF7BF2C0(v134, v135), (v62 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v69 = *(v126 + 72);
    v70 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1CF9FA450;
    v126 = v71;
    v72 = (v71 + v70);
    qos_class_self();
    sub_1CF9E63B8();
    v74 = v127;
    v73 = v128;
    v75 = *(v127 + 48);
    if (v75(v25, 1, v128) == 1)
    {
      (*(v74 + 104))(v123, *MEMORY[0x1E69E7FA0], v73);
      if (v75(v25, 1, v73) != 1)
      {
        sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v74 + 32))(v123, v25, v73);
    }

    v76 = v121;
    sub_1CF9E6428();
    v77 = v132;
    v78 = *(v132 + 64);
    v79 = v130;
    v80 = *(v129 + 32);
    v81 = v122;
    v80(&v122[v78], v76, v130);
    v82 = v133;
    v83 = v131;
    *v72 = v133;
    v72[1] = v83;
    v80(v72 + *(v77 + 64), &v81[v78], v79);
    v84 = (v72 + *(v77 + 80));
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1CF5DFD9C;
    *(v85 + 24) = v42;
    *v84 = sub_1CF5E14E4;
    v84[1] = v85;
    v86 = v124;
    swift_beginAccess();

    sub_1CEFD09A0(v82);
    v87 = *(v86 + v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(v86 + v43);
    *(v86 + v43) = 0x8000000000000000;
    sub_1CF1D35F8(v126, v134, v135, isUniquelyReferenced_nonNull_native);
    *(v86 + v43) = v136;
    goto LABEL_36;
  }

  qos_class_self();
  v63 = v119;
  sub_1CF9E63B8();
  v65 = v127;
  v64 = v128;
  v66 = *(v127 + 48);
  v67 = v66(v63, 1, v128);
  v113 = v44;
  if (v67 == 1)
  {
    (*(v65 + 104))(v116, *MEMORY[0x1E69E7FA0], v64);
    v68 = v66(v63, 1, v64);
    a5 = v117;
    if (v68 != 1)
    {
      sub_1CEFCCC44(v63, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v65 + 32))(v116, v63, v64);
    a5 = v117;
  }

  v92 = v118;
  sub_1CF9E6428();
  v93 = v132;
  v94 = *(v132 + 64);
  v95 = v130;
  v96 = *(v129 + 32);
  v97 = v120;
  v96(&v120[v94], v92, v130);
  v98 = v133;
  v99 = v131;
  *a5 = v133;
  *(a5 + 8) = v99;
  v96((a5 + *(v93 + 64)), &v97[v94], v95);
  v100 = (a5 + *(v93 + 80));
  v101 = swift_allocObject();
  *(v101 + 16) = sub_1CF5DFD9C;
  *(v101 + 24) = v42;
  *v100 = sub_1CF5E14E4;
  v100[1] = v101;
  v40 = v124;
  swift_beginAccess();

  sub_1CEFD09A0(v98);
  v102 = *(v40 + v43);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *(v40 + v43);
  v36 = v136;
  *(v40 + v43) = 0x8000000000000000;
  v44 = sub_1CF7BF2C0(v134, v135);
  v104 = v36[2];
  v105 = (v103 & 1) == 0;
  v106 = v104 + v105;
  if (__OFADD__(v104, v105))
  {
    goto LABEL_38;
  }

  v107 = v103;
  if (v36[3] >= v106)
  {
    if (v47)
    {
      if (v103)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_1CF7D296C();
      if (v107)
      {
        goto LABEL_32;
      }
    }

LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  sub_1CF7CAB14(v106, v47);
  v108 = sub_1CF7BF2C0(v134, v135);
  if ((v107 & 1) == (v109 & 1))
  {
    v44 = v108;
    if ((v107 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_32:
    v47 = v136;
    v36 = *(v136[7] + 8 * v44);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v111 = v36[2];
      v110 = v36[3];
      if (v111 >= v110 >> 1)
      {
        v36 = sub_1CF1F7C20(v110 > 1, v111 + 1, 1, v36);
      }

      v36[2] = v111 + 1;
      sub_1CEFE55D0(a5, v36 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v111, &unk_1EC4C5230, &unk_1CF9FE4C0);
      *(*(v47 + 56) + 8 * v44) = v36;
      *(v40 + v43) = v47;
LABEL_36:
      swift_endAccess();

      return;
    }

LABEL_39:
    v36 = sub_1CF1F7C20(0, v36[2] + 1, 1, v36);
    goto LABEL_33;
  }

LABEL_42:

  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF5DBCE0(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, char *a11, char *a12, char *a13)
{
  v112 = a4;
  v114 = a3;
  v117 = a2;
  v116 = a1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v107 = *(v113 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v101 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v103 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v99 - v26;
  v28 = sub_1CF9E63D8();
  v29 = *(v28 - 8);
  v108 = v28;
  v109 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v106 = &v99 - v33;
  v34 = sub_1CF9E6448();
  v110 = *(v34 - 8);
  v111 = v34;
  v35 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v102 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v99 - v38;
  v40 = sub_1CF9E64A8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = (&v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = swift_allocObject();
  *(v45 + 16) = a6;
  *(v45 + 24) = a7;
  v118 = v45;
  v46 = *(a5 + 64);
  *v44 = v46;
  (*(v41 + 104))(v44, *MEMORY[0x1E69E8020], v40);
  v115 = a7;

  v47 = v46;
  v48 = sub_1CF9E64D8();
  v50 = *(v41 + 8);
  v49 = (v41 + 8);
  v50(v44, v40);
  if ((v48 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v48 = sub_1CF1F7C20(0, *(v48 + 16) + 1, 1, v48);
LABEL_23:
    v98 = *(v48 + 16);
    v97 = *(v48 + 24);
    if (v98 >= v97 >> 1)
    {
      v48 = sub_1CF1F7C20(v97 > 1, v98 + 1, 1, v48);
    }

    *(v48 + 16) = v98 + 1;
    sub_1CEFE55D0(v49, v48 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v98, &unk_1EC4C5230, &unk_1CF9FE4C0);
    *(*(v39 + 56) + 8 * a6) = v48;
    *(v44 + a5) = v39;
    swift_endAccess();
LABEL_26:

    return;
  }

  if (*(a5 + 152) == 1)
  {
    v51 = FPDomainUnavailableError();
    (a6)();

    return;
  }

  v99 = a10;
  v44 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!*(*(v44 + a5) + 16) || (sub_1CF7BF2C0(v116, v117), (v52 & 1) == 0))
  {
    v115 = a5;
    v104 = a11;
    v103 = a9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v58 = *(v107 + 72);
    v59 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1CF9FA450;
    v61 = (v60 + v59);
    qos_class_self();
    sub_1CF9E63B8();
    v63 = v108;
    v62 = v109;
    v64 = *(v109 + 48);
    if (v64(v27, 1, v108) == 1)
    {
      (*(v62 + 104))(v106, *MEMORY[0x1E69E7FA0], v63);
      if (v64(v27, 1, v63) != 1)
      {
        sub_1CEFCCC44(v27, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v62 + 32))(v106, v27, v63);
    }

    sub_1CF9E6428();
    v65 = v113;
    v66 = *(v113 + 64);
    v67 = v111;
    v68 = *(v110 + 32);
    v69 = v105;
    v68(&v105[v66], v39, v111);
    v70 = v114;
    v71 = v112;
    *v61 = v114;
    v61[1] = v71;
    v68(v61 + *(v65 + 64), &v69[v66], v67);
    v72 = (v61 + *(v65 + 80));
    v73 = swift_allocObject();
    v74 = v118;
    *(v73 + 16) = v99;
    *(v73 + 24) = v74;
    *v72 = v104;
    v72[1] = v73;
    v75 = v115;
    swift_beginAccess();

    sub_1CEFD09A0(v70);
    v76 = *(v44 + v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v44 + v75);
    *(v44 + v75) = 0x8000000000000000;
    sub_1CF1D35F8(v60, v116, v117, isUniquelyReferenced_nonNull_native);
    *(v44 + v75) = v119;
    swift_endAccess();
    goto LABEL_26;
  }

  v105 = a12;
  v106 = a13;
  qos_class_self();
  v53 = v103;
  sub_1CF9E63B8();
  v55 = v108;
  v54 = v109;
  v56 = *(v109 + 48);
  if (v56(v53, 1, v108) == 1)
  {
    (*(v54 + 104))(v100, *MEMORY[0x1E69E7FA0], v55);
    v57 = v56(v53, 1, v55);
    v49 = v101;
    if (v57 != 1)
    {
      sub_1CEFCCC44(v53, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v54 + 32))(v100, v53, v55);
    v49 = v101;
  }

  v78 = v102;
  sub_1CF9E6428();
  v79 = v113;
  v80 = *(v113 + 64);
  v81 = v111;
  v82 = *(v110 + 32);
  v83 = v104;
  v82(&v104[v80], v78, v111);
  v84 = v114;
  v85 = v112;
  *v49 = v114;
  v49[1] = v85;
  v82(v49 + *(v79 + 64), &v83[v80], v81);
  v86 = (v49 + *(v79 + 80));
  v87 = swift_allocObject();
  v88 = v118;
  *(v87 + 16) = v99;
  *(v87 + 24) = v88;
  *v86 = v106;
  v86[1] = v87;
  swift_beginAccess();

  sub_1CEFD09A0(v84);
  v89 = *(v44 + a5);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v44 + a5);
  v48 = v119;
  *(v44 + a5) = 0x8000000000000000;
  a6 = sub_1CF7BF2C0(v116, v117);
  v91 = *(v48 + 16);
  v92 = (v90 & 1) == 0;
  v93 = v91 + v92;
  if (__OFADD__(v91, v92))
  {
    goto LABEL_28;
  }

  v94 = v90;
  if (*(v48 + 24) >= v93)
  {
    goto LABEL_20;
  }

  sub_1CF7CAB14(v93, v39);
  v95 = sub_1CF7BF2C0(v116, v117);
  if ((v94 & 1) == (v96 & 1))
  {
    a6 = v95;
    while ((v94 & 1) == 0)
    {
      while (1)
      {

        __break(1u);
LABEL_20:
        if ((v39 & 1) == 0)
        {
          break;
        }

        if (v94)
        {
          goto LABEL_22;
        }
      }

      sub_1CF7D296C();
    }

LABEL_22:
    v39 = v119;
    v48 = *(*(v119 + 56) + 8 * a6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  sub_1CF9E8108();
  __break(1u);
}

unint64_t sub_1CF5DC71C()
{
  result = qword_1EC4C1A78;
  if (!qword_1EC4C1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A78);
  }

  return result;
}

uint64_t sub_1CF5DC770(void *a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = *&v1[qword_1EDEADB30];
  *&v1[qword_1EDEADB30] = a1;
  v5 = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF5DC874()
{
  v1 = *(v0 + 184);
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_1CF5DC880(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unint64_t a10)
{
  v142 = a3;
  v144 = a2;
  v147 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v137 = *(v143 - 8);
  v15 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v129 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v121 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v131 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v121 - v25;
  v139 = sub_1CF9E63D8();
  v138 = *(v139 - 8);
  v26 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v128 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v121 - v29;
  v141 = sub_1CF9E6448();
  v140 = *(v141 - 8);
  v30 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v133 = &v121 - v33;
  v123 = sub_1CF9E5CF8();
  v122 = *(v123 - 8);
  v34 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E64A8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = swift_allocObject();
  v146 = a5;
  *(v41 + 16) = a5;
  *(v41 + 24) = a6;
  *(v41 + 32) = a7;
  *(v41 + 40) = a8;
  v124 = a8;
  v42 = a9;
  *(v41 + 48) = a9;
  v43 = v41;
  *(v41 + 56) = a10;
  v44 = *(a4 + 64);
  *v40 = v44;
  (*(v37 + 104))(v40, *MEMORY[0x1E69E8020], v36);
  v145 = a6;

  v125 = a7;

  v126 = a10;
  sub_1CEFD09A0(a10);
  v45 = v44;
  v46 = sub_1CF9E64D8();
  v48 = *(v37 + 8);
  v47 = (v37 + 8);
  v48(v40, v36);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(a4 + 152) == 1)
  {
    v154 = 0;
    memset(v153, 0, sizeof(v153));
    v49 = FPDomainUnavailableError();
    if (v49)
    {
      v50 = v49;
      v51 = v49;
      (v146)(v50);

LABEL_34:
      sub_1CEFCCC44(v153, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    sub_1CEFCCBDC(v153, &v148, &unk_1EC4C1B30, &qword_1CFA05300);
    v70 = v145;
    if (!v149)
    {
      sub_1CEFCCC44(&v148, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CF24CD3C();
      v118 = swift_allocError();
      *v119 = 4;
      *(v119 + 8) = 0u;
      *(v119 + 24) = 0u;
      *(v119 + 40) = 0;
      *(v119 + 48) = 9;
      v146();

      goto LABEL_34;
    }

    sub_1CF054EA0(&v148, &v150);
    v71 = *(v125 + 16);
    v72 = v126;
    sub_1CF9042A4(v126);
    v74 = v73;

    v75 = v124;
    sub_1CF5DBCE0(v124, a9, v72, v74, v71, v146, v70, &unk_1F4C0AF40, byte_1F4C0AF68, sub_1CF481760, sub_1CF5E14E4, byte_1F4C0AF90, sub_1CF5E14E4);
    v42 = v70;

    a7 = v151;
    v147 = v152;
    v144 = __swift_project_boxed_opaque_existential_1(&v150, v151);
    a4 = sub_1CF9042A4(v72);
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v36 = swift_allocObject();
    *(v36 + 152) = a9;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0u;
    *(v36 + 48) = 1;
    *(v36 + 56) = 0u;
    *(v36 + 72) = 0u;
    *(v36 + 88) = 0;
    *(v36 + 120) = a4;
    *(v36 + 128) = v77;
    *(v36 + 136) = 0;
    *(v36 + 144) = v75;
    *(v36 + 96) = xmmword_1CFA04E20;
    *(v36 + 112) = 0;
    v78 = v121;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v80 = v79;
    (*(v122 + 8))(v78, v123);
    v81 = v80 * 1000000000.0;
    if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v81 > -9.22337204e18)
    {
      if (v81 < 9.22337204e18)
      {
        sub_1CF5215C0(v36);

        __swift_destroy_boxed_opaque_existential_1(&v150);
        goto LABEL_34;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v52 = qword_1EC4EBD70;
  swift_beginAccess();
  v53 = *(*(a4 + v52) + 16);
  v127 = v43;
  if (!v53 || (, sub_1CEFE863C(v147), v55 = v54, , (v55 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C00, &qword_1CFA18A10);
    v62 = *(v137 + 72);
    v63 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v64 = swift_allocObject();
    *(v64 + 1) = xmmword_1CF9FA450;
    v146 = v64;
    v65 = v64 + v63;
    qos_class_self();
    v66 = v134;
    sub_1CF9E63B8();
    v67 = v138;
    v68 = *(v138 + 48);
    v69 = v139;
    if (v68(v66, 1, v139) == 1)
    {
      (*(v67 + 104))(v136, *MEMORY[0x1E69E7FA0], v69);
      if (v68(v66, 1, v69) != 1)
      {
        sub_1CEFCCC44(v66, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v67 + 32))(v136, v66, v69);
    }

    v82 = v133;
    sub_1CF9E6428();
    v83 = v143;
    v84 = *(v143 + 64);
    v85 = *(v140 + 32);
    v86 = v135;
    v87 = v141;
    v85(&v135[v84], v82, v141);
    v88 = v144;
    v89 = v142;
    *v65 = v144;
    *(v65 + 1) = v89;
    v85(&v65[*(v83 + 64)], &v86[v84], v87);
    v90 = &v65[*(v83 + 80)];
    v91 = swift_allocObject();
    v92 = v127;
    *(v91 + 16) = sub_1CF5DFDAC;
    *(v91 + 24) = v92;
    *v90 = sub_1CF5E14E4;
    *(v90 + 1) = v91;
    swift_beginAccess();

    sub_1CEFD09A0(v88);
    v93 = v147;
    v94 = *(a4 + v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = *(a4 + v52);
    *(a4 + v52) = 0x8000000000000000;
    sub_1CF1D348C(v146, v93, isUniquelyReferenced_nonNull_native);

    *(a4 + v52) = v148;
    goto LABEL_32;
  }

  qos_class_self();
  v56 = v131;
  sub_1CF9E63B8();
  v57 = v138;
  v58 = *(v138 + 48);
  v59 = v139;
  if (v58(v56, 1, v139) == 1)
  {
    (*(v57 + 104))(v128, *MEMORY[0x1E69E7FA0], v59);
    v60 = v58(v56, 1, v59);
    v61 = v129;
    if (v60 != 1)
    {
      sub_1CEFCCC44(v56, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v57 + 32))(v128, v56, v59);
    v61 = v129;
  }

  v96 = v130;
  sub_1CF9E6428();
  v97 = v143;
  v98 = *(v143 + 64);
  v99 = *(v140 + 32);
  v100 = v132;
  v101 = v141;
  v99(&v132[v98], v96, v141);
  v102 = v144;
  v103 = v142;
  *v61 = v144;
  *(v61 + 1) = v103;
  v99(&v61[*(v97 + 64)], &v100[v98], v101);
  v104 = &v61[*(v97 + 80)];
  v105 = swift_allocObject();
  v46 = v127;
  *(v105 + 16) = sub_1CF5DFDAC;
  *(v105 + 24) = v46;
  *v104 = sub_1CF5E14E4;
  *(v104 + 1) = v105;
  swift_beginAccess();

  sub_1CEFD09A0(v102);
  v106 = *(a4 + v52);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v52;
  v109 = v107;
  *&v148 = *(a4 + v108);
  v47 = v148;
  v36 = a4;
  v42 = v108;
  *(a4 + v108) = 0x8000000000000000;
  a7 = sub_1CEFE863C(v147);
  v111 = v47[2];
  v112 = (v110 & 1) == 0;
  v113 = v111 + v112;
  if (__OFADD__(v111, v112))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LOBYTE(v75) = v110;
  a4 = v61;
  if (v47[3] >= v113)
  {
    if (v109)
    {
      if ((v110 & 1) == 0)
      {
LABEL_43:

        sub_1CF5DE5B8(v126);
        __break(1u);
        goto LABEL_44;
      }

LABEL_28:
      v46 = v148;
      v47 = *(*(v148 + 56) + 8 * a7);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_29:
        v117 = v47[2];
        v116 = v47[3];
        if (v117 >= v116 >> 1)
        {
          v47 = sub_1CF1F7BFC(v116 > 1, v117 + 1, 1, v47);
        }

        v47[2] = v117 + 1;
        sub_1CEFE55D0(a4, v47 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v117, &qword_1EC4BE670, &qword_1CF9FE4D0);
        *(*(v46 + 56) + 8 * a7) = v47;
        *(v36 + v42) = v46;
LABEL_32:
        swift_endAccess();
      }

LABEL_38:
      v47 = sub_1CF1F7BFC(0, v47[2] + 1, 1, v47);
      goto LABEL_29;
    }

LABEL_42:
    sub_1CF7D2808();
    if ((v75 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  sub_1CF7CA84C(v113, v109);
  v114 = sub_1CEFE863C(v147);
  if ((v75 & 1) == (v115 & 1))
  {
    a7 = v114;
    if ((v75 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

LABEL_44:

  type metadata accessor for NSFileProviderItemIdentifier(0);
  sub_1CF5DE5B8(v126);
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF5DD734(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA0, &qword_1CFA0CD20);
    inited = swift_initStackObject();
    v6 = inited;
    *(inited + 16) = xmmword_1CF9FA440;
    *(inited + 32) = 0x6F6974617265706FLL;
    v7 = 21318;
    if (a3)
    {
      v7 = 20550;
    }

    *(inited + 40) = 0xED0000656469536ELL;
    *(inited + 48) = v7;
    *(inited + 56) = 0xE200000000000000;
    strcpy((inited + 64), "operationType");
    *(inited + 78) = -4864;
    *(inited + 80) = 0x7274537465736572;
    *(inited + 88) = 0xEB000000006D6165;
    v8 = a1;
    v9 = sub_1CF4E0980(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA8, &qword_1CFA0CD28);
    swift_arrayDestroy();
    sub_1CF7BB1B8(v9);

    v10 = sub_1CF9E6618();

    v11 = sub_1CF9E57E8();
    [v8 postReportWithCategory:1 type:1 payload:v10 error:v11];
  }
}

uint64_t sub_1CF5DD8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E496C6C61 && a2 == 0xEA00000000006465 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E6968746F6ELL && a2 == 0xEE0064657865646ELL || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7865646E49746F6ELL && a2 == 0xEB00000000676E69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF5DDA9C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1A98, &qword_1CFA0CC88);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v46 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AA0, &qword_1CFA0CC90);
  v54 = *(v57 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v46 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AA8, &qword_1CFA0CC98);
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v59 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AB0, &qword_1CFA0CCA0);
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AB8, &qword_1CFA0CCA8);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1AC0, &unk_1CFA0CCB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CF5DE324();
  v23 = v62;
  sub_1CF9E8298();
  if (v23)
  {
    goto LABEL_10;
  }

  v21 = v15;
  v47 = v12;
  v48 = 0;
  v24 = v59;
  v25 = v60;
  v62 = v17;
  v26 = sub_1CF9E7DF8();
  v27 = (2 * *(v26 + 16)) | 1;
  v63 = v26;
  v64 = v26 + 32;
  v65 = 0;
  v66 = v27;
  v28 = sub_1CF18BE0C();
  v29 = v16;
  if (v28 == 5 || v65 != v66 >> 1)
  {
    v21 = sub_1CF9E79E8();
    swift_allocError();
    v34 = v33;
    v35 = v20;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0) + 48);
    *v34 = &type metadata for DatabaseIndexAnchor;
    sub_1CF9E7C98();
    sub_1CF9E79D8();
    (*(*(v21 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v62 + 8))(v35, v16);
    swift_unknownObjectRelease();
LABEL_10:
    v37 = v61;
    goto LABEL_11;
  }

  if (v28 <= 1u)
  {
    if (!v28)
    {
      v67 = 0;
      sub_1CF5DE4C8();
      v39 = v21;
      v40 = v48;
      sub_1CF9E7C88();
      v21 = v40;
      if (!v40)
      {
        v45 = v47;
        v21 = sub_1CF9E7D78();
        (*(v49 + 8))(v39, v45);
      }

      (*(v62 + 8))(v20, v29);
      swift_unknownObjectRelease();
      v37 = v61;
      goto LABEL_11;
    }

    v67 = 1;
    sub_1CF5DE474();
    v44 = v48;
    sub_1CF9E7C88();
    if (v44)
    {
LABEL_21:
      (*(v62 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v37 = v61;
      goto LABEL_11;
    }

    (*(v50 + 8))(v11, v52);
    (*(v62 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v21 = 0;
LABEL_26:
    v37 = v61;
    goto LABEL_11;
  }

  if (v28 == 2)
  {
    v67 = 2;
    sub_1CF5DE420();
    v41 = v48;
    sub_1CF9E7C88();
    v42 = v62;
    if (v41)
    {
      goto LABEL_21;
    }

    (*(v51 + 8))(v24, v53);
    (*(v42 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v21 = 1;
    goto LABEL_26;
  }

  v30 = v62;
  if (v28 == 3)
  {
    v67 = 3;
    sub_1CF5DE3CC();
    v31 = v58;
    v32 = v48;
    sub_1CF9E7C88();
    if (!v32)
    {
      (*(v54 + 8))(v31, v57);
      (*(v30 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v21 = 2;
LABEL_24:
      v37 = v61;
      goto LABEL_11;
    }
  }

  else
  {
    v67 = 4;
    sub_1CF5DE378();
    v43 = v48;
    sub_1CF9E7C88();
    if (!v43)
    {
      (*(v55 + 8))(v25, v56);
      (*(v30 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v21 = 3;
      goto LABEL_24;
    }
  }

  (*(v30 + 8))(v20, v16);
  swift_unknownObjectRelease();
  v37 = v61;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v21;
}

unint64_t sub_1CF5DE324()
{
  result = qword_1EDEA61E8;
  if (!qword_1EDEA61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61E8);
  }

  return result;
}

unint64_t sub_1CF5DE378()
{
  result = qword_1EC4C1AD8;
  if (!qword_1EC4C1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AD8);
  }

  return result;
}

unint64_t sub_1CF5DE3CC()
{
  result = qword_1EC4C1AE0;
  if (!qword_1EC4C1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AE0);
  }

  return result;
}

unint64_t sub_1CF5DE420()
{
  result = qword_1EC4C1AE8;
  if (!qword_1EC4C1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AE8);
  }

  return result;
}

unint64_t sub_1CF5DE474()
{
  result = qword_1EC4C1AF0;
  if (!qword_1EC4C1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AF0);
  }

  return result;
}

unint64_t sub_1CF5DE4C8()
{
  result = qword_1EDEA6208;
  if (!qword_1EDEA6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6208);
  }

  return result;
}

uint64_t sub_1CF5DE51C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_1CF5DE548(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1CF5DE5B8(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF5DE5FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

double sub_1CF5DE680(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t sub_1CF5DE6B8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CF5D49B4(a1, v4);
}

BOOL sub_1CF5DE734(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  return sub_1CF5CD480(a1, *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF5DE770(uint64_t (*a1)(void *), uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_1CF5CFBB8(a1, a2, a3, *(v3 + 32));
}

uint64_t sub_1CF5DE77C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v9 = *(v1 + 16);
  v10 = *(v1 + 40);
  v5 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF5D00A8(a1, v1 + v6, v7, v3, v4);
}

uint64_t sub_1CF5DE848(void *a1, char a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  v12 = *(v2 + 40);
  v13 = *(v2 + 16);
  v7 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF5D0548(a1, a2 & 1, *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v8, *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & ~*(v10 + 80)), v5, v6);
}

uint64_t sub_1CF5DE99C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v9 = *(v2 + 16);
  v10 = *(v2 + 40);
  v6 = *(v2 + 56);
  type metadata accessor for UserRequest();
  sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  sub_1CF9E6448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v7 = *(swift_getTupleTypeMetadata() - 8);
  return sub_1CF5CFE1C(a1, a2, *(v2 + 64), *(v2 + 72), v2 + ((*(v7 + 80) + 80) & ~*(v7 + 80)), v9, *(&v9 + 1), v5, v10, *(&v10 + 1));
}

char *sub_1CF5DEAC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF5D0B84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), (v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v6 + 80) + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80)));
}

uint64_t objectdestroy_44Tm()
{
  v9 = *(v0 + 16);
  v10 = *(v0 + 40);
  v1 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));
  v5 = *(v1 + 52);
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(v4 + *(v2 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF5DED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = *(v3 + 40);
  v8 = *(v3 + 56);
  v9 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  return sub_1CF5D4EF4(a1, v3 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v11, *(&v11 + 1), v7, v12, *(&v12 + 1), v8, a2, a3);
}

uint64_t sub_1CF5DEE34(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v13[0] = *(v1 + 64);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  return sub_1CF5C8094(a1, v13, v2) & 1;
}

uint64_t sub_1CF5DEEB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1CF5C8A10(a1, v1[8], v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7);
}

uint64_t sub_1CF5DEFF8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1CF5C73D4(a1, v1[8], v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7);
}

BOOL sub_1CF5DF0EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_1CF5C6A9C(a1, v1[8]);
}

uint64_t objectdestroy_233Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];
  swift_unknownObjectRelease();
  v9 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_1CF5DF228(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF5B3C40(a1, (v1 + 4), v1[16]);
}

uint64_t sub_1CF5DF24C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  return sub_1CF5D8358(a1, a2, a3);
}

unint64_t sub_1CF5DF270(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1CEFCCBDC(result + 32, &v40, &unk_1EC4C1BC0, &qword_1CF9FE630);
  v8 = v40;
  v7 = v41;
  sub_1CF054EA0(v42, v39);
  v9 = *a3;
  result = sub_1CEFE4328(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1CF7C6B84(v14, v5 & 1);
    v16 = *a3;
    result = sub_1CEFE4328(v8, v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1CF9E8108();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    result = sub_1CF054EA0(v39, v18[7] + 40 * result);
    v23 = v18[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_1CF7D0BA4();
  result = v21;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 40 * v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  result = sub_1CF054EA0(v39, v20);
  if (--v3)
  {
LABEL_14:
    v6 += 88;
    v7 = 40;
    v8 = &qword_1CF9FE630;
    while (1)
    {
      sub_1CEFCCBDC(v6, &v40, &unk_1EC4C1BC0, &qword_1CF9FE630);
      v5 = v40;
      v15 = v41;
      sub_1CF054EA0(v42, v39);
      v27 = *a3;
      result = sub_1CEFE4328(v5, v15);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_23;
      }

      v32 = v28;
      if (v27[3] < v31)
      {
        sub_1CF7C6B84(v31, 1);
        v33 = *a3;
        result = sub_1CEFE4328(v5, v15);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v32)
      {
        v25 = result;

        v26 = (v35[7] + 40 * v25);
        __swift_destroy_boxed_opaque_existential_1(v26);
        result = sub_1CF054EA0(v39, v26);
      }

      else
      {
        v35[(result >> 6) + 8] |= 1 << result;
        v36 = (v35[6] + 16 * result);
        *v36 = v5;
        v36[1] = v15;
        result = sub_1CF054EA0(v39, v35[7] + 40 * result);
        v37 = v35[2];
        v13 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v35[2] = v38;
      }

      v6 += 56;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1CF5DF570(uint64_t a1, void (*a2)(uint64_t, void, void, void))
{
  a2(a1, v2[4], v2[2], v2[3]);
}

uint64_t sub_1CF5DF5A8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF5B501C(a1, v1[4]);
}

uint64_t sub_1CF5DF5C8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF5B5250(a1, v1[4]);
}

uint64_t sub_1CF5DF5E8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v3[2] = AssociatedTypeWitness;
  v3[3] = v9;
  v3[4] = AssociatedConformanceWitness;
  v3[5] = v11;
  v12 = *(type metadata accessor for ReconciliationID() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v3[6] = AssociatedTypeWitness;
  v15 = (v13 + 80) & ~v13;
  v3[7] = v9;
  v3[8] = AssociatedConformanceWitness;
  v3[9] = v11;
  v16 = *(type metadata accessor for ThrottlingKey() - 8);
  v17 = (v15 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[8];
  v21 = v1[9];
  v22 = swift_task_alloc();
  v3[10] = v22;
  *v22 = v3;
  v22[1] = sub_1CF5DF7FC;

  return sub_1CF5BA8CC(a1, v18, v19, v20, v21, v1 + v15, v1 + v17);
}

uint64_t sub_1CF5DF7FC()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CF5DF8F0()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5B9FE8(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 17), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_63Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF5DFA40(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1CF5B9E88(a1, *(v1 + 24));
}

uint64_t sub_1CF5DFB14@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1CF5B83E0(*(v1 + 16), *(v1 + 40), a1);
}

uint64_t sub_1CF5DFB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF5DFBB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[7];
  return sub_1CF5BBB58(a1, v2[2], v2[3], v2[5], v2[6], a2);
}

uint64_t sub_1CF5DFC04(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v6 = v1[7];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[8];
  v12 = v1[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1CF0262EC;

  return sub_1CF5BB208(a1, v9, v10, v11, v12, v1 + v8);
}

uint64_t sub_1CF5DFDEC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return result;
    }
  }

  if (a4 == 2)
  {
  }

  if (a4 == 3)
  {
  }

  return result;
}

uint64_t sub_1CF5DFE2C(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1CF5CF754(a1, a2, v2[4], v2[5]);
}

void sub_1CF5DFE6C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5CE558(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), (v2 + v10), *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF5DFF6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CF5CEE58(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
}

uint64_t sub_1CF5DFFE4(void *a1, uint64_t a2)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1CF5CFADC(a1, a2, v2[8], v2 + v10, *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_443Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF5E01A4(void *a1, uint64_t a2)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1CF5CCB30(a1, a2, v2[8], v2 + v10, *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF5E02A4(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5CAE80(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v12, *(v2 + v13), *(v2 + v14), *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v8, v7, v9);
}

void sub_1CF5E03CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CF5CBA94(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
}

uint64_t sub_1CF5E0490@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1CF5CAD18(a1, v2[8], a2);
}

uint64_t objectdestroy_473Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF5E0608(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, char *, void, uint64_t, uint64_t))
{
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 6);
  v10 = *(v3 + 7);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  return a3(a1, a2, *(v3 + 8), &v3[v12], *&v3[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8], v8, v10);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon13DatabaseErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 8)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CF5E07A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 49))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF5E07E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CF5E0830(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1CF5E0880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1CF9E75D8();
    if (v5 <= 0x3F)
    {
      type metadata accessor for JobLockAggregator();
      result = sub_1CF9E75D8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF5E0958(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v11)
  {
    v15 = *(*(v6 - 8) + 64);
  }

  else
  {
    v15 = *(*(v6 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = AssociatedTypeWitness;
  v17 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  v18 = v15 + 7;
  if (v14 < a2)
  {
    v19 = ((v18 + (v17 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v14 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_28:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v14 + (v26 | v25) + 1;
      }
    }
  }

  if (v9 == v14)
  {
    v27 = *(v8 + 48);

    return v27(a1, v9, v16);
  }

  v29 = (a1 + v17) & ~v12;
  if (v13 == v14)
  {
    if (v11 >= 2)
    {
      v31 = (*(v10 + 48))(v29);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *((v18 + v29) & 0xFFFFFFFFFFFFFFF8);
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  if ((v30 + 1) >= 2)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

void sub_1CF5E0BB4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = *(v12 + 64);
  if (v13)
  {
    v16 = v13 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v18 = *(*(AssociatedTypeWitness - 8) + 64) + v14;
  if (!v13)
  {
    ++v15;
  }

  v19 = v15 + 7;
  v20 = ((v19 + (v18 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v19 + (v18 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v17 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v17 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v17)
  {
    if (((v19 + (v18 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = a2 - v17;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + (v18 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = ~v17 + a2;
      bzero(a1, ((v19 + (v18 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v11 == v17)
  {
    v27 = *(v10 + 56);

    v27(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v28 = (a1 + v18) & ~v14;
    if (v16 == v17)
    {
      v29 = *(v12 + 56);

      v29(v28, (a2 + 1));
    }

    else
    {
      v30 = ((v19 + v28) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v30 = 0;
        *v30 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v30 = a2;
      }
    }
  }
}

unint64_t sub_1CF5E0E84()
{
  result = qword_1EC4C1CB8;
  if (!qword_1EC4C1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CB8);
  }

  return result;
}

unint64_t sub_1CF5E0EDC()
{
  result = qword_1EC4C1CC0;
  if (!qword_1EC4C1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CC0);
  }

  return result;
}

unint64_t sub_1CF5E0F34()
{
  result = qword_1EC4C1CC8;
  if (!qword_1EC4C1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CC8);
  }

  return result;
}

unint64_t sub_1CF5E0F8C()
{
  result = qword_1EDEA61F0;
  if (!qword_1EDEA61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61F0);
  }

  return result;
}

unint64_t sub_1CF5E0FE4()
{
  result = qword_1EDEA61F8;
  if (!qword_1EDEA61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61F8);
  }

  return result;
}

unint64_t sub_1CF5E103C()
{
  result = qword_1EDEA61C0;
  if (!qword_1EDEA61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61C0);
  }

  return result;
}

unint64_t sub_1CF5E1094()
{
  result = qword_1EDEA61C8;
  if (!qword_1EDEA61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61C8);
  }

  return result;
}

unint64_t sub_1CF5E10EC()
{
  result = qword_1EDEA61B0;
  if (!qword_1EDEA61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61B0);
  }

  return result;
}

unint64_t sub_1CF5E1144()
{
  result = qword_1EDEA61B8;
  if (!qword_1EDEA61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61B8);
  }

  return result;
}

unint64_t sub_1CF5E119C()
{
  result = qword_1EDEA6190;
  if (!qword_1EDEA6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6190);
  }

  return result;
}

unint64_t sub_1CF5E11F4()
{
  result = qword_1EDEA6198;
  if (!qword_1EDEA6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6198);
  }

  return result;
}

unint64_t sub_1CF5E124C()
{
  result = qword_1EDEA61A0;
  if (!qword_1EDEA61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61A0);
  }

  return result;
}

unint64_t sub_1CF5E12A4()
{
  result = qword_1EDEA61A8;
  if (!qword_1EDEA61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61A8);
  }

  return result;
}

unint64_t sub_1CF5E12FC()
{
  result = qword_1EDEA61D0;
  if (!qword_1EDEA61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61D0);
  }

  return result;
}

unint64_t sub_1CF5E1354()
{
  result = qword_1EDEA61D8;
  if (!qword_1EDEA61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61D8);
  }

  return result;
}

unint64_t sub_1CF5E13AC()
{
  result = qword_1EC4C1CD0;
  if (!qword_1EC4C1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CD0);
  }

  return result;
}

unint64_t sub_1CF5E1404()
{
  result = qword_1EC4C1CD8;
  if (!qword_1EC4C1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CD8);
  }

  return result;
}

unint64_t sub_1CF5E1458()
{
  result = qword_1EC4C1CE0[0];
  if (!qword_1EC4C1CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4C1CE0);
  }

  return result;
}

uint64_t sub_1CF5E15A0(uint64_t a1)
{
  v1 = *(a1 + 560);
  v2 = *(a1 + 544);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF5E1650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v104 = a5;
  v100 = a3;
  v101 = a4;
  v9 = *a2;
  v10 = (*a2 + 88);
  v11 = *(*a2 + 96);
  v12 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = sub_1CF9E75D8();
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v99 = &v74 - v15;
  v91 = sub_1CF9E6118();
  v86 = *(v91 - 8);
  v16 = *(v86 + 64);
  v17 = MEMORY[0x1EEE9AC00](v91);
  v95 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v96 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v74 - v23;
  v97 = v12;
  v98 = v11;
  v24.i64[0] = v12;
  v24.i64[1] = *v10;
  v25.i64[0] = v11;
  v25.i64[1] = *(v9 + 104);
  v89 = v25;
  v103 = v25;
  v94 = v24;
  v102 = v24;
  v26 = type metadata accessor for ItemReconciliation();
  v27 = sub_1CF9E75D8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v74 - v31;
  v93 = v26;
  v92 = *(v26 - 8);
  v33 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = MEMORY[0x1EEE9AC00](v30);
  v90 = &v74 - v35;
  if (((*(v9 + 152))(v34) & 0x4000) == 0)
  {
    goto LABEL_2;
  }

  v83 = v19;
  v37 = a2[2];
  sub_1CF68DDB0(a1, v100, v101, v104, v32);
  if (v5)
  {
    return v36 & 1;
  }

  v40 = v92;
  v39 = v93;
  if ((*(v92 + 48))(v32, 1, v93) == 1)
  {
    (*(v28 + 8))(v32, v27);
LABEL_2:
    v36 = 0;
    return v36 & 1;
  }

  (*(v40 + 32))(v90, v32, v39);
  v41 = v83 + 16;
  v42 = v88;
  v43 = a1;
  v44 = v87;
  (*(v83 + 16))(v88, v43, v87);
  v103 = v89;
  v102 = v94;
  v45 = type metadata accessor for ItemJob();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v103 = vextq_s8(v89, v89, 8uLL);
  v102 = vextq_s8(v94, v94, 8uLL);
  v81 = type metadata accessor for Propagation.DeletionAcked();
  v80 = a2[3];
  v79 = (*v80 + 312);
  v78 = *v79;
  v75 = (v86 + 8);
  v77 = (v41 + 32);
  v76 = (v41 + 16);
  v83 = v41 - 8;
  v46 = -1;
  v47 = 1;
  *&v48 = 134217984;
  v74 = v48;
  v86 = v45;
  while (1)
  {
    v94.i64[0] = v47;
    if (!(v46 + 1000 * (v47 / 0x3E8)))
    {
      v49 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E72A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = v74;
        *(v52 + 4) = v94.i64[0];
        _os_log_impl(&dword_1CEFC7000, v50, v51, "wasDeletionAcked: too many iterations %ld, is there a cycle in the tree?", v52, 0xCu);
        MEMORY[0x1D386CDC0](v52, -1, -1);
      }

      (*v75)(v95, v91);
    }

    v53 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    v54 = *(v53 + 52);
    v55 = (*(v53 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v56 = sub_1CF9E6D68();
    *v57 = v81;
    v58 = sub_1CF045898(v56);
    v59 = v78(v42, v58, v100, v101, v104);
    if (v6)
    {
      goto LABEL_19;
    }

    v60 = v59;

    v102.i64[0] = v60;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      break;
    }

    v61 = v99;
    (*(*a2[4] + 288))(v42, v100, v101, v104);
    if ((*v77)(v61, 1, v44) == 1)
    {
LABEL_30:
      (*v83)(v42, v44);
      (*(v92 + 8))(v90, v93);
      (*(v84 + 8))(v61, v85);
      goto LABEL_2;
    }

    v89.i64[0] = 0;
    v62 = *v76;
    v63 = v44;
    v64 = v96;
    (*v76)(v96, v61, v63);
    v65 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v66 = sub_1CF9E6868();
    v67 = *v83;
    (*v83)(v42, v63);
    if (v66)
    {
      v67(v64, v63);
      (*(v92 + 8))(v90, v93);
      v36 = 0;
      return v36 & 1;
    }

    v62(v42, v64, v63);
    --v46;
    v47 = v94.i64[0] + 1;
    v44 = v63;
    v6 = v89.i64[0];
    if (__OFADD__(v94.i64[0], 1))
    {
      __break(1u);
LABEL_19:

      (*v83)(v42, v44);
      (*(v92 + 8))(v90, v93);
      return v36 & 1;
    }
  }

  v68 = sub_1CF9E6DF8();
  v69 = v93;
  if (!v68)
  {
LABEL_32:

    (*v83)(v42, v44);
    (*(v92 + 8))(v90, v69);
    goto LABEL_2;
  }

  v70 = 0;
  v61 = v90 + 8;
  while (1)
  {
    v71 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v71)
    {
      v72 = *(v60 + 8 * v70 + 32);

      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v72 = sub_1CF9E7998();
      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (*(v72 + 128) >= *&v61[*(v69 + 64)])
    {
      break;
    }

    ++v70;
    if (v73 == sub_1CF9E6DF8())
    {
      goto LABEL_32;
    }
  }

  (*v83)(v42, v44);
  (*(v92 + 8))(v90, v69);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_1CF5E2118(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void), NSObject *a9)
{
  v949 = a8;
  v945 = a7;
  v959 = a6;
  v978 = a4;
  v935 = a3;
  v957.i64[0] = a2;
  LODWORD(v958) = a1;
  v940 = a9;
  v10 = *a5;
  v11 = *(*a5 + 88);
  v12 = *(*a5 + 104);
  v13 = type metadata accessor for SnapshotItem();
  v881 = sub_1CF9E75D8();
  v880 = *(v881 - 8);
  v14 = *(v880 + 64);
  v15 = MEMORY[0x1EEE9AC00](v881);
  v903 = &v857 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v866 = &v857 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v877 = &v857 - v20;
  v892 = v13;
  v891 = *(v13 - 8);
  v21 = *(v891 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v871 = &v857 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v948 = *(AssociatedTypeWitness - 8);
  v24 = v948[8];
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v930 = &v857 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v905 = &v857 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v904 = &v857 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v867 = &v857 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v872 = &v857 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v879 = &v857 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v936 = &v857 - v37;
  v38 = *(v10 + 96);
  v954 = a5;
  v39 = *(v10 + 80);
  v40 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedConformanceWitness();
  v973.i64[0] = v40;
  v973.i64[1] = AssociatedTypeWitness;
  v915 = AssociatedConformanceWitness;
  v974.i64[0] = AssociatedConformanceWitness;
  v974.i64[1] = v42;
  v952 = type metadata accessor for ReconciliationID();
  v865 = sub_1CF9E75D8();
  v864 = *(v865 - 8);
  v43 = *(v864 + 64);
  MEMORY[0x1EEE9AC00](v865);
  v870 = &v857 - v44;
  v963 = v39;
  v964 = v38;
  v45 = type metadata accessor for SnapshotItem();
  v900 = sub_1CF9E75D8();
  v883 = *(v900 - 8);
  v46 = *(v883 + 64);
  v47 = MEMORY[0x1EEE9AC00](v900);
  v888 = &v857 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v868 = &v857 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v910 = &v857 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v882 = &v857 - v54;
  v908 = v45;
  v907 = *(v45 - 8);
  v55 = *(v907 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v874 = &v857 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v863 = &v857 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v911 = &v857 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v869 = (&v857 - v62);
  v63.i64[0] = v39;
  v946 = v11;
  v63.i64[1] = v11;
  v968 = v63;
  v64.i64[0] = v38;
  v947.i64[0] = v12;
  v64.i64[1] = v12;
  v967 = v64;
  v973 = v63;
  v974 = v64;
  v897 = type metadata accessor for TestingOperation();
  v896 = *(v897 - 8);
  v65 = *(v896 + 64);
  MEMORY[0x1EEE9AC00](v897);
  v895 = &v857 - v66;
  v924 = sub_1CF9E6118();
  v925 = *(v924 - 8);
  v67 = *(v925 + 64);
  v68 = MEMORY[0x1EEE9AC00](v924);
  v923 = &v857 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v894 = &v857 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v887 = &v857 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v921 = &v857 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v886 = &v857 - v76;
  v973 = v968;
  v974 = v967;
  v951 = type metadata accessor for ReconciliationMutation();
  v955 = *(v951 - 8);
  v77 = *(v955 + 64);
  MEMORY[0x1EEE9AC00](v951);
  v953 = &v857 - v78;
  v950 = AssociatedTypeWitness;
  v938 = sub_1CF9E75D8();
  v937 = *(v938 - 8);
  v79 = *(v937 + 8);
  v80 = MEMORY[0x1EEE9AC00](v938);
  v934 = &v857 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v927 = &v857 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v912 = &v857 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v884 = &v857 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v876 = &v857 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v889 = &v857 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v929 = &v857 - v93;
  MEMORY[0x1EEE9AC00](v92);
  v878 = &v857 - v94;
  v973 = v968;
  v974 = v967;
  v95 = type metadata accessor for ItemReconciliation();
  v926 = *(v95 - 8);
  v96 = *(v926 + 64);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v875 = &v857 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x1EEE9AC00](v97);
  v922 = &v857 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v873 = &v857 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v916 = &v857 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v899 = &v857 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v917 = &v857 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v885 = &v857 - v110;
  MEMORY[0x1EEE9AC00](v109);
  v909 = &v857 - v111;
  v961 = v112;
  v913 = sub_1CF9E75D8();
  v914 = *(v913 - 8);
  v113 = *(v914 + 64);
  v114 = MEMORY[0x1EEE9AC00](v913);
  v902 = &v857 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v114);
  v893 = &v857 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v890 = &v857 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v898 = &v857 - v121;
  MEMORY[0x1EEE9AC00](v120);
  v918 = &v857 - v122;
  v960.i64[0] = sub_1CF9E75D8();
  v956 = *(v960.i64[0] - 8);
  v123 = *(v956 + 64);
  v124 = MEMORY[0x1EEE9AC00](v960.i64[0]);
  v933 = &v857 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v932 = &v857 - v127;
  v128 = MEMORY[0x1EEE9AC00](v126);
  v919 = &v857 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v931 = &v857 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v944 = &v857 - v133;
  v134 = MEMORY[0x1EEE9AC00](v132);
  v943 = &v857 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v906 = &v857 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v920 = &v857 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v942 = &v857 - v141;
  v965 = v40;
  v966 = *(v40 - 8);
  v142 = *(v966 + 64);
  v143 = MEMORY[0x1EEE9AC00](v140);
  v928 = &v857 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = MEMORY[0x1EEE9AC00](v143);
  v939 = &v857 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v901 = &v857 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v941 = (&v857 - v150);
  v151 = MEMORY[0x1EEE9AC00](v149);
  v153 = &v857 - v152;
  v154 = MEMORY[0x1EEE9AC00](v151);
  v156 = &v857 - v155;
  v157 = MEMORY[0x1EEE9AC00](v154);
  v159 = (&v857 - v158);
  v160 = MEMORY[0x1EEE9AC00](v157);
  v162 = &v857 - v161;
  v163 = MEMORY[0x1EEE9AC00](v160);
  v165 = &v857 - v164;
  v166 = MEMORY[0x1EEE9AC00](v163);
  v168 = (&v857 - v167);
  v169 = MEMORY[0x1EEE9AC00](v166);
  v171 = &v857 - v170;
  MEMORY[0x1EEE9AC00](v169);
  v173 = &v857 - v172;
  v174 = *v957.i64[0];
  v175 = type metadata accessor for ItemReconciliationHalf();
  v176 = 69632;
  if (*(v978 + *(v175 + 56)) == 6)
  {
    v176 = 4096;
  }

  v177 = v958;
  if (v958 > 5u)
  {
    if (v958 <= 0x16u)
    {
      v178 = v959;
      v179 = v978;
      v957.i64[0] = v176;
      if (v958 == 6)
      {
        v180 = v175;
        v181 = v932;
        (*(v956 + 16))(v932, v978, v960.i64[0]);
        v182 = v966;
        v183 = v965;
        if ((*(v966 + 48))(v181, 1, v965) != 1)
        {
          v184 = v939;
          (*(v182 + 32))(v939, v181, v183);
          v185 = v954[4];
          if (sub_1CF056558())
          {
            v187 = v967;
            v186 = v968;
          }

          else
          {
            v312 = v183;
            v313 = v179 + v961[13];
            v314 = *(v313 + *(type metadata accessor for ItemReconciliationHalf() + 44));
            v183 = v312;
            v187 = v967;
            v186 = v968;
            if (!v314 || *(v179 + *(v180 + 52)) == 3)
            {
              v957.i64[0] |= 1uLL;
            }
          }

          v973 = v186;
          v974 = v187;
          v315 = type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          v316 = *(swift_getTupleTypeMetadata2() + 48);
          v317 = *(v182 + 16);
          v318 = v953;
          v964 = v317;
          v317(v953, v184, v183);
          swift_storeEnumTagMultiPayload();
          *(v318 + v316) = 1;
          swift_storeEnumTagMultiPayload();
          v319 = v183;
          v320 = v951;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v178, v318);
          v321 = *(v955 + 8);
          v321(v318, v320);
          if ((v957.i32[0] & 0x10000) != 0)
          {
            type metadata accessor for ReconciliationSideMutation();
            v960.i64[0] = v321;
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v963 = v315;
            v323 = *(TupleTypeMetadata2 + 48);
            (v964)(v318, v939, v319);
            swift_storeEnumTagMultiPayload();
            *(v318 + v323) = 3;
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v178, v318);
            (v960.i64[0])(v318, v320);
          }

          v973 = v968;
          v974 = v967;
          type metadata accessor for Ingestion.FetchChildrenMetadata();
          v324 = v939;
          sub_1CF65707C(v939, *(v978 + v961[16]), *(v978 + v961[16] + 8), v957.i64[0]);
          v325 = sub_1CF47AFBC(0x2000);

          sub_1CF803A0C(v178, v325);

          v239 = *(v966 + 8);
          v240 = v324;
          v241 = v319;
          return v239(v240, v241);
        }

        goto LABEL_300;
      }

      v291 = v965;
      if (v958 == 12)
      {
        v292 = v933;
        (*(v956 + 16))(v933, v978, v960.i64[0]);
        v293 = v966;
        if ((*(v966 + 48))(v292, 1, v291) != 1)
        {
          v294 = v928;
          (*(v293 + 32))(v928, v292, v291);
          v295 = v961;
          v296 = sub_1CF07CD80(v961);
          v297 = 32;
          if (v296)
          {
            v297 = 128;
          }

          v960.i64[0] = v297;
          v973 = v968;
          v974 = v967;
          type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          v298 = swift_getTupleTypeMetadata2();
          v299 = v953;
          v300 = v953 + *(v298 + 48);
          (*(v293 + 16))(v953, v294, v291);
          swift_storeEnumTagMultiPayload();
          *v300 = 0;
          *(v300 + 8) = 0;
          *(v300 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v301 = v951;
          swift_storeEnumTagMultiPayload();
          v302 = v959;
          sub_1CF06EB44(v959, v299);
          (*(v955 + 8))(v299, v301);
          v973 = v968;
          v974 = v967;
          type metadata accessor for Ingestion.DeleteRejectedItemInTree();
          v303 = sub_1CF657214(v294, *(v978 + v295[16]), *(v978 + v295[16] + 8), v960.i64[0] | v957.i64[0]);
          sub_1CF803A0C(v302, v303);

          return (*(v293 + 8))(v294, v291);
        }

        goto LABEL_304;
      }

LABEL_312:
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }

    v205 = v966;
    v206 = v978;
    if (v958 != 23)
    {
      v304 = v959;
      if (v958 == 75)
      {
        v305 = v176;
        v306 = v961;
        v307 = v934;
        (*(v937 + 2))(v934, v978 + v961[13], v938);
        v308 = v948;
        v309 = v950;
        if ((v948[6])(v307, 1, v950) != 1)
        {
          v310 = v930;
          (v308[4])(v930, v307, v309);
          v973 = v968;
          v974 = v967;
          type metadata accessor for JobResult();
          v973 = vextq_s8(v968, v968, 8uLL);
          v974 = vextq_s8(v967, v967, 8uLL);
          type metadata accessor for Materialization.InjectOldVersion();
          v311 = sub_1CF559420(v310, *(v206 + v306[16]), *(v206 + v306[16] + 8), v305);
          sub_1CF8039C4(v304, v311);

          return (v308[1])(v310, v309);
        }

        goto LABEL_305;
      }

      goto LABEL_312;
    }

    v207 = v176;
    v861 = v175;
    v208 = v931;
    (*(v956 + 16))(v931, v978, v960.i64[0]);
    v209 = *(v205 + 48);
    v210 = v965;
    v211 = v209(v208, 1, v965);
    v212 = v961;
    if (v211 == 1)
    {
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v213 = *(v205 + 32);
    v213(v941, v208, v210);
    v214 = (v206 + v212[13]);
    v944 = type metadata accessor for ItemReconciliationHalf();
    v215 = *(v944 + 19);
    v958 = v214;
    if ((~*(v214 + v215) & 0xCLL) == 0)
    {
      v207 |= 0x8000000000uLL;
    }

    v216 = v954;
    v217 = v954[4];
    if (sub_1CF056558())
    {
      v219 = v967;
      v218 = v968;
      v220 = v950;
      v221 = v949;
      goto LABEL_23;
    }

    v326 = *(v206 + v212[14]);
    if (v326 != 2)
    {
      if (v326 == 4)
      {
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      if (!*(v958 + *(v944 + 11)))
      {
        ++v207;
      }

      v327 = v965;
      goto LABEL_63;
    }

    isa = v940[1].isa;
    v393 = v919;
    v394 = v941;
    v395 = v962;
    (*(*v217 + 288))(v941, v945, v949, isa);
    if (!v395)
    {
      v962 = 0;
      v447 = v393;
      v448 = v393;
      v449 = v965;
      if (v209(v447, 1, v965) != 1)
      {
        v475 = v901;
        v213(v901, v448, v449);
        v476 = v954[2];
        v477 = v902;
        v329 = v949;
        v478 = v962;
        sub_1CF68DDB0(v475, v945, v949, isa, v902);
        v327 = v449;
        if (v478)
        {
          v479 = *(v966 + 8);
          v479(v475, v449);
          return (v479)(v941, v449);
        }

        v962 = 0;
        (*(v966 + 8))(v475, v449);
        v512 = v926;
        v513 = v961;
        v514 = (*(v926 + 48))(v477, 1, v961);
        v328 = v948;
        if (v514 == 1)
        {
          (*(v914 + 8))(v477, v913);
        }

        else
        {
          v629 = v875;
          (*(v512 + 32))(v875, v477, v513);
          v630 = v629[v513[13] + *(v944 + 11)];
          (*(v512 + 8))(v629, v513);
          if (!v630)
          {
            ++v207;
          }
        }

        v216 = v954;
        goto LABEL_64;
      }

      (*(v956 + 8))(v448, v960.i64[0]);
      v327 = v449;
      v216 = v954;
LABEL_63:
      v328 = v948;
      v329 = v949;
LABEL_64:
      v330 = v216[3];
      v331 = v940[1].isa;
      v332 = v941;
      v333 = v962;
      v334 = (*(*v330 + 344))(v941, v945, v329, v331);
      v962 = v333;
      if (!v333)
      {
        if (v335 & 1 | ((v334 & ~v207) == 0))
        {
          v423 = 0;
        }

        else
        {
          v423 = v334;
        }

        v207 |= v423;
        v424 = v937;
        v425 = v912;
        v426 = v938;
        (*(v937 + 2))(v912, v958, v938);
        v427 = v950;
        if ((v328[6])(v425, 1) == 1)
        {
          (*(v424 + 1))(v425, v426);
          v219 = v967;
          v218 = v968;
          v206 = v978;
          v222 = v861;
          v223 = v927;
          v220 = v427;
          v221 = v949;
          goto LABEL_24;
        }

        v457 = v904;
        (v328[4])(v904, v425, v427);
        v960 = vextq_s8(v968, v968, 8uLL);
        v957 = vextq_s8(v967, v967, 8uLL);
        v973 = v960;
        v974 = v957;
        v956 = type metadata accessor for ItemJob();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v459 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
        v460 = *(v459 + 52);
        v461 = (*(v459 + 48) + 7) & 0x1FFFFFFF8;
        swift_allocObject();
        v462 = sub_1CF9E6D68();
        v973 = v960;
        v974 = v957;
        *v463 = type metadata accessor for Materialization.MaterializeItem();
        v221 = v949;
        v464 = sub_1CF045898(v462);
        v465 = v962;
        v466 = (*(*v330 + 304))(v457, v464, v945, v221, v331);
        if (v465)
        {

          (v328[1])(v457, v950);
LABEL_116:
          v396 = *(v966 + 8);
          v472 = &v968;
LABEL_117:
          v397 = v472[-16].i64[0];
          v398 = v965;
          return v396(v397, v398);
        }

        v962 = 0;
        v501 = v466;

        v973.i64[0] = v501;
        sub_1CF9E6E58();
        swift_getWitnessTable();
        sub_1CF9E7118();
        v502 = v950;
        (v328[1])(v457, v950);
        v503 = v969;

        if (v503)
        {
          v504 = *(v503 + 112);
          v206 = v978;
          v223 = v927;
          if (v504 == 3 || v504 == 4 && !(*(v503 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v503 + 104)))
          {
          }

          else
          {
            v960.i64[0] = *(v503 + 136);

            v207 |= v960.i64[0] & 0x10000000000;
          }

          v219 = v967;
          v218 = v968;
          v222 = v861;
          v220 = v950;
LABEL_24:
          v224 = *(v958 + *(v944 + 11));
          v960.i64[0] = v207;
          if (v224 || *(v206 + v222[13]) != 2)
          {
            goto LABEL_28;
          }

          v225 = v937;
          v226 = v220;
          v227 = v938;
          (*(v937 + 2))(v223, v218, v219);
          v228 = v948;
          if ((v948[6])(v223, 1, v226) == 1)
          {
            (*(v225 + 1))(v223, v227);
            v219 = v967;
            v218 = v968;
LABEL_28:
            v229 = v941;
LABEL_29:
            v973 = v218;
            v974 = v219;
            v230 = type metadata accessor for JobResult();
            type metadata accessor for ReconciliationSideMutation();
            v231 = *(swift_getTupleTypeMetadata2() + 48);
            v232 = v953;
            v963 = *(v966 + 16);
            (v963)(v953, v229, v965);
            swift_storeEnumTagMultiPayload();
            *(v232 + v231) = 1;
            swift_storeEnumTagMultiPayload();
            v233 = v951;
            swift_storeEnumTagMultiPayload();
            v234 = v959;
            v964 = v230;
            sub_1CF06EB44(v959, v232);
            v235 = v955 + 8;
            v236 = *(v955 + 8);
            v236(v232, v233);
            if ((v960.i32[0] & 0x10000) != 0)
            {
              type metadata accessor for ReconciliationSideMutation();
              v955 = v235;
              v237 = *(swift_getTupleTypeMetadata2() + 48);
              (v963)(v232, v941, v965);
              v229 = v941;
              swift_storeEnumTagMultiPayload();
              *(v232 + v237) = 3;
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v234, v232);
              v236(v232, v233);
            }

            v973 = v968;
            v974 = v967;
            type metadata accessor for Ingestion.FetchContent();
            v238 = sub_1CF65A054(v229, *(v978 + v961[16]), *(v978 + v961[16] + 8), v960.i64[0]);
            sub_1CF803A0C(v234, v238);

            v239 = *(v966 + 8);
            v240 = v229;
            goto LABEL_32;
          }

          v467 = v223;
          v468 = v905;
          (v228[4])(v905, v467, v226);
          v469 = *(*v216[5] + 240);
          v470 = v903;
          v471 = v962;
          v469(v468, 1, v945, v221, v940[1].isa);
          if (v471)
          {
            (v228[1])(v468, v226);
            goto LABEL_116;
          }

          v962 = 0;
          v505 = v891;
          v506 = v892;
          v507 = (*(v891 + 48))(v470, 1, v892);
          v508 = v941;
          if (v507 == 1)
          {
            (v948[1])(v468, v226);
            (*(v880 + 8))(v470, v881);
          }

          else
          {
            WitnessTable = swift_getWitnessTable();
            v605 = sub_1CF937C7C(v506, WitnessTable);
            (*(v505 + 8))(v470, v506);
            if ((v605 & 1) == 0)
            {
              v973 = v968;
              v974 = v967;
              type metadata accessor for JobResult();
              type metadata accessor for ReconciliationSideMutation();
              v682 = swift_getTupleTypeMetadata2();
              v683 = v953;
              v684 = v953 + *(v682 + 48);
              v685 = v966;
              v686 = *(v966 + 16);
              v686(v953, v508, v965);
              swift_storeEnumTagMultiPayload();
              v687 = v961[16];
              *v684 = 1280;
              v688 = v978;
              *(v684 + 8) = *(v978 + v687);
              swift_storeEnumTagMultiPayload();
              v689 = v951;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v959, v683);
              (*(v955 + 8))(v683, v689);
              if ((*(v688 + v861[10]) & 8) == 0)
              {
                v690 = v895;
                v691 = v965;
                v686(v895, v508, v965);
                v973 = v968;
                v974 = v967;
                type metadata accessor for DirectionalTestingOperation();
                swift_storeEnumTagMultiPayload();
                v692 = v897;
                swift_storeEnumTagMultiPayload();
                (*(*v954 + 520))(v690, 0);
                (*(v896 + 8))(v690, v692);
                (v948[1])(v905, v950);
                return (*(v685 + 8))(v508, v691);
              }

              (v948[1])(v905, v950);
              v219 = v967;
              v218 = v968;
              goto LABEL_174;
            }

            (v948[1])(v468, v226);
          }

          v219 = v967;
          v218 = v968;
LABEL_174:
          v229 = v508;
          goto LABEL_29;
        }

        v220 = v502;
        v219 = v967;
        v218 = v968;
        v206 = v978;
LABEL_23:
        v222 = v861;
        v223 = v927;
        goto LABEL_24;
      }

      v239 = *(v966 + 8);
      v240 = v332;
LABEL_66:
      v241 = v327;
      return v239(v240, v241);
    }

    v396 = *(v966 + 8);
    v397 = v394;
LABEL_75:
    v398 = v965;
    return v396(v397, v398);
  }

  v934 = v171;
  v188 = v944;
  v958 = v159;
  v941 = v168;
  v857 = v153;
  v862 = v162;
  v939 = v165;
  v859 = v173;
  v858 = v174;
  v860 = v156;
  v861 = v175;
  if (!v177)
  {
    v957.i64[0] = v176;
    v242 = v942;
    v958 = *(v956 + 16);
    v958(v942, v978, v960.i64[0]);
    v243 = v966;
    v244 = v965;
    v944 = *(v966 + 48);
    if ((v944)(v242, 1, v965) == 1)
    {
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v245 = *(v243 + 32);
    v246 = v859;
    v245(v859, v242, v244);
    v247 = v954[4];
    v248 = v940[1].isa;
    v249 = v962;
    v250 = (*(*v247 + 312))(v246, v945, v949, v248);
    if (v249)
    {
      return (*(v243 + 8))(v246, v244);
    }

    v942 = v245;
    v943 = v248;
    v962 = 0;
    if (v251)
    {
      v336 = fpfs_current_or_default_log();
      v337 = v921;
      sub_1CF9E6128();
      v338 = v926;
      v339 = *(v926 + 16);
      v340 = v916;
      v341 = v961;
      v339(v916, v978, v961);
      v342 = v966;
      v978 = *(v966 + 16);
      (v978)(v941, v859, v965);
      v343 = sub_1CF9E6108();
      v967.i32[0] = sub_1CF9E72A8();
      v968.i64[0] = v343;
      if (os_log_type_enabled(v343, v967.i8[0]))
      {
        v344 = swift_slowAlloc();
        v963 = v344;
        v964 = swift_slowAlloc();
        v973.i64[0] = v964;
        *v344 = 136446466;
        v345 = v917;
        v339(v917, v340, v341);
        v346 = *(v338 + 8);
        v346(v340, v341);
        v347 = sub_1CF082CB0(v341);
        v349 = v348;
        v346(v345, v341);
        v350 = sub_1CEFD0DF0(v347, v349, v973.i64);

        v351 = v963;
        *(v963 + 4) = v350;
        *(v351 + 12) = 2082;
        v352 = v939;
        v353 = v941;
        v354 = v965;
        (v978)(v939, v941, v965);
        v355 = *(v342 + 8);
        v355(v353, v354);
        v356 = *(v915 + 16);
        v357 = sub_1CF9E7F98();
        v359 = v358;
        v355(v352, v354);
        v360 = sub_1CEFD0DF0(v357, v359, v973.i64);

        *(v351 + 14) = v360;
        v361 = v968.i64[0];
        _os_log_impl(&dword_1CEFC7000, v968.i64[0], v967.i8[0], "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v351, 0x16u);
        v362 = v964;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v362, -1, -1);
        MEMORY[0x1D386CDC0](v351, -1, -1);

        (*(v925 + 8))(v921, v924);
        return (v355)(v859, v354);
      }

      else
      {
        v428 = *(v342 + 8);
        v429 = v965;
        v428(v941, v965);
        (*(v338 + 8))(v340, v341);

        (*(v925 + 8))(v337, v924);
        return (v428)(v859, v429);
      }
    }

    v941 = v250;
    v399 = v247;
    v400 = v920;
    (*(*v247 + 288))(v859, v945, v949, v943);
    (*(v926 + 56))(v918, 1, 1, v961);
    v450 = v906;
    v451 = v960.i64[0];
    v958(v906, v400, v960.i64[0]);
    v452 = v965;
    if ((v944)(v450, 1, v965) == 1)
    {
      v962 = 0;
      (*(v956 + 8))(v450, v451);
      v453 = v949;
      v454 = v913;
      v455 = v909;
      v456 = v918;
    }

    else
    {
      v480 = v934;
      (v942)(v934, v450, v452);
      v481 = v480;
      v482 = v954[2];
      v483 = v898;
      v453 = v949;
      sub_1CF68DDB0(v481, v945, v949, v943, v898);
      v454 = v913;
      v455 = v909;
      v962 = 0;
      (*(v966 + 8))(v481, v452);
      v515 = v914;
      (*(v914 + 8))(v918, v454);
      v516 = v515;
      v456 = v918;
      (*(v516 + 32))(v918, v483, v454);
    }

    v958 = v954[5];
    v517 = sub_1CF056558();
    v518 = *(v914 + 16);
    if (v517)
    {
      v519 = v890;
      v518(v890, v456, v454);
      v520 = v926;
      v521 = v961;
      if ((*(v926 + 48))(v519, 1, v961) == 1)
      {
        (*(v914 + 8))(v519, v454);
LABEL_145:
        v527 = v521;
        v973 = v968;
        v974 = v967;
        v528 = type metadata accessor for JobResult();
        type metadata accessor for ReconciliationSideMutation();
        v529 = swift_getTupleTypeMetadata2();
        v530 = v953;
        v531 = (v953 + *(v529 + 48));
        v532 = *(v966 + 16);
        v964 = v966 + 16;
        v963 = v532;
        v532(v953, v859, v965);
        swift_storeEnumTagMultiPayload();
        v533 = v521[16];
        v534 = v978;
        v535 = (v978 + v533);
        v536 = *v535;
        v537 = v535[1];
        *v531 = 2;
        v531[1] = v536;
        v957.i64[0] = v536;
        v950 = v537;
        v531[2] = v537;
        swift_storeEnumTagMultiPayload();
        v538 = v951;
        swift_storeEnumTagMultiPayload();
        v958 = v528;
        sub_1CF06EB44(v959, v530);
        v539 = *(v955 + 8);
        v955 += 8;
        v949 = v539;
        v539(v530, v538);
        v540 = fpfs_current_or_default_log();
        v541 = v886;
        sub_1CF9E6128();
        v542 = v926;
        v543 = *(v926 + 16);
        v544 = v885;
        v545 = v534;
        v546 = v541;
        v543(v885, v545, v527);
        v547 = sub_1CF9E6108();
        v548 = sub_1CF9E72A8();
        if (os_log_type_enabled(v547, v548))
        {
          v549 = swift_slowAlloc();
          v948 = swift_slowAlloc();
          v973.i64[0] = v948;
          *v549 = 136446210;
          LODWORD(v945) = v548;
          v550 = v917;
          v543(v917, v544, v527);
          v551 = *(v542 + 8);
          v551(v544, v527);
          v552 = v546;
          v553 = sub_1CF082CB0(v527);
          v555 = v554;
          v551(v550, v527);
          v556 = sub_1CEFD0DF0(v553, v555, v973.i64);

          *(v549 + 4) = v556;
          _os_log_impl(&dword_1CEFC7000, v547, v945, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v549, 0xCu);
          v557 = v948;
          __swift_destroy_boxed_opaque_existential_1(v948);
          MEMORY[0x1D386CDC0](v557, -1, -1);
          MEMORY[0x1D386CDC0](v549, -1, -1);

          (*(v925 + 8))(v552, v924);
        }

        else
        {
          (*(v542 + 8))(v544, v527);

          (*(v925 + 8))(v546, v924);
        }

        v606 = v954;
        v607 = v978 + *(v527 + 52);
        v608 = type metadata accessor for ItemReconciliationHalf();
        v609 = v966;
        v610 = v953;
        if (*(v607 + *(v608 + 44)) == 2)
        {
          type metadata accessor for ReconciliationSideMutation();
          v611 = v610 + *(swift_getTupleTypeMetadata2() + 48);
          (v963)(v610, v859, v965);
          swift_storeEnumTagMultiPayload();
          *v611 = 1282;
          v612 = v950;
          *(v611 + 8) = v957.i64[0];
          *(v611 + 16) = v612;
          swift_storeEnumTagMultiPayload();
          v613 = v951;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v959, v610);
          v608 = v949(v610, v613);
        }

        MEMORY[0x1EEE9AC00](v608);
        strcpy(&v857 - 48, " item version domainVersion ");
        v614 = v965;
        v973.i64[0] = v965;
        v973.i64[1] = v900;
        v974.i64[0] = MEMORY[0x1E69E6810];
        v974.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v616 = TupleTypeMetadata[12];
        v617 = TupleTypeMetadata[16];
        v618 = TupleTypeMetadata[20];
        v619 = v895;
        v620 = v859;
        (v963)(v895, v859, v614);
        (*(v907 + 56))(&v619[v616], 1, 1, v908);
        *&v619[v617] = v941;
        v621 = v935;
        *&v619[v618] = v935;
        v973 = v968;
        v974 = v967;
        type metadata accessor for DirectionalTestingOperation();
        swift_storeEnumTagMultiPayload();
        v622 = v897;
        swift_storeEnumTagMultiPayload();
        v623 = *(*v606 + 520);
        v624 = v621;
        v623(v619, 0);
        (*(v896 + 8))(v619, v622);
        (*(v914 + 8))(v918, v913);
        (*(v956 + 8))(v920, v960.i64[0]);
        return (*(v609 + 8))(v620, v614);
      }

      (*(v520 + 32))(v455, v519, v521);
      v522 = &v455[v521[13]];
      v523 = v937;
      v524 = *(v937 + 2);
      v525 = v878;
      v944 = v522;
      v526 = v938;
      v524(v878);
      if ((v948[6])(v525, 1, v950) == 1)
      {
        (*(v520 + 8))(v909, v521);
        (*(v523 + 1))(v525, v526);
        goto LABEL_145;
      }

      (*(v523 + 1))(v525, v526);
      v631 = v944[*(type metadata accessor for ItemReconciliationHalf() + 44)];
      (*(v520 + 8))(v909, v521);
      v632 = v957.i64[0];
      if (!v631)
      {
        v632 = v957.i64[0] + 1;
      }

      v957.i64[0] = v632;
      v454 = v913;
      v456 = v918;
    }

    v633 = v893;
    v518(v893, v456, v454);
    v634 = v633;
    v635 = v926;
    v636 = v961;
    v637 = (*(v926 + 48))(v633, 1, v961);
    v638 = v899;
    if (v637 == 1)
    {
      (*(v914 + 8))(v634, v454);
      v639 = v962;
    }

    else
    {
      (*(v635 + 32))(v899, v634, v636);
      v666 = v882;
      v667 = v859;
      v668 = v962;
      (*(*v399 + 240))(v859, 1, v945, v453, v943);
      if (v668)
      {
        (*(v635 + 8))(v638, v636);
        (*(v914 + 8))(v918, v454);
        (*(v956 + 8))(v920, v960.i64[0]);
        return (*(v966 + 8))(v667, v965);
      }

      v680 = v907;
      v681 = v908;
      if ((*(v907 + 48))(v666, 1, v908) != 1)
      {
        v722 = v869;
        (*(v680 + 32))(v869, v666, v681);
        v973 = v968;
        v974 = v967;
        type metadata accessor for ReconciliationTable();
        v723 = v870;
        v724 = sub_1CF6982AC(v870, v978, v722, v899, v954, v945, v949, v943);
        v962 = 0;
        v761 = v724;
        (*(v864 + 8))(v723, v865);
        (*(v680 + 8))(v722, v681);
        (*(v926 + 8))(v899, v636);

        v641 = v957.i64[0];
        if (v761)
        {
          v641 = v957.i64[0] | 0x40000000000;
        }

        v639 = v962;
        v640 = v978;
LABEL_194:
        v642 = v965;
        v643 = (v641 >> 9) & 1;
        if ((*(v640 + v861[10]) & 0x8000) == 0)
        {
          LODWORD(v643) = 1;
        }

        if (v643)
        {
          v644 = (*(v640 + v861[10]) >> 22) & 0x200000 | v641;
        }

        else
        {
          v644 = (*(v640 + v861[10]) >> 22) & 0x200000 | v641 | 0x200;
        }

        v645 = v636[14];
        v646 = *(v640 + v645);
        if (v646 != 1)
        {
          if (v646 == 4)
          {
LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

          v647 = (v644 & 0x8000000) != 0 || *(v978 + v861[17] + 24) >> 60 == 11;
          if (!v647)
          {
            v644 |= 0x8000000uLL;
          }
        }

        v962 = v639;
        if (sub_1CF056558())
        {
          v648 = *(v978 + v645);
          if (v648 != 2)
          {
            if (v648 == 4)
            {
LABEL_311:
              __break(1u);
              goto LABEL_312;
            }

            v973 = v968;
            v974 = v967;
            type metadata accessor for JobResult();
            type metadata accessor for ReconciliationSideMutation();
            v649 = *(swift_getTupleTypeMetadata2() + 48);
            v650 = v953;
            (*(v966 + 16))(v953, v859, v642);
            swift_storeEnumTagMultiPayload();
            *(v650 + v649) = 0;
            swift_storeEnumTagMultiPayload();
            v651 = v951;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v959, v650);
            (*(v955 + 8))(v650, v651);
            v636 = v961;
          }
        }

        v973 = v968;
        v974 = v967;
        type metadata accessor for Propagation.CreateItem();
        v652 = (v978 + v636[16]);
        v653 = *v652;
        v654 = v652[1];
        v655 = v935;
        v656 = v935;
        v657 = sub_1CF60DA60(v859, v941, v655, v653, v654, v644);
        if (!sub_1CF056558())
        {
          sub_1CF052548(1);
        }

        v973 = v968;
        v974 = v967;
        type metadata accessor for JobResult();
        sub_1CF8039C4(v959, v657);
        v658 = type metadata accessor for ReconciliationSideMutation();
        v964 = swift_getTupleTypeMetadata2();
        v659 = v953;
        v660 = v953 + *(v964 + 48);
        v963 = *(v966 + 16);
        v661 = v859;
        v967.i64[0] = v657;
        v662 = v965;
        (v963)(v953, v859, v965);
        swift_storeEnumTagMultiPayload();
        *v660 = 0;
        *(v660 + 8) = 0;
        *(v660 + 16) = 2;
        v968.i64[0] = v658;
        swift_storeEnumTagMultiPayload();
        v663 = v951;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v959, v659);
        v978 = *(v955 + 8);
        (v978)(v659, v663);
        v664 = *(v964 + 48);
        (v963)(v659, v661, v662);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CF9FA440;
        *(inited + 32) = v858;
        if (qword_1EDEABDE0 != -1)
        {
          v855 = inited;
          swift_once();
          inited = v855;
        }

        *(inited + 40) = qword_1EDEABDE8;
        sub_1CEFF5464(inited, &v973);
        *(v659 + v664) = v973.i64[0];
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v959, v659);

        (v978)(v659, v663);
        (*(v914 + 8))(v918, v913);
        (*(v956 + 8))(v920, v960.i64[0]);
        return (*(v966 + 8))(v859, v662);
      }

      (*(v926 + 8))(v899, v636);
      (*(v883 + 8))(v666, v900);
      v639 = 0;
    }

    v640 = v978;
    v641 = v957.i64[0];
    goto LABEL_194;
  }

  if (v177 != 1)
  {
    v252 = v965;
    v253 = v978;
    if (v177 == 2)
    {
      v254 = v943;
      (*(v956 + 16))(v943, v978, v960.i64[0]);
      v255 = v966;
      v647 = (*(v966 + 48))(v254, 1, v252) == 1;
      v256 = v948;
      v257 = v938;
      v258 = v937;
      v259 = v936;
      if (!v647)
      {
        v260 = v255;
        v261 = *(v255 + 32);
        v262 = v252;
        v261(v862, v254, v252);
        v263 = v961;
        v264 = v929;
        (*(v258 + 2))(v929, v253 + v961[13], v257);
        v265 = v950;
        if ((v256[6])(v264, 1, v950) != 1)
        {
          (v256[4])(v259, v264, v265);
          v266 = *(v253 + v861[9]) & 0x11;
          v267 = v260;
          v960.i64[0] = *(v260 + 16);
          v268 = v958;
          (v960.i64[0])(v958, v862, v262);
          v269 = (v253 + v263[16]);
          v270 = *v269;
          v271 = v269[1];
          if (v266 == 16)
          {
            v272 = 0x2000000;
          }

          else
          {
            v272 = 4096;
          }

          v973 = v968;
          v974 = v967;
          v273 = type metadata accessor for JobResult();
          v973 = v968;
          v974 = v967;
          v274 = type metadata accessor for Propagation.DeleteItem();
          v275 = *(v274 + 48);
          v276 = *(v274 + 52);
          swift_allocObject();
          v277 = v935;
          v278 = v935;
          v279 = sub_1CF60DADC(v268, v277, v270, v271, v272);
          v280 = *(v267 + 8);
          v966 = v267 + 8;
          v968.i64[0] = v280;
          v281 = v965;
          v280(v268, v965);
          v978 = v273;
          sub_1CF8039C4(v959, v279);

          v967.i64[0] = type metadata accessor for ReconciliationSideMutation();
          v282 = swift_getTupleTypeMetadata2();
          v283 = v953;
          v284 = v953 + *(v282 + 48);
          (v960.i64[0])(v953, v862, v281);
          swift_storeEnumTagMultiPayload();
          *v284 = 0;
          *(v284 + 8) = 0;
          *(v284 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v285 = v951;
          swift_storeEnumTagMultiPayload();
          v286 = v959;
          sub_1CF06EB44(v959, v283);
          v964 = *(v955 + 8);
          (v964)(v283, v285);
          v287 = *(v282 + 48);
          v288 = v948;
          v289 = v936;
          v290 = v950;
          (v948[2])(v283, v936, v950);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v286, v283);
          (v964)(v283, v285);
          (v288[1])(v289, v290);
          return (v968.i64[0])(v862, v965);
        }

        goto LABEL_306;
      }

      goto LABEL_303;
    }

    goto LABEL_312;
  }

  v189 = v176;
  v190 = v978;
  (*(v956 + 16))(v944, v978, v960.i64[0]);
  v191 = v966;
  v192 = v965;
  v193 = (*(v966 + 48))(v188, 1, v965);
  v194 = v961;
  if (v193 == 1)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v195 = v860;
  (*(v191 + 32))(v860, v188, v192);
  v196 = v190 + v194[13];
  v197 = type metadata accessor for ItemReconciliationHalf();
  if ((~*(v196 + *(v197 + 76)) & 0xCLL) != 0)
  {
    v198 = v189;
  }

  else
  {
    v198 = v189 | 0x8000000000;
  }

  v960.i64[0] = v198;
  v199 = v954[4];
  v200 = v940[1].isa;
  v201 = v962;
  v202 = (*(*v199 + 312))(v195, v945, v949, v200);
  if (v201)
  {
    return (*(v191 + 8))(v195, v192);
  }

  v944 = v199;
  v363 = v960.i64[0];
  v958 = v200;
  v957.i64[0] = v197;
  v956 = v196;
  v962 = 0;
  if (v203)
  {
    v364 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v365 = v926;
    v366 = v961;
    v367 = *(v926 + 16);
    v367(v922, v978, v961);
    v368 = v966;
    v369 = v195;
    v370 = v857;
    v967.i64[0] = *(v966 + 16);
    (v967.i64[0])(v857, v369, v192);
    v371 = sub_1CF9E6108();
    v372 = sub_1CF9E72A8();
    v968.i64[0] = v371;
    if (os_log_type_enabled(v371, v372))
    {
      v373 = swift_slowAlloc();
      v978 = swift_slowAlloc();
      v973.i64[0] = v978;
      *v373 = 136446466;
      LODWORD(v964) = v372;
      v374 = v917;
      v375 = v922;
      v367(v917, v922, v366);
      v376 = *(v365 + 8);
      v376(v375, v366);
      v377 = sub_1CF082CB0(v366);
      v379 = v378;
      v376(v374, v366);
      v380 = sub_1CEFD0DF0(v377, v379, v973.i64);

      *(v373 + 4) = v380;
      *(v373 + 12) = 2082;
      v381 = v939;
      v382 = v857;
      v383 = v965;
      (v967.i64[0])(v939, v857, v965);
      v384 = *(v368 + 8);
      v384(v382, v383);
      v385 = *(v915 + 16);
      v386 = sub_1CF9E7F98();
      v388 = v387;
      v384(v381, v383);
      v389 = sub_1CEFD0DF0(v386, v388, v973.i64);

      *(v373 + 14) = v389;
      v390 = v968.i64[0];
      _os_log_impl(&dword_1CEFC7000, v968.i64[0], v964, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v373, 0x16u);
      v391 = v978;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v391, -1, -1);
      MEMORY[0x1D386CDC0](v373, -1, -1);

      (*(v925 + 8))(v923, v924);
      return (v384)(v860, v383);
    }

    else
    {
      v430 = *(v368 + 8);
      v431 = v965;
      v430(v370, v965);
      (*(v365 + 8))(v922, v366);

      (*(v925 + 8))(v923, v924);
      return (v430)(v860, v431);
    }
  }

  v943 = v202;
  if ((v858 & 0x10) == 0)
  {
    v401 = v192;
    v402 = *(v978 + v861[19]);
    v404 = v967;
    v403 = v968;
    v405 = v953;
    v406 = v960.i64[0];
    if ((v402 & 0x20) != 0)
    {
      v406 = v960.i64[0] | 0x1000000000000;
      v973 = v968;
      v974 = v967;
      type metadata accessor for JobResult();
      v407 = v953 + *(swift_getTupleTypeMetadata2() + 48);
      (*(v966 + 16))(v953, v860, v192);
      swift_storeEnumTagMultiPayload();
      *v407 = 32;
      *(v407 + 8) = 1;
      v408 = v951;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v959, v953);
      v409 = v408;
      v405 = v953;
      (*(v955 + 8))(v953, v409);
      v404 = v967;
      v403 = v968;
    }

    v410 = v958;
    v411 = v949;
    if ((v402 & 0x10) != 0)
    {
      v406 |= 0x800000000000uLL;
      v973 = v403;
      v974 = v404;
      type metadata accessor for JobResult();
      v412 = v405 + *(swift_getTupleTypeMetadata2() + 48);
      (*(v966 + 16))(v405, v860, v401);
      swift_storeEnumTagMultiPayload();
      *v412 = 16;
      *(v412 + 8) = 1;
      v413 = v951;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v959, v405);
      (*(v955 + 8))(v405, v413);
    }

    v414 = v910;
    v415 = v911;
    if ((v858 & 0x10000000000) == 0)
    {
      v416 = v858;
      v417 = v858;
LABEL_84:
      v418 = v954;
LABEL_85:
      v419 = v418[5];
      v420 = sub_1CF056558();
      v960.i64[0] = v406;
      v939 = v419;
      if (v420)
      {
        v422 = v967;
        v421 = v968;
        if ((v416 & 0x4000) != 0 && *(v978 + v861[13]))
        {
          v416 &= ~0x4000uLL;
        }

        v942 = v416;
      }

      else
      {
        v487 = v417 & 0x16180000D034200;
        if (v487)
        {
          v488 = fpfs_current_or_default_log();
          v489 = v887;
          sub_1CF9E6128();
          v490 = sub_1CF9E6108();
          v491 = sub_1CF9E72B8();
          if (os_log_type_enabled(v490, v491))
          {
            v492 = swift_slowAlloc();
            v942 = v416;
            v493 = v492;
            v494 = swift_slowAlloc();
            v973.i64[0] = v494;
            *v493 = 136446210;
            v495 = sub_1CF071470(v487);
            v497 = sub_1CEFD0DF0(v495, v496, v973.i64);

            *(v493 + 4) = v497;
            _os_log_impl(&dword_1CEFC7000, v490, v491, "☢️  file providers don't support setting the bit: %{public}s", v493, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v494);
            MEMORY[0x1D386CDC0](v494, -1, -1);
            v498 = v493;
            v416 = v942;
            MEMORY[0x1D386CDC0](v498, -1, -1);
          }

          (*(v925 + 8))(v489, v924);
          v499 = v961;
          v416 &= 0xFE9E7FFFF2FCBDFFLL;
          v422 = v967;
          v421 = v968;
          v500 = v894;
        }

        else
        {
          v422 = v967;
          v421 = v968;
          v500 = v894;
          v499 = v961;
        }

        v942 = v416;
        if ((v416 & 8) != 0)
        {
          v585 = *(v978 + v499[14]);
          if (v585 != 1)
          {
            if (v585 == 4)
            {
LABEL_310:
              __break(1u);
              goto LABEL_311;
            }

            v586 = v873;
            if (*(v978 + v861[17] + 24) >> 60 == 11)
            {
              v587 = v949;
              if ((*(v956 + *(v957.i64[0] + 52)) | 4) == 4)
              {
                v588 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v589 = v926;
                v590 = *(v926 + 16);
                v590(v586, v978, v499);
                v591 = v499;
                v592 = sub_1CF9E6108();
                v593 = sub_1CF9E72A8();
                if (os_log_type_enabled(v592, v593))
                {
                  v594 = swift_slowAlloc();
                  v941 = swift_slowAlloc();
                  v973.i64[0] = v941;
                  *v594 = 136315138;
                  v940 = v592;
                  LODWORD(v937) = v593;
                  v595 = v917;
                  v590(v917, v586, v591);
                  v596 = *(v589 + 8);
                  v596(v586, v591);
                  v597 = sub_1CF082CB0(v591);
                  v599 = v598;
                  v596(v595, v591);
                  v600 = sub_1CEFD0DF0(v597, v599, v973.i64);

                  v601 = v594;
                  *(v594 + 4) = v600;
                  v602 = v940;
                  _os_log_impl(&dword_1CEFC7000, v940, v937, "☢️  trying to propagate content from a dataless item %s", v594, 0xCu);
                  v603 = v941;
                  __swift_destroy_boxed_opaque_existential_1(v941);
                  MEMORY[0x1D386CDC0](v603, -1, -1);
                  MEMORY[0x1D386CDC0](v601, -1, -1);

                  (*(v925 + 8))(v894, v924);
                }

                else
                {
                  (*(v589 + 8))(v586, v591);

                  (*(v925 + 8))(v500, v924);
                }

                v757 = v966;
                v758 = v868;
                v759 = v860;
                v760 = v962;
                (*(*v944 + 240))(v860, 1, v945, v587, v958);
                if (v760)
                {
                  return (*(v757 + 8))(v759, v965);
                }

                v962 = 0;
                v942 &= ~8uLL;
                v762 = v908;
                if ((*(v907 + 48))(v758, 1, v908) == 1)
                {
                  (*(v883 + 8))(v758, v900);
                }

                else
                {
                  (*(v907 + 32))(v863, v758, v762);
                  v973 = v968;
                  v974 = v967;
                  v941 = type metadata accessor for JobResult();
                  v940 = type metadata accessor for ReconciliationSideMutation();
                  v763 = swift_getTupleTypeMetadata2();
                  v764 = v953;
                  v937 = (v953 + *(v763 + 48));
                  (*(v757 + 16))(v953, v860, v965);
                  swift_storeEnumTagMultiPayload();
                  v765 = swift_getAssociatedTypeWitness();
                  v766 = swift_getAssociatedTypeWitness();
                  v767 = v762;
                  v768 = swift_getAssociatedConformanceWitness();
                  v769 = swift_getAssociatedConformanceWitness();
                  v973.i64[0] = v765;
                  v973.i64[1] = v766;
                  v974.i64[0] = v768;
                  v974.i64[1] = v769;
                  v770 = type metadata accessor for FileItemVersion();
                  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                  v772 = *(TupleTypeMetadata3 + 48);
                  v773 = *(TupleTypeMetadata3 + 64);
                  v774 = v863;
                  v775 = v937;
                  (*(*(v770 - 8) + 16))(v937, &v863[*(v767 + 40)], v770);
                  *(v775 + v772) = 1;
                  *(v775 + v773) = 0;
                  swift_storeEnumTagMultiPayload();
                  v776 = v951;
                  swift_storeEnumTagMultiPayload();
                  sub_1CF06EB44(v959, v764);
                  (*(v955 + 8))(v764, v776);
                  (*(v907 + 8))(v774, v767);
                }

                v422 = v967;
                v421 = v968;
              }
            }
          }
        }
      }

      v973 = v421;
      v974 = v422;
      v777 = type metadata accessor for JobResult();
      v778 = type metadata accessor for ReconciliationSideMutation();
      v779 = swift_getTupleTypeMetadata2();
      v780 = *(v779 + 48);
      v781 = *(v966 + 16);
      v782 = v953;
      v783 = v860;
      v784 = (v966 + 16);
      v781(v953, v860, v965);
      swift_storeEnumTagMultiPayload();
      *(v782 + v780) = v858;
      v940 = v778;
      swift_storeEnumTagMultiPayload();
      v785 = v951;
      swift_storeEnumTagMultiPayload();
      v941 = v777;
      sub_1CF06EB44(v959, v782);
      v786 = *(v955 + 8);
      v955 += 8;
      v786(v782, v785);
      if (v942)
      {
        v964 = v786;
        v937 = v781;
        if ((v942 & 8) != 0)
        {
          v789 = v978;
          v792 = *(v978 + v961[14]);
          v788 = v967;
          v787 = v968;
          if (v792 != 1)
          {
            if (v792 == 4)
            {
LABEL_309:
              __break(1u);
              goto LABEL_310;
            }

            if (*(v978 + v861[17] + 24) >> 60 != 11)
            {
              if (*(v956 + *(v957.i64[0] + 44)) == 3)
              {
                type metadata accessor for ReconciliationSideMutation();
                v793 = swift_getTupleTypeMetadata2();
                v794 = v953;
                v795 = v953 + *(v793 + 48);
                v937(v953, v860, v965);
                swift_storeEnumTagMultiPayload();
                v796 = sub_1CF93D7F4();
                *v795 = 1283;
                *(v795 + 8) = v796;
                *(v795 + 16) = v797;
                swift_storeEnumTagMultiPayload();
                v798 = v951;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v959, v794);
                v799 = v794;
                v789 = v978;
                (v964)(v799, v798);
                v788 = v967;
                v787 = v968;
              }

              v960.i64[0] |= 0x8000000uLL;
            }
          }
        }

        else
        {
          v788 = v967;
          v787 = v968;
          v789 = v978;
        }

        v973 = v787;
        v974 = v788;
        type metadata accessor for Propagation.UpdateItem();
        v973.i64[0] = v942;
        v800 = (v789 + v961[16]);
        v801 = *v800;
        v802 = v800[1];
        v803 = v935;
        v804 = v935;
        v805 = sub_1CF60E220(v860, v943, v973.i64, v803, v801, v802, v960.i64[0]);
        if (!sub_1CF056558() || *(v789 + v861[17] + 24) >> 60 == 11)
        {
          sub_1CF052548(1);
        }

        v806 = v959;
        sub_1CF8039C4(v959, v805);
        v807 = v953;
        v808 = v953 + *(v779 + 48);
        v809 = v860;
        v327 = v965;
        v937(v953, v860, v965);
        swift_storeEnumTagMultiPayload();
        *v808 = 0;
        *(v808 + 8) = 0;
        *(v808 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v810 = v951;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v806, v807);

        (v964)(v807, v810);
        v239 = *(v966 + 8);
        v240 = v809;
        goto LABEL_66;
      }

      v790 = v888;
      v791 = v962;
      (*(*v944 + 240))(v783, 1, v945, v949, v958);
      if (v791)
      {
        v396 = *(v966 + 8);
        v397 = v783;
        goto LABEL_75;
      }

      v811 = v781;
      v962 = 0;
      v812 = v907;
      v813 = v908;
      v814 = (*(v907 + 48))(v790, 1, v908);
      v937 = v811;
      v936 = v784;
      if (v814 == 1)
      {
        v815 = v900;
        v816 = (*(v883 + 8))(v790, v900);
      }

      else
      {
        (*(v812 + 32))(v874, v790, v813);
        LODWORD(v978) = *(v978 + v861[10]);
        v817 = v953;
        v961 = (v953 + *(v779 + 48));
        v811(v953, v860, v965);
        swift_storeEnumTagMultiPayload();
        v818 = swift_getAssociatedTypeWitness();
        v819 = swift_getAssociatedTypeWitness();
        v820 = swift_getAssociatedConformanceWitness();
        v821 = swift_getAssociatedConformanceWitness();
        v973.i64[0] = v818;
        v973.i64[1] = v819;
        v974.i64[0] = v820;
        v974.i64[1] = v821;
        v822 = type metadata accessor for FileItemVersion();
        v823 = swift_getTupleTypeMetadata3();
        v824 = *(v823 + 48);
        v825 = *(v823 + 64);
        v826 = v874;
        v827 = v961;
        (*(*(v822 - 8) + 16))(v961, &v874[*(v813 + 40)], v822);
        *(v827 + v824) = (v978 & ~v858 & 8) == 0;
        *(v827 + v825) = 1;
        swift_storeEnumTagMultiPayload();
        v828 = v951;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v959, v817);
        v786(v817, v828);
        v816 = (*(v907 + 8))(v826, v813);
        v815 = v900;
      }

      MEMORY[0x1EEE9AC00](v816);
      qmemcpy(&v857 - 10, " item destinationItemID baseVersion fields version domainVersion ", 65);
      BYTE1(v856) = 0;
      v973.i64[0] = v965;
      v973.i64[1] = v815;
      v974.i64[0] = v938;
      v829 = swift_getAssociatedTypeWitness();
      v830 = swift_getAssociatedTypeWitness();
      v831 = swift_getAssociatedConformanceWitness();
      v832 = swift_getAssociatedConformanceWitness();
      v969 = v829;
      v970 = v830;
      v971 = v831;
      v972 = v832;
      type metadata accessor for FileItemVersion();
      v974.i64[1] = sub_1CF9E75D8();
      v975 = &type metadata for Fields;
      v976 = MEMORY[0x1E69E6810];
      v977 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
      v833 = swift_getTupleTypeMetadata();
      v834 = v833[12];
      v835 = v833[16];
      v836 = v833[20];
      v978 = v833[24];
      v964 = v833[28];
      v963 = v833[32];
      v837 = v895;
      v838 = v860;
      v937(v895, v860, v965);
      (*(v907 + 56))(&v837[v834], 1, 1, v908);
      (v948[7])(&v837[v835], 1, 1, v950);
      v973.i64[0] = v829;
      v973.i64[1] = v830;
      v974.i64[0] = v831;
      v974.i64[1] = v832;
      v839 = type metadata accessor for FileItemVersion();
      (*(*(v839 - 8) + 56))(&v837[v836], 1, 1, v839);
      *&v837[v978] = v858;
      *&v837[v964] = v943;
      v840 = v935;
      *&v837[v963] = v935;
      v973 = v968;
      v974 = v967;
      type metadata accessor for DirectionalTestingOperation();
      swift_storeEnumTagMultiPayload();
      v841 = v897;
      swift_storeEnumTagMultiPayload();
      v842 = *(*v954 + 520);
      v843 = v840;
      v842(v837, 0);
      (*(v896 + 8))(v837, v841);
      v239 = *(v966 + 8);
      v240 = v838;
LABEL_32:
      v241 = v965;
      return v239(v240, v241);
    }

    v473 = v860;
    v474 = v962;
    (*(*v944 + 240))(v860, 1, v945, v411, v410, v403, v404);
    if (v474)
    {
      v396 = *(v966 + 8);
      v397 = v473;
      v398 = v401;
      return v396(v397, v398);
    }

    v962 = 0;
    v509 = v907;
    v510 = v908;
    if ((*(v907 + 48))(v414, 1, v908) == 1)
    {
      (*(v883 + 8))(v414, v900);
      v511 = v884;
      goto LABEL_226;
    }

    (*(v509 + 32))(v415, v414, v510);
    v625 = swift_getWitnessTable();
    sub_1CF06D940(v510, v625, &v973);
    v626 = *(v978 + v961[14]);
    if (v973.i8[0] == 4)
    {
      v628 = v967;
      v627 = v968;
      v511 = v884;
      if (v626 != 4)
      {
LABEL_231:
        v973 = v627;
        v974 = v628;
        type metadata accessor for JobResult();
        v696 = *(swift_getTupleTypeMetadata2() + 48);
        v697 = *(v966 + 16);
        v964 = v966 + 16;
        v978 = v697;
        v698 = v401;
        v697(v405, v860, v401);
        swift_storeEnumTagMultiPayload();
        sub_1CF06D940(v908, v625, (v405 + v696));
        v699 = v951;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v959, v405);
        v700 = (*(v955 + 8))(v405, v699);
        MEMORY[0x1EEE9AC00](v700);
        qmemcpy(&v857 - 10, " item destinationItemID baseVersion fields version domainVersion ", 65);
        BYTE1(v856) = 0;
        v973.i64[0] = v401;
        v973.i64[1] = v900;
        v974.i64[0] = v938;
        v701 = swift_getAssociatedTypeWitness();
        v702 = swift_getAssociatedTypeWitness();
        v703 = swift_getAssociatedConformanceWitness();
        v963 = v703;
        v704 = swift_getAssociatedConformanceWitness();
        v969 = v701;
        v970 = v702;
        v971 = v703;
        v972 = v704;
        type metadata accessor for FileItemVersion();
        v974.i64[1] = sub_1CF9E75D8();
        v975 = &type metadata for Fields;
        v976 = MEMORY[0x1E69E6810];
        v977 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v705 = swift_getTupleTypeMetadata();
        v706 = v705[12];
        v707 = v705[16];
        v708 = v698;
        v709 = v705[20];
        v710 = v954;
        v961 = v705[24];
        v960.i64[0] = v705[28];
        v959 = v705[32];
        v711 = v895;
        (v978)(v895, v860, v708);
        v712 = v907;
        (*(v907 + 56))(&v711[v706], 1, 1, v908);
        (v948[7])(&v711[v707], 1, 1, v950);
        v973.i64[0] = v701;
        v973.i64[1] = v702;
        v974.i64[0] = v963;
        v974.i64[1] = v704;
        v713 = type metadata accessor for FileItemVersion();
        (*(*(v713 - 8) + 56))(&v711[v709], 1, 1, v713);
        *(v961 + v711) = v858;
        *&v711[v960.i64[0]] = v943;
        v714 = v935;
        *&v711[v959] = v935;
        v973 = v968;
        v974 = v967;
        type metadata accessor for DirectionalTestingOperation();
        swift_storeEnumTagMultiPayload();
        v715 = v897;
        swift_storeEnumTagMultiPayload();
        v716 = *(*v710 + 520);
        v717 = v714;
        v716(v711, 0);
        (*(v896 + 8))(v711, v715);
        (*(v712 + 8))(v911, v908);
        v239 = *(v966 + 8);
        v240 = v860;
        goto LABEL_32;
      }
    }

    else
    {
      v628 = v967;
      v627 = v968;
      v511 = v884;
      if (v626 == 4 || qword_1CFA0DC10[v973.i8[0]] != qword_1CFA0DC10[v626])
      {
        goto LABEL_231;
      }
    }

    (*(v907 + 8))(v415, v908, v627, v628);
LABEL_226:
    v418 = v954;
    v693 = v954[5];
    v694 = sub_1CF056558();
    v417 = v858;
    if (v694)
    {
      v695 = *(v978 + v961[14]);
      if (v695 == 2)
      {
        v720 = v937;
        v721 = v938;
        (*(v937 + 2))(v511, v956, v938);
        if ((v948[6])(v511, 1, v950) == 1)
        {
          (*(v720 + 1))(v511, v721);
          v417 = v858;
          v416 = v858;
          goto LABEL_85;
        }

        v751 = v948;
        v752 = v867;
        v753 = v511;
        v754 = v950;
        (v948[4])(v867, v753, v950);
        v755 = v866;
        v756 = v962;
        (*(*v693 + 240))(v752, 1, v945, v411, v410);
        if (v756)
        {
          (v751[1])(v752, v754);
          return (*(v966 + 8))(v860, v401);
        }

        v962 = 0;
        if ((*(v891 + 48))(v755, 1, v892) == 1)
        {
          (v948[1])(v867, v950);
          (*(v880 + 8))(v755, v881);
          v417 = v858;
          v416 = v858;
        }

        else
        {
          v851 = v892;
          v852 = swift_getWitnessTable();
          v853 = v755;
          v854 = sub_1CF937C7C(v851, v852);
          (v948[1])(v867, v950);
          (*(v891 + 8))(v853, v851);
          v417 = v858;
          if (v854)
          {
            v416 = v858 | 8;
          }

          else
          {
            v416 = v858;
          }
        }

        goto LABEL_84;
      }

      v416 = v858;
      if (v695 != 4)
      {
        goto LABEL_85;
      }

      __break(1u);
    }

    v416 = v417;
    goto LABEL_85;
  }

  v432 = v957.i64[0];
  v433 = v956;
  v434 = *(v956 + *(v957.i64[0] + 44));
  v436 = v967;
  v435 = v968;
  if ((v434 | 2) != 3)
  {
    v484 = v954[3];
    v485 = (*(*v484 + 344))(v860, v945, v949, v958, v968, v967);
    v962 = 0;
    if (v486 & 1 | ((v485 & ~(v363 | 0x8000001)) == 0))
    {
      v558 = 0;
    }

    else
    {
      v558 = v485;
    }

    v440 = v558 | v363 | 0x8000001;
    v559 = v937;
    v560 = v876;
    v561 = v938;
    (*(v937 + 2))(v876, v433, v938);
    v562 = v948;
    v563 = v950;
    if ((v948[6])(v560, 1, v950) == 1)
    {
      (*(v559 + 1))(v560, v561);
    }

    else
    {
      v669 = v563;
      v670 = v872;
      (v562[4])(v872, v560, v669);
      v960 = vextq_s8(v968, v968, 8uLL);
      v947 = vextq_s8(v967, v967, 8uLL);
      v973 = v960;
      v974 = v947;
      v946 = type metadata accessor for ItemJob();
      v671 = swift_getMetatypeMetadata();
      v672 = sub_1CF656CD8(v671, v671);
      v673 = *(v672 + 52);
      v674 = (*(v672 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v675 = sub_1CF9E6D68();
      v973 = v960;
      v974 = v947;
      *v676 = type metadata accessor for Materialization.MaterializeItem();
      v677 = sub_1CF045898(v675);
      v678 = v962;
      v679 = (*(*v484 + 304))(v670, v677, v945, v949, v958);
      if (v678)
      {

        (v562[1])(v670, v950);
        return (*(v966 + 8))(v860, v965);
      }

      v962 = 0;
      v725 = v679;

      v973.i64[0] = v725;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      (v562[1])(v670, v950);
      v726 = v969;

      if (v726)
      {
        v727 = *(v726 + 112);
        v437 = v978;
        v441 = v935;
        if (v727 == 3 || v727 == 4 && !(*(v726 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v726 + 104)))
        {
        }

        else
        {
          v728 = *(v726 + 136);

          if ((v728 & ~v440) != 0)
          {
            v729 = v728;
          }

          else
          {
            v729 = 0;
          }

          v440 |= v729;
        }

        v436 = v967;
        v435 = v968;
        goto LABEL_154;
      }
    }

    v436 = v967;
    v435 = v968;
    v437 = v978;
    goto LABEL_153;
  }

  v437 = v978;
  if ((*(v978 + v861[10]) & 8) != 0)
  {
    v438 = 134217730;
  }

  else
  {
    v438 = 2;
  }

  v439 = v438 | v960.i64[0];
  if (v434 == 3)
  {
    v440 = v439 | 0x100000000000;
  }

  else
  {
    v440 = v439;
  }

  v441 = v935;
  if (*(v978 + v861[13]))
  {
    goto LABEL_154;
  }

  v442 = v937;
  v443 = v889;
  v444 = v938;
  (*(v937 + 2))(v889, v956, v938, v968, v967);
  v445 = v948;
  v446 = v950;
  if ((v948[6])(v443, 1, v950) == 1)
  {
    (*(v442 + 1))(v443, v444);
LABEL_107:
    v436 = v967;
    v435 = v968;
    v432 = v957.i64[0];
LABEL_153:
    v441 = v935;
LABEL_154:
    if (*(v433 + *(v432 + 56)) == 6)
    {
      v564 = v440;
    }

    else
    {
      v564 = v440 | 0x20000;
    }

    v973 = v435;
    v974 = v436;
    type metadata accessor for Propagation.UpdateItem();
    v973.i64[0] = 16;
    v565 = (v437 + v961[16]);
    v566 = v437;
    v567 = *v565;
    v568 = v565[1];
    v569 = v441;
    v570 = sub_1CF60E220(v860, v943, v973.i64, v441, v567, v568, v564);
    v571 = v954[5];
    if (!sub_1CF056558() || *(v566 + v861[17] + 24) >> 60 == 11)
    {
      sub_1CF052548(1);
    }

    v973 = v968;
    v974 = v967;
    type metadata accessor for JobResult();
    v961 = v570;
    sub_1CF8039C4(v959, v570);
    v968.i64[0] = type metadata accessor for ReconciliationSideMutation();
    v572 = swift_getTupleTypeMetadata2();
    v573 = v953;
    v574 = v953 + *(v572 + 48);
    v967.i64[0] = *(v966 + 16);
    v575 = v860;
    (v967.i64[0])(v953, v860, v965);
    swift_storeEnumTagMultiPayload();
    *v574 = 0;
    *(v574 + 8) = 0;
    *(v574 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v576 = v951;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v959, v573);
    v577 = *(v955 + 8);
    v577(v573, v576);
    v578 = *(v572 + 48);
    v579 = v575;
    v580 = v965;
    (v967.i64[0])(v573, v579, v965);
    swift_storeEnumTagMultiPayload();
    sub_1CEFF5464(&unk_1F4BEC770, &v973);
    *(v573 + v578) = v973.i64[0];
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v959, v573);

    v577(v573, v576);
    return (*(v966 + 8))(v860, v580);
  }

  v581 = v443;
  v582 = v879;
  (v445[4])(v879, v581, v446);
  v583 = v877;
  v584 = v962;
  (*(*v954[5] + 240))(v582, 1, v945, v949, v958);
  if (v584)
  {
    (v445[1])(v582, v446);
    v396 = *(v966 + 8);
    v472 = &v892;
    goto LABEL_117;
  }

  v962 = 0;
  v718 = v891;
  v719 = v892;
  if ((*(v891 + 48))(v583, 1, v892) == 1)
  {
    (v948[1])(v582, v950);
    (*(v880 + 8))(v583, v881);
    goto LABEL_107;
  }

  v730 = v871;
  (*(v718 + 32))(v871, v583, v719);
  v731 = swift_getWitnessTable();
  v732 = sub_1CF937C7C(v719, v731);
  v432 = v957.i64[0];
  if ((v732 & 1) == 0)
  {
    (*(v718 + 8))(v730, v719);
    (v948[1])(v582, v950);
    v436 = v967;
    v435 = v968;
    goto LABEL_153;
  }

  v973 = v968;
  v974 = v967;
  type metadata accessor for JobResult();
  type metadata accessor for ReconciliationSideMutation();
  v733 = swift_getTupleTypeMetadata2();
  v734 = v582;
  v735 = v953;
  v736 = v437;
  v737 = v953 + *(v733 + 48);
  v738 = v948;
  (v948[2])(v953, v734, v950);
  swift_storeEnumTagMultiPayload();
  v739 = v961[16];
  *v737 = v434;
  *(v737 + 1) = 5;
  *(v737 + 8) = *(v736 + v739);
  swift_storeEnumTagMultiPayload();
  v740 = v951;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v959, v735);
  (*(v955 + 8))(v735, v740);
  v741 = v954[3];
  v967 = vextq_s8(v967, v967, 8uLL);
  v968 = vextq_s8(v968, v968, 8uLL);
  v973 = v968;
  v974 = v967;
  type metadata accessor for ItemJob();
  v742 = swift_getMetatypeMetadata();
  v743 = sub_1CF656CD8(v742, v742);
  v744 = *(v743 + 52);
  v745 = (*(v743 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v746 = sub_1CF9E6D68();
  v973 = v968;
  v974 = v967;
  *v747 = type metadata accessor for Materialization.EvictItem();
  v748 = sub_1CF045898(v746);
  v749 = v962;
  v750 = (*(*v741 + 304))(v734, v748, v945, v949, v958);
  if (v749)
  {

    (*(v891 + 8))(v871, v892);
    (v738[1])(v734, v950);
    return (*(v966 + 8))(v860, v965);
  }

  v844 = v750;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_294;
  }

  v845 = 4;
  while (1)
  {
    v846 = v845 - 4;
    v847 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v847 & 1) == 0)
    {
      break;
    }

    v848 = *(v844 + 8 * v845);

    v849 = v845 - 3;
    if (__OFADD__(v846, 1))
    {
      goto LABEL_293;
    }

LABEL_289:
    v850 = sub_1CF67DD2C();

    sub_1CF8039C4(v959, v850);

    ++v845;
    if (v849 == sub_1CF9E6DF8())
    {
      goto LABEL_294;
    }
  }

  sub_1CF9E7998();
  v849 = v845 - 3;
  if (!__OFADD__(v846, 1))
  {
    goto LABEL_289;
  }

LABEL_293:
  __break(1u);
LABEL_294:

  (*(v891 + 8))(v871, v892);
  (v948[1])(v879, v950);
  return (*(v966 + 8))(v860, v965);
}

uint64_t sub_1CF5E9990@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *(*v1 + 552);
  swift_getAssociatedTypeWitness();
  v5 = *(v2 + 560);
  v6 = *(v2 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = v2;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + *(v9 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(a1 + v10) = sub_1CF03D760();
  v11 = type metadata accessor for ThrottlingKey();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_1CF5E9B9C()
{
  result = sub_1CF611164();
  if (v0)
  {
    return v2;
  }

  return result;
}

void sub_1CF5E9BC8()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v5 = *(v0 + *(*v0 + 584));
}

uint64_t sub_1CF5E9C94()
{
  v1 = *v0;
  v2 = sub_1CF04ADA4();
  v3 = *(*v2 + 576);
  v4 = *(v1 + 560);
  v5 = *(v1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2 + v3, AssociatedTypeWitness);

  return v2;
}

uint64_t sub_1CF5E9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  result = sub_1CF611164();
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF5E9DAC(void *a1)
{
  v2 = a1[78];
  v3 = a1[76];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  result = sub_1CF9E75D8();
  if (v5 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    result = sub_1CF9E75D8();
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v7 = a1[79];
      v8 = a1[77];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ItemState();
      result = sub_1CF9E75D8();
      if (v9 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for FileItemVersion();
        swift_getTupleTypeMetadata2();
        result = sub_1CF9E75D8();
        if (v10 <= 0x3F)
        {
          v14 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF5EA0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v4 = type metadata accessor for Propagation.PropagationError();
  swift_getMetatypeMetadata();
  v5 = sub_1CF9E6968();
  v24 = 46;
  v25 = 0xE100000000000000;
  v19 = &v24;
  v7 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, v18, v5, v6, 0x2EuLL);
  if (v7[2])
  {
    v8 = v7[4];
    v9 = v7[5];
    v11 = v7[6];
    v10 = v7[7];
  }

  else
  {

    v8 = sub_1CF9E7608();
    v9 = v12;
    v11 = v13;
    v10 = v14;
  }

  v24 = v4;
  v22 = sub_1CF9E6968();
  v23 = v15;
  v24 = v8;
  v25 = v9;
  v26 = v11;
  v27 = v10;
  v20 = 0x6E7973736662696CLL;
  v21 = 0xE900000000000063;
  sub_1CEFE4E68();
  sub_1CF611768();
  v16 = sub_1CF9E7668();

  return v16;
}

uint64_t sub_1CF5EA290(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *&v6[*(swift_getTupleTypeMetadata2() + 48) + 8];

    (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
    return 0;
  }

  else
  {
    (*(v2 + 8))(v6, a1);
    return 1;
  }
}

unint64_t sub_1CF5EA404(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v12 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v13;
  v14 = *(v4 + 16);
  v14(v10, v2, a1);
  v15 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  v17 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v33 = v17;
  v14(v7, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v18 = *v7;
    if (*v7)
    {
      v19 = *v7;
      swift_getErrorValue();
      v20 = v27;
      v21 = v28;
      v32 = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
      sub_1CEFE9EB8(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      sub_1CF1D154C(v30, 0xD000000000000012, 0x80000001CFA54B30, isUniquelyReferenced_nonNull_native);
      v24 = v29;
    }

    else
    {
      sub_1CF1CE4A0(0xD000000000000012, 0x80000001CFA54B30, &v31);
      sub_1CEFCCC44(&v31, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v24 = v33;
    }

    v32 = MEMORY[0x1E69E6370];
    LOBYTE(v31) = 1;
    sub_1CEFE9EB8(&v31, v30);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v24;
    sub_1CF1D154C(v30, 0xD000000000000019, 0x80000001CFA54B10, v25);

    return v29;
  }

  return v17;
}

uint64_t sub_1CF5EA738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1CF5EA78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

void sub_1CF5EA7E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a1 + 32);
  if (sub_1CF056558())
  {
    (*(**(a1 + 40) + 264))(&v67, a2, a3, a4, a5);
    if (v6)
    {
      return;
    }

    v48 = v79;
    v49 = v80;
    v50 = v81;
    v44 = v75;
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v40 = v71;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v36 = v67;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v58 = v74;
    v52[0] = v67;
    v52[1] = v68;
    v51 = v82;
    v66 = v82;
    v53 = v69;
    v54 = v70;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v52) == 1 || (BYTE1(v53) & 1) != 0)
    {
      v14 = v49;
      *(a6 + 192) = v48;
      *(a6 + 208) = v14;
      *(a6 + 224) = v50;
      *(a6 + 240) = v51;
      v15 = v45;
      *(a6 + 128) = v44;
      *(a6 + 144) = v15;
      v16 = v47;
      *(a6 + 160) = v46;
      *(a6 + 176) = v16;
      v17 = v41;
      *(a6 + 64) = v40;
      *(a6 + 80) = v17;
      v18 = v43;
      *(a6 + 96) = v42;
      *(a6 + 112) = v18;
      v19 = v37;
      *a6 = v36;
      *(a6 + 16) = v19;
      v20 = v38;
      v21 = v39;
    }

    else
    {
      sub_1CEFCCC44(&v36, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFE528C(v34);
      v28 = v34[13];
      *(a6 + 192) = v34[12];
      *(a6 + 208) = v28;
      *(a6 + 224) = v34[14];
      *(a6 + 240) = v35;
      v29 = v34[9];
      *(a6 + 128) = v34[8];
      *(a6 + 144) = v29;
      v30 = v34[11];
      *(a6 + 160) = v34[10];
      *(a6 + 176) = v30;
      v31 = v34[5];
      *(a6 + 64) = v34[4];
      *(a6 + 80) = v31;
      v32 = v34[7];
      *(a6 + 96) = v34[6];
      *(a6 + 112) = v32;
      v33 = v34[1];
      *a6 = v34[0];
      *(a6 + 16) = v33;
      v20 = v34[2];
      v21 = v34[3];
    }
  }

  else
  {
    sub_1CEFE528C(&v67);
    v22 = v80;
    *(a6 + 192) = v79;
    *(a6 + 208) = v22;
    *(a6 + 224) = v81;
    *(a6 + 240) = v82;
    v23 = v76;
    *(a6 + 128) = v75;
    *(a6 + 144) = v23;
    v24 = v78;
    *(a6 + 160) = v77;
    *(a6 + 176) = v24;
    v25 = v72;
    *(a6 + 64) = v71;
    *(a6 + 80) = v25;
    v26 = v74;
    *(a6 + 96) = v73;
    *(a6 + 112) = v26;
    v27 = v68;
    *a6 = v67;
    *(a6 + 16) = v27;
    v20 = v69;
    v21 = v70;
  }

  *(a6 + 32) = v20;
  *(a6 + 48) = v21;
}

uint64_t sub_1CF5EAB90@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 664);
  swift_beginAccess();
  v5 = *(v3 + 632);
  v6 = *(v3 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v4 + *(v7 + 40));
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1CF5EACC4()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 664);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    return 2;
  }

  v7 = v2 + *(v5 + 40);
  return *(v7 + *(type metadata accessor for ItemMetadata() + 112));
}

uint64_t sub_1CF5EAE00()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 664);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v2, 1, v5);
  result = 0;
  if (!v4)
  {
    v7 = v2 + *(v5 + 40);
    return *(v7 + *(type metadata accessor for ItemMetadata() + 104));
  }

  return result;
}

unint64_t sub_1CF5EAF44()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 664);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v2 + *(v5 + 40);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF5EB088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 664);
  swift_beginAccess();
  v5 = *(v3 + 632);
  v6 = *(v3 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ItemState();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v1 + v4, 1, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if (!v10)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
    v9 = 0;
  }

  return (*(v11 + 56))(a1, v9, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF5EB218()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  v35 = sub_1CF9E75D8();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v33 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - v13;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x74616761706F7270, 0xEC0000003C3A6465);
  v14 = *(*v1 + 576);
  v15 = *(v2 + 624);
  v16 = *(v2 + 608);
  swift_getAssociatedTypeWitness();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A726576626420, 0xE700000000000000);
  v40 = *(v1 + *(*v1 + 640));
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  v19 = v38;
  v20 = v39;
  v38 = 0x3A7265766D6F6420;
  v39 = 0xE800000000000000;
  v21 = *(v1 + *(*v1 + 584));
  if (v21)
  {
    v22 = [v21 description];
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;
  }

  else
  {
    v25 = 0xE500000000000000;
    v23 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v26 = v38;
  v27 = v39;
  v38 = v19;
  v39 = v20;

  MEMORY[0x1D3868CC0](v26, v27);

  v40 = v38;
  v41 = v39;
  v28 = *(*v1 + 664);
  swift_beginAccess();
  v29 = v1 + v28;
  v30 = v35;
  (*(v6 + 16))(v9, v29, v35);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v6 + 8))(v9, v30);
  }

  else
  {
    v31 = v34;
    (*(v10 + 32))(v34, v9, v5);
    v36 = 0;
    v37 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x7473657571657220, 0xEB000000003A6465);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](v36, v37);

    (*(v10 + 8))(v31, v5);
  }

  return v40;
}

uint64_t sub_1CF5EB6FC()
{
  if ((*(v0 + 139) & 8) != 0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

unsigned __int8 *sub_1CF5EB718(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v229 = a5;
  v230 = a4;
  v238 = a3;
  v231 = a2;
  v195 = a1;
  v6 = *v5;
  v7 = *(*v5 + 77);
  v8 = *(*v5 + 79);
  v194 = type metadata accessor for JobLockRule();
  v193 = *(v194 - 8);
  v9 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v172 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  *&v234 = v12;
  *(&v234 + 1) = v13;
  *&v235 = AssociatedConformanceWitness;
  *(&v235 + 1) = v15;
  v16 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v180 = sub_1CF9E75D8();
  v179 = *(v180 - 8);
  v17 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v172 - v18;
  v183 = sub_1CF9E75D8();
  v196 = *(v183 - 8);
  v19 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v172 - v20;
  v186 = v16;
  v181 = *(v16 - 8);
  v21 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v176 = &v172 - v23;
  v190 = sub_1CF9E75D8();
  v188 = *(v190 - 8);
  v24 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v172 - v25;
  v198 = *(AssociatedTypeWitness - 8);
  v26 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v172 - v28;
  v227 = v6;
  v29 = *(v6 + 78);
  v30 = *(v6 + 76);
  v31 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v218 = type metadata accessor for ItemState();
  v217 = *(v218 - 8);
  v32 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v172 - v33;
  swift_getAssociatedConformanceWitness();
  v197 = AssociatedTypeWitness;
  v34 = type metadata accessor for ItemState();
  v200 = sub_1CF9E75D8();
  v199 = *(v200 - 8);
  v35 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v187 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v215 = &v172 - v38;
  v203 = v34;
  v202 = *(v34 - 8);
  v39 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v201 = &v172 - v41;
  v224 = v31;
  v212 = sub_1CF9E75D8();
  v214 = *(v212 - 8);
  v42 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v172 - v43;
  v44 = swift_getAssociatedTypeWitness();
  v45 = swift_getAssociatedTypeWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  *&v234 = v44;
  *(&v234 + 1) = v45;
  v48 = v29;
  *&v235 = v46;
  *(&v235 + 1) = v47;
  v209 = type metadata accessor for FileItemVersion();
  v211 = sub_1CF9E75D8();
  v210 = *(v211 - 8);
  v49 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v208 = &v172 - v50;
  v51 = type metadata accessor for SnapshotItem();
  v206 = sub_1CF9E75D8();
  v205 = *(v206 - 8);
  v52 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v54 = &v172 - v53;
  v221 = v51;
  v220 = *(v51 - 8);
  v55 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v219 = &v172 - v57;
  v204 = v30;
  *&v58 = v30;
  v185 = v7;
  *(&v58 + 1) = v7;
  v207 = v48;
  *&v59 = v48;
  v184 = v8;
  *(&v59 + 1) = v8;
  v222 = v59;
  v234 = v58;
  v235 = v59;
  v223 = v58;
  v60 = type metadata accessor for ItemReconciliation();
  v61 = sub_1CF9E75D8();
  v225 = *(v61 - 8);
  v62 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v172 - v63;
  v65 = *(v60 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v172 - v68;
  v70 = *(v231 + 16);
  v71 = *(v227 + 72);
  v226 = v5;
  v72 = v228;
  sub_1CF68E230(&v71[v5], v238, v230, v229, v64);
  if (!v72)
  {
    v73 = v225;
    v174 = v54;
    v227 = v71;
    v175 = v69;
    v74 = v226;
    v228 = 0;
    if ((*(v65 + 48))(v64, 1, v60) == 1)
    {
      (*(v73 + 8))(v64, v61);
      v234 = v223;
      v235 = v222;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v75 = swift_allocError();
      v77 = v76;
      v78 = v224;
      v79 = (v76 + *(swift_getTupleTypeMetadata2() + 48));
      (*(*(v78 - 8) + 16))(v77, &v227[v74], v78);
      strcpy(v79, "no source item");
      v79[15] = -18;
      swift_storeEnumTagMultiPayload();
      v80 = *(*v74 + 86);
      v81 = *(v74 + v80);
      *(v74 + v80) = v75;
LABEL_4:

      return 0;
    }

    v225 = v70;
    v83 = v175;
    (*(v65 + 32))(v175, v64, v60);
    v64 = v60;
    v84 = v65;
    v85 = v174;
    v86 = v230;
    v87 = v229;
    v88 = v228;
    (*(**(v231 + 40) + 248))(&v227[v74], *(v74 + *(*v74 + 80)), v238, v230, v229);
    v228 = v88;
    if (v88)
    {
      (*(v84 + 8))(v83, v64);
      return v64;
    }

    v89 = v86;
    v172 = v84;
    v173 = v64;
    v90 = v220;
    v91 = v221;
    if ((*(v220 + 48))(v85, 1, v221) == 1)
    {
      (*(v205 + 8))(v85, v206);
      v234 = v223;
      v235 = v222;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v92 = swift_allocError();
      v94 = v93;
      v95 = v224;
      v96 = (v93 + *(swift_getTupleTypeMetadata2() + 48));
      v97 = v226;
      (*(*(v95 - 8) + 16))(v94, &v227[v226], v95);
      *v96 = 0xD000000000000025;
      v96[1] = 0x80000001CFA54D50;
      swift_storeEnumTagMultiPayload();
      (*(v172 + 8))(v175, v173);
      v98 = *(*v97 + 86);
      v81 = *(v97 + v98);
      *(v97 + v98) = v92;
      goto LABEL_4;
    }

    v99 = v219;
    (*(v90 + 32))(v219, v85, v91);
    v100 = &v175[*(type metadata accessor for ItemReconciliationHalf() + 68)];
    v101 = *(v100 + 1);
    v233[0] = *v100;
    v233[1] = v101;
    v102 = *(v100 + 3);
    v233[2] = *(v100 + 2);
    v233[3] = v102;
    v103 = v226;
    v104 = (v103 + *(*v103 + 84));
    v105 = v104[3];
    v236 = v104[2];
    v237 = v105;
    v106 = v104[1];
    v234 = *v104;
    v235 = v106;
    v107 = *(v100 + 3);
    v104[2] = *(v100 + 2);
    v104[3] = v107;
    v108 = *(v100 + 1);
    *v104 = *v100;
    v104[1] = v108;
    sub_1CEFCCBDC(v233, v232, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(&v234, &unk_1EC4BF260, &unk_1CFA01B60);
    v109 = v209;
    v110 = *(v209 - 8);
    v111 = v208;
    (*(v110 + 16))(v208, &v99[*(v221 + 10)], v209);
    (*(v110 + 56))(v111, 0, 1, v109);
    v112 = *(*v103 + 81);
    swift_beginAccess();
    (*(v210 + 40))(v103 + v112, v111, v211);
    swift_endAccess();
    v113 = v224;
    v114 = *(v224 - 8);
    v115 = v213;
    (*(v114 + 16))(v213, &v99[*(v221 + 9)], v224);
    (*(v114 + 56))(v115, 0, 1, v113);
    v116 = *(*v103 + 82);
    swift_beginAccess();
    v117 = v103 + v116;
    v64 = v221;
    (*(v214 + 40))(v117, v115, v212);
    swift_endAccess();
    WitnessTable = swift_getWitnessTable();
    v119 = v216;
    sub_1CF937E0C(v64, WitnessTable, v216);
    v120 = v215;
    v121 = v87;
    v122 = v228;
    sub_1CF69AAA8(v119, v238, v89, v87, v215);
    v228 = v122;
    if (v122)
    {
      (*(v217 + 8))(v119, v218);
      (*(v220 + 8))(v99, v64);
LABEL_13:
      (*(v172 + 8))(v175, v173);
      return v64;
    }

    (*(v217 + 8))(v119, v218);
    v123 = v202;
    v124 = v203;
    if ((*(v202 + 48))(v120, 1, v203) == 1)
    {
      (*(v199 + 8))(v120, v200);
      v232[1] = v222;
      v232[0] = v223;
      v125 = type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v64 = swift_allocError();
      v127 = v126;
      v128 = *(v231 + 24);
      v129 = v226;
      v130 = v228;
      v131 = sub_1CF66E6E4(v226, v238, v89, v121);
      v228 = v130;
      if (v130)
      {
        (*(v220 + 8))(v219, v221);
        (*(v172 + 8))(v175, v173);
        MEMORY[0x1D386CA40](v64, v125);
        return v64;
      }

      *v127 = v131;
      swift_storeEnumTagMultiPayload();
      (*(v220 + 8))(v219, v221);
      (*(v172 + 8))(v175, v173);
      v146 = *(*v129 + 86);
      v81 = *(v129 + v146);
      *(v129 + v146) = v64;
      goto LABEL_4;
    }

    v132 = v201;
    (*(v123 + 32))(v201, v120, v124);
    v133 = *(v231 + 32);
    v134 = sub_1CF056558();
    v64 = &v132[*(v124 + 40)];
    v135 = v226;
    if (v134)
    {
      v136 = *v64;
      v137 = type metadata accessor for ItemMetadata();
      v138 = v137;
      v64[*(v137 + 80)] = v136 != 2;
      v139 = v197;
      v140 = v198;
      v141 = v196;
      if (v136 != 2)
      {
        v64[*(v137 + 84)] = 0;
      }

      v142 = v228;
      v143 = v201;
      if (v64[*(v137 + 84)])
      {
        v144 = (*(*v133 + 544))(v201, v238, v230, v121);
        v228 = v142;
        if (v142)
        {
          (*(v202 + 8))(v143, v203);
          (*(v220 + 8))(v219, v221);
          goto LABEL_13;
        }

        *&v64[v138[19]] = v144;
      }

      v145 = v173;
    }

    else
    {
      v138 = type metadata accessor for ItemMetadata();
      v64[v138[20]] = 0;
      v139 = v197;
      v140 = v198;
      v145 = v173;
      v141 = v196;
      v143 = v201;
    }

    v147 = v203;
    v148 = &v143[*(v203 + 40)];
    type metadata accessor for ItemMetadata();
    v148[v138[18]] = 0;
    v149 = v202;
    v150 = v187;
    (*(v202 + 16))(v187, v143, v147);
    (*(v149 + 56))(v150, 0, 1, v147);
    v151 = *(*v135 + 83);
    swift_beginAccess();
    (*(v199 + 40))(v135 + v151, v150, v200);
    swift_endAccess();
    v152 = &v175[*(v145 + 13)];
    v153 = v188;
    v154 = v189;
    v155 = v190;
    (*(v188 + 16))(v189, v152, v190);
    if ((*(v140 + 48))(v154, 1, v139) == 1)
    {
      (*(v153 + 8))(v154, v155);
    }

    else
    {
      v238 = *(v140 + 32);
      (v238)(v191, v154, v139);
      v156 = &v152[*(type metadata accessor for ItemReconciliationHalf() + 48)];
      v157 = v182;
      v158 = v183;
      (*(v141 + 16))(v182, v156, v183);
      v159 = v181;
      v160 = v186;
      if ((*(v181 + 48))(v157, 1, v186) == 1)
      {
        (*(v140 + 8))(v191, v139);
        (*(v141 + 8))(v157, v158);
      }

      else
      {
        v161 = *(v159 + 32);
        v162 = v176;
        v161(v176, v157, v160);
        v163 = TupleTypeMetadata2;
        v164 = *(TupleTypeMetadata2 + 48);
        v165 = v177;
        (v238)(v177, v191, v139);
        v166 = v162;
        v140 = v198;
        v161(&v165[v164], v166, v186);
        (*(*(v163 - 8) + 56))(v165, 0, 1, v163);
        v167 = *(*v135 + 85);
        swift_beginAccess();
        (*(v179 + 40))(v135 + v167, v165, v180);
        swift_endAccess();
      }
    }

    swift_beginAccess();
    sub_1CEFCCBDC((v135 + 7), v232, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v168 = v135[15];
    v169 = v192;
    v170 = v201;
    (*(v140 + 16))(v192, v201, v139);
    v171 = v194;
    swift_storeEnumTagMultiPayload();
    v64 = sub_1CF052B3C(v232, v168, v169);
    (*(v193 + 8))(v169, v171);
    sub_1CEFCCC44(v232, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v202 + 8))(v170, v203);
    (*(v220 + 8))(v219, v221);
    (*(v172 + 8))(v175, v173);
  }

  return v64;
}

uint64_t sub_1CF5ED254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, char *a7, void (*a8)(__int128 *, void, uint64_t, uint64_t, void *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v178 = a8;
  v197 = a7;
  v195 = a6;
  v200 = a5;
  v206 = a4;
  v193 = a3;
  v199 = a2;
  v185 = a1;
  v12 = *v11;
  v13 = *(*v11 + 632);
  v14 = *(*v11 + 616);
  v207 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v198 = type metadata accessor for ItemState();
  v15 = sub_1CF9E75D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v205 = &v164 - v17;
  v18 = *(v12 + 624);
  v201 = v11;
  v19 = *(v12 + 608);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v209 = v20;
  *(&v209 + 1) = v21;
  *&v210 = v22;
  *(&v210 + 1) = v23;
  v190 = type metadata accessor for FileItemVersion();
  v24 = sub_1CF9E75D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v204 = &v164 - v26;
  *&v27 = v14;
  *(&v27 + 1) = v19;
  *&v28 = v13;
  v180 = v18;
  *(&v28 + 1) = v18;
  v209 = v27;
  v210 = v28;
  v194 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v192 = *(v194 - 8);
  v29 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v191 = (&v164 - v30);
  v174 = *(v14 - 8);
  v31 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v164 - v33;
  v34 = type metadata accessor for SnapshotItem();
  v187 = *(v34 - 8);
  v35 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v175 = &v164 - v36;
  v179 = *(AssociatedTypeWitness - 8);
  v37 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v176 = &v164 - v39;
  v183 = v14;
  v184 = v13;
  v40 = type metadata accessor for ItemPropagationResult();
  v182 = *(v40 - 8);
  v41 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v181 = &v164 - v42;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v43 = sub_1CF9E8238();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v164 - v46);
  v186 = v34;
  v189 = sub_1CF9E75D8();
  v203 = *(v189 - 8);
  v48 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v164 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = MEMORY[0x1EEE9AC00](v50).n128_u64[0];
  v213 = &v164 - v53;
  if (v51)
  {
    *&v209 = 0x3A7265766D6F6420;
    *(&v209 + 1) = 0xE800000000000000;
    v54 = [v51 description];
    v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v56;

    MEMORY[0x1D3868CC0](v55, v57);

    v58 = *(&v209 + 1);
    v59 = v209;
  }

  else
  {
    v59 = 0;
    v58 = 0xE000000000000000;
  }

  v60 = a11;
  (*(v44 + 16))(v47, v185, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v201;
  if (EnumCaseMultiPayload == 1)
  {

    v63 = *v47;
    (*(v187 + 56))(v213, 1, 1, v186);
    LODWORD(AssociatedTypeWitness) = 0;
    v184 = 0;
    v185 = 0;
    v64 = 0;
    v65 = v197;
    v66 = v193;
    goto LABEL_33;
  }

  v172 = a11;
  v67 = v182;
  if ((*(v182 + 48))(v47, 1, v40) == 1)
  {

    v68 = *v62;
    v69 = (v62 + *(*v62 + 672));
    v70 = v69[1];
    v209 = *v69;
    v210 = v70;
    v71 = v69[3];
    v211 = v69[2];
    v212 = v71;
    if (*(&v210 + 1) >> 60 != 11)
    {
      v72 = v209;
      v73 = *(*(v200[4] + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
      sub_1CEFCCBDC(&v209, v208, &unk_1EC4BF260, &unk_1CFA01B60);

      os_unfair_lock_lock(v73);
      v74 = *(v73 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v73 + 8) = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_1CF1F6AB4(0, *(v74 + 2) + 1, 1, v74);
        *(v73 + 8) = v74;
      }

      v77 = *(v74 + 2);
      v76 = *(v74 + 3);
      if (v77 >= v76 >> 1)
      {
        v74 = sub_1CF1F6AB4((v76 > 1), v77 + 1, 1, v74);
        *(v73 + 8) = v74;
      }

      *(v74 + 2) = v77 + 1;
      *&v74[8 * v77 + 32] = v72;
      os_unfair_lock_unlock(v73);

      sub_1CEFCCC44(&v209, &unk_1EC4BF260, &unk_1CFA01B60);
      v68 = *v62;
    }

    v78 = *(v68 + 576);
    swift_getAssociatedTypeWitness();
    v79 = swift_getAssociatedConformanceWitness();
    v80 = *(v79 + 64);
    v81 = swift_checkMetadataState();
    v82 = v80(v81, v79);
    v65 = v197;
    if (v82)
    {
      type metadata accessor for FileTreeError();
      swift_getWitnessTable();
      v63 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (*(v187 + 56))(v213, 1, 1, v186);
      LODWORD(AssociatedTypeWitness) = 0;
      v184 = 0;
      v185 = 0;
      v64 = 0;
    }

    else
    {
      v184 = 0x3A6C61757463613CLL;
      (*(v187 + 56))(v213, 1, 1, v186);
      LODWORD(AssociatedTypeWitness) = 0;
      v63 = 0;
      v64 = 0;
      v185 = 0xEC0000003E6C696ELL;
    }

    v66 = v193;
    goto LABEL_32;
  }

  v165 = v59;
  v169 = v58;
  (*(v67 + 32))(v181, v47, v40);
  v83 = *v62;
  v84 = (v62 + *(*v62 + 672));
  v85 = v84[1];
  v209 = *v84;
  v210 = v85;
  v86 = v84[3];
  v211 = v84[2];
  v212 = v86;
  if (*(&v210 + 1) >> 60 != 11)
  {
    v87 = v209;
    v88 = *(*(v200[4] + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    sub_1CEFCCBDC(&v209, v208, &unk_1EC4BF260, &unk_1CFA01B60);

    os_unfair_lock_lock(v88);
    v89 = *(v88 + 8);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *(v88 + 8) = v89;
    if ((v90 & 1) == 0)
    {
      v89 = sub_1CF1F6AB4(0, *(v89 + 2) + 1, 1, v89);
      *(v88 + 8) = v89;
    }

    v92 = *(v89 + 2);
    v91 = *(v89 + 3);
    if (v92 >= v91 >> 1)
    {
      v89 = sub_1CF1F6AB4((v91 > 1), v92 + 1, 1, v89);
      *(v88 + 8) = v89;
    }

    *(v89 + 2) = v92 + 1;
    *&v89[8 * v92 + 32] = v87;
    os_unfair_lock_unlock(v88);

    sub_1CEFCCC44(&v209, &unk_1EC4BF260, &unk_1CFA01B60);
    v83 = *v62;
  }

  v170 = v40;
  v93 = *(v83 + 576);
  swift_getAssociatedTypeWitness();
  v94 = swift_getAssociatedConformanceWitness();
  v95 = *(v94 + 64);
  v96 = swift_checkMetadataState();
  v185 = v93;
  v171 = v96;
  v180 = v94;
  v166 = v95;
  LOBYTE(v168) = v95(v96, v94) & 1;
  v168 = v168;
  v98 = v184 + 64;
  v97 = *(v184 + 64);
  v99 = v176;
  v97(v183);
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v102 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
  v103 = *(v179 + 8);
  v103(v99, v101);
  v167 = v98;
  if (v168 != v102)
  {
    AssociatedConformanceWitness = v97;

    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v63 = swift_allocError();
    v105 = v104;
    v62 = v201;
    if (v166(v171, v180))
    {
      v106 = v200[4];
      sub_1CF046AB4();
LABEL_29:
      v110 = 0;
LABEL_31:
      v65 = v197;
      v66 = v193;
      v111 = v182;
      (*(v179 + 56))(v105, v110, 1, AssociatedTypeWitness);
      sub_1CF9E75D8();
      v112 = v105 + *(swift_getTupleTypeMetadata2() + 48);
      v113 = v181;
      (AssociatedConformanceWitness)(v183, v184);
      swift_storeEnumTagMultiPayload();
      (*(v187 + 56))(v213, 1, 1, v186);
      (*(v111 + 8))(v113, v170);
      LODWORD(AssociatedTypeWitness) = 0;
      v184 = 0;
      v185 = 0;
      v64 = 0;
LABEL_32:
      v60 = v172;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v166 = *(v180 + 72);
  LOBYTE(v168) = (v166)(v171) & 1;
  v168 = v168;
  (v97)(v183, v184);
  v107 = (*(v100 + 72))(v101, v100) & 1;
  v103(v99, v101);
  if (v168 != v107)
  {
    AssociatedConformanceWitness = v97;

    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v63 = swift_allocError();
    v105 = v108;
    v62 = v201;
    if (v166(v171, v180))
    {
      v109 = v200[4];
      sub_1CF685B34();
      goto LABEL_29;
    }

LABEL_30:
    v110 = 1;
    goto LABEL_31;
  }

  v139 = *(v199 + *(v198 + 40));
  v140 = v183;
  v141 = v184;
  v142 = v181;
  sub_1CF06D940(v183, v184, v208);
  v65 = v197;
  v143 = v213;
  v144 = v170;
  if (qword_1CFA0DC10[v139] == qword_1CFA0DC10[SLOBYTE(v208[0])])
  {
    goto LABEL_41;
  }

  if (v139 != 3)
  {
    if (v139 || LOBYTE(v208[0]) != 3)
    {
      goto LABEL_53;
    }

LABEL_41:
    v145 = v173;
    (*(v174 + 16))(v173, v142, v140);
    v146 = v175;
    sub_1CF06B77C(v145, v140, v141, v175);
    v147 = v187;
    v148 = v186;
    (*(v187 + 16))(v143, v146, v186);
    (*(v147 + 56))(v143, 0, 1, v148);
    v149 = *&v142[*(v144 + 36)];
    v150 = v142[*(v144 + 40)];
    v208[0] = 0;
    v208[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v152 = v208[0];
    v151 = v208[1];
    v208[0] = 0;
    v208[1] = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(v208, "stillPending:");
    HIWORD(v208[1]) = -4864;
    v64 = v149;
    v153 = sub_1CF071470(v149);
    MEMORY[0x1D3868CC0](v153);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v155 = v208[0];
    v154 = v208[1];
    v208[0] = v152;
    v208[1] = v151;

    MEMORY[0x1D3868CC0](v155, v154);

    v157 = v208[0];
    v156 = v208[1];
    v208[0] = 0;
    v208[1] = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(v208, "shouldFetch:");
    BYTE5(v208[1]) = 0;
    HIWORD(v208[1]) = -5120;
    LODWORD(AssociatedTypeWitness) = v150;
    if (v150)
    {
      v158 = 1702195828;
    }

    else
    {
      v158 = 0x65736C6166;
    }

    if (v150)
    {
      v159 = 0xE400000000000000;
    }

    else
    {
      v159 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v158, v159);

    MEMORY[0x1D3868CC0](v165, v169);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v161 = v208[0];
    v160 = v208[1];
    v208[0] = v157;
    v208[1] = v156;

    MEMORY[0x1D3868CC0](v161, v160);

    v184 = v208[0];
    v185 = v208[1];
    v162 = v148;
    v65 = v197;
    (*(v147 + 8))(v175, v162);
    (*(v182 + 8))(v142, v170);
    v63 = 0;
    goto LABEL_54;
  }

  if (!LOBYTE(v208[0]))
  {
    goto LABEL_41;
  }

LABEL_53:

  type metadata accessor for FileTreeError();
  swift_getWitnessTable();
  v63 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v187 + 56))(v143, 1, 1, v186);
  (*(v182 + 8))(v142, v144);
  LODWORD(AssociatedTypeWitness) = 0;
  v184 = 0;
  v185 = 0;
  v64 = 0;
LABEL_54:
  v66 = v193;
  v60 = v172;
  v62 = v201;
LABEL_33:
  v114 = v207;
  *(&v210 + 1) = v207;
  *&v211 = v60;
  v115 = v60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v209);
  v117 = v65;
  (*(*(v114 - 8) + 16))(boxed_opaque_existential_0, v65, v114);
  v118 = v190;
  v119 = *(v190 - 8);
  v120 = v204;
  (*(v119 + 16))(v204, v66, v190);
  (*(v119 + 56))(v120, 0, 1, v118);
  v121 = *(v62 + *(*v62 + 640));
  v122 = v198;
  v123 = *(v198 - 8);
  v124 = v205;
  (*(v123 + 16))(v205, v199, v198);
  (*(v123 + 56))(v124, 0, 1, v122);
  v125 = v188;
  v126 = v189;
  (*(v203 + 16))(v188, v213, v189);
  v208[0] = v64;
  if (v63)
  {
    v127 = *(v62 + *(*v62 + 584));
    v128 = v63;
    v129 = v127;
  }

  else
  {
    v127 = 0;
  }

  v130 = v206;
  v131 = v206;

  v163 = v130;
  v133 = v191;
  sub_1CF98C50C(v132, v204, v121, 0, v205, v125, v208, AssociatedTypeWitness, v191, v163, v63, v127);
  v134 = v194;
  v135 = v196;
  v136 = sub_1CF98CA58(v200, v195, v117, v194, v207, v115);
  if (v135)
  {

    (*(v192 + 8))(v133, v134);
  }

  else
  {
    v137 = v136;
    (*(v192 + 8))(v133, v134);
    v178(&v209, 0, v184, v185, v137);
  }

  (*(v203 + 8))(v213, v126);
  return sub_1CEFCCC44(&v209, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5EEAD0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v75 = a7;
  v76 = a8;
  v77 = a5;
  v79 = a4;
  v80 = a2;
  v74 = a3;
  v68 = a1;
  v10 = *v8;
  v11 = *(*v8 + 624);
  v72 = *(*v8 + 608);
  v73 = v11;
  *&v90 = swift_getAssociatedTypeWitness();
  *(&v90 + 1) = swift_getAssociatedTypeWitness();
  *&v91 = swift_getAssociatedConformanceWitness();
  *(&v91 + 1) = swift_getAssociatedConformanceWitness();
  v78 = type metadata accessor for FileItemVersion();
  v12 = *(v78 - 8);
  v71 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v63 - v13;
  v67 = &v63 - v13;
  v15 = *(v10 + 632);
  v69 = *(v10 + 616);
  v70 = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v65 = type metadata accessor for ItemState();
  v16 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v63 - v17;
  v18 = v68[1];
  v86 = *v68;
  v87 = v18;
  v19 = v68[3];
  v20 = *v68;
  v21 = v68[1];
  v88 = v68[2];
  v89 = v19;
  v22 = a6[1];
  v23 = a6[3];
  v92 = a6[2];
  v93 = v23;
  v24 = a6[5];
  v25 = a6[7];
  v96 = a6[6];
  v97 = v25;
  v26 = a6[5];
  v27 = a6[3];
  v94 = a6[4];
  v95 = v26;
  v28 = a6[9];
  v29 = a6[11];
  v100 = a6[10];
  v101 = v29;
  v30 = a6[9];
  v31 = a6[7];
  v98 = a6[8];
  v99 = v30;
  v32 = a6[13];
  v104 = a6[14];
  v33 = a6[13];
  v34 = a6[11];
  v102 = a6[12];
  v103 = v33;
  v35 = a6[1];
  v90 = *a6;
  v91 = v35;
  v85[0] = v20;
  v85[1] = v21;
  v36 = v68[3];
  v85[2] = v88;
  v85[3] = v36;
  v83[12] = v102;
  v83[13] = v32;
  v83[14] = a6[14];
  v83[8] = v98;
  v83[9] = v28;
  v83[10] = v100;
  v83[11] = v34;
  v83[4] = v94;
  v83[5] = v24;
  v83[6] = v96;
  v83[7] = v31;
  v83[0] = v90;
  v83[1] = v22;
  v105 = *(a6 + 30);
  v37 = v79;
  v68 = *(*(v79 + 32) + 16);
  v84 = *(a6 + 30);
  v83[2] = v92;
  v83[3] = v27;
  v39 = v38;
  v64 = v38;
  (*(v38 + 16))(&v63 - v17, v80);
  (*(v12 + 16))(v14, v74, v78);
  v40 = (*(v39 + 80) + 80) & ~*(v39 + 80);
  v41 = (v16 + *(v12 + 80) + v40) & ~*(v12 + 80);
  v42 = (v71 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *&v45 = v72;
  *&v46 = v73;
  *(&v45 + 1) = v69;
  *(&v46 + 1) = v70;
  *(v44 + 16) = v45;
  *(v44 + 32) = v46;
  v47 = v75;
  *(v44 + 48) = v37;
  *(v44 + 56) = v47;
  v48 = v81;
  *(v44 + 64) = v76;
  *(v44 + 72) = v48;
  (*(v64 + 32))(v44 + v40, v66, v65);
  (*(v12 + 32))(v44 + v41, v67, v78);
  v49 = v68;
  *(v44 + v42) = v77;
  v50 = (v44 + v43);
  v51 = v89;
  v50[2] = v88;
  v50[3] = v51;
  v52 = v87;
  *v50 = v86;
  v50[1] = v52;
  v53 = v44 + ((v43 + 71) & 0xFFFFFFFFFFFFFFF8);
  v54 = v93;
  *(v53 + 32) = v92;
  *(v53 + 48) = v54;
  v55 = v91;
  *v53 = v90;
  *(v53 + 16) = v55;
  v56 = v97;
  *(v53 + 96) = v96;
  *(v53 + 112) = v56;
  v57 = v95;
  *(v53 + 64) = v94;
  *(v53 + 80) = v57;
  v58 = v101;
  *(v53 + 160) = v100;
  *(v53 + 176) = v58;
  v59 = v99;
  *(v53 + 128) = v98;
  *(v53 + 144) = v59;
  *(v53 + 240) = v105;
  v60 = v104;
  *(v53 + 208) = v103;
  *(v53 + 224) = v60;
  *(v53 + 192) = v102;
  v61 = *(*v49 + 624);

  sub_1CEFCCBDC(&v86, v82, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v90, v82, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v61(v85, v80, v83, sub_1CF61070C, v44);
}