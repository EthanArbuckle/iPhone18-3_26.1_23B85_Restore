uint64_t sub_1CF4FE730(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1360, &qword_1CFA08B48);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[4];
  v14[0] = v2[3];
  v21 = *(v2 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF50D090();

  sub_1CF9E82A8();
  v16 = v8;
  v17 = v9;
  v18 = v2[2];
  v19 = v14[0];
  v20 = v10;
  v22 = 0;
  sub_1CF1FE5D4();
  v12 = v14[1];
  sub_1CF9E7F08();

  if (!v12)
  {
    LOBYTE(v16) = v21;
    v22 = 1;
    sub_1CF50D138();
    sub_1CF9E7F08();
  }

  return (*(v15 + 8))(v7, v4);
}

uint64_t sub_1CF4FE904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1340, &qword_1CFA08B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF50D090();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1CF1FE628();
  sub_1CF9E7D88();
  v11 = v21;
  v12 = v23;
  v13 = v25;
  v18 = v24;
  v19 = v22;
  v20 = 1;
  sub_1CF50D0E4();
  sub_1CF9E7D88();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v18;
  v16 = v19;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CF4FEB14()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_1CF4FEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CF4FEC1C(uint64_t a1)
{
  v2 = sub_1CF50D090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4FEC58(uint64_t a1)
{
  v2 = sub_1CF50D090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF4FECC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v310 = a3;
  v288 = a7;
  *&v300 = a5;
  *(&v300 + 1) = a6;
  LODWORD(v311) = a4;
  v308 = a2;
  v285 = a9;
  v332[5] = *MEMORY[0x1E69E9840];
  v12 = sub_1CF9E6938();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v280 = &v262 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v278 = *(v15 - 8);
  v279 = v15;
  v16 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v277 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v18 = *(*(v293 - 8) + 64);
  MEMORY[0x1EEE9AC00](v293);
  v281 = (&v262 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v286 = (&v262 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v290 = (&v262 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v289 = (&v262 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v299 = (&v262 - v27);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v28 = *(*(v294 - 8) + 64);
  MEMORY[0x1EEE9AC00](v294);
  v284 = &v262 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v283 = (&v262 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v292 = &v262 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v295 = &v262 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v262 - v38;
  v40 = sub_1CF9E5A58();
  v41 = *(v40 - 8);
  v304 = v40;
  v305 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v303 = &v262 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v298 = &v262 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v282 = &v262 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v291 = &v262 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v262 - v52;
  v54 = type metadata accessor for VFSItem(0);
  v306 = *(v54 - 8);
  v55 = v306[8];
  MEMORY[0x1EEE9AC00](v54);
  v287 = &v262 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v302 = (&v262 - v58);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  v59 = *(*(v297 - 1) + 64);
  MEMORY[0x1EEE9AC00](v297);
  v296 = &v262 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v301 = &v262 - v62;
  v63 = sub_1CF9E53C8();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v262 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = v54;
  v68 = a1 + *(v54 + 28);
  if (*(v68 + *(type metadata accessor for ItemMetadata() + 80)) != 1)
  {
    v273 = v67;
    v274 = v64;
    v275 = v63;
    v276 = a8;
    v69 = v308[2];
    v318 = v310;
    LOBYTE(v319) = v311;
    v327 = 0u;
    v328 = 0u;
    v325 = 0u;
    v326 = 0u;
    v323 = 0u;
    v324 = 0u;
    sub_1CEFDAA48(&v318, &v323, v332);
    v70 = v332[0];

    v71 = v309;
    sub_1CF263ADC(v70, 0, 2049, v53);
    if (v71)
    {
      goto LABEL_5;
    }

    v73 = v306[6];
    v308 = v306 + 6;
    v309 = v69;
    v272 = v73;
    if (v73(v53, 1, v307) == 1)
    {
      sub_1CEFCCC44(v53, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v74 = swift_allocObject();
      *(v74 + 16) = 2049;
      v75 = v74 | 0x7000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      v77 = v76;
      sub_1CF1B8150();
      v78 = swift_allocError();
      *v79 = v75;
      *&v323 = v70;
      BYTE8(v323) = 1;
      *(&v323 + 9) = v332[0];
      HIDWORD(v323) = *(v332 + 3);
      v324 = 0u;
      v325 = 0u;
      v326 = 0u;
      v327 = 0u;
      v328 = 0u;
      v329 = 0u;
      v330 = v78;
      sub_1CF2A8DE0(&v323);
      *v77 = v323;
      v80 = v324;
      v81 = v325;
      v82 = v327;
      *(v77 + 48) = v326;
      *(v77 + 64) = v82;
      *(v77 + 16) = v80;
      *(v77 + 32) = v81;
      v83 = v328;
      v84 = v329;
      v85 = v330;
      *(v77 + 128) = v331;
      *(v77 + 96) = v84;
      *(v77 + 112) = v85;
      *(v77 + 80) = v83;
      goto LABEL_3;
    }

    v86 = v53;
    v87 = v302;
    sub_1CEFE4D30(v86, v302, type metadata accessor for VFSItem);
    isEscapingClosureAtFileLocation = v309;
    v89 = objc_sync_enter(v309);
    if (v89)
    {
      goto LABEL_105;
    }

    v271 = 0;
    v90 = objc_sync_exit(isEscapingClosureAtFileLocation);
    if (v90)
    {
      MEMORY[0x1EEE9AC00](v90);
      v260 = isEscapingClosureAtFileLocation;
      goto LABEL_110;
    }

    sub_1CF25116C(v39);
    v92 = v304;
    v91 = v305;
    if ((*(v305 + 48))(v39, 1, v304) == 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BE310, qword_1CF9FCBE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      v94 = v93;
      sub_1CF1B8150();
      v95 = swift_allocError();
      *v96 = 0xB000000000000008;
      *&v323 = v70;
      BYTE8(v323) = 1;
      *(&v323 + 9) = v332[0];
      HIDWORD(v323) = *(v332 + 3);
      v324 = 0u;
      v325 = 0u;
      v326 = 0u;
      v327 = 0u;
      v328 = 0u;
      v329 = 0u;
      v330 = v95;
      sub_1CF2A8DE0(&v323);
      *v94 = v323;
      v97 = v324;
      v98 = v325;
      v99 = v327;
      *(v94 + 48) = v326;
      *(v94 + 64) = v99;
      *(v94 + 16) = v97;
      *(v94 + 32) = v98;
      v100 = v328;
      v101 = v329;
      v102 = v330;
      *(v94 + 128) = v331;
      *(v94 + 96) = v101;
      *(v94 + 112) = v102;
      *(v94 + 80) = v100;
      swift_willThrow();
      sub_1CEFE51CC(v87, type metadata accessor for VFSItem);
      goto LABEL_5;
    }

    v104 = v297;
    v103 = v298;
    v105 = *(v91 + 32);
    v268 = *(v297 + 12);
    v269 = v91 + 32;
    v270 = v105;
    v105(v298, v39, v92);
    v323 = v300;
    v332[0] = 47;
    v332[1] = 0xE100000000000000;
    v318 = 58;
    v319 = 0xE100000000000000;
    v260 = sub_1CEFE4E68();
    v261 = v260;
    *&v259 = MEMORY[0x1E69E6158];
    *(&v259 + 1) = v260;
    sub_1CF9E7668();
    v106 = v92;
    v107 = v87;
    v108 = v301;
    sub_1CF9E5958();

    v109 = *(v91 + 8);
    v305 = v91 + 8;
    v298 = v109;
    (v109)(v103, v106);
    sub_1CEFE4D30(v107, v108 + v268, type metadata accessor for VFSItem);
    v110 = v108;
    v111 = v309;
    v112 = v296;
    sub_1CEFCCBDC(v110, v296, &unk_1EC4BED00, &unk_1CFA006E0);
    v113 = *(v104 + 12);
    v270(v303, v112, v106);
    sub_1CEFE51CC(&v112[v113], type metadata accessor for VFSItem);
    sub_1CF9E5A18();
    v114 = qword_1EDEBBE70;
    swift_beginAccess();
    v115 = *&v114[v111];
    v116 = __CFADD__(v115, 1);
    v117 = v115 + 1;
    if (v116)
    {
      __break(1u);
    }

    else
    {
      *&v114[v111] = v117;
      v118 = objc_sync_enter(v111);
      if (v118)
      {
        MEMORY[0x1EEE9AC00](v118);
        v260 = v111;
        goto LABEL_108;
      }

      v296 = v114;
      v302 = *(v111 + 160);

      v119 = objc_sync_exit(v111);
      if (v119)
      {
        MEMORY[0x1EEE9AC00](v119);
        v260 = v111;
        goto LABEL_110;
      }

      v120 = type metadata accessor for VFSFileTree(0);
      Strong = swift_unknownObjectWeakLoadStrong();
      v122 = *(v111 + 288);
      v123 = fpfs_openflags(0x208000u);
      sub_1CF9E6978();
      v263 = v123;
      v124 = openat_s();

      v262 = v120;
      if (v124 < 0)
      {
        v153 = MEMORY[0x1D38683F0](v125);
        *&v325 = 0;
        v323 = 0u;
        v324 = 0u;
        BYTE8(v325) = 19;
        v147 = sub_1CF19BBE4(v153, &v323);
        sub_1CF1969CC(&v323);
        swift_willThrow();

        v271 = 0;
        v150 = v304;
        v151 = v295;
        goto LABEL_26;
      }

      v126 = v302;
      os_unfair_lock_lock(v302 + 14);
      v127 = *&v126[16]._os_unfair_lock_opaque;
      v128 = *&v126[18]._os_unfair_lock_opaque;
      LODWORD(v270) = LOBYTE(v126[22]._os_unfair_lock_opaque);
      LODWORD(v269) = BYTE1(v126[22]._os_unfair_lock_opaque);
      LODWORD(v268) = BYTE2(v126[22]._os_unfair_lock_opaque);

      v129 = *&v126[20]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v126 + 14);
      v265 = &v262;
      MEMORY[0x1EEE9AC00](v130);
      LODWORD(v297) = v124;
      *(&v262 - 10) = v120;
      *(&v262 - 18) = v124;
      *(&v262 - 8) = v126;
      *(&v262 - 7) = Strong;
      v267 = Strong;
      *(&v262 - 6) = v122;
      *(&v262 - 40) = 2;
      v259 = xmmword_1CFA08A20;
      LOBYTE(v260) = -1;
      v261 = 0;
      *&v325 = v127;
      *(&v325 + 1) = v128;
      *&v323 = MEMORY[0x1E69E9820];
      *(&v323 + 1) = 1107296256;
      *&v324 = sub_1CEFDB088;
      *(&v324 + 1) = &block_descriptor_174_0;
      v131 = _Block_copy(&v323);
      v266 = v128;

      v264 = v131;
      v318 = v131;
      v319 = v129;
      v320 = v270;
      v321 = v269;
      v322 = v268;
      sub_1CEFDB034();
      v132 = swift_allocError();
      *v133 = 6;
      *(v133 + 8) = 0u;
      *(v133 + 24) = 0u;
      *(v133 + 40) = 19;
      v134 = v299;
      *v299 = v132;
      swift_storeEnumTagMultiPayload();
      v135 = swift_allocObject();
      v135[2] = v134;
      v135[3] = sub_1CEFDB808;
      v135[4] = &v262 - 12;
      v136 = swift_allocObject();
      *(v136 + 16) = sub_1CEFDB37C;
      *(v136 + 24) = v135;
      *&v325 = sub_1CF1DBD5C;
      *(&v325 + 1) = v136;
      *&v323 = MEMORY[0x1E69E9820];
      *(&v323 + 1) = 1107296256;
      *&v324 = sub_1CEFDB270;
      *(&v324 + 1) = &block_descriptor_184;
      v137 = _Block_copy(&v323);

      v138 = fpfs_fgetfileattrs_detailed();
      _Block_release(v137);
      LOBYTE(v137) = swift_isEscapingClosureAtFileLocation();

      if ((v137 & 1) == 0)
      {
        if (v138)
        {
          swift_getErrorValue();
          v139 = v312;
          v140 = swift_allocError();
          *v141 = 6;
          *(v141 + 8) = 0u;
          *(v141 + 24) = 0u;
          *(v141 + 40) = 19;
          v142 = v138;
          v143 = sub_1CF199074(v140, v139);

          v144 = v289;
          *v289 = v143;
          swift_storeEnumTagMultiPayload();
          v145 = v144;
          v134 = v299;
          sub_1CEFDA9E0(v145, v299, &qword_1EC4BE000, &unk_1CFA006A0);
        }

        v146 = v290;
        sub_1CEFCCBDC(v134, v290, &qword_1EC4BE000, &unk_1CFA006A0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          v154 = v146;
          v155 = v134;
          v151 = v295;
          sub_1CEFE55D0(v154, v295, &unk_1EC4BE2F0, qword_1CFA04220);
          sub_1CEFCCC44(v155, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v264);

          v152 = v303;
          v111 = v309;
          goto LABEL_24;
        }

        *&v323 = *v146;
        v147 = v323;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v134, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v264);

        v148 = v147;
        LODWORD(v323) = sub_1CF9E52A8();
        sub_1CF196978();
        v149 = sub_1CF9E5658();

        v150 = v304;
        v111 = v309;
        v151 = v295;
        if (v149)
        {

          *v151 = xmmword_1CF9FD940;
          *(v151 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v152 = v303;
LABEL_24:
          close(v297);

          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        close(v297);
LABEL_26:
        v152 = v303;
        v156 = v147;
        LODWORD(v323) = sub_1CF9E5328();
        sub_1CF196978();
        v157 = sub_1CF9E5658();

        swift_unknownObjectRelease();

        if ((v157 & 1) == 0)
        {
          (v298)(v152, v150);
          sub_1CEFCCC44(v301, &unk_1EC4BED00, &unk_1CFA006E0);
          goto LABEL_5;
        }

        *v151 = xmmword_1CF9FD930;
        *(v151 + 16) = 2;
        swift_storeEnumTagMultiPayload();
LABEL_28:
        v158 = v292;
        sub_1CEFE55D0(v151, v292, &unk_1EC4BE2F0, qword_1CFA04220);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v160 = (v306 + 7);
        if (EnumCaseMultiPayload == 1)
        {
          sub_1CEFCCC44(v158, &unk_1EC4BE2F0, qword_1CFA04220);
          v161 = 1;
          v162 = v291;
        }

        else
        {
          v162 = v291;
          sub_1CEFE4D30(v158, v291, type metadata accessor for VFSItem);
          v161 = 0;
        }

        v163 = *v160;
        v164 = v307;
        (*v160)(v162, v161, 1, v307);
        if (v272(v162, 1, v164) != 1)
        {
          v167 = v287;
          sub_1CEFE4D30(v162, v287, type metadata accessor for VFSItem);
          v168 = *v167;
          v169 = *(v167 + 8);
          v170 = *(&v300 + 1);

          v171 = sub_1CF252CF4();
          *&v323 = v168;
          BYTE8(v323) = v169;
          *&v324 = v300;
          *(&v324 + 1) = v170;
          *&v325 = v310;
          BYTE8(v325) = v311;
          *&v326 = v171;
          *(&v326 + 1) = v172;
          *&v327 = 0;
          sub_1CF2B0E80(&v323);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
          swift_allocError();
          *v173 = v323;
          v174 = v325;
          v175 = v327;
          v176 = v324;
          *(v173 + 48) = v326;
          *(v173 + 64) = v175;
          *(v173 + 16) = v176;
          *(v173 + 32) = v174;
          v178 = v329;
          v177 = v330;
          v179 = v328;
          *(v173 + 128) = v331;
          *(v173 + 96) = v178;
          *(v173 + 112) = v177;
          *(v173 + 80) = v179;
          swift_willThrow();
          sub_1CEFE51CC(v167, type metadata accessor for VFSItem);
LABEL_38:
          v180 = v152;
LABEL_39:
          (v298)(v180, v304);
          sub_1CEFCCC44(v301, &unk_1EC4BED00, &unk_1CFA006E0);
          goto LABEL_5;
        }

        sub_1CEFCCC44(v162, &unk_1EC4BEC00, &unk_1CF9FCB60);
        isEscapingClosureAtFileLocation = *(v111 + 256);
        v89 = sub_1CF4D463C();
        if (v288 <= 1u)
        {
          v165 = v296;
          if (!v288)
          {
            isEscapingClosureAtFileLocation = v305;
            if ((~v276 & 0xF000000000000007) == 0)
            {
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            v166 = v271;
            sub_1CF18B04C(v152, 1, v276);
            v271 = v166;
            if (v166)
            {
              (v298)(v152, v304);
LABEL_54:
              sub_1CEFCCC44(v301, &unk_1EC4BED00, &unk_1CFA006E0);
              goto LABEL_5;
            }

            v310 = v160;
            if (a10)
            {
              v311 = v163;
              sub_1CF9E5A18();
              v316 = 0;
              v317 = 1;
              v318 = 0;
              v200 = swift_allocObject();
              v200[2] = &v316;
              v200[3] = sub_1CF5013B8;
              v200[4] = 0;
              v200[5] = &v318;
              v201 = swift_allocObject();
              *(v201 + 16) = sub_1CF50EB64;
              *(v201 + 24) = v200;
              *&v325 = sub_1CF50EB9C;
              *(&v325 + 1) = v201;
              *&v323 = MEMORY[0x1E69E9820];
              *(&v323 + 1) = 1107296256;
              *&v324 = sub_1CF005DF8;
              *(&v324 + 1) = &block_descriptor_212;
              v202 = _Block_copy(&v323);

              v111 = sub_1CF9E6978();
              v203 = fpfs_openat();

              _Block_release(v202);

              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              if (v318)
              {
LABEL_59:
                swift_willThrow();

                v180 = v303;
                goto LABEL_39;
              }

              if ((v203 & 0x80000000) == 0)
              {
                v152 = v303;
                v111 = v309;
                if (v317)
                {
LABEL_104:
                  __break(1u);
LABEL_105:
                  MEMORY[0x1EEE9AC00](v89);
                  v260 = isEscapingClosureAtFileLocation;
                  goto LABEL_108;
                }

                goto LABEL_47;
              }

              if (MEMORY[0x1D38683F0](v89))
              {
                if (MEMORY[0x1D38683F0]() == 9939394)
                {
                  [objc_opt_self() fp:2 errorForDataProtectionClass:?];
                }

                else
                {
                  MEMORY[0x1D38683F0]();
                  v247 = sub_1CF9E6138();
                  if ((v247 & 0x100000000) != 0)
                  {
                    LODWORD(v323) = 22;
                  }

                  else
                  {
                    LODWORD(v323) = v247;
                  }

                  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                  sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
                  v248 = v273;
                  v249 = v275;
                  sub_1CF9E57D8();
                  sub_1CF9E53A8();
                  (*(v274 + 8))(v248, v249);
                }

                goto LABEL_59;
              }

              *&v323 = 0;
              *(&v323 + 1) = 0xE000000000000000;
              sub_1CF9E7948();

              *&v323 = 0xD00000000000001ALL;
              *(&v323 + 1) = 0x80000001CFA2DF30;
              v313 = v203;
              v250 = sub_1CF9E7F98();
              MEMORY[0x1D3868CC0](v250);

              MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
              v251 = v323;
              v252 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v253 = sub_1CF9E6108();
              v254 = sub_1CF9E72B8();

              if (os_log_type_enabled(v253, v254))
              {
                v255 = swift_slowAlloc();
                v111 = swift_slowAlloc();
                *&v323 = v111;
                *v255 = 136315650;
                v256 = sub_1CF9E7988();
                v258 = sub_1CEFD0DF0(v256, v257, &v323);

                *(v255 + 4) = v258;
                *(v255 + 12) = 2048;
                *(v255 + 14) = 315;
                *(v255 + 22) = 2080;
                *(v255 + 24) = sub_1CEFD0DF0(v251, *(&v251 + 1), &v323);
                _os_log_impl(&dword_1CEFC7000, v253, v254, "[ASSERT] ‼️  %s:%lu: %s", v255, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1D386CDC0](v111, -1, -1);
                MEMORY[0x1D386CDC0](v255, -1, -1);
              }

              (*(v278 + 8))(v277, v279);
              LODWORD(v261) = 0;
              v260 = 315;
LABEL_112:
              v206 = sub_1CF9E7B68();
              __break(1u);
LABEL_113:
              MEMORY[0x1EEE9AC00](v206);
              v260 = v111;
LABEL_108:
              fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v259, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

LABEL_62:
            sub_1CF9E5A18();
            v204 = *&v165[v111];
            v116 = __CFADD__(v204, 1);
            v205 = v204 + 1;
            if (!v116)
            {
              v311 = v163;
              *&v165[v111] = v205;
              v206 = objc_sync_enter(v111);
              if (!v206)
              {
                v207 = *(v111 + 160);

                v208 = objc_sync_exit(v111);
                if (!v208)
                {
                  v209 = swift_unknownObjectWeakLoadStrong();
                  v210 = *(v111 + 288);
                  sub_1CF9E6978();
                  v211 = openat_s();

                  if (v211 < 0)
                  {
                    v239 = MEMORY[0x1D38683F0](v212);
                    *&v325 = 0;
                    v323 = 0u;
                    v324 = 0u;
                    BYTE8(v325) = 19;
                    v233 = sub_1CF19BBE4(v239, &v323);
                    sub_1CF1969CC(&v323);
                    swift_willThrow();

                    v271 = 0;
                    goto LABEL_76;
                  }

                  os_unfair_lock_lock((v207 + 56));
                  v214 = *(v207 + 64);
                  v213 = *(v207 + 72);
                  LODWORD(v306) = *(v207 + 88);
                  LODWORD(v309) = v211;
                  LODWORD(v302) = *(v207 + 89);
                  DWORD2(v300) = *(v207 + 90);

                  v215 = *(v207 + 80);
                  os_unfair_lock_unlock((v207 + 56));
                  v297 = &v262;
                  MEMORY[0x1EEE9AC00](v216);
                  *(&v262 - 10) = v262;
                  *(&v262 - 18) = v211;
                  *(&v262 - 8) = v207;
                  *(&v262 - 7) = v209;
                  *&v300 = v209;
                  *(&v262 - 6) = v210;
                  *(&v262 - 40) = 2;
                  v259 = xmmword_1CFA08A20;
                  LOBYTE(v260) = -1;
                  v261 = 0;
                  *&v325 = v214;
                  *(&v325 + 1) = v213;
                  *&v323 = MEMORY[0x1E69E9820];
                  *(&v323 + 1) = 1107296256;
                  *&v324 = sub_1CEFDB088;
                  *(&v324 + 1) = &block_descriptor_190_1;
                  v217 = _Block_copy(&v323);
                  v299 = v213;

                  v296 = v217;
                  v318 = v217;
                  v319 = v215;
                  v320 = v306;
                  v321 = v302;
                  v322 = BYTE8(v300);
                  sub_1CEFDB034();
                  v218 = swift_allocError();
                  *v219 = 6;
                  *(v219 + 8) = 0u;
                  *(v219 + 24) = 0u;
                  *(v219 + 40) = 19;
                  v220 = v286;
                  *v286 = v218;
                  swift_storeEnumTagMultiPayload();
                  v221 = swift_allocObject();
                  v221[2] = v220;
                  v221[3] = sub_1CF2B9F90;
                  v221[4] = &v262 - 12;
                  v222 = swift_allocObject();
                  *(v222 + 16) = sub_1CF1DBD3C;
                  *(v222 + 24) = v221;
                  v306 = v221;
                  *&v325 = sub_1CF1DBD5C;
                  *(&v325 + 1) = v222;
                  *&v323 = MEMORY[0x1E69E9820];
                  *(&v323 + 1) = 1107296256;
                  *&v324 = sub_1CEFDB270;
                  *(&v324 + 1) = &block_descriptor_201;
                  v223 = _Block_copy(&v323);

                  v224 = fpfs_fgetfileattrs_detailed();
                  _Block_release(v223);
                  LOBYTE(v223) = swift_isEscapingClosureAtFileLocation();

                  if ((v223 & 1) == 0)
                  {
                    v225 = v286;
                    if (v224)
                    {
                      swift_getErrorValue();
                      v302 = v314;
                      v226 = v315;
                      v227 = swift_allocError();
                      *v228 = 6;
                      *(v228 + 8) = 0u;
                      *(v228 + 24) = 0u;
                      *(v228 + 40) = 19;
                      v229 = v224;
                      v230 = sub_1CF199074(v227, v226);

                      v231 = v289;
                      *v289 = v230;
                      swift_storeEnumTagMultiPayload();
                      sub_1CEFDA9E0(v231, v225, &qword_1EC4BE000, &unk_1CFA006A0);
                    }

                    v232 = v281;
                    sub_1CEFCCBDC(v225, v281, &qword_1EC4BE000, &unk_1CFA006A0);
                    if (swift_getEnumCaseMultiPayload() != 1)
                    {

                      v237 = v283;
                      sub_1CEFE55D0(v232, v283, &unk_1EC4BE2F0, qword_1CFA04220);
                      sub_1CEFCCC44(v225, &qword_1EC4BE000, &unk_1CFA006A0);

                      _Block_release(v296);

                      v152 = v303;
                      v238 = v309;
                      goto LABEL_74;
                    }

                    *&v323 = *v232;
                    v233 = v323;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                    swift_willThrowTypedImpl();

                    sub_1CEFCCC44(v225, &qword_1EC4BE000, &unk_1CFA006A0);

                    _Block_release(v296);

                    v234 = v233;
                    LODWORD(v323) = sub_1CF9E52A8();
                    sub_1CF196978();
                    v235 = sub_1CF9E5658();

                    v152 = v303;
                    if (v235)
                    {
                      v236 = v309;

                      v237 = v283;
                      *v283 = xmmword_1CF9FD940;
                      *(v237 + 16) = 2;
                      swift_storeEnumTagMultiPayload();
                      v238 = v236;
LABEL_74:
                      close(v238);

                      swift_unknownObjectRelease();
                      goto LABEL_78;
                    }

                    close(v309);
LABEL_76:
                    v240 = v233;
                    LODWORD(v323) = sub_1CF9E5328();
                    sub_1CF196978();
                    v241 = sub_1CF9E5658();

                    swift_unknownObjectRelease();

                    if ((v241 & 1) == 0)
                    {
                      (v298)(v152, v304);
                      sub_1CEFCCC44(v301, &unk_1EC4BED00, &unk_1CFA006E0);
                      goto LABEL_5;
                    }

                    v237 = v283;
                    *v283 = xmmword_1CF9FD930;
                    *(v237 + 16) = 2;
                    swift_storeEnumTagMultiPayload();
LABEL_78:
                    v242 = v304;
                    v243 = v284;
                    v244 = v282;
                    sub_1CEFE55D0(v237, v284, &unk_1EC4BE2F0, qword_1CFA04220);
                    if (swift_getEnumCaseMultiPayload() == 1)
                    {
                      sub_1CEFCCC44(v243, &unk_1EC4BE2F0, qword_1CFA04220);
                      v245 = 1;
                    }

                    else
                    {
                      sub_1CEFE4D30(v243, v244, type metadata accessor for VFSItem);
                      v245 = 0;
                    }

                    isEscapingClosureAtFileLocation = v305;
                    v246 = v307;
                    v311(v244, v245, 1, v307);
                    v89 = (v272)(v244, 1, v246);
                    if (v89 != 1)
                    {
                      (v298)(v152, v242);
                      sub_1CEFCCC44(v301, &unk_1EC4BED00, &unk_1CFA006E0);
                      sub_1CEFE4D30(v244, v285, type metadata accessor for VFSItem);
                      goto LABEL_5;
                    }

                    goto LABEL_99;
                  }

LABEL_97:
                  __break(1u);
                }

                MEMORY[0x1EEE9AC00](v208);
                v260 = v111;
LABEL_110:
                fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v259, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
              }

              goto LABEL_113;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v191 = v163;
          v310 = v160;
          v192 = [objc_opt_self() defaultManager];
          v193 = sub_1CF9E5928();
          *&v323 = 0;
          v194 = [v192 createDirectoryAtURL:v193 withIntermediateDirectories:0 attributes:0 error:&v323];

          v189 = v323;
          if (v194)
          {
            v195 = v323;
LABEL_61:
            v163 = v191;
            goto LABEL_62;
          }

          goto LABEL_55;
        }

        v165 = v296;
        if (v288 == 2)
        {
          v310 = v160;
          v311 = v163;
          v181 = [objc_opt_self() defaultManager];
          sub_1CF9E5A18();
          isEscapingClosureAtFileLocation = sub_1CF9E6888();
          v182 = v276;

          if ((~v182 & 0xF000000000000007) == 0)
          {
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          if (v182 >> 62 == 1)
          {
            v183 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v184 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1CEFE42D4(v183, v184);
            sub_1CF9E6918();
            sub_1CF9E68D8();
            v186 = v185;
            v89 = sub_1CEFE4714(v183, v184);
            if (!v186)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            v187 = sub_1CF9E6888();

            *&v323 = 0;
            v188 = [v181 createSymbolicLinkAtPath:isEscapingClosureAtFileLocation withDestinationPath:v187 error:&v323];

            v189 = v323;
            v152 = v303;
            v111 = v309;
            if (v188)
            {
              v190 = v323;
LABEL_47:
              v163 = v311;
              goto LABEL_62;
            }

LABEL_55:
            v199 = v189;
            sub_1CF9E57F8();

            swift_willThrow();
            goto LABEL_38;
          }
        }

        else
        {
          if ((~v276 & 0xF000000000000007) == 0)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (v276 >> 62 == 1)
          {
            v191 = v163;
            v196 = *((v276 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v197 = *((v276 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1CEFE42D4(v196, v197);
            v198 = v271;
            sub_1CF9E5908();
            v271 = v198;
            if (v198)
            {
              sub_1CEFE4714(v196, v197);
              (v298)(v152, v304);
              goto LABEL_54;
            }

            v310 = v160;
            sub_1CEFE4714(v196, v197);
            goto LABEL_61;
          }
        }

        LODWORD(v261) = 0;
        v260 = 217;
        goto LABEL_112;
      }
    }

    __break(1u);
    goto LABEL_96;
  }

  LODWORD(v323) = 22;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v64 + 8))(v67, v63);
LABEL_3:
  swift_willThrow();
LABEL_5:
  v72 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF5013B8@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1CEFE1894(sub_1CF50E98C);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF501408@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(v169) = a4;
  v172 = a3;
  v164 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v146 = (&v130 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v11 = *(v10 - 8);
  v165 = v10;
  v166 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v141 = (&v130 - v13);
  v14 = sub_1CF9E6388();
  v162 = *(v14 - 8);
  v163 = v14;
  v15 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v161 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v130 - v18;
  v160 = sub_1CF9E6498();
  v158 = *(v160 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v153 = &v130 - v23;
  v151 = sub_1CF9E63D8();
  v150 = *(v151 - 8);
  v24 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1CF9E6448();
  v155 = *(v156 - 8);
  v26 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1CF9E73D8();
  v148 = *(v149 - 8);
  v28 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v144 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v145 = &v130 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v143 = &v130 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v168 = &v130 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v170 = &v130 - v43;
  v44 = sub_1CF9E5A58();
  v173 = *(v44 - 8);
  v174 = v44;
  v45 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for VFSItem(0);
  v167 = *(v48 - 8);
  v49 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v130 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v130 - v58;
  v171 = a1;
  v60 = v175;
  result = sub_1CF50BCA0(a2, &v130 - v58);
  if (v60)
  {
    return result;
  }

  v135 = v51;
  v62 = v172;
  v136 = v56;
  v137 = v55;
  v138 = v48;
  v140 = v47;
  v139 = v59;
  v63 = a2;
  v175 = v54;
  sub_1CF0015AC(a2, v54, type metadata accessor for VFSItem);
  v64 = *(v171 + 16);
  v65 = objc_sync_enter(v64);
  if (v65)
  {
LABEL_42:
    MEMORY[0x1EEE9AC00](v65);
    *(&v130 - 2) = v64;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v130 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v66 = objc_sync_exit(v64);
  v68 = v173;
  v67 = v174;
  v69 = v140;
  v70 = v170;
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v66);
    *(&v130 - 2) = v64;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v130 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v170);
  v65 = (*(v68 + 48))(v70, 1, v67);
  if (v65 == 1)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  (*(v68 + 32))(v69, v70, v67);
  sub_1CF50E358(v62, v169 & 1, v69);
  v71 = v168;
  sub_1CF264F9C(2, 2049, 0x208000u, v168);
  v172 = 0;
  v72 = v167 + 48;
  v73 = *(v167 + 48);
  if (v73(v71, 1, v138) == 1)
  {
    v131 = v73;
    v171 = v72;
    sub_1CEFCCC44(v71, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v74 = v166;
    goto LABEL_23;
  }

  v75 = v135;
  sub_1CEFE4D30(v71, v135, type metadata accessor for VFSItem);
  isa = v75->isa;
  v77 = *v63;
  v78 = *(v63 + 8);
  v74 = v166;
  if (!LOBYTE(v75[1].isa))
  {
    if (*(v63 + 8) || isa != v77)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (LOBYTE(v75[1].isa) != 1)
  {
    if (isa)
    {
      if (v78 != 2 || v77 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v78 != 2 || v77)
    {
      goto LABEL_22;
    }

LABEL_21:
    v79 = v139;
    v80 = v164;
    sub_1CEFCCBDC(v139, v164, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v136 + 56))(v80, 0, 1, v137);
    updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
    v82 = *(updated + 20);
    sub_1CF0015AC(v75, v80 + v82, type metadata accessor for VFSItem);
    (*(v167 + 56))(v80 + v82, 0, 1, v138);
    sub_1CF717E1C(v63);
    sub_1CEFE51CC(v75, type metadata accessor for VFSItem);
    (*(v68 + 8))(v69, v174);
    sub_1CEFE51CC(v175, type metadata accessor for VFSItem);
    result = sub_1CEFCCC44(v79, &qword_1EC4C1330, &unk_1CFA13480);
    *(v80 + *(updated + 24)) = v176;
    return result;
  }

  if (v78 == 1 && isa == v77)
  {
    goto LABEL_21;
  }

LABEL_22:
  v131 = v73;
  v171 = v72;
  sub_1CEFE51CC(v75, type metadata accessor for VFSItem);
LABEL_23:
  v133 = *v63;
  v134 = v63;
  v132 = *(v63 + 8);
  v83 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v84 = swift_allocBox();
  v85 = *(v74 + 56);
  v168 = v86;
  v85(v86, 1, 1, v165);
  dispatch_group_enter(v83);
  v87 = swift_allocObject();
  *(v87 + 16) = v84;
  *(v87 + 24) = v83;
  v88 = v87;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v170 = v64;
  v89 = v64[27];
  v176 = MEMORY[0x1E69E7CC0];
  sub_1CF00BC50(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v169 = v84;

  v135 = v83;
  v90 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v91 = v147;
  v92 = v149;
  sub_1CF9E77B8();
  v93 = sub_1CF9E73E8();

  (*(v148 + 8))(v91, v92);
  qos_class_self();
  v94 = v153;
  sub_1CF9E63B8();
  v95 = v150;
  v96 = *(v150 + 48);
  v97 = v151;
  v98 = v96(v94, 1, v151);
  v99 = v161;
  v100 = v157;
  if (v98 == 1)
  {
    (*(v95 + 104))(v152, *MEMORY[0x1E69E7FA0], v97);
    v101 = v96(v94, 1, v97);
    v103 = v162;
    v102 = v163;
    if (v101 != 1)
    {
      sub_1CEFCCC44(v94, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v95 + 32))(v152, v94, v97);
    v103 = v162;
    v102 = v163;
  }

  ObjectType = swift_getObjectType();
  v105 = v154;
  sub_1CF9E6428();
  v106 = swift_allocObject();
  v107 = v133;
  *(v106 + 16) = v170;
  *(v106 + 24) = v107;
  *(v106 + 32) = v132;
  *(v106 + 40) = 0u;
  *(v106 + 56) = 0u;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = 0u;
  *(v106 + 120) = 0u;
  *(v106 + 136) = 0;
  *(v106 + 144) = 2049;
  *(v106 + 152) = v93;
  *(v106 + 160) = sub_1CF50EBA0;
  *(v106 + 168) = v88;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v105, sub_1CF50EB68, v106);

  (*(v155 + 8))(v105, v156);
  sub_1CF9E6478();
  v108 = v100;
  v109 = v159;
  sub_1CEFD5B64(v159);
  sub_1CEFD5BD8(v99);
  MEMORY[0x1D3869770](v108, v109, v99, ObjectType);
  v110 = *(v103 + 8);
  v110(v99, v102);
  v110(v109, v102);
  (*(v158 + 8))(v108, v160);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v111 = v135;
  sub_1CF9E72F8();
  v112 = v168;
  swift_beginAccess();
  if ((*(v166 + 48))(v112, 1, v165))
  {

    v113 = v167;
    v114 = v143;
    v115 = v138;
    (*(v167 + 56))(v143, 1, 1, v138);

    v116 = v137;
    v117 = v136;
    v118 = v134;
  }

  else
  {
    v119 = v112;
    v120 = v141;
    sub_1CEFCCBDC(v119, v141, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v113 = v167;
    v116 = v137;
    v117 = v136;
    v118 = v134;
    if (EnumCaseMultiPayload == 1)
    {
      v177 = *v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      (*(v173 + 8))(v140, v174);
      sub_1CEFE51CC(v175, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v139, &qword_1EC4C1330, &unk_1CFA13480);
    }

    v122 = v120;
    v114 = v143;
    sub_1CEFE55D0(v122, v143, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v115 = v138;
  }

  v64 = v146;
  sub_1CEFCCBDC(v139, v146, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v117 + 56))(v64, 0, 1, v116);
  v123 = v142;
  sub_1CEFCCBDC(v114, v142, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v124 = v131;
  v65 = (v131)(v123, 1, v115);
  v125 = v145;
  if (v65 == 1)
  {
    goto LABEL_41;
  }

  sub_1CEFE4D30(v123, v145, type metadata accessor for VFSItem);
  (*(v113 + 56))(v125, 0, 1, v115);
  v126 = v144;
  sub_1CEFCCBDC(v114, v144, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v124(v126, 1, v115) == 1)
  {
    sub_1CEFCCC44(v126, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v127 = v164;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v128 = qword_1EDEABDE8;
    sub_1CEFCCC44(v114, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v173 + 8))(v140, v174);
    sub_1CEFE51CC(v175, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v139, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    sub_1CF717E1C(v118);
    sub_1CEFCCC44(v114, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v173 + 8))(v140, v174);
    sub_1CEFE51CC(v175, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v139, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE51CC(v126, type metadata accessor for VFSItem);
    v128 = v177;
    v127 = v164;
  }

  sub_1CEFE55D0(v64, v127, &qword_1EC4C1310, &qword_1CFA08AC8);
  v129 = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  result = sub_1CEFE55D0(v125, v127 + *(v129 + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v127 + *(v129 + 24)) = v128;
  return result;
}

_OWORD *sub_1CF5028E0(__int128 *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  LODWORD(v87) = a4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1380, &qword_1CFA08B78);
  v8 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v81 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 3);
  v25 = *(a1 + 4);
  v27 = *(a1 + 40);
  v89 = *a2;
  v96 = *(a2 + 8);
  v28 = a3[1];
  v86 = *a3;
  v29 = v4;
  v30 = *(v4 + 16);
  v97 = v27;
  v85 = *a1;
  *(&v31 + 1) = *(&v85 + 1);
  v92 = v85;
  *&v31 = *(a1 + 2);
  v84 = v31;
  v93 = v31;
  v94 = v26;
  v95 = v25;

  v32 = v91;
  sub_1CF263024(&v97, &v92, 2049, v19);

  if (!v32)
  {
    v79 = v28;
    v80 = v29;
    v33 = v96;
    v34 = v90;
    v91 = v24;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v35 = (v27 - 1) < 2 || v84 == 0;
      v36 = v35;
      if (v35)
      {
        v37 = v85;
      }

      else
      {
        v37 = v84;
      }

      v30 = &unk_1CFA08B50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v38 = v37;
      *(v38 + 8) = v36;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *(v38 + 48) = 0u;
      *(v38 + 64) = 0u;
      *(v38 + 80) = 0u;
      *(v38 + 96) = 0u;
      *(v38 + 112) = 0u;
      sub_1CF2A8DE0(v38);
      swift_willThrow();
    }

    else
    {
      v39 = v91;
      v40 = sub_1CEFE4D30(v19, v91, type metadata accessor for VFSItem);
      v41 = *(v39 + 16);
      v42 = v33;
      if (v33 == 255)
      {
        v43 = *(v39 + 16);
      }

      v44 = *(v39 + 24);
      v45 = v34;
      v46 = *(v34 + 48);
      MEMORY[0x1EEE9AC00](v40);
      *(&v78 - 8) = v80;
      *(&v78 - 7) = v47;
      *(&v78 - 48) = v48;
      v49 = v79;
      *(&v78 - 5) = v86;
      *(&v78 - 4) = v49;
      *(&v78 - 3) = v39;
      *(&v78 - 16) = v87 & 1;
      v50 = v88;
      sub_1CF714E9C(v88, v88 + v51, v52, v53, sub_1CF50E934, (&v78 - 10));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1388, &unk_1CFA08B80);
      v55 = *(type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation() - 8);
      v56 = *(v55 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      if (v42 == 255)
      {
        v87 = v56;
        v30 = swift_allocObject();
        v30[1] = xmmword_1CF9FA440;
        v72 = v30 + v57;
        v69 = v83;
        sub_1CEFCCBDC(v50, v83, &qword_1EC4C1380, &qword_1CFA08B78);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
        LODWORD(v89) = *(v73 + 48);
        v96 = *(v45 + 48);
        sub_1CEFE4D30(v69, v30 + v57, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v74 = v82;
        sub_1CEFCCBDC(v50, v82, &qword_1EC4C1380, &qword_1CFA08B78);
        v75 = *(v73 + 48);
        v71 = v74;
        v67 = *(v45 + 48);
        sub_1CEFE4D30(v71 + v75, &v72[v87], type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFCCC44(v50, &qword_1EC4C1380, &qword_1CFA08B78);
      }

      else
      {
        v87 = 2 * v56;
        v58 = v56;
        v30 = swift_allocObject();
        v30[1] = xmmword_1CF9FC3C0;
        v59 = v83;
        sub_1CEFCCBDC(v50, v83, &qword_1EC4C1380, &qword_1CFA08B78);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
        LODWORD(v89) = *(v60 + 48);
        v96 = *(v34 + 48);
        v61 = v59;
        v62 = v30 + v57;
        sub_1CEFE4D30(v61, v30 + v57, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v63 = v82;
        sub_1CEFCCBDC(v50, v82, &qword_1EC4C1380, &qword_1CFA08B78);
        v64 = *(v60 + 48);
        LODWORD(v86) = *(v45 + 48);
        sub_1CEFE4D30(v63 + v64, v30 + v57 + v58, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v65 = v81;
        sub_1CEFCCBDC(v50, v81, &qword_1EC4C1380, &qword_1CFA08B78);
        v66 = *(v60 + 48);
        v67 = v86;
        v68 = &v62[v87];
        v69 = v83;
        sub_1CEFE4D30(v65 + *(v45 + 48), v68, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFCCC44(v50, &qword_1EC4C1380, &qword_1CFA08B78);
        v70 = v65 + v66;
        v71 = v63;
        sub_1CEFE51CC(v70, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE51CC(v65, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      }

      v76 = v69 + v89;
      v77 = v69 + v96;
      sub_1CEFE51CC(v71 + v67, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v71, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v77, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v76, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v91, type metadata accessor for VFSItem);
    }
  }

  return v30;
}

void sub_1CF503058(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500) + 48);
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a1;
  v17[6] = a2;
  v18 = a3;
  v19 = a7;
  sub_1CF7136CC(a8, a8 + v16, a2, a3, sub_1CF50E960, v17);
}

uint64_t sub_1CF503120@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(void, void)@<X5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v9 = v8;
  v245 = a7;
  LODWORD(v273) = a6;
  v272 = a5;
  v269 = a1;
  v243 = a8;
  v284 = *MEMORY[0x1E69E9840];
  v248 = sub_1CF9E53C8();
  v247 = *(v248 - 1);
  v13 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v242 = v213 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v270 = v213 - v23;
  v24 = sub_1CF9E5A58();
  v250 = *(v24 - 8);
  v25 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v249 = v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v252 = v213 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v30 = *(v29 - 8);
  v278 = v29;
  v279 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v235 = (v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v213 - v34);
  v268 = sub_1CF9E6388();
  v271 = *(v268 - 8);
  v36 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v267 = (v213 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v266 = v213 - v39;
  v265 = sub_1CF9E6498();
  v275 = *(v265 - 8);
  v40 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v264 = v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v239 = v213 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v257 = (v213 - v46);
  v262 = sub_1CF9E63D8();
  v261 = *(v262 - 8);
  v47 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v238 = v213 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v256 = v213 - v50;
  v263 = sub_1CF9E6448();
  v277 = *(v263 - 8);
  v51 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v240 = v213 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (v213 - v54);
  v260 = sub_1CF9E73D8();
  v276 = *(v260 - 8);
  v56 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v259 = v213 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v244 = v213 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v241 = v213 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v251 = v213 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v255 = (v213 - v66);
  v258 = type metadata accessor for VFSItem(0);
  v274 = *(v258 - 8);
  v67 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v234 = v213 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v253 = v213 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v254 = v213 - v72;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v236 = *(v237 - 8);
  v73 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v75 = v213 - v74;
  if (a2)
  {
    v76 = a2;
  }

  else
  {
    v76 = *(a3 + 40);
    v269 = *(a3 + 32);
  }

  sub_1CF50BCA0(a3, v75);
  if (!v9)
  {
    v229 = v55;
    v231 = v76;
    v225 = v35;
    v223 = v21;
    v213[1] = 0;
    v230 = v75;
    v224 = a3;
    v226 = v24;
    v78 = *(a4 + 16);
    v79 = dispatch_group_create();
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
    v80 = swift_allocBox();
    v81 = *(v279 + 56);
    v227 = v82;
    v221 = v279 + 56;
    v220 = v81;
    v81(v82, 1, 1, v278);
    dispatch_group_enter(v79);
    v83 = swift_allocObject();
    *(v83 + 16) = v80;
    *(v83 + 24) = v79;
    v84 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v232 = v78;
    v85 = *(v78 + 27);
    v283 = MEMORY[0x1E69E7CC0];
    v86 = sub_1CF00BC50(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v228 = v80;

    v233 = v79;
    v87 = v85;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    v89 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v90 = v259;
    v216 = v88;
    v215 = v89;
    v91 = v260;
    v218 = v86;
    sub_1CF9E77B8();
    v222 = v84;
    v92 = sub_1CF9E73E8();

    v93 = *(v276 + 8);
    v276 += 8;
    v214 = v93;
    v93(v90, v91);
    qos_class_self();
    v94 = v257;
    sub_1CF9E63B8();
    v95 = v261;
    v96 = v261 + 48;
    v97 = *(v261 + 48);
    v98 = v262;
    v99 = v97(v94, 1, v262);
    v217 = v97;
    v213[2] = v96;
    if (v99 == 1)
    {
      (*(v95 + 104))(v256, *MEMORY[0x1E69E7FA0], v98);
      v100 = v97(v94, 1, v98);
      v101 = v229;
      if (v100 != 1)
      {
        sub_1CEFCCC44(v94, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v95 + 32))(v256, v94, v98);
      v101 = v229;
    }

    ObjectType = swift_getObjectType();
    sub_1CF9E6428();
    v103 = swift_allocObject();
    v104 = v232;
    v105 = v272;
    *(v103 + 16) = v232;
    *(v103 + 24) = v105;
    *(v103 + 32) = v273;
    *(v103 + 40) = 0u;
    *(v103 + 56) = 0u;
    *(v103 + 72) = 0u;
    *(v103 + 88) = 0u;
    *(v103 + 104) = 0u;
    *(v103 + 120) = 0u;
    *(v103 + 136) = 0;
    *(v103 + 144) = 2049;
    *(v103 + 152) = v92;
    *(v103 + 160) = sub_1CF50EBA0;
    *(v103 + 168) = v83;

    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v101, sub_1CF50EB68, v103);

    v106 = *(v277 + 8);
    v277 += 8;
    v256 = v106;
    (v106)(v101, v263);
    v107 = v264;
    sub_1CF9E6478();
    v108 = v266;
    sub_1CEFD5B64(v266);
    v109 = v267;
    sub_1CEFD5BD8(v267);
    MEMORY[0x1D3869770](v107, v108, v109, ObjectType);
    v111 = v271 + 8;
    v110 = *(v271 + 8);
    v112 = v109;
    v113 = v268;
    (v110)(v112, v268);
    v257 = v110;
    (v110)(v108, v113);
    v114 = v275 + 8;
    v115 = *(v275 + 8);
    v115(v107, v265);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    v116 = v233;
    sub_1CF9E72F8();
    v117 = v227;
    swift_beginAccess();
    v118 = *(v279 + 48);
    v279 += 48;
    v229 = v118;
    if (v118(v117, 1, v278))
    {

      v119 = v274;
      v120 = v255;
      v121 = v258;
      (*(v274 + 56))(v255, 1, 1, v258);

      v122 = v270;
    }

    else
    {
      v123 = v117;
      v124 = v225;
      sub_1CEFCCBDC(v123, v225, &unk_1EC4BF310, &unk_1CF9FDB30);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v121 = v258;
      v119 = v274;
      v122 = v270;
      if (EnumCaseMultiPayload == 1)
      {

        v281 = *v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v230, &qword_1EC4C1330, &unk_1CFA13480);

        goto LABEL_22;
      }

      v120 = v255;
      sub_1CEFE55D0(v124, v255, &unk_1EC4BEC00, &unk_1CF9FCB60);
    }

    v126 = *(v119 + 48);
    if (v126(v120, 1, v121) == 1)
    {

      sub_1CEFCCC44(v120, &unk_1EC4BEC00, &unk_1CF9FCB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v127 = v272;
      *(v127 + 8) = v273;
      *(v127 + 16) = 0u;
      *(v127 + 32) = 0u;
      *(v127 + 48) = 0u;
      *(v127 + 64) = 0u;
      *(v127 + 80) = 0u;
      *(v127 + 96) = 0u;
      *(v127 + 112) = 0u;
      sub_1CF2A8DE0(v127);
      swift_willThrow();
LABEL_19:
      v132 = &qword_1EC4C1330;
      v133 = &unk_1CFA13480;
      v134 = &v262;
LABEL_20:
      v135 = *(v134 - 32);
LABEL_21:
      result = sub_1CEFCCC44(v135, v132, v133);
      goto LABEL_22;
    }

    v275 = v114;
    v128 = v254;
    sub_1CEFE4D30(v120, v254, type metadata accessor for VFSItem);
    v129 = v128 + *(v121 + 28);
    if (*(v129 + *(type metadata accessor for ItemMetadata() + 80)))
    {

      LODWORD(v281) = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v130 = v246;
      v131 = v248;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v247 + 8))(v130, v131);
      swift_willThrow();
      sub_1CEFE51CC(v128, type metadata accessor for VFSItem);
      goto LABEL_19;
    }

    v137 = objc_sync_enter(v104);
    if (v137)
    {
LABEL_55:
      MEMORY[0x1EEE9AC00](v137);
      v213[-2] = v104;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v213[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v248 = v126;
    v138 = objc_sync_exit(v104);
    v139 = v250;
    if (!v138)
    {
      v255 = v115;
      sub_1CF25116C(v122);
      v140 = v270;
      v141 = *(v139 + 48);
      v104 = v226;
      v137 = v141(v270, 1, v226);
      if (v137 == 1)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_55;
      }

      sub_1CF9E5968();

      v272 = *(v139 + 8);
      v273 = v139 + 8;
      v272(v140, v104);
      v142 = v274 + 56;
      v143 = *(v274 + 56);
      (v143)(v251, 1, 1, v121);
      sub_1CF0015AC(v224, v253, type metadata accessor for VFSItem);
      v104 = v232;
      v137 = objc_sync_enter(v232);
      if (v137)
      {
        goto LABEL_55;
      }

      v274 = v142;
      v138 = objc_sync_exit(v104);
      v104 = v223;
      if (!v138)
      {
        v271 = v111;
        sub_1CF25116C(v223);
        v144 = v226;
        v145 = v141(v104, 1, v226) == 1;
        v137 = v231;
        if (!v145)
        {

          v146 = v249;
          (*(v250 + 32))(v249, v104, v144);
          if (v245)
          {
            v147 = [objc_opt_self() defaultManager];
            v148 = v252;
            v149 = sub_1CF9E5928();
            v281 = 0;
            v150 = [v147 removeItemAtURL:v149 error:&v281];

            if (!v150)
            {
              v181 = v281;
              sub_1CF9E57F8();

              swift_willThrow();
              v182 = v226;
              v183 = v272;
              v272(v249, v226);
              sub_1CEFE51CC(v253, type metadata accessor for VFSItem);
              v183(v148, v182);
LABEL_38:
              sub_1CEFE51CC(v254, type metadata accessor for VFSItem);
              sub_1CEFCCC44(v230, &qword_1EC4C1330, &unk_1CFA13480);
              v132 = &unk_1EC4BEC00;
              v133 = &unk_1CF9FCB60;
              v134 = &v282;
              goto LABEL_20;
            }

            v151 = v281;
            v146 = v249;
          }

          v152 = [objc_opt_self() defaultManager];
          v153 = v146;
          v154 = sub_1CF9E5928();
          v155 = v252;
          v156 = sub_1CF9E5928();
          v281 = 0;
          v157 = [v152 moveItemAtURL:v154 toURL:v156 error:&v281];

          if (v157)
          {
            v158 = v232;
            v159 = *(v232 + 32);
            v160 = v281;
            sub_1CF4D463C();
            v250 = *v224;
            LODWORD(v247) = *(v224 + 8);
            v161 = dispatch_group_create();
            v162 = swift_allocBox();
            v269 = v163;
            v220(v163, 1, 1, v278);
            dispatch_group_enter(v161);
            v164 = swift_allocObject();
            *(v164 + 16) = v162;
            *(v164 + 24) = v161;
            v165 = *(v158 + 27);
            v281 = MEMORY[0x1E69E7CC0];
            v246 = v162;

            v270 = v161;
            v166 = v165;
            v167 = v259;
            v168 = v260;
            sub_1CF9E77B8();
            v169 = sub_1CF9E73E8();

            v214(v167, v168);
            qos_class_self();
            v170 = v239;
            sub_1CF9E63B8();
            v171 = v262;
            v172 = v217;
            v173 = v217(v170, 1, v262);
            v233 = v143;
            if (v173 == 1)
            {
              (*(v261 + 104))(v238, *MEMORY[0x1E69E7FA0], v171);
              v174 = v172(v170, 1, v171);
              v175 = v240;
              v176 = v256;
              if (v174 != 1)
              {
                sub_1CEFCCC44(v170, &unk_1EC4BE380, &qword_1CFA01BA0);
              }
            }

            else
            {
              (*(v261 + 32))(v238, v170, v171);
              v175 = v240;
              v176 = v256;
            }

            v184 = swift_getObjectType();
            sub_1CF9E6428();
            v185 = swift_allocObject();
            v186 = v250;
            *(v185 + 16) = v232;
            *(v185 + 24) = v186;
            *(v185 + 32) = v247;
            *(v185 + 40) = 0u;
            *(v185 + 56) = 0u;
            *(v185 + 72) = 0u;
            *(v185 + 88) = 0u;
            *(v185 + 104) = 0u;
            *(v185 + 120) = 0u;
            *(v185 + 136) = 0;
            *(v185 + 144) = 2049;
            *(v185 + 152) = v169;
            *(v185 + 160) = sub_1CF50EBA0;
            *(v185 + 168) = v164;

            swift_unknownObjectRetain();

            sub_1CEFD5828(0, v175, sub_1CF50EB68, v185);

            (v176)(v175, v263);
            v187 = v264;
            sub_1CF9E6478();
            v188 = v266;
            sub_1CEFD5B64(v266);
            v189 = v267;
            sub_1CEFD5BD8(v267);
            MEMORY[0x1D3869770](v187, v188, v189, v184);
            v190 = v268;
            v191 = v257;
            v257(v189, v268);
            v191(v188, v190);
            v255(v187, v265);
            sub_1CF9E7448();

            swift_unknownObjectRelease();
            v192 = v270;
            sub_1CF9E72F8();
            v193 = v269;
            swift_beginAccess();
            if (v229(v193, 1, v278))
            {

              v194 = v241;
              v195 = v258;
              (v233)(v241, 1, 1, v258);

              v196 = v243;
              v197 = v242;
              v198 = v251;
              v199 = v244;
            }

            else
            {
              v200 = v193;
              v201 = v235;
              sub_1CEFCCBDC(v200, v235, &unk_1EC4BF310, &unk_1CF9FDB30);
              v202 = swift_getEnumCaseMultiPayload();
              v196 = v243;
              v197 = v242;
              v198 = v251;
              v199 = v244;
              v194 = v241;
              if (v202 == 1)
              {
                v280 = *v201;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                swift_willThrowTypedImpl();

                v203 = v226;
                v204 = v272;
                v272(v249, v226);
                sub_1CEFE51CC(v253, type metadata accessor for VFSItem);
                v204(v252, v203);
                sub_1CEFE51CC(v254, type metadata accessor for VFSItem);
                sub_1CEFCCC44(v230, &qword_1EC4C1330, &unk_1CFA13480);

                v132 = &unk_1EC4BEC00;
                v133 = &unk_1CF9FCB60;
                v135 = v198;
                goto LABEL_21;
              }

              sub_1CEFE55D0(v201, v194, &unk_1EC4BEC00, &unk_1CF9FCB60);

              v195 = v258;
            }

            sub_1CEFDA9E0(v194, v198, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v205 = v230;
            sub_1CEFCCBDC(v230, v197, &qword_1EC4C1330, &unk_1CFA13480);
            (*(v236 + 56))(v197, 0, 1, v237);
            sub_1CEFCCBDC(v198, v199, &unk_1EC4BEC00, &unk_1CF9FCB60);
            if ((v248)(v198, 1, v195))
            {
              if (qword_1EDEABDE0 != -1)
              {
                swift_once();
              }

              v206 = qword_1EDEABDE8;
              v207 = v226;
              v208 = v272;
              v272(v249, v226);
              sub_1CEFE51CC(v253, type metadata accessor for VFSItem);
              v208(v252, v207);
              sub_1CEFE51CC(v254, type metadata accessor for VFSItem);
              sub_1CEFCCC44(v230, &qword_1EC4C1330, &unk_1CFA13480);
              v199 = v244;
            }

            else
            {
              v209 = v234;
              sub_1CF0015AC(v198, v234, type metadata accessor for VFSItem);
              sub_1CF717E1C(v224);
              sub_1CEFE51CC(v209, type metadata accessor for VFSItem);
              v210 = v226;
              v211 = v272;
              v272(v249, v226);
              sub_1CEFE51CC(v253, type metadata accessor for VFSItem);
              v211(v252, v210);
              sub_1CEFE51CC(v254, type metadata accessor for VFSItem);
              sub_1CEFCCC44(v205, &qword_1EC4C1330, &unk_1CFA13480);
              v206 = v280;
            }

            sub_1CEFE55D0(v197, v196, &qword_1EC4C1310, &qword_1CFA08AC8);
            updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
            sub_1CEFE55D0(v199, v196 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
            *(v196 + *(updated + 24)) = v206;
            v135 = v198;
            v132 = &unk_1EC4BEC00;
            v133 = &unk_1CF9FCB60;
            goto LABEL_21;
          }

          v177 = v281;
          sub_1CF9E57F8();

          swift_willThrow();
          v178 = v153;
          v179 = v226;
          v180 = v272;
          v272(v178, v226);
          sub_1CEFE51CC(v253, type metadata accessor for VFSItem);
          v180(v155, v179);
          goto LABEL_38;
        }

        goto LABEL_52;
      }
    }

    MEMORY[0x1EEE9AC00](v138);
    v213[-2] = v232;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v213[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

LABEL_22:
  v136 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF505114@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v326 = a4;
  v327 = a3;
  v295 = a5;
  v340[2] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v318 = v279 - v10;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v321 = *(v322 - 8);
  v11 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v294 = (v279 - v12);
  v315 = sub_1CF9E6388();
  v314 = *(v315 - 8);
  v13 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v313 = (v279 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v311 = v279 - v16;
  v312 = sub_1CF9E6498();
  v310 = *(v312 - 8);
  v17 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v309 = v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v305 = v279 - v21;
  v303 = sub_1CF9E63D8();
  v302 = *(v303 - 8);
  v22 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v304 = v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_1CF9E6448();
  v307 = *(v308 - 8);
  v24 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v306 = v279 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1CF9E73D8();
  v300 = *(v301 - 8);
  v26 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v299 = v279 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1CF9E53C8();
  v320 = *(v319 - 8);
  v28 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v323 = (v279 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v291 = sub_1CF9E6118();
  v30 = *(v291 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v290 = v279 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v289 = v279 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v288 = v279 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v287 = v279 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v286 = v279 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v285 = v279 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v316 = v279 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v317 = v279 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v297 = v279 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v279 - v51;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v296 = *(v298 - 8);
  v53 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v330 = v279 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = v279 - v57;
  v59 = sub_1CF9E5A58();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v332 = v279 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for VFSItem(0);
  v324 = *(v63 - 8);
  v325 = v63;
  v64 = v324[8];
  MEMORY[0x1EEE9AC00](v63);
  v293 = v279 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = v279 - v67;
  v328 = a1;
  sub_1CF0015AC(a1, v279 - v67, type metadata accessor for VFSItem);
  v329 = a2;
  v69 = a2[2];
  v70 = objc_sync_enter(v69);
  if (v70)
  {
LABEL_126:
    MEMORY[0x1EEE9AC00](v70);
    v277 = v69;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v279[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v331 = v59;
  v71 = objc_sync_exit(v69);
  if (v71)
  {
    MEMORY[0x1EEE9AC00](v71);
    v277 = v69;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v279[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v292 = v30;
  sub_1CF25116C(v58);
  v72 = v331;
  if ((*(v60 + 48))(v58, 1, v331) == 1)
  {
    __break(1u);
  }

  v73 = v332;
  (*(v60 + 32))(v332, v58, v72);
  sub_1CF50BCA0(v328, v330);
  if (v5)
  {
    (*(v60 + 8))(v73, v72);
    result = sub_1CEFE51CC(v68, type metadata accessor for VFSItem);
LABEL_57:
    v156 = *MEMORY[0x1E69E9840];
    return result;
  }

  v281 = v69;
  v279[2] = 0;
  v282 = v68;
  v69 = v324 + 7;
  v75 = v324[7];
  v283 = v52;
  v280 = v75;
  v75(v52, 1, 1, v325);
  v76 = [objc_opt_self() defaultManager];
  v284 = v60;
  v77 = v327;
  if ((v327 & 4) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1CF9FA450;
    v79 = *MEMORY[0x1E696A370];
    *(v78 + 32) = *MEMORY[0x1E696A370];
    v80 = *(v326 + 10);
    v81 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v82 = v79;
    v83 = [v81 initWithUnsignedShort_];
    *(v78 + 64) = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    *(v78 + 40) = v83;
    sub_1CF4E2F64(v78);
    swift_setDeallocating();
    sub_1CEFCCC44(v78 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    swift_deallocClassInstance();
    type metadata accessor for FileAttributeKey(0);
    sub_1CF00BC50(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
    v84 = sub_1CF9E6618();

    v85 = v332;
    sub_1CF9E5A18();
    v86 = sub_1CF9E6888();

    *&aBlock = 0;
    v87 = [v76 setAttributes:v84 ofItemAtPath:v86 error:&aBlock];

    v88 = aBlock;
    if (!v87)
    {
      goto LABEL_21;
    }

    v89 = aBlock;
    v77 = v327;
  }

  if ((v77 & 0x200) == 0)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CF9FA450;
  v91 = *MEMORY[0x1E696A348];
  *(v90 + 32) = *MEMORY[0x1E696A348];
  v92 = *(v326 + *(type metadata accessor for ItemMetadata() + 36));
  v93 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v94 = v91;
  v95 = [v93 initWithBool_];
  *(v90 + 64) = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  *(v90 + 40) = v95;
  sub_1CF4E2F64(v90);
  swift_setDeallocating();
  sub_1CEFCCC44(v90 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
  swift_deallocClassInstance();
  type metadata accessor for FileAttributeKey(0);
  sub_1CF00BC50(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
  v96 = sub_1CF9E6618();

  v85 = v332;
  sub_1CF9E5A18();
  v97 = sub_1CF9E6888();

  *&aBlock = 0;
  v98 = [v76 setAttributes:v96 ofItemAtPath:v97 error:&aBlock];

  v88 = aBlock;
  if (!v98)
  {
LABEL_21:
    v106 = v88;
    sub_1CF9E57F8();

    swift_willThrow();
    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v284 + 8))(v85, v331);
LABEL_22:
    sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
LABEL_23:
    v107 = v283;
LABEL_56:
    result = sub_1CEFCCC44(v107, &unk_1EC4BEC00, &unk_1CF9FCB60);
    goto LABEL_57;
  }

  v99 = aBlock;
  v77 = v327;
LABEL_12:
  v100 = v332;
  v101 = v329;
  if ((v77 & 0x800000) == 0)
  {
    if ((v77 & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

  v108 = sub_1CF9E5A18();
  v110 = v109;
  v279[1] = v279;
  MEMORY[0x1EEE9AC00](v108);
  v277 = v326;
  v278 = v101;
  v334 = 0;
  v335 = 1;
  v340[0] = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = &v334;
  *(v111 + 24) = sub_1CF50E198;
  *(v111 + 32) = &v279[-4];
  v112 = v110;
  *(v111 + 40) = v340;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1CF1B7F70;
  *(v113 + 24) = v111;
  v338 = sub_1CF50EB9C;
  v339 = v113;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v337 = sub_1CF005DF8;
  *(&v337 + 1) = &block_descriptor_120_0;
  v114 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v115 = fpfs_openat();

  _Block_release(v114);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_112;
  }

  v117 = v284;
  if (v340[0])
  {
    swift_willThrow();
    v118 = v283;
    v119 = v282;
    v120 = v332;
    goto LABEL_27;
  }

  if (v115 < 0)
  {
    v329 = v112;
    v157 = MEMORY[0x1D38683F0](v70);
    v158 = v331;
    v120 = v332;
    if (!v157)
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&aBlock = 0xD00000000000001ALL;
      *(&aBlock + 1) = 0x80000001CFA2DF30;
      v333 = v115;
      v217 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v217);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v218 = aBlock;
      v219 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v220 = sub_1CF9E6108();
      v221 = sub_1CF9E72B8();

      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&aBlock = v223;
        *v222 = 136315650;
        v224 = sub_1CF9E7988();
        v226 = sub_1CEFD0DF0(v224, v225, &aBlock);

        *(v222 + 4) = v226;
        *(v222 + 12) = 2048;
        *(v222 + 14) = 315;
        *(v222 + 22) = 2080;
        *(v222 + 24) = sub_1CEFD0DF0(v218, *(&v218 + 1), &aBlock);
        _os_log_impl(&dword_1CEFC7000, v220, v221, "[ASSERT] ‼️  %s:%lu: %s", v222, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v223, -1, -1);
        MEMORY[0x1D386CDC0](v222, -1, -1);
      }

      (*(v292 + 8))(v285, v291);
      goto LABEL_146;
    }

    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();

      sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
      (*(v117 + 8))(v120, v158);
      sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
      v159 = &v310;
      goto LABEL_67;
    }

    MEMORY[0x1D38683F0]();
    v163 = sub_1CF9E6138();
    v118 = v283;
    v119 = v282;
    if ((v163 & 0x100000000) != 0)
    {
      LODWORD(aBlock) = 22;
    }

    else
    {
      LODWORD(aBlock) = v163;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v167 = v323;
    v168 = v319;
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v320 + 8))(v167, v168);
    swift_willThrow();
LABEL_27:

    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v117 + 8))(v120, v331);
    sub_1CEFE51CC(v119, type metadata accessor for VFSItem);
    v121 = &v310;
LABEL_54:
    v155 = *(v121 - 32);
    goto LABEL_55;
  }

  v100 = v332;
  if (v335)
  {
    __break(1u);
    goto LABEL_120;
  }

  v77 = v327;
  v101 = v329;
  if ((v327 & 0x100000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_50:
  v145 = sub_1CF9E5A18();
  v147 = v146;
  v285 = v279;
  MEMORY[0x1EEE9AC00](v145);
  v277 = v326;
  LOBYTE(v333) = 1;
  v340[0] = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = &v333;
  *(v111 + 24) = sub_1CF50E17C;
  *(v111 + 32) = &v279[-4];
  v148 = v147;
  *(v111 + 40) = v340;
  v149 = swift_allocObject();
  *(v149 + 16) = sub_1CF50EB60;
  *(v149 + 24) = v111;
  v338 = sub_1CF50EB9C;
  v339 = v149;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v337 = sub_1CF005DF8;
  *(&v337 + 1) = &block_descriptor_110_0;
  v114 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v150 = fpfs_openat();

  _Block_release(v114);

  v151 = swift_isEscapingClosureAtFileLocation();

  if (v151)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v152 = v284;
  if (v340[0])
  {
    swift_willThrow();
    v118 = v283;
    v153 = v282;
    v154 = v332;
LABEL_53:

    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v152 + 8))(v154, v331);
    sub_1CEFE51CC(v153, type metadata accessor for VFSItem);
    v121 = &v317;
    goto LABEL_54;
  }

  if (v150 < 0)
  {
    v329 = v148;
    v160 = MEMORY[0x1D38683F0](v70);
    v161 = v331;
    v154 = v332;
    if (!v160)
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&aBlock = 0xD00000000000001ALL;
      *(&aBlock + 1) = 0x80000001CFA2DF30;
      v334 = v150;
      v227 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v227);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v228 = aBlock;
      v229 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v230 = sub_1CF9E6108();
      v231 = sub_1CF9E72B8();

      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *&aBlock = v233;
        *v232 = 136315650;
        v234 = sub_1CF9E7988();
        v236 = sub_1CEFD0DF0(v234, v235, &aBlock);

        *(v232 + 4) = v236;
        *(v232 + 12) = 2048;
        *(v232 + 14) = 315;
        *(v232 + 22) = 2080;
        *(v232 + 24) = sub_1CEFD0DF0(v228, *(&v228 + 1), &aBlock);
        _os_log_impl(&dword_1CEFC7000, v230, v231, "[ASSERT] ‼️  %s:%lu: %s", v232, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v233, -1, -1);
        MEMORY[0x1D386CDC0](v232, -1, -1);
      }

      (*(v292 + 8))(v286, v291);
      goto LABEL_146;
    }

    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v166 = sub_1CF9E6138();
      v118 = v283;
      v153 = v282;
      if ((v166 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v166;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v203 = v323;
      v204 = v319;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v320 + 8))(v203, v204);
      swift_willThrow();
      goto LABEL_53;
    }

    [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    swift_willThrow();

    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v152 + 8))(v154, v161);
    sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
    v159 = &v317;
LABEL_67:
    v162 = *(v159 - 32);
    goto LABEL_23;
  }

  v100 = v332;
  if (v333)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v77 = v327;
  v101 = v329;
LABEL_14:
  v286 = v76;
  if ((v77 & 0x20) == 0)
  {
    if ((v77 & 0x100) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v128 = sub_1CF9E5A18();
    v76 = v129;
    MEMORY[0x1EEE9AC00](v128);
    v277 = v326;
    LOBYTE(v333) = 1;
    v340[0] = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = &v333;
    *(v111 + 24) = sub_1CF50E144;
    *(v111 + 32) = &v279[-4];
    *(v111 + 40) = v340;
    v130 = swift_allocObject();
    *(v130 + 16) = sub_1CF50EB60;
    *(v130 + 24) = v111;
    v338 = sub_1CF50EB9C;
    v339 = v130;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v337 = sub_1CF005DF8;
    *(&v337 + 1) = &block_descriptor_88_0;
    v114 = _Block_copy(&aBlock);

    sub_1CF9E6978();
    v131 = fpfs_openat();

    _Block_release(v114);

    v132 = swift_isEscapingClosureAtFileLocation();

    if ((v132 & 1) == 0)
    {
      v127 = v284;
      if (v340[0])
      {
        goto LABEL_45;
      }

      if (v131 < 0)
      {
        v202 = MEMORY[0x1D38683F0](v70);
        v165 = v331;
        v144 = v332;
        if (v202)
        {
          if (MEMORY[0x1D38683F0]() == 9939394)
          {
            goto LABEL_106;
          }

          goto LABEL_107;
        }

        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        *&aBlock = 0xD00000000000001ALL;
        *(&aBlock + 1) = 0x80000001CFA2DF30;
        v334 = v131;
        v247 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v247);

        MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
        v248 = aBlock;
        v249 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v250 = sub_1CF9E6108();
        v251 = sub_1CF9E72B8();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *&aBlock = v253;
          *v252 = 136315650;
          v254 = sub_1CF9E7988();
          v256 = sub_1CEFD0DF0(v254, v255, &aBlock);

          *(v252 + 4) = v256;
          *(v252 + 12) = 2048;
          *(v252 + 14) = 315;
          *(v252 + 22) = 2080;
          *(v252 + 24) = sub_1CEFD0DF0(v248, *(&v248 + 1), &aBlock);
          _os_log_impl(&dword_1CEFC7000, v250, v251, "[ASSERT] ‼️  %s:%lu: %s", v252, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v253, -1, -1);
          MEMORY[0x1D386CDC0](v252, -1, -1);
        }

        (*(v292 + 8))(v288, v291);
        goto LABEL_146;
      }

      v100 = v332;
      if (v333)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v76 = v286;
      LODWORD(v77) = v327;
      v101 = v329;
      if ((v327 & 0x400000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_38:
      v133 = sub_1CF9E5A18();
      v76 = v134;
      MEMORY[0x1EEE9AC00](v133);
      v277 = v326;
      LOBYTE(v333) = 1;
      v340[0] = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = &v333;
      *(v111 + 24) = sub_1CF50E0CC;
      *(v111 + 32) = &v279[-4];
      *(v111 + 40) = v340;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_1CF50EB60;
      *(v135 + 24) = v111;
      v338 = sub_1CF50EB9C;
      v339 = v135;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v337 = sub_1CF005DF8;
      *(&v337 + 1) = &block_descriptor_77;
      v114 = _Block_copy(&aBlock);

      sub_1CF9E6978();
      v136 = fpfs_openat();

      _Block_release(v114);

      v137 = swift_isEscapingClosureAtFileLocation();

      if ((v137 & 1) == 0)
      {
        v127 = v284;
        if (!v340[0])
        {
          if (v136 < 0)
          {
            v206 = MEMORY[0x1D38683F0](v70);
            v165 = v331;
            v144 = v332;
            if (v206)
            {
              if (MEMORY[0x1D38683F0]() == 9939394)
              {
                goto LABEL_106;
              }

              goto LABEL_107;
            }

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            *&aBlock = 0xD00000000000001ALL;
            *(&aBlock + 1) = 0x80000001CFA2DF30;
            v334 = v136;
            v257 = sub_1CF9E7F98();
            MEMORY[0x1D3868CC0](v257);

            MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
            v258 = aBlock;
            v259 = fpfs_current_or_default_log();
            sub_1CF9E6128();

            v260 = sub_1CF9E6108();
            v261 = sub_1CF9E72B8();

            if (os_log_type_enabled(v260, v261))
            {
              v262 = swift_slowAlloc();
              v263 = swift_slowAlloc();
              *&aBlock = v263;
              *v262 = 136315650;
              v264 = sub_1CF9E7988();
              v266 = sub_1CEFD0DF0(v264, v265, &aBlock);

              *(v262 + 4) = v266;
              *(v262 + 12) = 2048;
              *(v262 + 14) = 315;
              *(v262 + 22) = 2080;
              *(v262 + 24) = sub_1CEFD0DF0(v258, *(&v258 + 1), &aBlock);
              _os_log_impl(&dword_1CEFC7000, v260, v261, "[ASSERT] ‼️  %s:%lu: %s", v262, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v263, -1, -1);
              MEMORY[0x1D386CDC0](v262, -1, -1);
            }

            (*(v292 + 8))(v289, v291);
            goto LABEL_146;
          }

          v100 = v332;
          if (v333)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          v76 = v286;
          LOWORD(v77) = v327;
          v101 = v329;
          if ((v327 & 0x10000) == 0)
          {
LABEL_18:
            if ((v77 & 0x2000) == 0)
            {
LABEL_80:
              v329 = v69;
              v320 = *v328;
              LODWORD(v319) = *(v328 + 8);
              v169 = dispatch_group_create();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
              v170 = swift_allocBox();
              v171 = *(v321 + 56);
              v326 = v172;
              v171(v172, 1, 1, v322);
              dispatch_group_enter(v169);
              v173 = swift_allocObject();
              *(v173 + 16) = v170;
              *(v173 + 24) = v169;
              sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
              v174 = v281[27];
              *&aBlock = MEMORY[0x1E69E7CC0];
              sub_1CF00BC50(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
              v327 = v170;

              v323 = v169;
              v175 = v174;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
              sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
              v176 = v299;
              v177 = v301;
              sub_1CF9E77B8();
              v178 = sub_1CF9E73E8();

              (*(v300 + 8))(v176, v177);
              qos_class_self();
              v179 = v305;
              sub_1CF9E63B8();
              v180 = v302;
              v181 = *(v302 + 48);
              v182 = v303;
              if (v181(v179, 1, v303) == 1)
              {
                (*(v180 + 104))(v304, *MEMORY[0x1E69E7FA0], v182);
                if (v181(v179, 1, v182) != 1)
                {
                  sub_1CEFCCC44(v179, &unk_1EC4BE380, &qword_1CFA01BA0);
                }
              }

              else
              {
                (*(v180 + 32))(v304, v179, v182);
              }

              ObjectType = swift_getObjectType();
              v184 = v306;
              sub_1CF9E6428();
              v185 = swift_allocObject();
              v186 = v320;
              *(v185 + 16) = v281;
              *(v185 + 24) = v186;
              *(v185 + 32) = v319;
              *(v185 + 40) = 0u;
              *(v185 + 56) = 0u;
              *(v185 + 72) = 0u;
              *(v185 + 88) = 0u;
              *(v185 + 104) = 0u;
              *(v185 + 120) = 0u;
              *(v185 + 136) = 0;
              *(v185 + 144) = 2049;
              *(v185 + 152) = v178;
              *(v185 + 160) = sub_1CF50E07C;
              *(v185 + 168) = v173;

              swift_unknownObjectRetain();

              sub_1CEFD5828(0, v184, sub_1CEFD5D08, v185);

              (*(v307 + 8))(v184, v308);
              v187 = v309;
              sub_1CF9E6478();
              v188 = v311;
              sub_1CEFD5B64(v311);
              v189 = v313;
              sub_1CEFD5BD8(v313);
              MEMORY[0x1D3869770](v187, v188, v189, ObjectType);
              v190 = *(v314 + 8);
              v191 = v189;
              v192 = v315;
              v190(v191, v315);
              v190(v188, v192);
              (*(v310 + 8))(v187, v312);
              sub_1CF9E7448();

              swift_unknownObjectRelease();
              v193 = v323;
              sub_1CF9E72F8();
              v194 = v326;
              swift_beginAccess();
              v195 = (*(v321 + 48))(v194, 1, v322);
              v111 = v284;
              if (v195)
              {

                v196 = v297;
                v197 = v325;
                v280(v297, 1, 1, v325);

                v114 = v286;
                v69 = v318;
                v76 = v317;
                v198 = v316;
                goto LABEL_98;
              }

              v199 = v194;
              v200 = v294;
              sub_1CEFCCBDC(v199, v294, &unk_1EC4BF310, &unk_1CF9FDB30);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v114 = v286;
              v69 = v318;
              v76 = v317;
              v198 = v316;
              if (EnumCaseMultiPayload != 1)
              {

                v196 = v297;
                sub_1CEFE55D0(v200, v297, &unk_1EC4BEC00, &unk_1CF9FCB60);

                v197 = v325;
LABEL_98:
                v207 = v196;
                v208 = v283;
                sub_1CEFDA9E0(v207, v283, &unk_1EC4BEC00, &unk_1CF9FCB60);
                sub_1CEFCCBDC(v330, v69, &qword_1EC4C1330, &unk_1CFA13480);
                (*(v296 + 56))(v69, 0, 1, v298);
                sub_1CEFCCBDC(v208, v198, &unk_1EC4BEC00, &unk_1CF9FCB60);
                v209 = v324[6];
                v70 = v209(v198, 1, v197);
                if (v70 != 1)
                {
                  sub_1CEFE4D30(v198, v76, type metadata accessor for VFSItem);
                  v280(v76, 0, 1, v197);
                  if (!v209(v208, 1, v197))
                  {
                    v211 = v293;
                    sub_1CF0015AC(v208, v293, type metadata accessor for VFSItem);
                    sub_1CF717E1C(v328);

                    sub_1CEFE51CC(v211, type metadata accessor for VFSItem);
                    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
                    (*(v111 + 8))(v332, v331);
                    sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
                    v210 = v340[0];
                    goto LABEL_103;
                  }

                  if (qword_1EDEABDE0 == -1)
                  {
LABEL_101:
                    v210 = qword_1EDEABDE8;

                    sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
                    (*(v111 + 8))(v332, v331);
                    sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
                    v208 = v283;
LABEL_103:
                    v212 = v295;
                    sub_1CEFE55D0(v69, v295, &qword_1EC4C1310, &qword_1CFA08AC8);
                    updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
                    sub_1CEFE55D0(v76, v212 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
                    *(v212 + *(updated + 24)) = v210;
                    result = sub_1CEFCCC44(v208, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    goto LABEL_57;
                  }

LABEL_117:
                  swift_once();
                  goto LABEL_101;
                }

                goto LABEL_122;
              }

              v340[0] = *v200;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              swift_willThrowTypedImpl();

              sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
              (*(v111 + 8))(v332, v331);
              sub_1CEFE51CC(v282, type metadata accessor for VFSItem);

              goto LABEL_23;
            }

            goto LABEL_19;
          }

LABEL_43:
          v138 = sub_1CF9E5A18();
          v76 = v139;
          MEMORY[0x1EEE9AC00](v138);
          v277 = v326;
          v278 = v101;
          LOBYTE(v333) = 1;
          v340[0] = 0;
          v111 = swift_allocObject();
          *(v111 + 16) = &v333;
          *(v111 + 24) = sub_1CF50E0A4;
          *(v111 + 32) = &v279[-4];
          *(v111 + 40) = v340;
          v140 = swift_allocObject();
          *(v140 + 16) = sub_1CF50E0C0;
          *(v140 + 24) = v111;
          v338 = sub_1CF005DC8;
          v339 = v140;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v337 = sub_1CF005DF8;
          *(&v337 + 1) = &block_descriptor_25;
          v114 = _Block_copy(&aBlock);

          sub_1CF9E6978();
          v141 = fpfs_openat();

          _Block_release(v114);

          v142 = swift_isEscapingClosureAtFileLocation();

          if ((v142 & 1) == 0)
          {
            v127 = v284;
            if (v340[0])
            {
              goto LABEL_45;
            }

            if ((v141 & 0x80000000) == 0)
            {
              v100 = v332;
              if (v333)
              {
LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

              v76 = v286;
              if ((v327 & 0x2000) == 0)
              {
                goto LABEL_80;
              }

LABEL_19:
              sub_1CF9E5A18();
              fpfs_openflags(0);
              sub_1CF9E6978();
              v102 = openat_s();

              v104 = v284;
              if ((v102 & 0x80000000) == 0)
              {

                LOWORD(aBlock) = 0;
                *(&aBlock + 1) = 0;
                fpfs_get_finder_info();
                LOWORD(v340[0]) = 0;
                v340[1] = 0;
                v105 = type metadata accessor for ItemMetadata();
                sub_1CF50E084(*(v326 + *(v105 + 52)), &aBlock);
                sub_1CF50E084(1, v340);
                fpfs_set_finder_info();
                close(v102);
                goto LABEL_80;
              }

              v205 = MEMORY[0x1D38683F0](v103);
              v338 = 0;
              aBlock = 0u;
              v337 = 0u;
              LOBYTE(v339) = 19;
              sub_1CF19BBE4(v205, &aBlock);
              sub_1CF1969CC(&aBlock);
              swift_willThrow();

              sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
              (*(v104 + 8))(v100, v331);
              goto LABEL_22;
            }

            v214 = MEMORY[0x1D38683F0](v70);
            v165 = v331;
            v144 = v332;
            if (v214)
            {
              if (MEMORY[0x1D38683F0]() == 9939394)
              {
LABEL_106:
                [objc_opt_self() fp:2 errorForDataProtectionClass:?];
                swift_willThrow();

                sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
                (*(v127 + 8))(v144, v165);
                sub_1CEFE51CC(v282, type metadata accessor for VFSItem);
                goto LABEL_23;
              }

LABEL_107:
              MEMORY[0x1D38683F0]();
              v215 = sub_1CF9E6138();
              v118 = v283;
              v143 = v282;
              if ((v215 & 0x100000000) != 0)
              {
                LODWORD(aBlock) = 22;
              }

              else
              {
                LODWORD(aBlock) = v215;
              }

              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
              v216 = v319;
              sub_1CF9E57D8();
              sub_1CF9E53A8();
              (*(v320 + 8))(v323, v216);
              swift_willThrow();
              goto LABEL_46;
            }

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            *&aBlock = 0xD00000000000001ALL;
            *(&aBlock + 1) = 0x80000001CFA2DF30;
            v334 = v141;
            v267 = sub_1CF9E7F98();
            MEMORY[0x1D3868CC0](v267);

            MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
            v268 = aBlock;
            v269 = fpfs_current_or_default_log();
            sub_1CF9E6128();

            v270 = sub_1CF9E6108();
            v271 = sub_1CF9E72B8();

            if (os_log_type_enabled(v270, v271))
            {
              v272 = swift_slowAlloc();
              v273 = swift_slowAlloc();
              *&aBlock = v273;
              *v272 = 136315650;
              v274 = sub_1CF9E7988();
              v276 = sub_1CEFD0DF0(v274, v275, &aBlock);

              *(v272 + 4) = v276;
              *(v272 + 12) = 2048;
              *(v272 + 14) = 315;
              *(v272 + 22) = 2080;
              *(v272 + 24) = sub_1CEFD0DF0(v268, *(&v268 + 1), &aBlock);
              _os_log_impl(&dword_1CEFC7000, v270, v271, "[ASSERT] ‼️  %s:%lu: %s", v272, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v273, -1, -1);
              MEMORY[0x1D386CDC0](v272, -1, -1);
            }

            (*(v292 + 8))(v290, v291);
            goto LABEL_146;
          }

LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

LABEL_45:
        swift_willThrow();
        v118 = v283;
        v143 = v282;
        v144 = v332;
LABEL_46:

        sub_1CEFCCC44(v330, &qword_1EC4C1330, &unk_1CFA13480);
        (*(v127 + 8))(v144, v331);
        sub_1CEFE51CC(v143, type metadata accessor for VFSItem);
LABEL_55:
        v107 = v118;
        goto LABEL_56;
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v122 = sub_1CF9E5A18();
  v76 = v123;
  MEMORY[0x1EEE9AC00](v122);
  v277 = v326;
  LOBYTE(v333) = 1;
  v340[0] = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = &v333;
  *(v111 + 24) = sub_1CF50E160;
  *(v111 + 32) = &v279[-4];
  *(v111 + 40) = v340;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_1CF50EB60;
  *(v124 + 24) = v111;
  v338 = sub_1CF50EB9C;
  v339 = v124;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v337 = sub_1CF005DF8;
  *(&v337 + 1) = &block_descriptor_99;
  v114 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v125 = fpfs_openat();

  _Block_release(v114);

  v126 = swift_isEscapingClosureAtFileLocation();

  if (v126)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v127 = v284;
  if (v340[0])
  {
    goto LABEL_45;
  }

  if ((v125 & 0x80000000) == 0)
  {
    v100 = v332;
    if ((v333 & 1) == 0)
    {

      v76 = v286;
      v77 = v327;
      v101 = v329;
      if ((v327 & 0x100) == 0)
      {
LABEL_16:
        if ((v77 & 0x400000000000) == 0)
        {
LABEL_17:
          if ((v77 & 0x10000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_43;
        }

        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v164 = MEMORY[0x1D38683F0](v70);
  v165 = v331;
  v144 = v332;
  if (v164)
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000001CFA2DF30;
  v334 = v125;
  v237 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v237);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v238 = aBlock;
  v239 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v240 = sub_1CF9E6108();
  v241 = sub_1CF9E72B8();

  if (os_log_type_enabled(v240, v241))
  {
    v242 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    *&aBlock = v243;
    *v242 = 136315650;
    v244 = sub_1CF9E7988();
    v246 = sub_1CEFD0DF0(v244, v245, &aBlock);

    *(v242 + 4) = v246;
    *(v242 + 12) = 2048;
    *(v242 + 14) = 315;
    *(v242 + 22) = 2080;
    *(v242 + 24) = sub_1CEFD0DF0(v238, *(&v238 + 1), &aBlock);
    _os_log_impl(&dword_1CEFC7000, v240, v241, "[ASSERT] ‼️  %s:%lu: %s", v242, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v243, -1, -1);
    MEMORY[0x1D386CDC0](v242, -1, -1);
  }

  (*(v292 + 8))(v287, v291);
LABEL_146:
  LODWORD(v278) = 0;
  v277 = 315;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF5088A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  if (*(a1 + *(type metadata accessor for ItemMetadata() + 64)) == 1)
  {
    v5 = *(*(a2 + 16) + 136);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    sub_1CF9E6978();
  }

  is_ignore_root = fpfs_set_is_ignore_root();
  result = swift_unknownObjectRelease();
  *a3 = is_ignore_root;
  return result;
}

uint64_t sub_1CF508938()
{
  result = sub_1CEFE1894(sub_1CF50E210);
  if (!v0)
  {
    return fpfs_make_fsevent();
  }

  return result;
}

uint64_t sub_1CF508994(int a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for ItemMetadata();
  sub_1CEFCCBDC(a2 + *(v9 + 120), v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    v12 = sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v13 = 0.0;
    goto LABEL_6;
  }

  sub_1CF9E5C98();
  v13 = v14;
  v15 = v14;
  v12 = (*(v11 + 8))(v8, v10);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
  }

  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v19[0] = v13;
  v19[1] = 0;
  MEMORY[0x1EEE9AC00](v12);
  *(&v18 - 4) = a1;
  *(&v18 - 1) = v19;
  result = sub_1CEFE1894(sub_1CF50E264);
  if (!v2)
  {
    result = fpfs_make_fsevent();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF508BC8(int a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ItemMetadata() + 132);
  if (*(a2 + v4))
  {
    v5 = *(a2 + v4);
  }

  else
  {
    v5 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
  }

  sub_1CF1ACD90(v5, a1);
}

void sub_1CF508C54(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ItemMetadata();
  if (*(a2 + *(v4 + 84)))
  {
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1CEFE1894(sub_1CF50E2A0);
    if (!v2)
    {
      MEMORY[0x1EEE9AC00](v5);
      sub_1CEFE1894(sub_1CF50E2C0);
    }
  }

  else
  {
    if (qword_1EC4BCD90 != -1)
    {
      swift_once();
    }

    v6 = byte_1EC4EBF48;
    v7 = byte_1EC4EBF49;
    v8 = byte_1EC4EBF4A;
    v17 = qword_1EC4EBF30;
    v18 = *algn_1EC4EBF38;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1CEFDB088;
    v16 = &block_descriptor_123;
    v9 = qword_1EC4EBF40;
    v10 = _Block_copy(&aBlock);

    aBlock = v10;
    v14 = v9;
    LOBYTE(v15) = v6;
    BYTE1(v15) = v7;
    BYTE2(v15) = v8;
    MEMORY[0x1EEE9AC00](v11);
    sub_1CEFE1894(sub_1CF50E2F4);
    _Block_release(v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF508EAC@<X0>(int a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  result = objc_sync_enter(v5);
  if (result)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](result);
    v16 = v5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v7 = *(v5 + 160);

  v8 = objc_sync_exit(v5);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v16 = v5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v9 = *(v7 + 32);

  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF50E314;
  *(v11 + 24) = v5;
  aBlock[4] = sub_1CEFDB240;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFDB270;
  aBlock[3] = &block_descriptor_134;
  v12 = _Block_copy(aBlock);

  v13 = fpfs_fgetfileattrs();
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }

  *a3 = v13;
  return result;
}

uint64_t sub_1CF50911C@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = qword_1CFA08CA8[*(a1 + *(type metadata accessor for ItemMetadata() + 84))];
  result = fpfs_update_purgency();
  *a2 = result;
  return result;
}

uint64_t sub_1CF50917C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v40 = a1;
  v41 = a2;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v40 - v14;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 3);
  v21 = *(a3 + 4);
  v23 = *(a3 + 40);
  v24 = v3;
  v25 = *(v3 + 16);
  v50 = *(a3 + 40);
  v43 = *a3;
  *(&v26 + 1) = *(&v43 + 1);
  v46 = v43;
  *&v26 = *(a3 + 2);
  v42 = v26;
  v47 = v26;
  v48 = v22;
  v49 = v21;

  sub_1CF263024(&v50, &v46, 2049, v15);

  if (!v4)
  {
    v28 = v24;
    v29 = v44;
    v30 = v45;
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v31 = (v23 - 1) < 2 || v42 == 0;
      v32 = v31;
      if (v31)
      {
        v33 = v43;
      }

      else
      {
        v33 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v34 = v33;
      *(v34 + 8) = v32;
      *(v34 + 16) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0u;
      *(v34 + 64) = 0u;
      *(v34 + 80) = 0u;
      *(v34 + 96) = 0u;
      *(v34 + 112) = 0u;
      sub_1CF2A8DE0(v34);
      return swift_willThrow();
    }

    else
    {
      v35 = sub_1CEFE4D30(v15, v20, type metadata accessor for VFSItem);
      v36 = *(v20 + 2);
      v37 = v20[24];
      MEMORY[0x1EEE9AC00](v35);
      *(&v40 - 2) = v28;
      *(&v40 - 1) = v20;
      sub_1CF716664(v29, v30, v38, v39, sub_1CF50E060, (&v40 - 4));
      sub_1CEFE55D0(v29, v40, &qword_1EC4C1330, &unk_1CFA13480);
      sub_1CEFE4D30(v30, v41, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      return sub_1CEFE51CC(v20, type metadata accessor for VFSItem);
    }
  }

  return result;
}

uint64_t sub_1CF509554@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v31 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF50BCA0(a2, a3);
  if (!v3)
  {
    v31[1] = 0;
    sub_1CF0015AC(a2, v19, type metadata accessor for VFSItem);
    v21 = *(a1 + 16);
    v22 = objc_sync_enter(v21);
    if (!v22)
    {
      v23 = objc_sync_exit(v21);
      if (v23)
      {
        MEMORY[0x1EEE9AC00](v23);
        v31[-2] = v21;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v31[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      sub_1CF25116C(v10);
      v22 = (*(v12 + 48))(v10, 1, v11);
      if (v22 != 1)
      {
        (*(v12 + 32))(v15, v10, v11);
        v24 = [objc_opt_self() defaultManager];
        v25 = sub_1CF9E5928();
        v32[0] = 0;
        v26 = [v24 removeItemAtURL:v25 error:v32];

        if (v26)
        {
          v27 = v21[32];
          v28 = v32[0];
          sub_1CF4D463C();
          (*(v12 + 8))(v15, v11);
          result = sub_1CEFE51CC(v19, type metadata accessor for VFSItem);
        }

        else
        {
          v29 = v32[0];
          sub_1CF9E57F8();

          swift_willThrow();
          (*(v12 + 8))(v15, v11);
          sub_1CEFE51CC(v19, type metadata accessor for VFSItem);
          result = sub_1CEFCCC44(a3, &qword_1EC4C1330, &unk_1CFA13480);
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    MEMORY[0x1EEE9AC00](v22);
    v31[-2] = v21;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v31[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

LABEL_8:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF509948()
{
  v2 = sub_1CF9E53C8();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5A58();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sleep(2u);
  v14 = *(v0 + 16);
  v15 = objc_sync_enter(v14);
  if (v15)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v15);
    v39 = v14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v46 = v1;
  v40 = v9;
  v41 = v6;
  v42 = v5;
  v16 = v14[20];

  v17 = objc_sync_exit(v14);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17);
    v39 = v14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v14 = *(v16 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v18 = v47;
  v49 = v14[2];
  if (!v49)
  {
  }

  v19 = 0;
  v48 = (v10 + 8);
  while (1)
  {
    if (v19 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v10 + 16))(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v18);
    sub_1CF9E5A18();
    sub_1CF9E6978();

    fpfs_unload_hierarchy();

    sub_1CF9E5A18();
    sub_1CF9E6978();

    v20 = fpfs_test_trigger_purge();

    if (v20 < 0)
    {
      break;
    }

    ++v19;
    v15 = (*v48)(v13, v18);
    if (v49 == v19)
    {
    }
  }

  if (MEMORY[0x1D38683F0](v21))
  {

    if (MEMORY[0x1D38683F0](v23) == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();
      v24 = v47;
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v25 = sub_1CF9E6138();
      v24 = v47;
      if ((v25 & 0x100000000) != 0)
      {
        LODWORD(v50) = 22;
      }

      else
      {
        LODWORD(v50) = v25;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v26 = v43;
      v27 = v45;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v44 + 8))(v26, v27);
      swift_willThrow();
    }

    return (*v48)(v13, v24);
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();

    v50 = 0xD00000000000001ALL;
    v51 = 0x80000001CFA2DF30;
    v52 = v20;
    v28 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v28);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v29 = v50;
    v30 = v51;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E72B8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315650;
      v36 = sub_1CF9E7988();
      v38 = sub_1CEFD0DF0(v36, v37, &v50);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2048;
      *(v34 + 14) = 315;
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_1CEFD0DF0(v29, v30, &v50);
      _os_log_impl(&dword_1CEFC7000, v32, v33, "[ASSERT] ‼️  %s:%lu: %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v41 + 8))(v40, v42);
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF50A050(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for VFSItem(0);
  v4 = (a1 + *(v3 + 36));
  v5 = *v4;
  v6 = (a1 + *(v3 + 56));
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6;
  }

  v8 = *(v4 + 2);

  v9 = *(v1 + 16);
  v10 = objc_sync_enter(v9);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v26 = v9;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v11 = v9[20];

  v12 = objc_sync_exit(v9);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v26 = v9;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v13 = *(v11 + 16);

  v30 = v5;
  v31 = 0;
  v32 = v7;
  v33 = v8;
  v34 = 0;
  v35 = 0;
  v27 = -1;
  v14 = fpfs_openfdbyhandle();
  if (v14 < 0)
  {
    v18 = MEMORY[0x1D38683F0]();
    LODWORD(v28[0]) = 0;
    BYTE4(v28[0]) = 1;
    v29 = 0;
    v19 = sub_1CF19BBE4(v18, v28);
    sub_1CF1969CC(v28);
    swift_willThrow();
    v20 = v19;
    LODWORD(v28[0]) = sub_1CF9E5308();
    sub_1CF196978();
    v21 = sub_1CF9E5658();

    if ((v21 & 1) == 0)
    {

      goto LABEL_14;
    }

    v30 = v5;
    v31 = 0;
    v32 = v7;
    v33 = v8;
    v34 = 0;
    v35 = 0;
    v27 = -1;
    v22 = fpfs_openfdbyhandle();
    if (v22 < 0)
    {
      v23 = MEMORY[0x1D38683F0]();
      LODWORD(v28[0]) = 0;
      BYTE4(v28[0]) = 1;
      v29 = 0;
      sub_1CF19BBE4(v23, v28);
      sub_1CF1969CC(v28);
      swift_willThrow();

      goto LABEL_14;
    }

    v15 = v22;
  }

  else
  {
    v15 = v14;
  }

  MEMORY[0x1EEE9AC00](v16);
  LODWORD(v26) = v15;
  sub_1CEFE1894(sub_1CF50E02C);
  result = close(v15);
LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF50A3E0(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v49 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for VFSItem(0);
  v9 = (a1 + *(v8 + 36));
  v10 = *v9;
  v11 = (a1 + *(v8 + 56));
  if (*(v11 + 4))
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11;
  }

  v13 = *(v9 + 2);

  v14 = *(v2 + 16);
  v15 = objc_sync_enter(v14);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    v37 = v14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v36, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v39 = a2;
  v16 = v14[20];

  v17 = objc_sync_exit(v14);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17);
    v37 = v14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v36, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v18 = *(v16 + 16);

  v43 = v10;
  v44 = 0;
  v45 = v12;
  v46 = v13;
  v47 = 0;
  v48 = 0;
  v40 = -1;
  v19 = fpfs_openfdbyhandle();
  if (v19 < 0)
  {
    v29 = MEMORY[0x1D38683F0]();
    LODWORD(v41[0]) = 0;
    BYTE4(v41[0]) = 1;
    v42 = 0;
    v30 = sub_1CF19BBE4(v29, v41);
    sub_1CF1969CC(v41);
    swift_willThrow();
    v31 = v30;
    LODWORD(v41[0]) = sub_1CF9E5308();
    sub_1CF196978();
    v32 = sub_1CF9E5658();

    if ((v32 & 1) == 0)
    {

      goto LABEL_16;
    }

    v43 = v10;
    v44 = 0;
    v45 = v12;
    v46 = v13;
    v47 = 0;
    v48 = 0;
    v40 = -1;
    v33 = fpfs_openfdbyhandle();
    if (v33 < 0)
    {
      v34 = MEMORY[0x1D38683F0]();
      LODWORD(v41[0]) = 0;
      BYTE4(v41[0]) = 1;
      v42 = 0;
      sub_1CF19BBE4(v34, v41);
      sub_1CF1969CC(v41);
      swift_willThrow();

      goto LABEL_16;
    }

    v20 = v33;

    v4 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = dup(v20);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  LODWORD(v37) = v23;
  v38 = v39;
  sub_1CEFE1894(sub_1CF50DFE8);
  if (!v4)
  {
    v24 = *a1;
    v25 = *(a1 + 8);
    swift_beginAccess();
    v26 = *(v5 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v5 + 24);
    *(v5 + 24) = 0x8000000000000000;
    sub_1CF1D27C0(v22, v24, v25, isUniquelyReferenced_nonNull_native);
    *(v5 + 24) = v43;
    swift_endAccess();
  }

  result = close(v20);
LABEL_16:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF50A7C8(__int128 *a1, uint64_t a2)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(a1 + 40);
  v17 = *(v2 + 16);
  v32 = *(a1 + 40);
  v26 = *a1;
  *(&v18 + 1) = *(&v26 + 1);
  v28 = v26;
  *&v18 = *(a1 + 2);
  v25 = v18;
  v29 = v18;
  v30 = v15;
  v31 = v14;

  sub_1CF263024(&v32, &v28, 2049, v8);

  if (!v3)
  {
    v20 = v27;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v21 = (v16 - 1) < 2 || v25 == 0;
      v22 = v21;
      if (v21)
      {
        v23 = v26;
      }

      else
      {
        v23 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v24 = v23;
      *(v24 + 8) = v22;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      sub_1CF2A8DE0(v24);
      return swift_willThrow();
    }

    else
    {
      sub_1CEFE4D30(v8, v13, type metadata accessor for VFSItem);
      sub_1CF50A3E0(v13, v20);
      return sub_1CEFE51CC(v13, type metadata accessor for VFSItem);
    }
  }

  return result;
}

uint64_t sub_1CF50AA74(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = sub_1CF7BF2C0(v4, v5);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = v7;
  v10 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D0A44();
  }

  v13 = *(*(v12 + 56) + 4 * v9);
  sub_1CF1CFB68(v9, v12);
  *(v3 + 24) = v12;
  v14 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v14);
  result = sub_1CEFE1894(sub_1CF50DFB0);
  if (!v2)
  {
    return close(v13);
  }

  return result;
}

uint64_t sub_1CF50AB98(__int128 *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = *(a1 + 40);
  v16 = *(v1 + 16);
  v29 = *(a1 + 40);
  v24 = *a1;
  *(&v17 + 1) = *(&v24 + 1);
  v25 = v24;
  *&v17 = *(a1 + 2);
  v23 = v17;
  v26 = v17;
  v27 = v14;
  v28 = v13;

  sub_1CF263024(&v29, &v25, 2049, v7);

  if (!v2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v19 = (v15 - 1) < 2 || v23 == 0;
      v20 = v19;
      if (v19)
      {
        v21 = v24;
      }

      else
      {
        v21 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v22 = v21;
      *(v22 + 8) = v20;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 80) = 0u;
      *(v22 + 96) = 0u;
      *(v22 + 112) = 0u;
      sub_1CF2A8DE0(v22);
      return swift_willThrow();
    }

    else
    {
      sub_1CEFE4D30(v7, v12, type metadata accessor for VFSItem);
      sub_1CF50AA74(v12);
      return sub_1CEFE51CC(v12, type metadata accessor for VFSItem);
    }
  }

  return result;
}

uint64_t sub_1CF50AE34(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for VFSItem(0);
  v4 = (a1 + *(v3 + 36));
  v5 = *v4;
  v6 = (a1 + *(v3 + 56));
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6;
  }

  v8 = *(v4 + 2);

  v9 = *(v1 + 16);
  v10 = objc_sync_enter(v9);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v26 = v9;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v11 = v9[20];

  v12 = objc_sync_exit(v9);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v26 = v9;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v13 = *(v11 + 16);

  v30 = v5;
  v31 = 0;
  v32 = v7;
  v33 = v8;
  v34 = 0;
  v35 = 0;
  v27 = -1;
  v14 = fpfs_openfdbyhandle();
  if (v14 < 0)
  {
    v18 = MEMORY[0x1D38683F0]();
    LODWORD(v28[0]) = 0;
    BYTE4(v28[0]) = 1;
    v29 = 0;
    v19 = sub_1CF19BBE4(v18, v28);
    sub_1CF1969CC(v28);
    swift_willThrow();
    v20 = v19;
    LODWORD(v28[0]) = sub_1CF9E5308();
    sub_1CF196978();
    v21 = sub_1CF9E5658();

    if ((v21 & 1) == 0)
    {

      goto LABEL_14;
    }

    v30 = v5;
    v31 = 0;
    v32 = v7;
    v33 = v8;
    v34 = 0;
    v35 = 0;
    v27 = -1;
    v22 = fpfs_openfdbyhandle();
    if (v22 < 0)
    {
      v23 = MEMORY[0x1D38683F0]();
      LODWORD(v28[0]) = 0;
      BYTE4(v28[0]) = 1;
      v29 = 0;
      sub_1CF19BBE4(v23, v28);
      sub_1CF1969CC(v28);
      swift_willThrow();

      goto LABEL_14;
    }

    v15 = v22;
  }

  else
  {
    v15 = v14;
  }

  MEMORY[0x1EEE9AC00](v16);
  LODWORD(v26) = v15;
  sub_1CEFE1894(sub_1CF50DF94);
  result = close(v15);
LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF50B194@<X0>(_DWORD *a1@<X8>)
{
  sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
  v2 = sub_1CF9E7598();
  [v2 UTF8String];
  v3 = v2;
  result = fpfs_fset_pause_sync_bundleID();
  *a1 = result;
  return result;
}

uint64_t sub_1CF50B250(__int128 *a1, void (*a2)(char *))
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(a1 + 40);
  v17 = *(v2 + 16);
  v32 = *(a1 + 40);
  v26 = *a1;
  *(&v18 + 1) = *(&v26 + 1);
  v28 = v26;
  *&v18 = *(a1 + 2);
  v25 = v18;
  v29 = v18;
  v30 = v15;
  v31 = v14;

  sub_1CF263024(&v32, &v28, 2049, v8);

  if (!v3)
  {
    v20 = v27;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v21 = (v16 - 1) < 2 || v25 == 0;
      v22 = v21;
      if (v21)
      {
        v23 = v26;
      }

      else
      {
        v23 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v24 = v23;
      *(v24 + 8) = v22;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      sub_1CF2A8DE0(v24);
      return swift_willThrow();
    }

    else
    {
      sub_1CEFE4D30(v8, v13, type metadata accessor for VFSItem);
      v20(v13);
      return sub_1CEFE51CC(v13, type metadata accessor for VFSItem);
    }
  }

  return result;
}

uint64_t sub_1CF50B4FC(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for VFSItem(0);
  v6 = (a1 + *(v5 + 36));
  v7 = *v6;
  v8 = (a1 + *(v5 + 56));
  if (*(v8 + 4))
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8;
  }

  v10 = *(v6 + 2);

  v11 = *(v2 + 16);
  v12 = objc_sync_enter(v11);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v28 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v13 = v11[20];

  v14 = objc_sync_exit(v11);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v28 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v15 = *(v13 + 16);

  v33 = v7;
  v34 = 0;
  v35 = v9;
  v36 = v10;
  v37 = 0;
  v38 = 0;
  v30 = -1;
  v16 = fpfs_openfdbyhandle();
  if (v16 < 0)
  {
    v20 = MEMORY[0x1D38683F0]();
    LODWORD(v31[0]) = 0;
    BYTE4(v31[0]) = 1;
    v32 = 0;
    v21 = sub_1CF19BBE4(v20, v31);
    sub_1CF1969CC(v31);
    swift_willThrow();
    v22 = v21;
    LODWORD(v31[0]) = sub_1CF9E5308();
    sub_1CF196978();
    v23 = sub_1CF9E5658();

    if ((v23 & 1) == 0)
    {

      goto LABEL_14;
    }

    v33 = v7;
    v34 = 0;
    v35 = v9;
    v36 = v10;
    v37 = 0;
    v38 = 0;
    v30 = -1;
    v24 = fpfs_openfdbyhandle();
    if (v24 < 0)
    {
      v25 = MEMORY[0x1D38683F0]();
      LODWORD(v31[0]) = 0;
      BYTE4(v31[0]) = 1;
      v32 = 0;
      sub_1CF19BBE4(v25, v31);
      sub_1CF1969CC(v31);
      swift_willThrow();

      goto LABEL_14;
    }

    v17 = v24;
  }

  else
  {
    v17 = v16;
  }

  MEMORY[0x1EEE9AC00](v18);
  v28 = a2;
  v29 = v17;
  sub_1CEFE1894(sub_1CF50DF4C);
  result = close(v17);
LABEL_14:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF50B864(__int128 *a1, void *a2)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(a1 + 40);
  v17 = *(v2 + 16);
  v32 = *(a1 + 40);
  v26 = *a1;
  *(&v18 + 1) = *(&v26 + 1);
  v28 = v26;
  *&v18 = *(a1 + 2);
  v25 = v18;
  v29 = v18;
  v30 = v15;
  v31 = v14;

  sub_1CF263024(&v32, &v28, 2049, v8);

  if (!v3)
  {
    v20 = v27;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v21 = (v16 - 1) < 2 || v25 == 0;
      v22 = v21;
      if (v21)
      {
        v23 = v26;
      }

      else
      {
        v23 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v24 = v23;
      *(v24 + 8) = v22;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      sub_1CF2A8DE0(v24);
      return swift_willThrow();
    }

    else
    {
      sub_1CEFE4D30(v8, v13, type metadata accessor for VFSItem);
      sub_1CF50B4FC(v13, v20);
      return sub_1CEFE51CC(v13, type metadata accessor for VFSItem);
    }
  }

  return result;
}

uint64_t sub_1CF50BB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for VFSItem(0) + 28);
  v6 = *(v5 + *(type metadata accessor for ItemMetadata() + 132));
  if (v6 && *(v6 + 16) && (v7 = sub_1CEFE4328(0xD000000000000026, 0x80000001CFA513F0), (v8 & 1) != 0) && (v9 = (*(v6 + 56) + 16 * v7), v10 = *v9, v11 = v9[1], sub_1CEFE42D4(*v9, v11), v12 = sub_1CF661A30(v10, v11), sub_1CEFE4714(v10, v11), (v12 & 0x100) == 0))
  {
    v13 = 0;
    v23 = v12;
  }

  else
  {
    v23 = 0;
    v13 = 1;
  }

  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = a1[2];
  v17 = *(a1 + 24);
  v19 = a1[4];
  v18 = a1[5];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  sub_1CF0015AC(v5, a3 + v20[9], type metadata accessor for ItemMetadata);
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v18;
  *(a3 + v20[10]) = a2;
  v21 = a3 + v20[11];
  *v21 = v23;
  *(v21 + 8) = v13;
  *(a3 + v20[12]) = 0;

  return sub_1CF50D18C(a2);
}

uint64_t sub_1CF50BCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a1;
  v139 = a2;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v181 = *(v180 - 8);
  isa = v181[8].isa;
  MEMORY[0x1EEE9AC00](v180 - 8);
  v140 = (&v139 - v3);
  v171 = sub_1CF9E6388();
  v179 = *(v171 - 8);
  v4 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = (&v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v169 = &v139 - v7;
  v168 = sub_1CF9E6498();
  v178 = *(v168 - 8);
  v8 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v166 = &v139 - v12;
  v165 = sub_1CF9E63D8();
  v13 = *(v165 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1CF9E6448();
  v177 = *(v163 - 8);
  v16 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1CF9E73D8();
  v18 = *(v161 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v158 = &v139 - v23;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v24 = *(*(v183 - 1) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v172 = (&v139 - v28);
  v29 = type metadata accessor for VFSItem(0);
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v141 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v139 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v139 - v37);
  sub_1CF0015AC(v182, &v139 - v37, type metadata accessor for VFSItem);
  v155 = (v18 + 8);
  v156 = v181 + 7;
  v154 = (v13 + 48);
  v144 = (v13 + 32);
  v143 = *MEMORY[0x1E69E7FA0];
  v142 = (v13 + 104);
  v152 = (v179 + 8);
  v153 = (v177 + 8);
  v150 = &v181[6];
  v151 = (v178 + 8);
  v145 = (v30 + 56);
  v146 = (v30 + 48);
  v39 = 100;
  v149 = xmmword_1CFA08A30;
  v160 = v38;
  v157 = v29;
  v147 = v35;
  v148 = v26;
  while (1)
  {
    v40 = v38 + v29[7];
    if (*v40 == 1 || v40[*(type metadata accessor for ItemMetadata() + 80)] == 1)
    {
LABEL_21:
      type metadata accessor for InProcessVFSFileTreeTester();
      sub_1CF50BB10(v38, 0xF000000000000007, v139);
      return sub_1CEFE51CC(v38, type metadata accessor for VFSItem);
    }

    v179 = v39;
    v182 = *(v173 + 16);
    sub_1CF0015AC(v38, v35, type metadata accessor for VFSItem);
    v41 = v183;
    v42 = &v26[v183[13]];
    sub_1CEFE528C(v212);
    v43 = v212[13];
    *(v42 + 12) = v212[12];
    *(v42 + 13) = v43;
    *(v42 + 14) = v212[14];
    *(v42 + 30) = v213;
    v44 = v212[9];
    *(v42 + 8) = v212[8];
    *(v42 + 9) = v44;
    v45 = v212[11];
    *(v42 + 10) = v212[10];
    *(v42 + 11) = v45;
    v46 = v212[5];
    *(v42 + 4) = v212[4];
    *(v42 + 5) = v46;
    v47 = v212[7];
    *(v42 + 6) = v212[6];
    *(v42 + 7) = v47;
    v48 = v212[1];
    *v42 = v212[0];
    *(v42 + 1) = v48;
    v49 = v212[3];
    *(v42 + 2) = v212[2];
    *(v42 + 3) = v49;
    v50 = &v26[v41[14]];
    *v50 = 0u;
    *(v50 + 1) = 0u;
    v50[32] = 1;
    v51 = &v26[v41[15]];
    *v51 = 0;
    *(v51 + 1) = 0;
    v51[16] = 1;
    v52 = *v35;
    v53 = v35[8];
    *v26 = *v35;
    v26[8] = v53;
    if (v53 == 2 && v52 <= 1)
    {
      *(v26 + 2) = v52;
      v26[24] = 2;
      v54 = *(v35 + 2);
      v55 = v35[24];
    }

    else
    {
      v54 = *(v35 + 2);
      v55 = v35[24];
      *(v26 + 2) = v54;
      v26[24] = v55;
    }

    v56 = &v35[v29[9]];
    v57 = *v56;
    v58 = *(v56 + 2);
    v59 = *(v56 + 2);
    LOBYTE(v56) = v56[24];
    v60 = *(v35 + 4);
    v61 = *(v35 + 5);
    *(v26 + 4) = v57;
    *(v26 + 10) = v58;
    *(v26 + 6) = v59;
    v26[56] = v56;
    v26[80] = v55;
    *(v26 + 11) = v60;
    *(v26 + 12) = v61;
    *(v26 + 8) = 0;
    *(v26 + 9) = v54;
    *(v26 + 13) = 0;
    *(v26 + 14) = 0;
    *(v26 + 15) = 0;
    *(v26 + 16) = v60;
    *(v26 + 17) = v61;
    v62 = v29;
    sub_1CF0015AC(&v35[v29[7]], &v26[v183[12]], type metadata accessor for ItemMetadata);
    v63 = &v35[v29[8]];
    v64 = *(v63 + 13);
    v206 = *(v63 + 12);
    v207 = v64;
    v208 = *(v63 + 14);
    v209 = *(v63 + 30);
    v65 = *(v63 + 9);
    v202 = *(v63 + 8);
    v203 = v65;
    v66 = *(v63 + 11);
    v204 = *(v63 + 10);
    v205 = v66;
    v67 = *(v63 + 5);
    v198 = *(v63 + 4);
    v199 = v67;
    v68 = *(v63 + 7);
    v200 = *(v63 + 6);
    v201 = v68;
    v69 = *(v63 + 3);
    v196 = *(v63 + 2);
    v197 = v69;
    v70 = *(v63 + 1);
    v194 = *v63;
    v195 = v70;
    v71 = *(v42 + 13);
    v210[12] = *(v42 + 12);
    v210[13] = v71;
    v210[14] = *(v42 + 14);
    v211 = *(v42 + 30);
    v72 = *(v42 + 9);
    v210[8] = *(v42 + 8);
    v210[9] = v72;
    v73 = *(v42 + 11);
    v210[10] = *(v42 + 10);
    v210[11] = v73;
    v74 = *(v42 + 5);
    v210[4] = *(v42 + 4);
    v210[5] = v74;
    v75 = *(v42 + 7);
    v210[6] = *(v42 + 6);
    v210[7] = v75;
    v76 = *(v42 + 1);
    v210[0] = *v42;
    v210[1] = v76;
    v77 = *(v42 + 3);
    v210[2] = *(v42 + 2);
    v210[3] = v77;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCBDC(&v194, &v186, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v210, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v78 = v207;
    *(v42 + 12) = v206;
    *(v42 + 13) = v78;
    *(v42 + 14) = v208;
    *(v42 + 30) = v209;
    v79 = v203;
    *(v42 + 8) = v202;
    *(v42 + 9) = v79;
    v80 = v205;
    *(v42 + 10) = v204;
    *(v42 + 11) = v80;
    v81 = v199;
    *(v42 + 4) = v198;
    *(v42 + 5) = v81;
    v82 = v201;
    *(v42 + 6) = v200;
    *(v42 + 7) = v82;
    v83 = v195;
    *v42 = v194;
    *(v42 + 1) = v83;
    v84 = v197;
    *(v42 + 2) = v196;
    *(v42 + 3) = v84;
    v85 = v183;
    *&v26[v183[16]] = 0;
    v86 = sub_1CF252CF4();
    v88 = v87;
    sub_1CEFE51CC(v35, type metadata accessor for VFSItem);
    v89 = &v26[v85[17]];
    *v89 = v86;
    v89[1] = v88;
    v90 = v172;
    sub_1CEFE55D0(v26, v172, &unk_1EC4BE360, &qword_1CF9FE650);
    v91 = v182;
    v92 = v220;
    v93 = sub_1CF50D8D4(v90);
    if (!v92)
    {
      v137 = v93;
      sub_1CEFCCC44(v90, &unk_1EC4BE360, &qword_1CF9FE650);
      type metadata accessor for InProcessVFSFileTreeTester();

      sub_1CF50BB10(v38, v137, v139);

      return sub_1CEFE51CC(v38, type metadata accessor for VFSItem);
    }

    v220 = v92;
    sub_1CEFCCC44(v90, &unk_1EC4BE360, &qword_1CF9FE650);
    v176 = *v38;
    v175 = *(v38 + 8);
    v94 = v38 + v62[9];
    v95 = *v94;
    v96 = *(v94 + 2);
    v97 = *(v94 + 2);
    v98 = v38[2];
    v99 = *(v38 + 24);
    v101 = v38[4];
    v100 = v38[5];
    v185 = v94[24];
    *&v186 = v95;
    DWORD2(v186) = v96;
    *&v187 = v97;
    BYTE8(v187) = v185;
    *&v188 = 0;
    *(&v188 + 1) = v98;
    LOBYTE(v189) = v99;
    *(&v189 + 1) = v101;
    v190 = v100;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v214 = v186;
    v215 = v187;
    v218 = v100;
    v219 = 0u;
    v216 = v188;
    v217 = v189;

    v102 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
    v103 = swift_allocBox();
    v104 = v156->isa;
    v177 = v105;
    v104(v105, 1, 1, v180);
    dispatch_group_enter(v102);
    v106 = swift_allocObject();
    *(v106 + 16) = v103;
    *(v106 + 24) = v102;
    v107 = v106;
    v174 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v108 = *(v91 + 216);
    v184[0] = MEMORY[0x1E69E7CC0];
    sub_1CF00BC50(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v178 = v103;

    v181 = v102;
    v109 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v110 = v159;
    v111 = v161;
    sub_1CF9E77B8();
    v112 = sub_1CF9E73E8();

    (*v155)(v110, v111);
    qos_class_self();
    v113 = v166;
    sub_1CF9E63B8();
    v114 = *v154;
    v115 = v165;
    if ((*v154)(v113, 1, v165) == 1)
    {
      (*v142)(v164, v143, v115);
      if (v114(v113, 1, v115) != 1)
      {
        sub_1CEFCCC44(v113, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*v144)(v164, v113, v115);
    }

    ObjectType = swift_getObjectType();
    v117 = v162;
    sub_1CF9E6428();
    v118 = swift_allocObject();
    v119 = v217;
    *(v118 + 72) = v216;
    *(v118 + 88) = v119;
    v120 = v219;
    *(v118 + 104) = v218;
    *(v118 + 120) = v120;
    v121 = v215;
    *(v118 + 40) = v214;
    v122 = v176;
    *(v118 + 16) = v182;
    *(v118 + 24) = v122;
    *(v118 + 32) = v175;
    *(v118 + 56) = v121;
    *(v118 + 136) = v149;
    *(v118 + 152) = v112;
    *(v118 + 160) = sub_1CF50EBA0;
    *(v118 + 168) = v107;

    sub_1CEFCCBDC(&v186, v184, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v117, sub_1CF50EB68, v118);

    (*v153)(v117, v163);
    v123 = v167;
    sub_1CF9E6478();
    v124 = v169;
    sub_1CEFD5B64(v169);
    v125 = v170;
    sub_1CEFD5BD8(v170);
    MEMORY[0x1D3869770](v123, v124, v125, ObjectType);
    v126 = *v152;
    v127 = v125;
    v128 = v171;
    (*v152)(v127, v171);
    v126(v124, v128);
    (*v151)(v123, v168);
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    sub_1CEFCCC44(&v186, &unk_1EC4BE330, &unk_1CF9FF010);

    v129 = v181;
    sub_1CF9E72F8();
    v130 = v177;
    swift_beginAccess();
    v131 = (*v150)(v130, 1, v180);
    v132 = v220;
    if (!v131)
    {
      break;
    }

    v29 = v157;
    v133 = v158;
    (*v145)(v158, 1, 1, v157);

    v38 = v160;
    v26 = v148;
LABEL_19:
    if ((*v146)(v133, 1, v29) == 1)
    {
      sub_1CEFCCC44(v133, &unk_1EC4BEC00, &unk_1CF9FCB60);
      usleep(0x7A120u);
    }

    else
    {
      sub_1CEFE51CC(v38, type metadata accessor for VFSItem);

      v136 = v141;
      sub_1CEFE4D30(v133, v141, type metadata accessor for VFSItem);
      sub_1CEFE4D30(v136, v38, type metadata accessor for VFSItem);
    }

    v220 = 0;
    v39 = v179 - 1;
    v35 = v147;
    if (v179 == 1)
    {
      goto LABEL_21;
    }
  }

  v134 = v140;
  sub_1CEFCCBDC(v130, v140, &unk_1EC4BF310, &unk_1CF9FDB30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v160;
  v29 = v157;
  v133 = v158;
  v26 = v148;
  if (EnumCaseMultiPayload != 1)
  {

    sub_1CEFE55D0(v134, v133, &unk_1EC4BEC00, &unk_1CF9FCB60);

    goto LABEL_19;
  }

  v184[0] = *v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFE51CC(v38, type metadata accessor for VFSItem);
}

uint64_t sub_1CF50CDA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF50CE08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CF50CE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation()
{
  result = qword_1EC4C1318;
  if (!qword_1EC4C1318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF50CF48()
{
  sub_1CF50CFD4();
  if (v0 <= 0x3F)
  {
    sub_1CF50D038();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CF50CFD4()
{
  if (!qword_1EC4C1328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1330, &unk_1CFA13480);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4C1328);
    }
  }
}

void sub_1CF50D038()
{
  if (!qword_1EC4C1338)
  {
    type metadata accessor for VFSItem(255);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4C1338);
    }
  }
}

unint64_t sub_1CF50D090()
{
  result = qword_1EC4C1348;
  if (!qword_1EC4C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1348);
  }

  return result;
}

unint64_t sub_1CF50D0E4()
{
  result = qword_1EC4C1358;
  if (!qword_1EC4C1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1358);
  }

  return result;
}

unint64_t sub_1CF50D138()
{
  result = qword_1EC4C1370;
  if (!qword_1EC4C1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1370);
  }

  return result;
}

uint64_t sub_1CF50D18C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1CF50D1A4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, int a5, void *a6, int a7)
{
  v66 = a7;
  v70 = a3;
  v80 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 32);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = *(a1 + 88);
  v16 = sub_1CF9E53C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v63 = v21;
    v64 = v19;
    v69 = a2;
    v65 = v18;
    v67 = a4;
    *&v76 = a4;
    v68 = a5;
    BYTE8(v76) = a5;
    v22 = *(a1 + 48);
    v75.st_atimespec = *(a1 + 32);
    v75.st_mtimespec = v22;
    v23 = *(a1 + 80);
    v75.st_ctimespec = *(a1 + 64);
    v75.st_birthtimespec = v23;
    v24 = *(a1 + 16);
    *&v75.st_dev = *a1;
    *&v75.st_uid = v24;

    sub_1CEFDAA48(&v76, &v75.st_dev, v71);
    v79[2] = v75.st_atimespec;
    v79[3] = v75.st_mtimespec;
    v79[4] = v75.st_ctimespec;
    v79[5] = v75.st_birthtimespec;
    v79[0] = *&v75.st_dev;
    v79[1] = *&v75.st_uid;
    sub_1CEFCCC44(v79, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v76 = *v71;
    v77 = *&v71[16];
    v78 = v72;
    v25 = objc_sync_enter(a6);
    v26 = a6;
    if (!v25)
    {
      v27 = a6[20];

      v28 = objc_sync_exit(a6);
      if (v28)
      {
        MEMORY[0x1EEE9AC00](v28);
        *(&v62 - 2) = a6;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v62 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v29 = *(v27 + 16);

      v30 = sub_1CEFDADE0(&v76, v29, 2129920);
      v31 = v68;
      v32 = v67;
      v40 = v30;
      memset(&v75, 0, sizeof(v75));
      if (fstat(v30, &v75) < 0)
      {

        v47 = MEMORY[0x1D38683F0](v46);
        *v71 = 3;
        *&v71[8] = 0u;
        v72 = 0u;
        v73 = 19;
        v48 = sub_1CF19BBE4(v47, v71);
        sub_1CF1969CC(v71);
        swift_willThrow();
        v49 = v69;
        if (v66 != 1)
        {
          flock(v40, 8);
        }

        if ((v40 & 0x80000000) == 0)
        {
          close(v40);
        }

        swift_willThrow();
        v50 = v48;
        v49(v48, 1);

        goto LABEL_17;
      }

      st_ino = v75.st_ino;
      v42 = v66;
      if (v66 == 1 || (flock(v40, 5) & 0x80000000) == 0)
      {

        v43 = v26[17];

        v44 = v43 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
        swift_beginAccess();
        v45 = *(v44 + 8);
        *&v75.st_dev = st_ino;
        memset(&v75.st_ino, 0, 32);
        v52 = sub_1CEFDADE0(&v75.st_dev, v45, 0x200000);

        sub_1CF705A74(v52, &v74);
        v53 = v69;
        if ((v52 & 0x80000000) == 0)
        {
          close(v52);
        }

        v57 = v74;
        if (v42 != 1)
        {
          flock(v40, 8);
        }

        if ((v40 & 0x80000000) == 0)
        {
          close(v40);
        }

        v53(v57, 0);

LABEL_17:
        v51 = *MEMORY[0x1E69E9840];
        return;
      }

      v54 = MEMORY[0x1D38683F0]();
      sub_1CF9E52D8();
      if (v54 == sub_1CF9E6148())
      {
        sub_1CF9E5338();
        v55 = sub_1CF9E6148();
        MEMORY[0x1D3868400](v55);
      }

      *&v75.st_dev = v32;
      LOBYTE(v75.st_ino) = v31;
      sub_1CF262BC8(&v75, v40);
      v56 = v69;
      MEMORY[0x1D38683F0]();
      v25 = sub_1CF9E6138();
      if ((v25 & 0x100000000) == 0)
      {
        v58 = v25;

        v75.st_dev = v58;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v59 = v63;
        v60 = v65;
        sub_1CF9E57D8();
        v61 = sub_1CF9E53A8();
        (*(v64 + 8))(v59, v60);
        v56(v61, 1);

        if ((v40 & 0x80000000) == 0)
        {
          close(v40);
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    MEMORY[0x1EEE9AC00](v25);
    *(&v62 - 2) = v26;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v62 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v33 = swift_allocError();
  *v34 = a4;
  *(v34 + 8) = a5;
  v35 = *(a1 + 16);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  v36 = *(a1 + 32);
  v37 = *(a1 + 48);
  v38 = *(a1 + 80);
  *(v34 + 80) = *(a1 + 64);
  *(v34 + 96) = v38;
  *(v34 + 48) = v36;
  *(v34 + 64) = v37;
  *(v34 + 112) = 0;
  *(v34 + 120) = 0;
  sub_1CF2A8DE0(v34);
  a2(v33, 1);
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF50D8D4(uint64_t *a1)
{
  v4 = sub_1CF9E63A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6448();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
  if (v13[*(type metadata accessor for ItemMetadata() + 80)])
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = &unk_1EC4BE320;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    sub_1CF2A8DE0(v17);
    swift_willThrow();
    return v16;
  }

  v44[1] = v2;
  v18 = dispatch_group_create();
  v50 = v4;
  v19 = v18;
  v20 = swift_allocObject();
  v52 = v9;
  *(v20 + 16) = 0;
  v49 = (v20 + 16);
  *(v20 + 24) = -1;
  v21 = v20;
  dispatch_group_enter(v19);
  v51 = v5;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *v13;
  v25 = *(a1 + 5);
  v55[2] = *(a1 + 4);
  v55[3] = v25;
  v26 = *(a1 + 7);
  v55[4] = *(a1 + 6);
  v55[5] = v26;
  v27 = *(a1 + 3);
  v55[0] = *(a1 + 2);
  v55[1] = v27;
  v28 = swift_allocObject();
  v48 = v8;
  v29 = v28;
  *(v28 + 16) = v21;
  *(v28 + 24) = v19;
  v47 = v21;
  v45 = *(v1 + 216);
  v30 = swift_allocObject();
  v31 = *(a1 + 5);
  *(v30 + 48) = *(a1 + 4);
  *(v30 + 64) = v31;
  v32 = *(a1 + 7);
  *(v30 + 80) = *(a1 + 6);
  *(v30 + 96) = v32;
  v33 = *(a1 + 3);
  *(v30 + 16) = *(a1 + 2);
  *(v30 + 32) = v33;
  *(v30 + 112) = sub_1CF50E9CC;
  *(v30 + 120) = v29;
  *(v30 + 128) = v22;
  *(v30 + 136) = v23;
  *(v30 + 144) = v1;
  *(v30 + 152) = v24;
  aBlock[4] = sub_1CF50E9D8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_232;
  v34 = _Block_copy(aBlock);
  sub_1CEFCCBDC(v55, v53, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(v55, v53, &unk_1EC4BE330, &unk_1CF9FF010);

  v46 = v19;
  v35 = v45;

  sub_1CF9E63F8();
  v53[0] = MEMORY[0x1E69E7CC0];
  sub_1CF00BC50(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v36 = v48;
  v37 = v50;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v12, v36, v34);
  v38 = v34;
  v39 = v49;
  _Block_release(v38);

  sub_1CEFCCC44(v55, &unk_1EC4BE330, &unk_1CF9FF010);
  v40 = v46;
  (*(v51 + 8))(v36, v37);
  (*(v56 + 8))(v12, v52);

  sub_1CF9E72F8();
  v41 = v47;
  result = swift_beginAccess();
  v43 = *(v41 + 24);
  if (v43 == 255)
  {
    __break(1u);
  }

  else
  {
    v16 = *v39;
    if (v43)
    {
      aBlock[0] = v16;
      sub_1CF50E9F4(v16, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return v16;
    }

    if ((~v16 & 0xF000000000000007) != 0)
    {

      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF50DED0(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_1CF50EA00(v8, v9);
  sub_1CF50E9F4(a1, a2);
  dispatch_group_leave(a4);
}

uint64_t sub_1CF50DF4C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16) == 1)
  {
    result = fpfs_fset_resuming_sync_with_drop_local_changes();
  }

  else
  {
    result = fpfs_funset_pause_sync_bundleID();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1CF50DFB0@<X0>(_DWORD *a1@<X8>)
{
  result = flock(*(v1 + 16), 2);
  *a1 = result;
  return result;
}

void sub_1CF50DFE8(int *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 >> 31)
  {
    __break(1u);
  }

  else
  {
    *a1 = flock(*(v1 + 16), v2);
  }
}

uint64_t sub_1CF50E02C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_untrack_document();
  *a1 = result;
  return result;
}

uint64_t sub_1CF50E084(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *a2 = *a2 & 0xF7 | v2;
  return result;
}

uint64_t sub_1CF50E0C0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BCB60(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF50E0CC()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for ItemMetadata() + 140);
  v3 = __ROR8__(*v2, 32);
  *(v2 + 8);
  return fpfs_set_finder_info();
}

uint64_t sub_1CF50E198@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 + 16);
  result = sub_1CEFE1894(sub_1CF50E1F0);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF50E210@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + *(type metadata accessor for ItemMetadata() + 60));
  result = fpfs_fset_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF50E264@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_set_last_use_date();
  *a1 = result;
  return result;
}

uint64_t sub_1CF50E2C0@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_make_fsevent();
  *a1 = result;
  return result;
}

uint64_t sub_1CF50E314(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  return fpfs_unset_evictable();
}

void sub_1CF50E358(unint64_t a1, char a2, unint64_t a3)
{
  v53 = a3;
  v56[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v49 - v7;
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E5A58();
  v13 = *(v52 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v49 - v18;
  v20 = objc_opt_self();
  v55 = [v20 defaultManager];
  if ((a2 & 1) == 0)
  {
    v50 = a1;
    v25 = NSTemporaryDirectory();
    if (!v25)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = sub_1CF9E6888();
    }

    sub_1CF9E5D88();
    sub_1CF9E5D18();
    (*(v9 + 8))(v12, v8);
    v26 = sub_1CF9E6888();

    v27 = [(NSString *)v25 stringByAppendingPathComponent:v26];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E58C8();

    v28 = v54;
    sub_1CF18B04C(v16, 1, v50);
    v29 = v52;
    if (!v28)
    {
      v42 = v51;
      v43 = v55;
      sub_1CF9E7278();

      sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v13 + 8))(v16, v29);
      goto LABEL_22;
    }

    (*(v13 + 8))(v16, v52);
    goto LABEL_9;
  }

  if ((a1 >> 62) - 2 >= 2)
  {
    v30 = v55;
    if (a1 >> 62)
    {
      v44 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1CF9E5BB8();

      goto LABEL_22;
    }

    v31 = sub_1CF9E5928();
    v56[0] = 0;
    v32 = [v30 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:0 options:1 error:v56];

    v33 = v56[0];
    if (!v32)
    {
      v46 = v56[0];
      sub_1CF9E57F8();

      swift_willThrow();
      goto LABEL_21;
    }

    v50 = a1;
    v34 = v52;
    v35 = sub_1CF9E6D48();
    v36 = v33;

    v37 = *(v35 + 16);
    if (!v37)
    {
LABEL_17:

      v21 = [v20 defaultManager];
      v22 = v53;
      v23 = v21;
      v24 = v50;
      goto LABEL_4;
    }

    v38 = 0;
    v51 = (v13 + 16);
    v49[1] = v13 + 8;
    while (1)
    {
      if (v38 >= *(v35 + 16))
      {
        __break(1u);
      }

      (*(v13 + 16))(v19, v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38, v34);
      v39 = sub_1CF9E5928();
      (*(v13 + 8))(v19, v34);
      v56[0] = 0;
      v40 = [v55 removeItemAtURL:v39 error:v56];

      if (!v40)
      {
        break;
      }

      ++v38;
      v41 = v56[0];
      if (v37 == v38)
      {
        goto LABEL_17;
      }
    }

    v48 = v56[0];

    sub_1CF9E57F8();

    swift_willThrow();
LABEL_9:
    v30 = v55;
LABEL_21:

    goto LABEL_22;
  }

  v21 = [v20 defaultManager];
  v22 = v53;
  v23 = v21;
  v24 = a1;
LABEL_4:
  sub_1CF18A5A0(v22, 1, v23, v24);

LABEL_22:
  v47 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF50E98C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_set_resurrected();
  *a1 = result;
  return result;
}

void sub_1CF50E9C0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_1CF4EB118(a1);
  }
}

id sub_1CF50E9F4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1CF50D18C(a1);
  }
}

void sub_1CF50EA00(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF50E9C0(a1, a2 & 1);
  }
}

unint64_t sub_1CF50EA2C()
{
  result = qword_1EC4C13A0;
  if (!qword_1EC4C13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C13A0);
  }

  return result;
}

unint64_t sub_1CF50EA84()
{
  result = qword_1EC4C13A8;
  if (!qword_1EC4C13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C13A8);
  }

  return result;
}

unint64_t sub_1CF50EADC()
{
  result = qword_1EC4C13B0;
  if (!qword_1EC4C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C13B0);
  }

  return result;
}

uint64_t sub_1CF50EBA4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = a1();
  if ((result & 1) == 0)
  {
    sub_1CF50FAB4(a3, a4, a5, a6);
  }

  return result;
}

uint64_t fp_precondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a1();
  if ((result & 1) == 0)
  {
    sub_1CF50FD90(a5, a6, a7, a8, a3);
  }

  return result;
}

void sub_1CF50EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1CF9E7948();

  v27 = 0xD000000000000014;
  v28 = 0x80000001CFA51540;
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  v10 = v28;
  v26 = v27;
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E72B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v9;
    v15 = v14;
    v22 = swift_slowAlloc();
    v27 = v22;
    *v15 = 136315650;
    v16 = sub_1CF9E7988();
    v24 = v6;
    v18 = sub_1CEFD0DF0(v16, v17, &v27);
    v23 = v5;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a4;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1CEFD0DF0(v26, v10, &v27);
    _os_log_impl(&dword_1CEFC7000, v12, v13, "[ASSERT] ‼️  %s:%lu: %s", v15, 0x20u);
    v20 = v22;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);

    (*(v24 + 8))(v25, v23);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA51460, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000026, 0x80000001CFA514D0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA51520);
  v30 = a5;
  sub_1CF9E7B58();
  v12 = v32;
  v28 = v31;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = v11;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v26 = v8;
    v20 = sub_1CEFD0DF0(v18, v19, &v31);
    v25 = v7;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v28, v12, &v31);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v29, v25);
  }

  else
  {

    (*(v8 + 8))(v29, v7);
  }

  swift_unknownObjectRelease();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA51500);
  v30 = a5;
  sub_1CF9E7B58();
  v12 = v32;
  v28 = v31;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = v11;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v26 = v8;
    v20 = sub_1CEFD0DF0(v18, v19, &v31);
    v25 = v7;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v28, v12, &v31);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v29, v25);
  }

  else
  {

    (*(v8 + 8))(v29, v7);
  }

  swift_unknownObjectRelease();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1CF9E7948();

  v27 = 0xD000000000000014;
  v28 = 0x80000001CFA51540;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA51560);
  v10 = v28;
  v26 = v27;
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E72B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v9;
    v15 = v14;
    v22 = swift_slowAlloc();
    v27 = v22;
    *v15 = 136315650;
    v16 = sub_1CF9E7988();
    v24 = v6;
    v18 = sub_1CEFD0DF0(v16, v17, &v27);
    v23 = v5;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a4;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1CEFD0DF0(v26, v10, &v27);
    _os_log_impl(&dword_1CEFC7000, v12, v13, "[ASSERT] ‼️  %s:%lu: %s", v15, 0x20u);
    v20 = v22;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);

    (*(v24 + 8))(v25, v23);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF50FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v29 = a1;
  v30 = a2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1CF9E7948();

  v31 = 0xD000000000000014;
  v32 = 0x80000001CFA51540;
  v13 = a5(v12);
  MEMORY[0x1D3868CC0](v13);

  v14 = v31;
  v15 = v32;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v28 = v11;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72B8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v8;
    v20 = v19;
    v25 = swift_slowAlloc();
    v31 = v25;
    *v20 = 136315650;
    v21 = sub_1CF9E7988();
    v26 = v7;
    v23 = sub_1CEFD0DF0(v21, v22, &v31);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a4;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_1CEFD0DF0(v14, v15, &v31);
    _os_log_impl(&dword_1CEFC7000, v17, v18, "[ASSERT] ‼️  %s:%lu: %s", v20, 0x20u);
    v24 = v25;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v24, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);

    (*(v27 + 8))(v28, v26);
  }

  else
  {

    (*(v8 + 8))(v28, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF510054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000002DLL, 0x80000001CFA515A0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5102DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA51650);
  v28 = a5;
  sub_1CF9E7B58();
  v12 = v30;
  v27 = v29;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v11;
    v17 = v16;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v25 = v8;
    v20 = sub_1CEFD0DF0(v18, v19, &v29);
    v24 = v7;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v27, v12, &v29);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v25 + 8))(v26, v24);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5105CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v32 = a1;
  v33 = a2;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1CF9E7948();

  v36 = 0xD000000000000025;
  v37 = 0x80000001CFA514A0;
  v34 = a5;
  v35 = a6;
  v16 = VFSItemID.description.getter(v14, v15);
  MEMORY[0x1D3868CC0](v16);

  v17 = v36;
  v18 = v37;
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v31 = v13;
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E72B8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v10;
    v23 = v22;
    v28 = swift_slowAlloc();
    v36 = v28;
    *v23 = 136315650;
    v24 = sub_1CF9E7988();
    v29 = v9;
    v26 = sub_1CEFD0DF0(v24, v25, &v36);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2048;
    *(v23 + 14) = a4;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1CEFD0DF0(v17, v18, &v36);
    _os_log_impl(&dword_1CEFC7000, v20, v21, "[ASSERT] ‼️  %s:%lu: %s", v23, 0x20u);
    v27 = v28;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    (*(v30 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v31, v9);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF510894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000001BLL, 0x80000001CFA51480, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF510B1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 a12)
{
  v47 = a4;
  v48 = a3;
  v49 = a1;
  v50 = a2;
  v16 = sub_1CF9E6118();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA515D0);
  v42 = a5;
  v44 = a6;
  v45 = a7;
  v20 = sub_1CF5153E0(a5, a6, a7, a8);
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v43 = a9;
  v46 = a10;
  v21 = sub_1CF5153E0(a9, a10, a11, a12);
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v23 = v51;
  v22 = v52;
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E72B8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = a8;
    v28 = v27;
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315650;
    v30 = sub_1CF9E7988();
    v38 = a12;
    v32 = sub_1CEFD0DF0(v30, v31, &v51);

    *(v28 + 4) = v32;
    v33 = v47;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_1CEFD0DF0(v23, v22, &v51);
    _os_log_impl(&dword_1CEFC7000, v25, v26, "[ASSERT] ‼️  %s:%lu: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    (*(v40 + 8))(v19, v41);
    sub_1CF480540(v42, v44, v45, v39);
    v34 = v43;
    v35 = v46;
    v36 = a11;
    v37 = v38;
  }

  else
  {

    (*(v40 + 8))(v19, v41);
    sub_1CF480540(v42, v44, v45, a8);
    v34 = v43;
    v35 = v46;
    v36 = a11;
    v37 = a12;
  }

  sub_1CF480540(v34, v35, v36, v37);
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF510E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v34 = a4;
  v35 = a1;
  v10 = sub_1CF9E6118();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();
  v39 = v37;
  v40 = v38;
  v14 = MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA51930);
  v37 = a5;
  LOBYTE(v38) = a6;
  v16 = VFSItemID.description.getter(v14, v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](540877088, 0xE400000000000000);
  swift_beginAccess();
  v36 = *(a7 + 24);
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  v18 = v39;
  v19 = v40;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v32 = v13;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v31 = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v39 = v25;
    *v24 = 136315650;
    v26 = sub_1CF9E7988();
    v30 = v10;
    v28 = sub_1CEFD0DF0(v26, v27, &v39);

    *(v24 + 4) = v28;
    v29 = v34;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v29;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_1CEFD0DF0(v31, v19, &v39);
    _os_log_impl(&dword_1CEFC7000, v21, v22, "[ASSERT] ‼️  %s:%lu: %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v25, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);

    (*(v33 + 8))(v32, v30);
  }

  else
  {

    (*(v33 + 8))(v32, v10);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5111B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA51910);
  v30 = a5;
  type metadata accessor for BouncingStagedContext();
  sub_1CF9E7B58();
  v12 = v32;
  v28 = v31;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = v11;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v26 = v8;
    v20 = sub_1CEFD0DF0(v18, v19, &v31);
    v25 = v7;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v28, v12, &v31);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v29, v25);
  }

  else
  {

    (*(v8 + 8))(v29, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5114B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1CF9E6118();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();

  v30 = 0xD000000000000026;
  v31 = 0x80000001CFA51A10;
  MEMORY[0x1D3868CC0](a5, a6);
  v13 = v30;
  v14 = v31;
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v28 = v12;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E72B8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v13;
    v19 = v18;
    v25[0] = swift_slowAlloc();
    v30 = v25[0];
    *v19 = 136315650;
    v20 = sub_1CF9E7988();
    v26 = v9;
    v22 = sub_1CEFD0DF0(v20, v21, &v30);
    v25[1] = a6;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a4;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1CEFD0DF0(v27, v14, &v30);
    _os_log_impl(&dword_1CEFC7000, v16, v17, "[ASSERT] ‼️  %s:%lu: %s", v19, 0x20u);
    v24 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v24, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v29 + 8))(v28, v26);
  }

  else
  {

    (*(v29 + 8))(v28, v9);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF511798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA518F0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF511A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000024, 0x80000001CFA51680, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF511CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();

  v30 = 0xD000000000000025;
  v31 = 0x80000001CFA518C0;
  v12 = sub_1CF7F48D8(a5);
  MEMORY[0x1D3868CC0](v12);

  v13 = v31;
  v29 = v30;
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v11;
    v18 = v17;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v18 = 136315650;
    v19 = sub_1CF9E7988();
    v27 = v8;
    v21 = sub_1CEFD0DF0(v19, v20, &v30);
    v26 = v7;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_1CEFD0DF0(v29, v13, &v30);
    _os_log_impl(&dword_1CEFC7000, v15, v16, "[ASSERT] ‼️  %s:%lu: %s", v18, 0x20u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    (*(v27 + 8))(v28, v26);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF511F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v6 = sub_1CF9E6118();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();
  v32 = v30;
  v33 = v31;
  MEMORY[0x1D3868CC0](0x1000000000000041, 0x80000001CFA51800);
  swift_beginAccess();
  v10 = *(a5 + 16);
  v11 = *(a5 + 24);

  MEMORY[0x1D3868CC0](v10, v11);

  v12 = v32;
  v13 = v33;
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v25 = v9;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315650;
    v19 = sub_1CF9E7988();
    v24 = v6;
    v21 = sub_1CEFD0DF0(v19, v20, &v32);

    *(v17 + 4) = v21;
    v22 = v27;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v12, v13, &v32);
    _os_log_impl(&dword_1CEFC7000, v15, v16, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v25, v24);
  }

  else
  {

    (*(v26 + 8))(v25, v6);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF512254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v6 = sub_1CF9E6118();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();
  v32 = v30;
  v33 = v31;
  MEMORY[0x1D3868CC0](0x1000000000000041, 0x80000001CFA51850);
  swift_beginAccess();
  v10 = *(a5 + 16);
  v11 = *(a5 + 24);

  MEMORY[0x1D3868CC0](v10, v11);

  v12 = v32;
  v13 = v33;
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v25 = v9;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315650;
    v19 = sub_1CF9E7988();
    v24 = v6;
    v21 = sub_1CEFD0DF0(v19, v20, &v32);

    *(v17 + 4) = v21;
    v22 = v27;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v12, v13, &v32);
    _os_log_impl(&dword_1CEFC7000, v15, v16, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v25, v24);
  }

  else
  {

    (*(v26 + 8))(v25, v6);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF512520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000001BLL, 0x80000001CFA519F0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5127A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000001BLL, 0x80000001CFA519D0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF512A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA51A40);
  v32 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  v11 = v34;
  v28 = v33;
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E72B8();
  v15 = v11;

  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315650;
    v19 = sub_1CF9E7988();
    v26 = v6;
    v21 = sub_1CEFD0DF0(v19, v20, &v33);
    v25 = v10;
    v22 = v21;

    *(v17 + 4) = v22;
    v24 = v28;
    v23 = v29;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v24, v15, &v33);
    _os_log_impl(&dword_1CEFC7000, v13, v14, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v7 + 8))(v25, v26);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF512D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128))
{
  v32 = a2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a5(v10);
  v15 = v14;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72B8();
  v31 = v15;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v13;
    v20 = v19;
    v28 = swift_slowAlloc();
    v33 = v28;
    *v20 = 136315650;
    v21 = sub_1CF9E7988();
    v30 = v8;
    v23 = sub_1CEFD0DF0(v21, v22, &v33);
    v29 = v7;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a4;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_1CEFD0DF0(v27, v31, &v33);
    _os_log_impl(&dword_1CEFC7000, v17, v18, "[ASSERT] ‼️  %s:%lu: %s", v20, 0x20u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v25, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);

    (*(v30 + 8))(v12, v29);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF512FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000021, 0x80000001CFA517D0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF513248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1CF9E6118();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA51780);
  MEMORY[0x1D3868CC0](a5, a6);
  v13 = v30;
  v14 = v31;
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v28 = v12;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E72B8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v13;
    v19 = v18;
    v25[0] = swift_slowAlloc();
    v30 = v25[0];
    *v19 = 136315650;
    v20 = sub_1CF9E7988();
    v26 = v9;
    v22 = sub_1CEFD0DF0(v20, v21, &v30);
    v25[1] = a6;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a4;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1CEFD0DF0(v27, v14, &v30);
    _os_log_impl(&dword_1CEFC7000, v16, v17, "[ASSERT] ‼️  %s:%lu: %s", v19, 0x20u);
    v24 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v24, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v29 + 8))(v28, v26);
  }

  else
  {

    (*(v29 + 8))(v28, v9);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF513528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA365A0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5137B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD000000000000025, 0x80000001CFA51720, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF513A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x1000000000000023, 0x80000001CFA516F0);
  v32 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  v11 = v34;
  v28 = v33;
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E72B8();
  v15 = v11;

  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315650;
    v19 = sub_1CF9E7988();
    v26 = v6;
    v21 = sub_1CEFD0DF0(v19, v20, &v33);
    v25 = v10;
    v22 = v21;

    *(v17 + 4) = v22;
    v24 = v28;
    v23 = v29;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v24, v15, &v33);
    _os_log_impl(&dword_1CEFC7000, v13, v14, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v7 + 8))(v25, v26);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF513D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000001BLL, 0x80000001CFA516D0, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF513FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA516B0);
  v30 = *(a5 + 24);
  type metadata accessor for FileOperationKind(0);
  sub_1CF9E7B58();
  v12 = v32;
  v28 = v31;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = v11;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v26 = v8;
    v20 = sub_1CEFD0DF0(v18, v19, &v31);
    v25 = v7;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v28, v12, &v31);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v26 + 8))(v29, v25);
  }

  else
  {

    (*(v8 + 8))(v29, v7);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF5142BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v28 = sub_1CF9E72B8();
  if (os_log_type_enabled(v15, v28))
  {
    v16 = swift_slowAlloc();
    v24 = v15;
    v17 = v16;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v27 = v10;
    v20 = sub_1CEFD0DF0(v18, v19, &v29);
    v26 = v9;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(a5, a6, &v29);
    v22 = v24;
    _os_log_impl(&dword_1CEFC7000, v24, v28, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v27 + 8))(v13, v26);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF514544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v6 = sub_1CF9E6118();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1CF9E7948();

  v33 = 0xD000000000000015;
  v34 = 0x80000001CFA518A0;
  v10 = [a5 label];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  v14 = v33;
  v15 = v34;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v27 = v9;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72B8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315650;
    v21 = sub_1CF9E7988();
    v26 = a5;
    v23 = sub_1CEFD0DF0(v21, v22, &v33);

    *(v19 + 4) = v23;
    v24 = v30;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1CEFD0DF0(v14, v15, &v33);
    _os_log_impl(&dword_1CEFC7000, v17, v18, "[ASSERT] ‼️  %s:%lu: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {

    (*(v28 + 8))(v27, v29);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF514824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v11;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315650;
    v15 = sub_1CF9E7988();
    v25 = v6;
    v17 = sub_1CEFD0DF0(v15, v16, &v26);
    v24 = v5;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1CEFD0DF0(0xD00000000000003DLL, 0x80000001CFA51990, &v26);
    v19 = v22;
    _os_log_impl(&dword_1CEFC7000, v22, v12, "[ASSERT] ‼️  %s:%lu: %s", v14, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF514AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v6 = sub_1CF9E6118();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1CF9E7948();

  v33 = 0xD00000000000001CLL;
  v34 = 0x80000001CFA51970;
  v10 = [a5 description];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  v14 = v33;
  v15 = v34;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v27 = v9;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72B8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315650;
    v21 = sub_1CF9E7988();
    v26 = a5;
    v23 = sub_1CEFD0DF0(v21, v22, &v33);

    *(v19 + 4) = v23;
    v24 = v30;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1CEFD0DF0(v14, v15, &v33);
    _os_log_impl(&dword_1CEFC7000, v17, v18, "[ASSERT] ‼️  %s:%lu: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {

    (*(v28 + 8))(v27, v29);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF514D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CF9E7948();

  v29 = 0xD000000000000028;
  v30 = 0x80000001CFA51750;
  v28 = MEMORY[0x1D38683F0](v10);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  v12 = v30;
  v27 = v29;
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v9;
    v17 = v16;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v17 = 136315650;
    v18 = sub_1CF9E7988();
    v25 = v6;
    v20 = sub_1CEFD0DF0(v18, v19, &v29);
    v24 = v5;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a4;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1CEFD0DF0(v27, v12, &v29);
    _os_log_impl(&dword_1CEFC7000, v14, v15, "[ASSERT] ‼️  %s:%lu: %s", v17, 0x20u);
    v22 = v23;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v25 + 8))(v26, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_1CF9E7B68();
  __break(1u);
}

void fp_preconditionFailure(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(v11);
  v16 = v15;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72B8();
  v32 = v16;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v14;
    v21 = v20;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v21 = 136315650;
    v22 = sub_1CF9E7988();
    v31 = v9;
    v24 = sub_1CEFD0DF0(v22, v23, &v34);
    v30 = v8;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = a6;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_1CEFD0DF0(v28, v32, &v34);
    _os_log_impl(&dword_1CEFC7000, v18, v19, "[ASSERT] ‼️  %s:%lu: %s", v21, 0x20u);
    v26 = v29;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v26, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);

    (*(v31 + 8))(v13, v30);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  sub_1CF9E7B68();
  __break(1u);
}

uint64_t precondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a1();
  if ((result & 1) == 0)
  {
    sub_1CF50FD90(a5, a6, a7, a8, sub_1CF51562C);
  }

  return result;
}

unint64_t sub_1CF5153E0(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return 0xD000000000000012;
    }

    v16 = 0;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x287964616572, 0xE600000000000000);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    v7 = sub_1CF071470(a2);
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    if (a3)
    {
      v8 = [a3 description];
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
    }

    else
    {
      v9 = 0x3E6C696E3CLL;
      v11 = 0xE500000000000000;
    }

    v13 = v9;
  }

  else
  {
    sub_1CF9E7948();

    v16 = 0xD000000000000018;
    MEMORY[0x1D3868CC0](a1, a2);
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA51610);
    if (a4)
    {
      v13 = 0x3E6C696E3CLL;
      v11 = 0xE500000000000000;
    }

    else
    {
      v13 = sub_1CF057690(a3);
      v11 = v15;
    }
  }

  MEMORY[0x1D3868CC0](v13, v11);

  return v16;
}

uint64_t sub_1CF5155DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1CF51560C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1CF51562C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF515680(uint64_t a1)
{
  v2 = sub_1CF9E7FC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5C98();
  v10[1] = v7;
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 != *MEMORY[0x1E69E7038] && v8 != *MEMORY[0x1E69E7030] && v8 != *MEMORY[0x1E69E7040] && v8 != *MEMORY[0x1E69E7048] && v8 != *MEMORY[0x1E69E7020] && v8 != *MEMORY[0x1E69E7028])
  {
    sub_1CF9E6F68();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1CF9E5C88();
}

uint64_t sub_1CF51586C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E7FC8();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v36 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v36 - v23;
  v25 = *(v22 + 56);
  sub_1CF06EAD4(v2, &v36 - v23);
  sub_1CF06EAD4(a1, &v24[v25]);
  v26 = *(v9 + 48);
  LODWORD(a1) = v26(v24, 1, v8);
  result = v26(&v24[v25], 1, v8);
  if (a1 == 1)
  {
    if (result != 1)
    {
      sub_1CEFD9E84(&v24[v25]);
      return 0;
    }
  }

  else if (result == 1)
  {
    (*(v9 + 8))(v24, v8);
    return 0;
  }

  else
  {
    v28 = *(v9 + 32);
    v28(v19, v24, v8);
    v28(v17, &v24[v25], v8);
    v37 = *MEMORY[0x1E69E7020];
    v30 = v39;
    v29 = v40;
    v36 = *(v39 + 104);
    v36(v7);
    sub_1CF515680(v7);
    v31 = *(v30 + 8);
    v31(v7, v29);
    (v36)(v7, v37, v29);
    v32 = v38;
    sub_1CF515680(v7);
    v31(v7, v29);
    v33 = v41;
    v34 = sub_1CF9E5CD8();
    v35 = *(v9 + 8);
    v35(v32, v8);
    v35(v33, v8);
    v35(v17, v8);
    v35(v19, v8);
    return v34 == 0;
  }

  return result;
}

void throwErrno<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a1;
  v5[5] = a2;
  sub_1CF516728(sub_1CF517F4C, v5, a3, a4, a5);
}

id Error.prettyDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1CF9E7FB8();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1CF9E57E8();

  v11 = [v10 fp_prettyDescription];
  return v11;
}

uint64_t sub_1CF515DE8(char *a1, stat *a2)
{
  v4 = sub_1CF9E53C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath + 8])
  {
    v13 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath];
    v14 = (sub_1CF9E6978() + 32);
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  v16 = lstat(v14, a2);

  v17 = swift_unknownObjectRelease();
  if ((v16 & 0x80000000) == 0)
  {
LABEL_13:

    return v16;
  }

  if (MEMORY[0x1D38683F0](v17))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v18 = sub_1CF9E6138();
      if ((v18 & 0x100000000) != 0)
      {
        LODWORD(v33) = 22;
      }

      else
      {
        LODWORD(v33) = v18;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF518BB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v5 + 8))(v8, v4);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1CF9E7948();

  v33 = 0xD00000000000001ALL;
  v34 = 0x80000001CFA2DF30;
  v35 = v16;
  v20 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v21 = v33;
  v22 = v34;
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E72B8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315650;
    v28 = sub_1CF9E7988();
    v30 = sub_1CEFD0DF0(v28, v29, &v33);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    *(v26 + 14) = 315;
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_1CEFD0DF0(v21, v22, &v33);
    _os_log_impl(&dword_1CEFC7000, v24, v25, "[ASSERT] ‼️  %s:%lu: %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  (*(v31 + 8))(v12, v32);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF5162A0(void *(*a1)(uint64_t *__return_ptr, __n128))
{
  v3 = sub_1CF9E53C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(&v29, v11);
  if (v1)
  {
    return a1;
  }

  a1 = v29;
  if ((v29 & 0x8000000000000000) == 0)
  {
    return a1;
  }

  if (MEMORY[0x1D38683F0](v14))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v16 = sub_1CF9E6138();
      if ((v16 & 0x100000000) != 0)
      {
        LODWORD(v29) = 22;
      }

      else
      {
        LODWORD(v29) = v16;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF518BB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v4 + 8))(v7, v3);
    }

    swift_willThrow();
    return a1;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CF9E7948();

  v29 = 0xD00000000000001ALL;
  v30 = 0x80000001CFA2DF30;
  v31 = a1;
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v18 = v30;
  v28 = v29;
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E72B8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v22 = 136315650;
    v23 = sub_1CF9E7988();
    v25 = sub_1CEFD0DF0(v23, v24, &v29);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2048;
    *(v22 + 14) = 315;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_1CEFD0DF0(v28, v18, &v29);
    _os_log_impl(&dword_1CEFC7000, v20, v21, "[ASSERT] ‼️  %s:%lu: %s", v22, 0x20u);
    v26 = v27;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v26, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF516728(void (*a1)(id *, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a1;
  v56 = a2;
  v8 = sub_1CF9E53C8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = a4;
  v12 = *(a4 + 8);
  v13 = *(*(v12 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v51 - v16;
  v55 = *(a3 - 8);
  v18 = *(v55 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v23 = v58;
  v57(&v60, v20);
  if (v23)
  {

    return;
  }

  v51[1] = v17;
  v56 = AssociatedTypeWitness;
  v57 = v11;
  v58 = v22;
  v25 = v53;
  v24 = v54;
  if (v60)
  {
    swift_willThrow();
    (*(v55 + 8))(a5, a3);
    return;
  }

  v26 = v12;
  v51[0] = 0;
  v27 = a3;
  if (sub_1CF9E7708())
  {
    v28 = a5;
    if (sub_1CF9E76F8() < 64)
    {
      v29 = sub_1CF9E76E8();
      v30 = v55;
      if ((v29 & 0x8000000000000000) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    v59 = 0;
    sub_1CF056E98();
    v38 = v58;
    sub_1CF9E76B8();
    v39 = *(*(v26 + 32) + 8);
    v36 = sub_1CF9E67E8();
    v30 = v55;
    (*(v55 + 8))(v38, v27);
    goto LABEL_13;
  }

  v31 = sub_1CF9E7708();
  v32 = sub_1CF9E76F8();
  if ((v31 & 1) == 0)
  {
    v28 = a5;
    v30 = v55;
    if (v32 >= 64)
    {
      return;
    }

    v27 = a3;
    goto LABEL_18;
  }

  if (v32 > 64)
  {
    v59 = 0;
    sub_1CF056E98();
    v33 = v58;
    v27 = a3;
    sub_1CF9E76B8();
    v34 = *(*(v26 + 32) + 8);
    v35 = a5;
    v36 = sub_1CF9E67E8();
    v30 = v55;
    v37 = v33;
    v28 = v35;
    (*(v55 + 8))(v37, v27);
LABEL_13:
    if ((v36 & 1) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v27 = a3;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E80D8();
  v40 = v58;
  sub_1CF9E8018();
  v41 = *(*(v26 + 32) + 8);
  v42 = a5;
  v43 = sub_1CF9E67E8();
  v30 = v55;
  v44 = v40;
  v28 = v42;
  (*(v55 + 8))(v44, v27);
  if ((v43 & 1) == 0)
  {
LABEL_18:
    if ((sub_1CF9E76E8() & 0x8000000000000000) == 0)
    {
      return;
    }
  }

LABEL_20:
  v45 = MEMORY[0x1D38683F0]();
  if (!v45)
  {
    MEMORY[0x1EEE9AC00](v45);
    v51[-4] = v27;
    v51[-3] = v24;
    v51[-2] = v28;
    fp_preconditionFailure(_:file:line:)(sub_1CF518C24, &v51[-6], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 315);
  }

  v46 = MEMORY[0x1D38683F0]();
  v47 = v25;
  v48 = v52;
  v49 = v57;
  if (v46 == 9939394)
  {
    [objc_opt_self() fp:2 errorForDataProtectionClass:?];
  }

  else
  {
    MEMORY[0x1D38683F0]();
    v50 = sub_1CF9E6138();
    if ((v50 & 0x100000000) != 0)
    {
      LODWORD(v59) = 22;
    }

    else
    {
      LODWORD(v59) = v50;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF518BB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v48 + 8))(v49, v47);
  }

  swift_willThrow();
  (*(v30 + 8))(v28, v27);
}

uint64_t URL.shortDescription.getter()
{
  v0 = sub_1CF9E5928();
  v1 = [v0 fp_shortDescription];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v2;
}

void sub_1CF516D6C(void *a1, uint64_t a2, void *a3)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  swift_beginAccess();
  v6 = *a2;
  *a2 = a3;
  v7 = *(a2 + 8);
  *(a2 + 8) = 1;
  sub_1CF518C0C(v6, v7);
  v8 = a3;
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF516E64(void *a1, void *a2, uint64_t a3)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  if (a2)
  {
    swift_beginAccess();
    v6 = *a3;
    *a3 = a2;
    v7 = *(a3 + 8);
    *(a3 + 8) = 1;
    v8 = a2;
    sub_1CF518C0C(v6, v7);
  }

  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF516F70(void *a1, uint64_t a2, void *a3, char a4)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF518C00(a3, a4 & 1);
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  swift_beginAccess();
  v8 = *(a2 + 8);
  if (v8 == 255)
  {
    sub_1CF2B1868(a3, a4 & 1);
    v9 = a3;
    LOBYTE(v8) = a4;
  }

  else
  {
    v9 = *a2;
  }

  v10 = v8 & 1;
  swift_beginAccess();
  *a2 = v9;
  *(a2 + 8) = v10;
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF518C00(a3, a4 & 1);
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }

  sub_1CF518C00(a3, a4 & 1);
}

void sub_1CF5170A8(void *a1, void *a2, size_t *a3)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  sub_1CF82C8A8(a2, a3);
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF5171CC(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void *))
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  a4(a2, a3);
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF5172A0(void *a1, void *a2, void *a3)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  swift_beginAccess();
  v6 = a3;
  MEMORY[0x1D3868FA0]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF5173C0(void *a1, void **a2, void *a3)
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  swift_beginAccess();
  v6 = *a2;
  *a2 = a3;

  v7 = a3;
  if (objc_sync_exit(a1))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }
}

void sub_1CF5174A4(uint64_t a1)
{
  if (a1 >= 1)
  {
    [v1 doubleValue];
    v4 = v3;
    v5 = (*&v3 >> 52) & 0x7FFLL;
    if (!v5 || v5 == 2047)
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }

    v6 = 0;
    v7 = *[v1 objCType] - 99;
    if (v7 > 0x10)
    {
      v11 = 0;
    }

    else
    {
      v8 = 1 << v7;
      if ((v8 & 0x14241) != 0)
      {
        v9 = [v1 objCType];
        v10 = v1;
        v11 = 0;
        v6 = v9[1] == 0;
      }

      else
      {
        v11 = 0;
        if ((v8 & 0xA) == 0)
        {
          goto LABEL_12;
        }

        v12 = [v1 objCType];
        v13 = v1;
        v6 = 0;
        v11 = v12[1] == 0;
      }

      v14 = v1;
    }

LABEL_12:
    v15 = a1 - floor(log10(fabs(v4))) + -1.0;
    v16 = __exp10(v15);
    v17 = round(v4 * v16);
    if (v11)
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      return;
    }

    if (v15 <= 0.0)
    {
      if (v15 <= -18.0)
      {
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v18 = fabs(v15);
        if (v18 >= 9.22337204e18)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v19 = v18;
        if (v18 < 0)
        {
LABEL_41:
          __break(1u);
          return;
        }

        for (; v19; --v19)
        {
          v17 = v17 * 10.0;
        }
      }

      else
      {
        v17 = v17 * round(1.0 / v16);
      }
    }

    else
    {
      v17 = v17 / v16;
    }

    v20 = round(v17);
    if (v6)
    {
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v20 > -9.22337204e18)
        {
          if (v20 < 9.22337204e18)
          {
            [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      __break(1u);
    }

    else if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 > -1.0)
      {
        if (v20 < 1.84467441e19)
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          return;
        }

        goto LABEL_38;
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }
}

Swift::Bool __swiftcall shouldSendDynamicError(for:)(__C::FPProviderID a1)
{
  v2 = [objc_opt_self() defaultStore];
  v3 = [v2 dynamicErrorSampleRatePerProvider];

  v4 = sub_1CF9E6D48();
  v5 = sub_1CF51810C(a1._rawValue, v4);
  LOBYTE(v3) = v6;

  if (v3)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = sub_1CF518B08(0x64uLL);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v5 >= (v7 + 1);
    }
  }

  return v7;
}

unint64_t sub_1CF517830(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - v11;
  sub_1CEFDD658(&v40 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = v3[2];
    v14 = v3 + 2;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v42 = v15;
    v43 = (v14 - 1);
    v17 = v14[7];
    v40 = v9;
    v41 = v17;
    while (1)
    {
      v13(v9, v16, v2);
      v18 = sub_1CF9E5A18();
      v20 = v19;
      v21 = sub_1CF9E6AE8();
      v45 = v12;
      if (v21)
      {
        result = sub_1CF9E6A18();
        v23 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v23 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v23 < result >> 14)
        {
          __break(1u);
          return result;
        }

        v24 = sub_1CF9E6B58();
        v26 = v25;
        v27 = v2;
        v28 = v14;
        v30 = v29;
        v32 = v31;

        v49 = v32;
        strcpy(v50, "/private/var");
        HIBYTE(v50[6]) = 0;
        v50[7] = -5120;
        v46 = v24;
        v47 = v26;
        v48 = v30;
        v14 = v28;
        v2 = v27;
        v9 = v40;
        sub_1CF4C625C();
        sub_1CF9E6A28();

        v33 = objc_opt_self();
        v34 = sub_1CF9E6888();

        v35 = [v33 fileURLWithPath_];

        sub_1CF9E59D8();
      }

      else
      {
        v13(v6, v9, v2);
      }

      v36 = sub_1CF9E5928();
      v37 = *v43;
      (*v43)(v6, v2);
      v38 = sub_1CF9E5928();
      v39 = [v36 fp:v38 relationshipToItemAtURL:?];

      v37(v9, v2);
      if (v39 != 2)
      {
        v37(v44, v2);
        return 1;
      }

      v13 = v42;
      v16 += v41;
      v12 = v45 - 1;
      if (v45 == 1)
      {
        goto LABEL_13;
      }
    }
  }

  v37 = v3[1];
LABEL_13:
  v37(v44, v2);
  return 0;
}

uint64_t sub_1CF517BCC()
{
  result = sub_1CF517BEC();
  qword_1EDEA8518 = result;
  return result;
}

uint64_t sub_1CF517BEC()
{
  v0 = sub_1CF9E7388();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v23 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  v19 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v22[0] = "micErrorDecider";
  v22[1] = v19;
  sub_1CF9E63F8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CF518BB8(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  (*(v12 + 16))(v16, v18, v11);
  (*(v4 + 16))(v8, v10, v3);
  (*(v24 + 104))(v23, *MEMORY[0x1E69E8098], v25);
  v20 = sub_1CF9E73B8();
  (*(v4 + 8))(v10, v3);
  (*(v12 + 8))(v18, v11);
  return v20;
}

uint64_t sub_1CF517F4C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1CF517F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA2DF30);
  v4 = *(*(a3 + 8) + 8);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  return 0;
}

uint64_t sub_1CF518028()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA51520);
  sub_1CF9E7B58();
  return 0;
}

void sub_1CF5180B8()
{
  v0 = sub_1CF9E6888();
  v1 = MGGetSInt32Answer();

  dword_1EDEBBA40 = v1;
}

unsigned __int8 *sub_1CF51810C(void *a1, uint64_t a2)
{
  v58 = a1;
  v60 = *(a2 + 16);
  if (!v60)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v59 = a2 + 32;
  v56 = &v63 + 1;
  v57 = xmmword_1CF9FA450;
  while (1)
  {
    v4 = (v59 + 16 * v2);
    v6 = *v4;
    v5 = v4[1];
    v63 = 58;
    v64 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](a1);
    v55[2] = &v63;

    v8 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, v55, v6, v5, v7);
    v9 = *(v8 + 16);
    if (v9)
    {
      v61 = v3;
      v10 = v2;
      v63 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v9, 0);
      v11 = v63;
      v12 = (v8 + 56);
      do
      {
        v13 = *(v12 - 3);
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v16 = *v12;

        v17 = MEMORY[0x1D3868C10](v13, v14, v15, v16);
        v19 = v18;

        v63 = v11;
        v21 = v11[2];
        v20 = v11[3];
        if (v21 >= v20 >> 1)
        {
          sub_1CEFE95CC((v20 > 1), v21 + 1, 1);
          v11 = v63;
        }

        v11[2] = v21 + 1;
        v22 = &v11[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v12 += 4;
        --v9;
      }

      while (v9);

      v2 = v10;
      v3 = v61;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    if (v11[2] != 2)
    {

      goto LABEL_4;
    }

    v24 = v11[4];
    v23 = v11[5];
    v25 = v11[6];
    v26 = v11[7];

    v28 = HIBYTE(v26) & 0xF;
    v29 = v25 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v26) & 0xF;
    }

    else
    {
      v30 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {

      v32 = 0;
      goto LABEL_77;
    }

    if ((v26 & 0x1000000000000000) == 0)
    {
      break;
    }

    v32 = sub_1CF195018(v25, v26, 10);
    v50 = v54;
LABEL_75:

    if (v50)
    {
      v32 = 0;
    }

LABEL_77:
    sub_1CEFD57E0(0, &qword_1EDEA3718, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v51 = swift_allocObject();
    *(v51 + 16) = v57;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1CEFD51C4();
    *(v51 + 32) = v24;
    *(v51 + 40) = v23;
    v52 = sub_1CF9E71F8();
    v53 = v58;
    LOBYTE(v51) = [v52 evaluateWithObject_];

    if (v51)
    {
      return v32;
    }

LABEL_4:
    if (++v2 == v60)
    {
      return 0;
    }
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v63 = v25;
    v64 = v26 & 0xFFFFFFFFFFFFFFLL;
    if (v25 == 43)
    {
      if (!v28)
      {
        goto LABEL_86;
      }

      if (--v28)
      {
        v32 = 0;
        v42 = v56;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v28)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v25 == 45)
    {
      if (!v28)
      {
        goto LABEL_85;
      }

      if (--v28)
      {
        v32 = 0;
        v36 = v56;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v28)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v28)
    {
      v32 = 0;
      v47 = &v63;
      while (1)
      {
        v48 = *v47 - 48;
        if (v48 > 9)
        {
          break;
        }

        v49 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          break;
        }

        v32 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          break;
        }

        v47 = (v47 + 1);
        if (!--v28)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    result = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1CF9E79F8();
  }

  v31 = *result;
  if (v31 == 43)
  {
    if (v29 < 1)
    {
      goto LABEL_87;
    }

    v28 = v29 - 1;
    if (v29 == 1)
    {
      goto LABEL_73;
    }

    v32 = 0;
    if (result)
    {
      v39 = result + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          goto LABEL_73;
        }

        v41 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_73;
        }

        v32 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          goto LABEL_73;
        }

        ++v39;
        if (!--v28)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_65;
  }

  if (v31 != 45)
  {
    if (v29)
    {
      v32 = 0;
      if (result)
      {
        while (1)
        {
          v45 = *result - 48;
          if (v45 > 9)
          {
            goto LABEL_73;
          }

          v46 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_73;
          }

          v32 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_73;
          }

          ++result;
          if (!--v29)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_65;
    }

LABEL_73:
    v32 = 0;
    LOBYTE(v28) = 1;
    goto LABEL_74;
  }

  if (v29 >= 1)
  {
    v28 = v29 - 1;
    if (v29 != 1)
    {
      v32 = 0;
      if (result)
      {
        v33 = result + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            goto LABEL_73;
          }

          v35 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_73;
          }

          v32 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            goto LABEL_73;
          }

          ++v33;
          if (!--v28)
          {
            goto LABEL_74;
          }
        }
      }

LABEL_65:
      LOBYTE(v28) = 0;
LABEL_74:
      v62 = v28;
      v50 = v28;
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}