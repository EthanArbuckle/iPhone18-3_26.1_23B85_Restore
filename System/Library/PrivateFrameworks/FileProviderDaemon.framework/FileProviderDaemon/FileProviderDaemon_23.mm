uint64_t sub_1CF29EF00(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v251 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v221 = &v200 - v12;
  v223 = sub_1CF9E5A58();
  v222 = *(v223 - 8);
  v13 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v219 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v218 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v200 - v18;
  v230 = type metadata accessor for VFSItem(0);
  v232 = *(v230 - 8);
  v19 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v224 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v231 = &v200 - v22;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v23 = *(*(v236 - 8) + 64);
  MEMORY[0x1EEE9AC00](v236);
  v216 = (&v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v217 = (&v200 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v233 = (&v200 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v225 = (&v200 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v200 - v32);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v34 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v215 = &v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v214 = (&v200 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v229 = &v200 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v228 = (&v200 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v226 = &v200 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v234 = (&v200 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v200 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v227 = &v200 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v200 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v200 - v57);
  if (v9 != 1)
  {
    v59 = FPNotSupportedError();
    if (v59)
    {
      *v58 = v59;
      swift_storeEnumTagMultiPayload();
      a3(v58);
      v64 = &unk_1EC4BF300;
      v65 = &unk_1CFA006B0;
      v66 = v58;
      goto LABEL_8;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *aBlock = a1;
  memset(&aBlock[8], 0, 32);
  v59 = objc_sync_enter(a5);
  if (v59)
  {
LABEL_67:
    MEMORY[0x1EEE9AC00](v59);
    v198 = &v200 - 4;
    *(&v200 - 2) = a5;
    goto LABEL_70;
  }

  v211 = v49;
  v60 = a5[20];

  v212 = a5;
  v61 = objc_sync_exit(a5);
  if (v61)
  {
    goto LABEL_71;
  }

  v62 = *(v60 + 16);

  v213 = sub_1CEFDADE0(aBlock, v62, 1048832);

  v69 = v212;
  v70 = objc_sync_enter(v212);
  if (v70)
  {
    goto LABEL_69;
  }

  v201 = 0;
  v210 = v52;
  v207 = v55;
  v208 = a1;
  v209 = a4;
  v203 = a3;
  v71 = v69[20];

  v61 = objc_sync_exit(v69);
  if (v61)
  {
LABEL_71:
    MEMORY[0x1EEE9AC00](v61);
    v199 = &v200 - 4;
    *(&v200 - 2) = v212;
    goto LABEL_72;
  }

  v72 = type metadata accessor for VFSFileTree(0);
  os_unfair_lock_lock((v71 + 56));
  v73 = *(v71 + 64);
  v74 = *(v71 + 72);
  v75 = *(v71 + 88);
  v76 = *(v71 + 89);
  v77 = *(v71 + 90);

  v78 = *(v71 + 80);
  os_unfair_lock_unlock((v71 + 56));
  v206 = &v200;
  MEMORY[0x1EEE9AC00](v79);
  v200 = v72;
  *(&v200 - 10) = v72;
  *(&v200 - 18) = v213;
  *(&v200 - 7) = 0;
  *(&v200 - 6) = 0;
  *(&v200 - 8) = v71;
  *(&v200 - 40) = 2;
  v80 = v208;
  *(&v200 - 4) = 1;
  *(&v200 - 3) = v80;
  *(&v200 - 16) = 1;
  *(&v200 - 1) = 0;
  *&aBlock[32] = v73;
  *&aBlock[40] = v74;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1CEFDB088;
  *&aBlock[24] = &block_descriptor_234;
  v81 = _Block_copy(aBlock);
  v204 = v74;

  v205 = v81;
  v239 = v81;
  v240 = v78;
  v241 = v75;
  v242 = v76;
  v243 = v77;
  v202 = sub_1CEFDB034();
  v82 = swift_allocError();
  *v83 = 6;
  *(v83 + 8) = 0u;
  *(v83 + 24) = 0u;
  *(v83 + 40) = 19;
  *v33 = v82;
  swift_storeEnumTagMultiPayload();
  v84 = swift_allocObject();
  v84[2] = v33;
  v84[3] = sub_1CF2B9F90;
  v84[4] = &v200 - 12;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1CF1DBD3C;
  *(v85 + 24) = v84;
  *&aBlock[32] = sub_1CF1DBD5C;
  *&aBlock[40] = v85;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1CEFDB270;
  *&aBlock[24] = &block_descriptor_245;
  v86 = _Block_copy(aBlock);

  v87 = fpfs_fgetfileattrs_detailed();
  _Block_release(v86);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if (v86)
  {
    __break(1u);
  }

  if (v87)
  {
    swift_getErrorValue();
    v88 = v237;
    v89 = swift_allocError();
    *v90 = 6;
    *(v90 + 8) = 0u;
    *(v90 + 24) = 0u;
    *(v90 + 40) = 19;
    v91 = v87;
    v92 = sub_1CF199074(v89, v88);

    v93 = v225;
    *v225 = v92;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v93, v33, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v94 = v233;
  sub_1CEFCCBDC(v33, v233, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *aBlock = *v94;
    v95 = *aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v33, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v205);

    v96 = v95;
    *aBlock = sub_1CF9E52A8();
    sub_1CF196978();
    v97 = sub_1CF9E5658();

    v98 = v234;
    if ((v97 & 1) == 0)
    {
      goto LABEL_61;
    }

    v99 = v228;
    *v228 = xmmword_1CF9FD940;
    *(v99 + 16) = 2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    v100 = v94;
    v99 = v228;
    sub_1CEFE55D0(v100, v228, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v33, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v205);

    v98 = v234;
  }

  v101 = v229;
  sub_1CEFE55D0(v99, v229, &unk_1EC4BE2F0, qword_1CFA04220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v103 = v232;
  v104 = v232 + 56;
  v105 = v211;
  v106 = v230;
  v107 = v231;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v101, &unk_1EC4BE2F0, qword_1CFA04220);
    v108 = 1;
  }

  else
  {
    sub_1CEFE4C60(v101, v211, type metadata accessor for VFSItem);
    v108 = 0;
  }

  v109 = v207;
  v234 = *(v103 + 56);
  v234(v105, v108, 1, v106);
  sub_1CEFCCBDC(v105, v98, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v112 = *(v103 + 48);
  v110 = v103 + 48;
  v111 = v112;
  if (v112(v98, 1, v106) == 1)
  {
    sub_1CEFCCC44(v98, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_28:
    v115 = v227;
    sub_1CEFCCBDC(v105, v227, &unk_1EC4BEC00, &unk_1CF9FCB60);
    goto LABEL_29;
  }

  sub_1CEFE4C60(v98, v107, type metadata accessor for VFSItem);
  v113 = *v107;
  v114 = *(v107 + 8);
  if (v114 == 2 && !v113 || v114 == 2 && v113 == 1 || (v232 = v110, v132 = v107 + *(v106 + 28), (*(v132 + *(type metadata accessor for ItemMetadata() + 72)) & 1) != 0))
  {
    sub_1CEFE5888(v107, type metadata accessor for VFSItem);
    goto LABEL_28;
  }

  v69 = v212;
  v70 = objc_sync_enter(v212);
  if (v70)
  {
LABEL_69:
    MEMORY[0x1EEE9AC00](v70);
    v198 = &v200 - 4;
    *(&v200 - 2) = v69;
    goto LABEL_70;
  }

  v229 = v104;
  v61 = objc_sync_exit(v69);
  if (v61)
  {
    goto LABEL_71;
  }

  v133 = v221;
  sub_1CF25116C(v221);
  if ((*(v222 + 48))(v133, 1, v223) == 1)
  {
    sub_1CEFE5888(v107, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v133, &unk_1EC4BE310, qword_1CF9FCBE0);
    v106 = v230;
    goto LABEL_28;
  }

  v134 = v218;
  v135 = v133;
  sub_1CF9E5988();
  v136 = v222;
  v137 = v223;
  v138 = (v222 + 8);
  v233 = *(v222 + 8);
  (v233)(v135, v223);
  v139 = v220;
  (*(v136 + 32))(v220, v134, v137);
  v140 = *(v107 + 40);
  *aBlock = *(v107 + 32);
  *&aBlock[8] = v140;

  a5 = v212;
  v59 = objc_sync_enter(v212);
  if (v59)
  {
    goto LABEL_67;
  }

  v228 = v138;
  v141 = a5[20];

  v142 = objc_sync_exit(a5);
  v143 = v219;
  if (v142)
  {
    goto LABEL_76;
  }

  (*(v136 + 16))(v219, v141 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v137);

  v144 = *(a5[21] + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID);
  v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v147 = v146;
  v148 = v213;
  v149 = v139;
  v150 = v201;
  sub_1CF2AFAD4(v213, v149, aBlock, v143, v145, v147);
  v151 = v143;
  if (!v150)
  {

    (v233)(v143, v137);

    v59 = objc_sync_enter(a5);
    if (v59)
    {
      goto LABEL_67;
    }

    v155 = a5[20];

    v142 = objc_sync_exit(a5);
    v156 = a5;
    if (!v142)
    {
      v157 = *(v231 + 16);
      v159 = *(v231 + 32);
      v158 = *(v231 + 40);
      v160 = *(v231 + 24);
      swift_beginAccess();

      v161 = *(v155 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v239 = *(v155 + 96);
      *(v155 + 96) = 0x8000000000000000;
      sub_1CF1D1DC8(v157, v160, v159, v158, v208, 1, isUniquelyReferenced_nonNull_native);
      *(v155 + 96) = v239;
      swift_endAccess();

      v163 = objc_sync_enter(v156);
      if (!v163)
      {
        v164 = v156[20];

        v165 = objc_sync_exit(v156);
        if (!v165)
        {
          v222 = *(v164 + 24);
          os_unfair_lock_lock((v164 + 56));
          v166 = *(v164 + 64);
          v167 = *(v164 + 72);
          v168 = *(v164 + 88);
          v169 = *(v164 + 89);
          v170 = *(v164 + 90);

          v171 = *(v164 + 80);
          os_unfair_lock_unlock((v164 + 56));
          v219 = &v200;
          MEMORY[0x1EEE9AC00](v172);
          *(&v200 - 10) = v200;
          *(&v200 - 18) = v213;
          *(&v200 - 7) = 0;
          *(&v200 - 6) = 0;
          *(&v200 - 8) = v164;
          *(&v200 - 40) = 2;
          v173 = v208;
          *(&v200 - 4) = 0;
          *(&v200 - 3) = v173;
          *(&v200 - 16) = 1;
          *(&v200 - 1) = 0;
          *&aBlock[32] = v166;
          *&aBlock[40] = v167;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB088;
          *&aBlock[24] = &block_descriptor_258;
          v174 = _Block_copy(aBlock);
          v221 = v167;
          v175 = v174;

          v212 = v175;
          v239 = v175;
          v240 = v171;
          v241 = v168;
          v242 = v169;
          v243 = v170;
          v176 = swift_allocError();
          *v177 = 6;
          *(v177 + 8) = 0u;
          *(v177 + 24) = 0u;
          *(v177 + 40) = 19;
          a5 = v217;
          *v217 = v176;
          swift_storeEnumTagMultiPayload();
          v178 = swift_allocObject();
          *(v178 + 16) = a5;
          *(v178 + 24) = sub_1CF2B9F90;
          *(v178 + 32) = &v200 - 12;
          v179 = swift_allocObject();
          *(v179 + 16) = sub_1CF1DBD3C;
          *(v179 + 24) = v178;
          v218 = v178;
          *&aBlock[32] = sub_1CF1DBD5C;
          *&aBlock[40] = v179;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB270;
          *&aBlock[24] = &block_descriptor_269;
          v180 = _Block_copy(aBlock);

          v181 = fpfs_fgetfileattrs_detailed();
          _Block_release(v180);
          LOBYTE(v178) = swift_isEscapingClosureAtFileLocation();

          if ((v178 & 1) == 0)
          {
            if (v181)
            {
              swift_getErrorValue();
              v182 = v238;
              v183 = swift_allocError();
              *v184 = 6;
              *(v184 + 8) = 0u;
              *(v184 + 24) = 0u;
              *(v184 + 40) = 19;
              v185 = v181;
              v186 = sub_1CF199074(v183, v182);

              v187 = v183;
              a5 = v217;

              v188 = v225;
              *v225 = v186;
              swift_storeEnumTagMultiPayload();
              sub_1CEFDA9E0(v188, a5, &qword_1EC4BE000, &unk_1CFA006A0);
            }

            v189 = v216;
            sub_1CEFCCBDC(a5, v216, &qword_1EC4BE000, &unk_1CFA006A0);
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              v193 = v189;
              v192 = v214;
              sub_1CEFE55D0(v193, v214, &unk_1EC4BE2F0, qword_1CFA04220);
              sub_1CEFCCC44(a5, &qword_1EC4BE000, &unk_1CFA006A0);

              _Block_release(v212);

              (v233)(v220, v223);
              sub_1CEFE5888(v231, type metadata accessor for VFSItem);
              v109 = v207;
              v105 = v211;
              goto LABEL_56;
            }

            *aBlock = *v189;
            v95 = *aBlock;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(a5, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v212);

            v190 = v95;
            *aBlock = sub_1CF9E52A8();
            sub_1CF196978();
            v191 = sub_1CF9E5658();

            (v233)(v220, v223);
            sub_1CEFE5888(v231, type metadata accessor for VFSItem);
            v105 = v211;
            if (v191)
            {

              v192 = v214;
              *v214 = xmmword_1CF9FD940;
              *(v192 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              v109 = v207;
LABEL_56:
              v194 = v215;
              sub_1CEFE55D0(v192, v215, &unk_1EC4BE2F0, qword_1CFA04220);
              v195 = swift_getEnumCaseMultiPayload();
              v106 = v230;
              if (v195 == 1)
              {
                sub_1CEFCCC44(v194, &unk_1EC4BE2F0, qword_1CFA04220);
                v115 = v227;
                v196 = v227;
                v197 = 1;
              }

              else
              {
                v115 = v227;
                sub_1CEFE4C60(v194, v227, type metadata accessor for VFSItem);
                v196 = v115;
                v197 = 0;
              }

              v234(v196, v197, 1, v106);
LABEL_29:
              v116 = v203;
              v117 = v226;
              if ((v213 & 0x80000000) == 0)
              {
                close(v213);
              }

              sub_1CEFCCBDC(v115, v117, &unk_1EC4BEC00, &unk_1CF9FCB60);
              if (v111(v117, 1, v106) != 1)
              {
                v131 = v224;
                sub_1CEFE4C60(v117, v224, type metadata accessor for VFSItem);
                sub_1CEFD90AC(v131, v109, type metadata accessor for VFSItem);
                swift_storeEnumTagMultiPayload();
                v116(v109);
                sub_1CEFCCC44(v109, &unk_1EC4BF300, &unk_1CFA006B0);
                sub_1CEFE5888(v131, type metadata accessor for VFSItem);
                sub_1CEFCCC44(v105, &unk_1EC4BEC00, &unk_1CF9FCB60);
                v66 = v115;
                v64 = &unk_1EC4BEC00;
                v65 = &unk_1CF9FCB60;
                goto LABEL_8;
              }

              sub_1CEFCCC44(v117, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v118 = v115;
              v119 = v105;
              v120 = swift_allocObject();
              *(v120 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v109 = v207;
              v95 = swift_allocError();
              v122 = v121;
              sub_1CF1B8150();
              v123 = swift_allocError();
              *v124 = v120;
              *aBlock = v208;
              aBlock[8] = 1;
              memset(&aBlock[16], 0, 32);
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
              v249 = v123;
              sub_1CF2A8DE0(aBlock);
              *v122 = *aBlock;
              v125 = *&aBlock[16];
              v126 = *&aBlock[32];
              v127 = v246;
              *(v122 + 48) = v245;
              *(v122 + 64) = v127;
              *(v122 + 16) = v125;
              *(v122 + 32) = v126;
              v128 = v247;
              v129 = v248;
              v130 = v249;
              *(v122 + 128) = v250;
              *(v122 + 96) = v129;
              *(v122 + 112) = v130;
              *(v122 + 80) = v128;
              swift_willThrow();
              sub_1CEFCCC44(v119, &unk_1EC4BEC00, &unk_1CF9FCB60);
              sub_1CEFCCC44(v118, &unk_1EC4BEC00, &unk_1CF9FCB60);
              goto LABEL_5;
            }

            sub_1CEFCCC44(v211, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_61:
            v109 = v207;
            if ((v213 & 0x80000000) == 0)
            {
              close(v213);
            }

            v116 = v203;
            goto LABEL_5;
          }

          __break(1u);
          goto LABEL_66;
        }

        MEMORY[0x1EEE9AC00](v165);
        v199 = &v200 - 4;
        *(&v200 - 2) = v156;
LABEL_72:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v199, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v163);
      v198 = &v200 - 4;
      *(&v200 - 2) = v156;
LABEL_70:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v198, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_76:
    MEMORY[0x1EEE9AC00](v142);
    v199 = &v200 - 4;
    *(&v200 - 2) = a5;
    goto LABEL_72;
  }

  v95 = v150;

  v152 = v137;
  v153 = v137;
  v154 = v233;
  (v233)(v151, v152);

  v154(v220, v153);
  sub_1CEFE5888(v231, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v211, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v148 & 0x80000000) == 0)
  {
    close(v148);
  }

  v116 = v203;
LABEL_5:
  *v109 = v95;
  swift_storeEnumTagMultiPayload();
  v63 = v95;
  v116(v109);

  v64 = &unk_1EC4BF300;
  v65 = &unk_1CFA006B0;
  v66 = v109;
LABEL_8:
  result = sub_1CEFCCC44(v66, v64, v65);
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2A0E30(uint64_t a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v113 = a4;
  v8 = a2;
  v128 = *MEMORY[0x1E69E9840];
  v110 = type metadata accessor for VFSItem(0);
  v109 = *(v110 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v94 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v94 - v19);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v21 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v107 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = (v94 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v108 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v111 = v94 - v29;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v30 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v32 = (v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v94 - v34);
  if (v8 != 1)
  {
    v36 = FPNotSupportedError();
    if (v36)
    {
      *v35 = v36;
      swift_storeEnumTagMultiPayload();
      a3(v35);
      v41 = &unk_1EC4BF300;
      v42 = &unk_1CFA006B0;
      v43 = v35;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_35;
  }

  *aBlock = a1;
  memset(&aBlock[8], 0, 32);
  v36 = objc_sync_enter(a5);
  if (v36)
  {
    goto LABEL_35;
  }

  v102 = a1;
  v103 = a3;
  v37 = a5[20];

  v38 = objc_sync_exit(a5);
  if (v38)
  {
    goto LABEL_36;
  }

  v39 = *(v37 + 16);

  v46 = sub_1CEFDADE0(aBlock, v39, 3145728);

  v47 = fpfs_clear_acl();
  if ((v47 & 0x80000000) == 0)
  {
    sub_1CF19AD04(0xD000000000000021, 0x80000001CFA3D5D0, v46);
    sub_1CF19AD04(0xD00000000000001FLL, 0x80000001CFA3D600, v46);
    sub_1CF19AD04(0xD000000000000022, 0x80000001CFA3D620, v46);
    sub_1CF19AD04(0xD000000000000021, 0x80000001CFA3D4B0, v46);
    v36 = objc_sync_enter(a5);
    if (!v36)
    {
      v48 = a5[20];

      v38 = objc_sync_exit(a5);
      if (v38)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      sub_1CF1CE694(v102, 1, aBlock);

      swift_endAccess();

      v36 = objc_sync_enter(a5);
      if (!v36)
      {
        v49 = a5[20];

        v38 = objc_sync_exit(a5);
        if (!v38)
        {
          v50 = type metadata accessor for VFSFileTree(0);
          v101 = *(v49 + 24);
          os_unfair_lock_lock((v49 + 56));
          v51 = *(v49 + 72);
          v95 = *(v49 + 64);
          LODWORD(v98) = *(v49 + 88);
          LODWORD(v97) = *(v49 + 89);
          v96 = *(v49 + 90);

          v100 = &aBlock[16];
          v52 = *(v49 + 80);
          os_unfair_lock_unlock((v49 + 56));
          v94[1] = v94;
          MEMORY[0x1EEE9AC00](v53);
          v99 = &v94[-12];
          v94[-10] = v50;
          LODWORD(v94[-9]) = v46;
          v94[-7] = 0;
          v94[-6] = 0;
          v94[-8] = v49;
          LOBYTE(v94[-5]) = 2;
          v54 = v102;
          v94[-4] = 0;
          v94[-3] = v54;
          LOBYTE(v94[-2]) = 1;
          v94[-1] = 0;
          *&aBlock[32] = v95;
          *&aBlock[40] = v51;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB088;
          *&aBlock[24] = &block_descriptor_213;
          v55 = _Block_copy(aBlock);
          v95 = v51;

          v94[0] = v55;
          v123 = v55;
          v124 = v52;
          v125 = v98;
          v126 = v97;
          v127 = v96;
          v98 = sub_1CEFDB034();
          v56 = swift_allocError();
          *v57 = 6;
          *(v57 + 8) = 0u;
          *(v57 + 24) = 0u;
          *(v57 + 40) = 19;
          *v20 = v56;
          swift_storeEnumTagMultiPayload();
          v58 = swift_allocObject();
          v58[2] = v20;
          v58[3] = sub_1CEFDB808;
          v58[4] = v99;
          v59 = swift_allocObject();
          *(v59 + 16) = sub_1CEFDB37C;
          *(v59 + 24) = v58;
          v99 = v58;
          *&aBlock[32] = sub_1CEFDB240;
          *&aBlock[40] = v59;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB270;
          *&aBlock[24] = &block_descriptor_222;
          v60 = _Block_copy(aBlock);

          v61 = fpfs_fgetfileattrs_detailed();
          _Block_release(v60);
          LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

          if (v60)
          {
            __break(1u);
          }

          if (v61)
          {
            swift_getErrorValue();
            v100 = v114;
            v97 = v115;
            v62 = swift_allocError();
            *v63 = 6;
            *(v63 + 8) = 0u;
            *(v63 + 24) = 0u;
            *(v63 + 40) = 19;
            v64 = v61;
            v101 = v49;
            v65 = v61;
            v66 = v64;
            v67 = sub_1CF199074(v62, v97);

            v61 = v65;
            *v17 = v67;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v17, v20, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          sub_1CEFCCBDC(v20, v14, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            LODWORD(v101) = v46;

            v71 = v105;
            sub_1CEFE55D0(v14, v105, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v20, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v94[0]);

            goto LABEL_25;
          }

          *aBlock = *v14;
          v68 = *aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CEFCCC44(v20, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v94[0]);

          v69 = v68;
          *aBlock = sub_1CF9E52A8();
          sub_1CF196978();
          v70 = sub_1CF9E5658();

          if (v70)
          {
            LODWORD(v101) = v46;

            v71 = v105;
            *v105 = xmmword_1CF9FD940;
            *(v71 + 16) = 2;
            swift_storeEnumTagMultiPayload();
LABEL_25:
            v73 = v107;
            sub_1CEFE55D0(v71, v107, &unk_1EC4BE2F0, qword_1CFA04220);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v75 = v109;
            v76 = (v109 + 56);
            v77 = v103;
            v78 = v111;
            v79 = v110;
            v80 = v108;
            if (EnumCaseMultiPayload == 1)
            {
              sub_1CEFCCC44(v73, &unk_1EC4BE2F0, qword_1CFA04220);
              v81 = 1;
            }

            else
            {
              sub_1CEFE4C60(v73, v111, type metadata accessor for VFSItem);
              v81 = 0;
            }

            (*v76)(v78, v81, 1, v79);
            if ((v101 & 0x80000000) == 0)
            {
              close(v101);
            }

            sub_1CEFCCBDC(v78, v80, &unk_1EC4BEC00, &unk_1CF9FCB60);
            if ((*(v75 + 48))(v80, 1, v79) != 1)
            {
              v93 = v104;
              sub_1CEFE4C60(v80, v104, type metadata accessor for VFSItem);
              sub_1CEFD90AC(v93, v32, type metadata accessor for VFSItem);
              swift_storeEnumTagMultiPayload();
              v77(v32);
              sub_1CEFCCC44(v32, &unk_1EC4BF300, &unk_1CFA006B0);
              sub_1CEFE5888(v93, type metadata accessor for VFSItem);
              v41 = &unk_1EC4BEC00;
              v42 = &unk_1CF9FCB60;
              v43 = v78;
              goto LABEL_8;
            }

            sub_1CEFCCC44(v80, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v82 = swift_allocObject();
            *(v82 + 16) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            v68 = swift_allocError();
            v84 = v83;
            sub_1CF1B8150();
            v85 = swift_allocError();
            *v86 = v82;
            *aBlock = v102;
            aBlock[8] = 1;
            memset(&aBlock[16], 0, 32);
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = v85;
            sub_1CF2A8DE0(aBlock);
            *v84 = *aBlock;
            v87 = *&aBlock[16];
            v88 = *&aBlock[32];
            v89 = v118;
            *(v84 + 48) = v117;
            *(v84 + 64) = v89;
            *(v84 + 16) = v87;
            *(v84 + 32) = v88;
            v90 = v119;
            v91 = v120;
            v92 = v121;
            *(v84 + 128) = v122;
            *(v84 + 96) = v91;
            *(v84 + 112) = v92;
            *(v84 + 80) = v90;
            swift_willThrow();
            sub_1CEFCCC44(v78, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_5;
          }

          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_5;
        }

LABEL_36:
        MEMORY[0x1EEE9AC00](v38);
        v94[-2] = a5;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v94[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

LABEL_35:
    MEMORY[0x1EEE9AC00](v36);
    v94[-2] = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v94[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v72 = MEMORY[0x1D38683F0]();
  *aBlock = 8;
  memset(&aBlock[8], 0, 32);
  aBlock[40] = 19;
  v68 = sub_1CF19BBE4(v72, aBlock);
  sub_1CF1969CC(aBlock);
  swift_willThrow();
  if ((v46 & 0x80000000) == 0)
  {
LABEL_23:
    close(v46);
  }

LABEL_5:
  *v32 = v68;
  swift_storeEnumTagMultiPayload();
  v40 = v68;
  v103(v32);

  v41 = &unk_1EC4BF300;
  v42 = &unk_1CFA006B0;
  v43 = v32;
LABEL_8:
  result = sub_1CEFCCC44(v43, v41, v42);
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2A2070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 216);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = a2;
  v8[5] = a3;

  v9 = v7;
  sub_1CF01001C(0, "removeStuckConflictsFromTheWharf(conflictsToRemove:completion:)", 63, 2, sub_1CF2AFA3C, v8);
}

uint64_t sub_1CF2A2134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a2 + 136);
      v7 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
      v8 = *(sub_1CF9E5A58() - 8);
      v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        sub_1CF9E5A18();
        swift_beginAccess();
        v11 = sub_1CF9E6978();
        fpfs_wharf_delete_item_at(v6 + v7, 4294967294, v11 + 32);
        swift_endAccess();

        v9 += v10;
        --v5;
      }

      while (v5);
    }
  }

  return a3();
}

uint64_t sub_1CF2A2294(uint64_t a1, void (*a2)(BOOL), uint64_t a3)
{
  v54[1] = a3;
  v55 = a2;
  v74 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  v19 = *(a1 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root;
  sub_1CF9E5958();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1CF9E5A18();
  v21 = sub_1CF9E6888();

  v22 = [v20 enumeratorAtPath_];

  v68 = v22;
  if (v22)
  {
    v22 = 0;
    v66 = (v9 + 16);
    v67 = (v9 + 8);
    v65 = (v69 + 8);
    *&v23 = 136446466;
    v57 = v23;
    v24 = v15;
    v60 = v9;
    v59 = v4;
    v58 = v18;
    v64 = v15;
    v56 = v12;
    while (1)
    {
      if ([v68 nextObject])
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      v73[0] = v71;
      v73[1] = v72;
      if (!*(&v72 + 1))
      {

        sub_1CEFCCC44(v73, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_18;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_18;
      }

      if (v22 == 10000)
      {
        break;
      }

      v69 = v22;
      sub_1CF9E5968();

      v27 = [objc_opt_self() defaultManager];
      v28 = sub_1CF9E5928();
      *&v73[0] = 0;
      v29 = [v27 removeItemAtURL:v28 error:v73];

      if (v29)
      {
        v25 = *v67;
        v26 = *&v73[0];
        v25(v24, v8);
      }

      else
      {
        v30 = *&v73[0];
        v31 = v24;
        v32 = sub_1CF9E57F8();

        swift_willThrow();
        v33 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        (*v66)(v12, v31, v8);
        v34 = v32;
        v35 = sub_1CF9E6108();
        v36 = sub_1CF9E7298();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v73[0] = v63;
          *v37 = v57;
          v61 = v36;
          v38 = sub_1CF9E5928();
          v39 = [v38 fp_shortDescription];

          v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v41 = v7;
          v42 = v8;
          v44 = v43;

          v45 = *v67;
          (*v67)(v12, v42);
          v46 = sub_1CEFD0DF0(v40, v44, v73);
          v8 = v42;
          v7 = v41;

          *(v37 + 4) = v46;
          *(v37 + 12) = 2112;
          swift_getErrorValue();
          v47 = Error.prettyDescription.getter(v70);
          *(v37 + 14) = v47;
          v48 = v62;
          *v62 = v47;
          _os_log_impl(&dword_1CEFC7000, v35, v61, "failed to remove %{public}s: %@", v37, 0x16u);
          sub_1CEFCCC44(v48, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v48, -1, -1);
          v49 = v63;
          __swift_destroy_boxed_opaque_existential_1(v63);
          v4 = v59;
          MEMORY[0x1D386CDC0](v49, -1, -1);
          v50 = v37;
          v9 = v60;
          MEMORY[0x1D386CDC0](v50, -1, -1);

          (*v65)(v7, v4);
          v24 = v64;
          v45(v64, v8);
          v18 = v58;
          v12 = v56;
        }

        else
        {

          v51 = *v67;
          (*v67)(v12, v8);
          (*v65)(v7, v4);
          v24 = v64;
          v51(v64, v8);
        }
      }

      v22 = v69 + 1;
    }

    v22 = 10000;
  }

LABEL_18:
  v55(v22 == 10000);
  result = (*(v9 + 8))(v18, v8);
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF2A2A0C(void *a1, void (*a2)(void), void *a3)
{
  v84 = a2;
  v85 = a3;
  v4 = sub_1CF9E63A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6448();
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v72 - v16;
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - v26;
  swift_beginAccess();
  v28 = a1[30];
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_23:
    v84();
    return;
  }

  if (v28 < 0)
  {
    v71 = a1[30];
  }

  v29 = sub_1CF9E7818();
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_3:
  v76 = v5;
  v75 = v8;
  if ((v28 & 0xC000000000000001) != 0)
  {

    v86 = MEMORY[0x1D3869C30](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v86 = *(v28 + 32);
  }

  v30 = a1[29];
  v31 = [v30 barrierFolderURL];
  v74 = v4;
  if (v31)
  {
    v32 = v31;
    sub_1CF9E59D8();

    v33 = *(v19 + 32);
    v33(v17, v24, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v33(v27, v17, v18);
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    v29 = objc_sync_enter(a1);
    if (v29)
    {
      goto LABEL_27;
    }

    v34 = a1[20];

    v35 = objc_sync_exit(a1);
    if (v35)
    {
      MEMORY[0x1EEE9AC00](v35);
      *(&v72 - 2) = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v72 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    (*(v19 + 16))(v27, v34 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v18);

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  v36 = sub_1CF9E5928();
  v37 = *(v19 + 8);
  v37(v27, v18);
  [v30 setBarrierFolderURL_];

  v38 = fpfs_current_or_default_log();
  v39 = v83;
  sub_1CF9E6128();

  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();
  if (!os_log_type_enabled(v40, v41))
  {

    (*(v81 + 8))(v39, v82);
    goto LABEL_16;
  }

  v73 = v37;
  v42 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  aBlock = v72;
  *v42 = 136315138;
  v43 = [v30 barrierFolderURL];

  if (!v43)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    MEMORY[0x1EEE9AC00](v29);
    *(&v72 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v72 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v44 = v77;
  sub_1CF9E59D8();

  v45 = sub_1CF9E5928();
  v46 = [v45 fp_shortDescription];

  v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v48;

  v73(v44, v18);
  v50 = sub_1CEFD0DF0(v47, v49, &aBlock);

  *(v42 + 4) = v50;
  _os_log_impl(&dword_1CEFC7000, v40, v41, "🚧  FS: waiting for barrier on %s", v42, 0xCu);
  v51 = v72;
  __swift_destroy_boxed_opaque_existential_1(v72);
  MEMORY[0x1D386CDC0](v51, -1, -1);
  MEMORY[0x1D386CDC0](v42, -1, -1);

  (*(v81 + 8))(v83, v82);
LABEL_16:
  v52 = v86;
  v53 = [v86 waitableBarrier];
  if (v53)
  {
    v54 = v53;
    v86 = v52;
    v55 = a1[27];
    v56 = swift_allocObject();
    v57 = v85;
    *(v56 + 16) = v84;
    *(v56 + 24) = v57;
    v58 = v55;

    v59 = fpfs_current_log();
    v85 = fpfs_adopt_log();
    v60 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v89 = v61;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v62 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v62);

    sub_1CF9E6978();

    v63 = __fp_log_fork();

    *(v60 + 16) = v63;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = v60;
    *(v64 + 32) = v58;
    *(v64 + 40) = "eventBarrier(_:)";
    *(v64 + 48) = 16;
    *(v64 + 56) = 2;
    *(v64 + 64) = sub_1CF2B9FA8;
    *(v64 + 72) = v56;
    v92 = sub_1CEFD5064;
    v93 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v89 = 1107296256;
    v90 = sub_1CEFCA444;
    v91 = &block_descriptor_195;
    v65 = _Block_copy(&aBlock);
    v66 = v58;
    v84 = v59;

    v67 = v78;
    sub_1CF9E63F8();
    v87 = MEMORY[0x1E69E7CC0];
    sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v68 = v80;
    v69 = v74;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v65);
    (*(v76 + 8))(v68, v69);
    (*(v79 + 8))(v67, v75);

    v70 = v85;
    v52 = fpfs_adopt_log();
  }

  else
  {
    v84();
  }
}

void sub_1CF2A34B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E63A8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6448();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "🚧  FS: barrier observed, waiting for flocks to be released", v21, 2u);
    MEMORY[0x1D386CDC0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v41 = *(a1 + 272);
  v22 = *(a1 + 216);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = v22;

  v25 = fpfs_current_log();
  v40 = fpfs_adopt_log();
  v26 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v49 = v27;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v28 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v28);

  sub_1CF9E6978();

  v29 = __fp_log_fork();

  *(v26 + 16) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v24;
  *(v30 + 40) = "fullBarrier(_:)";
  *(v30 + 48) = 15;
  *(v30 + 56) = 2;
  *(v30 + 64) = sub_1CF2B99BC;
  *(v30 + 72) = v23;
  v52 = sub_1CF2B9F54;
  v53 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFCA444;
  v51 = &block_descriptor_1482;
  v31 = _Block_copy(&aBlock);
  v32 = v24;
  v39 = v25;

  v33 = v12;
  sub_1CF9E63F8();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v34 = v42;
  v35 = v46;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v31);
  (*(v45 + 8))(v34, v35);
  (*(v43 + 8))(v33, v44);

  v36 = v40;
  v37 = fpfs_adopt_log();
}

uint64_t sub_1CF2A3A0C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E7298();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "🚧 FS: barrier wait completed", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return a1(v11);
}

uint64_t sub_1CF2A3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 216);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v14 = v12;

  sub_1CF01001C(0, a4, a5, 2, a6, v13);
}

uint64_t sub_1CF2A3C4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  [*(a1 + 232) setPlannedRescan_];
  result = swift_beginAccess();
  v5 = *(a1 + 240);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return a2(result);
  }

  result = sub_1CF9E7818();
  v6 = result;
  if (!result)
  {
    return a2(result);
  }

LABEL_3:
  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3869C30](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 didProcessBarrierEventUUID_];
    }

    return a2(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2A3D64(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = sub_1CF9E63D8();
  v37 = *(v38 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = a1[1];
  v48 = *a1;
  v49 = v17;
  v18 = a1[3];
  v50 = a1[2];
  v51 = v18;
  v19 = *(v4 + 224);
  v41 = *(v4 + 216);
  v20 = sub_1CF9E6448();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 1, 1, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v24 = v49;
  *(v23 + 24) = v48;
  *(v23 + 40) = v24;
  v25 = v51;
  *(v23 + 56) = v50;
  *(v23 + 72) = v25;
  *(v23 + 88) = a2;
  *(v23 + 96) = a3;
  v26 = swift_allocObject();
  v26[2] = sub_1CF2AF9D0;
  v26[3] = v22;
  v26[4] = v19;
  swift_retain_n();
  v40 = v41;

  sub_1CF1AE1DC(&v48, &aBlock);

  v27 = fpfs_current_log();
  v39 = *(v19 + 16);
  v41 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v28 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v29 = v36;
    sub_1CF9E6438();
    (*(v21 + 8))(v13, v20);
    v28 = sub_1CF9E63C8();
    (*(v37 + 8))(v29, v38);
  }

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = sub_1CF2AF9D8;
  v30[4] = v23;
  v46 = sub_1CF2BA17C;
  v47 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_174;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  v46 = sub_1CF2AF9E8;
  v47 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_177_0;
  v33 = _Block_copy(&aBlock);

  v34 = v40;
  fp_task_tracker_async_and_qos(v39, v40, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v28, v31, v33);
  _Block_release(v33);
  _Block_release(v31);

  return sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2A4244(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2AF9F4);
    *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a3(0);
}

uint64_t sub_1CF2A43B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v7 = sub_1CF9E63D8();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = *(v4 + 224);
  v37 = *(v4 + 216);
  v18 = sub_1CF9E6448();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  v22 = v38;
  v21[2] = v4;
  v21[3] = v22;
  v21[4] = a2;
  v21[5] = a3;
  v23 = swift_allocObject();
  v23[2] = sub_1CF2AF92C;
  v23[3] = v20;
  v23[4] = v17;
  swift_retain_n();
  v37 = v37;

  v24 = fpfs_current_log();
  v36 = *(v17 + 16);
  v38 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v25 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v26 = v33;
    sub_1CF9E6438();
    (*(v19 + 8))(v13, v18);
    v25 = sub_1CF9E63C8();
    (*(v34 + 8))(v26, v35);
  }

  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = sub_1CF2AF970;
  v27[4] = v21;
  v43 = sub_1CEFCA438;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1CEFCA444;
  v42 = &block_descriptor_9;
  v28 = _Block_copy(&aBlock);
  v29 = v24;

  v43 = sub_1CF2AF9C4;
  v44 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1CEFCA444;
  v42 = &block_descriptor_158;
  v30 = _Block_copy(&aBlock);

  v31 = v37;
  fp_task_tracker_async_and_qos(v36, v37, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v25, v28, v30);
  _Block_release(v30);
  _Block_release(v28);

  return sub_1CEFCCC44(v38, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2A4868(int a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v224 = a5;
  LODWORD(v210) = a2;
  v213 = a1;
  v238 = *MEMORY[0x1E69E9840];
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v7 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v194 = (&v192 - v8);
  v207 = type metadata accessor for VFSItem(0);
  v201 = *(v207 - 8);
  v9 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v202 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v11 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v197 = (&v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v196 = (&v192 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v204 = (&v192 - v16);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v17 = *(*(v203 - 8) + 64);
  MEMORY[0x1EEE9AC00](v203);
  v199 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v205 = (&v192 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v200 = &v192 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v209 = &v192 - v25;
  v212 = sub_1CF9E5A58();
  v214 = *(v212 - 8);
  v26 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v208 = &v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v211 = &v192 - v29;
  v30 = sub_1CF9E6118();
  v217 = *(v30 - 8);
  v218 = v30;
  v31 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v195 = &v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v198 = &v192 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v216 = &v192 - v36;
  v37 = sub_1CF9E6068();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v223 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v192 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v192 - v46;
  v48 = type metadata accessor for Signpost(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v227 = &v192 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v221 = qword_1EDEBBE40;
  (*(v38 + 56))(v47, 1, 1, v37);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&aBlock = 0xD000000000000020;
  *(&aBlock + 1) = 0x80000001CFA3D8A0;
  v215 = a3;
  v225 = a4;
  v51 = sub_1CF9E6888();
  v52 = [v51 fp_prettyPath];

  v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = v54;

  MEMORY[0x1D3868CC0](v53, v55);

  v219 = *(&aBlock + 1);
  v220 = aBlock;
  v222 = v47;
  sub_1CEFCCBDC(v47, v44, &unk_1EC4BED20, &unk_1CFA00700);
  v56 = *(v38 + 48);
  if (v56(v44, 1, v37) == 1)
  {
    v57 = v221;
    v58 = v221;
    v59 = v223;
    sub_1CF9E6048();
    v60 = v56(v44, 1, v37);
    v61 = v57;
    if (v60 != 1)
    {
      sub_1CEFCCC44(v44, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v59 = v223;
    (*(v38 + 32))(v223, v44, v37);
    v61 = v221;
  }

  v62 = v227;
  (*(v38 + 16))(v227, v59, v37);
  *&v62[*(v48 + 20)] = v61;
  v63 = &v62[*(v48 + 24)];
  *v63 = "FS: handle event";
  *(v63 + 1) = 16;
  v63[16] = 2;
  v64 = v61;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CF9FA450;
  *(v65 + 56) = MEMORY[0x1E69E6158];
  *(v65 + 64) = sub_1CEFD51C4();
  v66 = v219;
  *(v65 + 32) = v220;
  *(v65 + 40) = v66;
  v190 = v65;
  LOBYTE(v189) = 2;
  v188 = 2;
  sub_1CF9E6028();

  (*(v38 + 8))(v59, v37);
  sub_1CEFCCC44(v222, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = v226;
  v68 = objc_sync_enter(v226);
  if (v68)
  {
    goto LABEL_69;
  }

  v69 = v67[20];

  v70 = objc_sync_exit(v67);
  if (v70)
  {
    goto LABEL_70;
  }

  v71 = *(v69 + 24);

  if (v71 != v224)
  {
    if (!fpfs_supports_parent_mtime_iopolicy() || (v213 & 0xB00) == 0 || (v213 & 0x80000) != 0 || (v210 & 1) != 0)
    {
      goto LABEL_63;
    }

    sub_1CF9E58C8();
    v84 = v208;
    sub_1CF9E5988();
    v85 = sub_1CF9E5A18();
    v87 = v86;
    v88 = *(v214 + 8);
    v214 += 8;
    v88(v84, v212);
    v89 = sub_1CF25D188();
    if (*(v90 + 8))
    {

      v91 = sub_1CF6E9AF0(&v231, v85, v87);

      (v89)(&aBlock, 0);
      if ((v91 & 1) == 0)
      {
        v92 = fpfs_current_or_default_log();
        v93 = v198;
        sub_1CF9E6128();

        v94 = sub_1CF9E6108();
        v95 = sub_1CF9E7298();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *&aBlock = v97;
          *v96 = 136446210;
          v98 = sub_1CF9E6888();

          v99 = [v98 fp_prettyPath];

          v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v102 = v101;

          v103 = sub_1CEFD0DF0(v100, v102, &aBlock);

          *(v96 + 4) = v103;
          _os_log_impl(&dword_1CEFC7000, v94, v95, "deduplicating FSEvent parent lookup for %{public}s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v97);
          MEMORY[0x1D386CDC0](v97, -1, -1);
          MEMORY[0x1D386CDC0](v96, -1, -1);

          (*(v217 + 8))(v198, v218);
        }

        else
        {

          (*(v217 + 8))(v93, v218);
        }

LABEL_49:
        v88(v211, v212);
        goto LABEL_63;
      }
    }

    else
    {
      (v89)(&aBlock, 0);
    }

    v104 = qword_1EDEBBE70;
    swift_beginAccess();
    v105 = *(v67 + v104);
    v106 = __CFADD__(v105, 1);
    v107 = v105 + 1;
    if (v106)
    {
      __break(1u);
      goto LABEL_65;
    }

    *(v67 + v104) = v107;
    v68 = objc_sync_enter(v67);
    if (!v68)
    {
      v108 = v88;
      v224 = v85;
      v225 = v64;
      v109 = v67[20];

      v70 = objc_sync_exit(v67);
      if (!v70)
      {
        v110 = type metadata accessor for VFSFileTree(0);
        Strong = swift_unknownObjectWeakLoadStrong();
        v112 = v67[36];
        fpfs_openflags(0x208000u);
        v223 = v87;
        sub_1CF9E6978();
        v113 = openat_s();

        v222 = Strong;
        if (v113 < 0)
        {
          v140 = MEMORY[0x1D38683F0](v114);
          *&v237[0] = 0;
          aBlock = 0u;
          v236 = 0u;
          BYTE8(v237[0]) = 19;
          v135 = sub_1CF19BBE4(v140, &aBlock);
          sub_1CF1969CC(&aBlock);
          swift_willThrow();
          v138 = v209;
          v88 = v108;
          goto LABEL_37;
        }

        v220 = v108;
        v219 = *(v109 + 24);
        os_unfair_lock_lock((v109 + 56));
        v116 = *(v109 + 64);
        v115 = *(v109 + 72);
        LODWORD(v216) = *(v109 + 88);
        LODWORD(v215) = *(v109 + 89);
        LODWORD(v221) = v113;
        v213 = *(v109 + 90);

        v117 = *(v109 + 80);
        os_unfair_lock_unlock((v109 + 56));
        v208 = &v192;
        MEMORY[0x1EEE9AC00](v118);
        *(&v192 - 10) = v110;
        *(&v192 - 18) = v113;
        *(&v192 - 8) = v109;
        *(&v192 - 7) = Strong;
        *(&v192 - 6) = v112;
        *(&v192 - 40) = 2;
        v188 = 0;
        v189 = 0;
        LOBYTE(v190) = -1;
        v191 = 0;
        *&v237[0] = v116;
        *(&v237[0] + 1) = v115;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v236 = sub_1CEFDB088;
        *(&v236 + 1) = &block_descriptor_1078;
        v119 = _Block_copy(&aBlock);
        v210 = v115;

        v198 = v119;
        v231 = v119;
        v232 = v117;
        LOBYTE(v233) = v216;
        BYTE1(v233) = v215;
        BYTE2(v233) = v213;
        sub_1CEFDB034();
        v120 = swift_allocError();
        *v121 = 6;
        *(v121 + 8) = 0u;
        *(v121 + 24) = 0u;
        *(v121 + 40) = 19;
        v122 = v204;
        *v204 = v120;
        swift_storeEnumTagMultiPayload();
        v123 = swift_allocObject();
        v123[2] = v122;
        v123[3] = sub_1CF2B9F90;
        v123[4] = &v192 - 12;
        v124 = swift_allocObject();
        *(v124 + 16) = sub_1CF1DBD3C;
        *(v124 + 24) = v123;
        *&v237[0] = sub_1CF1DBD5C;
        *(&v237[0] + 1) = v124;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v236 = sub_1CEFDB270;
        *(&v236 + 1) = &block_descriptor_1089;
        v125 = _Block_copy(&aBlock);

        v126 = fpfs_fgetfileattrs_detailed();
        _Block_release(v125);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          if (v126)
          {
            swift_getErrorValue();
            v128 = v228;
            v129 = swift_allocError();
            *v130 = 6;
            *(v130 + 8) = 0u;
            *(v130 + 24) = 0u;
            *(v130 + 40) = 19;
            v131 = v126;
            v132 = sub_1CF199074(v129, v128);

            v122 = v204;
            v133 = v196;
            *v196 = v132;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v133, v122, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          v134 = v197;
          sub_1CEFCCBDC(v122, v197, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            sub_1CEFE55D0(v134, v205, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v122, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v198);

            v138 = v209;
            v67 = v226;
            goto LABEL_34;
          }

          *&aBlock = *v134;
          v135 = aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CEFCCC44(v122, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v198);

          v136 = v135;
          LODWORD(aBlock) = sub_1CF9E52A8();
          sub_1CF196978();
          v137 = sub_1CF9E5658();

          v67 = v226;
          v138 = v209;
          if (v137)
          {

            v139 = v205;
            *v205 = xmmword_1CF9FD940;
            *(v139 + 16) = 2;
            swift_storeEnumTagMultiPayload();
LABEL_34:
            v141 = v220;
            v142 = v200;
            close(v221);

            swift_unknownObjectRelease();
            v143 = v201;
            v144 = v202;
            v145 = v199;
            v146 = v205;
            goto LABEL_39;
          }

          close(v221);
          v88 = v220;
LABEL_37:
          v147 = v135;
          LODWORD(aBlock) = sub_1CF9E5328();
          sub_1CF196978();
          v148 = sub_1CF9E5658();

          swift_unknownObjectRelease();

          if ((v148 & 1) == 0)
          {

            v158 = fpfs_current_or_default_log();
            v159 = v195;
            sub_1CF9E6128();
            v160 = v135;
            v161 = sub_1CF9E6108();
            v162 = sub_1CF9E72A8();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              *v163 = 138412290;
              swift_getErrorValue();
              v165 = Error.prettyDescription.getter(v229);
              *(v163 + 4) = v165;
              *v164 = v165;
              _os_log_impl(&dword_1CEFC7000, v161, v162, "failed to bump parent mTime %@", v163, 0xCu);
              sub_1CEFCCC44(v164, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v164, -1, -1);
              MEMORY[0x1D386CDC0](v163, -1, -1);
            }

            (*(v217 + 8))(v159, v218);
            goto LABEL_49;
          }

          v141 = v88;

          v146 = v205;
          *v205 = xmmword_1CF9FD930;
          *(v146 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v143 = v201;
          v144 = v202;
          v145 = v199;
          v142 = v200;
LABEL_39:
          sub_1CEFE55D0(v146, v145, &unk_1EC4BE2F0, qword_1CFA04220);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1CEFCCC44(v145, &unk_1EC4BE2F0, qword_1CFA04220);
            v149 = 1;
          }

          else
          {
            sub_1CEFE4C60(v145, v138, type metadata accessor for VFSItem);
            v149 = 0;
          }

          v150 = v141;
          v151 = *(v143 + 56);
          v152 = v207;
          v151(v138, v149, 1, v207);
          sub_1CEFCCBDC(v138, v142, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if ((*(v143 + 48))(v142, 1, v152) == 1)
          {

            sub_1CEFCCC44(v138, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v150(v211, v212);
            sub_1CEFCCC44(v142, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_63;
          }

          sub_1CEFE4C60(v142, v144, type metadata accessor for VFSItem);
          v153 = sub_1CF25D188();
          if (*(v154 + 8))
          {
            v155 = *(v144 + *(v207 + 36));
            swift_bridgeObjectRelease_n();
            v156 = v155;
            v157 = v207;
            sub_1CF6E995C(&v231, v156, v224, v223);

            (v153)(&aBlock, 0);
          }

          else
          {

            (v153)(&aBlock, 0);
            v157 = v207;
          }

          v166 = *(v157 + 28);
          v167 = v144 + v166 + *(type metadata accessor for ItemMetadata() + 28);
          sub_1CF9E5C98();
          v169 = v209;
          if ((*&v168 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v168 > -9.22337204e18)
            {
              if (v168 < 9.22337204e18)
              {
                if (fpfs_is_busy_date())
                {
                  sub_1CEFE5888(v144, type metadata accessor for VFSItem);
                  v170 = v169;
                }

                else
                {
                  v171 = (v67 + qword_1EDEAFB30);
                  swift_beginAccess();
                  v172 = v171[1];
                  aBlock = *v171;
                  v236 = v172;
                  v237[0] = v171[2];
                  *(v237 + 9) = *(v171 + 41);
                  v174 = *(&aBlock + 1);
                  v173 = aBlock;
                  if (*(&aBlock + 1))
                  {

                    v175 = v173;
                  }

                  else
                  {
                    v175 = 0;
                  }

                  v231 = v173;
                  v232 = v174;
                  v176 = v171[2];
                  v233 = v171[1];
                  v234[0] = v176;
                  *(v234 + 9) = *(v171 + 41);
                  sub_1CEFCCBDC(&aBlock, v230, &unk_1EC4BEDF0, &qword_1CFA00818);
                  sub_1CEFCCC44(&v231, &unk_1EC4BEDF0, &qword_1CFA00818);
                  v177 = sub_1CF25D188();
                  if (*(v178 + 8))
                  {
                    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
                    v180 = *(v179 + 48);
                    v220 = v150;
                    v181 = v144;
                    v182 = *(v179 + 64);
                    v183 = *(v181 + 8);
                    v184 = v194;
                    *v194 = *v181;
                    *(v184 + 8) = v183;
                    sub_1CEFD90AC(v181, v184 + v180, type metadata accessor for VFSItem);
                    v151(v184 + v180, 0, 1, v207);
                    *(v184 + v182) = v175;
                    swift_storeEnumTagMultiPayload();

                    sub_1CF25C780(v184, 0, 0);
                    sub_1CEFCCC44(v184, &unk_1EC4BED40, &unk_1CFA00720);
                    (v177)(v230, 0);

                    sub_1CEFE5888(v181, type metadata accessor for VFSItem);
                    sub_1CEFCCC44(v209, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    v220(v211, v212);
                    goto LABEL_63;
                  }

                  (v177)(v230, 0);

                  sub_1CEFE5888(v144, type metadata accessor for VFSItem);
                  v170 = v209;
                }

                sub_1CEFCCC44(v170, &unk_1EC4BEC00, &unk_1CF9FCB60);
                v150(v211, v212);
                goto LABEL_63;
              }

LABEL_68:
              __break(1u);
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_70:
      MEMORY[0x1EEE9AC00](v70);
      v190 = v67;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v188, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_69:
    MEMORY[0x1EEE9AC00](v68);
    v190 = v67;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v188, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v72 = fpfs_current_or_default_log();
  v73 = v216;
  sub_1CF9E6128();

  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E7298();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&aBlock = v77;
    *v76 = 136446210;
    v78 = sub_1CF9E6888();
    v79 = [v78 fp_prettyPath];

    v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v82 = v81;

    v83 = sub_1CEFD0DF0(v80, v82, &aBlock);

    *(v76 + 4) = v83;
    _os_log_impl(&dword_1CEFC7000, v74, v75, "If the item is the domain root %{public}s, no need to handle parent mtime", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);
  }

  (*(v217 + 8))(v73, v218);
LABEL_63:
  sub_1CF9E7458();
  v185 = v227;
  sub_1CF9E6038();
  result = sub_1CEFE5888(v185, type metadata accessor for Signpost);
  v187 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2A6314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v12 = a1;
  v13 = a2;
  v14 = &v11;
  v15 = &v10;
  v16 = a3;
  result = sub_1CEFE1894(sub_1CF2B97A8);
  if (!v4)
  {
    v7 = v11;
    v8 = v10;
    if (!v11)
    {
      v8 = 0;
    }

    *a4 = v8;
    *(a4 + 8) = v7 ^ 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2A63C0@<X0>(void *a1@<X4>, _DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v11 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v5 = a1[20];

  v6 = objc_sync_exit(a1);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v11 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  os_unfair_lock_lock(v5 + 14);
  os_unfair_lock_opaque = v5[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 14);

  sub_1CF9E6978();

  v8 = fpfs_pkg_relative_path_lookup();

  *a2 = v8;
  return result;
}

uint64_t sub_1CF2A655C(uint64_t a1)
{
  v49 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v5 = &v44 - v4;
  v55 = type metadata accessor for VFSItem(0);
  v6 = *(v55 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = MEMORY[0x1E69E7CD0];
  v60 = MEMORY[0x1E69E7CD0];
  v46 = v1;
  v13 = (v1 + qword_1EDEAFB30);
  swift_beginAccess();
  v14 = v13[1];
  v58[0] = *v13;
  v58[1] = v14;
  v59[0] = v13[2];
  *(v59 + 9) = *(v13 + 41);
  v15 = *(&v58[0] + 1);
  if (*(&v58[0] + 1))
  {
    v52 = *(*(&v58[0] + 1) + 16);
    if (v52)
    {
      v16 = *(&v58[0] + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      sub_1CEFCCBDC(v58, v57, &unk_1EC4BEDF0, &qword_1CFA00818);
      v53 = (v6 + 48);

      v17 = 0;
      v18 = v52;
      v45 = v2;
      v44 = v11;
      v54 = v16;
      while (1)
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
LABEL_27:
          v57[0] = v16;
          result = sub_1CF9E80C8();
          __break(1u);
          return result;
        }

        sub_1CEFCCBDC(v16 + *(v2 + 72) * v17, v5, &unk_1EC4BED40, &unk_1CFA00720);
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_1CEFCCC44(v5, &unk_1EC4BED40, &unk_1CFA00720);
LABEL_5:
        if (v18 == ++v17)
        {
          sub_1CEFCCC44(v58, &unk_1EC4BEDF0, &qword_1CFA00818);

          v12 = v60;
          goto LABEL_19;
        }
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
      v20 = *(v19 + 48);
      v21 = *&v5[*(v19 + 64)];

      if ((*v53)(&v5[v20], 1, v55) == 1)
      {
        sub_1CEFCCC44(&v5[v20], &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_17:
        v16 = v54;
        goto LABEL_5;
      }

      sub_1CEFE4C60(&v5[v20], v11, type metadata accessor for VFSItem);
      v22 = v11[8];
      if (v22)
      {
        LODWORD(v16) = *&v11[v55[10]];
        type metadata accessor for fpfs_tempfile_pattern_t(0);
        if ((v16 - 1) < 0xB)
        {
          v23 = v11;
          v24 = v48;
          sub_1CEFD90AC(v23, v48, type metadata accessor for VFSItem);
          v25 = type metadata accessor for VFSTrackingContinuation(0);
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          v28 = swift_allocObject();
          v51 = v24 + v55[7];
          v50 = *(type metadata accessor for ItemMetadata() + 32);
          v29 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
          v30 = sub_1CF9E5CF8();
          v31 = *(v30 - 8);
          (*(v31 + 16))(v28 + v29, v51 + v50, v30);
          v32 = v24;
          v11 = v44;
          sub_1CEFE5888(v32, type metadata accessor for VFSItem);
          swift_setDeallocating();
          (*(v31 + 8))(v28 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v30);
          v2 = v45;
          v33 = *(*v28 + 48);
          v34 = *(*v28 + 52);
          swift_deallocClassInstance();
LABEL_16:
          sub_1CEFE5888(v11, type metadata accessor for VFSItem);
          v18 = v52;
          goto LABEL_17;
        }

        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (*&v11[v55[9]] == v49)
      {
        sub_1CF6E9500(v57, *v11, v22);
      }

      goto LABEL_16;
    }
  }

LABEL_19:
  v35 = v46;
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = v47;
  if (Strong)
  {
    v38 = *(v35 + 288);
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 8))(v49, ObjectType, v38);
    if (v37)
    {

      return swift_unknownObjectRelease();
    }

    v43 = v40;
    swift_unknownObjectRelease();
    v42 = v43;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CD0];
  }

  return sub_1CF55A4E8(v42, v12);
}

uint64_t sub_1CF2A6B70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  v16 = a3;

  sub_1CF2B6580(v13, v15, a5, a6, a7, a8);
}

uint64_t sub_1CF2A6C34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_1CF2A6C90(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a3;

  sub_1CF2B9060(a4);
}

uint64_t sub_1CF2A6CF0(void *a1)
{
  v74 = a1;
  v2 = sub_1CF9E5A58();
  v73 = *(v2 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_sync_enter(v1);
  if (v6)
  {
    goto LABEL_28;
  }

  v7 = *(v1 + 160);

  v8 = objc_sync_exit(v1);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    *(&v63 - 2) = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v9 = v74;
  v10 = v74[3];
  v11 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v10);
  sub_1CF4FB2BC(0x6F6F72205346202BLL, 0xEA00000000007374, v10, v11);
  v12 = v9[3];
  v75 = v9[4];
  v13 = __swift_project_boxed_opaque_existential_1(v9, v12);
  v81 = 8224;
  v82 = 0xE200000000000000;
  v14 = sub_1CF9E5928();
  v15 = [v14 fp_shortDescription];

  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
  v79 = v7[3];
  v19 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v1 = v13;
  sub_1CF4FB2BC(v81, v82, v12, v75);

  v72 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs;
  v20 = *(*(v7 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) + 16);
  v21 = v20 - 1;
  if (v20 != 1)
  {
    if (!v20)
    {
      goto LABEL_27;
    }

    v6 = swift_beginAccess();
    v70 = v2;
    v71 = v73 + 16;
    v68 = (v73 + 8);
    v69 = v7;
    v22 = 5;
    v64 = v5;
    while (1)
    {
      v1 = v22 - 4;
      v32 = *(v7 + v72);
      if ((v22 - 4) >= *(v32 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        MEMORY[0x1EEE9AC00](v6);
        *(&v63 - 2) = v1;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v6 = (*(v73 + 16))(v5, v32 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v1, v2);
      v33 = v7[4];
      if (v1 >= *(v33 + 16))
      {
        goto LABEL_26;
      }

      v75 = v21;
      v34 = *(v33 + 8 * v22);
      v35 = v7[12];
      if (*(v35 + 16))
      {
        v36 = sub_1CF7BF2C0(v34, 1);
        if (v37)
        {
          break;
        }
      }

      v23 = v74[3];
      v24 = v74[4];
      __swift_project_boxed_opaque_existential_1(v74, v23);
      v79 = 8224;
      v80 = 0xE200000000000000;
      v25 = sub_1CF9E5928();
      v26 = v5;
      v27 = [v25 fp_shortDescription];

      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;

      MEMORY[0x1D3868CC0](v28, v30);

      MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
      v77 = v34;
      v31 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v31);

      MEMORY[0x1D3868CC0](93, 0xE100000000000000);
      sub_1CF4FB2BC(v79, v80, v23, v24);
      v2 = v70;
LABEL_7:
      v7 = v69;

      v6 = (*v68)(v26, v2);
      ++v22;
      v21 = v75 - 1;
      v5 = v26;
      if (v75 == 1)
      {
      }
    }

    v38 = *(v35 + 56) + 32 * v36;
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(v38 + 16);
    v42 = *(v38 + 24);
    v43 = v74[3];
    v44 = v74[4];
    v65 = v41;
    v66 = v44;
    v45 = v43;
    v67 = __swift_project_boxed_opaque_existential_1(v74, v43);
    v79 = 0;
    v80 = 0xE000000000000000;

    sub_1CF9E7948();

    v79 = 8224;
    v80 = 0xE200000000000000;
    v46 = sub_1CF9E5928();
    v47 = [v46 fp_shortDescription];

    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;

    MEMORY[0x1D3868CC0](v48, v50);

    MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
    v77 = v34;
    v51 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v51);

    MEMORY[0x1D3868CC0](0x746E65726170202CLL, 0xE90000000000003ALL);
    if (v40)
    {
      if (v40 != 1)
      {
        v2 = v70;
        v55 = v45;
        if (v39)
        {
          v53 = 0x6873617274;
        }

        else
        {
          v53 = 1953460082;
        }

        if (v39)
        {
          v54 = 0xE500000000000000;
        }

        else
        {
          v54 = 0xE400000000000000;
        }

        goto LABEL_23;
      }

      v76 = v39;
      v77 = 0x284449656C6966;
      v78 = 0xE700000000000000;
    }

    else
    {
      v77 = 0x284449636F64;
      v78 = 0xE600000000000000;
      LODWORD(v76) = v39;
    }

    v52 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v52);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v53 = v77;
    v54 = v78;
    v2 = v70;
    v55 = v45;
LABEL_23:
    v56 = v66;
    MEMORY[0x1D3868CC0](v53, v54);

    MEMORY[0x1D3868CC0](0x616E656C6966202CLL, 0xEC000000203A656DLL);
    v57 = sub_1CF9E6888();
    v58 = [v57 fp_obfuscatedFilename];

    v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v61 = v60;

    MEMORY[0x1D3868CC0](v59, v61);

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    sub_1CF4FB2BC(v79, v80, v55, v56);
    v26 = v64;
    goto LABEL_7;
  }
}

uint64_t sub_1CF2A7510@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  sub_1CF9E6978();

  v2 = sub_1CF9E6158();

  *a1 = v2;
  return result;
}

uint64_t sub_1CF2A757C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 184);

  v3 = *(v0 + 192);

  v4 = *(v0 + 200);

  v5 = *(v0 + 224);

  v6 = *(v0 + 240);

  v7 = *(v0 + 256);

  v8 = *(v0 + 264);

  sub_1CF02B994(v0 + 280);
  v9 = qword_1EDEAFB40;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EDEAFB48;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + qword_1EDEBBE78);

  v14 = *(v0 + qword_1EDEBBE80);

  v15 = *(v0 + qword_1EDEAFB30 + 16);
  v16 = *(v0 + qword_1EDEAFB30 + 24);
  v17 = *(v0 + qword_1EDEAFB30 + 32);
  v18 = *(v0 + qword_1EDEAFB30 + 40);
  v19 = *(v0 + qword_1EDEAFB30 + 48);
  v20 = *(v0 + qword_1EDEAFB30 + 56);
  sub_1CF2AF8A8(*(v0 + qword_1EDEAFB30), *(v0 + qword_1EDEAFB30 + 8));
  v21 = *(v0 + qword_1EDEAFB08 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEAFB08));

  v22 = *(v0 + qword_1EDEAFB18);

  sub_1CEFE5888(v0 + qword_1EDEBBE70, type metadata accessor for VFSCounters);
  sub_1CF00D644(*(v0 + qword_1EDEAFAE0));
  return sub_1CEFCCC44(v0 + qword_1EDEAFAF8 + 8, &qword_1EC4BEC48, &unk_1CFA00690);
}

char *sub_1CF2A7778()
{
  v0 = sub_1CF2CFFAC();
  v1 = *(v0 + 20);

  v2 = *(v0 + 23);

  v3 = *(v0 + 24);

  v4 = *(v0 + 25);

  v5 = *(v0 + 28);

  v6 = *(v0 + 30);

  v7 = *(v0 + 32);

  v8 = *(v0 + 33);

  sub_1CF02B994((v0 + 280));
  v9 = qword_1EDEAFB40;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = qword_1EDEAFB48;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = *&v0[qword_1EDEBBE78];

  v14 = *&v0[qword_1EDEBBE80];

  v15 = *&v0[qword_1EDEAFB30 + 16];
  v16 = *&v0[qword_1EDEAFB30 + 24];
  v17 = *&v0[qword_1EDEAFB30 + 32];
  v18 = *&v0[qword_1EDEAFB30 + 40];
  v19 = *&v0[qword_1EDEAFB30 + 48];
  v20 = v0[qword_1EDEAFB30 + 56];
  sub_1CF2AF8A8(*&v0[qword_1EDEAFB30], *&v0[qword_1EDEAFB30 + 8]);
  v21 = *&v0[qword_1EDEAFB08 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEAFB08]);

  v22 = *&v0[qword_1EDEAFB18];

  sub_1CEFE5888(&v0[qword_1EDEBBE70], type metadata accessor for VFSCounters);
  sub_1CF00D644(*&v0[qword_1EDEAFAE0]);
  sub_1CEFCCC44(&v0[qword_1EDEAFAF8 + 8], &qword_1EC4BEC48, &unk_1CFA00690);
  return v0;
}

uint64_t sub_1CF2A7980()
{
  v0 = *sub_1CF2A7778();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF2A79D4()
{
  sub_1CF2A7DEC(319, &qword_1EDEAEDF8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1CF2A7DEC(319, &qword_1EDEAEE00);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for VFSCounters(319);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1CF2A7D20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v6 + 216);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = v6;
  v15 = v13;

  sub_1CF01001C(0, a5, 27, 2, a6, v14);
}

void sub_1CF2A7DEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CF9E62B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CF2A7E90()
{
  result = sub_1CF9E5CF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CF2A7F5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v8 = v5;
  v43 = a4;
  v58[5] = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *a3;
  v13 = a3[1];
  if (v12 == 1)
  {
    v15 = a3[1];

    goto LABEL_12;
  }

  if (v12 != 2)
  {
    v41 = 0;
    v40 = 4679;
    v17 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_37;
  }

  v16 = a3[1];

  v17 = objc_sync_enter(v5);
  if (!v11)
  {
    if (!v17)
    {
      v22 = v5[20];

      v23 = objc_sync_exit(v5);
      if (!v23)
      {
        v11 = *(v22 + 24);

        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v23);
      v40 = v5;
      v38 = sub_1CF1C5468;
LABEL_42:
      fp_preconditionFailure(_:file:line:)(v38, v39, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v17);
    v40 = v5;
    v37 = sub_1CF1C546C;
LABEL_40:
    fp_preconditionFailure(_:file:line:)(v37, v39, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  if (v17)
  {
LABEL_37:
    MEMORY[0x1EEE9AC00](v17);
    v40 = v5;
    v37 = sub_1CF1C5288;
    goto LABEL_40;
  }

  v18 = v5[20];

  v19 = objc_sync_exit(v5);
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v19);
    v40 = v5;
    v38 = sub_1CF1C5290;
    goto LABEL_42;
  }

  v11 = *(v18 + 40);
  v20 = *(v18 + 48);

  if (v20)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 2;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    sub_1CF2A8DE0(v21);
    swift_willThrow();
    goto LABEL_31;
  }

LABEL_12:

  v58[0] = a1;
  v58[1] = v11;
  v58[2] = 0;
  v58[3] = v14;
  v58[4] = v13;
  v24 = objc_sync_enter(v8);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v40 = v8;
    v37 = sub_1CF1C546C;
    goto LABEL_40;
  }

  v42 = a5;
  v25 = v8[20];

  v26 = objc_sync_exit(v8);
  if (v26)
  {
    MEMORY[0x1EEE9AC00](v26);
    v40 = v8;
    v38 = sub_1CF1C5468;
    goto LABEL_42;
  }

  v27 = *(v25 + 16);

  MEMORY[0x1EEE9AC00](v28);
  v40 = v27 | 0x20000000000000;
  v57 = 0;
  v54 = a1;
  v55 = v11;
  v56 = 0u;
  if (!v13)
  {
    v49 = a1;
    v50 = v11;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    LODWORD(v45[0]) = -1;
    v32 = fpfs_openfdbyhandle();
    if (v32 < 0)
    {
      v34 = MEMORY[0x1D38683F0]();
      LODWORD(v47[0]) = 0;
      BYTE4(v47[0]) = 1;
      v48 = 0;
      v7 = sub_1CF19BBE4(v34, v47);
      sub_1CF1969CC(v47);
      swift_willThrow();
LABEL_30:
      v35 = v7;
      LODWORD(v47[0]) = sub_1CF9E5308();
      sub_1CF196978();
      sub_1CF9E5658();
      sub_1CF255928(v58);

      goto LABEL_31;
    }

    v33 = v32;
    goto LABEL_24;
  }

  MEMORY[0x1EEE9AC00](v29);
  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v45[0] = v14;
    v45[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    *(&v56 + 1) = v45;
    v49 = a1;
    v50 = v11;
    v51 = 0;
    v52 = v45;
    v53 = 0;
    v44 = -1;
    v30 = fpfs_openfdbyhandle();
    if (v30 < 0)
    {
      v31 = MEMORY[0x1D38683F0]();
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if ((v14 & 0x1000000000000000) == 0)
  {
LABEL_32:
    sub_1CF9E7938();
    if (v6)
    {
      goto LABEL_30;
    }

    v33 = v46;
    goto LABEL_24;
  }

  *(&v56 + 1) = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v49 = a1;
  v50 = v11;
  v51 = 0;
  v52 = *(&v56 + 1);
  v53 = 0;
  LODWORD(v45[0]) = -1;
  v30 = fpfs_openfdbyhandle();
  if (v30 < 0)
  {
    v31 = MEMORY[0x1D38683F0]();
LABEL_29:
    LODWORD(v47[0]) = 0;
    BYTE4(v47[0]) = 1;
    v48 = 0;
    v7 = sub_1CF19BBE4(v31, v47);
    sub_1CF1969CC(v47);
    swift_willThrow();
    goto LABEL_30;
  }

LABEL_23:
  v33 = v30;
LABEL_24:
  sub_1CF19811C(v33, v58, v27, v43 & 1, v42);
  if ((v33 & 0x80000000) == 0)
  {
    close(v33);
  }

  sub_1CF255928(v58);
LABEL_31:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF2A86DC()
{
  v1 = v0;
  sub_1CF9E7948();

  v15 = *v0;
  LOBYTE(v16) = *(v0 + 8);
  v4 = VFSItemID.description.getter(v2, v3);
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_1CF9E6888();
  v8 = [v7 fp_obfuscatedFilename];

  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
  v12 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v13 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 3829820;
}

uint64_t sub_1CF2A882C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a2 = v5;
  return result;
}

uint64_t sub_1CF2A88A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CF9E62A8();
}

unint64_t sub_1CF2A8918@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1CF9E6B58();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1CF1F66D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1CF1F66D8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1CF9E6B38();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1CF9E69E8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1CF9E69E8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1CF9E6B58();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1CF1F66D8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1CF9E6B58();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1CF1F66D8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1CF1F66D8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1CF9E69E8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CF2A8CD8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5;

    v11 = sub_1CF2AB3A0(v9, a2, a3, a4, a5);

    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void *sub_1CF2A8D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  *(a2 + 24) = a1;
  result = a3(&v7, a2);
  if (!v4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t sub_1CF2A8DE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1CF9E79F8();
  }

  result = sub_1CF2A8F84(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1CF2A8EB0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048() & 1;
  }
}

uint64_t sub_1CF2A8F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, char *)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1CF2661C0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void *sub_1CF2A8F34@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *(v5 + 24) = a1;
  result = v6(&v9, v5);
  if (!v3)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1CF2A8F84(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1CF9E6AB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1CF4C4DE8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1CF9E6AB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1CF2A93F0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048() & 1;
  }
}

uint64_t sub_1CF2A9448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CF2A9490()
{
  result = qword_1EC4BEBE0;
  if (!qword_1EC4BEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEBE0);
  }

  return result;
}

uint64_t sub_1CF2A94E4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF266888(a1);
}

uint64_t sub_1CF2A951C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  return sub_1CF28EF20(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + 64), v2 + v6, *(v2 + v6 + *(v5 + 64)), (v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF2A95F4()
{
  v22[0] = sub_1CF9E52B8();
  v0 = sub_1CF9E53A8();
  sub_1CF196978();
  v1 = sub_1CF9E5658();

  if ((v1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = sub_1CF9E53A8();
  v3 = sub_1CF9E57E8();

  v4 = [v3 userInfo];
  v5 = sub_1CF9E6638();

  if (!*(v5 + 16) || (v6 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA3C930), (v7 & 1) == 0))
  {

LABEL_9:
    v13 = 0;
    return v13 & 1;
  }

  sub_1CEFD1104(*(v5 + 56) + 32 * v6, v22);

  type metadata accessor for URLFileProtection(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E695DAD8];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  if (v9 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v11 == v12)
  {

    v13 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();

    if (v15)
    {

      v13 = 1;
    }

    else
    {
      v16 = *MEMORY[0x1E695DAE0];
      v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = v18;
      if (v17 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v19 == v20)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_1CF9E8048();
      }
    }
  }

  return v13 & 1;
}

uint64_t sub_1CF2A9854(uint64_t *a1, __int128 *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v59 = a4;
  v60 = a3;
  v10 = sub_1CF9E63D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[5];
  v71 = a2[3];
  v72 = v22;
  v73 = v23;
  v24 = a2[1];
  v68 = *a2;
  v25 = *a1;
  v26 = *(a1 + 8);
  v69 = v24;
  v70 = v21;
  v27 = qword_1EDEBBE70;
  result = swift_beginAccess();
  v29 = *(v6 + v27);
  v30 = __CFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v54 = v11;
    v55 = v10;
    *(v6 + v27) = v31;
    v32 = *(v6 + 224);
    v57 = *(v6 + 216);
    v33 = sub_1CF9E6448();
    v58 = *(v33 - 8);
    (*(v58 + 56))(v20, 1, 1, v33);
    v34 = swift_allocObject();
    v35 = v25;
    v36 = v34;
    *(v34 + 16) = v60;
    *(v34 + 24) = v6;
    *(v34 + 32) = v35;
    *(v34 + 40) = v26;
    v37 = v71;
    v38 = v72;
    v39 = v69;
    *(v34 + 80) = v70;
    *(v34 + 96) = v37;
    v40 = v73;
    *(v34 + 112) = v38;
    *(v34 + 128) = v40;
    *(v34 + 48) = v68;
    *(v34 + 64) = v39;
    v41 = v61;
    *(v34 + 144) = a5;
    *(v34 + 152) = v41;
    *(v34 + 160) = v59;
    v42 = swift_allocObject();
    v42[2] = a5;
    v42[3] = v41;
    v42[4] = v32;

    swift_retain_n();
    v60 = v57;
    sub_1CEFCCBDC(&v68, &aBlock, &unk_1EC4BECD0, &unk_1CF9FEF80);

    v43 = fpfs_current_log();
    v44 = *(v32 + 16);
    v45 = v58;
    v59 = v44;
    v61 = v20;
    sub_1CEFCCBDC(v20, v17, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v45 + 48))(v17, 1, v33) == 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE370, qword_1CFA01B30);
      v46 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v47 = v56;
      sub_1CF9E6438();
      (*(v45 + 8))(v17, v33);
      v46 = sub_1CF9E63C8();
      (*(v54 + 8))(v47, v55);
    }

    v48 = swift_allocObject();
    v48[2] = v43;
    v48[3] = sub_1CEFD8FA4;
    v48[4] = v36;
    v66 = sub_1CF2BA17C;
    v67 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1CEFCA444;
    v65 = &block_descriptor_993;
    v49 = _Block_copy(&aBlock);
    v50 = v43;

    v66 = sub_1CF1DBCE4;
    v67 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1CEFCA444;
    v65 = &block_descriptor_996;
    v51 = _Block_copy(&aBlock);

    v52 = v60;
    fp_task_tracker_async_and_qos(v59, v60, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v46, v49, v51);
    _Block_release(v51);
    _Block_release(v49);

    return sub_1CEFCCC44(v61, &unk_1EC4BE370, qword_1CFA01B30);
  }

  return result;
}

uint64_t sub_1CF2A9E14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v58 = a5;
  v59 = a2;
  v11 = sub_1CF9E63D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v57 = *a1;
  LODWORD(v56) = *(a1 + 8);
  v23 = v6 + qword_1EDEBBE70;
  result = swift_beginAccess();
  v25 = *(v23 + 8);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    v50 = v15;
    v51 = v12;
    *(v23 + 8) = v27;
    v28 = *(v6 + 216);
    v29 = *(v6 + 224);
    v52 = v11;
    v53 = v28;
    v30 = sub_1CF9E6448();
    v54 = a3;
    v31 = v30;
    v32 = *(v30 - 8);
    (*(v32 + 56))(v22, 1, 1, v30);
    v33 = swift_allocObject();
    v55 = v19;
    v34 = a6;
    v35 = v33;
    v36 = v58;
    *(v33 + 16) = v58;
    *(v33 + 24) = v34;
    v37 = swift_allocObject();
    v38 = v57;
    *(v37 + 16) = v6;
    *(v37 + 24) = v38;
    *(v37 + 32) = v56;
    *(v37 + 40) = v36;
    *(v37 + 48) = v34;
    v39 = v54;
    *(v37 + 56) = v59;
    *(v37 + 64) = v39;
    *(v37 + 72) = a4;
    v40 = swift_allocObject();
    v40[2] = sub_1CEFF9D90;
    v40[3] = v35;
    v54 = v40;
    v40[4] = v29;

    v56 = v35;

    v41 = v55;
    swift_retain_n();
    v58 = v53;

    v42 = fpfs_current_log();
    v57 = *(v29 + 16);
    v59 = v22;
    sub_1CEFCCBDC(v22, v41, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v32 + 48))(v41, 1, v31) == 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
      v43 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v44 = v50;
      sub_1CF9E6438();
      (*(v32 + 8))(v41, v31);
      v43 = sub_1CF9E63C8();
      (*(v51 + 8))(v44, v52);
    }

    v45 = swift_allocObject();
    v45[2] = v42;
    v45[3] = sub_1CF2B15DC;
    v45[4] = v37;
    v64 = sub_1CF2BA17C;
    v65 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1CEFCA444;
    v63 = &block_descriptor_934;
    v46 = _Block_copy(&aBlock);
    v47 = v42;

    v64 = sub_1CF2B0788;
    v65 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1CEFCA444;
    v63 = &block_descriptor_937;
    v48 = _Block_copy(&aBlock);

    v49 = v58;
    fp_task_tracker_async_and_qos(v57, v58, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v43, v46, v48);
    _Block_release(v48);
    _Block_release(v46);

    return sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
  }

  return result;
}

uint64_t sub_1CF2AA32C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v62 = a4;
  v61 = a3;
  v71 = sub_1CF9E6388();
  v70 = *(v71 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v52 - v11;
  v67 = sub_1CF9E6498();
  v66 = *(v67 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v52 - v16;
  v54 = sub_1CF9E63D8();
  v52 = *(v54 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1CF9E6448();
  v59 = *(v60 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E73D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a1;
  v56 = *(a1 + 8);
  v26 = a2[3];
  v75 = a2[2];
  v76 = v26;
  v27 = a2[5];
  v77 = a2[4];
  v78 = v27;
  v28 = a2[1];
  v73 = *a2;
  v74 = v28;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v63 = v5;
  v29 = *(v5 + 216);
  v72[0] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v31 = v52;
  sub_1CF9E77B8();
  v32 = v53;
  v33 = sub_1CF9E73E8();

  (*(v22 + 8))(v25, v21);
  v34 = v54;
  qos_class_self();
  sub_1CF9E63B8();
  v35 = *(v31 + 48);
  if (v35(v32, 1, v34) == 1)
  {
    (*(v31 + 104))(v55, *MEMORY[0x1E69E7FA0], v34);
    if (v35(v32, 1, v34) != 1)
    {
      sub_1CEFCCC44(v32, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v31 + 32))(v55, v32, v34);
  }

  ObjectType = swift_getObjectType();
  v37 = v58;
  sub_1CF9E6428();
  v38 = swift_allocObject();
  v39 = v76;
  *(v38 + 72) = v75;
  *(v38 + 88) = v39;
  v40 = v78;
  *(v38 + 104) = v77;
  *(v38 + 120) = v40;
  v41 = v74;
  *(v38 + 40) = v73;
  v42 = v57;
  *(v38 + 16) = v63;
  *(v38 + 24) = v42;
  *(v38 + 32) = v56;
  *(v38 + 56) = v41;
  v43 = v61;
  *(v38 + 136) = 0;
  *(v38 + 144) = v43;
  v44 = v62;
  *(v38 + 152) = v33;
  *(v38 + 160) = v44;
  *(v38 + 168) = v64;

  sub_1CEFCCBDC(&v73, v72, &unk_1EC4BECD0, &unk_1CF9FEF80);
  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v37, sub_1CF2B9F4C, v38);

  (*(v59 + 8))(v37, v60);
  v45 = v65;
  sub_1CF9E6478();
  v46 = v68;
  sub_1CEFD5B64(v68);
  v47 = v69;
  sub_1CEFD5BD8(v69);
  MEMORY[0x1D3869770](v45, v46, v47, ObjectType);
  v48 = *(v70 + 8);
  v49 = v47;
  v50 = v71;
  v48(v49, v71);
  v48(v46, v50);
  (*(v66 + 8))(v45, v67);
  sub_1CF9E7448();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CF2AAAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4370756B6F6F6CLL && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F436E616373 && a2 == 0xE900000000000074 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFA3D990 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CF2AAC1C(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  *(v1 + 152) = 3;
  v4 = *(v1 + 160);
  *(v1 + 160) = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF2AAD28(void *a1, void (*a2)(void *))
{
  v4 = sub_1CF9E5248();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_4;
  }

  v10 = a1;
  sub_1CF9E5158();
  sub_1CF2A9448(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
  v11 = sub_1CF9E5658();
  (*(v5 + 8))(v9, v4);
  if (v11)
  {

LABEL_4:
    (a2)(0, v7);
    return;
  }

  v12 = a1;
  a2(a1);
}

void sub_1CF2AAEA4(uint64_t a1, unint64_t a2, char a3, uint64_t **a4, void (*a5)(void), uint64_t a6)
{
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = *a1;
  v49 = v17;
  v50 = v18;
  v19 = *(a1 + 8);
  v20 = a4[27];
  *v16 = v20;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);

  v21 = v20;
  LOBYTE(v20) = sub_1CF9E64D8();
  (*(v13 + 8))(v16, v12);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v48 = sub_1CF9E7818();
    v23 = v50;
    if (!v48)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v50;
  if (!v22)
  {
LABEL_17:
    a5(0);

    return;
  }

LABEL_4:
  if (a3)
  {
    goto LABEL_17;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (a4[23])
  {
    v25 = a4[22];
    v26 = sub_1CF9E6888();
    [v24 setPurposeIdentifier_];
  }

  swift_beginAccess();
  v27 = v24;
  sub_1CF6E96F4(v51, v27);
  swift_endAccess();

  if (v19 != 255)
  {
    swift_beginAccess();
    if (a4[25][2] && (sub_1CF7BF2C0(v23, v19), (v28 & 1) != 0))
    {
      v29 = sub_1CF25CE44();
      v30 = sub_1CF598538(v51, v23, v19);
      if (*v31)
      {
        sub_1CF6E96F4(&v52, v27);
      }

      (v30)(v51, 0);
      (v29)(aBlock, 0);
      v23 = v50;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = v27;
      v33 = v27;
      sub_1CF6F3CF4(inited);
      v35 = v34;
      swift_setDeallocating();
      v36 = *(inited + 16);
      swift_arrayDestroy();
      swift_beginAccess();
      v37 = a4[25];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = a4[25];
      a4[25] = 0x8000000000000000;
      sub_1CF1D20C8(v35, v23, v19, isUniquelyReferenced_nonNull_native);
      a4[25] = v51[0];
      swift_endAccess();
    }
  }

  v39 = fpfs_current_log();
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v40 = sub_1CF9E6D28();
  v41 = a4[26];
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  *(v42 + 24) = a4;
  *(v42 + 32) = v27;
  *(v42 + 40) = v23;
  *(v42 + 48) = v19;
  v43 = v49;
  *(v42 + 56) = sub_1CF2B1978;
  *(v42 + 64) = v43;
  aBlock[4] = sub_1CF2BA138;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_1179;
  v44 = _Block_copy(aBlock);
  v45 = v27;
  v46 = v41;
  v47 = v39;

  [v45 coordinateAccessWithIntents:v40 queue:v46 byAccessor:v44];
  _Block_release(v44);
}

uint64_t sub_1CF2AB3A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v24 = 0;
  v6 = 0;
  v29 = a3;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(v29 + 56);
    v17 = (*(v29 + 48) + 16 * v15);
    v18 = v17[1];
    v28[0] = *v17;
    v28[1] = v18;
    v19 = *(v16 + 16 * v15 + 8);

    v20 = sub_1CF26B16C(v28, v27, a4, a5);

    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1CF4F552C(v23, a2, v24, v29);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1CF4F552C(v23, a2, v24, v29);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CF2AB528(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = a3;

  v12 = v11;
  if (v9 <= 0xD)
  {

    goto LABEL_3;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_3:
    MEMORY[0x1EEE9AC00](v13);
    v14 = v20 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v14, 8 * v10);

    v15 = v12;
    v5 = sub_1CF2AB3A0(v14, v10, a1, a2, v5);

    if (v4)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v16 = swift_slowAlloc();

  v15 = v12;
  v17 = sub_1CF2A8CD8(v16, v10, a1, a2, v5);
  if (!v4)
  {
    v5 = v17;
  }

  MEMORY[0x1D386CDC0](v16, -1, -1);
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1CF2AB748(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v85 = a6;
  v84 = a5;
  v83 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - v12;
  v14 = sub_1CF9E63D8();
  v90 = *(v14 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  v22 = sub_1CF9E6448();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v82 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v89 = &v75 - v34;
  v80 = *a1;
  v79 = *(a1 + 8);
  v35 = a3[3];
  v99 = a3[2];
  v100 = v35;
  v36 = a3[5];
  v101 = a3[4];
  v102 = v36;
  v37 = a3[1];
  v97 = *a3;
  v98 = v37;
  v81 = *(v7 + 224);
  v86 = v7;
  v88 = *(v7 + 216);
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v38 = v90;
  v39 = *(v90 + 48);
  v40 = v39(v13, 1, v14);
  v78 = v22;
  if (v40 == 1)
  {
    (*(v38 + 104))(v21, *MEMORY[0x1E69E7FA0], v14);
    v41 = v39(v13, 1, v14);
    v42 = v38;
    if (v41 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v38 + 32))(v21, v13, v14);
    v42 = v38;
  }

  v76 = v14;
  sub_1CF9E6428();
  v43 = v87;
  sub_1CF9E6438();
  v44 = sub_1CF9E63C8();
  v45 = *(v42 + 8);
  v90 = v42 + 8;
  v45(v43, v14);
  v46 = v77;
  sub_1CF9E6438();
  v47 = sub_1CF9E63C8();
  v77 = v45;
  v45(v46, v14);
  v48 = *(v23 + 8);
  if (v44 >= v47)
  {
    v49 = v26;
  }

  else
  {
    v49 = v29;
  }

  if (v44 >= v47)
  {
    v50 = v29;
  }

  else
  {
    v50 = v26;
  }

  v51 = v78;
  v75 = *(v23 + 8);
  v48(v49, v78);
  v52 = v89;
  (*(v23 + 32))(v89, v50, v51);
  (*(v23 + 56))(v52, 0, 1, v51);
  v53 = swift_allocObject();
  v54 = v100;
  *(v53 + 48) = v99;
  *(v53 + 64) = v54;
  v55 = v102;
  *(v53 + 80) = v101;
  *(v53 + 96) = v55;
  v56 = v98;
  *(v53 + 16) = v97;
  *(v53 + 32) = v56;
  v57 = v84;
  v58 = v85;
  *(v53 + 112) = v84;
  *(v53 + 120) = v58;
  *(v53 + 128) = v80;
  *(v53 + 136) = v79;
  v59 = v83;
  *(v53 + 144) = v86;
  *(v53 + 152) = v59;
  v60 = swift_allocObject();
  v60[2] = v57;
  v60[3] = v58;
  v61 = v81;
  v60[4] = v81;
  swift_retain_n();
  sub_1CEFCCBDC(&v97, &aBlock, &unk_1EC4BECD0, &unk_1CF9FEF80);

  v62 = fpfs_current_log();
  v86 = *(v61 + 16);
  v63 = *(v23 + 48);
  v64 = v63(v52, 1, v51);
  v65 = v52;
  v66 = v82;
  sub_1CEFCCBDC(v65, v82, &unk_1EC4BE370, qword_1CFA01B30);
  if (v63(v66, 1, v51) == 1)
  {
    sub_1CEFCCC44(v66, &unk_1EC4BE370, qword_1CFA01B30);
    v67 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    v75(v66, v51);
    v67 = sub_1CF9E63C8();
    (v77)(v43, v76);
  }

  if (v64 == 1)
  {
    v68 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v68 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v69 = swift_allocObject();
  v69[2] = v62;
  v69[3] = sub_1CF2B1428;
  v69[4] = v53;
  v95 = sub_1CF2BA17C;
  v96 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = sub_1CEFCA444;
  v94 = &block_descriptor_843;
  v70 = _Block_copy(&aBlock);
  v71 = v62;

  v95 = sub_1CF2B1440;
  v96 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = sub_1CEFCA444;
  v94 = &block_descriptor_846;
  v72 = _Block_copy(&aBlock);

  v73 = v88;
  fp_task_tracker_async_and_qos(v86, v88, v68, v67, v70, v72);
  _Block_release(v72);
  _Block_release(v70);

  return sub_1CEFCCC44(v89, &unk_1EC4BE370, qword_1CFA01B30);
}

_OWORD *sub_1CF2ABFCC(_OWORD *result, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = result[1];
  v127 = *result;
  v5 = result[2];
  v6 = result[3];
  v128 = v4;
  v129 = v5;
  v7 = result[4];
  v8 = result[5];
  v130 = v6;
  v131 = v7;
  v132 = v8;
  v9 = v7;
  if (v7)
  {
    v11 = *a3;
    v133 = v127;
    v12 = HIDWORD(v127);
    v13 = v130;
    v14 = *a2;
    v15 = *(a2 + 8);
    if (v15 != 2 || v14 >= 2)
    {
      v87 = *(&v129 + 1);
      v88 = v128;
      v90 = DWORD2(v127);
      v91 = v130;
      v89 = BYTE8(v128);
      if ((v11 & 0x10000) != 0)
      {
        v83 = result;
        v85 = v7;
        v16 = a4;
        v17 = *a2;
        v18 = a2 + *(type metadata accessor for VFSItem(0) + 28);
        v19 = type metadata accessor for ItemMetadata();
        v14 = v17;
        v12 = HIDWORD(v127);
        a4 = v16;
        v20 = v19;
        result = v83;
        v9 = v85;
        if (*(v18 + *(v20 + 84)))
        {
          v11 &= ~0x10000uLL;
        }
      }

      if ((a4 & 0x1000) == 0)
      {
        v81 = v14;
        v82 = v15;
        v84 = v12;
        v86 = *(&v130 + 1);
        v21 = result;
        v22 = (a2 + *(type metadata accessor for VFSItem(0) + 36));
        v23 = *v22;
        v24 = *(v22 + 2);
        v25 = v22[2];
        v26 = *(v22 + 24);
        v27 = *(a2 + 16);
        v28 = *(a2 + 24);
        v29 = *(a2 + 32);
        v30 = *(a2 + 40);
        v107 = v26;
        v111 = v23;
        v112 = v24;
        v113 = v25;
        v114 = v26;
        v115 = 0;
        v116 = v27;
        v117 = v28;
        v118 = v29;
        v119 = v30;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v126[0] = *(v21 + 25);
        *(v126 + 7) = *(v21 + 4);
        v125[0] = *(v21 + 49);
        *(v125 + 3) = *(v21 + 13);
        v123 = *(v21 + 72);
        v124 = *(v21 + 11);
        if ((v11 & 0x10018) != 0)
        {
          if (v23 != v133 || v24 != DWORD2(v127))
          {
            goto LABEL_19;
          }

          if (v26)
          {
            if ((BYTE8(v128) & 1) == 0)
            {
LABEL_19:
              v35 = v24 & 0xFFFFFF00;
              v110 = v26;
              v36 = BYTE8(v127);
              v37 = DWORD2(v127) & 0xFFFFFF00;
              v109 = BYTE8(v128) & 1;
              v108 = 0;

              sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
              sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
              v38 = v90 & 0xFFFFFF00;
              LOBYTE(v30) = v110;
              v39 = v23;
              v40 = v25;
              v41 = v109;
              v34 = v133;
              v42 = v88;
              v43 = v24;
              goto LABEL_23;
            }
          }

          else if ((BYTE8(v128) & 1) != 0 || v25 != v128)
          {
            goto LABEL_19;
          }
        }

        if ((v11 & 0xFFFFFFFFFFFFFFE7) != 0)
        {
          v31 = v27;
          v32 = v28;
          v33 = v29;
          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v77 = v33;
          v78 = v31;
          v76 = v32;
          v34 = v87;
          if ((sub_1CF443664(v31, v32, v33, v30, v87, v13, v86, v9) & 1) == 0)
          {
            v44 = v13;
            v37 = v30 >> 8;

            sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v25 = v9 >> 8;
            v108 = 1;
            sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
            v38 = 0;
            v35 = 0;
            v41 = v9;
            v42 = v86;
            v36 = v44;
            v40 = v77;
            v39 = v78;
            v43 = v76;
LABEL_23:
            v45 = v35 | v43;
            v100[0] = v39;
            v100[1] = v45;
            v100[2] = v40;
            LOBYTE(v101) = v30;
            *(&v101 + 1) = v37;
            HIBYTE(v101) = BYTE6(v37);
            *(&v101 + 5) = WORD2(v37);
            v46 = v38 | v36;
            v102 = v34;
            v103 = v46;
            v104 = v42;
            LOBYTE(v105) = v41;
            *(&v105 + 1) = v25;
            HIBYTE(v105) = BYTE6(v25);
            *(&v105 + 5) = WORD2(v25);
            v106 = v108;
            if (v108 == 255)
            {
              return sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
            }

            v47 = v34;
            v48 = v40;
            v49 = v39;
            v79 = v105;
            v80 = v42;
            v50 = v101;
            if (v108)
            {
              v51 = v43;
              v52 = swift_allocObject();
              *(v52 + 16) = v49;
              *(v52 + 24) = v51;
              *(v52 + 32) = v48;
              *(v52 + 40) = v50;
              *(v52 + 48) = v47;
              *(v52 + 56) = v36;
              v53 = v52 | 0x4000000000000000;
              *(v52 + 64) = v80;
              *(v52 + 72) = v79;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              swift_allocError();
              v55 = v54;
              sub_1CF1B8150();
              v56 = swift_allocError();
              *v57 = v53;
              *&v97[8] = v123;
              *&v93 = v81;
              BYTE8(v93) = v82;
              HIDWORD(v93) = *&v92[3];
              *(&v93 + 9) = *v92;
              *&v94 = v133;
              *(&v94 + 1) = __PAIR64__(v84, v90);
              *v95 = v88;
              v95[8] = v89;
              *&v95[16] = *(v126 + 7);
              *&v95[9] = v126[0];
              *&v95[24] = v87;
              LOBYTE(v96) = v91;
              DWORD1(v96) = *(v125 + 3);
              *(&v96 + 1) = v125[0];
              *(&v96 + 1) = v86;
              *v97 = v9;
              *&v97[24] = v124;
              v98 = v56;
              sub_1CF2A8DE0(&v93);
              *v55 = v93;
              v58 = v94;
              v59 = *v95;
              v60 = v96;
              *(v55 + 48) = *&v95[16];
              *(v55 + 64) = v60;
              *(v55 + 16) = v58;
              *(v55 + 32) = v59;
              v61 = *v97;
              v62 = *&v97[16];
              v63 = v98;
              *(v55 + 128) = v99;
              *(v55 + 96) = v62;
              *(v55 + 112) = v63;
              *(v55 + 80) = v61;
              swift_willThrow();

              return sub_1CEFCCC44(v100, &qword_1EC4BECF8, &qword_1CFA006D8);
            }

            else
            {
              v64 = swift_allocObject();
              *(v64 + 16) = v49;
              *(v64 + 24) = v45;
              *(v64 + 32) = v48;
              *(v64 + 40) = v50 & 1;
              *(v64 + 48) = v47;
              *(v64 + 56) = v46;
              *(v64 + 64) = v80;
              v65 = v64 | 0x3000000000000000;
              *(v64 + 72) = v79 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              swift_allocError();
              v67 = v66;
              sub_1CF1B8150();
              v68 = swift_allocError();
              *v69 = v65;
              *&v97[8] = v123;
              *&v93 = v81;
              BYTE8(v93) = v82;
              HIDWORD(v93) = *&v92[3];
              *(&v93 + 9) = *v92;
              *&v94 = v133;
              *(&v94 + 1) = __PAIR64__(v84, v90);
              *v95 = v88;
              v95[8] = v89;
              *&v95[16] = *(v126 + 7);
              *&v95[9] = v126[0];
              *&v95[24] = v87;
              LOBYTE(v96) = v91;
              DWORD1(v96) = *(v125 + 3);
              *(&v96 + 1) = v125[0];
              *(&v96 + 1) = v86;
              *v97 = v9;
              *&v97[24] = v124;
              v98 = v68;
              sub_1CF2A8DE0(&v93);
              *v67 = v93;
              v70 = v94;
              v71 = *v95;
              v72 = v96;
              *(v67 + 48) = *&v95[16];
              *(v67 + 64) = v72;
              *(v67 + 16) = v70;
              *(v67 + 32) = v71;
              v73 = *v97;
              v74 = *&v97[16];
              v75 = v98;
              *(v67 + 128) = v99;
              *(v67 + 96) = v74;
              *(v67 + 112) = v75;
              *(v67 + 80) = v73;
              return swift_willThrow();
            }
          }

          sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        else
        {

          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
        v41 = 0;
        LOBYTE(v30) = 0;
        v39 = 0;
        v40 = 0;
        v34 = 0;
        v42 = 0;
        v25 = 0;
        v36 = 0;
        v38 = 0;
        v37 = 0;
        v43 = 0;
        v35 = 0;
        v108 = -1;
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t sub_1CF2AC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, void *a8)
{
  v79 = a2;
  v80 = a7;
  v81 = a8;
  v76 = a5;
  v10 = sub_1CF9E63D8();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v77 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  v26 = a6[13];
  v100 = a6[12];
  v101 = v26;
  v102 = a6[14];
  v103 = *(a6 + 30);
  v27 = a6[9];
  v96 = a6[8];
  v97 = v27;
  v28 = a6[11];
  v98 = a6[10];
  v99 = v28;
  v29 = a6[5];
  v92 = a6[4];
  v93 = v29;
  v30 = a6[7];
  v94 = a6[6];
  v95 = v30;
  v31 = a6[1];
  v88 = *a6;
  v89 = v31;
  v32 = a6[3];
  v90 = a6[2];
  v91 = v32;
  v33 = *(a1 + 24);
  v82 = *(a1 + 16);
  v83 = v33;

  sub_1CEFE52D8(0x657461657263, 0xE600000000000000, &v82);

  v67 = v13;
  v68 = v10;
  v34 = v78;
  v35 = *(v78 + 216);
  v71 = *(v78 + 224);
  v72 = v35;
  v36 = sub_1CF9E6448();
  v69 = *(v36 - 8);
  v70 = v36;
  (*(v69 + 56))(v25, 1, 1, v36);
  sub_1CEFCCBDC(a1, v19, &unk_1EC4BFD90, &unk_1CFA134F0);
  v37 = (*(v75 + 80) + 48) & ~*(v75 + 80);
  v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 255) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v80;
  v40[2] = v79;
  v40[3] = v41;
  v42 = v81;
  v40[4] = v81;
  v40[5] = v34;
  sub_1CEFE55D0(v19, v40 + v37, &unk_1EC4BFD90, &unk_1CFA134F0);
  v43 = v40 + v38;
  v44 = v69;
  v45 = v101;
  *(v43 + 12) = v100;
  *(v43 + 13) = v45;
  *(v43 + 14) = v102;
  *(v43 + 30) = v103;
  v46 = v97;
  *(v43 + 8) = v96;
  *(v43 + 9) = v46;
  v47 = v99;
  *(v43 + 10) = v98;
  *(v43 + 11) = v47;
  v48 = v93;
  *(v43 + 4) = v92;
  *(v43 + 5) = v48;
  v49 = v95;
  *(v43 + 6) = v94;
  *(v43 + 7) = v49;
  v50 = v89;
  *v43 = v88;
  *(v43 + 1) = v50;
  v51 = v91;
  *(v43 + 2) = v90;
  *(v43 + 3) = v51;
  *(v40 + v39) = v76;
  v52 = swift_allocObject();
  v52[2] = v41;
  v52[3] = v42;
  v53 = v71;
  v52[4] = v71;
  swift_retain_n();
  v81 = v72;

  v54 = v70;

  sub_1CEFCCBDC(&v88, &v82, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  v55 = fpfs_current_log();
  v80 = *(v53 + 16);
  v56 = v77;
  sub_1CEFCCBDC(v25, v77, &unk_1EC4BE370, qword_1CFA01B30);
  v57 = (*(v44 + 48))(v56, 1, v54);
  v73 = v25;
  if (v57 == 1)
  {
    sub_1CEFCCC44(v56, &unk_1EC4BE370, qword_1CFA01B30);
    v58 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v59 = v67;
    sub_1CF9E6438();
    (*(v44 + 8))(v56, v54);
    v58 = sub_1CF9E63C8();
    (*(v74 + 8))(v59, v68);
  }

  v60 = swift_allocObject();
  v60[2] = v55;
  v60[3] = sub_1CF2B0FCC;
  v60[4] = v40;
  v86 = sub_1CF2BA17C;
  v87 = v60;
  v82 = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_684;
  v61 = _Block_copy(&v82);
  v62 = v55;

  v86 = sub_1CF2BA188;
  v87 = v52;
  v82 = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_687;
  v63 = _Block_copy(&v82);

  v64 = v81;
  fp_task_tracker_async_and_qos(v80, v81, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v58, v61, v63);
  _Block_release(v63);
  _Block_release(v61);

  return sub_1CEFCCC44(v73, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2ACEBC(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x10000000000) != 0)
  {
    if ((v1 & 4) != 0)
    {
      result = 260;
      if ((v1 & 0x800) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = 256;
      if ((v1 & 0x800) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((v1 & 4) == 0)
    {
      result = 0;
      if ((v1 & 0x800) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    result = 4;
    if ((v1 & 0x800) != 0)
    {
LABEL_4:
      result |= 3uLL;
    }
  }

LABEL_5:
  if ((v1 & 0x400) != 0)
  {
    result |= 1uLL;
    if ((v1 & 0x1000) == 0)
    {
LABEL_7:
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v1 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  result |= 0x8000uLL;
  if ((v1 & 0x200) == 0)
  {
LABEL_8:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result |= 0x10000uLL;
  if ((v1 & 0x2000) == 0)
  {
LABEL_9:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result |= 0x400uLL;
  if ((v1 & 0x20) == 0)
  {
LABEL_10:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result |= 0x200000uLL;
  if ((v1 & 0x40) == 0)
  {
LABEL_11:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result |= 0x100000uLL;
  if ((v1 & 0x80) == 0)
  {
LABEL_12:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result |= 0x400000uLL;
  if ((v1 & 0x100) == 0)
  {
LABEL_13:
    if ((v1 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result |= 0x2000000uLL;
  if ((v1 & 0x20000) == 0)
  {
LABEL_14:
    if ((v1 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result |= 0x800000uLL;
  if ((v1 & 1) == 0)
  {
LABEL_15:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result |= 0x1000000uLL;
  if ((v1 & 0x10000) == 0)
  {
LABEL_16:
    if ((v1 & 0x100000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result |= 0x8000000uLL;
  if ((v1 & 0x100000000000) == 0)
  {
LABEL_17:
    if ((v1 & 0x400000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result |= 0x10000000uLL;
  if ((v1 & 0x400000000000) == 0)
  {
LABEL_18:
    if ((v1 & 0x1000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result |= 0x800uLL;
  if ((v1 & 0x1000000000000) == 0)
  {
LABEL_19:
    if ((v1 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result |= 0x20000000uLL;
  if ((v1 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  result |= 0x100000000uLL;
  if ((v1 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v1 & 0x8000000) == 0)
    {
      return result;
    }

    return result | 0x80000000;
  }

LABEL_42:
  result |= 0x40000000uLL;
  if ((v1 & 0x8000000) != 0)
  {
    return result | 0x80000000;
  }

  return result;
}

uint64_t sub_1CF2ACFCC(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, __int128 *a8, uint64_t a9, char *a10)
{
  v139 = a3;
  v131 = a7;
  v134 = a4;
  v140 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v14 = v13 - 8;
  v128 = *(v13 - 8);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v118 - v18;
  v20 = sub_1CF9E63D8();
  v141 = *(v20 - 8);
  v21 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v118 - v26;
  v27 = sub_1CF9E6448();
  v136 = *(v27 - 8);
  v137 = v27;
  v28 = v136[8];
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v132 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v142 = &v118 - v38;
  v125 = *a1;
  v124 = *(a1 + 8);
  v39 = *v139;
  v40 = a6[3];
  v151 = a6[2];
  v152 = v40;
  v41 = a6[5];
  v153 = a6[4];
  v154 = v41;
  v42 = a6[1];
  v149 = *a6;
  v150 = v42;
  v43 = *a8;
  v44 = a8[1];
  v45 = a8[3];
  v157 = a8[2];
  v158 = v45;
  v155 = v43;
  v156 = v44;
  v46 = a8[4];
  v47 = a8[5];
  v48 = a8[7];
  v161 = a8[6];
  v162 = v48;
  v159 = v46;
  v160 = v47;
  v49 = a8[8];
  v50 = a8[9];
  v51 = a8[11];
  v165 = a8[10];
  v166 = v51;
  v163 = v49;
  v164 = v50;
  v52 = a8[12];
  v53 = a8[13];
  v54 = a8[14];
  v170 = *(a8 + 30);
  v168 = v53;
  v169 = v54;
  v167 = v52;
  v139 = swift_allocObject();
  v139[2] = 0;
  v55 = *(v14 + 48);
  if ((v39 & 0x10) != 0)
  {
    v56 = v140 + v55;
    if ((*(v56 + *(type metadata accessor for ItemMetadata() + 80)) & 1) == 0)
    {
      v139[2] = 1;
    }
  }

  v57 = *(v138 + 216);
  v127 = *(v138 + 224);
  v58 = *(v140 + v55);
  v133 = v57;
  v126 = v39;
  if (v58 == 1 || (v39 & 0x18) == 0)
  {
    sub_1CF9E6408();
  }

  else
  {
    sub_1CF9E6418();
  }

  v59 = v141;
  v60 = v135;
  v61 = v122;
  v122 = a10;
  v121 = a9;
  qos_class_self();
  sub_1CF9E63B8();
  v62 = *(v59 + 48);
  if (v62(v19, 1, v20) == 1)
  {
    (*(v59 + 104))(v61, *MEMORY[0x1E69E7FA0], v20);
    if (v62(v19, 1, v20) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v59 + 32))(v61, v19, v20);
  }

  sub_1CF9E6428();
  sub_1CF9E6438();
  v63 = sub_1CF9E63C8();
  v64 = *(v59 + 8);
  v141 = v59 + 8;
  v64(v60, v20);
  v65 = v123;
  sub_1CF9E6438();
  v66 = sub_1CF9E63C8();
  v123 = v64;
  v64(v65, v20);
  v67 = v136;
  v68 = v136[1];
  if (v63 >= v66)
  {
    v69 = v30;
  }

  else
  {
    v69 = v33;
  }

  if (v63 >= v66)
  {
    v70 = v33;
  }

  else
  {
    v70 = v30;
  }

  v71 = v137;
  v119 = v136[1];
  v120 = v136 + 1;
  v68(v69, v137);
  v72 = v142;
  (v67[4])(v142, v70, v71);
  (v67[7])(v72, 0, 1, v71);
  v73 = v130;
  sub_1CEFCCBDC(v140, v130, &unk_1EC4BFD90, &unk_1CFA134F0);
  v74 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v75 = (v129 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v78 + 103) & 0xFFFFFFFFFFFFFFF8;
  v129 = (v78 + 119) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
  v118 = v20;
  v79 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_1CEFE55D0(v73, v80 + v74, &unk_1EC4BFD90, &unk_1CFA134F0);
  *(v80 + v75) = v134;
  *(v80 + v76) = v138;
  v81 = (v80 + v77);
  v83 = v121;
  v82 = v122;
  *v81 = v121;
  v81[1] = v82;
  v84 = (v80 + v78);
  v85 = v150;
  *v84 = v149;
  v84[1] = v85;
  v86 = v154;
  v84[4] = v153;
  v84[5] = v86;
  v87 = v152;
  v84[2] = v151;
  v84[3] = v87;
  v88 = v139;
  v89 = v80 + v140;
  *v89 = v125;
  *(v89 + 8) = v124;
  *(v80 + v129) = v131;
  *(v80 + v128) = v88;
  *(v80 + v79) = v126;
  v90 = v80;
  v91 = v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8);
  v92 = v137;
  v93 = v168;
  *(v91 + 192) = v167;
  *(v91 + 208) = v93;
  *(v91 + 224) = v169;
  *(v91 + 240) = v170;
  v94 = v164;
  *(v91 + 128) = v163;
  *(v91 + 144) = v94;
  v95 = v166;
  *(v91 + 160) = v165;
  *(v91 + 176) = v95;
  v96 = v160;
  *(v91 + 64) = v159;
  *(v91 + 80) = v96;
  v97 = v162;
  *(v91 + 96) = v161;
  *(v91 + 112) = v97;
  v98 = v156;
  *v91 = v155;
  *(v91 + 16) = v98;
  v99 = v158;
  *(v91 + 32) = v157;
  *(v91 + 48) = v99;
  v100 = swift_allocObject();
  v100[2] = v83;
  v100[3] = v82;
  v101 = v127;
  v100[4] = v127;
  swift_retain_n();

  sub_1CEFCCBDC(&v149, &v143, &unk_1EC4BE330, &unk_1CF9FF010);

  sub_1CEFCCBDC(&v155, &v143, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  v102 = fpfs_current_log();
  v103 = *(v101 + 16);
  v104 = v136[6];
  v105 = v142;
  v106 = v104(v142, 1, v92);
  v107 = v105;
  v108 = v132;
  sub_1CEFCCBDC(v107, v132, &unk_1EC4BE370, qword_1CFA01B30);
  if (v104(v108, 1, v92) == 1)
  {
    sub_1CEFCCC44(v108, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v140) = 0;
  }

  else
  {
    v109 = v135;
    sub_1CF9E6438();
    v119(v108, v92);
    LODWORD(v140) = sub_1CF9E63C8();
    (v123)(v109, v118);
  }

  if (v106 == 1)
  {
    v110 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v110 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v111 = swift_allocObject();
  v111[2] = v102;
  v111[3] = sub_1CF2B07CC;
  v111[4] = v90;
  v147 = sub_1CF2BA17C;
  v148 = v111;
  v143 = MEMORY[0x1E69E9820];
  v144 = 1107296256;
  v145 = sub_1CEFCA444;
  v146 = &block_descriptor_550;
  v112 = _Block_copy(&v143);
  v113 = v102;

  v147 = sub_1CF2B08D4;
  v148 = v100;
  v143 = MEMORY[0x1E69E9820];
  v144 = 1107296256;
  v145 = sub_1CEFCA444;
  v146 = &block_descriptor_553;
  v114 = _Block_copy(&v143);

  v115 = v103;
  v116 = v133;
  fp_task_tracker_async_and_qos(v115, v133, v110, v140, v112, v114);
  _Block_release(v114);
  _Block_release(v112);

  sub_1CEFCCC44(v142, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2ADA38(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 8) != 0)
  {
    v3 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40)) != 1;
  }

  else
  {
    if ((*a1 & 0x10) != 0)
    {
      v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40));
      v7 = type metadata accessor for ItemMetadata();
      if (v6[*(v7 + 112)] != *(a3 + *(v7 + 112)))
      {
        v3 = 1;
        return v3 & 1;
      }

      if (*v6 != 1)
      {
        v3 = v6[*(v7 + 80)] ^ 1;
        return v3 & 1;
      }
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1CF2ADAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BE310, qword_1CF9FCBE0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CFA00250;
    v13 = objc_opt_self();
    v14 = sub_1CF9E5928();
    v15 = [v13 writingIntentWithURL:v14 options:0x100000];

    *(v12 + 32) = v15;
    (*(v7 + 8))(v10, v6);
    return v12;
  }
}

uint64_t sub_1CF2ADD0C(uint64_t *a1, int a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v69 = a5;
  v70 = a6;
  LODWORD(v81) = a2;
  v10 = sub_1CF9E6388();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v67 - v14;
  v15 = sub_1CF9E6498();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v67 - v20;
  v73 = sub_1CF9E63D8();
  v71 = *(v73 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6448();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E73D8();
  v68 = *(v26 - 8);
  v27 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = a3[3];
  v96 = a3[2];
  v97 = v32;
  v33 = a3[5];
  v98 = a3[4];
  v99 = v33;
  v34 = a3[1];
  v95[0] = *a3;
  v95[1] = v34;
  v89 = v95[0];
  v90 = v34;
  v91 = v96;
  v92 = v32;
  v93 = v98;
  v94 = v33;
  v35 = a4[3];
  v100[2] = a4[2];
  v100[3] = v35;
  v36 = a4[1];
  v100[0] = *a4;
  v100[1] = v36;
  v37 = swift_allocObject();
  v76 = v30;
  *(v37 + 16) = v30;
  v75 = v31;
  *(v37 + 24) = v31;
  v38 = v69;
  v39 = v70;
  *(v37 + 32) = v6;
  *(v37 + 40) = v38;
  *(v37 + 48) = v39;
  v40 = a3[3];
  *(v37 + 88) = a3[2];
  *(v37 + 104) = v40;
  v41 = a3[5];
  *(v37 + 120) = a3[4];
  *(v37 + 136) = v41;
  v42 = a3[1];
  *(v37 + 56) = *a3;
  *(v37 + 72) = v42;
  *(v37 + 152) = v81;
  v43 = a4[3];
  *(v37 + 192) = a4[2];
  *(v37 + 208) = v43;
  v44 = a4[1];
  *(v37 + 160) = *a4;
  *(v37 + 176) = v44;
  v69 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v45 = *(v6 + 216);
  v88[12] = MEMORY[0x1E69E7CC0];
  sub_1CEFCCBDC(v95, v88, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(v95, v88, &unk_1EC4BE330, &unk_1CF9FF010);
  v81 = v6;

  sub_1CEFCCBDC(v100, v88, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v47 = v72;
  sub_1CF9E77B8();
  v48 = v71;
  v49 = sub_1CF9E73E8();

  v50 = v26;
  v51 = v73;
  (*(v68 + 8))(v29, v50);
  qos_class_self();
  sub_1CF9E63B8();
  v52 = *(v48 + 48);
  if (v52(v47, 1, v51) == 1)
  {
    (*(v48 + 104))(v74, *MEMORY[0x1E69E7FA0], v51);
    if (v52(v47, 1, v51) != 1)
    {
      sub_1CEFCCC44(v47, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v48 + 32))(v74, v47, v51);
  }

  ObjectType = swift_getObjectType();
  v54 = v77;
  sub_1CF9E6428();
  v55 = swift_allocObject();
  v56 = v92;
  *(v55 + 72) = v91;
  *(v55 + 88) = v56;
  v57 = v94;
  *(v55 + 104) = v93;
  *(v55 + 120) = v57;
  v58 = v90;
  *(v55 + 40) = v89;
  v59 = v76;
  *(v55 + 16) = v81;
  *(v55 + 24) = v59;
  *(v55 + 32) = v75;
  *(v55 + 56) = v58;
  *(v55 + 136) = 0;
  *(v55 + 144) = 0;
  *(v55 + 152) = v49;
  *(v55 + 160) = sub_1CF2B064C;
  *(v55 + 168) = v37;
  sub_1CEFCCBDC(v95, v88, &unk_1EC4BE330, &unk_1CF9FF010);

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v54, sub_1CF2B9F4C, v55);

  (*(v78 + 8))(v54, v79);
  v60 = v80;
  sub_1CF9E6478();
  v61 = v84;
  sub_1CEFD5B64(v84);
  v62 = v85;
  sub_1CEFD5BD8(v85);
  MEMORY[0x1D3869770](v60, v61, v62, ObjectType);
  v63 = *(v86 + 8);
  v64 = v62;
  v65 = v87;
  v63(v64, v87);
  v63(v61, v65);
  (*(v82 + 8))(v60, v83);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  return sub_1CEFCCC44(v95, &unk_1EC4BE330, &unk_1CF9FF010);
}

void sub_1CF2AE4E8(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(id), uint64_t a8)
{
  v130 = a8;
  v131 = a7;
  v127 = a6;
  v145 = a5;
  v146 = a4;
  v148 = a3;
  v128 = a2;
  v164 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v126 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v120 - v13;
  v140 = sub_1CF9E6118();
  v124 = *(v140 - 1);
  v14 = v124[8];
  MEMORY[0x1EEE9AC00](v140);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5D98();
  v129 = *(v17 - 8);
  v18 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5CF8();
  v135 = *(v21 - 8);
  v22 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5828();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_1CF9E5A58();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v120 - v34;
  MEMORY[0x1EEE9AC00](v36);
  if (!a1)
  {
    v136 = v41;
    v141 = v29;
    v137 = v24;
    v123 = v26;
    v139 = v25;
    v138 = v21;
    v132 = v20;
    v133 = v17;
    v122 = v40;
    v47 = &v120 - v38;
    v48 = v37;
    v49 = v39;
    v50 = [objc_opt_self() defaultManager];
    v51 = v128;
    v52 = [v128 URL];
    sub_1CF9E59D8();

    v147 = v50;
    v53 = sub_1CF9E7268();
    v54 = *(v49 + 8);
    v144 = v48;
    v143 = v49 + 8;
    v142 = v54;
    v54(v47, v48);
    v121 = v53;
    if (v53)
    {
      v55 = v53;
      v56 = v141;
      v124 = v55;
      sub_1CF9E7238();
      sub_1CF9E5818();
      if (*(&v159 + 1))
      {
        v140 = 0;
        v135 += 8;
        v129 += 8;
        v134 = v35;
        do
        {
          sub_1CEFE9EB8(&v158, &v153);
          sub_1CEFD57E0(0, &unk_1EC4BECE0, 0x1E695DFF8);
          swift_dynamicCast();
          v60 = v151;
          sub_1CF9E59D8();

          v61 = sub_1CF9E58E8();
          v63 = v62;
          *&v153 = v61;
          *(&v153 + 1) = v62;
          v151 = 58;
          v152 = 0xE100000000000000;
          v149 = 47;
          v150 = 0xE100000000000000;
          v64 = sub_1CEFE4E68();
          v118 = v64;
          v119 = v64;
          v117 = v64;
          v65 = MEMORY[0x1E69E6158];
          v116 = MEMORY[0x1E69E6158];
          *&v153 = sub_1CF9E7668();
          *(&v153 + 1) = v66;
          v151 = 47;
          v152 = 0xE100000000000000;
          v149 = 58;
          v150 = 0xE100000000000000;
          v118 = v64;
          v119 = v64;
          v116 = v65;
          v117 = v64;
          sub_1CF9E7668();

          MEMORY[0x1EEE9AC00](v67);
          v118 = v147;
          v119 = v148;
          v68 = v137;
          sub_1CF9E5CE8();
          v69 = sub_1CF51B6BC(v68, sub_1CF2B062C, &v116);
          v71 = v70;

          (*v135)(v68, v138);
          if (!v71)
          {
            *&v153 = v61;
            *(&v153 + 1) = v63;

            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            v72 = v132;
            sub_1CF9E5D88();
            v73 = sub_1CF9E5D18();
            v75 = v74;
            (*v129)(v72, v133);
            MEMORY[0x1D3868CC0](v73, v75);

            v71 = *(&v153 + 1);
            v69 = v153;
          }

          v76 = v136;
          sub_1CF9E5968();
          v77 = v134;
          if (v69 == v61 && v71 == v63)
          {
          }

          else
          {
            v78 = sub_1CF9E8048();

            if (v78)
            {
            }

            else
            {
              v79 = sub_1CF9E5928();
              v80 = [v79 fileSystemRepresentation];
              v81 = v79;
              v82 = sub_1CF9E6978();
              v83 = strlen((v82 + 32));

              v84 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
                __break(1u);
              }

              v85 = sub_1CF9E6978();

              setxattr(v80, "com.apple.fileprovider.before-bounce#PX", (v85 + 32), v84, 0, 3);
            }
          }

          v86 = sub_1CF9E5928();
          v87 = sub_1CF9E5928();
          *&v153 = 0;
          v88 = [v147 moveItemAtURL:v86 toURL:v87 error:&v153];

          v89 = v145;
          v90 = v139;
          if (v88)
          {
            v57 = v153;
          }

          else
          {
            v91 = v153;
            v92 = sub_1CF9E57F8();

            swift_willThrow();
            v140 = v92;
          }

          v58 = v144;
          v59 = v142;
          v142(v76, v144);
          v59(v77, v58);
          v56 = v141;
          sub_1CF9E5818();
        }

        while (*(&v159 + 1));
      }

      else
      {
        v140 = 0;
        v89 = v145;
        v90 = v139;
      }

      (*(v123 + 8))(v56, v90);
      v110 = v124;

      v99 = v127;
      v51 = v128;
      v43 = v140;
      if (v140)
      {
        swift_willThrow();

        goto LABEL_3;
      }
    }

    else
    {
      v148 = v47;
      v93 = fpfs_current_or_default_log();
      v94 = v16;
      sub_1CF9E6128();
      v95 = v51;
      v96 = sub_1CF9E6108();
      v97 = sub_1CF9E72A8();

      v98 = os_log_type_enabled(v96, v97);
      v99 = v127;
      if (v98)
      {
        v100 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v158 = v141;
        *v100 = 136315138;
        v101 = [v95 URL];
        v102 = v148;
        sub_1CF9E59D8();

        v103 = sub_1CF9E5928();
        v104 = [v103 fp_shortDescription];

        v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v107 = v106;

        v142(v102, v144);
        v108 = sub_1CEFD0DF0(v105, v107, &v158);

        *(v100 + 4) = v108;
        _os_log_impl(&dword_1CEFC7000, v96, v97, "can't create enumerator at %s", v100, 0xCu);
        v109 = v141;
        __swift_destroy_boxed_opaque_existential_1(v141);
        MEMORY[0x1D386CDC0](v109, -1, -1);
        MEMORY[0x1D386CDC0](v100, -1, -1);
      }

      (v124[1])(v94, v140);
      v89 = v145;
    }

    v111 = [v51 URL];
    v112 = v122;
    sub_1CF9E59D8();

    v151 = v89;
    LOBYTE(v152) = v99;
    v113 = type metadata accessor for VFSItem(0);
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v114 = v126;
    (*(*(v113 - 8) + 56))(v126, 1, 1, v113);
    v153 = 0uLL;
    v154 = 0;
    v155 = 0xB000000000000000;
    v156 = 0u;
    v157 = 0u;
    v115 = v125;
    sub_1CF28CB50(v112, &v151, &v158, v114, 0, &v153, v125);
    sub_1CEFCCC44(v114, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v142(v112, v144);
    sub_1CEFCCC44(v115, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v131(0);

    goto LABEL_4;
  }

  swift_willThrow();
  v42 = a1;
  v43 = a1;
LABEL_3:
  v44 = v131;
  v45 = v43;
  v44(v43);

LABEL_4:
  v46 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF2AF3BC(uint64_t a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6118();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6918();
  v15 = sub_1CF9E68C8();
  v17 = v16;
  v18 = (*(v11 + 8))(v14, v10);
  if (v17 >> 60 == 15)
  {
    LODWORD(v38[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v3 + 8))(v6, v2);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v32 - 8) = a1;
    *(&v32 - 3) = 0xD000000000000021;
    *(&v32 - 2) = v20;
    *(&v32 - 2) = 0;
    v21 = v36;
    sub_1CF712090(sub_1CF2AF884, (&v32 - 6), v15, v17);
    if (v21 || (MEMORY[0x1D3868410](a1, 64, 3) & 0x80000000) == 0)
    {
      return sub_1CEFE48D8(v15, v17);
    }

    else
    {
      v22 = MEMORY[0x1D38683F0]();
      LODWORD(v38[0]) = 3;
      v39 = 9;
      v23 = sub_1CF19BBE4(v22, v38);
      sub_1CF1969CC(v38);
      swift_willThrow();
      v24 = fpfs_current_or_default_log();
      v25 = v33;
      sub_1CF9E6128();
      v26 = v23;
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E72A8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_getErrorValue();
        v31 = Error.prettyDescription.getter(v37);
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "Could not set protection class: %@", v29, 0xCu);
        sub_1CEFCCC44(v30, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v30, -1, -1);
        MEMORY[0x1D386CDC0](v29, -1, -1);

        sub_1CEFE48D8(v15, v17);
      }

      else
      {
        sub_1CEFE48D8(v15, v17);
      }

      return (*(v34 + 8))(v25, v35);
    }
  }
}

uint64_t sub_1CF2AF884(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1CF19ABF0(a1);
}

uint64_t sub_1CF2AF8A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CF2AF92C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 17) << 8));
}

uint64_t sub_1CF2AF970()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v0[2] + 136);
  v5 = sub_1CF9C6A64(v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
  }

  return v3(v5, v6);
}

void sub_1CF2AF9C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CF2EE050(*(v0 + 16));
}

void sub_1CF2AF9E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CF4D3F40(*(v0 + 16));
}

uint64_t objectdestroy_203Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF2AFAD4(unsigned int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57[1] = a5;
  v57[2] = a6;
  v61 = a2;
  v62 = a4;
  v58 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v57 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VFSDetachedRootBookmark();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v60 = v57 - v22;
  v23 = *a3;
  v24 = a3[1];
  v59 = v23;
  v25 = *(v12 + 16);
  v25(v15, v61, v11, v21);
  (v25)(v10, v62, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (v25)(v19, v15, v11);

  v26 = v67;
  v27 = sub_1CF9E5858();
  v29 = (v12 + 8);
  v67 = v26;
  if (v26)
  {

    sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
    v30 = *v29;
    (*v29)(v15, v11);
    return (v30)(v19, v11);
  }

  v32 = v28;
  v33 = v27;
  sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  (*v29)(v15, v11);
  v34 = &v19[v16[6]];
  *v34 = v33;
  *(v34 + 1) = v32;
  v35 = &v19[v16[5]];
  v36 = v60;
  *v35 = v59;
  *(v35 + 1) = v24;
  v19[v16[7]] = 1;
  sub_1CEFE4C60(v19, v36, type metadata accessor for VFSDetachedRootBookmark);
  v37 = v16[6];
  v38 = (v36 + v16[5]);
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v36 + v37);
  v42 = *(v36 + v37 + 8);
  v43 = sub_1CF9E56C8();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();

  sub_1CEFE42D4(v41, v42);
  sub_1CF9E56B8();
  sub_1CF9E5698();
  v63 = v39;
  *&v64 = v40;
  *(&v64 + 1) = v41;
  *&v65 = v42;
  sub_1CF2B00B0();
  v46 = v67;
  v47 = sub_1CF9E56A8();
  if (v46)
  {
    sub_1CEFE5888(v36, type metadata accessor for VFSDetachedRootBookmark);

    return sub_1CEFE4714(v41, v42);
  }

  v49 = v47;
  v50 = v48;

  sub_1CEFE4714(v41, v42);
  v51 = v58;
  if ((fpfs_clear_acl() & 0x80000000) != 0)
  {
    v54 = MEMORY[0x1D38683F0]();
    v63 = 8;
    v64 = 0u;
    v65 = 0u;
    v55 = 19;
  }

  else
  {
    v52 = 16;
    if ((fpfs_fset_acl() & 0x80000000) != 0)
    {
LABEL_13:
      v54 = MEMORY[0x1D38683F0]();
      LODWORD(v63) = v52;
      v55 = 4;
      goto LABEL_14;
    }

    if ((fpfs_fset_syncroot() & 0x80000000) == 0)
    {
      v53 = sub_1CF2AF3BC(v51);
      MEMORY[0x1EEE9AC00](v53);
      LODWORD(v57[-4]) = v51;
      v57[-3] = 0xD000000000000021;
      v57[-2] = v56;
      LODWORD(v57[-1]) = 0;
      sub_1CF712090(sub_1CF2BA158, &v57[-6], v49, v50);
      v52 = 1024;
      if ((fpfs_fset_acl() & 0x80000000) == 0)
      {
        sub_1CEFE5888(v36, type metadata accessor for VFSDetachedRootBookmark);
        return sub_1CEFE4714(v49, v50);
      }

      goto LABEL_13;
    }

    v54 = MEMORY[0x1D38683F0]();
    LODWORD(v63) = 2;
    v55 = 6;
  }

LABEL_14:
  v66 = v55;
  sub_1CF19BBE4(v54, &v63);
  sub_1CF1969CC(&v63);
  swift_willThrow();
  sub_1CEFE4714(v49, v50);
  return sub_1CEFE5888(v36, type metadata accessor for VFSDetachedRootBookmark);
}

unint64_t sub_1CF2B00B0()
{
  result = qword_1EC4BEC60;
  if (!qword_1EC4BEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEC60);
  }

  return result;
}

double sub_1CF2B0124(uint64_t a1)
{
  *a1 = 13;
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

uint64_t sub_1CF2B017C()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v0 + v3);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_1CF29B8A8(v4, v0 + v2, v6, v7, v8);
}

uint64_t sub_1CF2B0210(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF29BA18(a1, v1 + v4, v6, v7);
}

unint64_t sub_1CF2B0310(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 > 1)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3 || v1 == 4)
    {
    }
  }

  else
  {
    if (v1 <= 7)
    {
      if (v1 != 5 && v1 != 6 && v1 != 7)
      {
        return result;
      }
    }

    if (v1 == 8 || v1 == 9 || v1 == 10)
    {
    }
  }

  return result;
}

uint64_t objectdestroy_326Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t fpfs_openflags(unsigned int a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0x8000;
  }

  return v1 | ~(v1 >> 13) & 0x100 | 4;
}

uint64_t objectdestroy_148Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_1CF2B0568(uint64_t a1, void *a2)
{
  v4 = *(sub_1CF9E5A58() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v6);
  v10 = v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v2 + v7);
  v13 = *(v2 + v7 + 8);
  v14 = *(v10 + 8);

  sub_1CF2AE4E8(a2, v8, (v2 + v5), v9, v11, v14, v12, v13);
}

uint64_t sub_1CF2B0698()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF2873A4(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + v5), *(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((((((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8));
}

double sub_1CF2B0794(uint64_t a1)
{
  *a1 = 1;
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

uint64_t sub_1CF2B07CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF27B458(v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), (v0 + v6), *(v0 + ((v6 + 103) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 103) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_200Tm(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[3];

  v3 = v1[5];

  return swift_deallocObject();
}

uint64_t sub_1CF2B093C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);
  v9 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v9 + 8);
  return sub_1CF27FAA0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), v8, *v9);
}

uint64_t sub_1CF2B0A04(_OWORD *a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(type metadata accessor for VFSItem(0) - 8);
  return sub_1CF280274(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + v5, *(v2 + v6), *(v2 + v7 + 8), *(v2 + v7 + 16), *(v2 + v7 + 24), *(v2 + v8), v2 + v10, *(v2 + v11), *(v2 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), (v2 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((*(v12 + 80) + (((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 248) & ~*(v12 + 80))));
}

double sub_1CF2B0C28(uint64_t a1)
{
  *a1 = 6;
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

double sub_1CF2B0C60(uint64_t a1)
{
  *a1 = 4;
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

uint64_t sub_1CF2B0C98@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v1 + 57);
  *(v1 + 58);
  v7 = *(v1 + 59);
  return sub_1CF19AED0(*(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1CF2B0CF8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *(v1 + 57);
  *(v1 + 58);
  v5 = *(v1 + 59);
  return sub_1CF19B174(*(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1CF2B0E94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  if (*(v1 + 89))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | *(v1 + 88);
  *(v1 + 90);
  v12 = *(v1 + 80);
  return sub_1CF19B6A4(a1, *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF2B0F0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = v0 + ((v5 + 255) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1CF278154(v0 + v2, v6, (v0 + v4), v0 + v5, v8, v9);
}

uint64_t sub_1CF2B0FCC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + ((v3 + 255) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF2723A8(v4, v5, v6, v7, v0 + v2, v0 + v3, v8);
}

uint64_t sub_1CF2B1088@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF2661C0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF2B10BC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for Signpost(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF274434(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v7), v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 255) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_294Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF2B1220()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v4 + 8);

  return sub_1CF272030(v0 + v2, v5, v9, v7, v8);
}

uint64_t objectdestroy_163Tm()
{
  v1 = v0[2];

  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_1CEFE4714(v0[5], v2);
  }

  v3 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1CF2B1370(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF9CA8D4(a1);
}

uint64_t sub_1CF2B138C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1CF2B144C(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF26D3D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF2B1510(uint64_t a1)
{
  *a1 = 12;
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

uint64_t sub_1CF2B1548(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

double sub_1CF2B15E0(uint64_t a1)
{
  *a1 = 3;
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

uint64_t sub_1CF2B1654(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFD57E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1CF2B16B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1CF7420F0(*(v0 + 16), *(v0 + 24));
}

uint64_t objectdestroy_1103Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t objectdestroy_923Tm()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

id sub_1CF2B1868(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CF2B187C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  return sub_1CF29A378(a1, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_1CF2B1984(uint64_t a1)
{
  if (*(v1 + 73))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 72);
  *(v1 + 74);
  v5 = *(v1 + 64);
  return sub_1CF19B498(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 44), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF2B1A08()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1CF28A4A8(v2, v3, v6, v4, v5, v7);
}

void sub_1CF2B1A8C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for VFSItem(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1CF28B4EC(a1, v7, v8, v1 + v4, v9, v10);
}

uint64_t objectdestroy_151Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF2B1C28(void *a1, char a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF269E34(a1, a2 & 1, v6, v7, v8);
}

uint64_t objectdestroy_1261Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF2B1DA0(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1CF9E5A58() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t objectdestroy_446Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

double sub_1CF2B1EB8(uint64_t a1)
{
  *a1 = 5;
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

uint64_t objectdestroy_154Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_1100Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

id sub_1CF2B1FC4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF2B1FD4()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 40);

    v5 = v2(v4);
    sub_1CEFF7124(v2);
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v20) = 1;
  *&v10 = v5;
  *(&v10 + 1) = MEMORY[0x1E69E7CC0];
  *&v11 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
  *(&v11 + 1) = *(&v10 + 1);
  *v12 = MEMORY[0x1E69E7CD0];
  *&v12[8] = MEMORY[0x1E69E7CD0];
  *&v12[16] = 0;
  v12[24] = 1;
  v13 = __PAIR128__(*(&v10 + 1), v5);
  v14 = v11;
  v15 = *(&v10 + 1);
  v16 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v18 = 0;
  v19 = 1;
  sub_1CF2B97CC(&v10, v23);
  sub_1CF2B9804(&v13);
  v20 = v10;
  v21 = v11;
  v22[0] = *v12;
  *(v22 + 9) = *&v12[9];
  v6 = (v1 + qword_1EDEAFB30);
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v24[0] = v6[2];
  *(v24 + 9) = *(v6 + 41);
  v8 = v21;
  *v6 = v20;
  v6[1] = v8;
  v6[2] = v22[0];
  *(v6 + 41) = *(v22 + 9);
  return sub_1CEFCCC44(v23, &unk_1EC4BEDF0, &qword_1CFA00818);
}

void (*sub_1CF2B2124())(__int128 *, void)
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v39 - v4;
  v6 = (v0 + qword_1EDEAFB30);
  swift_beginAccess();
  v7 = v6[1];
  v57[0] = *v6;
  v57[1] = v7;
  v58[0] = v6[2];
  *(v58 + 9) = *(v6 + 41);
  if (*(&v57[0] + 1))
  {
    v8 = v6[1];
    v54 = *v6;
    v55 = v8;
    *v56 = v6[2];
    v9 = *(v6 + 41);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    v47 = 1;
    *&v48 = 0;
    *(&v48 + 1) = v10;
    *&v49 = v11;
    *(&v49 + 1) = v10;
    *&v50[0] = MEMORY[0x1E69E7CD0];
    *(&v50[0] + 1) = MEMORY[0x1E69E7CD0];
    *&v50[1] = 0;
    BYTE8(v50[1]) = 1;
    *&v51 = 0;
    *(&v51 + 1) = v10;
    *&v52 = v11;
    *(&v52 + 1) = v10;
    *&v53[0] = MEMORY[0x1E69E7CD0];
    *(&v53[0] + 1) = MEMORY[0x1E69E7CD0];
    *&v53[1] = 0;
    BYTE8(v53[1]) = 1;
    sub_1CF2B97CC(&v48, &v54);
    sub_1CF2B9804(&v51);
    v54 = v48;
    v55 = v49;
    *v56 = v50[0];
    v9 = *(v50 + 9);
  }

  *&v56[9] = v9;
  v12 = v1[29];
  sub_1CEFCCBDC(v57, &v51, &unk_1EC4BEDF0, &qword_1CFA00818);
  if (([v12 hasBufferedEvents] & 1) == 0)
  {
    v13 = v1 + qword_1EDEAFB38;
    v14 = *(v1 + qword_1EDEAFB38);
    v15 = *(v1 + qword_1EDEAFB38 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if ((v15 & 1) == 0 && v14 == v51)
    {
      swift_storeEnumTagMultiPayload();
      sub_1CF25C780(v5, 0, 0);
      sub_1CEFCCC44(v5, &unk_1EC4BED40, &unk_1CFA00720);
    }

    v16 = v1 + qword_1EDEAFAF0;
    if ((*(v1 + qword_1EDEAFAF0 + 16) & 1) == 0)
    {
      v17 = *v16;
      v45 = *(v16 + 1);
      v46 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      v18 = v51;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      if (v46 == v18 && v45 == v51)
      {
        swift_storeEnumTagMultiPayload();
        sub_1CF25C780(v5, 0, 0);
        sub_1CEFCCC44(v5, &unk_1EC4BED40, &unk_1CFA00720);
      }
    }

    *v13 = 0;
    v13[8] = 1;
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = 1;
  }

  v19 = *(&v55 + 1);
  v20 = v55;
  v44 = *&v56[16];
  v45 = *(&v54 + 1);
  v21 = v56[24];
  if (*(*(&v54 + 1) + 16))
  {
LABEL_20:
    v28 = v1[2];
    if (v28)
    {
      v46 = v1;
      v29 = v1[3];
      v30 = *(v20 + 16);
      if (v30)
      {
        v42 = v19;
        v43 = v21;
        v31 = sub_1CF1F8A84(v30, 0);
        v32 = *(type metadata accessor for SyncState() - 8);
        v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v41 = v31;
        sub_1CF1F977C(&v51, v31 + v33, v30, v20);
        v39[1] = *&v53[0];
        v40 = v34;

        sub_1CF03C63C(v28);
        result = sub_1CEFCB59C();
        if (v40 != v30)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        LOBYTE(v21) = v43;
        v19 = v42;
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      if (*(v19 + 16))
      {
        v35 = swift_allocObject();
        *(v35 + 16) = v19;

        v36 = sub_1CF2B9834;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }

      v28(v45, v41, v36, v35);
      sub_1CEFF7124(v28);
      sub_1CEFF7124(v36);
    }

    if ((v21 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v51 = v44;

      sub_1CF9E62A8();
    }

LABEL_31:
    v37 = v6[1];
    v48 = *v6;
    v49 = v37;
    v50[0] = v6[2];
    *(v50 + 9) = *(v6 + 41);
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *(v6 + 41) = 0u;
    sub_1CEFCCC44(&v48, &unk_1EC4BEDF0, &qword_1CFA00818);
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_1CF9E6288();
    if (!__OFADD__(*v38, 1))
    {
      ++*v38;
      result(&v51, 0);

      v51 = v54;
      v52 = v55;
      v53[0] = *v56;
      *(v53 + 9) = *&v56[9];
      return sub_1CF2B9804(&v51);
    }

    __break(1u);
    goto LABEL_34;
  }

  v22 = *(v55 + 16);
  if (!v22)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v42 = *(&v55 + 1);
  v43 = v56[24];
  v46 = v1;
  v23 = sub_1CF1F8A84(v22, 0);
  v24 = *(type metadata accessor for SyncState() - 8);
  sub_1CF1F977C(&v51, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v22, v20);
  v41 = v25;

  result = sub_1CEFCB59C();
  if (v41 == v22)
  {
    v1 = v46;
    v21 = v43;
    v19 = v42;
LABEL_18:
    v27 = *(v23 + 16);

    if (!v27 && !*(v19 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CF2B2820(NSObject *a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v552) = a8;
  v541 = a7;
  v504 = a6;
  v500 = a5;
  v502 = a4;
  v545 = a3;
  v547 = a2;
  v548 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v517 = &v492 - v12;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v524 = *(v530 - 8);
  v13 = *(v524 + 64);
  MEMORY[0x1EEE9AC00](v530);
  v529 = (&v492 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  *&v528 = &v492 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v506 = &v492 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v505 = (&v492 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v499 = (&v492 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v507 = (&v492 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v510 = &v492 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v509 = (&v492 - v28);
  v546 = sub_1CF9E6118();
  v551 = *(v546 - 8);
  v29 = *(v551 + 64);
  MEMORY[0x1EEE9AC00](v546);
  v525 = &v492 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v508 = &v492 - v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v518 = &v492 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v501 = &v492 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v526 = (&v492 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v511 = &v492 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v495 = &v492 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v498 = &v492 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v515 = (&v492 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v514 = &v492 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v513 = &v492 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v522 = &v492 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v527 = &v492 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v516 = &v492 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v537 = &v492 - v58;
  v536 = sub_1CF9E6068();
  *&v535 = *(v536 - 1);
  v59 = *(v535 + 64);
  MEMORY[0x1EEE9AC00](v536);
  v533 = &v492 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v531 = &v492 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v539 = (&v492 - v65);
  v532 = type metadata accessor for Signpost(0);
  v66 = *(*(v532 - 8) + 64);
  MEMORY[0x1EEE9AC00](v532);
  v538 = &v492 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v496 = &v492 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v492 - v72;
  v550 = type metadata accessor for VFSItem(0);
  v542 = *(v550 - 8);
  v74 = *(v542 + 8);
  MEMORY[0x1EEE9AC00](v550);
  v493 = &v492 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v494 = &v492 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v519 = (&v492 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v512 = &v492 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v523 = &v492 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v521 = &v492 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v534 = (&v492 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v549 = (&v492 - v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90 - 8);
  v93 = &v492 - v92;
  v544 = sub_1CF9E5A58();
  v94 = *(v544 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v544);
  v520 = &v492 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v503 = &v492 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v497 = &v492 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v492 - v102;
  v104 = sub_1CF9E64A8();
  v105 = *(v104 - 8);
  v106 = *(v105 + 64);
  *&v107 = MEMORY[0x1EEE9AC00](v104).n128_u64[0];
  v109 = &v492 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v553 = v9;
  *v109 = [*(v9 + 232) delegationQueue];
  (*(v105 + 104))(v109, *MEMORY[0x1E69E8020], v104);
  v110 = sub_1CF9E64D8();
  (*(v105 + 8))(v109, v104);
  if ((v110 & 1) == 0)
  {
    __break(1u);
    goto LABEL_247;
  }

  v543 = v94;
  v540 = v103;
  v111 = v547;
  sub_1CF9E58B8();
  v112 = v541;
  v113 = v111;
  if (v541)
  {
    v115 = sub_1CF25D188();
    if (*(v114 + 8))
    {
      v116 = v114;
      *v93 = v112;
      v93[8] = 0;
      v117 = type metadata accessor for SyncState();
      swift_storeEnumTagMultiPayload();
      (*(*(v117 - 8) + 56))(v93, 0, 1, v117);
      sub_1CF1C8B4C(v93, 3);
      *(v116 + 48) = v112;
      *(v116 + 56) = 0;
    }

    (v115)(v563, 0);
  }

  sub_1CEFCCBDC(a9, v73, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v119 = v542 + 48;
  v118 = *(v542 + 6);
  if (v118(v73, 1, v550) != 1)
  {
    v526 = v118;
    sub_1CEFE4C60(v73, v549, type metadata accessor for VFSItem);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v147 = qword_1EDEBBE40;
    v148 = v535;
    v149 = v539;
    v150 = v536;
    (*(v535 + 56))(v539, 1, 1, v536);
    *&v563[0] = 0;
    *(&v563[0] + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(v563, "resolved item ");
    HIBYTE(v563[0]) = -18;
    v151 = sub_1CF255338();
    MEMORY[0x1D3868CC0](v151);

    v152 = v563[0];
    v153 = v149;
    v154 = v531;
    sub_1CEFCCBDC(v153, v531, &unk_1EC4BED20, &unk_1CFA00700);
    v155 = *(v148 + 48);
    v156 = v155(v154, 1, v150);
    v492 = v119;
    *&v528 = *(&v152 + 1);
    v529 = v152;
    if (v156 == 1)
    {
      v157 = v147;
      v158 = v533;
      sub_1CF9E6048();
      v159 = v155(v154, 1, v150);
      v160 = v148;
      v161 = v532;
      if (v159 != 1)
      {
        sub_1CEFCCC44(v154, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v158 = v533;
      (*(v148 + 32))(v533, v154, v150);
      v160 = v148;
      v161 = v532;
    }

    v162 = v538;
    (*(v160 + 16))(v538, v158, v150);
    *&v162[*(v161 + 20)] = v147;
    v163 = &v162[*(v161 + 24)];
    *v163 = "FS: handle event";
    *(v163 + 1) = 16;
    v163[16] = 2;
    v164 = v147;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_1CF9FA450;
    *(v165 + 56) = MEMORY[0x1E69E6158];
    *(v165 + 64) = sub_1CEFD51C4();
    v166 = v528;
    *(v165 + 32) = v529;
    *(v165 + 40) = v166;
    v491 = v165;
    LOBYTE(v490) = 2;
    v489 = 2;
    *&v535 = v164;
    sub_1CF9E6028();

    (*(v160 + 8))(v158, v150);
    sub_1CEFCCC44(v539, &unk_1EC4BED20, &unk_1CFA00700);
    v167 = [objc_allocWithZone(FPLoggerScope) init];
    v168 = fpfs_current_or_default_log();
    v169 = v537;
    sub_1CF9E6128();
    v109 = v549;
    v170 = v534;
    sub_1CEFD90AC(v549, v534, type metadata accessor for VFSItem);
    v171 = v167;
    v172 = sub_1CF9E6108();
    v173 = sub_1CF9E7298();

    v174 = os_log_type_enabled(v172, v173);
    v536 = v171;
    if (v174)
    {
      v175 = v170;
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&v563[0] = v178;
      *v176 = 138412546;
      v179 = [v171 enter];
      *(v176 + 4) = v179;
      *v177 = v179;
      *(v176 + 12) = 2082;
      v180 = sub_1CF255338();
      v182 = v181;
      sub_1CEFE5888(v175, type metadata accessor for VFSItem);
      v183 = sub_1CEFD0DF0(v180, v182, v563);
      v109 = v549;

      *(v176 + 14) = v183;
      _os_log_impl(&dword_1CEFC7000, v172, v173, "%@ Handling FSEvent for %{public}s", v176, 0x16u);
      sub_1CEFCCC44(v177, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v177, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x1D386CDC0](v178, -1, -1);
      MEMORY[0x1D386CDC0](v176, -1, -1);

      v184 = *(v551 + 8);
      v185 = v537;
    }

    else
    {

      sub_1CEFE5888(v170, type metadata accessor for VFSItem);
      v184 = *(v551 + 8);
      v185 = v169;
    }

    v186 = v546;
    v539 = v184;
    (v184)(v185, v546);
    v187 = v553;
    v188 = v550;
    v189 = v109 + *(v550 + 28);
    v190 = type metadata accessor for ItemMetadata();
    if (*(v189 + *(v190 + 28)) != 1 || *(v109 + *(v188 + 36)) == v545)
    {
      v191 = 0;
      v192 = 0;
      goto LABEL_110;
    }

    v537 = v189;
    v534 = v190;
    v202 = v187;
    v172 = 0;
    v203 = sub_1CF2A655C(v545);
    v531 = 0;
    v104 = v203 + 56;
    v243 = 1 << *(v203 + 32);
    v244 = -1;
    if (v243 < 64)
    {
      v244 = ~(-1 << v243);
    }

    v109 = v244 & *(v203 + 56);
    v245 = (v243 + 63) >> 6;
    v529 = (v551 + 8);
    *&v528 = v542 + 56;
    *&v204 = 136446466;
    v518 = v204;
    v246 = v516;
    v247 = v521;
    v532 = v203;
LABEL_55:
    if (v109)
    {
      goto LABEL_61;
    }

    v187 = v553;
    while (1)
    {
      v248 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

      if (v248 >= v245)
      {
        break;
      }

      v109 = *(v104 + 8 * v248);
      ++v172;
      if (v109)
      {
        v172 = v248;
LABEL_61:
        v249 = __clz(__rbit64(v109));
        v109 &= v109 - 1;
        v250 = *(v203 + 48) + ((v172 << 10) | (16 * v249));
        v251 = *v250;
        v252 = *(v250 + 8);
        v253 = *v549;
        v254 = *(v549 + 8);
        if (!v252)
        {
          if (!*(v549 + 8) && v251 == v253)
          {
            goto LABEL_55;
          }

LABEL_75:
          v533 = v251;
          v255 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CEFD90AC(v549, v247, type metadata accessor for VFSItem);
          v256 = sub_1CF9E6108();
          v257 = sub_1CF9E7288();
          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v560[0] = v259;
            *v258 = v518;
            LODWORD(v525) = v257;
            v520 = v259;
            if (v252)
            {
              if (v252 == 1)
              {
                strcpy(v563, "fileID(");
                *(&v563[0] + 1) = 0xE700000000000000;
                v556 = v533;
                goto LABEL_81;
              }

              if (v533)
              {
                v261 = 0x6873617274;
              }

              else
              {
                v261 = 1953460082;
              }

              if (v533)
              {
                v262 = 0xE500000000000000;
              }

              else
              {
                v262 = 0xE400000000000000;
              }
            }

            else
            {
              *&v563[0] = 0x284449636F64;
              *(&v563[0] + 1) = 0xE600000000000000;
              LODWORD(v556) = v533;
LABEL_81:
              v260 = sub_1CF9E7F98();
              MEMORY[0x1D3868CC0](v260);

              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
              v262 = *(&v563[0] + 1);
              v261 = *&v563[0];
            }

            v263 = sub_1CEFD0DF0(v261, v262, v560);

            *(v258 + 4) = v263;
            *(v258 + 12) = 2082;
            v264 = *v521;
            if (*(v521 + 8))
            {
              if (*(v521 + 8) == 1)
              {
                strcpy(v563, "fileID(");
                *(&v563[0] + 1) = 0xE700000000000000;
                v556 = v264;
                goto LABEL_92;
              }

              if (v264)
              {
                v266 = 0x6873617274;
              }

              else
              {
                v266 = 1953460082;
              }

              if (v264)
              {
                v267 = 0xE500000000000000;
              }

              else
              {
                v267 = 0xE400000000000000;
              }
            }

            else
            {
              *&v563[0] = 0x284449636F64;
              *(&v563[0] + 1) = 0xE600000000000000;
              LODWORD(v556) = v264;
LABEL_92:
              v265 = sub_1CF9E7F98();
              MEMORY[0x1D3868CC0](v265);

              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
              v267 = *(&v563[0] + 1);
              v266 = *&v563[0];
            }

            sub_1CEFE5888(v521, type metadata accessor for VFSItem);
            v268 = sub_1CEFD0DF0(v266, v267, v560);

            *(v258 + 14) = v268;
            _os_log_impl(&dword_1CEFC7000, v256, v525, "%{public}s was moved inside package %{public}s", v258, 0x16u);
            v269 = v520;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v269, -1, -1);
            MEMORY[0x1D386CDC0](v258, -1, -1);

            v246 = v516;
          }

          else
          {

            sub_1CEFE5888(v247, type metadata accessor for VFSItem);
          }

          (v539)(v246, v546);
          v202 = sub_1CF25D188();
          if (*(v270 + 8))
          {
            v271 = v270;
            v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
            v273 = *(v272 + 48);
            v274 = *(v272 + 64);
            v275 = v509;
            *v509 = v533;
            *(v275 + 8) = v252;
            (*v528)(v275 + v273, 1, 1, v550);
            *(v275 + v274) = 0;
            swift_storeEnumTagMultiPayload();
            sub_1CEFCCBDC(v275, v510, &unk_1EC4BED40, &unk_1CFA00720);
            v276 = *(v271 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v271 + 8) = v276;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v276 = sub_1CF1F6A90(0, v276[2] + 1, 1, v276);
              *(v271 + 8) = v276;
            }

            v279 = v276[2];
            v278 = v276[3];
            if (v279 >= v278 >> 1)
            {
              v276 = sub_1CF1F6A90(v278 > 1, v279 + 1, 1, v276);
              *(v271 + 8) = v276;
            }

            v276[2] = v279 + 1;
            sub_1CEFE55D0(v510, v276 + ((*(v524 + 80) + 32) & ~*(v524 + 80)) + *(v524 + 72) * v279, &unk_1EC4BED40, &unk_1CFA00720);
            sub_1CEFCCC44(v509, &unk_1EC4BED40, &unk_1CFA00720);
            (v202)(v563, 0);
            v246 = v516;
          }

          else
          {
            (v202)(v563, 0);
          }

          v247 = v521;
          v203 = v532;
          goto LABEL_55;
        }

        if (v252 != 1)
        {
          if (v251)
          {
            if (v254 == 2 && v253 == 1)
            {
              goto LABEL_55;
            }
          }

          else if (v254 == 2 && !v253)
          {
            goto LABEL_55;
          }

          goto LABEL_75;
        }

        if (v254 != 1 || v251 != v253)
        {
          goto LABEL_75;
        }

        goto LABEL_55;
      }
    }

    v191 = 1;
    v190 = v534;
    v109 = v549;
    v186 = v546;
    v192 = v531;
    v189 = v537;
LABEL_110:
    v282 = v189 + *(v190 + 7);
    sub_1CF9E5C98();
    if ((*&v283 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v283 > -9.22337204e18)
    {
      if (v283 < 9.22337204e18)
      {
        if (fpfs_is_busy_date())
        {
          v284 = fpfs_current_or_default_log();
          v285 = v527;
          sub_1CF9E6128();
          v286 = v523;
          sub_1CEFD90AC(v109, v523, type metadata accessor for VFSItem);
          v287 = sub_1CF9E6108();
          v288 = sub_1CF9E7298();
          if (os_log_type_enabled(v287, v288))
          {
            v289 = v286;
            v290 = v186;
            v291 = swift_slowAlloc();
            v292 = swift_slowAlloc();
            *&v563[0] = v292;
            *v291 = 136446210;
            v293 = sub_1CF255338();
            v295 = v294;
            sub_1CEFE5888(v289, type metadata accessor for VFSItem);
            v296 = sub_1CEFD0DF0(v293, v295, v563);
            v109 = v549;

            *(v291 + 4) = v296;
            _os_log_impl(&dword_1CEFC7000, v287, v288, "🏗 ignoring event for busy file %{public}s", v291, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v292);
            MEMORY[0x1D386CDC0](v292, -1, -1);
            v297 = v291;
            v186 = v290;
            MEMORY[0x1D386CDC0](v297, -1, -1);

            v298 = v527;
            v299 = v290;
          }

          else
          {

            sub_1CEFE5888(v286, type metadata accessor for VFSItem);
            v298 = v285;
            v299 = v186;
          }

          (v539)(v298, v299);
          v318 = v522;
          sub_1CF2A4868(v552, v191, v548, v547, v545);
          v319 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v320 = v536;
          v321 = sub_1CF9E6108();
          v322 = sub_1CF9E7298();

          if (!os_log_type_enabled(v321, v322))
          {
            goto LABEL_127;
          }

          goto LABEL_126;
        }

        v300 = sub_1CF252CF4();
        LODWORD(v534) = v191;
        if (!(v301 >> 62))
        {
          sub_1CF07638C(v300, v301);
          v302 = fpfs_current_or_default_log();
          v303 = v513;
          sub_1CF9E6128();
          v304 = v512;
          sub_1CEFD90AC(v109, v512, type metadata accessor for VFSItem);
          v305 = sub_1CF9E6108();
          v306 = sub_1CF9E7298();
          if (os_log_type_enabled(v305, v306))
          {
            v307 = v303;
            v308 = v186;
            v309 = swift_slowAlloc();
            v310 = swift_slowAlloc();
            *&v563[0] = v310;
            *v309 = 136446210;
            v311 = sub_1CF255338();
            v313 = v312;
            sub_1CEFE5888(v304, type metadata accessor for VFSItem);
            v314 = sub_1CEFD0DF0(v311, v313, v563);
            v109 = v549;

            *(v309 + 4) = v314;
            _os_log_impl(&dword_1CEFC7000, v305, v306, "🏗 ignoring event for temporary file %{public}s", v309, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v310);
            MEMORY[0x1D386CDC0](v310, -1, -1);
            v315 = v309;
            v186 = v308;
            MEMORY[0x1D386CDC0](v315, -1, -1);

            v316 = v307;
            v317 = v308;
          }

          else
          {

            sub_1CEFE5888(v304, type metadata accessor for VFSItem);
            v316 = v303;
            v317 = v186;
          }

          (v539)(v316, v317);
          v318 = v514;
          sub_1CF2A4868(v552, v534, v548, v547, v545);
          v328 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v320 = v536;
          v321 = sub_1CF9E6108();
          v322 = sub_1CF9E7298();

          if (!os_log_type_enabled(v321, v322))
          {
            goto LABEL_127;
          }

LABEL_126:
          v329 = v186;
          v330 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          *v330 = 138412290;
          v332 = [v320 leave];
          *(v330 + 4) = v332;
          *v331 = v332;
          _os_log_impl(&dword_1CEFC7000, v321, v322, "%@", v330, 0xCu);
          sub_1CEFCCC44(v331, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v331, -1, -1);
          v333 = v330;
          v186 = v329;
          MEMORY[0x1D386CDC0](v333, -1, -1);
LABEL_127:

          v334 = v318;
          goto LABEL_226;
        }

        sub_1CF07638C(v300, v301);
        v323 = (v187 + qword_1EDEAFB30);
        swift_beginAccess();
        v324 = v323[1];
        v563[0] = *v323;
        v563[1] = v324;
        v564[0] = v323[2];
        *(v564 + 9) = *(v323 + 41);
        v326 = *(&v563[0] + 1);
        v325 = *&v563[0];
        v537 = v189;
        if (*(&v563[0] + 1))
        {

          v327 = v325;
        }

        else
        {
          v327 = 0;
        }

        v560[0] = v325;
        v560[1] = v326;
        v335 = v323[2];
        v561 = v323[1];
        v562[0] = v335;
        *(v562 + 9) = *(v323 + 41);
        sub_1CEFCCBDC(v563, &v556, &unk_1EC4BEDF0, &qword_1CFA00818);
        sub_1CEFCCC44(v560, &unk_1EC4BEDF0, &qword_1CFA00818);
        v336 = sub_1CF25D188();
        if (*(v337 + 8))
        {
          v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
          v339 = *(v338 + 48);
          v340 = *(v338 + 64);
          v341 = *(v109 + 8);
          v342 = v192;
          v343 = v507;
          *v507 = *v109;
          *(v343 + 8) = v341;
          sub_1CEFD90AC(v109, v343 + v339, type metadata accessor for VFSItem);
          v344 = v343 + v339;
          v345 = v550;
          (*(v542 + 7))(v344, 0, 1, v550);
          *(v343 + v340) = v327;
          v187 = v553;
          swift_storeEnumTagMultiPayload();

          sub_1CF25C780(v343, 0, 0);
          v346 = v343;
          v192 = v342;
          sub_1CEFCCC44(v346, &unk_1EC4BED40, &unk_1CFA00720);
          (v336)(&v556, 0);
        }

        else
        {
          (v336)(&v556, 0);
          v345 = v550;
        }

        v347 = v552;
        v533 = v552;
        if ((v552 & 0x4100) == 0x4000)
        {
          v348 = sub_1CF25D188();
          if (*(v349 + 8))
          {
            v350 = *(v109 + 8);
            v351 = *v537;
            v352 = v192;
            v353 = v507;
            *v507 = *v109;
            *(v353 + 8) = v350;
            *(v353 + 9) = v351;
            swift_storeEnumTagMultiPayload();
            sub_1CF25C780(v353, 0, 0);
            v354 = v353;
            v192 = v352;
            sub_1CEFCCC44(v354, &unk_1EC4BED40, &unk_1CFA00720);
          }

          (v348)(&v556, 0);
          v347 = v552;
        }

        sub_1CF2A4868(v347, v534, v548, v547, v545);
        if (*(v109 + 8) >= 2u && *v109)
        {
          v532 = v327;
          v355 = sub_1CF25D188();
          if (*(v356 + 8))
          {
            v357 = *(v109 + *(v345 + 36));
            v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
            v359 = *(v358 + 48);
            v360 = *(v358 + 64);
            swift_bridgeObjectRelease_n();
            v361 = v192;
            v362 = v499;
            *v499 = v357;
            v345 = v550;
            *(v362 + 8) = 1;
            (*(v542 + 7))(v362 + v359, 1, 1, v345);
            *(v362 + v360) = 0;
            v187 = v553;
            swift_storeEnumTagMultiPayload();
            sub_1CF25C780(v362, 0, 0);
            v363 = v362;
            v192 = v361;
            sub_1CEFCCC44(v363, &unk_1EC4BED40, &unk_1CFA00720);
          }

          (v355)(&v556, 0);
          v327 = v532;
          v364 = v537;
        }

        else
        {
          v365 = *(v109 + *(v345 + 36));
          swift_bridgeObjectRelease_n();
          if (v504)
          {
            v364 = v537;
          }

          else
          {
            v364 = v537;
            if ((v533 & 0x80000) == 0 && v365 == v500)
            {
              sub_1CF262924(1);
              if (v192)
              {

                v192 = 0;
              }
            }
          }
        }

        if (*v364 == 1)
        {
          v366 = v109 + *(v345 + 56);
          if ((*(v366 + 4) & 1) == 0)
          {
            v367 = *v366;
            v368 = v109 + *(v345 + 36);
            v369 = *v368;
            v370 = *(v368 + 8);

            v556 = v369;
            *&v557 = 0;
            *(&v557 + 1) = __PAIR64__(v370, v367);
            v558 = 0uLL;
            v371 = objc_sync_enter(v187);
            if (v371)
            {
              MEMORY[0x1EEE9AC00](v371);
              v491 = v187;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v489, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v372 = v327;
            v373 = v187[20];

            v374 = objc_sync_exit(v187);
            if (v374)
            {
              MEMORY[0x1EEE9AC00](v374);
              v491 = v187;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v489, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            v375 = *(v373 + 16);

            v376 = sub_1CEFDADE0(&v556, v375, 0x100000);
            v345 = v550;
            if (v192)
            {

              v192 = 0;
              v327 = v372;
            }

            else
            {
              v384 = v376;

              v327 = v372;
              if ((fpfs_untrack_document() & 0x80000000) != 0)
              {
                v385 = MEMORY[0x1D38683F0]();
                v556 = 14;
                v557 = 0u;
                v558 = 0u;
                v559 = 19;
                v386 = sub_1CF19BBE4(v385, &v556);
                sub_1CF1969CC(&v556);
                swift_willThrow();
                v387 = v386;
                v327 = v372;

                v192 = 0;
              }

              if ((fpfs_make_fsevent() & 0x80000000) != 0)
              {
                v388 = MEMORY[0x1D38683F0]();
                v556 = 16;
                v557 = 0u;
                v558 = 0u;
                v559 = 19;
                v389 = sub_1CF19BBE4(v388, &v556);
                sub_1CF1969CC(&v556);
                swift_willThrow();
                v390 = v389;
                v327 = v372;

                v192 = 0;
              }

              if ((v384 & 0x80000000) == 0)
              {
                close(v384);
              }
            }
          }
        }

        v391 = v109 + *(v345 + 56);
        if ((*(v391 + 4) & 1) == 0 && *v391 == v502)
        {
          v392 = v519;
          v393 = v517;
          if ((v533 & 0x800) == 0)
          {
            goto LABEL_221;
          }

          goto LABEL_219;
        }

        v392 = v519;
        v393 = v517;
        if (*(v109 + 8))
        {
          if ((v533 & 0x800) == 0)
          {
            goto LABEL_221;
          }

LABEL_219:
          sub_1CEFD90AC(v109, v392, type metadata accessor for VFSItem);
          sub_1CF25116C(v393);
          v429 = v544;
          if ((*(v543 + 48))(v393, 1, v544) != 1)
          {
            v532 = v327;
            v440 = sub_1CF9E5928();
            v441 = *(v543 + 8);
            v441(v393, v429);
            v442 = v540;
            v443 = sub_1CF9E5928();
            v444 = [v440 fp:v443 relationshipToItemAtURL:?];

            if (v444 == 2)
            {
              MEMORY[0x1EEE9AC00](v445);
              v489 = v187;
              v490 = sub_1CF2B9F34;
              v491 = v187;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE10, &qword_1CFA00828);
              v446 = v192;
              sub_1CF9E59B8();
              if (v192)
              {
                v447 = fpfs_current_or_default_log();
                v448 = v498;
                sub_1CF9E6128();
                v449 = v544;
                v450 = v497;
                (*(v543 + 16))(v497, v442, v544);
                v451 = v446;
                v452 = sub_1CF9E6108();
                v453 = sub_1CF9E72A8();

                if (os_log_type_enabled(v452, v453))
                {
                  v454 = swift_slowAlloc();
                  LODWORD(v552) = v453;
                  v455 = v454;
                  v550 = swift_slowAlloc();
                  v553 = swift_slowAlloc();
                  v556 = v553;
                  *v455 = 134218498;
                  *(v455 + 4) = v541;
                  *(v455 + 12) = 2080;
                  v548 = v452;
                  v456 = sub_1CF9E5928();
                  v457 = v449;
                  v458 = [v456 fp_shortDescription];

                  v459 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v461 = v460;

                  v441(v450, v457);
                  v462 = sub_1CEFD0DF0(v459, v461, &v556);
                  v109 = v549;

                  *(v455 + 14) = v462;
                  *(v455 + 22) = 2112;
                  swift_getErrorValue();
                  v463 = Error.prettyDescription.getter(v555[2]);
                  *(v455 + 24) = v463;
                  v464 = v550;
                  *v550 = v463;
                  v465 = v548;
                  _os_log_impl(&dword_1CEFC7000, v548, v552, "Failed to identify root of rename event #%llu against package at %s: %@", v455, 0x20u);
                  sub_1CEFCCC44(v464, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v464, -1, -1);
                  v466 = v553;
                  __swift_destroy_boxed_opaque_existential_1(v553);
                  MEMORY[0x1D386CDC0](v466, -1, -1);
                  MEMORY[0x1D386CDC0](v455, -1, -1);

                  v467 = v498;
                }

                else
                {

                  v441(v450, v449);
                  v467 = v448;
                }

                v186 = v546;
                (v539)(v467, v546);
                sub_1CEFE5888(v519, type metadata accessor for VFSItem);
                v430 = v511;
              }

              else
              {
                v186 = v546;
                if ((BYTE1(v557) & 1) == 0 && (v557 & 1) == 0)
                {
                  v104 = v496;
                  sub_1CF263ADC(v556, 0, 0, v496);
                  v202 = v519;
                  goto LABEL_244;
                }

                sub_1CEFE5888(v519, type metadata accessor for VFSItem);

                v430 = v511;
              }
            }

            else
            {
              sub_1CEFE5888(v519, type metadata accessor for VFSItem);

              v186 = v546;
              v430 = v511;
            }

            goto LABEL_223;
          }

          sub_1CEFE5888(v392, type metadata accessor for VFSItem);
LABEL_221:

          goto LABEL_222;
        }

        v394 = sub_1CF2A655C(v545);
        v532 = v327;
        if (v192)
        {

          v531 = 0;
          v396 = MEMORY[0x1E69E7CD0];
        }

        else
        {
          v396 = v394;
          v531 = 0;
        }

        v202 = v515;
        v397 = 0;
        v398 = v396 + 56;
        v399 = 1 << v396[32];
        v400 = -1;
        if (v399 < 64)
        {
          v400 = ~(-1 << v399);
        }

        v401 = v400 & *(v396 + 7);
        v104 = (v399 + 63) >> 6;
        v537 = (v551 + 8);
        v534 = (v542 + 56);
        *&v395 = 134349314;
        v528 = v395;
        v547 = v396;
        while (1)
        {
          while (1)
          {
            if (!v401)
            {
              while (1)
              {
                v402 = v397 + 1;
                if (__OFADD__(v397, 1))
                {
                  break;
                }

                if (v402 >= v104)
                {

                  v392 = v519;
                  v393 = v517;
                  v192 = v531;
                  v327 = v532;
                  if ((v533 & 0x800) == 0)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_219;
                }

                v401 = *&v398[8 * v402];
                ++v397;
                if (v401)
                {
                  v397 = v402;
                  goto LABEL_183;
                }
              }

LABEL_243:
              __break(1u);
LABEL_244:
              if (v526(v104, 1, v550) == 1)
              {
                sub_1CEFE5888(v202, type metadata accessor for VFSItem);

                sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
                goto LABEL_222;
              }

LABEL_247:
              v192 = v494;
              sub_1CEFE4C60(v104, v494, type metadata accessor for VFSItem);
              v472 = fpfs_current_or_default_log();
              v186 = v495;
              sub_1CF9E6128();
              v189 = v493;
              sub_1CEFD90AC(v192, v493, type metadata accessor for VFSItem);
              v172 = sub_1CF9E6108();
              v473 = sub_1CF9E7288();
              if (os_log_type_enabled(v172, v473))
              {
                v474 = swift_slowAlloc();
                v475 = swift_slowAlloc();
                v555[0] = v475;
                *v474 = 136315138;
                v476 = *(v189 + 8);
                v556 = *v189;
                LOBYTE(v557) = v476;
                v478 = VFSItemID.description.getter(v475, v477);
                v480 = v479;
                sub_1CEFE5888(v189, type metadata accessor for VFSItem);
                v481 = sub_1CEFD0DF0(v478, v480, v555);
                v109 = v549;

                *(v474 + 4) = v481;
                _os_log_impl(&dword_1CEFC7000, v172, v473, "queueing deletion for package item for %s", v474, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v475);
                MEMORY[0x1D386CDC0](v475, -1, -1);
                MEMORY[0x1D386CDC0](v474, -1, -1);

LABEL_253:
                (v539)(v186, v546);
                v482 = sub_1CF25D188();
                if (*(v483 + 8))
                {
                  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
                  v485 = *(v484 + 48);
                  v486 = *(v484 + 64);
                  v487 = v192[8];
                  v488 = v507;
                  *v507 = *v192;
                  *(v488 + 8) = v487;
                  (*(v542 + 7))(v488 + v485, 1, 1, v550);
                  *(v488 + v486) = 0;
                  swift_storeEnumTagMultiPayload();
                  sub_1CF25C780(v488, 0, 0);
                  sub_1CEFCCC44(v488, &unk_1EC4BED40, &unk_1CFA00720);
                }

                (v482)(&v556, 0);

                sub_1CEFE5888(v192, type metadata accessor for VFSItem);
                sub_1CEFE5888(v519, type metadata accessor for VFSItem);
LABEL_222:
                v430 = v511;
                v186 = v546;
LABEL_223:
                v431 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v320 = v536;
                v432 = sub_1CF9E6108();
                v433 = sub_1CF9E7298();

                if (os_log_type_enabled(v432, v433))
                {
                  v434 = v186;
                  v435 = swift_slowAlloc();
                  v436 = swift_slowAlloc();
                  *v435 = 138412290;
                  v437 = [v320 leave];
                  *(v435 + 4) = v437;
                  *v436 = v437;
                  _os_log_impl(&dword_1CEFC7000, v432, v433, "%@", v435, 0xCu);
                  sub_1CEFCCC44(v436, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v436, -1, -1);
                  v438 = v435;
                  v186 = v434;
                  MEMORY[0x1D386CDC0](v438, -1, -1);
                }

                v334 = v430;
LABEL_226:
                (v539)(v334, v186);

                sub_1CF9E7458();
                v439 = v538;
                sub_1CF9E6038();
                sub_1CEFE5888(v109, type metadata accessor for VFSItem);
                (*(v543 + 8))(v540, v544);
                return sub_1CEFE5888(v439, type metadata accessor for Signpost);
              }

LABEL_252:

              sub_1CEFE5888(v189, type metadata accessor for VFSItem);
              goto LABEL_253;
            }

LABEL_183:
            v403 = __clz(__rbit64(v401));
            v401 &= v401 - 1;
            v404 = *(v396 + 6) + ((v397 << 10) | (16 * v403));
            v405 = *v404;
            v406 = *(v404 + 8);
            v407 = *v109;
            v408 = *(v109 + 8);
            if (!v406)
            {
              break;
            }

            if (v406 == 1)
            {
              if (v408 != 1 || v405 != v407)
              {
                goto LABEL_197;
              }
            }

            else if (v405)
            {
              if (v408 != 2 || v407 != 1)
              {
                goto LABEL_197;
              }
            }

            else if (v408 != 2 || v407)
            {
              goto LABEL_197;
            }
          }

          if (*(v109 + 8) || v405 != v407)
          {
LABEL_197:
            v552 = v405;
            v409 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v410 = sub_1CF9E6108();
            LODWORD(v548) = sub_1CF9E7288();
            if (os_log_type_enabled(v410, v548))
            {
              v411 = swift_slowAlloc();
              v412 = swift_slowAlloc();
              v555[0] = v412;
              *v411 = v528;
              *(v411 + 4) = v545;
              *(v411 + 12) = 2082;
              v529 = v412;
              if (v406)
              {
                if (v406 == 1)
                {
                  v556 = 0x284449656C6966;
                  *&v557 = 0xE700000000000000;
                  v554 = v552;
                  goto LABEL_203;
                }

                if (v552)
                {
                  v414 = 0x6873617274;
                }

                else
                {
                  v414 = 1953460082;
                }

                if (v552)
                {
                  v415 = 0xE500000000000000;
                }

                else
                {
                  v415 = 0xE400000000000000;
                }
              }

              else
              {
                v556 = 0x284449636F64;
                *&v557 = 0xE600000000000000;
                LODWORD(v554) = v552;
LABEL_203:
                v413 = sub_1CF9E7F98();
                MEMORY[0x1D3868CC0](v413);

                MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                v414 = v556;
                v415 = v557;
              }

              v416 = sub_1CEFD0DF0(v414, v415, v555);

              *(v411 + 14) = v416;
              _os_log_impl(&dword_1CEFC7000, v410, v548, "queueing untrack for previous id of %{public}llu: %{public}s", v411, 0x16u);
              v417 = v529;
              __swift_destroy_boxed_opaque_existential_1(v529);
              MEMORY[0x1D386CDC0](v417, -1, -1);
              MEMORY[0x1D386CDC0](v411, -1, -1);

              (v539)(v515, v546);
              v109 = v549;
              v187 = v553;
              goto LABEL_211;
            }

            (v539)(v202, v546);
LABEL_211:
            v419 = sub_1CF25D188();
            if (*(v418 + 8))
            {
              v420 = v418;
              v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v422 = *(v421 + 48);
              v423 = *(v421 + 64);
              v424 = v505;
              *v505 = v552;
              *(v424 + 8) = v406;
              (*v534)(v424 + v422, 1, 1, v550);
              *(v424 + v423) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CEFCCBDC(v424, v506, &unk_1EC4BED40, &unk_1CFA00720);
              v425 = *(v420 + 8);
              v426 = swift_isUniquelyReferenced_nonNull_native();
              *(v420 + 8) = v425;
              if ((v426 & 1) == 0)
              {
                v425 = sub_1CF1F6A90(0, v425[2] + 1, 1, v425);
                *(v420 + 8) = v425;
              }

              v428 = v425[2];
              v427 = v425[3];
              if (v428 >= v427 >> 1)
              {
                v425 = sub_1CF1F6A90(v427 > 1, v428 + 1, 1, v425);
                *(v420 + 8) = v425;
              }

              v396 = v547;
              v425[2] = v428 + 1;
              sub_1CEFE55D0(v506, v425 + ((*(v524 + 80) + 32) & ~*(v524 + 80)) + *(v524 + 72) * v428, &unk_1EC4BED40, &unk_1CFA00720);
              sub_1CEFCCC44(v505, &unk_1EC4BED40, &unk_1CFA00720);
              (v419)(&v556, 0);
              v109 = v549;
              v187 = v553;
              v202 = v515;
            }

            else
            {
              (v419)(&v556, 0);
              v202 = v515;
              v396 = v547;
            }
          }
        }
      }

LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    __break(1u);
    goto LABEL_251;
  }

  sub_1CEFCCC44(v73, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v120 = v543;
  v121 = v553;
  v109 = v545;
  if (v545)
  {
    v104 = v113;
    v122 = sub_1CF2A655C(v545);
    v123 = v546;
    v205 = v122;
    if (*(v122 + 16))
    {
      v534 = 0;
      v206 = v526;
    }

    else
    {
      v549 = &v492;
      MEMORY[0x1EEE9AC00](v122);
      v489 = v121;
      v490 = sub_1CF2B9734;
      v491 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE10, &qword_1CFA00828);
      sub_1CF9E59B8();
      v206 = v526;
      v534 = 0;
      if (BYTE9(v563[0]) & 1) != 0 || (BYTE8(v563[0]))
      {
        sub_1CF2A4868(v552, 0, v548, v104, v109);
      }

      else
      {
        v468 = *&v563[0];

        v469 = v534;
        v470 = sub_1CF2A655C(v468);
        v534 = v469;
        if (v469)
        {
          v471 = v123;
          v280 = v544;
          v281 = v534;
          v124 = v520;
          v125 = fpfs_current_or_default_log();
          v126 = v525;
          sub_1CF9E6128();
          v127 = v540;
          (*(v120 + 16))(v124, v540, v280);
          v128 = v281;
          v129 = sub_1CF9E6108();
          v130 = v281;
          v131 = sub_1CF9E72A8();

          if (os_log_type_enabled(v129, v131))
          {
            v132 = swift_slowAlloc();
            v552 = swift_slowAlloc();
            v553 = swift_slowAlloc();
            *&v563[0] = v553;
            *v132 = 134218498;
            *(v132 + 4) = v541;
            *(v132 + 12) = 2080;
            LODWORD(v550) = v131;
            v133 = sub_1CF9E5928();
            v134 = [v133 fp_shortDescription];

            v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v136 = v120;
            v138 = v137;

            v139 = *(v136 + 8);
            v140 = v124;
            v141 = v544;
            v139(v140, v544);
            v142 = sub_1CEFD0DF0(v135, v138, v563);

            *(v132 + 14) = v142;
            *(v132 + 22) = 2112;
            swift_getErrorValue();
            v143 = Error.prettyDescription.getter(v565);
            *(v132 + 24) = v143;
            v144 = v552;
            *v552 = v143;
            _os_log_impl(&dword_1CEFC7000, v129, v550, "Unable to process fsevent#%llu for item at %s: %@", v132, 0x20u);
            sub_1CEFCCC44(v144, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v144, -1, -1);
            v145 = v553;
            __swift_destroy_boxed_opaque_existential_1(v553);
            MEMORY[0x1D386CDC0](v145, -1, -1);
            MEMORY[0x1D386CDC0](v132, -1, -1);

            (*(v551 + 8))(v525, v546);
            return (v139)(v127, v141);
          }

          else
          {

            v240 = *(v120 + 8);
            v241 = v544;
            v240(v124, v544);
            (*(v551 + 8))(v126, v471);
            return (v240)(v127, v241);
          }
        }

        v205 = v470;
      }
    }

    v202 = (v205 + 56);
    v207 = 1 << v205[32];
    v208 = -1;
    if (v207 < 64)
    {
      v208 = ~(-1 << v207);
    }

    v209 = v208 & *(v205 + 7);
    v538 = (v551 + 8);
    v539 = ((v207 + 63) >> 6);
    v536 = v542 + 56;

    v210 = 0;
    *&v211 = 134349314;
    v535 = v211;
    v542 = v205 + 56;
    v537 = v205;
    while (v209)
    {
      v212 = v123;
LABEL_40:
      v214 = *(v205 + 6) + ((v210 << 10) | (16 * __clz(__rbit64(v209))));
      v215 = *v214;
      v104 = *(v214 + 8);
      v216 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v217 = v206;
      v218 = sub_1CF9E6108();
      v219 = sub_1CF9E7288();
      v220 = os_log_type_enabled(v218, v219);
      v551 = v215;
      LODWORD(v549) = v104;
      if (v220)
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v223 = v109;
        v224 = v222;
        v560[0] = v222;
        *v221 = v535;
        *(v221 + 4) = v223;
        *(v221 + 12) = 2082;
        *&v563[0] = v215;
        BYTE8(v563[0]) = v104;
        v104 = v217;
        v226 = VFSItemID.description.getter(v222, v225);
        v228 = sub_1CEFD0DF0(v226, v227, v560);

        *(v221 + 14) = v228;
        v123 = v546;
        _os_log_impl(&dword_1CEFC7000, v218, v219, "item %{public}llu couldn't be resolved, queueing deletion for previous id %{public}s", v221, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v224);
        MEMORY[0x1D386CDC0](v224, -1, -1);
        MEMORY[0x1D386CDC0](v221, -1, -1);

        (*v538)(v217, v123);
      }

      else
      {

        v123 = v212;
        (*v538)(v217, v212);
      }

      v206 = v217;
      v230 = sub_1CF25D188();
      if (*(v229 + 8))
      {
        v231 = v229;
        v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
        v233 = *(v232 + 48);
        v234 = *(v232 + 64);
        v235 = v528;
        v236 = v550;
        *v528 = v551;
        *(v235 + 8) = v549;
        (*v536)(v235 + v233, 1, 1, v236);
        *(v235 + v234) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1CEFCCBDC(v235, v529, &unk_1EC4BED40, &unk_1CFA00720);
        v237 = *(v231 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_1CF1F6A90(0, v237[2] + 1, 1, v237);
        }

        v239 = v237[2];
        v238 = v237[3];
        if (v239 >= v238 >> 1)
        {
          v237 = sub_1CF1F6A90(v238 > 1, v239 + 1, 1, v237);
        }

        v237[2] = v239 + 1;
        v104 = &unk_1EC4BED40;
        sub_1CEFE55D0(v529, v237 + ((*(v524 + 80) + 32) & ~*(v524 + 80)) + *(v524 + 72) * v239, &unk_1EC4BED40, &unk_1CFA00720);
        *(v231 + 8) = v237;
        sub_1CEFCCC44(v528, &unk_1EC4BED40, &unk_1CFA00720);
        (v230)(v563, 0);
        v109 = v545;
        v206 = v526;
      }

      else
      {
        (v230)(v563, 0);
        v109 = v545;
      }

      v209 &= v209 - 1;
      sub_1CF2A4868(v552, 0, v548, v547, v109);
      v205 = v537;
      v202 = v542;
    }

    while (1)
    {
      v213 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
        __break(1u);
        goto LABEL_242;
      }

      if (v213 >= v539)
      {
        break;
      }

      v209 = *(v202 + v213);
      ++v210;
      if (v209)
      {
        v212 = v123;
        v210 = v213;
        goto LABEL_40;
      }
    }

    v242 = *(v205 + 2);

    if (v242)
    {
      return (*(v543 + 8))(v540, v544);
    }

    else
    {
      v377 = fpfs_current_or_default_log();
      v378 = v501;
      sub_1CF9E6128();
      v379 = sub_1CF9E6108();
      v380 = sub_1CF9E7298();
      v381 = os_log_type_enabled(v379, v380);
      v382 = v543;
      if (v381)
      {
        v383 = swift_slowAlloc();
        *v383 = 134349568;
        *(v383 + 4) = v109;
        *(v383 + 12) = 2048;
        *(v383 + 14) = v541;
        *(v383 + 22) = 1024;
        *(v383 + 24) = v552;
        _os_log_impl(&dword_1CEFC7000, v379, v380, "Dropping fsevent for %{public}llu (event#%llu, flags:%x)", v383, 0x1Cu);
        MEMORY[0x1D386CDC0](v383, -1, -1);
      }

      (*v538)(v378, v123);
      return (*(v382 + 8))(v540, v544);
    }
  }

  else
  {
    v193 = fpfs_current_or_default_log();
    v194 = v518;
    sub_1CF9E6128();
    v195 = sub_1CF9E6108();
    v196 = sub_1CF9E7298();
    v197 = os_log_type_enabled(v195, v196);
    v198 = v546;
    if (v197)
    {
      v199 = swift_slowAlloc();
      v200 = v112;
      v201 = v199;
      *v199 = 134218240;
      *(v199 + 4) = v200;
      *(v199 + 12) = 1024;
      *(v199 + 14) = v552;
      _os_log_impl(&dword_1CEFC7000, v195, v196, "dropping fsevent without file ID (event#%llu, flags:%x)", v199, 0x12u);
      MEMORY[0x1D386CDC0](v201, -1, -1);
    }

    (*(v551 + 8))(v194, v198);
    return (*(v120 + 8))(v540, v544);
  }
}