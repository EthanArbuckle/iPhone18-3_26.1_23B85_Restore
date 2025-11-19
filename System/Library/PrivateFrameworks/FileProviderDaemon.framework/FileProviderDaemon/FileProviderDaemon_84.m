uint64_t FPDDomainFPFSBackend.attachKnownFolders(_:options:request:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  v12 = v11 | 0x3000000000000006;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = v12;
  v14[7] = a2;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v15 = a3;
  v16 = v5;

  sub_1CEFD4024("attachKnownFolders(_:options:request:completionHandler:)", 56, 2, sub_1CF90324C, v13, sub_1CF8F34CC, v14);
}

void sub_1CF89BE20(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v87 = a6;
  v12 = sub_1CF9E6118();
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5A58();
  v89 = *(v15 - 8);
  v16 = v89[8];
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v74 - v21;
  v22 = swift_allocObject();
  v86 = a1;
  swift_weakInit();
  v23 = swift_allocObject();
  v90 = a2;
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = a4;
    v88 = Strong;
    v25 = *(a5 + 16);
    if (v25)
    {
      v76 = v12;
      v78 = a5;
      v79 = v23;
      v26 = v89;
      v27 = *(v89 + 80);
      v74 = ~v27;
      v75 = v27;
      v28 = a5 + ((v27 + 32) & ~v27);
      v81 = v22;

      v77 = a3;

      sub_1CF9E5988();
      v29 = (v26 + 1);
      v30 = v26[9];
      while (1)
      {
        sub_1CF9E5988();
        sub_1CEFCCCA4(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
        if ((sub_1CF9E6868() & 1) == 0)
        {
          break;
        }

        v31 = *v29;
        (*v29)(v19, v15);
        v28 += v30;
        if (!--v25)
        {

          v32 = v86;
          v33 = *(*(*(v86 + 16) + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v90 = *(swift_dynamicCastClassUnconditional() + 216);
          v34 = v89;
          v35 = v82;
          (v89[2])(v82, v91, v15);
          v36 = (v75 + 64) & v74;
          v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
          v38 = swift_allocObject();
          v39 = v80;
          v38[2] = v32;
          v38[3] = v39;
          v40 = v87;
          v38[4] = v78;
          v38[5] = v40;
          v41 = v83;
          v38[6] = v88;
          v38[7] = v41;
          (v34[4])(v38 + v36, v35, v15);
          v42 = (v38 + v37);
          v43 = v79;
          *v42 = sub_1CF902EC0;
          v42[1] = v43;
          sub_1CEFD09A0(v40);
          v44 = v90;

          v45 = v39;

          v46 = v88;

          sub_1CF01001C(0, "attachKnownFolders(_:options:request:completionHandler:)", 56, 2, sub_1CF8FDECC, v38);

          v31(v91, v15);
          return;
        }
      }

      v52 = fpfs_current_or_default_log();
      v53 = v84;
      sub_1CF9E6128();
      v54 = v87;
      sub_1CEFD09A0(v87);
      v55 = sub_1CF9E6108();
      v56 = sub_1CF9E72A8();
      sub_1CEFD0A98(v54);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v92 = v89;
        *v57 = 136446210;
        v58 = sub_1CEFD11AC(v54);
        v60 = sub_1CEFD0DF0(v58, v59, &v92);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_1CEFC7000, v55, v56, "inconsistent attach request with different home folders for request %{public}s", v57, 0xCu);
        v61 = v89;
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x1D386CDC0](v61, -1, -1);
        MEMORY[0x1D386CDC0](v57, -1, -1);
      }

      (*(v85 + 8))(v53, v76);
      v62 = v77;
      v63 = v90;
      v64 = FPNotSupportedError();
      if (v64)
      {
        v65 = v64;
        swift_beginAccess();
        v66 = swift_weakLoadStrong();
        if (v66)
        {
          v67 = v66;

          v68 = v65;
          sub_1CF77A9C8(v68, 0, v67, v63, v62);
        }

        else
        {
          v71 = v65;
          v72 = FPDomainUnavailableError();
          (v63)();
        }
      }

      else
      {
        (v63)();
      }

      v73 = *v29;
      (*v29)(v19, v15);
      v73(v91, v15);
    }

    else
    {

      v90(0);

      v51 = v88;
    }
  }

  else
  {

    v47 = sub_1CF8403B4();
    swift_beginAccess();
    v48 = swift_weakLoadStrong();
    if (v48)
    {
      v49 = v48;

      v50 = v47;
      sub_1CF77A9C8(v47, 0, v49, v90, a3);
    }

    else
    {
      v69 = v47;
      v70 = FPDomainUnavailableError();
      (v90)();
    }
  }
}

uint64_t sub_1CF89C600(void *a1, void *a2, void *a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v312 = a8;
  v299 = a6;
  v324 = a5;
  v320 = a4;
  v327 = a3;
  v344 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E63A8();
  v303 = *(v11 - 8);
  v12 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v300 = &v277 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = sub_1CF9E5248();
  *&v293 = *(v307 - 8);
  v19 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v307);
  v306 = &v277 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  *&v310 = &v277 - v22;
  v315 = sub_1CF9E5268();
  v298 = *(v315 - 8);
  v23 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v317 = (&v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v294 = &v277 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v305 = &v277 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v308 = &v277 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v277 - v32;
  v322 = sub_1CF9E6118();
  v314 = *(v322 - 8);
  v34 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v313 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v292 = &v277 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v277 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v297 = &v277 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v326 = &v277 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v296 = &v277 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v319 = &v277 - v48;
  v325 = sub_1CF9E5A58();
  v316 = *(v325 - 8);
  v49 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v318 = &v277 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v323 = &v277 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v321 = &v277 - v54;
  v311 = a1;
  v330 = a1[2];
  v55 = *(v330[4] + 16);
  type metadata accessor for VFSFileTree(0);
  v56 = swift_dynamicCastClassUnconditional();

  v57 = objc_sync_enter(v56);
  if (v57)
  {
    MEMORY[0x1EEE9AC00](v57);
    v275 = &v277 - 4;
    *(&v277 - 2) = v56;
    goto LABEL_86;
  }

  v58 = v56[20];

  v59 = objc_sync_exit(v56);
  if (v59)
  {
    MEMORY[0x1EEE9AC00](v59);
    v276 = &v277 - 4;
    *(&v277 - 2) = v56;
    goto LABEL_87;
  }

  v301 = v16;

  v60 = *(v316 + 16);
  v328 = v316 + 16;
  v329 = v60;
  (v60)(v321, v58 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v325);

  v61 = objc_sync_enter(a2);
  if (v61)
  {
    MEMORY[0x1EEE9AC00](v61);
    v275 = &v277 - 4;
    *(&v277 - 2) = a2;
LABEL_86:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v275, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v304 = v40;
  v295 = v33;
  v302 = v14;
  *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 1;
  v62 = objc_sync_exit(a2);
  if (v62)
  {
    MEMORY[0x1EEE9AC00](v62);
    v276 = &v277 - 4;
    *(&v277 - 2) = a2;
LABEL_87:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v276, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  MEMORY[0x1EEE9AC00](v62);
  v63 = v320;
  v64 = v321;
  *(&v277 - 2) = v320;
  *(&v277 - 1) = v64;
  v65 = sub_1CF25A99C(sub_1CF8FDF68, (&v277 - 4), v327);
  v291 = a9;
  v309 = v65;

  v66 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v63);
  v67 = sub_1CF9E6108();
  v68 = sub_1CF9E72C8();
  sub_1CEFD0A98(v63);
  v69 = os_log_type_enabled(v67, v68);
  v289 = v11;
  v288 = v15;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock = v71;
    *v70 = 136446210;
    v72 = sub_1CEFD11AC(v63);
    v74 = sub_1CEFD0DF0(v72, v73, &aBlock);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_1CEFC7000, v67, v68, "relocating roots for %{public}s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v70, -1, -1);
  }

  v75 = v314;
  v76 = v319;
  v319 = *(v314 + 8);
  (v319)(v76, v322);
  v77 = v309;

  v78 = a2;
  sub_1CF8F3BF0(v311, v324, v78, v77, v78);
  v79 = v328;
  v290 = 0;

  v287 = v78;

  v80 = v320;
  if ((v299 & 1) == 0)
  {
    goto LABEL_46;
  }

  v81 = fpfs_current_or_default_log();
  v82 = v296;
  sub_1CF9E6128();
  sub_1CEFD09A0(v80);
  v83 = sub_1CF9E6108();
  v84 = sub_1CF9E72C8();
  sub_1CEFD0A98(v80);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136446210;
    v87 = sub_1CEFD11AC(v80);
    v89 = sub_1CEFD0DF0(v87, v88, &aBlock);
    v75 = v314;

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1CEFC7000, v83, v84, "re-creating local folder for %{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1D386CDC0](v86, -1, -1);
    MEMORY[0x1D386CDC0](v85, -1, -1);
  }

  (v319)(v82, v322);
  v90 = v315;
  v91 = v327;
  v92 = v327[2];
  v93 = &off_1CF9F4000;
  if (!v92)
  {
    goto LABEL_37;
  }

  v311 = objc_opt_self();
  v94 = v91 + ((*(v316 + 80) + 32) & ~*(v316 + 80));
  v324 = *(v316 + 72);
  v286 = (v298 + 32);
  v285 = (v293 + 8);
  v284 = (v298 + 8);
  v299 = v75 + 8;
  v327 = (v316 + 8);
  *&v95 = 136446466;
  v293 = v95;
  v278 = v94;
  v279 = v92;
  v96 = v92;
  v97 = v318;
  v98 = v79;
  v283 = (v298 + 16);
  do
  {
    v101 = v77;
    v102 = v325;
    v103 = v98;
    (v329)(v97, v94, v325);
    v104 = [v311 defaultManager];
    v105 = sub_1CF9E5928();
    aBlock = 0;
    v106 = [v104 createDirectoryAtURL:v105 withIntermediateDirectories:0 attributes:0 error:&aBlock];

    if (v106)
    {
      v99 = *v327;
      v100 = aBlock;
      v99(v97, v102);
      v77 = v101;
      v98 = v103;
      goto LABEL_13;
    }

    v107 = aBlock;
    v108 = sub_1CF9E57F8();

    swift_willThrow();
    v290 = 0;
    aBlock = v108;
    v109 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v110 = v315;
    v77 = v101;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v296 = v108;
    v111 = *v286;
    v112 = v308;
    (*v286)(v308, v317, v110);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v113 = v310;
    sub_1CF9E57A8();
    v114 = v306;
    sub_1CF9E5128();
    sub_1CEFCCCA4(&unk_1EC4C1140, MEMORY[0x1E6967E70]);
    v115 = v307;
    sub_1CF9E6C28();
    sub_1CF9E6C28();
    v116 = *v285;
    (*v285)(v114, v115);
    v116(v113, v115);
    if (v337 != v335)
    {
      (*v284)(v112, v110);
      v77 = v309;
      v108 = v296;
LABEL_21:

      LOBYTE(v337) = 0;
      v137 = [v311 defaultManager];
      sub_1CF9E5A08();
      v138 = sub_1CF9E6888();

      v139 = [v137 fileExistsAtPath:v138 isDirectory:&v337];

      if (!v139 || (v337 & 1) == 0)
      {
        v175 = fpfs_current_or_default_log();
        v176 = v292;
        sub_1CF9E6128();
        v80 = v320;
        sub_1CEFD09A0(v320);
        v177 = v108;
        v178 = sub_1CF9E6108();
        v179 = sub_1CF9E72A8();
        sub_1CEFD0A98(v80);

        v174 = v108;
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          aBlock = v182;
          *v180 = v293;
          v183 = sub_1CEFD11AC(v80);
          v185 = sub_1CEFD0DF0(v183, v184, &aBlock);

          *(v180 + 4) = v185;
          *(v180 + 12) = 2112;
          swift_getErrorValue();
          v186 = Error.prettyDescription.getter(v332);
          *(v180 + 14) = v186;
          *v181 = v186;
          _os_log_impl(&dword_1CEFC7000, v178, v179, "failed to re-create local folder for %{public}s: %@", v180, 0x16u);
          sub_1CEFCCC44(v181, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v181, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v182);
          MEMORY[0x1D386CDC0](v182, -1, -1);
          MEMORY[0x1D386CDC0](v180, -1, -1);

          v187 = v292;
        }

        else
        {

          v187 = v176;
        }

        (v319)(v187, v322);
        v93 = &off_1CF9F4000;
        swift_willThrow();
        (*v327)(v318, v325);
        goto LABEL_42;
      }

      v140 = fpfs_current_or_default_log();
      v141 = v313;
      sub_1CF9E6128();
      v142 = v320;
      sub_1CEFD09A0(v320);
      v143 = v108;
      v144 = sub_1CF9E6108();
      v145 = sub_1CF9E72A8();
      sub_1CEFD0A98(v142);

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        aBlock = v148;
        *v146 = v293;
        v149 = sub_1CEFD11AC(v142);
        v151 = sub_1CEFD0DF0(v149, v150, &aBlock);

        *(v146 + 4) = v151;
        *(v146 + 12) = 2112;
        swift_getErrorValue();
        v152 = Error.prettyDescription.getter(v331);
        *(v146 + 14) = v152;
        *v147 = v152;
        _os_log_impl(&dword_1CEFC7000, v144, v145, "failed to re-create local folder for which exists %{public}s: %@", v146, 0x16u);
        sub_1CEFCCC44(v147, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v147, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v148);
        v153 = v148;
        v77 = v309;
        MEMORY[0x1D386CDC0](v153, -1, -1);
        MEMORY[0x1D386CDC0](v146, -1, -1);

        v154 = v313;
      }

      else
      {

        v154 = v141;
      }

      (v319)(v154, v322);
      v99 = *v327;
      v97 = v318;
      (*v327)(v318, v325);
      goto LABEL_31;
    }

    v282 = v111;

    v117 = fpfs_current_or_default_log();
    v118 = v304;
    sub_1CF9E6128();
    v119 = *v283;
    v120 = v305;
    (*v283)(v305, v112, v110);
    v121 = v320;
    sub_1CEFD09A0(v320);
    v122 = sub_1CF9E6108();
    v123 = sub_1CF9E72A8();
    sub_1CEFD0A98(v121);
    LODWORD(v296) = v123;
    v124 = v123;
    v125 = v122;
    if (os_log_type_enabled(v122, v124))
    {
      v126 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      v337 = v280;
      *v126 = v293;
      v127 = sub_1CEFD11AC(v121);
      v129 = sub_1CEFD0DF0(v127, v128, &v337);

      *(v126 + 4) = v129;
      *(v126 + 12) = 2112;
      v130 = v120;
      v131 = v294;
      v119(v294, v130, v110);
      sub_1CEFCCCA4(&unk_1EC4C5010, MEMORY[0x1E6967E98]);
      v132 = sub_1CF9E7FB8();
      if (v132)
      {
        v133 = v132;
        v134 = v131;
        v135 = v284;
        (*v284)(v134, v110);
        v136 = v325;
      }

      else
      {
        v133 = swift_allocError();
        v282(v156, v131, v110);
        v136 = v325;
        v135 = v284;
      }

      v157 = sub_1CF9E57E8();

      v158 = [v157 fp_prettyDescription];
      v159 = *v135;
      v159(v305, v110);
      *(v126 + 14) = v158;
      v160 = v281;
      *v281 = v158;
      _os_log_impl(&dword_1CEFC7000, v125, v296, "failed to recreate local folder which already exists %{public}s: %@", v126, 0x16u);
      sub_1CEFCCC44(v160, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v160, -1, -1);
      v161 = v280;
      __swift_destroy_boxed_opaque_existential_1(v280);
      MEMORY[0x1D386CDC0](v161, -1, -1);
      MEMORY[0x1D386CDC0](v126, -1, -1);

      (v319)(v304, v322);
      v159(v308, v110);
      v99 = *v327;
      v97 = v318;
      (*v327)(v318, v136);
    }

    else
    {

      v155 = *v284;
      (*v284)(v120, v110);
      (v319)(v118, v322);
      v155(v112, v110);
      v99 = *v327;
      v97 = v318;
      (*v327)(v318, v325);
    }

    v77 = v309;
LABEL_31:
    v98 = v328;
LABEL_13:
    v94 = &v324[v94];
    --v96;
  }

  while (v96);
  aBlock = MEMORY[0x1E69E7CC0];
  v162 = v279;
  sub_1CEFE95CC(0, v279, 0);
  v163 = aBlock;
  v80 = v320;
  v164 = v278;
  do
  {
    v165 = v323;
    v166 = v325;
    (v329)(v323, v164, v325);
    v167 = sub_1CF9E58E8();
    v169 = v168;
    v99(v165, v166);
    aBlock = v163;
    v171 = v163[2];
    v170 = v163[3];
    if (v171 >= v170 >> 1)
    {
      sub_1CEFE95CC((v170 > 1), v171 + 1, 1);
      v163 = aBlock;
    }

    v163[2] = v171 + 1;
    v172 = &v163[2 * v171];
    v172[4] = v167;
    v172[5] = v169;
    v164 = &v324[v164];
    --v162;
  }

  while (v162);

  v77 = v309;
  v90 = v315;
  v93 = &off_1CF9F4000;
LABEL_37:
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v173 = v295;
  sub_1CF9E57D8();
  v174 = sub_1CF9E50D8();
  (*(v298 + 8))(v173, v90);
  swift_willThrow();
LABEL_42:
  v188 = v174;
  v189 = fpfs_current_or_default_log();
  v190 = v297;
  sub_1CF9E6128();
  sub_1CEFD09A0(v80);
  v191 = v174;
  v192 = sub_1CF9E6108();
  v193 = sub_1CF9E72A8();
  sub_1CEFD0A98(v80);

  if (os_log_type_enabled(v192, v193))
  {
    v194 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v329 = swift_slowAlloc();
    aBlock = v329;
    *v194 = *(v93 + 366);
    v196 = sub_1CEFD11AC(v80);
    v198 = sub_1CEFD0DF0(v196, v197, &aBlock);

    *(v194 + 4) = v198;
    *(v194 + 12) = 2112;
    swift_getErrorValue();
    v199 = Error.prettyDescription.getter(v333);
    *(v194 + 14) = v199;
    *v195 = v199;
    _os_log_impl(&dword_1CEFC7000, v192, v193, "failed to re-create local folder for %{public}s: %@", v194, 0x16u);
    sub_1CEFCCC44(v195, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v195, -1, -1);
    v200 = v329;
    __swift_destroy_boxed_opaque_existential_1(v329);
    MEMORY[0x1D386CDC0](v200, -1, -1);
    MEMORY[0x1D386CDC0](v194, -1, -1);
  }

  else
  {
  }

  v75 = v314;
  (v319)(v190, v322);
LABEL_46:
  v317 = dispatch_group_create();
  v318 = swift_allocObject();
  *(v318 + 2) = 0;
  v202 = *(v77 + 16);
  if (v202)
  {
    v315 = v75 + 8;
    v311 = "_content";
    LODWORD(v308) = (v80 >> 58) & 0x3C | (v80 >> 1) & 3;
    v307 = v80 & 0xFFFFFFFFFFFFFF9;
    v203 = (v309 + 40);
    *&v201 = 136315906;
    v310 = v201;
    do
    {
      v204 = *(v203 - 1);
      v205 = *v203;
      v329 = v203;
      v206 = v204;
      v207 = v317;
      dispatch_group_enter(v317);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v208 = swift_allocObject();
      *(v208 + 42) = 0;
      *(v208 + 32) = v205;
      *(v208 + 40) = 1;
      *(v208 + 16) = v205;
      *(v208 + 24) = 1;
      v209 = swift_allocObject();
      v210 = v318;
      *(v209 + 16) = v207;
      *(v209 + 24) = v210;
      v211 = objc_allocWithZone(MEMORY[0x1E696AE38]);
      v212 = v207;

      v327 = [v211 init];
      v213 = swift_allocObject();
      v213[2] = sub_1CF8FDF88;
      v213[3] = v209;
      v214 = v330;
      v213[4] = v80;
      v213[5] = v214;
      sub_1CEFD09A0(v80);
      v328 = v209;

      v215 = fpfs_current_or_default_log();
      v216 = v326;
      sub_1CF9E6128();
      sub_1CEFD09A0(v80);
      sub_1CEFD09A0(v80);

      v217 = sub_1CF9E6108();
      v218 = sub_1CF9E7298();
      if (!os_log_type_enabled(v217, v218))
      {
        sub_1CEFD0A98(v80);
        sub_1CEFD0A98(v80);

        (v319)(v216, v322);
        goto LABEL_68;
      }

      LODWORD(v314) = v218;
      v324 = v202;
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v336 = v220;
      *v219 = v310;
      swift_beginAccess();
      v221 = *(v208 + 32);
      v222 = *(v208 + 40);
      v223 = *(v208 + 41);
      v323 = v206;
      v313 = v220;
      if (v223)
      {
        v224 = v221;
        v225 = NSFileProviderItemIdentifier.description.getter();
        v227 = v226;
        sub_1CEFD0994(v221, v222, 1);

        v228 = v225;
        v80 = v320;
      }

      else
      {
        if (v222)
        {
          if (v222 == 1)
          {
            aBlock = 0x284449656C6966;
            v339 = 0xE700000000000000;
            v334 = v221;
            v229 = sub_1CF9E7F98();
            MEMORY[0x1D3868CC0](v229);

            MEMORY[0x1D3868CC0](41, 0xE100000000000000);

            v228 = aBlock;
            v227 = v339;
            v230 = v326;
            v202 = v324;
          }

          else
          {
            v230 = v326;
            v202 = v324;

            if (v221)
            {
              v228 = 0x6873617274;
            }

            else
            {
              v228 = 1953460082;
            }

            if (v221)
            {
              v227 = 0xE500000000000000;
            }

            else
            {
              v227 = 0xE400000000000000;
            }
          }

          v80 = v320;
          goto LABEL_67;
        }

        aBlock = 0x284449636F64;
        v339 = 0xE600000000000000;
        LODWORD(v334) = v221;
        v231 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v231);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        v228 = aBlock;
        v227 = v339;
      }

      v230 = v326;
      v202 = v324;
LABEL_67:
      v232 = sub_1CEFD0DF0(v228, v227, &v336);

      *(v219 + 4) = v232;
      *(v219 + 12) = 2080;
      *(v219 + 14) = sub_1CEFD0DF0(0xD000000000000013, v311 | 0x8000000000000000, &v336);
      *(v219 + 22) = 2080;
      v233 = sub_1CEFD11AC(v80);
      v235 = v234;
      sub_1CEFD0A98(v80);
      sub_1CEFD0A98(v80);
      v236 = sub_1CEFD0DF0(v233, v235, &v336);

      *(v219 + 24) = v236;
      *(v219 + 32) = 2048;
      *(v219 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v217, v314, "Lookup itemID %s with behavior %s request %s iteration %ld", v219, 0x2Au);
      v237 = v313;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v237, -1, -1);
      MEMORY[0x1D386CDC0](v219, -1, -1);

      (v319)(v230, v322);
      v206 = v323;
LABEL_68:
      swift_beginAccess();
      v238 = *(v208 + 32);
      v239 = *(v208 + 40);
      if (*(v208 + 41))
      {
        v240 = qword_1EDEA34B0;
        v241 = v238;
        if (v240 != -1)
        {
          swift_once();
        }

        v242 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v244 = v243;
        if (v242 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v244 == v245)
        {

          sub_1CEFD0994(v238, v239, 1);
        }

        else
        {
          v246 = sub_1CF9E8048();

          sub_1CEFD0994(v238, v239, 1);
          if ((v246 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      else if (v238 || v239 != 2)
      {
LABEL_77:
        v324 = v202;
        v323 = v206;
        if (v308 == 30)
        {
          v249 = *(v307 + 16);
          v248 = v249;
        }

        else
        {
          v247 = swift_allocObject();
          *(v247 + 16) = v80;
          v248 = v247 | 0x7000000000000004;
          v249 = v80;
        }

        sub_1CEFD09A0(v249);
        v250 = swift_allocObject();
        *(v250 + 16) = sub_1CF8FDF90;
        *(v250 + 24) = v213;
        v251 = v330;
        *(v250 + 32) = v330;
        *(v250 + 40) = 0;
        *(v250 + 48) = v80;
        *(v250 + 56) = v208;
        *(v250 + 64) = 0;
        v252 = v327;
        *(v250 + 72) = v327;
        *(v250 + 80) = 0;
        v253 = swift_allocObject();
        *(v253 + 16) = v208;
        *(v253 + 24) = v251;
        *(v253 + 32) = 0;
        *(v253 + 40) = sub_1CF796A90;
        *(v253 + 48) = v250;
        *(v253 + 56) = v248;
        v254 = swift_allocObject();
        *(v254 + 16) = sub_1CF796A90;
        *(v254 + 24) = v250;

        sub_1CEFD09A0(v80);

        v255 = v252;
        sub_1CEFD09A0(v248);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v254, sub_1CF796A9C, v253);

        sub_1CEFD0A98(v248);
        v202 = v324;
        goto LABEL_50;
      }

      sub_1CF90CAC8(v80, sub_1CF8FDF90, v213);

LABEL_50:
      v203 = v329 + 2;
      --v202;
    }

    while (v202);
  }

  v256 = *&v287[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v257 = swift_allocObject();
  v258 = v291;
  v257[2] = v312;
  v257[3] = v258;
  v257[4] = v318;

  v259 = fpfs_current_log();
  v330 = fpfs_adopt_log();
  v260 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v339 = v261;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v262 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v262);

  sub_1CF9E6978();

  v263 = __fp_log_fork();

  *(v260 + 16) = v263;
  v264 = swift_allocObject();
  *(v264 + 16) = v259;
  *(v264 + 24) = v260;
  *(v264 + 32) = v256;
  *(v264 + 40) = "attachKnownFolders(_:options:request:completionHandler:)";
  *(v264 + 48) = 56;
  *(v264 + 56) = 2;
  *(v264 + 64) = sub_1CF2B1758;
  *(v264 + 72) = v257;
  v342 = sub_1CF2B9F54;
  v343 = v264;
  aBlock = MEMORY[0x1E69E9820];
  v339 = 1107296256;
  v340 = sub_1CEFCA444;
  v341 = &block_descriptor_4079;
  v265 = _Block_copy(&aBlock);
  v329 = v259;

  v266 = v256;

  v267 = v300;
  sub_1CF9E63F8();
  v336 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v268 = v302;
  v269 = v289;
  sub_1CF9E77B8();
  v270 = v317;
  sub_1CF9E7308();
  _Block_release(v265);
  (*(v303 + 8))(v268, v269);
  (*(v301 + 8))(v267, v288);

  v271 = v330;
  v272 = fpfs_adopt_log();

  result = (*(v316 + 8))(v321, v325);
  v274 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF89EEF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v77 = a4;
  v75 = a5;
  v79 = a3;
  v7 = sub_1CF9E53C8();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v23 = *(v11 + 16);
  v78 = a1;
  v23(v14, a1, v10);
  sub_1CEFD09A0(a2);
  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E72C8();
  sub_1CEFD0A98(a2);
  v26 = os_log_type_enabled(v24, v25);
  v76 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v70 = v15;
    v28 = v27;
    v69 = swift_slowAlloc();
    aBlock = v69;
    *v28 = 136446466;
    v68 = v25;
    v29 = sub_1CF9E5928();
    v30 = [v29 fp_shortDescription];

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v67 = a2;
    v33 = v32;

    (*(v11 + 8))(v14, v10);
    v34 = sub_1CEFD0DF0(v31, v33, &aBlock);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    v35 = sub_1CEFD11AC(v67);
    v37 = sub_1CEFD0DF0(v35, v36, &aBlock);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1CEFC7000, v24, v68, "resolving logical URL for %{public}s for %{public}s", v28, 0x16u);
    v38 = v69;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    v39 = *(v76 + 8);
    v40 = v70;
    v39(v21);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v39 = *(v16 + 8);
    v40 = v15;
    (v39)(v21, v15);
  }

  v41 = v78;
  v42 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v42);
  v65 = v79;
  v66 = v41;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = &v87;
  *(v43 + 24) = sub_1CF8FDF9C;
  *(v43 + 32) = &v67 - 4;
  *(v43 + 40) = &v89;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1CF8FDFB8;
  *(v44 + 24) = v43;
  v85 = sub_1CF50EB9C;
  v86 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1CF005DF8;
  v84 = &block_descriptor_4099;
  v45 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v46) = fpfs_openat();

  _Block_release(v45);

  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    v48 = v89;
    if (v89)
    {
      goto LABEL_6;
    }

    if ((v46 & 0x80000000) != 0)
    {
      if (MEMORY[0x1D38683F0](v47))
      {
        if (MEMORY[0x1D38683F0]() != 9939394)
        {
          MEMORY[0x1D38683F0]();
          v52 = sub_1CF9E6138();
          v49 = v77;
          if ((v52 & 0x100000000) != 0)
          {
            LODWORD(aBlock) = 22;
          }

          else
          {
            LODWORD(aBlock) = v52;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v53 = v72;
          v54 = v74;
          sub_1CF9E57D8();
          v48 = sub_1CF9E53A8();
          (*(v73 + 8))(v53, v54);
          swift_willThrow();
          goto LABEL_7;
        }

        v48 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_6:
        swift_willThrow();
        v49 = v77;
LABEL_7:
        swift_bridgeObjectRelease_n();

        *v49 = v48;
        return;
      }

      goto LABEL_21;
    }

    v46 = v87;
    if (v87)
    {
      v50 = v88;

      v51 = v75;
      *v75 = v46;
      v51[1] = v50;
      return;
    }
  }

  __break(1u);
LABEL_21:

  aBlock = 0;
  v82 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v82 = 0x80000001CFA2DF30;
  v80 = v46;
  v55 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v55);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v56 = v82;
  v79 = aBlock;
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E72B8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315650;
    v62 = sub_1CF9E7988();
    v64 = sub_1CEFD0DF0(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2048;
    *(v60 + 14) = 315;
    *(v60 + 22) = 2080;
    *(v60 + 24) = sub_1CEFD0DF0(v79, v56, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v58, v59, "[ASSERT] ‼️  %s:%lu: %s", v60, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);
  }

  (v39)(v71, v40);
  LODWORD(v66) = 0;
  v65 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF89F83C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a2;
  v45 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for VFSDetachedRootBookmark();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v42, 0, sizeof(v42));
  v43 = a1;
  v44 = v42;
  result = sub_1CEFE1894(sub_1CF6FCF48);
  if (!v4)
  {
    v32 = a3;
    v33 = a4;
    v21 = v35;
    (*(v35 + 16))(v15, v34, v8);
    (*(v21 + 56))(v15, 0, 1, v8);
    sub_1CF36C8E0(a1, v15, v19);
    v22 = &v19[*(v16 + 20)];
    v24 = *v22;
    v23 = *(v22 + 1);
    v40 = v24;
    v41 = v23;
    v38 = 47;
    v39 = 0xE100000000000000;
    v36 = 58;
    v37 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    sub_1CF9E5958();

    v25 = objc_allocWithZone(MEMORY[0x1E69674F8]);
    v26 = sub_1CF9E5928();
    v27 = sub_1CF9E5928();
    v28 = [v25 initWithKnownFolder:v26 logicalLocation:v27];

    (*(v35 + 8))(v11, v8);
    result = sub_1CEFD5338(v19, type metadata accessor for VFSDetachedRootBookmark);
    v29 = *(&v42[0] + 1);
    v30 = v33;
    *v33 = v28;
    v30[1] = v29;
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF89FBEC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-v8];
  sub_1CEFCCBDC(a1, &v12[-v8], &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    sub_1CF518C30(a2, (a3 + 16), v10);
  }

  else
  {
    sub_1CEFCCC44(v9, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  dispatch_group_leave(a2);
}

uint64_t FPDDomainFPFSBackend.getKnownFolderLocations(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = v4;
  v13 = a2;

  sub_1CEFD4024("getKnownFolderLocations(_:request:completionHandler:)", 53, 2, sub_1CF903280, v11, sub_1CF8F34E4, v10);
}

void sub_1CF89FF18(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong extensionBackend];

    if ([v12 respondsToSelector_])
    {
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFF9A6C;
      aBlock[3] = &block_descriptor_4029;
      v13 = _Block_copy(aBlock);

      [v12 getKnownFolderLocations:a5 request:a6 completionHandler:v13];
      swift_unknownObjectRelease();
      _Block_release(v13);

      return;
    }

    swift_unknownObjectRelease();
  }

  v14 = FPNotSupportedError();
  a3(0, v14);
}

uint64_t FPDDomainFPFSBackend.ingestFromCacheItem(with:requestedFields:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  swift_retain_n();
  v11 = a1;
  sub_1CEFD4024("ingestFromCacheItem(with:requestedFields:request:completionHandler:)", 68, 2, sub_1CF90324C, v9, sub_1CF8F34FC, v10);
}

void sub_1CF8A0320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v105 = a5;
  v99 = a4;
  v90 = sub_1CF9E63D8();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v88 - v14;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  v93 = type metadata accessor for Signpost(0);
  v96 = *(v93 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v98 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v97 = (&v88 - v29);
  v92 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v104 = &v88 - v32;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = a2;
  v34[3] = a3;
  v34[4] = v33;
  v35 = *(a1 + 16);
  v36 = swift_allocObject();
  v37 = v99;
  *(v36 + 2) = a1;
  *(v36 + 3) = v37;
  *(v36 + 4) = sub_1CF902EC0;
  *(v36 + 5) = v34;
  v101 = v36;
  *(v36 + 6) = v105;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1CF902EC0;
  *(v38 + 24) = v34;
  v105 = v38;
  v102 = v34;
  v103 = v35;
  v39 = *(v35 + qword_1EDEBBC38);
  swift_retain_n();

  v40 = v37;
  v99 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDEBBE40;
  (*(v16 + 56))(v25, 1, 1, v15);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v42 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v42);

  v91 = *(&aBlock + 1);
  v43 = aBlock;
  sub_1CEFCCBDC(v25, v22, &unk_1EC4BED20, &unk_1CFA00700);
  v44 = *(v16 + 48);
  v45 = v44(v22, 1, v15);
  v94 = v25;
  if (v45 == 1)
  {
    v46 = v41;
    v47 = v95;
    sub_1CF9E6048();
    if (v44(v22, 1, v15) != 1)
    {
      sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v47 = v95;
    (*(v16 + 32))(v95, v22, v15);
  }

  v48 = v104;
  (*(v16 + 16))(v104, v47, v15);
  v49 = v93;
  *(v48 + *(v93 + 20)) = v41;
  v50 = v48 + *(v49 + 24);
  *v50 = "DB queue wait";
  *(v50 + 8) = 13;
  *(v50 + 16) = 2;
  v51 = v41;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  v53 = v91;
  *(v52 + 32) = v43;
  *(v52 + 40) = v53;
  sub_1CF9E6028();

  (*(v16 + 8))(v47, v15);
  sub_1CEFCCC44(v94, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = v103[8];
  v94 = v103[21];
  v95 = v54;
  v91 = sub_1CF9E6448();
  v93 = *(v91 - 8);
  (*(v93 + 56))(v106, 1, 1, v91);
  v55 = v97;
  sub_1CEFDA34C(v48, v97, type metadata accessor for Signpost);
  v56 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v57 = (v92 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  sub_1CEFDA0C4(v55, v58 + v56, type metadata accessor for Signpost);
  v59 = (v58 + v57);
  v97 = sub_1CF5543A4;
  v60 = v105;
  *v59 = sub_1CF5543A4;
  v59[1] = v60;
  v61 = v98;
  sub_1CEFDA34C(v48, v98, type metadata accessor for Signpost);
  v62 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 25) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_1CEFDA0C4(v61, v65 + v56, type metadata accessor for Signpost);
  v66 = (v65 + v57);
  v67 = v91;
  *v66 = sub_1CF045408;
  v66[1] = 0;
  *(v65 + v62) = v103;
  v68 = v58;
  v69 = v65;
  v70 = v93;
  v71 = v69 + v63;
  *v71 = "ingestFromCacheItem(with:requestedFields:request:completionHandler:)";
  *(v71 + 8) = 68;
  *(v71 + 16) = 2;
  v72 = (v69 + v64);
  v73 = v105;
  *v72 = v97;
  v72[1] = v73;
  v74 = (v69 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
  v75 = v101;
  *v74 = sub_1CF8FDEA0;
  v74[1] = v75;
  v76 = swift_allocObject();
  v76[2] = sub_1CF903308;
  v76[3] = v68;
  v77 = v94;
  v76[4] = v94;
  swift_retain_n();

  v78 = fpfs_current_log();
  v103 = *(v77 + 16);
  v79 = v100;
  sub_1CEFCCBDC(v106, v100, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v70 + 48))(v79, 1, v67) == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
    v80 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v81 = v88;
    sub_1CF9E6438();
    (*(v70 + 8))(v79, v67);
    v80 = sub_1CF9E63C8();
    (*(v89 + 8))(v81, v90);
  }

  v82 = swift_allocObject();
  v82[2] = v78;
  v82[3] = sub_1CF4858EC;
  v82[4] = v69;
  v110 = sub_1CF2BA17C;
  v111 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v108 = sub_1CEFCA444;
  v109 = &block_descriptor_4023;
  v83 = _Block_copy(&aBlock);
  v84 = v78;

  v110 = sub_1CF2BA180;
  v111 = v76;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v108 = sub_1CEFCA444;
  v109 = &block_descriptor_4026;
  v85 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v103, v95, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v80, v83, v85);
  _Block_release(v85);
  _Block_release(v83);

  sub_1CEFCCC44(v106, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v104, type metadata accessor for Signpost);
  v86 = v99;
  v87 = fpfs_adopt_log();
}

void sub_1CF8A0EB4(void *a1, uint64_t a2, void *a3, void (*a4)(id), uint64_t a5, Swift::UInt a6)
{
  v87 = a4;
  v85 = a6;
  v86 = a5;
  v9 = sub_1CF9E5CF8();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1CF9E5248();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1CF9E5268();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = &v66[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v66[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v84 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = *(a2 + 16);
  v29 = *(v28 + 16);

  v83 = a3;
  v30 = [a3 identifier];
  v94 = v30;
  v31 = v88;
  sub_1CF68E230(&v94, v27, v26, *(v25 + 8), v95);
  if (v31)
  {

    return;
  }

  v73 = v21;
  v88 = v28;
  v33 = v83;
  v32 = v84;
  v34 = v85;

  memcpy(v92, v95, sizeof(v92));
  memcpy(v93, v95, sizeof(v93));
  if (sub_1CF08B99C(v93) == 1)
  {
    v35 = [v33 identifier];
    v36 = FPItemNotFoundError();

    v87(v36);
    return;
  }

  v37 = LOBYTE(v93[27]);
  v38 = v87;
  if (LOBYTE(v93[27]) == 255 || (v93[28] & 0x51) != 0)
  {
    v39 = [v33 identifier];
    v40 = FPItemNotFoundError();

    v38(v40);
LABEL_8:

    v41 = &unk_1EC4BFD80;
    v42 = &unk_1CFA0A2A0;
    v43 = v92;
LABEL_9:
    sub_1CEFCCC44(v43, v41, v42);
    return;
  }

  v44 = v93[26];
  v45 = v32[4];
  v72 = v32[3];
  v69 = v45;
  v71 = __swift_project_boxed_opaque_existential_1(v32, v72);
  v46 = *(v88 + 32);
  v68 = v44;
  v90 = v44;
  v67 = v37;
  v91 = v37;
  v70 = *(*v46 + 240);
  v47 = *(v69 + 8);

  v48 = v82;
  v70(&v90, 1, v71, v72, v47);
  v49 = v68;

  v50 = v73;
  if ((*(v81 + 48))(v48, 1, v73) == 1)
  {
    sub_1CEFCCC44(v48, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v51 = [v33 identifier];
    v40 = FPItemNotFoundError();

    v87(v40);
    goto LABEL_8;
  }

  v52 = v24;
  sub_1CEFE55D0(v48, v24, &unk_1EC4BE360, &qword_1CF9FE650);
  v53.rawValue = v34;
  if (v34)
  {
    v62 = &v52[*(v50 + 48)];
    if ((v62[*(type metadata accessor for ItemMetadata() + 80)] & 1) != 0 || *v62 == 1)
    {
      sub_1CF9E5218();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v63 = v74;
      v64 = v77;
      sub_1CF9E57D8();
      v65 = sub_1CF9E50D8();
      (*(v76 + 8))(v63, v64);
      v87(v65);

      goto LABEL_20;
    }
  }

  v54 = v32;
  v55 = v32[3];
  v83 = v54[4];
  v84 = __swift_project_boxed_opaque_existential_1(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CF9FA450;
  Fields.init(_:)(v53);
  v57 = v90;
  v58 = v78;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v60 = v59;
  (*(v79 + 8))(v58, v80);
  v61 = v60 * 1000000000.0;
  if (COERCE__INT64(fabs(v60 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v61 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v61 < 9.22337204e18)
  {
    v89 = 0;
    *(v56 + 32) = v49;
    *(v56 + 40) = v67;
    *(v56 + 41) = 0;
    *(v56 + 48) = v57;
    *(v56 + 56) = 0x2000000000000000;
    *(v56 + 64) = v61;
    *(v56 + 146) = 2560;
    sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v56, v84, v55, v83);

    v87(0);
LABEL_20:
    sub_1CEFCCC44(v92, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v41 = &unk_1EC4BE360;
    v42 = &qword_1CF9FE650;
    v43 = v52;
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
}

void sub_1CF8A17EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v37 - v16);
  sub_1CEFCCBDC(a1, &v37 - v16, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    if (os_log_type_enabled(v20, v21))
    {
      v38 = a3;
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v22 = 136315138;
      v23 = swift_beginAccess();
      v25 = *(a2 + 32);
      v26 = *(a2 + 40);
      if (*(a2 + 41))
      {
        v27 = v25;
        v28 = NSFileProviderItemIdentifier.description.getter();
        v30 = v29;
        sub_1CEFD0994(v25, v26, 1);
        v31 = v28;
      }

      else
      {
        v44 = *(a2 + 32);
        LOBYTE(v45) = v26;
        v31 = VFSItemID.description.getter(v23, v24);
        v30 = v33;
      }

      v34 = sub_1CEFD0DF0(v31, v30, &v43);

      *(v22 + 4) = v34;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Failed to materialize fallback destination %s", v22, 0xCu);
      v35 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);

      (*(v39 + 8))(v13, v40);
      a3 = v38;
    }

    else
    {

      (*(v39 + 8))(v13, v40);
    }

    v44 = v18;
    v45 = 256;
    v36 = v18;
    a3(&v44);

    sub_1CF8FDA2C(v44, v45, SHIBYTE(v45));
  }

  else
  {
    sub_1CEFDA0C4(v17, v9, type metadata accessor for VFSItem);
    v32 = v9[8];
    v41 = *v9;
    v42 = v32;
    a3(&v41);
    sub_1CEFD5338(v9, type metadata accessor for VFSItem);
  }
}

void sub_1CF8A1BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v103 = a8;
  v112 = a7;
  v113 = a6;
  v110 = a5;
  v111 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v100 - v12;
  v107 = sub_1CF9E5A58();
  v14 = *(v107 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v100 - v18;
  v19 = type metadata accessor for VFSItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6118();
  v108 = *(v23 - 8);
  v109 = v23;
  v24 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v100 - v31);
  sub_1CEFCCBDC(a1, &v100 - v31, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    if (a2)
    {
      v34 = a2;

      v35 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E72A8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v114 = v39;
        *v38 = 136315138;
        v40 = swift_beginAccess();
        v42 = *(v34 + 32);
        v43 = *(v34 + 40);
        if (*(v34 + 41))
        {
          v44 = v42;
          v107 = NSFileProviderItemIdentifier.description.getter();
          v46 = v45;
          sub_1CEFD0994(v42, v43, 1);
          v47 = v107;
        }

        else
        {
          v116 = *(v34 + 32);
          v117 = v43;
          v47 = VFSItemID.description.getter(v40, v41);
          v46 = v82;
        }

        v83 = sub_1CEFD0DF0(v47, v46, &v114);

        *(v38 + 4) = v83;
        _os_log_impl(&dword_1CEFC7000, v36, v37, "Failed to materialize new parent, attempting to fall back to %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1D386CDC0](v39, -1, -1);
        MEMORY[0x1D386CDC0](v38, -1, -1);
      }

      (*(v108 + 8))(v28, v109);
      sub_1CF8F4034(v34, v111, v110, v113, v112);
    }

    else
    {
      v118 = *v32;
      v119 = 256;
      v54 = v33;
      v113(&v118);

      sub_1CF8FDA2C(v118, v119, SHIBYTE(v119));
    }
  }

  else
  {
    sub_1CEFDA0C4(v32, v22, type metadata accessor for VFSItem);
    v48 = v22;
    if (a2)
    {
      v49 = a2;

      sub_1CF25116C(v13);
      v50 = v14;
      v51 = *(v14 + 48);
      v52 = v107;
      if (v51(v13, 1, v107) == 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
        v53 = v22[8];
        v118 = *v22;
        v119 = v53;
        v113(&v118);
      }

      else
      {
        v56 = v106;
        (*(v50 + 32))(v106, v13, v52);
        v57 = *(*(*(v111 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v58 = swift_dynamicCastClassUnconditional();

        v59 = objc_sync_enter(v58);
        if (v59)
        {
          MEMORY[0x1EEE9AC00](v59);
          *(&v100 - 2) = v58;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &(&v100)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        isa = v58[20].isa;

        v61 = objc_sync_exit(v58);
        v62 = v105;
        if (v61)
        {
          MEMORY[0x1EEE9AC00](v61);
          *(&v100 - 2) = v58;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &(&v100)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        (*(v50 + 16))(v62, isa + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v52);

        sub_1CF9E5A18();
        sub_1CF9E5A18();
        v63 = sub_1CF9E6AE8();

        if (v63)
        {
          v64 = fpfs_current_or_default_log();
          v65 = v104;
          sub_1CF9E6128();

          v66 = v103;

          v67 = sub_1CF9E6108();
          v68 = sub_1CF9E7298();

          v102 = v68;
          if (os_log_type_enabled(v67, v68))
          {
            v100 = v67;
            v101 = v48;
            v69 = v49;
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v120[0] = v71;
            *v70 = 136315394;
            v72 = swift_beginAccess();
            v74 = *(v66 + 32);
            v75 = *(v66 + 40);
            v76 = v111;
            if (*(v66 + 41))
            {
              v77 = v74;
              v78 = NSFileProviderItemIdentifier.description.getter();
              v80 = v79;
              sub_1CEFD0994(v74, v75, 1);
              v81 = v78;
            }

            else
            {
              v116 = *(v66 + 32);
              v117 = v75;
              v81 = VFSItemID.description.getter(v72, v73);
              v80 = v85;
            }

            v86 = sub_1CEFD0DF0(v81, v80, v120);

            *(v70 + 4) = v86;
            *(v70 + 12) = 2080;
            v87 = swift_beginAccess();
            v89 = *(v69 + 32);
            v90 = *(v69 + 40);
            if (*(v69 + 41))
            {
              v91 = v89;
              v92 = NSFileProviderItemIdentifier.description.getter();
              v94 = v93;
              sub_1CEFD0994(v89, v90, 1);
              v95 = v92;
            }

            else
            {
              v114 = *(v69 + 32);
              v115 = v90;
              v95 = VFSItemID.description.getter(v87, v88);
              v94 = v96;
            }

            v97 = sub_1CEFD0DF0(v95, v94, v120);

            *(v70 + 14) = v97;
            v98 = v100;
            _os_log_impl(&dword_1CEFC7000, v100, v102, "Destination %s for item is in the trash, falling back to %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v71, -1, -1);
            MEMORY[0x1D386CDC0](v70, -1, -1);

            (*(v108 + 8))(v104, v109);
            v49 = v69;
            v48 = v101;
            v62 = v105;
            v56 = v106;
          }

          else
          {

            (*(v108 + 8))(v65, v109);
            v76 = v111;
          }

          sub_1CF8F4034(v49, v76, v110, v113, v112);
        }

        else
        {
          v84 = *(v48 + 8);
          v118 = *v48;
          v119 = v84;
          v113(&v118);
        }

        v99 = *(v50 + 8);
        v99(v62, v52);
        v99(v56, v52);
      }
    }

    else
    {
      v55 = v22[8];
      v118 = *v22;
      v119 = v55;
      v113(&v118);
    }

    sub_1CEFD5338(v48, type metadata accessor for VFSItem);
  }
}

void sub_1CF8A2598(int a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = sub_1CF9E6938();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1CF5162A0(sub_1CF8FD974);
  if (v2)
  {

    *a2 = 0;
    return;
  }

  v8 = v7;
  v16 = sub_1CF195D88(v7);
  v17 = v9;
  if ((v8 & 0x8000000000000000) == 0)
  {
    sub_1CF9E5AF8();
    sub_1CF8DCBB4(&v16, a1);
    v10 = v16;
    v11 = v17;
    sub_1CEFE42D4(v16, v17);
    sub_1CF9E6918();
    v12 = sub_1CF9E68D8();
    if (v13)
    {
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = sub_1CF9E6888();
        sub_1CEFE4714(v10, v11);

LABEL_12:
        sub_1CEFE4714(v10, v11);
        *a2 = v15;
        return;
      }

      sub_1CEFE4714(v10, v11);
    }

    else
    {
      sub_1CEFE4714(v10, v11);
    }

    v15 = 0;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1CF8A2748(void *a1, Swift::UInt a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v99 = a5;
  v100 = a7;
  v98 = a1;
  v95 = a9;
  LODWORD(v96) = a8;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = a3;
  sub_1CEFD09A0(a4);
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E7298();

  sub_1CEFD0A98(a4);
  v24 = os_log_type_enabled(v22, v23);
  v102 = v14;
  v103 = v13;
  v94.rawValue = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v93 = a6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v105 = v28;
    *v25 = 136315650;
    v29 = sub_1CF7F5844(a2);
    v31 = sub_1CEFD0DF0(v29, v30, &v105);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2112;
    v32 = [v21 itemID];
    *(v25 + 14) = v32;
    *v27 = v32;
    *(v25 + 22) = 2080;
    v33 = sub_1CEFD11AC(a4);
    v35 = sub_1CEFD0DF0(v33, v34, &v105);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "Request to modify fields %s for item with ID %@: %s", v25, 0x20u);
    sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v36 = v27;
    a6 = v93;
    MEMORY[0x1D386CDC0](v36, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);

    v97 = *(v102 + 8);
    v97(v19, v103);
  }

  else
  {

    v97 = *(v14 + 8);
    v97(v19, v13);
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v99;
  *(v37 + 24) = a6;
  v38 = swift_allocObject();
  v39 = v98;
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = sub_1CF90325C;
  v40[3] = v37;
  v40[4] = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1CF8FD874;
  *(v41 + 24) = v40;
  v42 = swift_allocObject();
  rawValue = v94.rawValue;
  Fields.init(_:)(v94);

  v44 = [v21 itemID];
  v45 = sub_1CEFD4E9C([v44 identifier]);

  v99 = v39[2];
  v46 = swift_allocObject();
  *(v46 + 16) = v21;
  *(v46 + 24) = sub_1CF903440;
  *(v46 + 32) = v41;
  *(v46 + 40) = rawValue;
  v47 = v100;
  *(v46 + 48) = v42;
  *(v46 + 56) = v47;
  *(v46 + 64) = a4;
  *(v46 + 72) = v39;
  *(v46 + 80) = v96 & 1;
  *(v46 + 81) = v95 & 1;
  v48 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v49 = v21;
  sub_1CEFD09A0(a4);

  v50 = v47;

  v98 = [v48 init];
  v51 = swift_allocObject();
  v51[2] = sub_1CF8FD884;
  v51[3] = v46;
  v100 = v51;
  v51[4] = a4;
  sub_1CEFD09A0(a4);

  sub_1CEFD09A0(a4);

  v52 = fpfs_current_or_default_log();
  v53 = v101;
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v54 = sub_1CF9E6108();
  v55 = sub_1CF9E7298();
  if (os_log_type_enabled(v54, v55))
  {
    v92 = v42;
    v93 = v41;
    v56 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v104 = v96;
    *v56 = 136315906;
    v57 = swift_beginAccess();
    v59 = *(v45 + 32);
    v60 = *(v45 + 40);
    if (*(v45 + 41))
    {
      v61 = v59;
      v62 = NSFileProviderItemIdentifier.description.getter();
      v64 = v63;
      sub_1CEFD0994(v59, v60, 1);
    }

    else
    {
      v105 = *(v45 + 32);
      v106 = v60;
      v62 = VFSItemID.description.getter(v57, v58);
      v64 = v65;
    }

    v66 = sub_1CEFD0DF0(v62, v64, &v104);

    *(v56 + 4) = v66;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v104);
    *(v56 + 22) = 2080;
    v67 = sub_1CEFD11AC(a4);
    v69 = v68;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v70 = sub_1CEFD0DF0(v67, v69, &v104);

    *(v56 + 24) = v70;
    *(v56 + 32) = 2048;
    *(v56 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v54, v55, "Lookup itemID %s with behavior %s request %s iteration %ld", v56, 0x2Au);
    v71 = v96;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v56, -1, -1);

    v97(v101, v103);
    v42 = v92;
    v41 = v93;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v97(v53, v103);
  }

  swift_beginAccess();
  v72 = *(v45 + 32);
  v73 = *(v45 + 40);
  if (*(v45 + 41))
  {
    v74 = qword_1EDEA34B0;
    v75 = v72;
    if (v74 != -1)
    {
      swift_once();
    }

    v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v78 = v77;
    if (v76 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v78 == v79)
    {

      sub_1CEFD0994(v72, v73, 1);
LABEL_18:
      sub_1CF90CAC8(a4, sub_1CF796A0C, v100);
      v80 = v98;
      goto LABEL_24;
    }

    v81 = sub_1CF9E8048();

    sub_1CEFD0994(v72, v73, 1);
    if (v81)
    {
      goto LABEL_18;
    }
  }

  else if (!v72 && v73 == 2)
  {
    goto LABEL_18;
  }

  v92 = v42;
  v93 = v41;
  if (((a4 >> 58) & 0x3C | (a4 >> 1) & 3) == 0x1E)
  {
    v82 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v83 = v82;
  }

  else
  {
    v84 = swift_allocObject();
    *(v84 + 16) = a4;
    v83 = v84 | 0x7000000000000004;
    v82 = a4;
  }

  v80 = v98;
  sub_1CEFD09A0(v82);
  v85 = swift_allocObject();
  v87 = v99;
  v86 = v100;
  *(v85 + 16) = sub_1CF796A0C;
  *(v85 + 24) = v86;
  *(v85 + 32) = v87;
  *(v85 + 40) = 1;
  *(v85 + 48) = a4;
  *(v85 + 56) = v45;
  *(v85 + 64) = 0;
  *(v85 + 72) = v80;
  *(v85 + 80) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v45;
  *(v88 + 24) = v87;
  *(v88 + 32) = 0;
  *(v88 + 40) = sub_1CF796A90;
  *(v88 + 48) = v85;
  *(v88 + 56) = v83;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1CF796A90;
  *(v89 + 24) = v85;

  sub_1CEFD09A0(a4);

  v103 = a4;

  v90 = v80;
  sub_1CEFD09A0(v83);
  sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v89, sub_1CF796A9C, v88);

  a4 = v103;
  sub_1CEFD0A98(v83);
LABEL_24:

  sub_1CEFD0A98(a4);
}

void sub_1CF8A31A8(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, char *a7, unint64_t a8, unint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v547 = a6;
  v548 = a8;
  v552 = a7;
  v554 = a5;
  v556 = a4;
  v555 = a3;
  v553 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v527 = &v484 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v528 = *(v15 - 8);
  v16 = *(v528 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v531 = (&v484 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v529 = (&v484 - v19);
  v530 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v541 = &v484 - v22;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v23 = *(*(v515 - 8) + 64);
  MEMORY[0x1EEE9AC00](v515);
  v514 = &v484 - v24;
  v25 = sub_1CF9E5248();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v507 = &v484 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E5268();
  v508 = *(v28 - 8);
  v509 = v28;
  v29 = *(v508 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v506 = &v484 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v522 = &v484 - v33;
  v533 = sub_1CF9E63D8();
  v540 = *(v533 - 8);
  v34 = *(v540 + 64);
  MEMORY[0x1EEE9AC00](v533);
  v524 = &v484 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v532 = &v484 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v519 = &v484 - v39;
  v526 = sub_1CF9E6448();
  v537 = *(v526 - 8);
  v40 = v537[8];
  MEMORY[0x1EEE9AC00](v526);
  v521 = &v484 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v520 = &v484 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v525 = &v484 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v543 = &v484 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v517 = *(v49 - 8);
  v50 = *(v517 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v523 = &v484 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v518 = v51;
  MEMORY[0x1EEE9AC00](v52);
  v544 = &v484 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v510 = &v484 - v56;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FE8, &unk_1CFA18180);
  v57 = *(*(v501 - 8) + 64);
  MEMORY[0x1EEE9AC00](v501);
  v500 = &v484 - v58;
  v59 = sub_1CF9E53C8();
  v493 = *(v59 - 8);
  v494 = v59;
  v60 = *(v493 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v492 = &v484 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v499 = &v484 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v503 = &v484 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v513 = &v484 - v68;
  v69 = sub_1CF9E5A58();
  v70 = *(v69 - 8);
  v535 = v69;
  v536 = v70;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v495 = &v484 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v497 = &v484 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v498 = &v484 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v512 = &v484 - v78;
  v511 = type metadata accessor for ItemMetadata();
  v79 = *(*(v511 - 8) + 64);
  MEMORY[0x1EEE9AC00](v511);
  v542 = &v484 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for VFSItem(0);
  v505 = *(v81 - 8);
  v82 = *(v505 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v516 = &v484 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v504 = &v484 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v496 = &v484 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v502 = &v484 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v484 - v91;
  v551 = sub_1CF9E6118();
  v550 = *(v551 - 1);
  v93 = *(v550 + 64);
  MEMORY[0x1EEE9AC00](v551);
  v539 = &v484 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v491 = &v484 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v538 = &v484 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v490 = &v484 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v484 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v107 = (&v484 - v106);
  sub_1CEFCCBDC(v553, &v484 - v106, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v545 = swift_allocBox();
    v120 = v119;
    sub_1CEFDA0C4(v107, v119, type metadata accessor for VFSItem);
    v546 = a2;
    v121 = sub_1CF0689E4();
    v553 = sub_1CEFD4E9C(v121);
    v549 = swift_allocBox();
    v123 = v122;
    v534 = v120;
    sub_1CEFDA34C(v120, v92, type metadata accessor for VFSItem);
    v124 = *(v92 + 2);
    v125 = v92[24];
    v127 = *(v92 + 4);
    v126 = *(v92 + 5);
    v486 = v81;
    sub_1CEFDA34C(&v92[*(v81 + 28)], v123 + *(v49 + 40), type metadata accessor for ItemMetadata);

    sub_1CEFD5338(v92, type metadata accessor for VFSItem);
    *v123 = v124;
    *(v123 + 8) = v125;
    v128 = v123;
    *(v123 + 16) = v127;
    *(v123 + 24) = v126;
    v129 = v554;
    v130 = v547;
    v131 = v49;
    if ((v554 & 0x40000000) != 0)
    {
      swift_beginAccess();
      v132 = *(v130 + 16);
      if ((v132 & 2) == 0)
      {
        *(v130 + 16) = v132 | 2;
      }
    }

    swift_beginAccess();
    *&v573 = *(v130 + 16);
    v133 = v542;
    v134 = v546;
    sub_1CEFF54BC(v542);
    sub_1CF677700(&v573, v133);
    sub_1CEFD5338(v133, type metadata accessor for ItemMetadata);
    swift_beginAccess();
    if (*(v130 + 16))
    {
      v135 = [v134 filename];
      v136 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v137 = v129;
      v139 = v138;

      *&v573 = v136;
      *(&v573 + 1) = v139;
      *&v558 = 58;
      *(&v558 + 1) = 0xE100000000000000;
      *&v567 = 47;
      *(&v567 + 1) = 0xE100000000000000;
      v482 = sub_1CEFE4E68();
      v483 = v482;
      v480 = MEMORY[0x1E69E6158];
      v481 = v482;
      v140 = sub_1CF9E7668();
      v142 = v141;
      v129 = v137;

      v143 = *(v128 + 24);
      *(v128 + 16) = v140;
      *(v128 + 24) = v142;
    }

    v144 = v534;
    v489 = v128;
    v485 = v131;
    if ((v129 & 0x40000000) == 0)
    {
      v542 = 0;
      v484 = 0;
      goto LABEL_31;
    }

    v145 = [v134 isTrashed];
    v146 = MEMORY[0x1E6967280];
    if (v145)
    {
      v147 = sub_1CEFD4E9C(*MEMORY[0x1E6967280]);

      v542 = 0;
LABEL_14:
      v484 = 0;
LABEL_30:
      v553 = v147;
      goto LABEL_31;
    }

    v148 = [v134 parentItemIdentifier];
    v149 = *v146;
    v150 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v152 = v151;
    if (v150 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v152 == v153)
    {
    }

    else
    {
      v154 = sub_1CF9E8048();

      if ((v154 & 1) == 0)
      {
        v134 = v546;
        v390 = sub_1CF0689E4();
        v147 = sub_1CEFD4E9C(v390);

        v391 = [v134 providerID];
        v392 = [v391 fp_isiCloudDriveIdentifier];

        v393 = MEMORY[0x1E6967160];
        if (!v392)
        {
          v393 = MEMORY[0x1E6967258];
        }

        v542 = sub_1CEFD4E9C(*v393);

        goto LABEL_14;
      }
    }

    v155 = v513;
    sub_1CF25116C(v513);
    v156 = v535;
    v157 = v536;
    if ((*(v536 + 48))(v155, 1, v535) == 1)
    {
      sub_1CEFCCC44(v155, &unk_1EC4BE310, qword_1CF9FCBE0);
      v484 = 0;
      v134 = v546;
LABEL_26:
      v165 = [v134 providerID];
      v166 = [v165 fp_isiCloudDriveIdentifier];

      if (v166)
      {
        v167 = MEMORY[0x1E6967160];
      }

      else
      {
        v167 = MEMORY[0x1E6967258];
      }

      v147 = sub_1CEFD4E9C(*v167);

      v542 = 0;
      goto LABEL_30;
    }

    (*(v157 + 32))(v512, v155, v156);
    sub_1CF9E5A18();
    *&v558 = 1;
    *&v567 = 0;
    v158 = swift_allocObject();
    v158[2] = &v558;
    v158[3] = sub_1CF8A2598;
    v158[4] = 0;
    v158[5] = &v567;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_1CF8FD968;
    *(v159 + 24) = v158;
    *&v575 = sub_1CF50EB9C;
    *(&v575 + 1) = v159;
    *&v573 = MEMORY[0x1E69E9820];
    *(&v573 + 1) = 1107296256;
    *&v574 = sub_1CF005DF8;
    *(&v574 + 1) = &block_descriptor_3880;
    v160 = _Block_copy(&v573);

    sub_1CF9E6978();
    v161 = fpfs_openat();

    _Block_release(v160);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v164 = v567;
    if (v567)
    {
      swift_willThrow();

      v484 = 0;
      v134 = v546;
LABEL_24:

      (*(v536 + 8))(v512, v535);
      sub_1CF00D644(v558);
LABEL_25:
      v144 = v534;
      goto LABEL_26;
    }

    v134 = v546;
    if (v161 < 0)
    {
      if (!MEMORY[0x1D38683F0](v163))
      {

        *&v573 = 0;
        *(&v573 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        *&v573 = 0xD00000000000001ALL;
        *(&v573 + 1) = 0x80000001CFA2DF30;
        v566 = v161;
        v461 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v461);

        MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
        v462 = v573;
        v463 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v464 = sub_1CF9E6108();
        v465 = sub_1CF9E72B8();

        if (os_log_type_enabled(v464, v465))
        {
          v466 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *&v573 = v130;
          *v466 = 136315650;
          v467 = sub_1CF9E7988();
          v469 = sub_1CEFD0DF0(v467, v468, &v573);

          *(v466 + 4) = v469;
          *(v466 + 12) = 2048;
          *(v466 + 14) = 315;
          *(v466 + 22) = 2080;
          *(v466 + 24) = sub_1CEFD0DF0(v462, *(&v462 + 1), &v573);
          _os_log_impl(&dword_1CEFC7000, v464, v465, "[ASSERT] ‼️  %s:%lu: %s", v466, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v130, -1, -1);
          MEMORY[0x1D386CDC0](v466, -1, -1);
        }

        (*(v550 + 8))(v490, v551);
        LODWORD(v483) = 0;
        v482 = 315;
        goto LABEL_173;
      }

      if (MEMORY[0x1D38683F0]() != 9939394)
      {
        MEMORY[0x1D38683F0]();
        v432 = sub_1CF9E6138();
        if ((v432 & 0x100000000) != 0)
        {
          LODWORD(v573) = 22;
        }

        else
        {
          LODWORD(v573) = v432;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v433 = v492;
        v434 = v494;
        sub_1CF9E57D8();
        v435 = sub_1CF9E53A8();
        (*(v493 + 8))(v433, v434);
        swift_willThrow();

        v484 = 0;
        goto LABEL_24;
      }

      v425 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();

      swift_bridgeObjectRelease_n();
      (*(v536 + 8))(v512, v535);
      sub_1CF00D644(v558);
    }

    else
    {

      isEscapingClosureAtFileLocation = v558;
      if (v558 == 1)
      {
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (isEscapingClosureAtFileLocation)
      {
        v400 = sub_1CEFD4E9C(isEscapingClosureAtFileLocation);

        v401 = [v546 providerID];
        v402 = [v401 fp_isiCloudDriveIdentifier];

        v403 = MEMORY[0x1E6967160];
        if (!v402)
        {
          v403 = MEMORY[0x1E6967258];
        }

        v404 = sub_1CEFD4E9C(*v403);
        sub_1CF00D644(isEscapingClosureAtFileLocation);
        (*(v536 + 8))(v512, v535);
        v542 = v404;

        v484 = 0;
        v553 = v400;
        v134 = v546;
        v144 = v534;
LABEL_31:
        v488 = *(v144 + 16);
        v487 = *(v144 + 24);
        swift_beginAccess();
        v168 = *(v130 + 16);
        v169 = swift_allocObject();
        v170 = v555;
        *(v169 + 16) = v134;
        *(v169 + 24) = v170;
        v171 = v549;
        *(v169 + 32) = v556;
        *(v169 + 40) = v171;
        LODWORD(v490) = a10;
        *(v169 + 48) = a10 & 1;
        LODWORD(v512) = a11;
        *(v169 + 49) = a11 & 1;
        *(v169 + 56) = v130;
        *(v169 + 64) = a9;
        v172 = v554;
        *(v169 + 72) = v545;
        *(v169 + 80) = v172;
        v173 = v552;
        *(v169 + 88) = v552;
        v513 = v169;
        if ((v168 & 2) == 0)
        {
          v548 = a9;
          v174 = v489;
          swift_beginAccess();
          v175 = v488;
          *v174 = v488;
          v176 = v487;
          *(v174 + 8) = v487;
          if (v490)
          {
            v177 = 0;
          }

          else
          {
            v177 = 4;
          }

          v539 = v177;
          if ((v512 & 1) == 0)
          {
            v220 = v546;
            v221 = v552;

            v181 = v548;

            v178 = v547;

            goto LABEL_44;
          }

          v178 = v547;
          swift_beginAccess();
          v179 = v552;
          v180 = v534;
          v181 = v548;
          if ((v178[16] & 3) == 0)
          {
            v308 = v546;
            v309 = v179;

            v222 = v544;
            goto LABEL_76;
          }

          v182 = v176;
          v183 = *(*(*(v548 + 16) + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v184 = swift_dynamicCastClassUnconditional();
          v185 = v183;
          v186 = *(v174 + 16);
          v187 = *(v174 + 24);
          v531 = v186;
          swift_beginAccess();
          v538 = *v180;
          v188 = *(v180 + 8);
          *&v567 = v175;
          BYTE8(v567) = v182;
          v189 = v552;
          isEscapingClosureAtFileLocation = v184;
          v577 = 0u;
          v578 = 0u;
          v575 = 0u;
          v576 = 0u;
          v573 = 0u;
          v574 = 0u;
          v190 = v546;
          v191 = v189;

          v541 = v185;

          sub_1CEFDAA48(&v567, &v573, &v558);
          v192 = v558;

          v193 = v510;
          v194 = v484;
          sub_1CF263ADC(v192, 0, 1, v510);
          if (v194)
          {

LABEL_39:
            sub_1CF9E50F8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
            v195 = v506;
            v196 = v509;
            sub_1CF9E57D8();
            v197 = sub_1CF9E50D8();
            (*(v508 + 8))(v195, v196);
            (v555)(0, v197);

            return;
          }

          v394 = v531;
          v395 = v187;
          LODWORD(v530) = v188;
          if ((*(v505 + 48))(v193, 1, v486) == 1)
          {
            sub_1CEFCCC44(v193, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v396 = swift_allocObject();
            *(v396 + 16) = 1;
            v397 = v396 | 0x7000000000000000;
            sub_1CF1B8150();
            v398 = swift_allocError();
            *v399 = v397;

            *&v573 = v538;
            BYTE8(v573) = v530;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = v398;
            sub_1CEFCCC44(&v573, &unk_1EC4C4FF0, &unk_1CFA18190);
            goto LABEL_39;
          }

          v405 = v504;
          sub_1CEFDA0C4(v193, v504, type metadata accessor for VFSItem);
          v163 = objc_sync_enter(isEscapingClosureAtFileLocation);
          v406 = v538;
          if (v163)
          {
LABEL_168:
            MEMORY[0x1EEE9AC00](v163);
            v482 = isEscapingClosureAtFileLocation;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v480, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v407 = objc_sync_exit(isEscapingClosureAtFileLocation);
          v408 = v536;
          v409 = v503;
          if (v407)
          {
            MEMORY[0x1EEE9AC00](v407);
            v482 = isEscapingClosureAtFileLocation;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v480, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          sub_1CF25116C(v503);
          v410 = v535;
          v529 = *(v408 + 48);
          if ((v529)(v409, 1, v535) == 1)
          {
            sub_1CEFCCC44(v409, &unk_1EC4BE310, qword_1CF9FCBE0);
            sub_1CF1B8150();
            v411 = swift_allocError();
            *v412 = 0xB000000000000008;

            *&v573 = v406;
            BYTE8(v573) = v530;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = v411;
            sub_1CEFD5338(v405, type metadata accessor for VFSItem);

            sub_1CEFCCC44(&v573, &unk_1EC4C4FF0, &unk_1CFA18190);
            goto LABEL_39;
          }

          v538 = *(v408 + 32);
          v413 = v409;
          v414 = v497;
          (v538)(v497, v413, v410);
          *&v573 = v394;
          *(&v573 + 1) = v395;
          *&v558 = 47;
          *(&v558 + 1) = 0xE100000000000000;
          *&v567 = 58;
          *(&v567 + 1) = 0xE100000000000000;
          v482 = sub_1CEFE4E68();
          v483 = v482;
          v480 = MEMORY[0x1E69E6158];
          v481 = v482;
          sub_1CF9E7668();
          v415 = v498;
          sub_1CF9E5958();

          v416 = *(v536 + 8);
          v536 += 8;
          v416(v414, v535);
          v417 = v496;
          sub_1CEFDA0C4(v405, v496, type metadata accessor for VFSItem);

          v419 = v500;
          v418 = v501;
          v420 = *(v501 + 48);
          v421 = v415;
          v130 = v538;
          (v538)(v500, v421, v535);
          sub_1CEFDA0C4(v417, &v419[v420], type metadata accessor for VFSItem);
          v422 = v502;
          sub_1CEFDA0C4(&v419[*(v418 + 48)], v502, type metadata accessor for VFSItem);
          v416(v419, v535);
          v423 = v499;
          sub_1CF25116C(v499);
          v424 = v535;
          if ((v529)(v423, 1, v535) == 1)
          {
            sub_1CEFD5338(v422, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v423, &unk_1EC4BE310, qword_1CF9FCBE0);
            goto LABEL_39;
          }

          (v130)(v495, v423, v424);
          v426 = sub_1CF9E5A18();
          MEMORY[0x1EEE9AC00](v426);
          v482 = v489;
          v558 = xmmword_1CF9FC980;
          *&v567 = 0;
          v427 = swift_allocObject();
          v427[2] = &v558;
          v427[3] = sub_1CF8FD928;
          v427[4] = &v480;
          v427[5] = &v567;
          v428 = swift_allocObject();
          *(v428 + 16) = sub_1CF8FD944;
          *(v428 + 24) = v427;
          *&v575 = sub_1CF005DC8;
          *(&v575 + 1) = v428;
          *&v573 = MEMORY[0x1E69E9820];
          *(&v573 + 1) = 1107296256;
          *&v574 = sub_1CF005DF8;
          *(&v574 + 1) = &block_descriptor_3842;
          v429 = _Block_copy(&v573);

          sub_1CF9E6978();
          LODWORD(v130) = fpfs_openat();

          _Block_release(v429);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v430 = v567;
            if (v567)
            {
              swift_willThrow();
LABEL_125:
              swift_bridgeObjectRelease_n();
              sub_1CF0BA850(v558, *(&v558 + 1));
              v431 = v430;
              (v555)(0, v430);

              v416(v495, v535);
              sub_1CEFD5338(v502, type metadata accessor for VFSItem);

              goto LABEL_99;
            }

            if ((v130 & 0x80000000) != 0)
            {
              if (!MEMORY[0x1D38683F0](v163))
              {
                while (1)
                {

                  *&v573 = 0;
                  *(&v573 + 1) = 0xE000000000000000;
                  sub_1CF9E7948();

                  *&v573 = 0xD00000000000001ALL;
                  *(&v573 + 1) = 0x80000001CFA2DF30;
                  v564 = v130;
                  v470 = sub_1CF9E7F98();
                  MEMORY[0x1D3868CC0](v470);

                  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
                  v471 = v573;
                  v472 = fpfs_current_or_default_log();
                  sub_1CF9E6128();

                  v473 = sub_1CF9E6108();
                  v474 = sub_1CF9E72B8();

                  if (os_log_type_enabled(v473, v474))
                  {
                    v475 = swift_slowAlloc();
                    v476 = swift_slowAlloc();
                    *&v573 = v476;
                    *v475 = 136315650;
                    v477 = sub_1CF9E7988();
                    LODWORD(v130) = v478;
                    v479 = sub_1CEFD0DF0(v477, v478, &v573);

                    *(v475 + 4) = v479;
                    *(v475 + 12) = 2048;
                    *(v475 + 14) = 315;
                    *(v475 + 22) = 2080;
                    *(v475 + 24) = sub_1CEFD0DF0(v471, *(&v471 + 1), &v573);
                    _os_log_impl(&dword_1CEFC7000, v473, v474, "[ASSERT] ‼️  %s:%lu: %s", v475, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1D386CDC0](v476, -1, -1);
                    MEMORY[0x1D386CDC0](v475, -1, -1);
                  }

                  (*(v550 + 8))(v491, v551);
                  LODWORD(v483) = 0;
                  v482 = 315;
LABEL_173:
                  sub_1CF9E7B68();
                  __break(1u);
                }
              }

              if (MEMORY[0x1D38683F0]() == 9939394)
              {
                v430 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
                swift_willThrow();
              }

              else
              {
                v551 = v416;
                MEMORY[0x1D38683F0]();
                v441 = sub_1CF9E6138();
                if ((v441 & 0x100000000) != 0)
                {
                  LODWORD(v573) = 22;
                }

                else
                {
                  LODWORD(v573) = v441;
                }

                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
                v459 = v492;
                v460 = v494;
                sub_1CF9E57D8();
                v430 = sub_1CF9E53A8();
                (*(v493 + 8))(v459, v460);
                swift_willThrow();
                v416 = v551;
              }

              goto LABEL_125;
            }

            isEscapingClosureAtFileLocation = *(&v558 + 1);
            if (*(&v558 + 1) != 1)
            {
              v436 = v558;

              sub_1CF0BA850(v558, *(&v558 + 1));
              v178 = v547;
              v181 = v548;
              v174 = v489;
              if (isEscapingClosureAtFileLocation)
              {
                v551 = v416;
                v437 = *(v489 + 16);
                v438 = *(v489 + 24);

                v439 = sub_1CEFE7394(v436, isEscapingClosureAtFileLocation);
                if (v440)
                {
                  if (v439 == 12565487 && v440 == 0xA300000000000000)
                  {

LABEL_144:
                    v443 = sub_1CF9E69E8();
                    v444 = v436;
                    v445 = sub_1CF025150(v443, v436, isEscapingClosureAtFileLocation);
                    v436 = MEMORY[0x1D3868C10](v445);
                    v447 = v446;

                    goto LABEL_146;
                  }

                  v442 = sub_1CF9E8048();

                  if (v442)
                  {
                    goto LABEL_144;
                  }
                }

                v444 = v436;
                v447 = isEscapingClosureAtFileLocation;
LABEL_146:
                v448 = sub_1CEFE7394(v437, v438);
                if (v449)
                {
                  if (v448 == 12565487 && v449 == 0xA300000000000000)
                  {

LABEL_151:
                    v451 = sub_1CF9E69E8();
                    v452 = sub_1CF025150(v451, v437, v438);
                    v437 = MEMORY[0x1D3868C10](v452);
                    v454 = v453;

                    goto LABEL_153;
                  }

                  v450 = sub_1CF9E8048();

                  if (v450)
                  {
                    goto LABEL_151;
                  }
                }

                v454 = v438;
LABEL_153:
                v455 = v436 == v437;
                v180 = v534;
                if (v455 && v447 == v454)
                {

                  v551(v495, v535);
                  sub_1CEFD5338(v502, type metadata accessor for VFSItem);
                  v174 = v489;
                }

                else
                {
                  v456 = sub_1CF9E8048();

                  v551(v495, v535);
                  sub_1CEFD5338(v502, type metadata accessor for VFSItem);
                  v174 = v489;
                  if ((v456 & 1) == 0)
                  {
                    v178 = v547;
                    swift_beginAccess();
                    v457 = *(v178 + 2);
                    v222 = v544;
                    v181 = v548;
                    if ((v457 & 1) == 0)
                    {
                      *(v178 + 2) = v457 | 1;
                    }

                    v458 = *(v174 + 24);
                    *(v174 + 16) = v444;
                    *(v174 + 24) = isEscapingClosureAtFileLocation;

                    goto LABEL_76;
                  }
                }

                sub_1CF0BA850(v444, isEscapingClosureAtFileLocation);
                v222 = v544;
                v178 = v547;
                v181 = v548;
LABEL_76:
                v551 = *(*(*(v181 + 16) + 32) + 16);
                type metadata accessor for VFSFileTree(0);
                v541 = swift_dynamicCastClassUnconditional();
                swift_beginAccess();
                v538 = *v180;
                LODWORD(v536) = *(v180 + 8);
                sub_1CEFCCBDC(v174, v222, &unk_1EC4BFD90, &unk_1CFA134F0);
                swift_beginAccess();
                v550 = *(v178 + 2);
                type metadata accessor for StagedContext();
                v547 = swift_allocObject();
                v310 = v516;
                sub_1CEFDA34C(v180, v516, type metadata accessor for VFSItem);
                v311 = v310 + *(v486 + 36);
                v312 = *v311;
                v313 = *(v311 + 8);
                v314 = *(v311 + 16);
                v315 = *(v311 + 24);
                v316 = *(v310 + 16);
                v317 = *(v310 + 24);
                v319 = *(v310 + 32);
                v318 = *(v310 + 40);

                sub_1CEFD5338(v310, type metadata accessor for VFSItem);
                v563 = v315;
                *&v567 = v312;
                DWORD2(v567) = v313;
                v320 = v544;
                *&v568 = v314;
                BYTE8(v568) = v315;
                *&v569 = 0;
                *(&v569 + 1) = v316;
                LOBYTE(v570) = v317;
                *(&v570 + 1) = v319;
                v321 = v548;
                v571 = v318;
                v572 = 0uLL;
                v322 = v546;
                sub_1CF06C190(&v573);
                v323 = swift_allocObject();
                v324 = v555;
                v323[2] = v322;
                v323[3] = v324;
                v323[4] = v556;
                v323[5] = v321;
                v325 = v545;
                v323[6] = v554;
                v323[7] = v325;
                v554 = v323;
                v326 = v552;
                v323[8] = v552;
                v555 = swift_allocObject();
                *(v555 + 16) = 0;
                v327 = *(v485 + 40);
                if ((v550 & 0x10) != 0 && (*(v320 + v327 + *(v511 + 80)) & 1) == 0)
                {
                  *(v555 + 16) = 1;
                }

                v328 = *(v541 + 216);
                v535 = *(v541 + 224);
                v329 = *(v320 + v327);
                v330 = v546;
                v331 = v326;

                v556 = v328;
                v332 = v532;
                v333 = v519;
                v334 = v520;
                if (v329 == 1 || (v550 & 0x18) == 0)
                {
                  sub_1CF9E6408();
                }

                else
                {
                  sub_1CF9E6418();
                }

                v335 = v533;
                v336 = v540;
                v337 = v522;
                qos_class_self();
                sub_1CF9E63B8();
                v338 = *(v336 + 48);
                if (v338(v337, 1, v335) == 1)
                {
                  (*(v336 + 104))(v333, *MEMORY[0x1E69E7FA0], v335);
                  if (v338(v337, 1, v335) != 1)
                  {
                    sub_1CEFCCC44(v337, &unk_1EC4BE380, &qword_1CFA01BA0);
                  }
                }

                else
                {
                  (*(v336 + 32))(v333, v337, v335);
                }

                v339 = v521;
                sub_1CF9E6428();
                sub_1CF9E6438();
                v340 = sub_1CF9E63C8();
                v341 = v332;
                v342 = *(v336 + 8);
                v540 = v336 + 8;
                (v342)(v341, v335);
                v343 = v524;
                sub_1CF9E6438();
                v344 = sub_1CF9E63C8();
                v531 = v342;
                (v342)(v343, v335);
                v345 = v537;
                v346 = v537[1];
                if (v340 >= v344)
                {
                  v347 = v339;
                }

                else
                {
                  v347 = v334;
                }

                if (v340 >= v344)
                {
                  v348 = v334;
                }

                else
                {
                  v348 = v339;
                }

                v349 = v526;
                v529 = v537[1];
                v530 = v537 + 1;
                v346(v347, v526);
                v350 = v543;
                (v345[4])(v543, v348, v349);
                (v345[7])(v350, 0, 1, v349);
                v351 = v523;
                sub_1CEFCCBDC(v320, v523, &unk_1EC4BFD90, &unk_1CFA134F0);
                v352 = (*(v517 + 80) + 16) & ~*(v517 + 80);
                v353 = (v518 + v352 + 7) & 0xFFFFFFFFFFFFFFF8;
                v354 = (v353 + 15) & 0xFFFFFFFFFFFFFFF8;
                v355 = (v354 + 15) & 0xFFFFFFFFFFFFFFF8;
                v356 = (v355 + 23) & 0xFFFFFFFFFFFFFFF8;
                v552 = ((v356 + 103) & 0xFFFFFFFFFFFFFFF8);
                v548 = (v356 + 119) & 0xFFFFFFFFFFFFFFF8;
                v546 = ((v548 + 15) & 0xFFFFFFFFFFFFFFF8);
                v534 = (v546 + 15) & 0xFFFFFFFFFFFFFFF8;
                v357 = (v534 + 15) & 0xFFFFFFFFFFFFFFF8;
                v358 = swift_allocObject();
                sub_1CEFE55D0(v351, v358 + v352, &unk_1EC4BFD90, &unk_1CFA134F0);
                *(v358 + v353) = v547;
                *(v358 + v354) = v541;
                v359 = (v358 + v355);
                v360 = v554;
                *v359 = sub_1CF8FD90C;
                v359[1] = v360;
                v361 = (v358 + v356);
                v362 = v568;
                *v361 = v567;
                v361[1] = v362;
                v363 = v572;
                v361[4] = v571;
                v361[5] = v363;
                v364 = v570;
                v361[2] = v569;
                v361[3] = v364;
                v365 = &v552[v358];
                *v365 = v538;
                v365[8] = v536;
                *(v358 + v548) = v539;
                *&v546[v358] = v555;
                *(v358 + v534) = v550;
                v366 = v358;
                v367 = v358 + v357;
                v368 = v586;
                *(v367 + 192) = v585;
                *(v367 + 208) = v368;
                *(v367 + 224) = v587;
                *(v367 + 240) = v588;
                v369 = v582;
                *(v367 + 128) = v581;
                *(v367 + 144) = v369;
                v370 = v584;
                *(v367 + 160) = v583;
                *(v367 + 176) = v370;
                v371 = v578;
                *(v367 + 64) = v577;
                *(v367 + 80) = v371;
                v372 = v580;
                *(v367 + 96) = v579;
                *(v367 + 112) = v372;
                v373 = v574;
                *v367 = v573;
                *(v367 + 16) = v373;
                v374 = v576;
                *(v367 + 32) = v575;
                *(v367 + 48) = v374;
                v375 = swift_allocObject();
                v375[2] = sub_1CF8FD90C;
                v375[3] = v360;
                v376 = v535;
                v375[4] = v535;
                swift_retain_n();

                sub_1CEFCCBDC(&v567, &v558, &unk_1EC4BE330, &unk_1CF9FF010);

                sub_1CEFCCBDC(&v573, &v558, &qword_1EC4BECF0, &unk_1CF9FEEB0);

                v377 = fpfs_current_log();
                v552 = *(v376 + 16);
                v378 = v537[6];
                v379 = v543;
                v380 = v378(v543, 1, v349);
                v381 = 32;
                if (v380 == 1)
                {
                  v381 = 16;
                }

                v550 = v381;
                v382 = v525;
                sub_1CEFCCBDC(v379, v525, &unk_1EC4BE370, qword_1CFA01B30);
                if (v378(v382, 1, v349) == 1)
                {
                  sub_1CEFCCC44(v382, &unk_1EC4BE370, qword_1CFA01B30);
                  v383 = QOS_CLASS_UNSPECIFIED;
                }

                else
                {
                  v384 = v532;
                  sub_1CF9E6438();
                  (v529)(v382, v349);
                  v383 = sub_1CF9E63C8();
                  (v531)(v384, v533);
                }

                v385 = swift_allocObject();
                v385[2] = v377;
                v385[3] = sub_1CF8FD924;
                v385[4] = v366;
                v561 = sub_1CF2BA17C;
                v562 = v385;
                *&v558 = MEMORY[0x1E69E9820];
                *(&v558 + 1) = 1107296256;
                v559 = sub_1CEFCA444;
                v560 = &block_descriptor_3827;
                v386 = _Block_copy(&v558);
                v387 = v377;

                v561 = sub_1CF2B08D4;
                v562 = v375;
                *&v558 = MEMORY[0x1E69E9820];
                *(&v558 + 1) = 1107296256;
                v559 = sub_1CEFCA444;
                v560 = &block_descriptor_3830;
                v388 = _Block_copy(&v558);

                v389 = v556;
                fp_task_tracker_async_and_qos(v552, v556, v550, v383, v386, v388);

                _Block_release(v388);
                _Block_release(v386);

                sub_1CEFCCC44(&v573, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                sub_1CEFCCC44(&v567, &unk_1EC4BE330, &unk_1CF9FF010);

                sub_1CEFCCC44(v544, &unk_1EC4BFD90, &unk_1CFA134F0);
                sub_1CEFCCC44(v543, &unk_1EC4BE370, qword_1CFA01B30);

                goto LABEL_99;
              }

              v416(v495, v535);
              sub_1CEFD5338(v502, type metadata accessor for VFSItem);
LABEL_44:
              v222 = v544;
              v180 = v534;
              goto LABEL_76;
            }

            goto LABEL_167;
          }

          goto LABEL_165;
        }

        v198 = v169;
        v555 = *(a9 + 16);
        v199 = objc_allocWithZone(MEMORY[0x1E696AE38]);
        v200 = v134;
        v201 = v173;

        v552 = [v199 init];
        v202 = swift_allocObject();
        v202[2] = v542;
        v202[3] = v201;
        v203 = v548;
        v202[4] = a9;
        v202[5] = v203;
        v202[6] = sub_1CF8FD8C8;
        v202[7] = v198;
        v204 = v553;
        v556 = v202;
        v202[8] = v553;

        v205 = v201;

        sub_1CEFD09A0(v203);

        v206 = fpfs_current_or_default_log();
        v207 = v538;
        sub_1CF9E6128();
        sub_1CEFD09A0(v203);
        sub_1CEFD09A0(v203);

        v208 = sub_1CF9E6108();
        v209 = sub_1CF9E7298();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          *&v558 = v211;
          *v210 = 136315394;
          v212 = swift_beginAccess();
          v214 = *(v204 + 32);
          v215 = *(v204 + 40);
          if (*(v204 + 41))
          {
            v216 = v214;
            v217 = NSFileProviderItemIdentifier.description.getter();
            v219 = v218;
            sub_1CEFD0994(v214, v215, 1);
          }

          else
          {
            *&v573 = *(v204 + 32);
            BYTE8(v573) = v215;
            v217 = VFSItemID.description.getter(v212, v213);
            v219 = v225;
          }

          v226 = sub_1CEFD0DF0(v217, v219, &v558);

          *(v210 + 4) = v226;
          *(v210 + 12) = 2080;
          v203 = v548;
          v227 = sub_1CEFD11AC(v548);
          v229 = v228;
          sub_1CEFD0A98(v203);
          sub_1CEFD0A98(v203);
          v230 = sub_1CEFD0DF0(v227, v229, &v558);

          *(v210 + 14) = v230;
          _os_log_impl(&dword_1CEFC7000, v208, v209, "Request to materialize content of itemID %s reason %s", v210, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v211, -1, -1);
          MEMORY[0x1D386CDC0](v210, -1, -1);

          v223 = *(v550 + 8);
          v224 = v538;
        }

        else
        {
          sub_1CEFD0A98(v203);
          sub_1CEFD0A98(v203);

          v223 = *(v550 + 8);
          v224 = v207;
        }

        v546 = v223;
        (v223)(v224, v551);
        LODWORD(v543) = (v203 >> 58) & 0x3C | (v203 >> 1) & 3;
        v231 = v527;
        if (v543 == 2)
        {
          v232 = swift_projectBox();
          v233 = v514;
          sub_1CEFCCBDC(v232, v514, &unk_1EC4C4F40, qword_1CFA0F4C0);
          v234 = *(v233 + 8);

          v235 = v515;
          v236 = *(v515 + 48);

          v237 = *(v233 + *(v235 + 80));
          (*(v536 + 8))(v233 + v236, v535);
        }

        else
        {
          v237 = 0;
        }

        v238 = v541;
        sub_1CEFCCBDC(v555 + qword_1EDEBBC18, v231, &qword_1EC4BFB10, &unk_1CFA12AD0);
        v239 = type metadata accessor for TelemetrySignposter(0);
        if ((*(*(v239 - 8) + 48))(v231, 1, v239) == 1)
        {
          sub_1CEFCCC44(v231, &qword_1EC4BFB10, &unk_1CFA12AD0);
          v240 = 1;
        }

        else
        {
          sub_1CF519DE8(v237, v238);
          sub_1CEFD5338(v231, type metadata accessor for TelemetrySignposter);
          v240 = 0;
        }

        v241 = type metadata accessor for TelemetrySignpost(0);
        (*(*(v241 - 8) + 56))(v238, v240, 1, v241);
        v242 = v529;
        sub_1CEFCCBDC(v238, v529, qword_1EC4C1588, &unk_1CFA0A260);
        v243 = *(v528 + 80);
        v244 = (v243 + 16) & ~v243;
        v245 = v530;
        v246 = (v530 + v244 + 7) & 0xFFFFFFFFFFFFFFF8;
        v247 = swift_allocObject();
        v554 = v247;
        sub_1CEFE55D0(v242, v247 + v244, qword_1EC4C1588, &unk_1CFA0A260);
        v248 = (v247 + v246);
        v249 = v556;
        *v248 = sub_1CF8FD950;
        v248[1] = v249;
        v250 = v531;
        sub_1CEFCCBDC(v238, v531, qword_1EC4C1588, &unk_1CFA0A260);
        v251 = (v243 + 24) & ~v243;
        v544 = (v245 + v251 + 7) & 0xFFFFFFFFFFFFFFF8;
        v252 = (v245 + v251 + 31) & 0xFFFFFFFFFFFFFFF8;
        v547 = ((v252 + 15) & 0xFFFFFFFFFFFFFFF8);
        v253 = (v252 + 31) & 0xFFFFFFFFFFFFFFF8;
        v254 = (v253 + 15) & 0xFFFFFFFFFFFFFFF8;
        v255 = swift_allocObject();
        v256 = v548;
        *(v255 + 16) = v548;
        v257 = v255 + v251;
        v258 = v256;
        sub_1CEFE55D0(v250, v257, qword_1EC4C1588, &unk_1CFA0A260);
        v259 = v255 + v544;
        *v259 = sub_1CF8FD950;
        *(v259 + 8) = v249;
        *(v259 + 16) = 0;
        *(v255 + v252) = v555;
        v260 = &v547[v255];
        v261 = v553;
        *v260 = v553;
        v260[8] = 0;
        *(v255 + v253) = 0;
        v262 = v552;
        *(v255 + v254) = v552;
        v263 = v255 + ((v254 + 15) & 0xFFFFFFFFFFFFFFF8);
        v264 = v554;
        *v263 = sub_1CF903314;
        *(v263 + 8) = v264;
        *(v263 + 16) = 1;
        v265 = objc_allocWithZone(MEMORY[0x1E696AE38]);

        sub_1CEFD09A0(v258);

        v547 = v262;

        v552 = [v265 init];
        v266 = swift_allocObject();
        v266[2] = sub_1CF903318;
        v266[3] = v255;
        v544 = v266;
        v266[4] = v258;
        sub_1CEFD09A0(v258);

        sub_1CEFD09A0(v258);

        v267 = fpfs_current_or_default_log();
        v268 = v539;
        sub_1CF9E6128();
        sub_1CEFD09A0(v258);
        sub_1CEFD09A0(v258);

        v269 = sub_1CF9E6108();
        v270 = sub_1CF9E7298();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v540 = swift_slowAlloc();
          v565[0] = v540;
          *v271 = 136315906;
          v272 = swift_beginAccess();
          v274 = *(v261 + 32);
          v275 = *(v261 + 40);
          if (*(v261 + 41))
          {
            v276 = v274;
            v277 = NSFileProviderItemIdentifier.description.getter();
            v279 = v278;
            sub_1CEFD0994(v274, v275, 1);
          }

          else
          {
            *&v573 = *(v261 + 32);
            BYTE8(v573) = v275;
            v277 = VFSItemID.description.getter(v272, v273);
            v279 = v281;
          }

          v282 = sub_1CEFD0DF0(v277, v279, v565);

          *(v271 + 4) = v282;
          *(v271 + 12) = 2080;
          *(v271 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v565);
          *(v271 + 22) = 2080;
          v258 = v548;
          v283 = sub_1CEFD11AC(v548);
          v285 = v284;
          sub_1CEFD0A98(v258);
          sub_1CEFD0A98(v258);
          v286 = sub_1CEFD0DF0(v283, v285, v565);

          *(v271 + 24) = v286;
          *(v271 + 32) = 2048;
          *(v271 + 34) = 0;
          _os_log_impl(&dword_1CEFC7000, v269, v270, "Lookup itemID %s with behavior %s request %s iteration %ld", v271, 0x2Au);
          v287 = v540;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v287, -1, -1);
          MEMORY[0x1D386CDC0](v271, -1, -1);

          (v546)(v539, v551);
          v280 = v553;
        }

        else
        {
          sub_1CEFD0A98(v258);
          sub_1CEFD0A98(v258);

          (v546)(v268, v551);
          v280 = v261;
        }

        swift_beginAccess();
        v288 = *(v280 + 32);
        v289 = *(v280 + 40);
        if (*(v280 + 41))
        {
          v290 = qword_1EDEA34B0;
          v291 = v288;
          if (v290 != -1)
          {
            swift_once();
          }

          v292 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v294 = v293;
          if (v292 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v294 == v295)
          {

            sub_1CEFD0994(v288, v289, 1);
            v258 = v548;
LABEL_68:
            sub_1CF90CAC8(v258, sub_1CF796A0C, v544);
            v296 = v552;
LABEL_74:

            sub_1CEFD0A98(v258);

            sub_1CEFCCC44(v541, qword_1EC4C1588, &unk_1CFA0A260);

LABEL_99:

            return;
          }

          v297 = sub_1CF9E8048();

          sub_1CEFD0994(v288, v289, 1);
          v258 = v548;
          if (v297)
          {
            goto LABEL_68;
          }
        }

        else if (!v288 && v289 == 2)
        {
          goto LABEL_68;
        }

        if (v543 == 30)
        {
          v298 = *((v258 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v299 = v298;
        }

        else
        {
          v300 = swift_allocObject();
          *(v300 + 16) = v258;
          v299 = v300 | 0x7000000000000004;
          v298 = v258;
        }

        v301 = v552;
        sub_1CEFD09A0(v298);
        v302 = swift_allocObject();
        v303 = v544;
        *(v302 + 16) = sub_1CF796A0C;
        *(v302 + 24) = v303;
        v304 = v555;
        *(v302 + 32) = v555;
        *(v302 + 40) = 1;
        *(v302 + 48) = v258;
        *(v302 + 56) = v280;
        *(v302 + 64) = 0;
        *(v302 + 72) = v301;
        *(v302 + 80) = 0;
        v305 = swift_allocObject();
        *(v305 + 16) = v280;
        *(v305 + 24) = v304;
        *(v305 + 32) = 0;
        *(v305 + 40) = sub_1CF796A90;
        *(v305 + 48) = v302;
        *(v305 + 56) = v299;
        v306 = swift_allocObject();
        *(v306 + 16) = sub_1CF796A90;
        *(v306 + 24) = v302;
        v296 = v552;

        sub_1CEFD09A0(v258);

        v307 = v296;
        sub_1CEFD09A0(v299);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v306, sub_1CF796A9C, v305);

        sub_1CEFD0A98(v299);
        goto LABEL_74;
      }

      (*(v536 + 8))(v512, v535);
    }

    v484 = 0;
    goto LABEL_25;
  }

  v108 = *v107;
  v109 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v110 = a2;
  v111 = v108;
  v112 = sub_1CF9E6108();
  v113 = sub_1CF9E72A8();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v114 = 138412546;
    v116 = [v110 itemID];
    *(v114 + 4) = v116;
    *v115 = v116;
    *(v114 + 12) = 2112;
    swift_getErrorValue();
    v117 = Error.prettyDescription.getter(v557);
    *(v114 + 14) = v117;
    v115[1] = v117;
    _os_log_impl(&dword_1CEFC7000, v112, v113, "Error creating item %@ on disk; error %@", v114, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v115, -1, -1);
    MEMORY[0x1D386CDC0](v114, -1, -1);
  }

  (*(v550 + 8))(v103, v551);
  v118 = v108;
  (v555)(0, v108);
}

void sub_1CF8A7048(uint64_t a1, char *a2, void (*a3)(void, void *), void *a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), void *a11, char *a12)
{
  v307 = a8;
  LODWORD(v304) = a7;
  LODWORD(v301) = a6;
  v311 = a3;
  v312 = a4;
  v309 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v295 = &v260 - v15;
  v305 = sub_1CF9E63D8();
  v310 = *(v305 - 8);
  v16 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v297 = &v260 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v306 = &v260 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v292 = &v260 - v21;
  v299 = sub_1CF9E6448();
  v308 = *(v299 - 8);
  v22 = v308[8];
  MEMORY[0x1EEE9AC00](v299);
  v294 = &v260 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v293 = &v260 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v298 = &v260 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v313 = &v260 - v30;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v290 = *(v288 - 8);
  v31 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v296 = &v260 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v314 = &v260 - v34;
  v35 = sub_1CF9E5248();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v284 = &v260 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5268();
  v285 = *(v38 - 8);
  v286 = v38;
  v39 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v283 = &v260 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1CF9E53C8();
  v270 = *(v41 - 8);
  v271 = v41;
  v42 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v269 = &v260 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v277 = &v260 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v260 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v260 - v52;
  v282 = sub_1CF9E5A58();
  v280 = *(v282 - 8);
  v54 = v280[8];
  MEMORY[0x1EEE9AC00](v282);
  v272 = &v260 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v273 = &v260 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v275 = &v260 - v59;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FE8, &unk_1CFA18180);
  v60 = *(*(v276 - 8) + 64);
  MEMORY[0x1EEE9AC00](v276);
  v274 = &v260 - v61;
  v300 = type metadata accessor for VFSItem(0);
  v281 = *(v300 - 8);
  v62 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v287 = &v260 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v279 = &v260 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v260 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v278 = &v260 - v70;
  v71 = sub_1CF9E6118();
  v302 = *(v71 - 8);
  v303 = v71;
  v72 = v302[8];
  MEMORY[0x1EEE9AC00](v71);
  v268 = &v260 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v260 - v75;
  v77 = *a1;
  v78 = *(a1 + 8);
  LODWORD(a1) = *(a1 + 9);
  v79 = swift_projectBox();
  v289 = a10;
  v80 = swift_projectBox();
  if (a1 == 1)
  {
    v81 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v82 = v309;
    sub_1CF8FDE38(v77, v78, 1);
    v83 = sub_1CF9E6108();
    v84 = sub_1CF9E72A8();

    sub_1CF8FDA2C(v77, v78, 1);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412546;
      v87 = [v82 itemID];
      *(v85 + 4) = v87;
      *v86 = v87;
      *(v85 + 12) = 2112;
      swift_getErrorValue();
      v88 = Error.prettyDescription.getter(v315);
      *(v85 + 14) = v88;
      v86[1] = v88;
      _os_log_impl(&dword_1CEFC7000, v83, v84, "Error retrieving item state item %@; error %@", v85, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v86, -1, -1);
      MEMORY[0x1D386CDC0](v85, -1, -1);
    }

    (v302[1])(v76, v303);
    v311(0, v77);
    return;
  }

  v89 = v80;
  v90 = a9;
  swift_beginAccess();
  *v79 = v77;
  *(v79 + 8) = v78;
  v91 = 4;
  if (v301)
  {
    v91 = 0;
  }

  v267 = v91;
  v92 = v79;
  if ((v304 & 1) == 0)
  {
    goto LABEL_55;
  }

  v304 = v89;
  v93 = v307;
  swift_beginAccess();
  v94 = *(v93 + 16);
  v89 = v304;
  if ((v94 & 3) == 0)
  {
    goto LABEL_55;
  }

  v264 = v49;
  v95 = *(*(*(a9 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v96 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  v263 = a9;
  v97 = *(v92 + 24);
  v301 = *(v92 + 16);
  swift_beginAccess();
  v265 = *v89;
  LODWORD(v266) = *(v89 + 8);
  *&v324 = v77;
  BYTE8(v324) = v78;
  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;

  sub_1CEFDAA48(&v324, &v330, &v316);
  v98 = v316;

  sub_1CF263ADC(v98, 0, 1, v53);
  isEscapingClosureAtFileLocation = v96;
  v100 = v301;
  v261 = v92;
  v262 = v97;
  if ((*(v281 + 48))(v53, 1, v300) == 1)
  {
    sub_1CEFCCC44(v53, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v101 = swift_allocObject();
    *(v101 + 16) = 1;
    v102 = v101 | 0x7000000000000000;
    sub_1CF1B8150();
    v103 = swift_allocError();
    *v104 = v102;

    *&v330 = v265;
    BYTE8(v330) = v266;
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v334 = 0u;
    v335 = 0u;
    v336 = 0u;
    v337 = v103;
LABEL_15:
    v113 = &unk_1EC4C4FF0;
    v114 = &unk_1CFA18190;
    v115 = &v330;
LABEL_16:
    sub_1CEFCCC44(v115, v113, v114);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v116 = v283;
    v117 = v286;
    sub_1CF9E57D8();
    v118 = sub_1CF9E50D8();
    (*(v285 + 8))(v116, v117);
    v311(0, v118);

    return;
  }

  v105 = v279;
  sub_1CEFDA0C4(v53, v279, type metadata accessor for VFSItem);
  v106 = objc_sync_enter(isEscapingClosureAtFileLocation);
  if (v106)
  {
LABEL_83:
    MEMORY[0x1EEE9AC00](v106);
    v258 = isEscapingClosureAtFileLocation;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v257, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v281 = v95;
  v107 = objc_sync_exit(isEscapingClosureAtFileLocation);
  v108 = v280;
  v109 = v264;
  if (v107)
  {
    MEMORY[0x1EEE9AC00](v107);
    v258 = isEscapingClosureAtFileLocation;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v257, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v264);
  v110 = v282;
  v260 = v108[6];
  if (v260(v109, 1, v282) == 1)
  {
    sub_1CEFCCC44(v109, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF1B8150();
    v111 = swift_allocError();
    *v112 = 0xB000000000000008;

    *&v330 = v265;
    BYTE8(v330) = v266;
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v334 = 0u;
    v335 = 0u;
    v336 = 0u;
    v337 = v111;
    sub_1CEFD5338(v105, type metadata accessor for VFSItem);

    goto LABEL_15;
  }

  v119 = v108[4];
  v265 = v108 + 4;
  v266 = v119;
  v120 = v273;
  v119(v273, v109, v110);
  *&v330 = v100;
  *(&v330 + 1) = v262;
  v316 = 47;
  v317 = 0xE100000000000000;
  *&v324 = 58;
  *(&v324 + 1) = 0xE100000000000000;
  v258 = sub_1CEFE4E68();
  v259 = v258;
  v257[0] = MEMORY[0x1E69E6158];
  v257[1] = v258;
  sub_1CF9E7668();
  v121 = v275;
  sub_1CF9E5958();

  v122 = v108[1];
  v122(v120, v282);
  sub_1CEFDA0C4(v105, v68, type metadata accessor for VFSItem);

  v123 = v276;
  v124 = *(v276 + 48);
  v125 = v274;
  v266(v274, v121, v282);
  sub_1CEFDA0C4(v68, &v125[v124], type metadata accessor for VFSItem);
  v126 = v278;
  sub_1CEFDA0C4(&v125[*(v123 + 48)], v278, type metadata accessor for VFSItem);
  v280 = v108 + 1;
  v301 = v122;
  v122(v125, v282);
  v127 = v277;
  sub_1CF25116C(v277);
  v128 = v282;
  if (v260(v127, 1, v282) == 1)
  {
    sub_1CEFD5338(v126, type metadata accessor for VFSItem);
    v113 = &unk_1EC4BE310;
    v114 = qword_1CF9FCBE0;
    v115 = v127;
    goto LABEL_16;
  }

  v266(v272, v127, v128);
  v129 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v129);
  v92 = v261;
  v258 = v261;
  *v130 = xmmword_1CF9FC980;
  *&v324 = 0;
  v131 = swift_allocObject();
  v131[2] = &v316;
  v131[3] = sub_1CF902DAC;
  v131[4] = v257;
  v131[5] = &v324;
  v132 = swift_allocObject();
  *(v132 + 16) = sub_1CF902C70;
  *(v132 + 24) = v131;
  *&v332 = sub_1CF50EB9C;
  *(&v332 + 1) = v132;
  *&v330 = MEMORY[0x1E69E9820];
  *(&v330 + 1) = 1107296256;
  *&v331 = sub_1CF005DF8;
  *(&v331 + 1) = &block_descriptor_3992;
  v133 = _Block_copy(&v330);

  sub_1CF9E6978();
  v134 = fpfs_openat();

  _Block_release(v133);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v135 = v324;
  if (v324)
  {
    goto LABEL_21;
  }

  if ((v134 & 0x80000000) == 0)
  {

    isEscapingClosureAtFileLocation = v317;
    if (v317 != 1)
    {
      v137 = v316;

      sub_1CF0BA850(v316, v317);
      if (!isEscapingClosureAtFileLocation)
      {
        (v301)(v272, v282);
        sub_1CEFD5338(v278, type metadata accessor for VFSItem);
        v90 = v263;
        goto LABEL_54;
      }

      swift_beginAccess();
      v139 = *(v92 + 16);
      v138 = *(v92 + 24);

      v140 = sub_1CEFE7394(v137, isEscapingClosureAtFileLocation);
      v303 = v137;
      if (v141)
      {
        if (v140 == 12565487 && v141 == 0xA300000000000000)
        {

LABEL_37:
          v144 = sub_1CF9E69E8();
          v145 = sub_1CF025150(v144, v137, isEscapingClosureAtFileLocation);
          v146 = MEMORY[0x1D3868C10](v145);
          v148 = v147;

          goto LABEL_39;
        }

        v143 = sub_1CF9E8048();

        if (v143)
        {
          goto LABEL_37;
        }
      }

      v146 = v137;
      v148 = isEscapingClosureAtFileLocation;
LABEL_39:
      v149 = sub_1CEFE7394(v139, v138);
      if (v150)
      {
        if (v149 == 12565487 && v150 == 0xA300000000000000)
        {

LABEL_44:
          v152 = sub_1CF9E69E8();
          v153 = sub_1CF025150(v152, v139, v138);
          v139 = MEMORY[0x1D3868C10](v153);
          v155 = v154;

          goto LABEL_46;
        }

        v151 = sub_1CF9E8048();

        if (v151)
        {
          goto LABEL_44;
        }
      }

      v155 = v138;
LABEL_46:
      v156 = v278;
      if (v146 == v139 && v148 == v155)
      {

        (v301)(v272, v282);
        sub_1CEFD5338(v156, type metadata accessor for VFSItem);
      }

      else
      {
        v157 = sub_1CF9E8048();

        (v301)(v272, v282);
        sub_1CEFD5338(v156, type metadata accessor for VFSItem);
        if ((v157 & 1) == 0)
        {
          v158 = v307;
          swift_beginAccess();
          v159 = *(v158 + 16);
          v90 = v263;
          v160 = v303;
          if ((v159 & 1) == 0)
          {
            *(v307 + 16) = v159 | 1;
          }

          swift_beginAccess();
          v161 = *(v92 + 24);
          *(v92 + 16) = v160;
          *(v92 + 24) = isEscapingClosureAtFileLocation;

          goto LABEL_54;
        }
      }

      sub_1CF0BA850(v303, isEscapingClosureAtFileLocation);
      v90 = v263;
LABEL_54:
      v89 = v304;
LABEL_55:
      v284 = a12;
      v302 = a11;
      v304 = *(*(*(v90 + 16) + 32) + 16);
      type metadata accessor for VFSFileTree(0);
      v301 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v286 = *v89;
      LODWORD(v285) = *(v89 + 8);
      swift_beginAccess();
      sub_1CEFCCBDC(v92, v314, &unk_1EC4BFD90, &unk_1CFA134F0);
      v162 = v307;
      swift_beginAccess();
      v307 = *(v162 + 16);
      type metadata accessor for StagedContext();
      v303 = swift_allocObject();
      swift_beginAccess();
      v163 = v287;
      sub_1CEFDA34C(v89, v287, type metadata accessor for VFSItem);
      v164 = v163 + *(v300 + 36);
      v165 = *v164;
      v166 = *(v164 + 8);
      v167 = v90;
      v168 = *(v164 + 16);
      v169 = *(v164 + 24);
      v300 = *(v163 + 16);
      v170 = *(v163 + 24);
      v172 = *(v163 + 32);
      v171 = *(v163 + 40);

      sub_1CEFD5338(v163, type metadata accessor for VFSItem);
      v322 = v169;
      *&v324 = v165;
      DWORD2(v324) = v166;
      *&v325 = v168;
      v173 = v284;
      v174 = v167;
      BYTE8(v325) = v169;
      *&v326 = 0;
      *(&v326 + 1) = v300;
      LOBYTE(v327) = v170;
      *(&v327 + 1) = v172;
      v175 = v314;
      v328 = v171;
      v329 = 0uLL;
      v176 = v309;
      sub_1CF06C190(&v330);
      v177 = swift_allocObject();
      v178 = v311;
      v179 = v312;
      v177[2] = v176;
      v177[3] = v178;
      v177[4] = v179;
      v177[5] = v174;
      v180 = v289;
      v177[6] = v302;
      v177[7] = v180;
      v302 = v177;
      v177[8] = v173;
      v181 = swift_allocObject();
      *(v181 + 16) = 0;
      v182 = *(v288 + 40);
      if ((v307 & 0x10) != 0 && (*(v175 + v182 + *(type metadata accessor for ItemMetadata() + 80)) & 1) == 0)
      {
        *(v181 + 16) = 1;
      }

      v311 = v181;
      v183 = *(v301 + 216);
      v300 = *(v301 + 224);
      v184 = *(v175 + v182);
      v185 = v176;

      v186 = v173;
      v312 = v183;
      v187 = v184 == 1;
      v188 = v310;
      v189 = v306;
      v190 = v295;
      v191 = v292;
      v192 = v293;
      if (v187 || (v307 & 0x18) == 0)
      {
        sub_1CF9E6408();
      }

      else
      {
        sub_1CF9E6418();
      }

      v193 = v305;
      qos_class_self();
      sub_1CF9E63B8();
      v194 = *(v188 + 48);
      if (v194(v190, 1, v193) == 1)
      {
        (*(v188 + 104))(v191, *MEMORY[0x1E69E7FA0], v193);
        if (v194(v190, 1, v193) != 1)
        {
          sub_1CEFCCC44(v190, &unk_1EC4BE380, &qword_1CFA01BA0);
        }
      }

      else
      {
        (*(v188 + 32))(v191, v190, v193);
      }

      v195 = v294;
      sub_1CF9E6428();
      sub_1CF9E6438();
      v196 = sub_1CF9E63C8();
      v197 = *(v188 + 8);
      v310 = v188 + 8;
      v197(v189, v193);
      v198 = v297;
      sub_1CF9E6438();
      v199 = sub_1CF9E63C8();
      v292 = v197;
      v197(v198, v193);
      v200 = v308;
      v201 = v308[1];
      if (v196 >= v199)
      {
        v202 = v195;
      }

      else
      {
        v202 = v192;
      }

      if (v196 >= v199)
      {
        v203 = v192;
      }

      else
      {
        v203 = v195;
      }

      v204 = v299;
      v293 = (v308 + 1);
      v289 = v201;
      v201(v202, v299);
      v205 = v313;
      (v200[4])(v313, v203, v204);
      (v200[7])(v205, 0, 1, v204);
      v206 = v296;
      sub_1CEFCCBDC(v314, v296, &unk_1EC4BFD90, &unk_1CFA134F0);
      v207 = (*(v290 + 80) + 16) & ~*(v290 + 80);
      v208 = (v291 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
      v209 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
      v210 = (v209 + 15) & 0xFFFFFFFFFFFFFFF8;
      v211 = (v210 + 23) & 0xFFFFFFFFFFFFFFF8;
      v309 = ((v211 + 103) & 0xFFFFFFFFFFFFFFF8);
      v297 = ((v211 + 119) & 0xFFFFFFFFFFFFFFF8);
      v295 = ((v297 + 15) & 0xFFFFFFFFFFFFFFF8);
      v294 = ((v295 + 15) & 0xFFFFFFFFFFFFFFF8);
      v212 = (v294 + 15) & 0xFFFFFFFFFFFFFFF8;
      v213 = swift_allocObject();
      sub_1CEFE55D0(v206, v213 + v207, &unk_1EC4BFD90, &unk_1CFA134F0);
      *(v213 + v208) = v303;
      v214 = v302;
      *(v213 + v209) = v301;
      v215 = (v213 + v210);
      *v215 = sub_1CF903328;
      v215[1] = v214;
      v216 = (v213 + v211);
      v217 = v325;
      *v216 = v324;
      v216[1] = v217;
      v218 = v329;
      v216[4] = v328;
      v216[5] = v218;
      v219 = v327;
      v216[2] = v326;
      v216[3] = v219;
      v220 = &v309[v213];
      *v220 = v286;
      v220[8] = v285;
      *&v297[v213] = v267;
      v221 = v294;
      *&v295[v213] = v311;
      *&v221[v213] = v307;
      v222 = v213;
      v223 = v213 + v212;
      v224 = v343;
      *(v223 + 192) = v342;
      *(v223 + 208) = v224;
      *(v223 + 224) = v344;
      *(v223 + 240) = v345;
      v225 = v339;
      *(v223 + 128) = v338;
      *(v223 + 144) = v225;
      v226 = v341;
      *(v223 + 160) = v340;
      *(v223 + 176) = v226;
      v227 = v335;
      *(v223 + 64) = v334;
      *(v223 + 80) = v227;
      v228 = v337;
      *(v223 + 96) = v336;
      *(v223 + 112) = v228;
      v229 = v331;
      *v223 = v330;
      *(v223 + 16) = v229;
      v230 = v333;
      *(v223 + 32) = v332;
      *(v223 + 48) = v230;
      v231 = swift_allocObject();
      v231[2] = sub_1CF903328;
      v231[3] = v214;
      v232 = v300;
      v231[4] = v300;
      swift_retain_n();

      sub_1CEFCCBDC(&v324, &v316, &unk_1EC4BE330, &unk_1CF9FF010);

      sub_1CEFCCBDC(&v330, &v316, &qword_1EC4BECF0, &unk_1CF9FEEB0);

      v233 = fpfs_current_log();
      v309 = *(v232 + 16);
      v234 = v308[6];
      v235 = v313;
      if (v234(v313, 1, v204) == 1)
      {
        v236 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
      }

      else
      {
        v236 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
      }

      v237 = v298;
      sub_1CEFCCBDC(v235, v298, &unk_1EC4BE370, qword_1CFA01B30);
      if (v234(v237, 1, v204) == 1)
      {
        sub_1CEFCCC44(v237, &unk_1EC4BE370, qword_1CFA01B30);
        v238 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v239 = v306;
        sub_1CF9E6438();
        v289(v237, v204);
        v238 = sub_1CF9E63C8();
        (v292)(v239, v305);
      }

      v240 = swift_allocObject();
      v240[2] = v233;
      v240[3] = sub_1CF902DA4;
      v240[4] = v222;
      v320 = sub_1CF2BA17C;
      v321 = v240;
      v316 = MEMORY[0x1E69E9820];
      v317 = 1107296256;
      v318 = sub_1CEFCA444;
      v319 = &block_descriptor_3974;
      v241 = _Block_copy(&v316);
      v242 = v233;

      v320 = sub_1CF2BA188;
      v321 = v231;
      v316 = MEMORY[0x1E69E9820];
      v317 = 1107296256;
      v318 = sub_1CEFCA444;
      v319 = &block_descriptor_3977;
      v243 = _Block_copy(&v316);

      v244 = v312;
      fp_task_tracker_async_and_qos(v309, v312, v236, v238, v241, v243);
      _Block_release(v243);
      _Block_release(v241);

      sub_1CEFCCC44(&v330, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFCCC44(&v324, &unk_1EC4BE330, &unk_1CF9FF010);

      sub_1CEFCCC44(v314, &unk_1EC4BFD90, &unk_1CFA134F0);
      sub_1CEFCCC44(v313, &unk_1EC4BE370, qword_1CFA01B30);

      return;
    }

    goto LABEL_82;
  }

  if (MEMORY[0x1D38683F0](v106))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v142 = sub_1CF9E6138();
      if ((v142 & 0x100000000) != 0)
      {
        LODWORD(v330) = 22;
      }

      else
      {
        LODWORD(v330) = v142;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v245 = v269;
      v246 = v271;
      sub_1CF9E57D8();
      v135 = sub_1CF9E53A8();
      (*(v270 + 8))(v245, v246);
      swift_willThrow();
      goto LABEL_22;
    }

    v135 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_21:
    swift_willThrow();
LABEL_22:
    swift_bridgeObjectRelease_n();
    sub_1CF0BA850(v316, v317);
    v136 = v135;
    v311(0, v135);

    (v301)(v272, v282);
    sub_1CEFD5338(v278, type metadata accessor for VFSItem);
    return;
  }

  *&v330 = 0;
  *(&v330 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&v330 = 0xD00000000000001ALL;
  *(&v330 + 1) = 0x80000001CFA2DF30;
  v323 = v134;
  v247 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v247);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v248 = v330;
  v249 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v250 = sub_1CF9E6108();
  v251 = sub_1CF9E72B8();

  if (os_log_type_enabled(v250, v251))
  {
    v252 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    *&v330 = v253;
    *v252 = 136315650;
    v254 = sub_1CF9E7988();
    v256 = sub_1CEFD0DF0(v254, v255, &v330);

    *(v252 + 4) = v256;
    *(v252 + 12) = 2048;
    *(v252 + 14) = 315;
    *(v252 + 22) = 2080;
    *(v252 + 24) = sub_1CEFD0DF0(v248, *(&v248 + 1), &v330);
    _os_log_impl(&dword_1CEFC7000, v250, v251, "[ASSERT] ‼️  %s:%lu: %s", v252, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v253, -1, -1);
    MEMORY[0x1D386CDC0](v252, -1, -1);
  }

  (v302[1])(v268, v303);
  LODWORD(v259) = 0;
  v258 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF8A92C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a2 + 24);
  v14[0] = *(a2 + 16);
  v14[1] = v11;

  sub_1CF9E5CE8();
  sub_1CF662530(v14, a1, a3);
  (*(v7 + 8))(v10, v6);
}

void sub_1CF8A93F4(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v184 = a8;
  v211 = a7;
  v201 = a6;
  v197 = a5;
  v208 = a3;
  v209 = a4;
  v212 = a2;
  v210 = a1;
  v181 = sub_1CF9E63D8();
  v180 = *(v181 - 8);
  v8 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v174 - v14;
  v190 = sub_1CF9E6068();
  v182 = *(v190 - 8);
  v15 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v198 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v185 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v174 - v21;
  v186 = type metadata accessor for Signpost(0);
  v187 = *(v186 - 8);
  v22 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v191 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v189 = &v174 - v25;
  v188 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v203 = &v174 - v28;
  v178 = sub_1CF9E53C8();
  v177 = *(v178 - 8);
  v29 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v174 - v33;
  v200 = sub_1CF9E5A58();
  v199 = *(v200 - 8);
  v35 = *(v199 + 8);
  MEMORY[0x1EEE9AC00](v200);
  v183 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v204 = &v174 - v40;
  v41 = sub_1CF9E5248();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v194 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1CF9E5268();
  v195 = *(v196 - 8);
  v44 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v193 = &v174 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1CF9E6118();
  v206 = *(v207 - 1);
  v46 = v206[8];
  MEMORY[0x1EEE9AC00](v207);
  v175 = &v174 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v174 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v174 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = (&v174 - v56);
  type metadata accessor for VFSItem(0);
  v211 = swift_projectBox();
  sub_1CEFCCBDC(v210, v57, &unk_1EC4C5000, &qword_1CFA181A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = *v57;
    v59 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v60 = v212;
    v61 = v58;
    v62 = sub_1CF9E6108();
    v63 = sub_1CF9E72A8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412546;
      v66 = [v60 itemID];
      *(v64 + 4) = v66;
      *v65 = v66;
      *(v64 + 12) = 2112;
      swift_getErrorValue();
      v67 = Error.prettyDescription.getter(v213);
      *(v64 + 14) = v67;
      v65[1] = v67;
      _os_log_impl(&dword_1CEFC7000, v62, v63, "Error updating item %@ error %@", v64, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v65, -1, -1);
      MEMORY[0x1D386CDC0](v64, -1, -1);
    }

    (v206[1])(v53, v207);
    v68 = v58;
    v208(0, v58);

    return;
  }

  v69 = v212;

  if ((*(v38 + 48))(v57, 1, v37) == 1)
  {
    v70 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v71 = v69;
    v72 = sub_1CF9E6108();
    v73 = sub_1CF9E72A8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = [v71 itemID];
      *(v74 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&dword_1CEFC7000, v72, v73, "Error updating item %@ error <nil>", v74, 0xCu);
      sub_1CEFCCC44(v75, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v75, -1, -1);
      MEMORY[0x1D386CDC0](v74, -1, -1);
    }

    (v206[1])(v50, v207);
    sub_1CF9E5118();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v77 = v193;
    v78 = v196;
    sub_1CF9E57D8();
    v79 = sub_1CF9E50D8();
    (*(v195 + 8))(v77, v78);
    v208(0, v79);

    return;
  }

  v80 = v57;
  v81 = v204;
  sub_1CEFE55D0(v80, v204, &qword_1EC4BED18, &qword_1CFA006F8);
  v82 = swift_allocBox();
  sub_1CEFDA34C(v81, v83, type metadata accessor for VFSItem);
  v84 = v197;
  v85 = *(v197 + 16);
  sub_1CF25116C(v34);
  v86 = v199;
  v87 = v200;
  v88 = (*(v199 + 6))(v34, 1, v200);
  v210 = v85;
  if (v88 == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE310, qword_1CF9FCBE0);
    v89 = v190;
    v34 = v182;
    v90 = v198;
LABEL_26:
    v104 = swift_allocObject();
    v105 = v208;
    v106 = v209;
    *(v104 + 16) = v208;
    *(v104 + 24) = v106;
    v107 = swift_allocObject();
    v107[2] = v82;
    v107[3] = v84;
    v108 = v184;
    v107[4] = v184;
    v107[5] = v105;
    v109 = v201;
    v211 = v107;
    v107[6] = v106;
    v107[7] = v109;
    v110 = swift_allocObject();
    v110[2] = sub_1CF90325C;
    v110[3] = v104;
    v212 = v110;
    v111 = *(v85 + qword_1EDEBBC38);
    swift_retain_n();
    v209 = v82;

    v112 = v108;
    v208 = v104;

    v207 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v113 = qword_1EDEBBE40;
    v114 = v202;
    (*(v34 + 56))(v202, 1, 1, v89);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v115 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v115);

    v116 = aBlock;
    v117 = v114;
    v118 = v185;
    sub_1CEFCCBDC(v117, v185, &unk_1EC4BED20, &unk_1CFA00700);
    v119 = *(v34 + 48);
    if (v119(v118, 1, v89) == 1)
    {
      v120 = v113;
      sub_1CF9E6048();
      if (v119(v118, 1, v89) != 1)
      {
        sub_1CEFCCC44(v118, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v34 + 32))(v90, v118, v89);
    }

    v121 = v203;
    (*(v34 + 16))(v203, v90, v89);
    v122 = v186;
    *(v121 + *(v186 + 20)) = v113;
    v123 = v121 + *(v122 + 24);
    *v123 = "DB queue wait";
    *(v123 + 8) = 13;
    *(v123 + 16) = 2;
    v124 = v113;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1CF9FA450;
    *(v125 + 56) = MEMORY[0x1E69E6158];
    *(v125 + 64) = sub_1CEFD51C4();
    *(v125 + 32) = v116;
    v172 = v125;
    LOBYTE(v171) = 2;
    v170 = 2;
    sub_1CF9E6028();

    (*(v34 + 8))(v90, v89);
    sub_1CEFCCC44(v202, &unk_1EC4BED20, &unk_1CFA00700);
    v202 = *(v210 + 168);
    v206 = *(v210 + 64);
    v200 = sub_1CF9E6448();
    v201 = *(v200 - 8);
    (*(v201 + 56))(v205, 1, 1, v200);
    v126 = v189;
    sub_1CEFDA34C(v121, v189, type metadata accessor for Signpost);
    v127 = (*(v187 + 80) + 16) & ~*(v187 + 80);
    v128 = (v188 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v129 = swift_allocObject();
    sub_1CEFDA0C4(v126, v129 + v127, type metadata accessor for Signpost);
    v130 = (v129 + v128);
    v199 = sub_1CF8FB24C;
    v131 = v212;
    *v130 = sub_1CF8FB24C;
    v130[1] = v131;
    v132 = v191;
    sub_1CEFDA34C(v121, v191, type metadata accessor for Signpost);
    v133 = (v128 + 23) & 0xFFFFFFFFFFFFFFF8;
    v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
    v135 = (v134 + 25) & 0xFFFFFFFFFFFFFFF8;
    v136 = (v135 + 23) & 0xFFFFFFFFFFFFFFF8;
    v137 = swift_allocObject();
    v138 = v137 + v127;
    v139 = v200;
    sub_1CEFDA0C4(v132, v138, type metadata accessor for Signpost);
    v140 = (v137 + v128);
    *v140 = sub_1CF045408;
    v140[1] = 0;
    *(v137 + v133) = v210;
    v141 = v201;
    v142 = v137 + v134;
    *v142 = "singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)";
    *(v142 + 8) = 78;
    *(v142 + 16) = 2;
    v143 = (v137 + v135);
    v144 = v211;
    v145 = v212;
    *v143 = v199;
    v143[1] = v145;
    v146 = (v137 + v136);
    *v146 = sub_1CF8FDA44;
    v146[1] = v144;
    v147 = swift_allocObject();
    v147[2] = sub_1CF903308;
    v147[3] = v129;
    v148 = v202;
    v147[4] = v202;
    swift_retain_n();

    v210 = v129;

    v149 = fpfs_current_log();
    v150 = *(v148 + 16);
    v151 = v192;
    sub_1CEFCCBDC(v205, v192, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v141 + 48))(v151, 1, v139) == 1)
    {
      sub_1CEFCCC44(v151, &unk_1EC4BE370, qword_1CFA01B30);
      v152 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v153 = v179;
      sub_1CF9E6438();
      (*(v141 + 8))(v151, v139);
      v152 = sub_1CF9E63C8();
      (*(v180 + 8))(v153, v181);
    }

    v154 = swift_allocObject();
    v154[2] = v149;
    v154[3] = sub_1CF4858EC;
    v154[4] = v137;
    v220 = sub_1CF2BA17C;
    v221 = v154;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v218 = sub_1CEFCA444;
    v219 = &block_descriptor_3941;
    v155 = _Block_copy(&aBlock);
    v156 = v149;

    v220 = sub_1CF2BA180;
    v221 = v147;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v218 = sub_1CEFCA444;
    v219 = &block_descriptor_3944;
    v157 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v150, v206, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v152, v155, v157);
    _Block_release(v157);
    _Block_release(v155);

    sub_1CEFCCC44(v205, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v203, type metadata accessor for Signpost);
    v158 = v207;
    v159 = fpfs_adopt_log();

    sub_1CEFCCC44(v204, &qword_1EC4BED18, &qword_1CFA006F8);

    return;
  }

  (*(v86 + 4))(v183, v34, v87);
  v91 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v91);
  v170 = v201;
  v171 = v69;
  MEMORY[0x1EEE9AC00](v92);
  v172 = sub_1CF8FDA70;
  v173 = v93;
  v216 = 256;
  v215 = 0;
  v94 = swift_allocObject();
  v94[2] = &v216;
  v94[3] = sub_1CF8FDA7C;
  v94[4] = &v170;
  v94[5] = &v215;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1CF8FDABC;
  *(v95 + 24) = v94;
  v220 = sub_1CF50EB9C;
  v221 = v95;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v218 = sub_1CF005DF8;
  v219 = &block_descriptor_3954;
  v96 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v34) = fpfs_openat();

  _Block_release(v96);

  LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

  v90 = v198;
  if (v96)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v98 = v215;
  if (v215)
  {
    swift_willThrow();

LABEL_14:
    v89 = v190;
    v34 = v182;
LABEL_25:
    (*(v199 + 1))(v183, v200);
    v85 = v210;
    goto LABEL_26;
  }

  if ((v34 & 0x80000000) == 0)
  {
    v89 = v190;
    v34 = v182;
    if ((v216 & 0x100) == 0)
    {

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (MEMORY[0x1D38683F0](v97))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v100 = sub_1CF9E6138();
      v34 = v182;
      if ((v100 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v100;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v101 = v176;
      v102 = v178;
      sub_1CF9E57D8();
      v103 = sub_1CF9E53A8();
      (*(v177 + 8))(v101, v102);
      swift_willThrow();

      v89 = v190;
      goto LABEL_25;
    }

    v99 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    swift_willThrow();

    goto LABEL_14;
  }

LABEL_38:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000001CFA2DF30;
  v214 = v34;
  v160 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v160);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v161 = aBlock;
  v162 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v163 = sub_1CF9E6108();
  v164 = sub_1CF9E72B8();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *&aBlock = v166;
    *v165 = 136315650;
    v167 = sub_1CF9E7988();
    v169 = sub_1CEFD0DF0(v167, v168, &aBlock);

    *(v165 + 4) = v169;
    *(v165 + 12) = 2048;
    *(v165 + 14) = 315;
    *(v165 + 22) = 2080;
    *(v165 + 24) = sub_1CEFD0DF0(v161, *(&v161 + 1), &aBlock);
    _os_log_impl(&dword_1CEFC7000, v163, v164, "[ASSERT] ‼️  %s:%lu: %s", v165, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v166, -1, -1);
    MEMORY[0x1D386CDC0](v165, -1, -1);
  }

  (v206[1])(v175, v207);
  LODWORD(v173) = 0;
  v172 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF8AAEBC(int a1, int a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v13 = &value - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x40000000) == 0)
  {
    v14 = *MEMORY[0x1E69E9840];

    return fpfs_make_fsevent();
  }

  if ([a3 isTrashed])
  {
    v16 = swift_beginAccess();
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);
    if (v19 != 2 || v18)
    {
      if (v19 != 2 || v18 != 1)
      {
        *&value = 0x2F73662F70665F5FLL;
        *(&value + 1) = 0xE800000000000000;
        v42 = v18;
        v43 = v19;
        v23 = VFSItemID.description.getter(v16, v17);
        MEMORY[0x1D3868CC0](v23);

        v22 = sub_1CF9E6888();

LABEL_17:
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E6918();
        v24 = sub_1CF9E68C8();
        v26 = v25;

        result = (*(v9 + 8))(v13, v8);
        if (v26 >> 60 == 15)
        {
          __break(1u);
          return result;
        }

        v27 = v26 >> 62;
        if ((v26 >> 62) > 1)
        {
          if (v27 != 2)
          {
            *(&value + 6) = 0;
            *&value = 0;
            p_value = &value;
            v30 = a1;
            v28 = 0;
            goto LABEL_40;
          }

          v31 = *(v24 + 16);
          v32 = *(v24 + 24);
          v33 = sub_1CF9E5498();
          if (v33)
          {
            v34 = sub_1CF9E54C8();
            if (__OFSUB__(v31, v34))
            {
              goto LABEL_42;
            }

            v33 += v31 - v34;
          }

          v35 = __OFSUB__(v32, v31);
          v36 = v32 - v31;
          if (!v35)
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v27)
        {
          *&value = v24;
          WORD4(value) = v26;
          BYTE10(value) = BYTE2(v26);
          BYTE11(value) = BYTE3(v26);
          BYTE12(value) = BYTE4(v26);
          v28 = BYTE6(v26);
          BYTE13(value) = BYTE5(v26);
          p_value = &value;
          v30 = a1;
LABEL_40:
          fsetxattr(v30, "com.apple.fileprovider.trash-put-back#PN", p_value, v28, 0, 0);
          result = sub_1CEFE48D8(v24, v26);
          v40 = *MEMORY[0x1E69E9840];
          return result;
        }

        v36 = (v24 >> 32) - v24;
        if (v24 >> 32 >= v24)
        {
          v33 = sub_1CF9E5498();
          if (!v33)
          {
LABEL_32:
            v38 = sub_1CF9E54B8();
            if (v38 >= v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = v38;
            }

            if (v33)
            {
              v28 = v39;
            }

            else
            {
              v28 = 0;
            }

            v30 = a1;
            p_value = v33;
            goto LABEL_40;
          }

          v37 = sub_1CF9E54C8();
          if (!__OFSUB__(v24, v37))
          {
            v33 += v24 - v37;
            goto LABEL_32;
          }

LABEL_43:
          __break(1u);
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v20 = MEMORY[0x1E6967280];
    }

    else
    {
      v20 = MEMORY[0x1E6967258];
    }

    v22 = *v20;
    goto LABEL_17;
  }

  v21 = *MEMORY[0x1E69E9840];

  return fremovexattr(a1, "com.apple.fileprovider.trash-put-back#PN", 0);
}

void sub_1CF8AB2E4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void), uint64_t a6, unint64_t a7)
{
  v76 = a5;
  v69[0] = a7;
  v75 = a6;
  v79 = a3;
  v9 = sub_1CF9E6118();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for VFSItem(0);
  v12 = *(*(v78 - 1) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v74 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v69 - v15;
  v17 = swift_projectBox();
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  swift_beginAccess();
  v73 = v17;
  sub_1CEFDA34C(v17, v16, type metadata accessor for VFSItem);
  v69[1] = a4;
  v21 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v22 = [v21 pathComponents];
  v23 = sub_1CF9E6D48();

  v24 = *(v23 + 16);

  if (v24 >= 2)
  {
    v25 = [v21 stringByDeletingLastPathComponent];
    if (!v25)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = sub_1CF9E6888();
    }

    v21 = v25;
  }

  v26 = type metadata accessor for FPFSSyncEngine();
  v27 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v28 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v29 = v77;
  sub_1CF7D6FCC(v16, v79, v21, 0, v20, v26, v78, v18, v27, &off_1F4BF8588, v28, *(v19 + 8));
  v31 = v30;
  sub_1CEFD5338(v16, type metadata accessor for VFSItem);

  if (!v29)
  {
    if (v31)
    {
      v32 = v31;
      v76(v31, 0);
    }

    else
    {
      v33 = a1[3];
      v34 = a1[4];
      v35 = __swift_project_boxed_opaque_existential_1(a1, v33);
      v36 = v73;
      swift_beginAccess();
      sub_1CEFDA34C(v36, v74, type metadata accessor for VFSItem);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v38 = Strong, v39 = [Strong indexer], v38, v39))
      {
        v40 = [v39 needsAuthentication];

        if (v40)
        {
          v41 = 29;
        }

        else
        {
          v41 = 21;
        }
      }

      else
      {
        v41 = 21;
      }

      v42 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v68 = *(v34 + 8);
      v43 = v74;
      v44 = sub_1CF76BB00(v74, v41, 0, v42, v35, v78, v33, v27, &off_1F4BF8588, v28, v68);

      sub_1CEFD5338(v43, type metadata accessor for VFSItem);
      v45 = v73;
      swift_beginAccess();
      v46 = *(v45 + 32);
      v47 = *(v45 + 40);

      v48 = sub_1CF9E6888();

      v49 = [v48 stringByDeletingPathExtension];
      if (!v49)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v49 = sub_1CF9E6888();
      }

      [v44 setFp:v49 displayName:v69[0]];

      v50 = fpfs_current_or_default_log();
      v51 = v72;
      sub_1CF9E6128();
      v52 = v44;
      v53 = sub_1CF9E6108();
      v54 = sub_1CF9E7298();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v78 = v56;
        v79 = swift_slowAlloc();
        v80 = v79;
        *v55 = 136315650;
        v57 = sub_1CF7F5844(v69[0]);
        v59 = sub_1CEFD0DF0(v57, v58, &v80);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2112;
        *(v55 + 14) = v52;
        *v56 = v52;
        *(v55 + 22) = 2080;
        v60 = [v52 displayName];
        v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v62 = v48;
        v64 = v63;

        v65 = sub_1CEFD0DF0(v61, v64, &v80);
        v48 = v62;

        *(v55 + 24) = v65;
        _os_log_impl(&dword_1CEFC7000, v53, v54, "Finished updating %s for item %@; d: %s", v55, 0x20u);
        v66 = v78;
        sub_1CEFCCC44(v78, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v66, -1, -1);
        v67 = v79;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v67, -1, -1);
        MEMORY[0x1D386CDC0](v55, -1, -1);

        (*(v70 + 8))(v72, v71);
      }

      else
      {

        (*(v70 + 8))(v51, v71);
      }

      v32 = v52;
      v76(v52, 0);
    }
  }
}

uint64_t FPDDomainFPFSBackend.bulkItemChanges(_:changedFields:request:completionHandler:)(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v65 = a4;
  v84 = a3;
  v7 = sub_1CF9E63A8();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1CF9E6448();
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_bridgeObjectRetain_n();
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  v20 = os_log_type_enabled(v18, v19);
  v21 = a1 >> 62;
  v76 = a1;
  v77 = a2;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315394;
    v24 = sub_1CF7F5844(a2);
    v26 = sub_1CEFD0DF0(v24, v25, aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    a1 = v76;
    if (v21)
    {
      v27 = sub_1CF9E7818();
    }

    else
    {
      v27 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 14) = v27;

    _os_log_impl(&dword_1CEFC7000, v18, v19, "Request to modify fields %s for %ld items", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v13 + 8))(v16, v12);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC8];
  v83 = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC8];
  v82 = swift_allocObject();
  *(v82 + 16) = v29;
  v79 = swift_allocObject();
  *(v79 + 16) = MEMORY[0x1E69E7CC0];
  v81 = dispatch_group_create();
  if (v21)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v31 = 0;
    v74 = a1 & 0xFFFFFFFFFFFFFF8;
    v75 = a1 & 0xC000000000000001;
    v73 = i;
    while (1)
    {
      if (v75)
      {
        v32 = MEMORY[0x1D3869C30](v31, a1);
      }

      else
      {
        if (v31 >= *(v74 + 16))
        {
          goto LABEL_17;
        }

        v32 = *(a1 + 8 * v31 + 32);
      }

      v33 = v32;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v34 = v81;
      v80 = v31 + 1;
      dispatch_group_enter(v81);
      v35 = swift_allocObject();
      v36 = [v33 itemID];
      v37 = [v36 identifier];

      *(v35 + 16) = v37;
      *(v35 + 24) = 256;
      *(v35 + 32) = v84;
      v38 = swift_allocObject();
      v38[2] = v34;
      v38[3] = v33;
      v39 = v79;
      v38[4] = v35 | 0x4000000000000006;
      v38[5] = v39;
      v40 = v82;
      v38[6] = v83;
      v38[7] = v40;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1CF8F3508;
      *(v41 + 24) = v38;
      v42 = swift_allocObject();
      v43 = v78;
      *(v42 + 16) = v77;
      *(v42 + 24) = v33;
      *(v42 + 32) = v35 | 0x4000000000000006;
      *(v42 + 40) = sub_1CF8F3508;
      *(v42 + 48) = v38;
      *(v42 + 56) = v43;
      *(v42 + 64) = 257;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_1CF90325C;
      *(v44 + 24) = v41;
      v45 = v33;
      swift_retain_n();
      swift_retain_n();
      v46 = v45;
      v47 = v84;
      v48 = v81;
      v49 = v73;

      v50 = v43;

      sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v44, sub_1CF8F3520, v42);

      a1 = v76;

      ++v31;
      if (v80 == v49)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v51 = v78;
  v80 = *&v78[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v52 = swift_allocObject();
  v52[2] = v79;
  v52[3] = a1;
  v53 = v66;
  v52[4] = v65;
  v52[5] = v53;
  v54 = v83;
  v52[6] = v82;
  v52[7] = v54;
  v55 = v84;
  v52[8] = v84;
  v52[9] = v51;
  v56 = v81;
  v52[10] = v77;
  v52[11] = v56;
  aBlock[4] = sub_1CF8F3524;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_446;
  v57 = _Block_copy(aBlock);

  v58 = v55;
  v59 = v56;

  v60 = v51;

  v61 = v67;
  sub_1CF9E63F8();
  v85 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v62 = v69;
  v63 = v72;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v57);

  (*(v71 + 8))(v62, v63);
  (*(v68 + 8))(v61, v70);
}

void sub_1CF8AC284(void *a1, void *a2, NSObject *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a6;
  v13 = sub_1CF9E6118();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a4;
  v19 = a5;
  sub_1CEFD09A0(a5);
  v20 = a1;
  v63 = a3;
  v64 = v20;
  if (objc_sync_enter(a3))
  {
    v56 = v63;
    swift_unknownObjectRetain();

    sub_1CEFD0A98(v19);
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v56);
  }

  v21 = a5;
  if (a2)
  {
    _s3__C4CodeOMa_1(0);
    v66[0] = -1001;
    v22 = a2;
    sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    if (sub_1CF9E5658())
    {
      v23 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v24 = v18;
      sub_1CEFD09A0(a5);
      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7298();

      sub_1CEFD0A98(v21);
      v60 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66[0] = v59;
        *v27 = 136315394;
        v28 = [v24 itemID];
        v58 = v26;
        v29 = v28;
        v30 = [v28 identifier];

        v31 = NSFileProviderItemIdentifier.description.getter();
        v33 = v32;

        v34 = sub_1CEFD0DF0(v31, v33, v66);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;
        v35 = sub_1CEFD11AC(v21);
        v37 = sub_1CEFD0DF0(v35, v36, v66);

        *(v27 + 14) = v37;
        v38 = v60;
        _os_log_impl(&dword_1CEFC7000, v60, v58, "Item %s collided for request %s", v27, 0x16u);
        v39 = v59;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v39, -1, -1);
        MEMORY[0x1D386CDC0](v27, -1, -1);
      }

      else
      {
      }

      (*(v61 + 8))(v16, v13);
      v52 = v62;
      swift_beginAccess();
      v53 = v24;
      MEMORY[0x1D3868FA0]();
      v42 = v64;
      if (*((*(v52 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v52 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*(v52 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CF9E6D88();
      }

      sub_1CF9E6DE8();
    }

    else
    {
      v44 = [v18 itemID];
      v45 = [v44 identifier];

      swift_beginAccess();
      v46 = a2;
      v47 = *(a7 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1CF1D40B0(a2, v45, isUniquelyReferenced_nonNull_native);

      *(a7 + 16) = v65;
      swift_endAccess();
      v49 = [v18 itemID];
      v50 = [v49 identifier];

      swift_beginAccess();
      v42 = v64;
      v51 = v64;
      sub_1CF1C9340(a1, v50);
    }

    swift_endAccess();
  }

  else
  {
    v40 = [v18 itemID];
    v41 = [v40 identifier];

    swift_beginAccess();
    v42 = v64;
    v43 = v64;
    sub_1CF1C9340(a1, v41);
    swift_endAccess();
  }

  v54 = v63;
  if (objc_sync_exit(v63))
  {
    swift_unknownObjectRetain();

    sub_1CEFD0A98(v21);
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v54);
  }

  sub_1CEFD0A98(v21);
  dispatch_group_leave(v54);
}

uint64_t sub_1CF8AC858(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v69 = a6;
  v70 = a4;
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  swift_beginAccess();
  v24 = *(a1 + 16);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v48 = *(a1 + 16);
    }

    if (sub_1CF9E7818())
    {
LABEL_3:
      swift_beginAccess();
      v25 = *(a1 + 16);
      if (v25 >> 62)
      {
        if (v25 < 0)
        {
          v54 = *(a1 + 16);
        }

        if (sub_1CF9E7818() >= 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_5:
        swift_beginAccess();
        v26 = *(a1 + 16);
        v67 = a3;
        v68 = a5;
        v66 = a8;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1D3869C30](0);
          goto LABEL_8;
        }

        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v26 + 32);
LABEL_8:
          v28 = v27;
          v65 = a10;
          swift_endAccess();
          v29 = swift_allocObject();
          v30 = [v28 itemID];
          v31 = [v30 identifier];

          *(v29 + 16) = v31;
          *(v29 + 24) = 256;
          *(v29 + 32) = a7;
          v64 = v29 | 0x4000000000000006;
          v32 = swift_allocObject();
          v33 = v68;
          v34 = v69;
          v32[2] = a10;
          v32[3] = v34;
          v32[4] = v28;
          v32[5] = v33;
          v32[6] = a1;
          v32[7] = a2;
          v35 = v70;
          v32[8] = v67;
          v32[9] = v35;
          v67 = a2;
          v36 = v66;
          v32[10] = a7;
          v32[11] = v36;
          v32[12] = a9;
          v32[13] = 0;
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1CF8FD734;
          *(v37 + 24) = v32;
          v38 = swift_allocObject();
          *(v38 + 16) = a9;
          *(v38 + 24) = v28;
          *(v38 + 32) = v64;
          *(v38 + 40) = sub_1CF8FD734;
          *(v38 + 48) = v32;
          *(v38 + 56) = v36;
          *(v38 + 64) = 257;
          v39 = swift_allocObject();
          *(v39 + 16) = sub_1CF90325C;
          *(v39 + 24) = v37;
          v40 = a7;
          v41 = v28;
          v42 = v36;
          swift_retain_n();

          v43 = v40;
          v44 = v41;
          v45 = v42;
          v46 = v65;

          sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v39, sub_1CF903324, v38);
        }

        __break(1u);
LABEL_30:
        v50 = sub_1CF9E7818();
        goto LABEL_15;
      }

      v55 = a3;
      v56 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v57 = sub_1CF9E6108();
      v58 = sub_1CF9E7298();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        if (a2 >> 62)
        {
          v60 = sub_1CF9E7818();
        }

        else
        {
          v60 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v59 + 4) = v60;

        _os_log_impl(&dword_1CEFC7000, v57, v58, "Finished bulkItemChanges of %ld items", v59, 0xCu);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      else
      {
      }

      (*(v17 + 8))(v20, v16);
      swift_beginAccess();
      v61 = *(a5 + 16);
      v62 = v69;
      swift_beginAccess();
      v63 = *(v62 + 16);

      (v55)(v61, v63);
      goto LABEL_27;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v20 = a3;
  v49 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  a3 = sub_1CF9E6108();
  LOBYTE(a8) = sub_1CF9E7298();
  if (!os_log_type_enabled(a3, a8))
  {

    goto LABEL_17;
  }

  v68 = a5;
  a5 = swift_slowAlloc();
  *a5 = 134217984;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v50 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  *(a5 + 4) = v50;

  _os_log_impl(&dword_1CEFC7000, a3, a8, "Finished bulkItemChanges of %ld items", a5, 0xCu);
  MEMORY[0x1D386CDC0](a5, -1, -1);

  a5 = v68;
LABEL_17:
  (*(v17 + 8))(v23, v16);
  swift_beginAccess();
  v51 = *(a5 + 16);
  v52 = v69;
  swift_beginAccess();
  v53 = *(v52 + 16);

  (v20)(v51, v53);
LABEL_27:
}

uint64_t sub_1CF8ACF1C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, NSObject *a7, unint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v76 = a7;
  v77 = a8;
  v20 = sub_1CF9E6118();
  v74 = *(v20 - 8);
  v75 = v20;
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a1;
  v26 = a5;
  v78 = a3;
  if (objc_sync_enter(a3))
  {
    v68 = v78;
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v68);
  }

  if (a2)
  {
    v27 = a2;
    v28 = [v26 itemID];
    v29 = [v28 identifier];

    swift_beginAccess();
    v30 = a2;
    sub_1CF1C9FF0(a2, v29);
    swift_endAccess();
  }

  v31 = [v26 itemID];
  v32 = [v31 identifier];

  swift_beginAccess();
  v33 = v25;
  sub_1CF1C9340(a1, v32);
  swift_endAccess();
  if (objc_sync_exit(v78))
  {
    v69 = v78;
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v69);
  }

  v34 = a14 + 1;
  if (__OFADD__(a14, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = a9;
    v33 = v76;
    swift_beginAccess();
    isa = v33[2].isa;
    if (!(isa >> 62))
    {
      v36 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  v36 = sub_1CF9E7818();
LABEL_8:
  v37 = v77;
  if (v34 < v36)
  {
    v38 = swift_beginAccess();
    v39 = v33[2].isa;
    v72 = a6;
    v73 = a10;
    v71 = v25;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = a4;
      v41 = MEMORY[0x1D3869C30](v34);
      goto LABEL_13;
    }

    if (v34 < 0)
    {
      __break(1u);
    }

    else if (v34 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = a4;
      v41 = *(v39 + v34 + 4);
LABEL_13:
      v42 = v41;
      swift_endAccess();
      v43 = swift_allocObject();
      v44 = [v42 itemID];
      v45 = [v44 identifier];

      *(v43 + 16) = v45;
      *(v43 + 24) = 256;
      *(v43 + 32) = a11;
      v75 = v43 | 0x4000000000000006;
      v46 = swift_allocObject();
      v46[2] = v78;
      v46[3] = v40;
      v70[1] = v40;
      v47 = v72;
      v46[4] = v42;
      v46[5] = v47;
      v48 = v77;
      v46[6] = v76;
      v46[7] = v48;
      v49 = v73;
      v46[8] = v71;
      v46[9] = v49;
      v46[10] = a11;
      v46[11] = a12;
      v46[12] = a13;
      v46[13] = v34;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1CF9033A8;
      *(v50 + 24) = v46;
      v51 = swift_allocObject();
      *(v51 + 16) = a13;
      *(v51 + 24) = v42;
      *(v51 + 32) = v75;
      *(v51 + 40) = sub_1CF9033A8;
      *(v51 + 48) = v46;
      *(v51 + 56) = a12;
      *(v51 + 64) = 257;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1CF90325C;
      *(v52 + 24) = v50;
      v53 = a11;
      v54 = v42;
      v55 = a12;
      swift_retain_n();
      v56 = v78;
      v57 = v53;
      v58 = v54;
      v59 = v55;

      sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v52, sub_1CF903324, v51);
    }

    __break(1u);
LABEL_26:
    v66 = a6;
    v67 = v38;
    v62 = sub_1CF9E7818();
    v38 = v67;
    a6 = v66;
    goto LABEL_17;
  }

  v61 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v33 = sub_1CF9E6108();
  LOBYTE(v34) = sub_1CF9E7298();
  if (!os_log_type_enabled(v33, v34))
  {

    goto LABEL_19;
  }

  v38 = swift_slowAlloc();
  *v38 = 134217984;
  if (v37 >> 62)
  {
    goto LABEL_26;
  }

  v62 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  *(v38 + 4) = v62;
  v63 = v38;

  _os_log_impl(&dword_1CEFC7000, v33, v34, "Finished bulkItemChanges of %ld items", v63, 0xCu);
  MEMORY[0x1D386CDC0](v63, -1, -1);

LABEL_19:
  (*(v74 + 8))(v23, v75);
  swift_beginAccess();
  v64 = *(a6 + 16);
  swift_beginAccess();
  v65 = *(a4 + 16);

  (v25)(v64, v65);
}

void sub_1CF8AD6F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    v6 = sub_1CF9E6618();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t FPDDomainFPFSBackend.trashItem(at:request:completionHandler:)(uint64_t a1, void *a2, void (*a3)(char *, id), uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = a4;
    v35 = v5;
    v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v13 + 32))(&v22[v18], v15, v12);
    v23 = &v22[v19];
    v24 = v37;
    v25 = v34;
    v26 = v35;
    *v23 = v37;
    v23[1] = v25;
    *&v22[v20] = v17;
    *&v22[v21] = v26;
    v27 = v36;
    *&v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8] = v36;
    v28 = v25;
    swift_retain_n();
    v29 = v17;
    v30 = v26;
    v31 = v27;
    sub_1CF8EECC0("trashItem(at:request:completionHandler:)", 40, 2, sub_1CF8F355C, v22, v30, v24, v28);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v33 = sub_1CF8403B4();
    v37(v11, v33);

    return sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

uint64_t sub_1CF8ADB0C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = sub_1CF9E5A58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a2(v7, a1);
  return sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF8ADBFC(uint64_t a1, uint64_t a2, void (*a3)(char *, id), void (*a4)(char *, id), void *a5, void *a6, void *a7)
{
  v70 = a6;
  v71 = a7;
  v73 = a5;
  v75 = a4;
  v77 = a3;
  v76 = sub_1CF9E5A58();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v69 = v11;
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v66 - v22;
  v24 = type metadata accessor for VFSItem(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = a2;
  v31 = a2;
  v32 = a1;
  sub_1CF010CE0(v31, 0, 2, 3, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v9 + 56))(v19, 1, 1, v76);
    v33 = sub_1CF9E5928();
    v34 = FPItemNotFoundErrorAtURL();

    v77(v19, v34);
    return sub_1CEFCCC44(v19, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v66 = v30;
    v37 = v76;
    v36 = v77;
    v38 = v23;
    v39 = v29;
    sub_1CEFDA0C4(v38, v29, type metadata accessor for VFSItem);
    if ([v73 supportsSyncingTrash])
    {
      v73 = *(v32 + 16);
      v40 = swift_allocObject();
      v68 = v40;
      v41 = v75;
      *(v40 + 16) = v36;
      *(v40 + 24) = v41;
      sub_1CEFDA34C(v29, v72, type metadata accessor for VFSItem);
      v42 = v9;
      (*(v9 + 16))(v74, v66, v37);
      v43 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v44 = (v26 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
      v46 = *(v9 + 80);
      v67 = v39;
      v47 = (v46 + v45 + 16) & ~v46;
      v48 = (v69 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      *(v49 + 16) = v32;
      sub_1CEFDA0C4(v72, v49 + v43, type metadata accessor for VFSItem);
      v50 = v70;
      *(v49 + v44) = v70;
      v51 = (v49 + v45);
      v52 = v76;
      *v51 = v77;
      v51[1] = v41;
      (*(v42 + 32))(v49 + v47, v74, v52);
      v53 = v71;
      *(v49 + v48) = v71;
      swift_retain_n();

      v54 = v50;
      v55 = v53;
      sub_1CF7AAF88("trashItem(at:request:completionHandler:)", 40, 2, 2, sub_1CF9034CC, v68, sub_1CF8FD604, v49);

      v56 = v67;
    }

    else
    {
      v57 = &v29[*(v24 + 28)];
      v58 = type metadata accessor for ItemMetadata();
      v59 = *(v9 + 56);
      v60 = v37;
      if (v57[*(v58 + 80)] == 1)
      {
        v61 = v67;
        v59(v67, 1, 1, v60);
        v62 = FPNotSupportedError();
        v36(v61, v62);

        v63 = v61;
      }

      else
      {
        v64 = v68;
        v59(v68, 1, 1, v37);
        v65 = FPNotSupportedError();
        v36(v64, v65);

        v63 = v64;
      }

      sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);
      v56 = v29;
    }

    return sub_1CEFD5338(v56, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF8AE234(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v75 = a6;
  v70 = a8;
  v67 = a7;
  v73 = a3;
  v74 = a5;
  v76 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v66 - v12;
  v13 = type metadata accessor for VFSItem(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v71 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v25 = Strong, v26 = [Strong indexer], v25, v26))
  {
    v27 = [v26 needsAuthentication];

    if (v27)
    {
      v28 = 30;
    }

    else
    {
      v28 = 22;
    }
  }

  else
  {
    v28 = 22;
  }

  v29 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v30 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v31 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v65 = v21;
  v32 = v73;
  v33 = sub_1CF76BB00(v73, v28, 0, v29, v23, v13, v22, v30, &off_1F4BF8588, v31, v65);

  if (([v33 capabilities] & 0x10) != 0)
  {
    v43 = [v33 strippedCopy];
    [v43 setTrashed_];
    [v43 setParentItemIdentifier_];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
    v45 = swift_allocBox();
    v76 = v45;
    v47 = v46;
    v48 = *(v44 + 48);
    v49 = sub_1CF9E5A58();
    (*(*(v49 - 8) + 16))(v47, v67, v49);
    v50 = v70;
    *(v47 + v48) = v70;
    v51 = v45 | 0x5000000000000000;
    v52 = swift_allocObject();
    v53 = v75;
    *(v52 + 16) = v74;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1CF8FD72C;
    *(v54 + 24) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = 1073741828;
    *(v55 + 24) = v43;
    *(v55 + 32) = v51;
    *(v55 + 40) = sub_1CF8FD72C;
    v74 = v33;
    v56 = v71;
    *(v55 + 48) = v52;
    *(v55 + 56) = v56;
    *(v55 + 64) = 256;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1CF90325C;
    *(v57 + 24) = v54;
    swift_retain_n();
    v58 = v50;

    v59 = v43;

    v60 = v56;

    sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v57, sub_1CF903324, v55);
  }

  else
  {
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v32, v16, type metadata accessor for VFSItem);
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v77 = v38;
      *v37 = 136315138;
      v39 = sub_1CF255338();
      v41 = v40;
      sub_1CEFD5338(v16, type metadata accessor for VFSItem);
      v42 = sub_1CEFD0DF0(v39, v41, &v77);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "%s doesn't support trashing..", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v16, type metadata accessor for VFSItem);
    }

    (*(v68 + 8))(v20, v69);
    v62 = sub_1CF9E5A58();
    v63 = v72;
    (*(*(v62 - 8) + 56))(v72, 1, 1, v62);
    v64 = FPNotSupportedError();
    (v74)(v63, v64);

    return sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

uint64_t sub_1CF8AE920(void *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v23 - v17;
  if (a1)
  {
    v19 = a1;
    v20 = [v19 fileURL];
    if (v20)
    {
      v21 = v20;
      sub_1CF9E59D8();

      (*(v7 + 32))(v13, v10, v6);
      (*(v7 + 16))(v18, v13, v6);
      (*(v7 + 56))(v18, 0, 1, v6);
      a3(v18, 0);

      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      return (*(v7 + 8))(v13, v6);
    }

    else
    {
      result = sub_1CF9E7B68();
      __break(1u);
    }
  }

  else
  {
    (*(v7 + 56))(v18, 1, 1, v6, v16);
    a3(v18, a2);
    return sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.resolveConflict(at:request:completionHandler:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;
  swift_retain_n();
  v17 = a2;
  sub_1CF8EB0F8("resolveConflict(at:request:completionHandler:)", 46, 2, sub_1CF8F3560, v15, v19[1], a3, a4);
}

void sub_1CF8AEEB0(uint64_t a1, uint64_t a2, void (*a3)(id), void (*a4)(id), void *a5)
{
  v118 = a5;
  v130 = a4;
  v133 = a3;
  v115 = sub_1CF9E63D8();
  v114 = *(v115 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v109 - v13;
  v14 = sub_1CF9E6068();
  v125 = *(v14 - 8);
  v126 = v14;
  v15 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v119 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v109 - v21;
  v120 = type metadata accessor for Signpost(0);
  v122 = *(v120 - 8);
  v22 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v127 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = v26;
  v124 = (&v109 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v109 - v28;
  v128 = sub_1CF9E5A58();
  v117 = *(v128 - 8);
  v29 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v116 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v109 - v32;
  v34 = type metadata accessor for VFSItem(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v109 - v39;
  v41 = a2;
  sub_1CF010CE0(a2, 1, 2, 0, v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1CEFCCC44(v33, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v42 = sub_1CF9E5928();
    v43 = FPItemNotFoundErrorAtURL();

    v133(v43);
  }

  else
  {
    v110 = type metadata accessor for VFSItem;
    sub_1CEFDA0C4(v33, v40, type metadata accessor for VFSItem);
    v111 = a1;
    v131 = *(a1 + 16);
    v112 = v40;
    sub_1CEFDA34C(v40, v37, type metadata accessor for VFSItem);
    v44 = v117;
    v45 = v116;
    v46 = v41;
    v47 = v128;
    (*(v117 + 16))(v116, v46, v128);
    v48 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v49 = (v36 + *(v44 + 80) + v48) & ~*(v44 + 80);
    v50 = (v29 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    sub_1CEFDA0C4(v37, v52 + v48, v110);
    (*(v44 + 32))(v52 + v49, v45, v47);
    v53 = v118;
    *(v52 + v50) = v118;
    *(v52 + v51) = v111;
    v128 = v52;
    v54 = (v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8));
    v55 = v133;
    v56 = v130;
    *v54 = v133;
    v54[1] = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v56;
    v133 = v57;
    v58 = *(v131 + qword_1EDEBBC38);
    swift_retain_n();
    v59 = v53;

    v130 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v60 = qword_1EDEBBE40;
    v62 = v125;
    v61 = v126;
    v63 = v132;
    (*(v125 + 56))(v132, 1, 1, v126);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v64 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v64);

    v65 = aBlock;
    v66 = v119;
    sub_1CEFCCBDC(v63, v119, &unk_1EC4BED20, &unk_1CFA00700);
    v67 = *(v62 + 48);
    v68 = v67(v66, 1, v61);
    v69 = v121;
    if (v68 == 1)
    {
      v70 = v60;
      sub_1CF9E6048();
      if (v67(v66, 1, v61) != 1)
      {
        sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v62 + 32))(v121, v66, v61);
    }

    v71 = v134;
    (*(v62 + 16))(v134, v69, v61);
    v72 = v120;
    *(v71 + *(v120 + 20)) = v60;
    v73 = v71 + *(v72 + 24);
    *v73 = "DB queue wait";
    *(v73 + 8) = 13;
    *(v73 + 16) = 2;
    v74 = v60;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1CF9FA450;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = sub_1CEFD51C4();
    *(v75 + 32) = v65;
    sub_1CF9E6028();

    (*(v62 + 8))(v69, v61);
    sub_1CEFCCC44(v132, &unk_1EC4BED20, &unk_1CFA00700);
    v126 = *(v131 + 168);
    v132 = *(v131 + 64);
    v121 = sub_1CF9E6448();
    v125 = *(v121 - 1);
    (*(v125 + 56))(v135, 1, 1, v121);
    v76 = v124;
    sub_1CEFDA34C(v71, v124, type metadata accessor for Signpost);
    v77 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v78 = (v123 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    sub_1CEFDA0C4(v76, v79 + v77, type metadata accessor for Signpost);
    v80 = (v79 + v78);
    v124 = sub_1CF5543A4;
    v81 = v133;
    *v80 = sub_1CF5543A4;
    v80[1] = v81;
    v82 = v127;
    sub_1CEFDA34C(v71, v127, type metadata accessor for Signpost);
    v83 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 25) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 23) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    sub_1CEFDA0C4(v82, v87 + v77, type metadata accessor for Signpost);
    v88 = (v87 + v78);
    v89 = v121;
    *v88 = sub_1CF045408;
    v88[1] = 0;
    *(v87 + v83) = v131;
    v90 = v87 + v84;
    *v90 = "resolveConflict(at:request:completionHandler:)";
    *(v90 + 8) = 46;
    *(v90 + 16) = 2;
    v91 = (v87 + v85);
    v92 = v125;
    v93 = v133;
    *v91 = v124;
    v91[1] = v93;
    v94 = (v87 + v86);
    v95 = v128;
    *v94 = sub_1CF8FD4EC;
    v94[1] = v95;
    v96 = swift_allocObject();
    v96[2] = sub_1CF903308;
    v96[3] = v79;
    v97 = v126;
    v96[4] = v126;
    swift_retain_n();

    v131 = v79;

    v98 = fpfs_current_log();
    v99 = *(v97 + 16);
    v100 = v129;
    sub_1CEFCCBDC(v135, v129, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v92 + 48))(v100, 1, v89) == 1)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BE370, qword_1CFA01B30);
      v101 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v102 = v113;
      sub_1CF9E6438();
      (*(v92 + 8))(v100, v89);
      v101 = sub_1CF9E63C8();
      (*(v114 + 8))(v102, v115);
    }

    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = sub_1CF4858EC;
    v103[4] = v87;
    v139 = sub_1CF2BA17C;
    v140 = v103;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v137 = sub_1CEFCA444;
    v138 = &block_descriptor_3697;
    v104 = _Block_copy(&aBlock);
    v105 = v98;

    v139 = sub_1CF2BA180;
    v140 = v96;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v137 = sub_1CEFCA444;
    v138 = &block_descriptor_3700;
    v106 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v99, v132, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v101, v104, v106);
    _Block_release(v106);
    _Block_release(v104);

    sub_1CEFCCC44(v135, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v134, type metadata accessor for Signpost);
    v107 = v130;
    v108 = fpfs_adopt_log();

    sub_1CEFD5338(v112, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF8AFD10(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = *(a2 + 8);
  v25 = *a2;
  v26 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *(v14 + 48);
  v19 = sub_1CF9E5A58();
  (*(*(v19 - 8) + 16))(v17, a3, v19);
  *(v17 + v18) = a4;
  v20 = *(a5 + 16);
  v21 = a4;
  v22 = v27;
  sub_1CF9827DC(&v25, v15 | 0xB000000000000000, v20, v12, v10, v11);
  if (v22)
  {
  }

  return a6(0);
}

id sub_1CF8B0088(void *a1, unint64_t a2, char *a3)
{
  v191 = a3;
  v193 = a2;
  v194[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v189 = &v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v168 - v9;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v168 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v182 = &v168 - v17;
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v185 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v187 = &v168 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v181 = &v168 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v168 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v168 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v168 - v38;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_70;
  }

  v169 = v11;
  v170 = v10;
  v41 = result;
  v42 = [result volume];
  v43 = [v42 purgatoryDirectory];

  sub_1CF9E59D8();
  sub_1CF9E5968();
  v177 = v19;
  v44 = *(v19 + 8);
  v179 = v36;
  v44(v36, v18);
  v45 = [a1 itemVersion];
  v46 = v18;
  if (!v45)
  {
    v44(v39, v18);

LABEL_30:
    result = 0;
LABEL_70:
    v167 = *MEMORY[0x1E69E9840];
    return result;
  }

  v188 = v44;
  v184 = v19 + 8;
  v174 = v41;
  v178 = v39;
  v171 = v33;
  v175 = v24;
  v47 = v45;
  v48 = objc_opt_self();
  v176 = a1;
  v49 = [a1 itemID];
  sub_1CF9E5878();
  v50 = sub_1CF9E6888();

  v173 = v47;
  v51 = [v48 versionFaultName:v47 identifier:v49 ext:v50];

  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v192 = v53;

  v194[0] = MEMORY[0x1E69E7CC0];
  v54 = v193;
  if (v193 >> 62)
  {
LABEL_33:
    v55 = sub_1CF9E7818();
  }

  else
  {
    v55 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v188;
  v172 = v46;
  if (v55)
  {
    v57 = 0;
    v46 = v54 & 0xC000000000000001;
    v58 = v54 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v46)
      {
        v59 = MEMORY[0x1D3869C30](v57, v54);
      }

      else
      {
        if (v57 >= *(v58 + 16))
        {
          goto LABEL_32;
        }

        v59 = *(v54 + 8 * v57 + 32);
      }

      v60 = v59;
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v62 = [v59 name];
      if (v62)
      {
        v63 = v62;
        v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v66 = v65;

        if (v64 == v52 && v66 == v192)
        {

LABEL_21:
          sub_1CF9E7A18();
          v69 = *(v194[0] + 2);
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v54 = v193;
          goto LABEL_8;
        }

        v68 = sub_1CF9E8048();

        if (v68)
        {
          goto LABEL_21;
        }

        v54 = v193;
      }

      else
      {
      }

LABEL_8:
      ++v57;
      if (v61 == v55)
      {
        v70 = v194[0];
        v46 = v172;
        v56 = v188;
        v71 = v179;
        if ((v194[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
  v71 = v179;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v70 & 0x4000000000000000) != 0)
  {
LABEL_34:
    v73 = sub_1CF9E7818();
    v71 = v179;

    if (v73)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v72 = *(v70 + 16);

    if (v72)
    {
LABEL_29:
      v56(v178, v46);

      goto LABEL_30;
    }
  }

  v74 = v178;
  sub_1CF9E5968();
  v75 = sub_1CF9E5928();
  v56(v71, v46);
  v193 = v75;
  result = _CFURLCopyPromiseURLOfLogicalURL();
  if (!result)
  {
    __break(1u);
    goto LABEL_72;
  }

  v76 = result;
  v77 = v171;
  sub_1CF9E59D8();

  v78 = objc_opt_self();
  v79 = [v78 defaultManager];
  sub_1CF9E5A18();
  v80 = sub_1CF9E6888();

  v194[0] = 0;
  v81 = [v79 createDirectoryAtPath:v80 withIntermediateDirectories:1 attributes:0 error:v194];

  if (v81)
  {
    v82 = v194[0];
    v83 = [v78 defaultManager];
    sub_1CF9E5A18();
    v84 = sub_1CF9E6888();

    v85 = [v83 fileExistsAtPath_];

    if (v85)
    {
      v86 = 0;
      v87 = v77;
      v88 = v177;
      goto LABEL_53;
    }

    v108 = [v78 defaultManager];
    sub_1CF9E5A18();
    v109 = sub_1CF9E6888();

    v110 = [v108 createFileAtPath:v109 contents:0 attributes:0];

    v111 = fpfs_current_or_default_log();
    v88 = v177;
    v112 = (v177 + 16);
    v87 = v77;
    if (v110)
    {
      v113 = v182;
      sub_1CF9E6128();
      v114 = v180;
      (*v112)(v180, v87, v46);
      v115 = sub_1CF9E6108();
      v116 = sub_1CF9E7288();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v194[0] = v118;
        *v117 = 136315138;
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
        v119 = sub_1CF9E7F98();
        v120 = v114;
        v122 = v121;
        v188(v120, v46);
        v123 = sub_1CEFD0DF0(v119, v122, v194);

        *(v117 + 4) = v123;
        _os_log_impl(&dword_1CEFC7000, v115, v116, "Created promise URL for thumbnail at URL: %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v118);
        v124 = v118;
        v87 = v171;
LABEL_48:
        MEMORY[0x1D386CDC0](v124, -1, -1);
        MEMORY[0x1D386CDC0](v117, -1, -1);

LABEL_52:
        (*(v169 + 8))(v113, v170);
        v86 = 0;
        goto LABEL_53;
      }

      v132 = v114;
    }

    else
    {
      v113 = v183;
      sub_1CF9E6128();
      v125 = v181;
      (*v112)(v181, v87, v46);
      v115 = sub_1CF9E6108();
      v126 = sub_1CF9E72A8();
      if (os_log_type_enabled(v115, v126))
      {
        v117 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v194[0] = v127;
        *v117 = 136315138;
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
        v128 = sub_1CF9E7F98();
        v130 = v129;
        v188(v125, v46);
        v131 = sub_1CEFD0DF0(v128, v130, v194);
        v87 = v171;

        *(v117 + 4) = v131;
        _os_log_impl(&dword_1CEFC7000, v115, v126, "Failed to created thumbnail directory for URL: %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v127);
        v124 = v127;
        goto LABEL_48;
      }

      v132 = v125;
    }

    v188(v132, v46);
    goto LABEL_52;
  }

  v89 = v194[0];
  v90 = sub_1CF9E57F8();

  swift_willThrow();
  v86 = 0;
  v91 = fpfs_current_or_default_log();
  v92 = v186;
  sub_1CF9E6128();
  v93 = v185;
  (*(v177 + 16))(v185, v74, v46);
  v94 = v90;
  v95 = sub_1CF9E6108();
  v96 = sub_1CF9E72A8();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v183 = 0;
    v100 = v99;
    v194[0] = v99;
    *v97 = 136315394;
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
    v101 = sub_1CF9E7F98();
    v103 = v102;
    v188(v93, v46);
    v104 = sub_1CEFD0DF0(v101, v103, v194);

    *(v97 + 4) = v104;
    *(v97 + 12) = 2112;
    v105 = v90;
    v106 = _swift_stdlib_bridgeErrorToNSError();
    *(v97 + 14) = v106;
    *v98 = v106;
    _os_log_impl(&dword_1CEFC7000, v95, v96, "Failed to created thumbnail directory for URL: %s, error: %@", v97, 0x16u);
    sub_1CEFCCC44(v98, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v98, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v107 = v100;
    v86 = v183;
    MEMORY[0x1D386CDC0](v107, -1, -1);
    MEMORY[0x1D386CDC0](v97, -1, -1);

    (*(v169 + 8))(v186, v170);
  }

  else
  {

    v188(v93, v46);
    (*(v169 + 8))(v92, v170);
  }

  v87 = v171;
  v88 = v177;
LABEL_53:
  v133 = v187;
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  v134 = *(v88 + 16);
  v134(v133, v87, v46);
  v135 = sub_1CF02BFF8(v133, 0);
  if (v86)
  {

    v136 = 0;
  }

  else
  {
    v136 = v135;
  }

  v137 = v176;
  v138 = v190;
  result = [v176 itemVersion];
  if (result)
  {
    v139 = result;

    v140 = [v137 displayName];
    if (!v140)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v140 = sub_1CF9E6888();
    }

    v134(v175, v191, v46);
    v141 = [v137 itemID];
    v142 = [v137 contentModificationDate];
    v192 = v141;
    if (v142)
    {
      v143 = v142;
      sub_1CF9E5CB8();

      v144 = 0;
    }

    else
    {
      v144 = 1;
    }

    v145 = sub_1CF9E5CF8();
    v146 = *(v145 - 8);
    v147 = 1;
    (*(v146 + 56))(v138, v144, 1, v145);
    v148 = [v176 mostRecentEditorNameComponents];
    v187 = v136;
    v149 = v189;
    if (v148)
    {
      v150 = v148;
      sub_1CF9E5738();

      v147 = 0;
    }

    v151 = sub_1CF9E5748();
    v152 = *(v151 - 8);
    (*(v152 + 56))(v149, v147, 1, v151);
    v153 = [v176 documentSize];
    v154 = sub_1CF9E5928();
    v155 = v190;
    v156 = 0;
    if ((*(v146 + 48))(v190, 1, v145) != 1)
    {
      v156 = sub_1CF9E5C48();
      (*(v146 + 8))(v155, v145);
    }

    v157 = v189;
    if ((*(v152 + 48))(v189, 1, v151) == 1)
    {
      v158 = 0;
    }

    else
    {
      v158 = sub_1CF9E5728();
      (*(v152 + 8))(v157, v151);
    }

    v159 = v175;
    v160 = objc_allocWithZone(MEMORY[0x1E6967340]);
    v161 = v187;
    v162 = v192;
    v163 = [v160 initWithVersion:v139 displayName:v140 originalURL:v154 physicalURL:v187 identifier:v192 modificationDate:v156 lastEditorNameComponents:v158 size:v153];

    v164 = v159;
    v165 = v172;
    v166 = v188;
    v188(v164, v172);
    v166(v171, v165);
    v166(v178, v165);
    result = v163;
    goto LABEL_70;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_1CF8B12B4(void *a1, char a2, void (*a3)(void, void *, __n128), uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v24 = a7;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  if (a2)
  {
    a3(MEMORY[0x1E69E7CC0], a1, v16);
  }

  else
  {
    v23 = a1;
    if (qword_1EDEAB5F0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBA38;
    (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v13);
    v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    *(v18 + 4) = a5;
    (*(v14 + 32))(&v18[v17], &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v18[v17 + v15] = v24 & 1;
    aBlock[4] = sub_1CF8FD3B4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF919B5C;
    aBlock[3] = &block_descriptor_3667;
    v19 = _Block_copy(aBlock);

    v20 = a5;

    [v23 enumerateItemsFromPage:v22 suggestedPageSize:128 upTo:-1 reply:v19];
    _Block_release(v19);
  }
}

void sub_1CF8B1504(unint64_t a1, id a2, void (*a3)(unint64_t, void), unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_24;
    }

    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_24:
      a3(MEMORY[0x1E69E7CC0], 0);
      return;
    }

    while (1)
    {
      v29[8] = a4;
      v12 = a1;
      v13 = a6;
      v14 = sub_1CF8F5280(a6, a7 & 1);
      MEMORY[0x1EEE9AC00](v14);
      v29[2] = a5;
      v29[3] = v15;
      v29[7] = v15;
      v29[4] = v13;
      a1 = sub_1CF7F0E4C(sub_1CF8FD45C, v29, v12);
      v16 = a1;
      v30 = a3;
      if (a1 >> 62)
      {
        a1 = sub_1CF9E7818();
        a4 = a1;
        if (!a1)
        {
LABEL_26:

          v30(v16, 0);

          return;
        }
      }

      else
      {
        a4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a4)
        {
          goto LABEL_26;
        }
      }

      v17 = 0;
      a3 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
      v31 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x1D3869C30](v17, v16);
        }

        else
        {
          if (v17 >= *(v31 + 16))
          {
            goto LABEL_22;
          }

          a1 = *(v16 + 8 * v17 + 32);
        }

        v19 = a1;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v22 = Strong;
          v23 = [Strong versionsCache];

          a1 = [v19 etag];
          if (!a1)
          {
            __break(1u);
            break;
          }

          v18 = a1;
          [v23 setObject:v19 forKey:a1];
        }

        ++v17;
        if (v20 == a4)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v24 = a1;
      v25 = a6;
      v26 = a7;
      v27 = sub_1CF9E7818();
      a7 = v26;
      a6 = v25;
      v28 = v27;
      a1 = v24;
      if (v28 < 1)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = a2;
  a3(MEMORY[0x1E69E7CC0], a2);
}

uint64_t FPDDomainFPFSBackend.listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v9 + 32))(v15 + v13, v11, v8);
  v16 = v25;
  *(v15 + v14) = v25;
  v17 = v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v23;
  *v17 = v23;
  *(v17 + 8) = v24;
  swift_retain_n();

  v19 = v16;
  v20 = v18;
  sub_1CF8EF448("listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)", 77, 2, sub_1CF8F3594, v15, v19, sub_1CF8F3564, v12);
}

uint64_t sub_1CF8B19C0(uint64_t a1, void (*a2)(void, void, id), uint64_t a3, uint64_t a4, void *a5, void *a6, int a7)
{
  v64 = a7;
  v65 = a6;
  v66 = a5;
  v71 = sub_1CF9E5A58();
  v63 = *(v71 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v62 = v12;
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v56 - v20;
  v21 = swift_allocObject();
  v60 = a2;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = sub_1CF902ECC;
  v23[3] = v21;
  v23[4] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF8FCF64;
  *(v24 + 24) = v23;
  v68 = v24;
  swift_retain_n();

  v25 = a4;
  v26 = a4;
  v27 = a1;
  v28 = v67;
  sub_1CF010CE0(v26, 1, 2, 0, v16);
  if ((*(v28 + 48))(v16, 1, v17) != 1)
  {

    v58 = type metadata accessor for VFSItem;
    v35 = v70;
    sub_1CEFDA0C4(v16, v70, type metadata accessor for VFSItem);
    v57 = v27;
    v60 = *(v27 + 16);
    v36 = swift_allocObject();
    v56 = sub_1CF8FCF78;
    v59 = v36;
    v37 = v68;
    *(v36 + 16) = sub_1CF8FCF78;
    *(v36 + 24) = v37;
    v38 = v35;
    v39 = v61;
    sub_1CEFDA34C(v38, v61, type metadata accessor for VFSItem);
    v40 = v63;
    (*(v63 + 16))(v69, v25, v71);
    v41 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v42 = (v18 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v40 + 80) + v43 + 16) & ~*(v40 + 80);
    v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v58;
    *(v46 + 16) = v57;
    sub_1CEFDA0C4(v39, v46 + v41, v47);
    v48 = v66;
    *(v46 + v42) = v66;
    v49 = (v46 + v43);
    *v49 = v56;
    v49[1] = v37;
    (*(v40 + 32))(v46 + v44, v69, v71);
    v50 = v46 + v45;
    v51 = v65;
    *v50 = v65;
    *(v50 + 8) = v64 & 1;
    swift_retain_n();

    v52 = v48;
    v53 = v51;
    sub_1CF7AAF88("listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)", 77, 2, 2, sub_1CF8FCFB8, v59, sub_1CF8FCFF0, v46);

    return sub_1CEFD5338(v70, type metadata accessor for VFSItem);
  }

  sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v29 = sub_1CF9E5928();
  v30 = FPItemNotFoundErrorAtURL();

  if (!v30)
  {
    v60(0, MEMORY[0x1E69E7CC0], 0);

LABEL_8:
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v32 = v30;
  if (!Strong)
  {
    v55 = FPDomainUnavailableError();
    v60(0, MEMORY[0x1E69E7CC0], v55);

    goto LABEL_8;
  }

  v33 = swift_allocObject();
  *(v33 + 2) = sub_1CF902ECC;
  *(v33 + 3) = v21;
  v34 = MEMORY[0x1E69E7CC0];
  *(v33 + 4) = 0;
  *(v33 + 5) = v34;

  sub_1CF915D74(v32, 0, sub_1CF8FCFB4, v33);
}

void sub_1CF8B2048(void *a1, uint64_t a2, _BYTE *a3, char *a4, void (*a5)(uint64_t a1), void *a6, char *a7, void *a8, unsigned __int8 a9)
{
  v239 = a2;
  v226 = a8;
  v231 = a7;
  v235 = a5;
  v236 = a6;
  v238 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v217 = &v210 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v218 = *(v14 - 8);
  v15 = *(v218 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v221 = &v210 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v219 = &v210 - v19;
  v220 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v224 = &v210 - v21;
  v22 = sub_1CF9E5A58();
  v227 = *(v22 - 8);
  v228 = v22;
  v23 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v225 = v24;
  v230 = &v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E6118();
  v233 = *(v25 - 8);
  v234 = v25;
  v26 = *(v233 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v222 = &v210 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v210 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v237 = __swift_project_boxed_opaque_existential_1(a1, v34);
  v229 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v223 = v29;
  v232 = v33;
  if (Strong && (v37 = Strong, v38 = [Strong indexer], v37, v38))
  {
    v39 = [v38 needsAuthentication];

    if (v39)
    {
      v40 = 25;
    }

    else
    {
      v40 = 17;
    }
  }

  else
  {
    v40 = 17;
  }

  v41 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v42 = type metadata accessor for VFSItem(0);
  v43 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v44 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v45 = v238;
  v46 = v34;
  v47 = v239;
  v48 = sub_1CF76BB00(v238, v40, 0, v41, v237, v42, v46, v43, &off_1F4BF8588, v44, v35);

  v49 = [v48 providerItemIdentifier];
  if (!v49)
  {
    v59 = v48;
    v60 = fpfs_current_or_default_log();
    v61 = v232;
    sub_1CF9E6128();
    v62 = sub_1CF9E6108();
    v63 = sub_1CF9E7298();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1CEFC7000, v62, v63, "listRemoteVersions: item doesn't have a providerItemIdentifier, no versions", v64, 2u);
      MEMORY[0x1D386CDC0](v64, -1, -1);
    }

    (*(v233 + 8))(v61, v234);
    (v235)(0, MEMORY[0x1E69E7CC0], 0);
    goto LABEL_13;
  }

  v50 = v49;
  v51 = a1[3];
  v52 = a1[4];
  v53 = __swift_project_boxed_opaque_existential_1(a1, v51);
  v54 = *(v47 + 16);
  v55 = v54[2];
  v56 = v45[8];
  v246 = *v45;
  v247 = v56;

  v57 = v53;
  v58 = v240;
  sub_1CF68DDB0(&v246, v57, v51, v52, v248);
  if (v58)
  {

    return;
  }

  v237 = v48;

  memcpy(v244, v248, sizeof(v244));
  memcpy(v245, v248, sizeof(v245));
  if (sub_1CF08B99C(v245) == 1)
  {
    v65 = sub_1CF9E5928();
    v66 = FPItemNotFoundErrorAtURL();

    (v235)(0, MEMORY[0x1E69E7CC0], v66);
    return;
  }

  v240 = 0;
  LODWORD(v232) = a9;
  if (LOBYTE(v245[1]) == 255 || !v245[31] || v245[24] >> 60 == 11 || LOBYTE(v245[43]))
  {
    v105 = swift_allocObject();
    v106 = v236;
    v105[2] = v235;
    v105[3] = v106;
    v107 = v237;
    v105[4] = v237;
    v108 = *(v54[5] + 16);
    type metadata accessor for FPFileTree();
    v239 = swift_dynamicCastClassUnconditional();
    v109 = *&v229[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
    v235 = v108;
    if (v109)
    {
      v54 = *(v109 + 16);

      v110 = v107;

      v75 = objc_sync_enter(v111);
      if (v75)
      {
LABEL_66:
        MEMORY[0x1EEE9AC00](v75);
        v209 = v54;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v208, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v112 = *(v54 + qword_1EDEADB30);
      v113 = v112;
      v114 = objc_sync_exit(v54);
      if (v114)
      {
        MEMORY[0x1EEE9AC00](v114);
        v209 = v54;
        goto LABEL_68;
      }

      v238 = v112;
    }

    else
    {

      v115 = v107;

      v238 = 0;
    }

    v116 = v227;
    v117 = v228;
    (*(v227 + 16))(v230, v231, v228);
    v118 = (*(v116 + 80) + 40) & ~*(v116 + 80);
    v119 = v118 + v225;
    v120 = swift_allocObject();
    *(v120 + 2) = sub_1CF8FD12C;
    *(v120 + 3) = v105;
    v122 = v229;
    v121 = v230;
    *(v120 + 4) = v229;
    (*(v116 + 32))(&v120[v118], v121, v117);
    v120[v119] = v232 & 1;
    v123 = v122;

    v59 = v238;
    sub_1CF2D3200(v50, v226, v238, sub_1CF8FD164, v120);
    sub_1CEFCCC44(v244, &unk_1EC4BFC20, &unk_1CFA0A290);

LABEL_13:

    return;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
  v216 = swift_allocBox();
  v69 = v68;
  v70 = *(v67 + 48);
  v71 = *(v227 + 16);
  v71(v68, v231, v228);
  v72 = v226;
  *(v69 + v70) = v226;
  v73 = *v45;
  LOBYTE(v69) = v45[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  v74 = swift_allocObject();
  *(v74 + 32) = v73;
  v214 = v74 + 32;
  v215 = v74;
  *(v74 + 40) = v69;
  *(v74 + 41) = 0;
  *(v74 + 16) = v73;
  *(v74 + 24) = v69;
  *(v74 + 25) = 0;
  v211 = v72;
  v75 = objc_sync_enter(v54);
  if (v75)
  {
    goto LABEL_66;
  }

  v213 = *(v54 + qword_1EDEADAA8);
  v226 = v54;
  v76 = objc_sync_exit(v54);
  if (v76)
  {
    MEMORY[0x1EEE9AC00](v76);
    v209 = v226;
LABEL_68:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v208, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v238 = (v216 | 0xA000000000000002);
  v212 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v71(v230, v231, v228);
  v77 = v227;
  v78 = (*(v227 + 80) + 40) & ~*(v227 + 80);
  v79 = (v225 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v231 = ((v80 + 15) & 0xFFFFFFFFFFFFFFF8);
  v225 = (v80 + 31) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v236;
  *(v81 + 16) = v235;
  *(v81 + 24) = v82;
  v84 = v229;
  v83 = v230;
  *(v81 + 32) = v229;
  (*(v77 + 32))(v81 + v78, v83, v228);
  v85 = v211;
  *(v81 + v79) = v211;
  *(v81 + v80) = v50;
  v86 = &v231[v81];
  *v86 = v239;
  v86[8] = v232 & 1;
  v235 = v81;
  v87 = v237;
  *(v81 + v225) = v237;
  v88 = v85;

  v89 = v84;
  v236 = v50;

  v232 = v87;
  v90 = fpfs_current_or_default_log();
  v91 = v222;
  sub_1CF9E6128();
  swift_retain_n();
  v92 = v215;

  v93 = sub_1CF9E6108();
  v94 = sub_1CF9E7298();
  if (os_log_type_enabled(v93, v94))
  {
    LODWORD(v239) = v94;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v241[0] = v96;
    *v95 = 136315394;
    v97 = swift_beginAccess();
    v99 = *(v92 + 32);
    v100 = *(v92 + 40);
    if (*(v92 + 41))
    {
      v101 = v99;
      v102 = NSFileProviderItemIdentifier.description.getter();
      v104 = v103;
      sub_1CEFD0994(v99, v100, 1);
    }

    else
    {
      v242 = *(v92 + 32);
      v243 = v100;
      v102 = VFSItemID.description.getter(v97, v98);
      v104 = v126;
    }

    v127 = sub_1CEFD0DF0(v102, v104, v241);

    *(v95 + 4) = v127;
    *(v95 + 12) = 2080;
    v128 = sub_1CEFD11AC(v238);
    v130 = v129;

    v131 = sub_1CEFD0DF0(v128, v130, v241);

    *(v95 + 14) = v131;
    _os_log_impl(&dword_1CEFC7000, v93, v239, "Request to materialize content of itemID %s reason %s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v96, -1, -1);
    MEMORY[0x1D386CDC0](v95, -1, -1);

    v124 = *(v233 + 8);
    v125 = v222;
  }

  else
  {

    v124 = *(v233 + 8);
    v125 = v91;
  }

  v228 = v124;
  v124(v125, v234);
  v132 = v217;
  sub_1CEFCCBDC(v226 + qword_1EDEBBC18, v217, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v133 = type metadata accessor for TelemetrySignposter(0);
  v134 = (*(*(v133 - 8) + 48))(v132, 1, v133);
  v135 = v224;
  if (v134 == 1)
  {
    sub_1CEFCCC44(v132, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v136 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v224);
    sub_1CEFD5338(v132, type metadata accessor for TelemetrySignposter);
    v136 = 0;
  }

  v137 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v137 - 8) + 56))(v135, v136, 1, v137);
  v138 = v219;
  sub_1CEFCCBDC(v135, v219, qword_1EC4C1588, &unk_1CFA0A260);
  v139 = *(v218 + 80);
  v140 = (v139 + 16) & ~v139;
  v141 = v220;
  v142 = (v220 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  v239 = v143;
  sub_1CEFE55D0(v138, v143 + v140, qword_1EC4C1588, &unk_1CFA0A260);
  v144 = (v143 + v142);
  v145 = v235;
  *v144 = sub_1CF8FD168;
  v144[1] = v145;
  v146 = v221;
  sub_1CEFCCBDC(v135, v221, qword_1EC4C1588, &unk_1CFA0A260);
  v147 = (v139 + 24) & ~v139;
  v231 = ((v147 + v141 + 7) & 0xFFFFFFFFFFFFFFF8);
  v148 = (v147 + v141 + 31) & 0xFFFFFFFFFFFFFFF8;
  v237 = ((v148 + 15) & 0xFFFFFFFFFFFFFFF8);
  v149 = (v148 + 31) & 0xFFFFFFFFFFFFFFF8;
  v150 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  *(v151 + 16) = v238;
  sub_1CEFE55D0(v146, v151 + v147, qword_1EC4C1588, &unk_1CFA0A260);
  v152 = &v231[v151];
  *v152 = sub_1CF8FD168;
  *(v152 + 1) = v235;
  v153 = v213;
  v152[16] = v213;
  v154 = v226;
  *(v151 + v148) = v226;
  v155 = v154;
  v156 = &v237[v151];
  v157 = v215;
  *v156 = v215;
  v156[8] = 0;
  *(v151 + v149) = 2;
  v158 = v212;
  *(v151 + v150) = v212;
  v159 = v151 + ((v150 + 15) & 0xFFFFFFFFFFFFFFF8);
  v160 = v239;
  *v159 = sub_1CF903314;
  *(v159 + 8) = v160;
  *(v159 + 16) = 1;
  if (v153)
  {
    v161 = 2;
  }

  else
  {
    v161 = 1;
  }

  LODWORD(v227) = v161;
  v162 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v231 = v158;

  v163 = [v162 init];
  v164 = swift_allocObject();
  *(v164 + 2) = sub_1CF903318;
  *(v164 + 3) = v151;
  v237 = v164;
  *(v164 + 4) = v238;
  swift_retain_n();
  v229 = v151;
  swift_retain_n();
  v165 = fpfs_current_or_default_log();
  v166 = v223;
  sub_1CF9E6128();
  swift_retain_n();

  v167 = sub_1CF9E6108();
  v168 = sub_1CF9E7298();
  v169 = os_log_type_enabled(v167, v168);
  v230 = v163;
  if (v169)
  {
    v170 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v249 = v225;
    *v170 = 136315906;
    v171 = swift_beginAccess();
    v173 = *(v157 + 32);
    v174 = *(v157 + 40);
    if (*(v157 + 41))
    {
      v175 = v173;
      v176 = NSFileProviderItemIdentifier.description.getter();
      v178 = v177;
      sub_1CEFD0994(v173, v174, 1);
    }

    else
    {
      v242 = *(v157 + 32);
      v243 = v174;
      v176 = VFSItemID.description.getter(v171, v172);
      v178 = v179;
    }

    v180 = sub_1CEFD0DF0(v176, v178, &v249);

    *(v170 + 4) = v180;
    *(v170 + 12) = 2080;
    if (v213)
    {
      v181 = 0xD000000000000010;
    }

    else
    {
      v181 = 0x74616761706F7270;
    }

    if (v213)
    {
      v182 = 0x80000001CFA2C3C0;
    }

    else
    {
      v182 = 0xED000053466F5465;
    }

    v183 = sub_1CEFD0DF0(v181, v182, &v249);

    *(v170 + 14) = v183;
    *(v170 + 22) = 2080;
    v184 = sub_1CEFD11AC(v238);
    v186 = v185;

    v187 = sub_1CEFD0DF0(v184, v186, &v249);

    *(v170 + 24) = v187;
    *(v170 + 32) = 2048;
    *(v170 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v167, v168, "Lookup itemID %s with behavior %s request %s iteration %ld", v170, 0x2Au);
    v188 = v225;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v188, -1, -1);
    MEMORY[0x1D386CDC0](v170, -1, -1);

    v228(v223, v234);
    v155 = v226;
  }

  else
  {

    v228(v166, v234);
  }

  swift_beginAccess();
  v189 = *(v157 + 32);
  v190 = *(v157 + 40);
  if ((*(v157 + 41) & 1) == 0)
  {
    if (!v189 && v190 == 2)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  v191 = qword_1EDEA34B0;
  v192 = v189;
  if (v191 != -1)
  {
    swift_once();
  }

  v193 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v195 = v194;
  if (v193 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v195 != v196)
  {
    v198 = sub_1CF9E8048();

    sub_1CEFD0994(v189, v190, 1);
    if (v198)
    {
      goto LABEL_60;
    }

LABEL_62:
    v199 = swift_allocObject();
    v234 = v199;
    v200 = v238;
    *(v199 + 16) = v238;
    v201 = v199 | 0x7000000000000004;
    v202 = swift_allocObject();
    v203 = v237;
    *(v202 + 16) = sub_1CF796A0C;
    *(v202 + 24) = v203;
    *(v202 + 32) = v155;
    *(v202 + 40) = v227;
    v204 = v215;
    *(v202 + 48) = v200;
    *(v202 + 56) = v204;
    *(v202 + 64) = 0;
    v197 = v230;
    *(v202 + 72) = v230;
    *(v202 + 80) = 0;
    v205 = swift_allocObject();
    *(v205 + 16) = v204;
    *(v205 + 24) = v155;
    *(v205 + 32) = 0;
    *(v205 + 40) = sub_1CF796A90;
    *(v205 + 48) = v202;
    *(v205 + 56) = v201;
    v206 = swift_allocObject();
    *(v206 + 16) = sub_1CF796A90;
    *(v206 + 24) = v202;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v207 = v197;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v206, sub_1CF796A9C, v205);

    goto LABEL_63;
  }

  sub_1CEFD0994(v189, v190, 1);
LABEL_60:
  sub_1CF90CAC8(v238, sub_1CF796A0C, v237);

  v197 = v230;
LABEL_63:

  sub_1CEFCCC44(v244, &unk_1EC4BFC20, &unk_1CFA0A290);

  sub_1CEFCCC44(v224, qword_1EC4C1588, &unk_1CFA0A260);
}

void sub_1CF8B36B8(uint64_t a1, void (*a2)(void, void, id), uint64_t a3, char *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, char a9, void *a10)
{
  v42 = a8;
  v46 = a7;
  v47 = a6;
  v44 = a5;
  v45 = sub_1CF9E5A58();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v40 - v18);
  sub_1CEFCCBDC(a1, &v40 - v18, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = *v19;
    a2(0, MEMORY[0x1E69E7CC0], v20);
  }

  else
  {
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = a10;
    v23 = *(*(*(v42 + 16) + 40) + 16);
    type metadata accessor for FPFileTree();
    v24 = swift_dynamicCastClassUnconditional();
    v25 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
    v42 = v24;
    v40 = v23;
    if (v25)
    {
      v26 = *(v25 + 16);

      v27 = a10;

      v29 = objc_sync_enter(v28);
      if (v29)
      {
        MEMORY[0x1EEE9AC00](v29);
        *(&v40 - 2) = v26;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v30 = *&v26[qword_1EDEADB30];
      v31 = v30;
      v32 = objc_sync_exit(v26);
      if (v32)
      {
        MEMORY[0x1EEE9AC00](v32);
        *(&v40 - 2) = v26;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v41 = v30;
    }

    else
    {

      v33 = a10;

      v41 = 0;
    }

    v34 = v43;
    v35 = v45;
    (*(v14 + 16))(v43, v44, v45);
    v36 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = sub_1CF902D10;
    *(v37 + 3) = v22;
    *(v37 + 4) = a4;
    (*(v14 + 32))(&v37[v36], v34, v35);
    v37[v36 + v15] = a9 & 1;

    v38 = a4;
    v39 = v41;
    sub_1CF2D3200(v46, v47, v41, sub_1CF9033A4, v37);

    sub_1CEFCCC44(v19, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

void sub_1CF8B3D60(const char *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E6118();
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (faccessat(-2, a1, 4, 32))
  {
    v44 = a3;
    v45 = v3;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = *(v8 + 16);
    v43[1] = a2;
    v17(v11, a2, v7);
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();
    v20 = os_log_type_enabled(v18, v19);
    v43[2] = v7;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      v47[0] = v43[0];
      *v21 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v22 = sub_1CF9E7F98();
      v23 = v7;
      v25 = v24;
      (*(v8 + 8))(v11, v23);
      v26 = sub_1CEFD0DF0(v22, v25, v47);

      *(v21 + 4) = v26;
      *(v21 + 12) = 1024;
      *(v21 + 14) = MEMORY[0x1D38683F0](v27);
      _os_log_impl(&dword_1CEFC7000, v18, v19, "thumbnail url not accessible %s: %{darwin.errno}d", v21, 0x12u);
      v28 = v43[0];
      __swift_destroy_boxed_opaque_existential_1(v43[0]);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    (*(v12 + 8))(v15, v46);
    v29 = [objc_allocWithZone(FPDTapToRadarManager) init];
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5D8A0);
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
    v30 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v30);

    v31 = MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA5D8C0);
    v48 = MEMORY[0x1D38683F0](v31);
    v32 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v32);

    v33 = sub_1CF9E6888();
    v34 = sub_1CF9E6888();

    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v35 = sub_1CF9E6D28();
    v36 = sub_1CF9E6D28();
    v37 = sub_1CF9E6888();
    v38 = *(v44 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
    v39 = [v38 pathComponents];
    v40 = sub_1CF9E6D48();

    v41 = *(v40 + 16);

    if (v41 >= 2)
    {
      v42 = [v38 stringByDeletingLastPathComponent];
      if (!v42)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v42 = sub_1CF9E6888();
      }

      v38 = v42;
    }

    [v29 requestTapToRadarWithTitle:v33 description:v34 keywords:v35 attachments:v36 displayReason:v37 providerID:v38];
  }
}

uint64_t FPDDomainFPFSBackend.fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, double a7, double a8)
{
  v35 = a6;
  v33 = a2;
  v34 = a5;
  v37 = a3;
  v38 = a4;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v16, v15, v11);
  v22 = (v21 + v17);
  v24 = v34;
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  v26 = v36;
  v25 = v37;
  *(v21 + v18) = v36;
  *(v21 + v19) = v33;
  v27 = (v21 + v20);
  *v27 = a7;
  v27[1] = a8;
  v28 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  v29 = v38;
  *v28 = v25;
  v28[1] = v29;
  v30 = v23;
  swift_retain_n();
  v31 = v26;

  sub_1CF8EB0F8("fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)", 82, 2, sub_1CF8F3598, v21, v31, v24, v30);
}

void sub_1CF8B44F4(uint64_t a1, uint64_t a2, void (*a3)(id), void (*a4)(id), void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v56 = a8;
  v57 = a6;
  v54 = a7;
  v55 = a5;
  v59 = a4;
  v61 = a3;
  v60 = sub_1CF9E5A58();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v53 = v16;
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for VFSItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v28 = a1;
  sub_1CF010CE0(a2, 1, 2, 0, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v29 = sub_1CF9E5928();
    v30 = FPItemNotFoundErrorAtURL();

    v61(v30);
  }

  else
  {
    v48 = type metadata accessor for VFSItem;
    v31 = v27;
    v50 = v27;
    sub_1CEFDA0C4(v20, v27, type metadata accessor for VFSItem);
    v51 = *(v28 + 16);
    v52 = v28;
    v32 = swift_allocObject();
    v49 = v32;
    v33 = v59;
    *(v32 + 16) = v61;
    *(v32 + 24) = v33;
    sub_1CEFDA34C(v31, v24, type metadata accessor for VFSItem);
    (*(v14 + 16))(v58, a2, v60);
    v34 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v35 = (v23 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (*(v14 + 80) + v36 + 16) & ~*(v14 + 80);
    v53 = (v53 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v52;
    sub_1CEFDA0C4(v24, v39 + v34, v48);
    v40 = v55;
    *(v39 + v35) = v55;
    v41 = (v39 + v36);
    v42 = v60;
    *v41 = v61;
    v41[1] = v33;
    (*(v14 + 32))(v39 + v37, v58, v42);
    v43 = v56;
    v44 = v54;
    *(v39 + v53) = v57;
    v45 = (v39 + v38);
    *v45 = a9;
    v45[1] = a10;
    v46 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v46 = v44;
    v46[1] = v43;
    swift_retain_n();

    v47 = v40;

    sub_1CF7AAF88("fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)", 82, 2, 2, sub_1CF90324C, v49, sub_1CF8FCD38, v39);

    sub_1CEFD5338(v50, type metadata accessor for VFSItem);
  }
}

void sub_1CF8B496C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v90 = a6;
  v85 = a8;
  v87 = a7;
  v88 = a3;
  v89 = a5;
  v17 = sub_1CF9E63D8();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v76 - v24;
  v26 = a1[3];
  v25 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v29 = Strong, v30 = [Strong indexer], v29, v30) && (v31 = objc_msgSend(v30, sel_needsAuthentication), v30, v31))
  {
    v32 = 9;
  }

  else
  {
    v32 = 1;
  }

  v33 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v34 = type metadata accessor for VFSItem(0);
  v35 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v36 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v37 = sub_1CF76BB00(v88, v32, 0, v33, v27, v34, v26, v35, &off_1F4BF8588, v36, v25);

  v38 = [v37 formerItemID];

  if (v38)
  {
    v39 = [v38 identifier];

    v40 = *(*(*(a2 + 16) + 40) + 16);
    type metadata accessor for FPFileTree();
    v41 = swift_dynamicCastClassUnconditional();
    v42 = swift_allocObject();
    v42[2] = a4;
    v42[3] = a11;
    v87 = v42;
    v42[4] = a12;
    v43 = swift_unknownObjectWeakLoadStrong();
    v88 = v40;

    v44 = a4;

    if (v43)
    {
      v45 = [v43 session];
    }

    else
    {
      v45 = 0;
    }

    v48 = type metadata accessor for FPFileTreeLifetimeExtender();
    v49 = objc_allocWithZone(v48);
    *&v49[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
    *&v49[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = v39;
    v50 = objc_opt_self();
    v51 = v39;
    v52 = [v50 requestForSelf];
    *&v49[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v52;
    v53 = [objc_opt_self() defaultStore];
    if ([v53 hasUpcallExecutionTimeLimits])
    {
      goto LABEL_15;
    }

    if (qword_1EC4BCCF0 != -1)
    {
      swift_once();
    }

    v54 = -1.0;
    if (byte_1EC4BF020 == 1)
    {
LABEL_15:
      [v53 upcallExecutionTimeLimitBase];
      v54 = v55;
    }

    *&v49[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v54;
    v98.receiver = v49;
    v98.super_class = v48;
    v56 = objc_msgSendSuper2(&v98, sel_init);
    v57 = v51;

    if (v45)
    {
      [v45 registerLifetimeExtensionForObject_];
    }

    v58 = *(v41 + 160);
    v78 = *(v41 + 168);
    v81 = v58;
    v76 = sub_1CF9E6448();
    v77 = *(v76 - 8);
    (*(v77 + 56))(v91, 1, 1, v76);
    v59 = swift_allocObject();
    v61 = v89;
    v60 = v90;
    *(v59 + 16) = v89;
    *(v59 + 24) = v60;
    v62 = swift_allocObject();
    v63 = v87;
    *(v62 + 16) = sub_1CF8FCE8C;
    *(v62 + 24) = v63;
    *(v62 + 32) = v41;
    *(v62 + 40) = v57;
    *(v62 + 48) = v85;
    *(v62 + 56) = a9;
    *(v62 + 64) = a10;
    *(v62 + 72) = v45;
    *(v62 + 80) = v56;
    *(v62 + 88) = v61;
    *(v62 + 96) = v60;
    v64 = swift_allocObject();
    v64[2] = sub_1CF90324C;
    v64[3] = v59;
    v65 = v78;
    v79 = v64;
    v64[4] = v78;
    swift_retain_n();

    v66 = v57;
    v67 = v77;
    v80 = v66;
    v68 = v76;

    v90 = v45;
    swift_unknownObjectRetain();
    v89 = v56;

    v69 = fpfs_current_log();
    v85 = *(v65 + 16);
    v70 = v86;
    sub_1CEFCCBDC(v91, v86, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v67 + 48))(v70, 1, v68) == 1)
    {
      sub_1CEFCCC44(v70, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v86) = 0;
    }

    else
    {
      v71 = v82;
      sub_1CF9E6438();
      (*(v67 + 8))(v70, v68);
      LODWORD(v86) = sub_1CF9E63C8();
      (*(v83 + 8))(v71, v84);
    }

    v72 = swift_allocObject();
    v72[2] = v69;
    v72[3] = sub_1CF902DA0;
    v72[4] = v62;
    v96 = sub_1CF2BA17C;
    v97 = v72;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_1CEFCA444;
    v95 = &block_descriptor_3570;
    v73 = _Block_copy(&aBlock);
    v74 = v69;

    v96 = sub_1CF2BA180;
    v97 = v79;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_1CEFCA444;
    v95 = &block_descriptor_3573;
    v75 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v85, v81, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v86, v73, v75);

    _Block_release(v75);
    _Block_release(v73);
    swift_unknownObjectRelease();

    sub_1CEFCCC44(v91, &unk_1EC4BE370, qword_1CFA01B30);
  }

  else
  {
    v46 = sub_1CF9E5928();
    v47 = FPItemNotFoundErrorAtURL();

    (v89)(v47);
  }
}

uint64_t sub_1CF8B5288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a11)
{
  v40 = a1;
  v41 = a2;
  v42 = a10;
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v34 = a4;
    v35 = a11;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = a8;
    v33 = a9;
    v23 = a3;
    v24 = [v23 url];
    sub_1CF9E59D8();

    v25 = sub_1CF9E59E8();
    v26 = *(v18 + 8);
    v26(v22, v17);
    v27 = [v23 url];
    sub_1CF9E59D8();

    MEMORY[0x1EEE9AC00](v28);
    v29 = v33;
    *(&v32 - 2) = v22;
    *(&v32 - 1) = v29;
    sub_1CF9E59B8();
    v26(v22, v17);
    if (v25)
    {
      v30 = [v23 url];
      sub_1CF9E59D8();

      sub_1CF9E59C8();
      v26(v22, v17);
    }

    else
    {
    }

    a7 = v38;
    a8 = v39;
    a5 = v36;
    a6 = v37;
    a4 = v34;
  }

  return v42(v40, v41, a3, a4, a5, a6, a7, a8, v20);
}

void sub_1CF8B57E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v14 = sub_1CF9E6888();
  }

  else
  {
    v14 = 0;
  }

  if (a7 >> 60 == 15)
  {
    v15 = 0;
    if (a8)
    {
LABEL_6:
      v16 = sub_1CF9E57E8();
      goto LABEL_9;
    }
  }

  else
  {
    v15 = sub_1CF9E5B48();
    if (a8)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  v17 = v16;
  (*(a9 + 16))(a9, a1, a2, a3, v14, v15);
}

uint64_t FPDDomainFPFSBackend.fetchOperationServiceOrEndpoint(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F359C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;
  v11 = a1;

  sub_1CEFD4024("fetchOperationServiceOrEndpoint(with:completionHandler:)", 56, 2, sub_1CF903284, v9, sub_1CEFD000C, v8);
}

uint64_t sub_1CF8B59FC(uint64_t a1, id a2, uint64_t (*a3)(id, void), uint64_t a4, void *a5)
{
  v10 = [a2 identifier];
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  if (v11 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v13 == v14)
  {

    return a3(a2, 0);
  }

  v16 = sub_1CF9E8048();

  if (v16)
  {
    return a3(a2, 0);
  }

  v17 = [a2 identifier];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = sub_1CF4C4044();

  if ((v18 & 1) == 0)
  {

    return a3(a2, 0);
  }

  v40 = a5;
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = sub_1CF025150(0x80007uLL, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x1D3868C10](v21, v23, v25, v27);
  v30 = v29;

  VFSItemID.init(parsing:)(v28, v30, &v41);

  v31 = v42;
  if (v42 == 255)
  {
    return a3(a2, 0);
  }

  v32 = v41;
  v33 = *(a1 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v32;
  *(v35 + 32) = v31;
  *(v35 + 40) = a3;
  *(v35 + 48) = a4;
  *(v35 + 56) = v40;
  *(v35 + 64) = a2;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1CEFF9D98;
  *(v36 + 24) = v34;
  swift_retain_n();

  v37 = v40;
  v38 = a2;

  sub_1CF7AAF88("resolveProviderItemID(_:completionHandler:)", 43, 2, 2, sub_1CF8FC294, v36, sub_1CF8FCCDC, v35);
}

void sub_1CF8B5D34(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(id, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(*(a2 + 16) + 16);
  v26 = a3;
  v27 = a4;
  v18 = *(*v17 + 160);

  v18(&v28, &v26, v16, v15, v14);

  if (!v9)
  {
    v19 = a5;
    v20 = v28;
    if (v28)
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a7 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID) itemIdentifier:v28];
      a5(v21, 0);
    }

    else
    {
      v22 = [a8 identifier];
      v23 = FPItemNotFoundError();

      if (v23)
      {
        v19(v23, 1);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t FPDDomainFPFSBackend.fetchServices(for:allowRestrictedSources:request:completionHandler:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8F35CC;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = sub_1CF8F35CC;
  v13[4] = v11;
  v13[5] = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CEFF9D98;
  *(v14 + 24) = v12;
  v15 = v5;
  swift_retain_n();
  v16 = v15;

  v17 = a3;
  v18 = a1;

  sub_1CEFD4024("resolveProviderItemID(_:completionHandler:)", 43, 2, sub_1CF796A8C, v14, sub_1CF8F35D0, v13);
}

void sub_1CF8B6048(void *a1, char a2, uint64_t a3, void (*a4)(void, void, id), uint64_t a5, char a6, uint64_t a7)
{
  if (a2)
  {
    a4(0, 0, a1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v13 = Strong, v14 = [Strong extensionBackend], v13, v14))
    {
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF8B61D8;
      aBlock[3] = &block_descriptor_3541;
      v15 = _Block_copy(aBlock);

      [v14 fetchServicesForItemID:a1 allowRestrictedSources:a6 & 1 request:a7 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = FPDomainUnavailableError();
      a4(0, 0, v16);
    }
  }
}

uint64_t sub_1CF8B61D8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1CEFD57E0(0, &qword_1EDEA35E0, 0x1E69674C8);
    v5 = sub_1CF9E6D48();
  }

  v9 = a2;
  v10 = a4;
  v8(a2, v5, a4);
}

void sub_1CF8B64A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  if (a2)
  {
    sub_1CEFD57E0(0, a5, a6);
    v8 = sub_1CF9E6D28();
  }

  if (a3)
  {
    v10 = sub_1CF9E57E8();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, a1, v8);
}

uint64_t FPDDomainFPFSBackend.fetchVendorEndpoint(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;
  v11 = a1;

  sub_1CEFD4024("fetchVendorEndpoint(with:completionHandler:)", 44, 2, sub_1CF903280, v9, sub_1CF8F35DC, v8);
}

void sub_1CF8B6678(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong extensionBackend], v9, v10))
  {
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF9A6C;
    aBlock[3] = &block_descriptor_3528;
    v11 = _Block_copy(aBlock);

    [v10 fetchVendorEndpointWithRequest:a5 completionHandler:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = FPDomainUnavailableError();
    a3(0, v12);
  }
}

Swift::Void __swiftcall FPDDomainFPFSBackend.didChangeNeedsAuthentification(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = v1;
    sub_1CEFD4024("didChangeNeedsAuthentification(_:)", 34, 2, nullsub_1, 0, sub_1CF8F35E8, v3);
  }

  else
  {
    type metadata accessor for NSFileProviderError(0);
    aBlock[6] = -1000;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v5 = sub_1CF9E57E8();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_494;
    v6 = _Block_copy(aBlock);
    [v2 signalErrorResolved:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1CF8B6B30()
{
  v0 = sub_1CF0878B4();
  v1 = v0[2];
  if (v1)
  {
    v2 = v0 + 5;
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      swift_unknownObjectRetain();
      v5 = objc_autoreleasePoolPush();
      ObjectType = swift_getObjectType();
      (*(v4 + 32))(ObjectType, v4);
      objc_autoreleasePoolPop(v5);
      swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}