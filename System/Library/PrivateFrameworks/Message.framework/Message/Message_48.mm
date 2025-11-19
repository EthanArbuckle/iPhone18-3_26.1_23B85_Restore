void sub_1B0AB21A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v298 = a5;
  v305 = a1;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  v9 = *(*(v290 - 8) + 64);
  MEMORY[0x1EEE9AC00](v290);
  v296 = (&v258 - v10);
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v299 = &v258 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v282 = *(v283 - 8);
  v14 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v273 = &v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v284 = &v258 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v265 = &v258 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v279 = &v258 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v270 = &v258 - v24;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v25 = *(*(v267 - 8) + 64);
  MEMORY[0x1EEE9AC00](v267);
  v292 = &v258 - v26;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
  v27 = *(*(v297 - 8) + 64);
  MEMORY[0x1EEE9AC00](v297);
  v29 = (&v258 - v28);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = *(*(v293 - 8) + 64);
  MEMORY[0x1EEE9AC00](v293);
  v277 = &v258 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v278 = &v258 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v285 = &v258 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v266 = &v258 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v268 = &v258 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v291 = &v258 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v274 = &v258 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v275 = &v258 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v281 = &v258 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v294 = &v258 - v49;
  v304 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v50 = *(*(v304 - 8) + 64);
  MEMORY[0x1EEE9AC00](v304);
  v276 = (&v258 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v300 = &v258 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v269 = &v258 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v280 = (&v258 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = (&v258 - v59);
  v295 = type metadata accessor for MailboxTaskLogger(0);
  v61 = *(v295[-1].isa + 8);
  MEMORY[0x1EEE9AC00](v295);
  v286 = &v258 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v287 = &v258 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v271 = &v258 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v272 = &v258 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v288 = &v258 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v289 = &v258 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v258 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v258 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v258 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v258 - v83;
  v301 = a2;
  v302 = a4;
  v303 = a3;
  if ((sub_1B0AEB57C(0, a2, a3, a4) & 1) != 0 && ((v305 >> 59) & 0x1E | (v305 >> 2) & 1) == 8 && *(v5 + 104) == *((v305 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
  {
    v85 = *((v305 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v86 = *((v305 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
    if (sub_1B04520BC(*(v5 + 96), *((v305 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      v263 = v85;
      v264 = v5;
      v87 = v298;
      sub_1B0AB06A4(v298, v84, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v87, v81, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v88 = sub_1B0E43988();
      v89 = sub_1B0E45908();
      v262 = v88;
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v309 = v261;
        *v90 = 68159491;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v91 = v295;
        v92 = v86;
        v93 = &v81[SHIDWORD(v295[2].isa)];
        *(v90 + 10) = *v93;
        *(v90 + 11) = 2082;
        isa_high = SHIDWORD(v91[2].isa);
        v260 = v89;
        v95 = &v84[isa_high];
        *(v90 + 13) = sub_1B0399D64(*&v84[isa_high + 8], *&v84[isa_high + 16], &v309);
        *(v90 + 21) = 1040;
        *(v90 + 23) = 2;
        *(v90 + 27) = 512;
        v259 = *(v93 + 12);
        v86 = v92;
        sub_1B0AB070C(v81, type metadata accessor for MailboxTaskLogger);
        *(v90 + 29) = v259;
        *(v90 + 31) = 2160;
        *(v90 + 33) = 0x786F626C69616DLL;
        *(v90 + 41) = 2085;
        v96 = *(v95 + 4);
        LODWORD(v95) = *(v95 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v84, type metadata accessor for MailboxTaskLogger);
        v306 = v96;
        v307 = v95;
        v97 = sub_1B0E44BA8();
        v99 = sub_1B0399D64(v97, v98, &v309);

        *(v90 + 43) = v99;
        *(v90 + 51) = 2082;
        v100 = v262;
        v101 = v263;
        v306 = __PAIR64__(v86, v263);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v103 = MessageIdentifierRange.debugDescription.getter(v102);
        v105 = sub_1B0399D64(v103, v104, &v309);

        *(v90 + 53) = v105;
        _os_log_impl(&dword_1B0389000, v100, v260, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found window of interest: %{public}s", v90, 0x3Du);
        v106 = v261;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v106, -1, -1);
        MEMORY[0x1B272C230](v90, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v81, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v84, type metadata accessor for MailboxTaskLogger);
        v101 = v263;
      }

      v5 = v264;
      *(v264 + 76) = v101 | (v86 << 32);
      *(v5 + 84) = 0;
      if ((*(v5 + 136) & 1) == 0)
      {
        v107 = *(v5 + 132) - v86;
        if (v107 > *(v5 + 144) / 2)
        {
          v108 = v298;
          sub_1B0AB06A4(v298, v78, type metadata accessor for MailboxTaskLogger);
          sub_1B0AB06A4(v108, v75, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v109 = sub_1B0E43988();
          v110 = sub_1B0E45908();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v263 = swift_slowAlloc();
            v309 = v263;
            *v111 = 68159491;
            *(v111 + 4) = 2;
            *(v111 + 8) = 256;
            v112 = v295;
            v113 = &v75[SHIDWORD(v295[2].isa)];
            *(v111 + 10) = *v113;
            *(v111 + 11) = 2082;
            v114 = SHIDWORD(v112[2].isa);
            LODWORD(v262) = v110;
            v115 = &v78[v114];
            *(v111 + 13) = sub_1B0399D64(*&v78[v114 + 8], *&v78[v114 + 16], &v309);
            *(v111 + 21) = 1040;
            *(v111 + 23) = 2;
            *(v111 + 27) = 512;
            v116 = *(v113 + 12);
            sub_1B0AB070C(v75, type metadata accessor for MailboxTaskLogger);
            *(v111 + 29) = v116;
            *(v111 + 31) = 2160;
            *(v111 + 33) = 0x786F626C69616DLL;
            *(v111 + 41) = 2085;
            v117 = *(v115 + 4);
            LODWORD(v115) = *(v115 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v78, type metadata accessor for MailboxTaskLogger);
            v306 = v117;
            v307 = v115;
            v118 = sub_1B0E44BA8();
            v120 = sub_1B0399D64(v118, v119, &v309);

            *(v111 + 43) = v120;
            *(v111 + 51) = 2048;
            *(v111 + 53) = v107;
            _os_log_impl(&dword_1B0389000, v109, v262, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs on server. Querying server..", v111, 0x3Du);
            v121 = v263;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v121, -1, -1);
            MEMORY[0x1B272C230](v111, -1, -1);
          }

          else
          {
            sub_1B0AB070C(v75, type metadata accessor for MailboxTaskLogger);

            sub_1B0AB070C(v78, type metadata accessor for MailboxTaskLogger);
          }

          v5 = v264;
          v122 = type metadata accessor for DetermineMessageBatches(0);
          sub_1B0AB070C(v5 + *(v122 + 56), type metadata accessor for DetermineMessageBatches.TaskState);
          swift_storeEnumTagMultiPayload();
        }
      }
    }
  }

  v123 = v301;
  v124 = v302;
  v125 = v303;
  if (sub_1B0AEB57C(2, v301, v303, v302))
  {
    v126 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_1B0AB06A4(v5 + v126, v60, type metadata accessor for DetermineMessageBatches.TaskState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0AB070C(v60, type metadata accessor for DetermineMessageBatches.TaskState);
      goto LABEL_29;
    }

    if (((v305 >> 59) & 0x1E | (v305 >> 2) & 1) == 9)
    {
      v127 = *v60;
      v128 = swift_projectBox();
      sub_1B03B5C80(v128, v29, &qword_1EB6E3630, &unk_1B0EC2AE0);
      v129 = *v29;
      v130 = *(v297 + 48);
      if (*(v5 + 104) == v29[1])
      {
        v297 = *(v29 + *(v297 + 64));
        v131 = sub_1B04520BC(*(v5 + 96), v129);

        if (v131)
        {
          v263 = v127;
          sub_1B03C60A4(v29 + v130, v294, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v132 = *(v5 + 64);
          v133 = *(v5 + 72);
          v134 = v289;
          v135 = v288;
          v264 = v5;
          if (v133 == 1)
          {
            v136 = v297 - v263;
            if (__OFSUB__(v297, v263))
            {
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v136 < 0)
            {
              v137 = __OFSUB__(0, v136);
              v136 = v263 - v297;
              if (v137)
              {
                goto LABEL_92;
              }
            }

            if (v136 < *(v5 + 144) / 2)
            {
              v292 = *(v5 + 144);
              v138 = v298;
              sub_1B0AB06A4(v298, v289, type metadata accessor for MailboxTaskLogger);
              sub_1B0AB06A4(v138, v135, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v139 = sub_1B0E43988();
              v140 = sub_1B0E45908();
              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                LODWORD(v291) = v140;
                v142 = v141;
                v298 = swift_slowAlloc();
                v309 = v298;
                *v142 = 68159747;
                *(v142 + 4) = 2;
                *(v142 + 8) = 256;
                v143 = v295;
                v144 = v135 + SHIDWORD(v295[2].isa);
                *(v142 + 10) = *v144;
                *(v142 + 11) = 2082;
                v145 = v134 + SHIDWORD(v143[2].isa);
                *(v142 + 13) = sub_1B0399D64(*(v145 + 8), *(v145 + 16), &v309);
                *(v142 + 21) = 1040;
                *(v142 + 23) = 2;
                *(v142 + 27) = 512;
                LOWORD(v144) = *(v144 + 24);
                sub_1B0AB070C(v135, type metadata accessor for MailboxTaskLogger);
                *(v142 + 29) = v144;
                *(v142 + 31) = 2160;
                *(v142 + 33) = 0x786F626C69616DLL;
                *(v142 + 41) = 2085;
                v146 = *(v145 + 32);
                LODWORD(v145) = *(v145 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0AB070C(v134, type metadata accessor for MailboxTaskLogger);
                v306 = v146;
                v307 = v145;
                v147 = sub_1B0E44BA8();
                v149 = sub_1B0399D64(v147, v148, &v309);
                v123 = v301;

                *(v142 + 43) = v149;
                v124 = v302;
                v125 = v303;
                *(v142 + 51) = 2048;
                *(v142 + 53) = v297;
                *(v142 + 61) = 2048;
                *(v142 + 63) = v263;
                _os_log_impl(&dword_1B0389000, v139, v291, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally, %ld on server.", v142, 0x47u);
                v150 = v298;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v150, -1, -1);
                MEMORY[0x1B272C230](v142, -1, -1);
              }

              else
              {
                sub_1B0AB070C(v135, type metadata accessor for MailboxTaskLogger);

                sub_1B0AB070C(v134, type metadata accessor for MailboxTaskLogger);
              }

              v5 = v264;
              v222 = v294;
              v223 = v281;
              sub_1B03B5C80(v294, v281, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v224 = v280;
              sub_1B0B3EA18(v292, v223, 1, v280);
              sub_1B0398EFC(v222, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              swift_storeEnumTagMultiPayload();
              sub_1B0AB41D8(v224, v5 + v126);
              goto LABEL_29;
            }
          }

          if (*(v5 + 84) & 1) != 0 || ((v133 | *(v5 + 136)))
          {
LABEL_52:
            v208 = v298;
            v209 = v287;
            sub_1B0AB06A4(v298, v287, type metadata accessor for MailboxTaskLogger);
            v210 = v286;
            sub_1B0AB06A4(v208, v286, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v211 = sub_1B0E43988();
            v212 = sub_1B0E45908();
            if (os_log_type_enabled(v211, v212))
            {
              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              v309 = v214;
              *v213 = 68159747;
              *(v213 + 4) = 2;
              *(v213 + 8) = 256;
              v215 = v295;
              v216 = v210 + SHIDWORD(v295[2].isa);
              *(v213 + 10) = *v216;
              *(v213 + 11) = 2082;
              v217 = v209 + SHIDWORD(v215[2].isa);
              *(v213 + 13) = sub_1B0399D64(*(v217 + 8), *(v217 + 16), &v309);
              *(v213 + 21) = 1040;
              *(v213 + 23) = 2;
              *(v213 + 27) = 512;
              LOWORD(v216) = *(v216 + 24);
              sub_1B0AB070C(v210, type metadata accessor for MailboxTaskLogger);
              *(v213 + 29) = v216;
              *(v213 + 31) = 2160;
              *(v213 + 33) = 0x786F626C69616DLL;
              *(v213 + 41) = 2085;
              v218 = *(v217 + 32);
              LODWORD(v217) = *(v217 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AB070C(v209, type metadata accessor for MailboxTaskLogger);
              v306 = v218;
              v307 = v217;
              v124 = v302;
              v219 = sub_1B0E44BA8();
              v221 = sub_1B0399D64(v219, v220, &v309);
              v123 = v301;

              *(v213 + 43) = v221;
              *(v213 + 51) = 2048;
              *(v213 + 53) = v297;
              *(v213 + 61) = 2048;
              *(v213 + 63) = v263;
              _os_log_impl(&dword_1B0389000, v211, v212, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Only found %ld UIDs locally but %ld on server. Querying server for message batches.", v213, 0x47u);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v214, -1, -1);
              MEMORY[0x1B272C230](v213, -1, -1);
            }

            else
            {
              sub_1B0AB070C(v210, type metadata accessor for MailboxTaskLogger);

              sub_1B0AB070C(v209, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B0398EFC(v294, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v5 = v264;
            sub_1B0AB070C(v264 + v126, type metadata accessor for DetermineMessageBatches.TaskState);
            swift_storeEnumTagMultiPayload();
            v125 = v303;
            goto LABEL_29;
          }

          v181 = *(v5 + 76);
          v182 = HIDWORD(v181);
          v183 = *(v5 + 132);
          v184 = v183 + ~HIDWORD(v181);
          v185 = v132 - v184;
          if (!__OFSUB__(v132, v184))
          {
            if (!__OFSUB__(v185, 500))
            {
              if (v185 - 500 < v297)
              {
                v186 = v298;
                v187 = v272;
                sub_1B0AB06A4(v298, v272, type metadata accessor for MailboxTaskLogger);
                v188 = v271;
                sub_1B0AB06A4(v186, v271, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v189 = sub_1B0E43988();
                v190 = sub_1B0E45908();
                if (os_log_type_enabled(v189, v190))
                {
                  v191 = swift_slowAlloc();
                  v289 = swift_slowAlloc();
                  v309 = v289;
                  *v191 = 68160003;
                  LODWORD(v288) = v190;
                  *(v191 + 4) = 2;
                  *(v191 + 8) = 256;
                  v192 = v295;
                  v193 = SHIDWORD(v295[2].isa);
                  v298 = v183;
                  v194 = v188 + v193;
                  *(v191 + 10) = *(v188 + v193);
                  *(v191 + 11) = 2082;
                  v195 = SHIDWORD(v192[2].isa);
                  v295 = v189;
                  v196 = v181;
                  v181 = v188;
                  v197 = v187 + v195;
                  *(v191 + 13) = sub_1B0399D64(*(v187 + v195 + 8), *(v187 + v195 + 16), &v309);
                  *(v191 + 21) = 1040;
                  *(v191 + 23) = 2;
                  *(v191 + 27) = 512;
                  LOWORD(v194) = *(v194 + 24);
                  v198 = v181;
                  LODWORD(v181) = v196;
                  sub_1B0AB070C(v198, type metadata accessor for MailboxTaskLogger);
                  *(v191 + 29) = v194;
                  *(v191 + 31) = 2160;
                  *(v191 + 33) = 0x786F626C69616DLL;
                  *(v191 + 41) = 2085;
                  v199 = *(v197 + 32);
                  LODWORD(v197) = *(v197 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0AB070C(v187, type metadata accessor for MailboxTaskLogger);
                  v306 = v199;
                  v307 = v197;
                  v200 = sub_1B0E44BA8();
                  v202 = sub_1B0399D64(v200, v201, &v309);

                  *(v191 + 43) = v202;
                  *(v191 + 51) = 2048;
                  *(v191 + 53) = v297;
                  *(v191 + 61) = 2082;
                  v306 = __PAIR64__(v182, v196);
                  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                  v204 = MessageIdentifierRange.debugDescription.getter(v203);
                  v183 = sub_1B0399D64(v204, v205, &v309);

                  *(v191 + 63) = v183;
                  LODWORD(v183) = v298;
                  *(v191 + 71) = 2048;
                  *(v191 + 73) = v263;
                  v206 = v295;
                  _os_log_impl(&dword_1B0389000, v295, v288, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally in window %{public}s, %ld on server.", v191, 0x51u);
                  v207 = v289;
                  swift_arrayDestroy();
                  MEMORY[0x1B272C230](v207, -1, -1);
                  MEMORY[0x1B272C230](v191, -1, -1);
                }

                else
                {
                  sub_1B0AB070C(v188, type metadata accessor for MailboxTaskLogger);

                  sub_1B0AB070C(v187, type metadata accessor for MailboxTaskLogger);
                }

                v226 = v275;
                v227 = *(v264 + 144);
                v125 = v303;
                if (v227 >= 1)
                {
                  if (v297 >= 1)
                  {
                    if (__OFADD__(v185, v227 >> 1))
                    {
LABEL_96:
                      __break(1u);
                      goto LABEL_97;
                    }

                    v228 = (v185 + (v227 >> 1)) / v227;
                    v229 = v228 * v227;
                    if ((v228 * v227) >> 64 != (v228 * v227) >> 63)
                    {
LABEL_97:
                      __break(1u);
                      goto LABEL_98;
                    }

                    v137 = __OFSUB__(v229, v297);
                    v230 = v229 - v297;
                    if (v137)
                    {
LABEL_98:
                      __break(1u);
LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
                      return;
                    }

                    if (v230 < 0)
                    {
                      v137 = __OFSUB__(0, v230);
                      v230 = -v230;
                      if (v137)
                      {
                        goto LABEL_100;
                      }
                    }

                    if (v230 >= v227)
                    {
                      goto LABEL_74;
                    }

                    v137 = __OFADD__(v228++, 1);
                    if (!v137)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  v228 = 0;
LABEL_74:
                  if (!__OFADD__(v228, 1))
                  {
                    v231 = v293;
                    MessageIdentifierSet.suffix(_:)(v228 + 1, v293, v226);
                    v232 = MessageIdentifierSet.startIndex.getter(v231);
                    v234 = v233;
                    if (v232 != MessageIdentifierSet.endIndex.getter(v231) || v234 != v235)
                    {
                      MessageIdentifierSet.subscript.getter(v234, v293, &v306);
                      LODWORD(v181) = v306;
                    }

                    if (v183 == 1)
                    {
                      v236 = 1;
                      goto LABEL_82;
                    }

                    if (v183)
                    {
                      v236 = v183 - 1;
LABEL_82:
                      LODWORD(v309) = v181;
                      LODWORD(v308) = v236;
                      v237 = sub_1B041C1E8();
                      static MessageIdentifier.... infix(_:_:)(&v309, &v308, &type metadata for UID, v237, &v306);
                      v238 = v264;
                      *(v264 + 76) = v306;
                      *(v238 + 84) = 0;
                      sub_1B03D06F8();
                      sub_1B0E46EE8();
                      sub_1B03B5C80(v226, v292, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v239 = v293;
                      v240 = MessageIdentifierSet.startIndex.getter(v293);
                      v242 = v241;
                      for (i = v239; v240 != MessageIdentifierSet.endIndex.getter(i) || v242 != v247; i = v244)
                      {
                        v244 = v293;
                        MessageIdentifierSet.subscript.getter(v242, v293, &v306);
                        v245 = v306;
                        v240 = MessageIdentifierSet.index(_:offsetBy:)(v240, v242, 1);
                        v242 = v246;
                        LODWORD(v309) = v245;
                        MessageIdentifierSet.insert(_:)(&v306, &v309, v244);
                      }

                      v248 = v292;
                      v249 = (v292 + *(v267 + 36));
                      *v249 = v240;
                      v249[1] = v242;
                      sub_1B0398EFC(v248, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
                      v250 = v274;
                      sub_1B03C60A4(v291, v274, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v251 = sub_1B0B417E8(v250);
                      v252 = v268;
                      sub_1B0E46EE8();
                      v253 = v266;
                      sub_1B03B5C80(v252, v266, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      if (MessageIdentifierSet.count.getter() < 1)
                      {
                        sub_1B0398EFC(v253, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                        v256 = 1;
                        v5 = v264;
                        v123 = v301;
                        v124 = v302;
                        v255 = v270;
                      }

                      else
                      {
                        v254 = v265;
                        sub_1B03C60A4(v253, v265, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                        v255 = v270;
                        sub_1B03C60A4(v254, v270, &unk_1EB6E26C0, &unk_1B0E9DE10);
                        v256 = 0;
                        v5 = v264;
                        v123 = v301;
                        v124 = v302;
                      }

                      v257 = v269;
                      (*(v282 + 56))(v255, v256, 1, v283);
                      sub_1B0B3EF98(v227, v251, v255, v257);
                      sub_1B0398EFC(v274, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v275, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v294, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      swift_storeEnumTagMultiPayload();
                      sub_1B0AB41D8(v257, v5 + v126);
                      goto LABEL_29;
                    }

                    goto LABEL_99;
                  }

                  goto LABEL_95;
                }

LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              goto LABEL_52;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          goto LABEL_91;
        }
      }

      else
      {
        v151 = *v29;
      }

      sub_1B0398EFC(v29 + v130, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }

LABEL_29:
  if ((sub_1B0AEB57C(3, v123, v125, v124) & 1) == 0)
  {
    return;
  }

  v152 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v153 = v300;
  sub_1B0AB06A4(v5 + v152, v300, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v177 = type metadata accessor for DetermineMessageBatches.TaskState;
    v178 = v153;
LABEL_41:
    sub_1B0AB070C(v178, v177);
    return;
  }

  v154 = v299;
  sub_1B0AB424C(v153, v299, type metadata accessor for MessageBatches);
  if ((*(v5 + 84) & 1) != 0 || (v155 = *(v5 + 76), (v155 & 0xFFFFFFFE) == 0) || ((v305 >> 59) & 0x1E | (v305 >> 2) & 1) != 0xA)
  {
    v177 = type metadata accessor for MessageBatches;
    v178 = v154;
    goto LABEL_41;
  }

  v156 = swift_projectBox();
  v157 = v296;
  sub_1B03B5C80(v156, v296, &qword_1EB6E3628, &unk_1B0EA2080);
  v158 = *v157;
  v159 = *(v290 + 48);
  v160 = *(v290 + 64);
  if (*(v5 + 104) != v157[1])
  {
    v179 = *v157;

    goto LABEL_44;
  }

  v161 = sub_1B04520BC(*(v5 + 96), *v157);

  if ((v161 & 1) == 0)
  {
LABEL_44:
    sub_1B0AB070C(v154, type metadata accessor for MessageBatches);
    v180 = v296;
    sub_1B0398EFC(v296 + v160, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v180 + v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return;
  }

  v162 = v5;
  v163 = v296;
  v164 = v296 + v159;
  v165 = v285;
  sub_1B03C60A4(v164, v285, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  LODWORD(v309) = 1;
  LODWORD(v308) = v155 - 1;
  v166 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v309, &v308, &type metadata for UID, v166, &v306);
  v309 = v306;
  v308 = Range<>.init<A>(_:)(&v309, &type metadata for UID, v166);
  sub_1B03D06F8();
  v167 = v284;
  sub_1B0E46F08();
  LOBYTE(v166) = sub_1B0E46E08();
  sub_1B0398EFC(v167, &unk_1EB6E26C0, &unk_1B0E9DE10);
  if (v166)
  {
    sub_1B0398EFC(v163 + v160, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v168 = *(v5 + 144);
    v169 = *(v154 + 8);
    v170 = v278;
    sub_1B03B5C80(v165, v278, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v171 = v277;
    sub_1B03B5C80(v170, v277, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v171, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v176 = 1;
      v175 = v279;
    }

    else
    {
      v172 = v171;
      v173 = v273;
      sub_1B03C60A4(v172, v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v174 = v173;
      v175 = v279;
      sub_1B03C60A4(v174, v279, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v176 = 0;
    }

    (*(v282 + 56))(v175, v176, 1, v283);
    v225 = v276;
    sub_1B0B3EF98(v168, v169, v175, v276);
    sub_1B0398EFC(v170, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v165, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AB070C(v154, type metadata accessor for MessageBatches);
    swift_storeEnumTagMultiPayload();
    sub_1B0AB41D8(v225, v162 + v152);
  }

  else
  {
    sub_1B0398EFC(v165, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AB070C(v154, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v163 + v160, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }
}

uint64_t sub_1B0AB41D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AB424C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B0AB4370()
{
  result = qword_1EB6E4060;
  if (!qword_1EB6E4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4060);
  }

  return result;
}

void sub_1B0AB4404()
{
  sub_1B0AA95BC();
  if (v0 <= 0x3F)
  {
    sub_1B0AB44A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AB44A4()
{
  if (!qword_1EB6DE3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DE3D0);
    }
  }
}

void sub_1B0AB451C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  sub_1B0A92638(a1, v20 - v7);
  sub_1B0A92638(a1, v5);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_1B0399D64(*(v14 + 1), *(v14 + 2), &v22);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v15 = *(v13 + 12);
    sub_1B0A9269C(v5);
    *(v11 + 29) = v15;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v8);
    v20[1] = v16;
    v21 = v14;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v22);

    *(v11 + 43) = v19;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v5);

    sub_1B0A9269C(v8);
  }
}

uint64_t sub_1B0AB479C(uint64_t a1, uint64_t a2)
{
  v138 = a1;
  v139 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v126 - v4;
  v137 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v133 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v126 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v126 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v126 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v21 = *(v132 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v126 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v126 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v135 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v126 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v126 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v140 = &v126 - v44;
  v45 = type metadata accessor for DetermineNewestMessages();
  sub_1B03B5C80(v141 + *(v45 + 32), v32, &qword_1EB6E3920, &qword_1B0E9B070);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1B0398EFC(v32, &qword_1EB6E3920, &qword_1B0E9B070);
    v46 = v139;
    v47 = v134;
    sub_1B0A92638(v139, v134);
    v48 = v133;
    sub_1B0A92638(v46, v133);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v49 = sub_1B0E43988();
    v50 = sub_1B0E458E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v144[0] = v52;
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v53 = v137;
      v54 = v48 + *(v137 + 20);
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = v47 + *(v53 + 20);
      *(v51 + 13) = sub_1B0399D64(*(v55 + 8), *(v55 + 16), v144);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      v56 = *(v54 + 24);
      sub_1B0A9269C(v48);
      *(v51 + 29) = v56;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v57 = *(v55 + 32);
      v58 = *(v55 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v47);
      v142 = v57;
      v143 = v58;
      v59 = sub_1B0E44BA8();
      v61 = sub_1B0399D64(v59, v60, v144);

      *(v51 + 43) = v61;
      _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not get any UIDs", v51, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v52, -1, -1);
      MEMORY[0x1B272C230](v51, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v48);

      sub_1B0A9269C(v47);
    }

    v65 = v138;
    v66 = v140;
    sub_1B03D06F8();
    v67 = sub_1B0E46EE8();
    goto LABEL_21;
  }

  v62 = v139;
  sub_1B03C60A4(v32, v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v42, v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v134 = v33;
  v63 = v42;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v64 = 1;
  }

  else
  {
    sub_1B03C60A4(v39, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v26, v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v64 = 0;
  }

  v66 = v140;
  v68 = v62;
  v69 = v132;
  (*(v21 + 56))(v20, v64, 1, v132);
  v70 = (*(v21 + 48))(v20, 1, v69);
  v72 = v135;
  v71 = v136;
  if (v70 == 1)
  {
    sub_1B0398EFC(v20, &unk_1EB6E3670, &unk_1B0E9B260);
    v73 = v128;
    sub_1B0A92638(v68, v128);
    sub_1B0A92638(v68, v71);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v74 = sub_1B0E43988();
    v75 = sub_1B0E45908();
    v76 = os_log_type_enabled(v74, v75);
    v65 = v138;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v140 = v63;
      v144[0] = v139;
      *v77 = 68159235;
      *(v77 + 4) = 2;
      *(v77 + 8) = 256;
      v78 = v137;
      v79 = v71 + *(v137 + 20);
      *(v77 + 10) = *v79;
      *(v77 + 11) = 2082;
      v80 = v71;
      v81 = v73 + *(v78 + 20);
      *(v77 + 13) = sub_1B0399D64(*(v81 + 8), *(v81 + 16), v144);
      *(v77 + 21) = 1040;
      *(v77 + 23) = 2;
      *(v77 + 27) = 512;
      v82 = *(v79 + 24);
      sub_1B0A9269C(v80);
      *(v77 + 29) = v82;
      *(v77 + 31) = 2160;
      *(v77 + 33) = 0x786F626C69616DLL;
      *(v77 + 41) = 2085;
      v83 = *(v81 + 32);
      LODWORD(v79) = *(v81 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v73);
      v142 = v83;
      v143 = v79;
      v84 = sub_1B0E44BA8();
      v86 = sub_1B0399D64(v84, v85, v144);

      *(v77 + 43) = v86;
      _os_log_impl(&dword_1B0389000, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned empty list as newest UIDs.", v77, 0x33u);
      v87 = v139;
      swift_arrayDestroy();
      v63 = v140;
      MEMORY[0x1B272C230](v87, -1, -1);
      MEMORY[0x1B272C230](v77, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v71);

      sub_1B0A9269C(v73);
    }

    goto LABEL_20;
  }

  v88 = v20;
  v89 = v131;
  sub_1B03C60A4(v88, v131, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v90 = v129;
  sub_1B0A92638(v68, v129);
  v91 = v127;
  sub_1B0A92638(v68, v127);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v140 = v63;
  sub_1B03B5C80(v63, v72, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v92 = v130;
  sub_1B03B5C80(v89, v130, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v93 = sub_1B0E43988();
  v94 = sub_1B0E45908();
  if (!os_log_type_enabled(v93, v94))
  {
    sub_1B0398EFC(v72, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0A9269C(v91);

    sub_1B0398EFC(v92, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v90);
    v119 = v89;
    goto LABEL_19;
  }

  LODWORD(v139) = v94;
  v95 = swift_slowAlloc();
  v136 = swift_slowAlloc();
  v144[0] = v136;
  *v95 = 68159747;
  *(v95 + 4) = 2;
  *(v95 + 8) = 256;
  v96 = v137;
  v97 = v91 + *(v137 + 20);
  *(v95 + 10) = *v97;
  *(v95 + 11) = 2082;
  v98 = v72;
  v99 = v90;
  v100 = v90 + *(v96 + 20);
  *(v95 + 13) = sub_1B0399D64(*(v100 + 8), *(v100 + 16), v144);
  *(v95 + 21) = 1040;
  *(v95 + 23) = 2;
  *(v95 + 27) = 512;
  v101 = *(v97 + 24);
  sub_1B0A9269C(v91);
  *(v95 + 29) = v101;
  *(v95 + 31) = 2160;
  *(v95 + 33) = 0x786F626C69616DLL;
  *(v95 + 41) = 2085;
  v102 = *(v100 + 32);
  LODWORD(v97) = *(v100 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v99);
  v142 = v102;
  v143 = v97;
  v103 = sub_1B0E44BA8();
  v105 = sub_1B0399D64(v103, v104, v144);

  *(v95 + 43) = v105;
  *(v95 + 51) = 2048;
  v106 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v98, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *(v95 + 53) = v106;
  *(v95 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_25;
  }

  v108 = result;
  v109 = v126;
  MessageIdentifierSet.ranges.getter(v126);
  v110 = sub_1B0B4A3E8();
  v112 = v111;
  result = sub_1B0398EFC(v109, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v112)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (HIDWORD(v110) < v108)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v142 = __PAIR64__(HIDWORD(v110), v108);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v114 = MessageIdentifierRange.debugDescription.getter(v113);
  v116 = v115;
  sub_1B0398EFC(v130, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v117 = sub_1B0399D64(v114, v116, v144);

  *(v95 + 63) = v117;
  _os_log_impl(&dword_1B0389000, v93, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld UIDs in range %{public}s as newest UIDs.", v95, 0x47u);
  v118 = v136;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v118, -1, -1);
  MEMORY[0x1B272C230](v95, -1, -1);

  v119 = v131;
LABEL_19:
  sub_1B0398EFC(v119, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v65 = v138;
  v63 = v140;
LABEL_20:
  v67 = sub_1B03C60A4(v63, v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_21:
  v120 = *(v141 + 88);
  v121 = *(v141 + 96);
  MEMORY[0x1EEE9AC00](v67);
  *(&v126 - 2) = v66;
  if (*(v65 + 192) == 1)
  {
    v123 = *(v65 + 176);
    v122 = *(v65 + 184);
    v142 = *(v65 + 168);
    v124 = v142;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v142, v120, v121, 0, sub_1B0AB5914);
    sub_1B03BB638(v124, v123, v122, 1);
    v125 = v142;
    *(v65 + 176) = 0;
    *(v65 + 184) = 0;
    *(v65 + 168) = v125;
    *(v65 + 192) = 1;
  }

  return sub_1B0398EFC(v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AB5594(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MailboxSyncState() + 64);
  sub_1B0398EFC(v3, &qword_1EB6E4068, &unk_1B0EC2D20);
  sub_1B03B5C80(a2, v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = type metadata accessor for NewestMessages();
  v5 = *(v4 + 24);
  *(v3 + *(v4 + 20)) = 0;
  *(v3 + v5) = 0;
  v6 = *(*(v4 - 8) + 56);

  return v6(v3, 0, 1, v4);
}

uint64_t sub_1B0AB5654@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AB56A8()
{
  if (qword_1EB6DD760 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AB571C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E4070, &qword_1B0EC2D30);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1B0AB5794@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0A9EA6C(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 72);
    *(v7 + 16) = *(v3 + 64);
    *(v7 + 24) = v8;
    *(v7 + 32) = 521;
    v6 = v7 | 0x4000000000000006;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1B0AB5834()
{
  result = qword_1EB6DD758;
  if (!qword_1EB6DD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD758);
  }

  return result;
}

unint64_t sub_1B0AB5894(uint64_t a1)
{
  result = sub_1B0AB58BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AB58BC()
{
  result = qword_1EB6DD750;
  if (!qword_1EB6DD750)
  {
    type metadata accessor for DetermineNewestMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD750);
  }

  return result;
}

uint64_t sub_1B0AB591C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  result = sub_1B0AEB594(a2, a3, a4);
  if ((result & 1) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xB)
  {
    v19 = swift_projectBox();
    sub_1B03B5C80(v19, v12, &qword_1EB6E35F0, &unk_1B0EA2050);
    v20 = *v12;
    v21 = *(v9 + 48);
    if (*(v4 + 72) == v12[1])
    {
      v22 = *(v12 + *(v9 + 64));
      v23 = sub_1B04520BC(*(v4 + 64), *v12);

      if (v23)
      {
        sub_1B03C60A4(v12 + v21, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v22 == 521)
        {
          v24 = *(type metadata accessor for DetermineNewestMessages() + 32);
          sub_1B0398EFC(v4 + v24, &qword_1EB6E3920, &qword_1B0E9B070);
          sub_1B03C60A4(v17, v4 + v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          return (*(v14 + 56))(v4 + v24, 0, 1, v13);
        }

        v26 = v17;
        return sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }
    }

    else
    {
      v25 = *v12;
    }

    v26 = v12 + v21;
    return sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  return result;
}

uint64_t sub_1B0AB5B9C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0AB5C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  type metadata accessor for DirectedAcyclicGraph.Node();
  (*(v4 + 16))(v7, a1, v3);
  v11 = sub_1B0AB5D64(v7);
  swift_getWitnessTable();
  sub_1B0E45588();
  sub_1B0E454D8();
}

uint64_t sub_1B0AB5D64(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t sub_1B0AB5DF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11];
  v14 = *(*v13 + 96);
  swift_beginAccess();
  v15 = v6[2];
  v15(v12, a1 + v14, v5);
  v16 = *(*a2 + 96);
  swift_beginAccess();
  v15(v9, a2 + v16, v5);
  v17 = *(*(v2 + 88) + 8);
  v18 = sub_1B0E44A28();
  v19 = v6[1];
  v19(v9, v5);
  v19(v12, v5);
  return v18 & 1;
}

uint64_t sub_1B0AB5FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = *(v2 + 88);
  sub_1B0E447C8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B0AB60F0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0AB61B4()
{
  sub_1B0E46C28();
  sub_1B0AB5FAC(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB623C()
{
  sub_1B0E46C28();
  v1 = *v0;
  sub_1B0AB5FAC(v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB6288()
{
  v0 = type metadata accessor for DirectedAcyclicGraph.Node();
  v1 = sub_1B0E45258();
  if (sub_1B0E452A8())
  {
    WitnessTable = swift_getWitnessTable();
    v3 = sub_1B0AB67A0(v1, v0, WitnessTable);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  v4 = swift_getWitnessTable();
  v5 = sub_1B0E45588();
  swift_getTupleTypeMetadata2();
  v6 = sub_1B0E45258();
  sub_1B0AA0980(v6, v0, v5, v4);

  v7 = sub_1B0E45258();
  sub_1B0AA0980(v7, v0, v5, v4);

  return v3;
}

uint64_t sub_1B0AB63E4()
{
  type metadata accessor for DirectedAcyclicGraph.Node();
  swift_getWitnessTable();
  if ((sub_1B0E45478() & 1) == 0)
  {
    return 0;
  }

  sub_1B0E45588();
  swift_getWitnessTable();
  if ((sub_1B0E44758() & 1) == 0)
  {
    return 0;
  }

  return sub_1B0E44758();
}

uint64_t sub_1B0AB6514()
{
  type metadata accessor for DirectedAcyclicGraph.Node();
  swift_getWitnessTable();
  sub_1B0E45488();
  sub_1B0E45588();
  swift_getWitnessTable();
  sub_1B0E44748();

  return sub_1B0E44748();
}

uint64_t sub_1B0AB6618()
{
  sub_1B0E46C28();
  sub_1B0AB6514();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB6690(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return sub_1B0AB6618();
}

uint64_t sub_1B0AB66A4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_1B0AB6514();
}

uint64_t sub_1B0AB66B8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1B0AB6514();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB6704(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  return sub_1B0AB63E4();
}

uint64_t sub_1B0AB6728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sub_1B0AB6B5C(a1, *(a2 + 16));
  v7 = v6;
  v9 = v8;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  return result;
}

uint64_t sub_1B0AB67A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v41 - v11;
  v42 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  if (sub_1B0E452A8())
  {
    sub_1B0E46238();
    v16 = sub_1B0E46228();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1B0E452A8();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1B0E45288();
    sub_1B0E451E8();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B0E462E8();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_1B0E447B8();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1B0E44A28();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB6B5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0AB6288();
  v18 = v7;
  v19 = v8;
  v20 = v9;
  if (sub_1B0E452A8())
  {
    v16 = v5;
    for (i = 0; ; ++i)
    {
      v11 = sub_1B0E45288();
      sub_1B0E451E8();
      if (v11)
      {
        (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, a2);
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1B0E462E8();
        if (v16 != 8)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        (*(v4 + 16))(v6, &v17, a2);
        swift_unknownObjectRelease();
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v18;
        }
      }

      v13 = type metadata accessor for DirectedAcyclicGraph();
      sub_1B0AB5C30(v6, v13);
      (*(v4 + 8))(v6, a2);
      if (v12 == sub_1B0E452A8())
      {
        return v18;
      }
    }
  }

  return v7;
}

uint64_t sub_1B0AB6D94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1B0AB6DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_1B0AB8858(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    return v4 == v7 && (sub_1B04520BC(v3, v6) & 1) != 0;
  }

  return result;
}

uint64_t sub_1B0AB6E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = sub_1B0AB8858(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    return sub_1B04520BC(v3, v7) & (v5 == v9);
  }

  return result;
}

BOOL sub_1B0AB6F08(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1B0B63D20(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1B0AB6F5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  v98 = *(a5 + 16);
  if (v98)
  {
    v5 = a4;
    v7 = a2;
    v8 = 0;
    v99 = a5 + 32;
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 == 0xC000000000000000;
    }

    v10 = a2 >> 62;
    v11 = !v9;
    v97 = v11;
    v89 = HIDWORD(a1);
    v12 = __OFSUB__(HIDWORD(a1), a1);
    v93 = v12;
    v92 = HIDWORD(a1) - a1;
    __n = BYTE6(a2);
    v90 = a1;
    v87 = (a1 >> 32) - a1;
    v88 = a1 >> 32;
    while (1)
    {
      v13 = (v99 + 48 * v8);
      v15 = *v13;
      v14 = v13[1];
      v17 = v13[3];
      v16 = v13[4];
      v18 = v14 >> 62;
      if (v14 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_37;
        }

        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_166;
        }

        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v18)
      {
        LODWORD(v24) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_167;
        }

        v24 = v24;
        if (v10 <= 1)
        {
LABEL_34:
          v28 = __n;
          if (v10)
          {
            v28 = v92;
            if (v93)
            {
              goto LABEL_165;
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v24 = BYTE6(v14);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v10 != 2)
      {
        if (v24)
        {
          goto LABEL_14;
        }

LABEL_52:
        v22 = v15;
        v23 = v14;
LABEL_53:
        sub_1B03B2000(v22, v23);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_54:
        if (v16 == v5)
        {
          v36 = *(v17 + 16);
          if (v36 == *(a3 + 16))
          {
            if (v36)
            {
              v37 = v17 == a3;
            }

            else
            {
              v37 = 1;
            }

            if (!v37)
            {
              v38 = 32;
              while (v36)
              {
                if (*(v17 + v38) != *(a3 + v38))
                {
                  goto LABEL_13;
                }

                ++v38;
                if (!--v36)
                {
                  goto LABEL_161;
                }
              }

              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
            }

LABEL_161:
            sub_1B0391D50(v15, v14);

            result = 1;
            goto LABEL_162;
          }
        }

        goto LABEL_13;
      }

      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_164;
      }

LABEL_40:
      if (v24 != v28)
      {
        goto LABEL_14;
      }

      if (v24 < 1)
      {
        goto LABEL_52;
      }

      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v39 = *(v15 + 16);
          sub_1B03B2000(v15, v14);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v40 = sub_1B0E42A98();
          if (v40)
          {
            v41 = v40;
            v42 = sub_1B0E42AC8();
            if (__OFSUB__(v39, v42))
            {
              goto LABEL_169;
            }

            __s1 = (v39 - v42 + v41);
          }

          else
          {
            __s1 = 0;
          }

          v7 = a2;
          sub_1B0E42AB8();
          if (v10 == 2)
          {
            v77 = *(a1 + 24);
            v81 = *(a1 + 16);
            v51 = sub_1B0E42A98();
            if (v51)
            {
              v65 = sub_1B0E42AC8();
              v66 = v81;
              if (__OFSUB__(v81, v65))
              {
                goto LABEL_183;
              }

              v51 += v81 - v65;
            }

            else
            {
              v66 = v81;
            }

            v72 = v77 - v66;
            if (__OFSUB__(v77, v66))
            {
              goto LABEL_178;
            }

            v73 = sub_1B0E42AB8();
            if (v73 >= v72)
            {
              v54 = v72;
            }

            else
            {
              v54 = v73;
            }

            result = __s1;
            if (!__s1)
            {
              goto LABEL_194;
            }

            v5 = a4;
            if (!v51)
            {
              goto LABEL_193;
            }

LABEL_158:
            v7 = a2;
            if (result == v51)
            {
              goto LABEL_54;
            }

            goto LABEL_12;
          }

          if (v10 == 1)
          {
            if (v88 < v90)
            {
              goto LABEL_175;
            }

            v51 = sub_1B0E42A98();
            if (v51)
            {
              v52 = sub_1B0E42AC8();
              if (__OFSUB__(v90, v52))
              {
                goto LABEL_184;
              }

              v51 += v90 - v52;
            }

            v53 = sub_1B0E42AB8();
            v54 = v87;
            if (v53 < v87)
            {
              v54 = v53;
            }

            result = __s1;
            if (!__s1)
            {
              goto LABEL_192;
            }

            v5 = a4;
            if (!v51)
            {
              goto LABEL_191;
            }

LABEL_105:
            if (result == v51)
            {
              goto LABEL_54;
            }

LABEL_12:
            if (!memcmp(result, v51, v54))
            {
              goto LABEL_54;
            }

            goto LABEL_13;
          }

          v5 = a4;
          v49 = __s1;
          LODWORD(__s2[0]) = a1;
          BYTE4(__s2[0]) = v89;
          *(__s2 + 5) = *(&a1 + 5);
          HIBYTE(__s2[0]) = HIBYTE(a1);
          LODWORD(__s2[1]) = a2;
          WORD2(__s2[1]) = WORD2(a2);
          if (!__s1)
          {
            goto LABEL_190;
          }

          goto LABEL_127;
        }

        memset(__s2, 0, 14);
        if (!v10)
        {
LABEL_81:
          v100 = a1;
          v101 = v89;
          v102 = *(&a1 + 5);
          v103 = HIBYTE(a1);
          v104 = v7;
          v105 = BYTE2(v7);
          v106 = BYTE3(v7);
          v107 = BYTE4(v7);
          v108 = BYTE5(v7);
          sub_1B03B2000(v15, v14);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v49 = __s2;
          v50 = &v100;
          goto LABEL_128;
        }

        if (v10 != 2)
        {
          if (v88 < v90)
          {
            goto LABEL_171;
          }

          sub_1B03B2000(v15, v14);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v60 = sub_1B0E42A98();
          if (!v60)
          {
            sub_1B0E42AB8();
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            result = sub_1B0E42AB8();
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
            return result;
          }

          v61 = v60;
          v62 = sub_1B0E42AC8();
          if (__OFSUB__(v90, v62))
          {
            goto LABEL_177;
          }

          v34 = (v90 - v62 + v61);
          v35 = sub_1B0E42AB8();
          if (!v34)
          {
            goto LABEL_188;
          }

          goto LABEL_114;
        }

        v79 = *(a1 + 24);
        __s1b = *(a1 + 16);
        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0E42A98();
        if (v46)
        {
          v47 = sub_1B0E42AC8();
          v48 = __s1b;
          if (__OFSUB__(__s1b, v47))
          {
            goto LABEL_181;
          }

          v46 = &__s1b[v46 - v47];
        }

        else
        {
          v48 = __s1b;
        }

        v69 = v79 - v48;
        if (__OFSUB__(v79, v48))
        {
          goto LABEL_173;
        }

        v70 = sub_1B0E42AB8();
        if (!v46)
        {
          goto LABEL_189;
        }
      }

      else
      {
        if (v18)
        {
          if (v15 > v15 >> 32)
          {
            goto LABEL_168;
          }

          sub_1B03B2000(v15, v14);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v43 = sub_1B0E42A98();
          if (v43)
          {
            v44 = v43;
            v45 = sub_1B0E42AC8();
            if (__OFSUB__(v15, v45))
            {
              goto LABEL_170;
            }

            __s1a = (v15 - v45 + v44);
          }

          else
          {
            __s1a = 0;
          }

          v7 = a2;
          sub_1B0E42AB8();
          if (v10 == 2)
          {
            v78 = *(a1 + 24);
            v82 = *(a1 + 16);
            v51 = sub_1B0E42A98();
            if (v51)
            {
              v67 = sub_1B0E42AC8();
              v68 = v82;
              if (__OFSUB__(v82, v67))
              {
                goto LABEL_185;
              }

              v51 += v82 - v67;
            }

            else
            {
              v68 = v82;
            }

            v74 = v78 - v68;
            if (__OFSUB__(v78, v68))
            {
              goto LABEL_180;
            }

            v75 = sub_1B0E42AB8();
            if (v75 >= v74)
            {
              v54 = v74;
            }

            else
            {
              v54 = v75;
            }

            result = __s1a;
            if (!__s1a)
            {
              goto LABEL_202;
            }

            v5 = a4;
            if (!v51)
            {
              goto LABEL_201;
            }

            goto LABEL_158;
          }

          if (v10 == 1)
          {
            if (v88 < v90)
            {
              goto LABEL_179;
            }

            v51 = sub_1B0E42A98();
            if (v51)
            {
              v56 = sub_1B0E42AC8();
              if (__OFSUB__(v90, v56))
              {
                goto LABEL_186;
              }

              v51 += v90 - v56;
            }

            v57 = sub_1B0E42AB8();
            v54 = v87;
            if (v57 < v87)
            {
              v54 = v57;
            }

            result = __s1a;
            if (!__s1a)
            {
              goto LABEL_200;
            }

            v5 = a4;
            if (!v51)
            {
              goto LABEL_199;
            }

            goto LABEL_105;
          }

          v5 = a4;
          v49 = __s1a;
          LODWORD(__s2[0]) = a1;
          BYTE4(__s2[0]) = v89;
          *(__s2 + 5) = *(&a1 + 5);
          HIBYTE(__s2[0]) = HIBYTE(a1);
          LODWORD(__s2[1]) = a2;
          WORD2(__s2[1]) = WORD2(a2);
          if (!__s1a)
          {
            goto LABEL_195;
          }

LABEL_127:
          v50 = __s2;
LABEL_128:
          if (!memcmp(v49, v50, __n))
          {
            goto LABEL_54;
          }

          goto LABEL_13;
        }

        __s2[0] = v15;
        LOWORD(__s2[1]) = v14;
        BYTE2(__s2[1]) = BYTE2(v14);
        BYTE3(__s2[1]) = BYTE3(v14);
        BYTE4(__s2[1]) = BYTE4(v14);
        BYTE5(__s2[1]) = BYTE5(v14);
        if (!v10)
        {
          goto LABEL_81;
        }

        if (v10 == 1)
        {
          if (v88 < v90)
          {
            goto LABEL_172;
          }

          sub_1B03B2000(v15, v14);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v31 = sub_1B0E42A98();
          if (!v31)
          {
            goto LABEL_198;
          }

          v32 = v31;
          v33 = sub_1B0E42AC8();
          if (__OFSUB__(v90, v33))
          {
            goto LABEL_176;
          }

          v34 = (v90 - v33 + v32);
          v35 = sub_1B0E42AB8();
          if (!v34)
          {
            goto LABEL_197;
          }

LABEL_114:
          if (v35 >= v87)
          {
            v63 = v87;
          }

          else
          {
            v63 = v35;
          }

          v64 = memcmp(__s2, v34, v63);
          goto LABEL_141;
        }

        v80 = *(a1 + 24);
        __s1c = *(a1 + 16);
        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0E42A98();
        if (v46)
        {
          v58 = sub_1B0E42AC8();
          v59 = __s1c;
          if (__OFSUB__(__s1c, v58))
          {
            goto LABEL_182;
          }

          v46 = &__s1c[v46 - v58];
        }

        else
        {
          v59 = __s1c;
        }

        v69 = v80 - v59;
        if (__OFSUB__(v80, v59))
        {
          goto LABEL_174;
        }

        v70 = sub_1B0E42AB8();
        if (!v46)
        {
          goto LABEL_196;
        }
      }

      if (v70 >= v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = v70;
      }

      v64 = memcmp(__s2, v46, v71);
      v7 = a2;
LABEL_141:
      v5 = a4;
      if (!v64)
      {
        goto LABEL_54;
      }

LABEL_13:
      sub_1B0391D50(v15, v14);

LABEL_14:
      if (++v8 == v98)
      {
        goto LABEL_160;
      }
    }

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14 == 0xC000000000000000;
    }

    v21 = !v19 || v10 < 3;
    if (((v21 | v97) & 1) == 0)
    {
      v22 = 0;
      v23 = 0xC000000000000000;
      goto LABEL_53;
    }

LABEL_37:
    v24 = 0;
    if (v10 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_160:
  result = 0;
LABEL_162:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1B0AB7920(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = *(v5 + 16);
  v111 = a1;
  if (v6)
  {
    v7 = 0;
    a1 = *(a1 + 40);
    v8 = 72;
    while (1)
    {
      v9 = *(v5 + v8);
      v10 = a1 - v9;
      if (a1 >= v9)
      {
        if (__OFSUB__(a1, v9))
        {
          goto LABEL_211;
        }
      }

      else
      {
        if (__OFSUB__(v9, a1))
        {
          goto LABEL_212;
        }

        v10 = a1 - v9;
        if (__OFSUB__(0, v9 - a1))
        {
          goto LABEL_213;
        }
      }

      if (v10 / 1000000000.0 > 2100.0)
      {
        break;
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        v3 = *(v5 + 16);
        a1 = v111;
        goto LABEL_17;
      }
    }

    v3 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if (v3 != v6)
    {
      v83 = v8 + 48;
      while (v3 < v6)
      {
        v87 = *(v5 + v83);
        v88 = a1 - v87;
        if (a1 >= v87)
        {
          if (__OFSUB__(a1, v87))
          {
            goto LABEL_216;
          }
        }

        else
        {
          if (__OFSUB__(v87, a1))
          {
            goto LABEL_215;
          }

          v88 = a1 - v87;
          if (__OFSUB__(0, v87 - a1))
          {
            goto LABEL_217;
          }
        }

        if (v88 / 1000000000.0 <= 2100.0)
        {
          if (v3 != v7)
          {
            if (v7 >= v6)
            {
              goto LABEL_220;
            }

            v89 = v5 + 32 + 48 * v7;
            v122 = *(v89 + 16);
            v1 = *(v89 + 24);
            v116 = *(v89 + 40);
            v118 = *(v89 + 32);
            v90 = *(v5 + v83 - 40);
            v91 = *(v5 + v83 - 32);
            v130 = *(v5 + v83 - 24);
            v92 = *(v5 + v83 - 16);
            v127 = *v89;
            v129 = *(v5 + v83 - 8);
            v125 = *(v89 + 8);
            sub_1B03B2000(*v89, v125);
            v120 = v1;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v90, v91);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1B0B8C8D8(v5);
            }

            if (v7 >= *(v5 + 16))
            {
              goto LABEL_221;
            }

            v93 = v5 + 48 * v7;
            v94 = *(v93 + 32);
            v95 = *(v93 + 40);
            v1 = *(v93 + 56);
            *(v93 + 32) = v90;
            *(v93 + 40) = v91;
            *(v93 + 48) = v130;
            *(v93 + 56) = v92;
            *(v93 + 64) = v129;
            *(v93 + 72) = v87;
            sub_1B0391D50(v94, v95);

            if (v3 >= *(v5 + 16))
            {
              goto LABEL_222;
            }

            v84 = (v5 + v83);
            v85 = *(v5 + v83 - 40);
            v86 = *(v5 + v83 - 32);
            v1 = *(v5 + v83 - 16);
            *(v84 - 5) = v127;
            *(v84 - 4) = v125;
            *(v84 - 6) = v122;
            *(v84 - 2) = v120;
            *(v84 - 1) = v118;
            *v84 = v116;
            sub_1B0391D50(v85, v86);

            *v123 = v5;
          }

          ++v7;
        }

        ++v3;
        v6 = *(v5 + 16);
        v83 += 48;
        if (v3 == v6)
        {
          goto LABEL_16;
        }
      }

LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    v3 = *(v5 + 16);
LABEL_16:
    v6 = v7;
    a1 = v111;
    if (v3 < v7)
    {
LABEL_225:
      __break(1u);
      goto LABEL_226;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  sub_1B0BAD05C(v6, v3);
  v3 = *v123;
  v5 = *(*v123 + 2);
  if (!v5)
  {
    v1 = 0;
    goto LABEL_180;
  }

  v1 = 0;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = a1;
  a1 = *(a1 + 16);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0xC000000000000000;
  }

  v15 = v11 >> 62;
  v117 = *(v13 + 24);
  v119 = v11;
  v115 = *(v13 + 32);
  v16 = !v14;
  v126 = v16;
  v17 = __OFSUB__(HIDWORD(v12), v12);
  v113 = v17;
  v114 = a1;
  v112 = HIDWORD(v12) - v12;
  v124 = BYTE6(v11);
  v121 = v12;
  v108 = v12 >> 32;
  v109 = v12;
  v107 = (v12 >> 32) - v12;
  v110 = *(*v123 + 2);
  while (1)
  {
    if (v1 >= *(v3 + 2))
    {
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v18 = &v3[48 * v1 + 32];
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v23 = *(v18 + 24);
    v22 = *(v18 + 32);
    v24 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 == 0xC000000000000000;
      }

      v27 = !v25 || v15 < 3;
      if (((v27 | v126) & 1) == 0)
      {
        v128 = v22;
        v28 = 0;
        v29 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_53:
      v30 = 0;
      if (v15 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_53;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_224;
      }

      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

    else if (v24)
    {
      LODWORD(v30) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_223;
      }

      v30 = v30;
      if (v15 <= 1)
      {
LABEL_50:
        v34 = v124;
        if (v15)
        {
          v34 = v112;
          if (v113)
          {
            goto LABEL_218;
          }
        }

        goto LABEL_56;
      }
    }

    else
    {
      v30 = BYTE6(v19);
      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    if (v15 != 2)
    {
      if (v30)
      {
        goto LABEL_29;
      }

LABEL_68:
      v128 = v22;
      v28 = v20;
      v29 = v19;
LABEL_69:
      sub_1B03B2000(v28, v29);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_70:
      if (v21 == a1 && v128 == v115)
      {
        v42 = *(v23 + 16);
        if (v42 == *(v117 + 16))
        {
          if (v42)
          {
            v43 = v23 == v117;
          }

          else
          {
            v43 = 1;
          }

          if (!v43)
          {
            v44 = 32;
            while (v42)
            {
              if (*(v23 + v44) != *(v117 + v44))
              {
                goto LABEL_28;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_176;
              }
            }

            goto LABEL_210;
          }

LABEL_176:
          sub_1B0391D50(v20, v19);

          v5 = v111;
          sub_1B0AB89D0(v111, __s1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_177;
          }

          goto LABEL_228;
        }
      }

      goto LABEL_28;
    }

    v36 = *(v121 + 16);
    v35 = *(v121 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_219;
    }

LABEL_56:
    if (v30 != v34)
    {
      goto LABEL_29;
    }

    if (v30 < 1)
    {
      goto LABEL_68;
    }

    v128 = v22;
    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (v15)
      {
        if (v15 == 2)
        {
          v99 = *(v121 + 24);
          v105 = *(v121 + 16);
          sub_1B03B2000(v20, v19);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v40 = sub_1B0E42A98();
          if (v40)
          {
            v51 = sub_1B0E42AC8();
            v52 = v105;
            if (__OFSUB__(v105, v51))
            {
              goto LABEL_247;
            }

            v40 = &v105[v40 - v51];
          }

          else
          {
            v52 = v105;
          }

          v71 = v99 - v52;
          if (__OFSUB__(v99, v52))
          {
            goto LABEL_240;
          }

          result = sub_1B0E42AB8();
          if (!v40)
          {
            goto LABEL_255;
          }

          goto LABEL_151;
        }

        if (v108 < v109)
        {
          goto LABEL_236;
        }

        sub_1B03B2000(v20, v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = sub_1B0E42A98();
        if (!v62)
        {
          goto LABEL_253;
        }

        v63 = v62;
        v64 = sub_1B0E42AC8();
        if (__OFSUB__(v109, v64))
        {
          goto LABEL_242;
        }

        v40 = (v109 - v64 + v63);
        result = sub_1B0E42AB8();
        if (!v40)
        {
          goto LABEL_254;
        }

LABEL_130:
        if (result >= v107)
        {
          v65 = v107;
        }

        else
        {
          v65 = result;
        }

LABEL_154:
        v5 = v110;
        a1 = v114;
        if (!memcmp(__s1, v40, v65))
        {
          goto LABEL_70;
        }

        goto LABEL_28;
      }

      goto LABEL_98;
    }

    a1 = *(v20 + 16);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(a1, v47))
      {
        goto LABEL_231;
      }

      v103 = (a1 - v47 + v46);
    }

    else
    {
      v103 = 0;
    }

    sub_1B0E42AB8();
    a1 = v114;
    if (v15 == 2)
    {
      v97 = *(v121 + 24);
      v101 = *(v121 + 16);
      v54 = sub_1B0E42A98();
      if (v54)
      {
        v66 = sub_1B0E42AC8();
        v67 = v101;
        if (__OFSUB__(v101, v66))
        {
          goto LABEL_248;
        }

        v54 += v101 - v66;
      }

      else
      {
        v67 = v101;
      }

      v72 = v97 - v67;
      if (__OFSUB__(v97, v67))
      {
        goto LABEL_243;
      }

      v73 = sub_1B0E42AB8();
      if (v73 >= v72)
      {
        v57 = v72;
      }

      else
      {
        v57 = v73;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_263;
      }

      v5 = v110;
      a1 = v114;
      if (!v54)
      {
        goto LABEL_262;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v110;
        result = v103;
        *__s1 = v121;
        *&__s1[8] = v119;
        *&__s1[12] = WORD2(v119);
        if (!v103)
        {
          goto LABEL_256;
        }

        goto LABEL_142;
      }

      if (v108 < v109)
      {
        goto LABEL_238;
      }

      v54 = sub_1B0E42A98();
      if (v54)
      {
        v55 = sub_1B0E42AC8();
        if (__OFSUB__(v109, v55))
        {
          goto LABEL_250;
        }

        v54 += v109 - v55;
      }

      a1 = v114;
      v56 = sub_1B0E42AB8();
      v57 = v107;
      if (v56 < v107)
      {
        v57 = v56;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_261;
      }

      v5 = v110;
      if (!v54)
      {
        goto LABEL_260;
      }
    }

LABEL_171:
    if (result == v54)
    {
      goto LABEL_70;
    }

    v70 = v57;
    v53 = v54;
LABEL_173:
    if (!memcmp(result, v53, v70))
    {
      goto LABEL_70;
    }

LABEL_28:
    sub_1B0391D50(v20, v19);

LABEL_29:
    if (++v1 == v5)
    {
      v1 = *(v3 + 2);
      a1 = v111;
      if (v1 > 0x10)
      {
        v5 = sub_1B0441754(0x11uLL);
        sub_1B0AB89D0(v111, __s1);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
LABEL_234:
            __break(1u);
            goto LABEL_235;
          }

LABEL_205:
          if (v5 < *(v3 + 2))
          {
            v76 = &v3[48 * v5 + 32];
            v77 = a1;
            goto LABEL_207;
          }

LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
        }

LABEL_233:
        v3 = sub_1B0B8C8D8(v3);
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_234;
        }

        goto LABEL_205;
      }

LABEL_180:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_181:
        v79 = *(v3 + 2);
        v78 = *(v3 + 3);
        if (v79 >= v78 >> 1)
        {
          v3 = sub_1B0AFF9B0((v78 > 1), v79 + 1, 1, v3);
        }

        *(v3 + 2) = v79 + 1;
        v80 = &v3[48 * v79];
        v81 = *a1;
        v82 = *(a1 + 32);
        *(v80 + 3) = *(a1 + 16);
        *(v80 + 4) = v82;
        *(v80 + 2) = v81;
        *v123 = v3;
        result = sub_1B0AB89D0(a1, __s1);
        goto LABEL_208;
      }

LABEL_226:
      v3 = sub_1B0AFF9B0(0, v1 + 1, 1, v3);
      goto LABEL_181;
    }
  }

  if (v24)
  {
    a1 = v20;
    if (v20 > v20 >> 32)
    {
      __break(1u);
LABEL_228:
      v3 = sub_1B0B8C8D8(v3);
LABEL_177:
      if (v1 < *(v3 + 2))
      {
        v76 = &v3[48 * v1 + 32];
        v77 = v5;
LABEL_207:
        result = sub_1B0AB8A08(v77, v76);
        *v123 = v3;
LABEL_208:
        v96 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_230;
    }

    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v49 = v48;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v20, v50))
      {
        goto LABEL_232;
      }

      v104 = (v20 - v50 + v49);
    }

    else
    {
      v104 = 0;
    }

    sub_1B0E42AB8();
    a1 = v114;
    if (v15 == 2)
    {
      v98 = *(v121 + 24);
      v102 = *(v121 + 16);
      v54 = sub_1B0E42A98();
      if (v54)
      {
        v68 = sub_1B0E42AC8();
        v69 = v102;
        if (__OFSUB__(v102, v68))
        {
          goto LABEL_249;
        }

        v54 += v102 - v68;
      }

      else
      {
        v69 = v102;
      }

      v74 = v98 - v69;
      if (__OFSUB__(v98, v69))
      {
        goto LABEL_245;
      }

      v75 = sub_1B0E42AB8();
      if (v75 >= v74)
      {
        v57 = v74;
      }

      else
      {
        v57 = v75;
      }

      result = v104;
      if (!v104)
      {
        goto LABEL_267;
      }

      v5 = v110;
      a1 = v114;
      if (!v54)
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v110;
        result = v104;
        *__s1 = v121;
        *&__s1[8] = v119;
        *&__s1[12] = WORD2(v119);
        if (!v104)
        {
          goto LABEL_257;
        }

LABEL_142:
        v53 = __s1;
LABEL_143:
        v70 = v124;
        goto LABEL_173;
      }

      if (v108 < v109)
      {
        goto LABEL_244;
      }

      v54 = sub_1B0E42A98();
      if (v54)
      {
        v58 = sub_1B0E42AC8();
        if (__OFSUB__(v109, v58))
        {
          goto LABEL_251;
        }

        v54 += v109 - v58;
      }

      a1 = v114;
      v59 = sub_1B0E42AB8();
      v57 = v107;
      if (v59 < v107)
      {
        v57 = v59;
      }

      result = v104;
      if (!v104)
      {
        goto LABEL_265;
      }

      v5 = v110;
      if (!v54)
      {
        goto LABEL_264;
      }
    }

    goto LABEL_171;
  }

  *__s1 = v20;
  *&__s1[8] = v19;
  __s1[10] = BYTE2(v19);
  __s1[11] = BYTE3(v19);
  __s1[12] = BYTE4(v19);
  __s1[13] = BYTE5(v19);
  if (!v15)
  {
LABEL_98:
    v131 = v121;
    v132 = v119;
    v133 = WORD2(v119);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = __s1;
    v53 = &v131;
    goto LABEL_143;
  }

  if (v15 != 1)
  {
    v100 = *(v121 + 24);
    v106 = *(v121 + 16);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E42A98();
    if (v40)
    {
      v60 = sub_1B0E42AC8();
      v61 = v106;
      if (__OFSUB__(v106, v60))
      {
        goto LABEL_246;
      }

      v40 = &v106[v40 - v60];
    }

    else
    {
      v61 = v106;
    }

    v71 = v100 - v61;
    if (__OFSUB__(v100, v61))
    {
      goto LABEL_239;
    }

    result = sub_1B0E42AB8();
    if (!v40)
    {
      goto LABEL_258;
    }

LABEL_151:
    if (result >= v71)
    {
      v65 = v71;
    }

    else
    {
      v65 = result;
    }

    goto LABEL_154;
  }

  if (v108 < v109)
  {
    goto LABEL_237;
  }

  sub_1B03B2000(v20, v19);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0E42A98();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B0E42AC8();
    if (__OFSUB__(v109, v39))
    {
      goto LABEL_241;
    }

    v40 = (v109 - v39 + v38);
    result = sub_1B0E42AB8();
    if (!v40)
    {
      goto LABEL_259;
    }

    goto LABEL_130;
  }

  sub_1B0E42AB8();
  __break(1u);
LABEL_253:
  result = sub_1B0E42AB8();
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB8610(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B0AB87A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B0391D50(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1B0AE2440(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B0391D50(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1B0AB87A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B0E42A98();
  v11 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B0E42AB8();
  sub_1B0AE2440(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B0AB8858(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B03B2000(a3, a4);
          return sub_1B0AB8610(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB8A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0AB8A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0AB8AF4()
{
  result = qword_1EB6E40F8;
  if (!qword_1EB6E40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E40F8);
  }

  return result;
}

uint64_t sub_1B0AB8B68()
{
  result = sub_1B03D0770(&unk_1F2710A98);
  qword_1EB737DC0 = result;
  return result;
}

uint64_t sub_1B0AB8B90()
{
  v5[8] = 0;
  *v5 = *(v0 + 9);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2 = v1;
  }

  else
  {
    v2 = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1B2726E80](v2, v3);

  return *&v5[1];
}

void sub_1B0AB8C54(uint64_t a1)
{
  v2 = v1;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  *&v194 = &v185 - v5;
  v6 = type metadata accessor for DownloadTask(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v185 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v197 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v193 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v205 = &v185 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v185 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v185 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v203 = (&v185 - v25);
  v198 = type metadata accessor for MailboxTaskLogger(0);
  v26 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v186 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v187 = &v185 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v202 = &v185 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v201 = &v185 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v200 = &v185 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v204 = &v185 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v185 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v185 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v185 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v185 - v48;
  v195 = v6;
  v50 = *(v6 + 40);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v51 = sub_1B0E46E98();
  v199 = a1;
  v196 = v2;
  if ((v51 & 1) == 0)
  {
    sub_1B0ABCCD8(a1, v43, type metadata accessor for MailboxTaskLogger);
    sub_1B0ABCCD8(a1, v40, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ABCCD8(v2, v205, type metadata accessor for DownloadTask);
    v74 = v193;
    sub_1B0ABCCD8(v2, v193, type metadata accessor for DownloadTask);
    v75 = v197;
    sub_1B0ABCCD8(v2, v197, type metadata accessor for DownloadTask);
    sub_1B0ABCCD8(v2, v11, type metadata accessor for DownloadTask);
    v76 = sub_1B0E43988();
    v77 = sub_1B0E45908();
    if (!os_log_type_enabled(v76, v77))
    {
      v98 = a1;
      sub_1B03D0D24(v40, type metadata accessor for MailboxTaskLogger);

      sub_1B03D0D24(v11, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v75, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v74, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v43, type metadata accessor for MailboxTaskLogger);
      sub_1B03D0D24(v205, type metadata accessor for DownloadTask);
LABEL_25:
      v2 = v196;
      goto LABEL_26;
    }

    v203 = v11;
    v78 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v208[0] = v192;
    *v78 = 68160259;
    *(v78 + 4) = 2;
    *(v78 + 8) = 256;
    v79 = v198;
    v80 = &v40[*(v198 + 20)];
    *(v78 + 10) = *v80;
    *(v78 + 11) = 2082;
    v81 = v74;
    v82 = &v43[*(v79 + 20)];
    *(v78 + 13) = sub_1B0399D64(*(v82 + 1), *(v82 + 2), v208);
    *(v78 + 21) = 1040;
    *(v78 + 23) = 2;
    *(v78 + 27) = 512;
    LOWORD(v80) = *(v80 + 12);
    sub_1B03D0D24(v40, type metadata accessor for MailboxTaskLogger);
    *(v78 + 29) = v80;
    *(v78 + 31) = 2160;
    *(v78 + 33) = 0x786F626C69616DLL;
    *(v78 + 41) = 2085;
    v83 = *(v82 + 4);
    LODWORD(v80) = *(v82 + 10);
    v84 = v81;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D0D24(v43, type metadata accessor for MailboxTaskLogger);
    v206 = v83;
    v207 = v80;
    v85 = sub_1B0E44BA8();
    v87 = sub_1B0399D64(v85, v86, v208);

    *(v78 + 43) = v87;
    *(v78 + 51) = 2082;
    v88 = v205;
    v89 = *(v205 + 104);
    v90 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v91 = v194;
    sub_1B0B24198(v90);
    v92 = MessageIdentifierSet.debugDescription.getter(v190);
    v94 = v93;
    sub_1B0398EFC(v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03D0D24(v88, type metadata accessor for DownloadTask);
    v95 = sub_1B0399D64(v92, v94, v208);

    *(v78 + 53) = v95;
    *(v78 + 61) = 2080;
    if (*(v84 + 112))
    {
      v96 = 0xE100000000000000;
      if (*(v84 + 112) == 1)
      {
        v97 = 65;
      }

      else
      {
        v97 = 66;
      }
    }

    else
    {
      v97 = 1919251285;
      v96 = 0xE400000000000000;
    }

    sub_1B03D0D24(v84, type metadata accessor for DownloadTask);
    v103 = sub_1B0399D64(v97, v96, v208);

    *(v78 + 63) = v103;
    *(v78 + 71) = 2082;
    if (*(v197 + 9))
    {
      v104 = 6581810;
    }

    else
    {
      v104 = 7631665;
    }

    sub_1B03D0D24(v197, type metadata accessor for DownloadTask);
    v105 = sub_1B0399D64(v104, 0xE300000000000000, v208);

    *(v78 + 73) = v105;
    *(v78 + 81) = 2082;
    v106 = v203;
    v107 = v203 + *(v195 + 40);
    v108 = MessageIdentifierSet.debugDescription.getter(v190);
    v110 = v109;
    sub_1B03D0D24(v106, type metadata accessor for DownloadTask);
    v111 = sub_1B0399D64(v108, v110, v208);

    *(v78 + 83) = v111;
    _os_log_impl(&dword_1B0389000, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s' -- full message download for %{public}s", v78, 0x5Bu);
    v112 = v192;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v112, -1, -1);
    MEMORY[0x1B272C230](v78, -1, -1);

LABEL_24:
    v98 = v199;
    goto LABEL_25;
  }

  sub_1B0ABCCD8(a1, v49, type metadata accessor for MailboxTaskLogger);
  sub_1B0ABCCD8(a1, v46, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0ABCCD8(v2, v203, type metadata accessor for DownloadTask);
  sub_1B0ABCCD8(v2, v23, type metadata accessor for DownloadTask);
  sub_1B0ABCCD8(v2, v20, type metadata accessor for DownloadTask);
  v52 = sub_1B0E43988();
  v53 = sub_1B0E45908();
  if (os_log_type_enabled(v52, v53))
  {
    LODWORD(v205) = v53;
    v54 = v20;
    v55 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v208[0] = v197;
    *v55 = 68160003;
    *(v55 + 4) = 2;
    *(v55 + 8) = 256;
    v56 = v198;
    v57 = &v46[*(v198 + 20)];
    *(v55 + 10) = *v57;
    *(v55 + 11) = 2082;
    v58 = v23;
    v59 = &v49[*(v56 + 20)];
    *(v55 + 13) = sub_1B0399D64(*(v59 + 1), *(v59 + 2), v208);
    *(v55 + 21) = 1040;
    *(v55 + 23) = 2;
    *(v55 + 27) = 512;
    LOWORD(v57) = *(v57 + 12);
    sub_1B03D0D24(v46, type metadata accessor for MailboxTaskLogger);
    *(v55 + 29) = v57;
    *(v55 + 31) = 2160;
    *(v55 + 33) = 0x786F626C69616DLL;
    *(v55 + 41) = 2085;
    v60 = *(v59 + 4);
    LODWORD(v57) = *(v59 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D0D24(v49, type metadata accessor for MailboxTaskLogger);
    v206 = v60;
    v207 = v57;
    v61 = sub_1B0E44BA8();
    v63 = sub_1B0399D64(v61, v62, v208);

    *(v55 + 43) = v63;
    *(v55 + 51) = 2082;
    v64 = v203;
    v65 = v203[13];
    v66 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = v194;
    sub_1B0B24198(v66);
    v68 = MessageIdentifierSet.debugDescription.getter(v190);
    v70 = v69;
    sub_1B0398EFC(v67, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03D0D24(v64, type metadata accessor for DownloadTask);
    v71 = sub_1B0399D64(v68, v70, v208);

    *(v55 + 53) = v71;
    *(v55 + 61) = 2080;
    if (*(v58 + 112))
    {
      v72 = 0xE100000000000000;
      if (*(v58 + 112) == 1)
      {
        v73 = 65;
      }

      else
      {
        v73 = 66;
      }
    }

    else
    {
      v73 = 1919251285;
      v72 = 0xE400000000000000;
    }

    sub_1B03D0D24(v58, type metadata accessor for DownloadTask);
    v99 = sub_1B0399D64(v73, v72, v208);

    *(v55 + 63) = v99;
    *(v55 + 71) = 2082;
    if (*(v54 + 9))
    {
      v100 = 6581810;
    }

    else
    {
      v100 = 7631665;
    }

    sub_1B03D0D24(v54, type metadata accessor for DownloadTask);
    v101 = sub_1B0399D64(v100, 0xE300000000000000, v208);

    *(v55 + 73) = v101;
    _os_log_impl(&dword_1B0389000, v52, v205, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s'", v55, 0x51u);
    v102 = v197;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v102, -1, -1);
    MEMORY[0x1B272C230](v55, -1, -1);

    goto LABEL_24;
  }

  sub_1B03D0D24(v46, type metadata accessor for MailboxTaskLogger);

  sub_1B03D0D24(v20, type metadata accessor for DownloadTask);
  sub_1B03D0D24(v23, type metadata accessor for DownloadTask);
  sub_1B03D0D24(v49, type metadata accessor for MailboxTaskLogger);
  sub_1B03D0D24(v203, type metadata accessor for DownloadTask);
  v98 = v199;
LABEL_26:
  v113 = *(v2 + 104);
  v116 = *(v113 + 64);
  v115 = v113 + 64;
  v114 = v116;
  v117 = 1 << *(*(v2 + 104) + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & v114;
  v120 = (v117 + 63) >> 6;
  v203 = *(v2 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v121 = 0;
  *&v122 = 68159491;
  v194 = v122;
  *&v122 = 68159747;
  v191 = v122;
  v123 = v201;
  v124 = v200;
  if (v119)
  {
    goto LABEL_31;
  }

LABEL_32:
  v126 = v204;
  while (1)
  {
    v125 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
      return;
    }

    if (v125 >= v120)
    {
      break;
    }

    v119 = *(v115 + 8 * v125);
    ++v121;
    if (v119)
    {
      while (1)
      {
        v127 = __clz(__rbit64(v119));
        v119 &= v119 - 1;
        v128 = v127 | (v125 << 6);
        v129 = v203[7];
        LODWORD(v205) = *(v203[6] + 4 * v128);
        v130 = v129 + 16 * v128;
        if (*(v130 + 8))
        {
          v131 = v126;
          sub_1B0ABCCD8(v98, v126, type metadata accessor for MailboxTaskLogger);
          sub_1B0ABCCD8(v98, v124, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v132 = sub_1B0E43988();
          v133 = sub_1B0E458D8();
          if (!os_log_type_enabled(v132, v133))
          {
            sub_1B03D0D24(v124, type metadata accessor for MailboxTaskLogger);

            sub_1B03D0D24(v131, type metadata accessor for MailboxTaskLogger);
            v121 = v125;
            if (!v119)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v148 = swift_slowAlloc();
          LODWORD(v193) = v133;
          v137 = v148;
          v197 = swift_slowAlloc();
          v208[0] = v197;
          *v137 = v194;
          *(v137 + 4) = 2;
          *(v137 + 8) = 256;
          v149 = v198;
          v150 = v124 + *(v198 + 20);
          *(v137 + 10) = *v150;
          *(v137 + 11) = 2082;
          v151 = *(v149 + 20);
          v192 = v132;
          v152 = v131;
          v153 = v131 + v151;
          *(v137 + 13) = sub_1B0399D64(*(v131 + v151 + 8), *(v131 + v151 + 16), v208);
          *(v137 + 21) = 1040;
          *(v137 + 23) = 2;
          *(v137 + 27) = 512;
          v154 = *(v150 + 24);
          sub_1B03D0D24(v124, type metadata accessor for MailboxTaskLogger);
          *(v137 + 29) = v154;
          *(v137 + 31) = 2160;
          *(v137 + 33) = 0x786F626C69616DLL;
          *(v137 + 41) = 2085;
          v155 = *(v153 + 32);
          LODWORD(v153) = *(v153 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03D0D24(v152, type metadata accessor for MailboxTaskLogger);
          v206 = v155;
          v207 = v153;
          v98 = v199;
          v156 = sub_1B0E44BA8();
          v158 = sub_1B0399D64(v156, v157, v208);

          *(v137 + 43) = v158;
          v123 = v201;
          *(v137 + 51) = 1024;
          *(v137 + 53) = v205;
          v135 = v192;
          _os_log_impl(&dword_1B0389000, v192, v193, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, unknown size", v137, 0x39u);
          v147 = v197;
        }

        else
        {
          v197 = *v130;
          sub_1B0ABCCD8(v98, v123, type metadata accessor for MailboxTaskLogger);
          v134 = v202;
          sub_1B0ABCCD8(v98, v202, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v135 = sub_1B0E43988();
          v136 = sub_1B0E458D8();
          if (!os_log_type_enabled(v135, v136))
          {
            sub_1B03D0D24(v134, type metadata accessor for MailboxTaskLogger);

            sub_1B03D0D24(v123, type metadata accessor for MailboxTaskLogger);
            v121 = v125;
            v124 = v200;
            if (!v119)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v137 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v208[0] = v193;
          *v137 = v191;
          v138 = v123;
          *(v137 + 4) = 2;
          *(v137 + 8) = 256;
          v139 = v198;
          v140 = v202 + *(v198 + 20);
          *(v137 + 10) = *v140;
          *(v137 + 11) = 2082;
          v141 = v138 + *(v139 + 20);
          *(v137 + 13) = sub_1B0399D64(*(v141 + 8), *(v141 + 16), v208);
          *(v137 + 21) = 1040;
          *(v137 + 23) = 2;
          *(v137 + 27) = 512;
          v142 = *(v140 + 24);
          sub_1B03D0D24(v202, type metadata accessor for MailboxTaskLogger);
          *(v137 + 29) = v142;
          *(v137 + 31) = 2160;
          *(v137 + 33) = 0x786F626C69616DLL;
          *(v137 + 41) = 2085;
          v143 = *(v141 + 32);
          LODWORD(v141) = *(v141 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03D0D24(v201, type metadata accessor for MailboxTaskLogger);
          v206 = v143;
          v207 = v141;
          v98 = v199;
          v144 = sub_1B0E44BA8();
          v146 = sub_1B0399D64(v144, v145, v208);

          *(v137 + 43) = v146;
          v123 = v201;
          *(v137 + 51) = 1024;
          *(v137 + 53) = v205;
          *(v137 + 57) = 2048;
          *(v137 + 59) = v197;
          _os_log_impl(&dword_1B0389000, v135, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, size %{iec-bytes}ld", v137, 0x43u);
          v147 = v193;
        }

        swift_arrayDestroy();
        MEMORY[0x1B272C230](v147, -1, -1);
        MEMORY[0x1B272C230](v137, -1, -1);

        v121 = v125;
        v124 = v200;
        if (!v119)
        {
          goto LABEL_32;
        }

LABEL_31:
        v125 = v121;
        v126 = v204;
      }
    }
  }

  v159 = v196;
  v160 = v196 + *(v195 + 36);
  v161 = _s18InProgressMessagesVMa(0);
  v162 = v160 + *(v161 + 24);
  if ((sub_1B0E46E98() & 1) == 0)
  {
    v163 = v187;
    sub_1B0ABCCD8(v98, v187, type metadata accessor for MailboxTaskLogger);
    v164 = v186;
    sub_1B0ABCCD8(v98, v186, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v165 = v188;
    sub_1B0ABCCD8(v159, v188, type metadata accessor for DownloadTask);
    v166 = sub_1B0E43988();
    v167 = sub_1B0E458D8();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v208[0] = v169;
      *v168 = v194;
      *(v168 + 4) = 2;
      *(v168 + 8) = 256;
      v170 = v198;
      v171 = v164 + *(v198 + 20);
      *(v168 + 10) = *v171;
      *(v168 + 11) = 2082;
      v172 = v164;
      v173 = v163;
      v174 = v163 + *(v170 + 20);
      *(v168 + 13) = sub_1B0399D64(*(v174 + 8), *(v174 + 16), v208);
      *(v168 + 21) = 1040;
      *(v168 + 23) = 2;
      *(v168 + 27) = 512;
      LOWORD(v171) = *(v171 + 24);
      sub_1B03D0D24(v172, type metadata accessor for MailboxTaskLogger);
      *(v168 + 29) = v171;
      *(v168 + 31) = 2160;
      *(v168 + 33) = 0x786F626C69616DLL;
      *(v168 + 41) = 2085;
      v175 = *(v174 + 32);
      LODWORD(v174) = *(v174 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D0D24(v173, type metadata accessor for MailboxTaskLogger);
      v206 = v175;
      v207 = v174;
      v176 = sub_1B0E44BA8();
      v178 = sub_1B0399D64(v176, v177, v208);

      *(v168 + 43) = v178;
      *(v168 + 51) = 2082;
      v179 = v188;
      v180 = v188 + *(v195 + 36) + *(v161 + 24);
      v181 = MessageIdentifierSet.debugDescription.getter(v190);
      v183 = v182;
      sub_1B03D0D24(v179, type metadata accessor for DownloadTask);
      v184 = sub_1B0399D64(v181, v183, v208);

      *(v168 + 53) = v184;
      _os_log_impl(&dword_1B0389000, v166, v167, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Using cached body structure for message(s) %{public}s", v168, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v169, -1, -1);
      MEMORY[0x1B272C230](v168, -1, -1);
    }

    else
    {
      sub_1B03D0D24(v164, type metadata accessor for MailboxTaskLogger);

      sub_1B03D0D24(v165, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v163, type metadata accessor for MailboxTaskLogger);
    }
  }
}

uint64_t sub_1B0ABA140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v76 = a5;
  v77 = a4;
  v78 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4100, &qword_1B0EC32F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v75 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v70 - v27;
  v28 = *(v6 + 80);
  v83 = *(v6 + 64);
  v84 = v28;
  v85 = *(v6 + 96);
  v86 = *(v6 + 112);
  v29 = type metadata accessor for DownloadTask(0);
  v30 = v6 + *(v29 + 40);
  v74 = v6 + *(v29 + 36);
  v31 = *(v74 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v79 = a2;
  v80 = a3;
  v32 = sub_1B0AB0D90(0, a2, a3);
  v73 = v30;
  if (v32)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
    v34 = a1;
  }

  else
  {
    v72 = a1;
    v82 = v31;
    v35 = *(&v85 + 1);
    sub_1B03D06F8();
    v36 = sub_1B0E46EE8();
    MEMORY[0x1EEE9AC00](v36);
    *(&v70 - 2) = v30;
    *(&v70 - 1) = &v82;
    sub_1B0B42F4C(v16, sub_1B0ABCD40, v35, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v37 = sub_1B0E46E98();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v39 = v38;
    v40 = 1;
    if ((v37 & 1) == 0)
    {
      v41 = &v25[*(v38 + 48)];
      sub_1B03D08AC(v19, v25);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      v71 = v25;
      v43 = v41 + v42;
      sub_1B03D08AC(v19, v41);
      *v43 = &unk_1F2710AC0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      v25 = v71;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      v40 = 0;
    }

    (*(*(v39 - 8) + 56))(v25, v40, 1, v39);
    sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v25, 1, v44);
    v34 = v72;
    if (v46 != 1)
    {

      v59 = v81;
      sub_1B03C60A4(v25, v81, &qword_1EB6E4108, &qword_1B0EC32F8);
      v60 = v44;
      v48 = v59;
      (*(v45 + 56))(v59, 0, 1, v60);
      goto LABEL_14;
    }
  }

  if (sub_1B0AB0D90(1, v79, v80))
  {

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v48 = v81;
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
  }

  else
  {
    sub_1B0ABBD14(v73, v31, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v49 = sub_1B0E46E98();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v51 = v50;
    if ((v49 & 1) == 0)
    {
      v52 = *(v50 + 48);
      v73 = v31;
      v53 = v13;
      v54 = v81 + v52;
      sub_1B03D08AC(v13, v81);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v55 = v34;
      v56 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03D08AC(v53, v54);
      *v56 = &unk_1F2710B58;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v34 = v55;
      v13 = v53;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
    }

    v57 = *(*(v51 - 8) + 56);
    v48 = v81;
    v57();

    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
  if ((*(*(v58 - 8) + 48))(v25, 1, v58) != 1)
  {
    sub_1B0398EFC(v25, &qword_1EB6E4100, &qword_1B0EC32F0);
  }

LABEL_14:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v48, 1, v61) == 1)
  {
    v64 = v75;
    sub_1B0ABDEA8(v79, v80, v76, v75);
    if (v63(v64, 1, v61) == 1)
    {
      sub_1B0ABEC0C(v34, v79, v80, v77, v78);
      if (v63(v64, 1, v61) != 1)
      {
        sub_1B0398EFC(v64, &qword_1EB6E4100, &qword_1B0EC32F0);
      }
    }

    else
    {
      v68 = v78;
      sub_1B03C60A4(v64, v78, &qword_1EB6E4108, &qword_1B0EC32F8);
      (*(v62 + 56))(v68, 0, 1, v61);
    }

    v69 = v81;
    result = v63(v81, 1, v61);
    if (result != 1)
    {
      return sub_1B0398EFC(v69, &qword_1EB6E4100, &qword_1B0EC32F0);
    }
  }

  else
  {
    v65 = v48;
    v66 = v78;
    sub_1B03C60A4(v65, v78, &qword_1EB6E4108, &qword_1B0EC32F8);
    return (*(v62 + 56))(v66, 0, 1, v61);
  }

  return result;
}

uint64_t sub_1B0ABA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v66 = type metadata accessor for MessageHeader();
  v61 = *(v66 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s19MessageHeaderStatusOMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v65 = _s25MessageSectionsToDownloadVMa(0);
  v67 = *(v65 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v6 + *(type metadata accessor for DownloadTask(0) + 36);
  v25 = *(v7 + 88);
  v26 = *(v7 + 9);
  v62 = *(v7 + 96);
  v60 = v26;
  v63 = a2;
  v64 = a4;
  v27 = sub_1B0ACD674(v25, v62, v26, a2, a4, a6);
  if ((~v27 & 0xFF00000000) != 0)
  {
    return v27;
  }

  v56 = a6;
  v57 = v25;
  v53 = a1;
  v54 = a3;
  result = _s18InProgressMessagesVMa(0);
  v29 = *(result + 32);
  v55 = v24;
  v30 = *(v24 + v29);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v34 = (v61 + 48);
    while (v32 < *(v30 + 16))
    {
      v35 = (v33 + *(v67 + 72) * v32);
      sub_1B0ABCCD8(v35, v23, _s25MessageSectionsToDownloadVMa);
      sub_1B0ABCCD8(v23 + *(v65 + 20), v20, _s19MessageHeaderStatusOMa);
      v36 = *v34;
      if ((*v34)(v20, 3, v66))
      {
        sub_1B03D0D24(v23, _s25MessageSectionsToDownloadVMa);
        result = sub_1B03D0D24(v20, _s19MessageHeaderStatusOMa);
      }

      else
      {
        sub_1B03D0D24(v20, _s19MessageHeaderStatusOMa);
        v37 = sub_1B0A9E1D0(*v23 | 0x100000000, v63, v64);
        result = sub_1B03D0D24(v23, _s25MessageSectionsToDownloadVMa);
        if ((v37 & 1) == 0)
        {
          if (v32 < *(v30 + 16))
          {
            v38 = *v35;
            v39 = v35 + *(v65 + 20);
            v40 = v59;
            sub_1B0ABCCD8(v39, v59, _s19MessageHeaderStatusOMa);
            if (v36(v40, 3, v66))
            {
              sub_1B03D0D24(v40, _s19MessageHeaderStatusOMa);
              goto LABEL_12;
            }

            v48 = v58;
            sub_1B0ABCD58(v40, v58, type metadata accessor for MessageHeader);
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E8, &qword_1B0EA2048);
            swift_allocBox();
            v50 = *(v49 + 64);
            *v51 = v57;
            *(v51 + 8) = v62;
            *(v51 + 12) = v38;
            sub_1B0ABCD58(v48, v51 + v50, type metadata accessor for MessageHeader);
            v44 = v38 | 0x100000000;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            return v44;
          }

LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v31 == ++v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_12:
  v41 = v56;
  v42 = v57;
  v43 = v62;
  v44 = sub_1B0AC1C84(v57, v62, v56);
  if ((~v44 & 0xFF00000000) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = sub_1B0AC8160(v53, v63, v54, v64, v41);
    if ((v45 & 0x100000000) != 0)
    {
    }

    else
    {
      v46 = v45;
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v43;
      *(v47 + 28) = v60;
      *(v47 + 32) = v46;
      return v46 | 0x200000000;
    }
  }

  return v44;
}

uint64_t sub_1B0ABAEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = a1;
  v31 = &v26 - v7;
  v35 = 0;
  v8 = *(v2 + 88);
  v9 = *(v3 + 96);
  v10 = (a1 + 176);
  v11 = *(a1 + 176);
  v32 = v3;
  v33 = &v35;
  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  LODWORD(v14) = *(a1 + 192);
  v29 = v9;
  if (v14)
  {
    v34 = v12;
    sub_1B03B9A2C(v12, v11, v13, 1);
    sub_1B0B2B484(&v34, v8, v9, 0, sub_1B0ABC8F8);
    sub_1B03BB638(v12, v11, v13, 1);
    v11 = 0;
    v13 = 0;
    v12 = v34;
    *(a1 + 168) = v34;
    *v10 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 1;
    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B03B9A2C(v12, v11, v13, 0);

    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  v15 = *(type metadata accessor for DownloadTask(0) + 36);
  v27 = v14;
  v14 = v3 + v15;
  v16 = *(_s18InProgressMessagesVMa(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v26 = v14;
  LOBYTE(v14) = v27;
  if ((sub_1B0E46E98() & 1) == 0)
  {
    sub_1B0B24950(*(v3 + 64), *(v3 + 72), v26 + v16, v28);
  }

LABEL_7:
  v17 = *(v3 + 104);
  v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = v31;
  sub_1B0B24198(v18);
  if ((v14 & 1) == 0)
  {
    return sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v34 = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v29;
  sub_1B0B2A30C(&v34, v8, v29, v19);
  v21 = sub_1B03BB638(v12, v11, v13, 1);
  v22 = v8;
  v23 = v34;
  v24 = v30;
  *(v30 + 168) = v34;
  *v10 = 0;
  v10[1] = 0;
  *(v24 + 192) = 1;
  MEMORY[0x1EEE9AC00](v21);
  *(&v26 - 2) = &v35;
  *(&v26 - 1) = v3;
  v34 = v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B2BE00(&v34, v22, v20, 0, sub_1B0ABC900);
  sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B03BB638(v23, 0, 0, 1);
  *(v24 + 168) = v34;
  *v10 = 0;
  v10[1] = 0;
  *(v24 + 192) = 1;
  return result;
}

uint64_t sub_1B0ABB1D8(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v65 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v61 = *(v63 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v54[-v6];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v54[-v8];
  v10 = type metadata accessor for MessagesPendingDownload();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54[-v18];
  v20 = *(a2 + 9);
  v62 = a2;
  v21 = *(a2 + 104);
  v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198(v22);
  v58 = type metadata accessor for PendingPersistenceUpdates();
  v23 = *(v58 + 28);
  v64 = a1;
  v24 = a1 + v23;
  v25 = v24;
  v55 = v20;
  if (v20 == 1)
  {
    v25 = v24 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
  }

  v56 = v24;
  sub_1B0ABCCD8(v25, v15, type metadata accessor for MessagesPendingDownload);
  sub_1B03D08AC(v19, v9);
  v26 = MessageIdentifierSet.startIndex.getter(v16);
  v28 = v27;
  if (v26 != MessageIdentifierSet.endIndex.getter(v16) || v28 != v29)
  {
    do
    {
      MessageIdentifierSet.subscript.getter(v28, v16, &v67);
      v31 = v67;
      v26 = MessageIdentifierSet.index(_:offsetBy:)(v26, v28, 1);
      v28 = v32;
      v33 = *v15;
      v34 = sub_1B03FE284(v31);
      if (v35)
      {
        v36 = v34;
        v37 = *v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v15;
        v67 = *v15;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B0B8DCCC();
          v39 = v67;
        }

        sub_1B0B90410(v36, v39);
        *v15 = v39;
        v66 = v31;
        v40 = v15 + *(v10 + 20);
        MessageIdentifierSet.insert(_:)(&v67, &v66, v16);
      }
    }

    while (v26 != MessageIdentifierSet.endIndex.getter(v16) || v28 != v41);
  }

  v42 = &v9[*(v57 + 36)];
  *v42 = v26;
  v42[1] = v28;
  sub_1B0398EFC(v9, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v55)
  {
    v43 = type metadata accessor for MessagesPendingDownloadPerPass();
    v44 = v56;
    sub_1B0ABC908(v15, v56 + *(v43 + 20));
    v45 = v44 + *(v43 + 20);
  }

  else
  {
    v45 = v56;
    sub_1B0ABC908(v15, v56);
  }

  v46 = v45;
  v47 = v59;
  sub_1B0ABCCD8(v46, v59, type metadata accessor for MessagesPendingDownload);
  v48 = *v47;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D0D24(v47, type metadata accessor for MessagesPendingDownload);
  v49 = *(v48 + 16);

  v50 = v62 + *(type metadata accessor for DownloadTask(0) + 36);
  v51 = _s18InProgressMessagesVMa(0);
  v52 = *(v58 + 32);
  (*(v61 + 16))(v60, v50 + *(v51 + 36), v63);
  result = sub_1B0E46ED8();
  *v65 = v49 < 0x20;
  return result;
}

uint64_t sub_1B0ABB674(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 9))
    {
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }

    sub_1B03BDE74(v4);
    sub_1B03BDD7C(&v40, v4);
  }

  v5 = a3 + *(type metadata accessor for DownloadTask(0) + 36);
  v6 = *(v5 + *(_s18InProgressMessagesVMa(0) + 44));
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v35 = v6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v10; result = sub_1B075E728(v37))
  {
    v14 = i;
LABEL_14:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(v35 + 48) + 4 * v16);
    v18 = *(v35 + 56) + 184 * v16;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *v18;
    v37[1] = *(v18 + 16);
    v37[2] = v20;
    v37[0] = v21;
    v22 = *(v18 + 112);
    v24 = *(v18 + 64);
    v23 = *(v18 + 80);
    v37[6] = *(v18 + 96);
    v37[7] = v22;
    v37[4] = v24;
    v37[5] = v23;
    v26 = *(v18 + 144);
    v25 = *(v18 + 160);
    v27 = *(v18 + 128);
    v38 = *(v18 + 176);
    v37[9] = v26;
    v37[10] = v25;
    v37[8] = v27;
    v37[3] = v19;
    v28 = *(type metadata accessor for MailboxSyncState() + 80);
    v29 = *(v18 + 96);
    *&v39[116] = *(v18 + 112);
    *&v39[100] = v29;
    v30 = *(v18 + 64);
    *&v39[84] = *(v18 + 80);
    *&v39[68] = v30;
    v39[180] = *(v18 + 176);
    v31 = *(v18 + 144);
    *&v39[164] = *(v18 + 160);
    v32 = *(v18 + 128);
    *&v39[148] = v31;
    *&v39[132] = v32;
    v33 = *(v18 + 16);
    *&v39[4] = *v18;
    *&v39[20] = v33;
    v34 = *(v18 + 48);
    *&v39[36] = *(v18 + 32);
    *&v39[52] = v34;
    v40 = v17;
    v49 = *&v39[128];
    v50 = *&v39[144];
    v51[0] = *&v39[160];
    *(v51 + 13) = *&v39[173];
    v45 = *&v39[64];
    v46 = *&v39[80];
    v47 = *&v39[96];
    v48 = *&v39[112];
    v41 = *v39;
    v42 = *&v39[16];
    v43 = *&v39[32];
    v44 = *&v39[48];
    sub_1B075DC38(v37, v36);
    sub_1B0A90F18(&v40);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ABB908()
{
  v5[8] = 0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B300);
  *v5 = *(v0 + 9);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2 = v1;
  }

  else
  {
    v2 = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1B2726E80](v2, v3);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return *&v5[1];
}

uint64_t sub_1B0ABBA10()
{
  if (qword_1EB6DDFC0 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0ABBA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0ABA9A4(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_1B0ABBAEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4) == 2)
  {
    v5 = v4 + *(a4 + 36);
    return sub_1B0AC5118(*result);
  }

  return result;
}

uint64_t sub_1B0ABBB38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *(v0 + 13);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABBBC8()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  MEMORY[0x1B2728D70](*(v0 + 8) | (*(v0 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0ABBC3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *(v0 + 13);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

BOOL sub_1B0ABBCC8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 12))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 12))
  {
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1B0ABC504(*a1, v3 | *(a1 + 2) | (*(a1 + 13) << 40), *a2, v4 | *(a2 + 8) | (*(a2 + 13) << 40));
}

uint64_t sub_1B0ABBD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 40);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v22 = a1;
  sub_1B0B42F4C(v12, sub_1B0ABCDC0, v16, v15);
  v23 = a2;
  sub_1B0E46EE8();
  v20 = a1;
  v21 = &v23;
  sub_1B0B42F4C(v9, sub_1B0ABCF80, v16, v12);
  MessageIdentifierSet.subtracting(_:)(v12, v19);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0ABBED8(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      if (BYTE4(a2) == 2)
      {
        return a2 == a1;
      }
    }

    else if (a1)
    {
      if (BYTE4(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE4(a2) == 3 && !a2)
    {
      return 1;
    }
  }

  else
  {
    if (!BYTE4(a1))
    {
      if (!BYTE4(a2))
      {
        return a2 == a1;
      }

      return 0;
    }

    if (BYTE4(a2) == 1)
    {
      return a2 == a1;
    }
  }

  return 0;
}

uint64_t sub_1B0ABBF54(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v38 = _s18SectionDataRequestVMa();
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for DownloadTask.CommandID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v38 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4110, &qword_1B0EC3300);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v29 = *(v28 + 56);
  sub_1B0ABCCD8(a1, &v38 - v26, type metadata accessor for DownloadTask.CommandID);
  sub_1B0ABCCD8(v41, &v27[v29], type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B0ABCCD8(v27, v20, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_17;
      }

      sub_1B03C60A4(&v27[v29], v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v31 = sub_1B0E46E08();
      sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v20;
    }

    else
    {
      sub_1B0ABCCD8(v27, v23, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_17:
        sub_1B0398EFC(v27, &qword_1EB6E4110, &qword_1B0EC3300);
LABEL_18:
        v31 = 0;
        return v31 & 1;
      }

      sub_1B03C60A4(&v27[v29], v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v31 = sub_1B0E46E08();
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v23;
    }

    sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_22:
    sub_1B03D0D24(v27, type metadata accessor for DownloadTask.CommandID);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1B0ABCCD8(v27, v17, type metadata accessor for DownloadTask.CommandID);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v31 = *&v27[v29] == *v17;
    goto LABEL_22;
  }

  v33 = v40;
  sub_1B0ABCCD8(v27, v40, type metadata accessor for DownloadTask.CommandID);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B03D0D24(v33, _s18SectionDataRequestVMa);
    goto LABEL_17;
  }

  v34 = v39;
  sub_1B0ABCD58(&v27[v29], v39, _s18SectionDataRequestVMa);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0 || (v35 = *(v38 + 20), v36 = *(v34 + v35), (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v33 + v35)) & 1) == 0) || (sub_1B044DB64(*(v33 + *(v38 + 24)), *(v34 + *(v38 + 24))) & 1) == 0)
  {
    sub_1B03D0D24(v34, _s18SectionDataRequestVMa);
    sub_1B03D0D24(v33, _s18SectionDataRequestVMa);
    sub_1B03D0D24(v27, type metadata accessor for DownloadTask.CommandID);
    goto LABEL_18;
  }

  sub_1B03D0D24(v34, _s18SectionDataRequestVMa);
  sub_1B03D0D24(v33, _s18SectionDataRequestVMa);
  sub_1B03D0D24(v27, type metadata accessor for DownloadTask.CommandID);
  v31 = 1;
  return v31 & 1;
}

BOOL sub_1B0ABC504(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 ^ a4;
  if (a2 != a4)
  {
    return 0;
  }

  v5 = *(result + 16);
  if (v5 != *(a3 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = result == a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if ((a2 & 0x100000000) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if ((a4 & 0x100000000) != 0)
    {
      v10 = 6581810;
    }

    else
    {
      v10 = 7631665;
    }

    if (v9 == v10)
    {
      swift_bridgeObjectRelease_n();
      return (v4 & 0xFF0000000000) == 0;
    }

    v11 = sub_1B0E46A78();
    swift_bridgeObjectRelease_n();
    if (v11)
    {
      return (v4 & 0xFF0000000000) == 0;
    }

    return 0;
  }

  v7 = (result + 32);
  v8 = (a3 + 32);
  while (v5)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ABC5E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
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

uint64_t sub_1B0ABC628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0ABC69C()
{
  sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    _s18SectionDataRequestVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1B0ABC764()
{
  result = qword_1EB6DDFB8;
  if (!qword_1EB6DDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDFB8);
  }

  return result;
}

uint64_t sub_1B0ABC800(uint64_t a1)
{
  result = sub_1B0ABC858(&qword_1EB6DDF98, type metadata accessor for DownloadTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0ABC858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B0ABC8A4()
{
  result = qword_1EB6DD1E8;
  if (!qword_1EB6DD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1E8);
  }

  return result;
}

uint64_t sub_1B0ABC908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ABC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 104);
  v15 = *(type metadata accessor for DownloadTask(0) + 36);
  sub_1B0ABCCD8(a1, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    return sub_1B03D0D24(v13, type metadata accessor for UntaggedResponse);
  }

  memcpy(v35, v13, sizeof(v35));
  if ((v35[12] & 1) == 0)
  {
    if (*(v14 + 16))
    {
      v16 = *&v35[8];
      v17 = sub_1B03FE284(*&v35[8]);
      if (v18)
      {
        v19 = *(*(v14 + 56) + 16 * v17 + 9);
        v20 = *&v35[540];
        v21 = v35[544];
        v31 = *&v35[336];
        v32 = *&v35[352];
        v33 = *&v35[368];
        v34 = v35[384];
        v27 = *&v35[272];
        v28 = *&v35[288];
        v29 = *&v35[304];
        v30 = *&v35[320];
        v23 = *&v35[208];
        v24 = *&v35[224];
        v25 = *&v35[240];
        v26 = *&v35[256];
        if (sub_1B07AB810(&v23) == 1)
        {
          if ((v21 & 1) == 0)
          {
            sub_1B0ACC6E4(v16, v20, v19, a2, a3, a5);
            return sub_1B0AA4C0C(v35);
          }
        }

        else
        {
          v36[8] = v31;
          v36[9] = v32;
          v36[10] = v33;
          v37 = v34;
          v36[4] = v27;
          v36[5] = v28;
          v36[6] = v29;
          v36[7] = v30;
          v36[0] = v23;
          v36[1] = v24;
          v36[2] = v25;
          v36[3] = v26;
          if ((v21 & 1) == 0)
          {
            sub_1B0ACBE30(v16, v36, v20, a2, a3, a5);
            return sub_1B0AA4C0C(v35);
          }
        }

        sub_1B0AC3E24(v16, *&v35[200], a5);
      }
    }
  }

  return sub_1B0AA4C0C(v35);
}

void sub_1B0ABCBB0(unint64_t a1, uint64_t a2)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xD && (*(v2 + 96) | (*(v2 + 96) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
    v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (sub_1B04520BC(*(v2 + 88), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      if (*(v2 + 9))
      {
        v8 = 6581810;
      }

      else
      {
        v8 = 7631665;
      }

      if (v4)
      {
        v9 = 6581810;
      }

      else
      {
        v9 = 7631665;
      }

      if (v8 == v9)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v10 = sub_1B0E46A78();
        swift_bridgeObjectRelease_n();
        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      if (*(*(v2 + 104) + 16))
      {
        v11 = v2;
        v12 = *(v2 + 104);
        sub_1B03FE284(v5);
        if (v13)
        {
          v14 = v11 + *(type metadata accessor for DownloadTask(0) + 36);
          sub_1B0AC1DBC(v5, v6, v7, a2);
        }
      }
    }
  }
}

uint64_t sub_1B0ABCCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ABCD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ABCE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.contains(_:)(&v12, v7);
    if ((result & 1) == 0)
    {
      if (!*(a5 + 16) || (result = sub_1B03FE284(a2), (v9 & 1) == 0))
      {
        v10 = a2;
        return MessageIdentifierSet.insert(_:)(v11, &v10, v7);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTask.ActionID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadTask.ActionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0ABCF40(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1B0ABCF58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_1B0ABCF9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD020()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v2 = *v0;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0ABD084()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD104(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1B0ABD3E8(*a1, v3 | *(a1 + 8), *a2, v4 | *(a2 + 8));
}

uint64_t sub_1B0ABD148()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  sub_1B0B0AB48(v7, v3);
  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD1E0(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  MEMORY[0x1B2728D70](*(v1 + 8));
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  sub_1B0B0AB48(a1, v4);
  return MEMORY[0x1B2728D70](v5);
}

uint64_t sub_1B0ABD250()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  sub_1B0B0AB48(v7, v3);
  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0ABD2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1B0ABD428(v5, v7) & 1;
}

uint64_t sub_1B0ABD350(uint64_t a1, int *a2)
{
  if (*(a2 + 16) == 1)
  {
    v2 = *a2;
    v7 = *a2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.contains(_:)(&v7, v3);
    if ((result & 1) == 0)
    {
      v5 = v2;
      return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
    }
  }

  return result;
}

uint64_t sub_1B0ABD3E8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  result = 0;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if ((a4 & 1) == 0 && v6 == a1)
  {
    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  return result;
}

uint64_t *sub_1B0ABD428(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = result[3];
  if (v4)
  {
    v6 = v2 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
    {
      v9 = result;
      if (sub_1B04520BC(result[3], a2[3]) & 1) != 0 && (sub_1B0B749AC(v9[5], a2[5]))
      {
        return (*(v9 + 48) == *(a2 + 48));
      }
    }

    return 0;
  }

  v7 = (v2 + 32);
  v8 = (v3 + 32);
  while (v4)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0ABD518(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v37 = *(result + 49);
  LOBYTE(v9) = *(result + 48);
  v10 = *a3;
  result = sub_1B03FE284(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1B0B308A0(v15, i & 1);
    v17 = *a3;
    result = sub_1B03FE284(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = v7;
    v22 = v19[7] + 16 * result;
    *v22 = v8;
    *(v22 + 8) = v9;
    *(v22 + 9) = v37;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_1B0B8DB64();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v19[7] + 16 * result;
  *v20 = v8;
  *(v20 + 8) = v9;
  *(v20 + 9) = v37;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 73); ; i += 24)
    {
      v6 = *(i - 17);
      v9 = *(i - 9);
      v8 = *i;
      v3 = *(i - 1);
      v26 = *a3;
      result = sub_1B03FE284(v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        break;
      }

      LODWORD(v7) = v27;
      if (v26[3] < v30)
      {
        sub_1B0B308A0(v30, 1);
        v31 = *a3;
        result = sub_1B03FE284(v6);
        if ((v7 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v7)
      {
        v25 = v33[7] + 16 * result;
        *v25 = v9;
        *(v25 + 8) = v3;
        *(v25 + 9) = v8;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        *(v33[6] + 4 * result) = v6;
        v34 = v33[7] + 16 * result;
        *v34 = v9;
        *(v34 + 8) = v3;
        *(v34 + 9) = v8;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B0ABD77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 8);
  v9 = a1[3];
  v33 = *(a1 + 8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v26 = a1[3];
    v27 = *(a1 + 8);
    v28 = a1[1];
    v29 = *a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A004(0, v10, 0);
    v11 = a2;
    v12 = 0;
    v13 = v34;
    v14 = *(v34 + 16);
    v15 = 24 * v14;
    do
    {
      v16 = *(v11 + v12 + 32);
      v17 = *(v11 + v12 + 40);
      v18 = *(v11 + v12 + 48);
      v19 = *(v11 + v12 + 49);
      v34 = v13;
      v20 = *(v13 + 24);
      v21 = v14 + 1;
      if (v14 >= v20 >> 1)
      {
        sub_1B0B0A004((v20 > 1), v14 + 1, 1);
        v11 = a2;
        v13 = v34;
      }

      *(v13 + 16) = v21;
      v22 = v13 + v15 + v12;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 49) = v19;
      v12 += 24;
      v14 = v21;
      --v10;
    }

    while (v10);

    v4 = a3;
    v6 = v29;
    v5 = a4;
    v7 = v28;
    v8 = v27;
    v9 = v26;
    if (*(v13 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v23 = MEMORY[0x1E69E7CC8];
    goto LABEL_10;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4118, &qword_1B0EC3318);
  v23 = sub_1B0E466A8();
LABEL_10:
  v34 = v23;
  sub_1B0ABD518(v13, 1, &v34);

  v25 = v34;
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v33;
  *(v5 + 40) = v25;
  *(v5 + 48) = v4;
  return result;
}

uint64_t sub_1B0ABD970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B0ABD9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5BatchV7MessageVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s5BatchV7MessageVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0ABDAB4()
{
  result = qword_1EB6E4120;
  if (!qword_1EB6E4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4120);
  }

  return result;
}

unint64_t sub_1B0ABDB0C()
{
  result = qword_1EB6E4128;
  if (!qword_1EB6E4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment.Power(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Environment.Power(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0ABDCB4()
{
  result = qword_1EB6E4130;
  if (!qword_1EB6E4130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4138, qword_1B0EC3450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4130);
  }

  return result;
}

unint64_t sub_1B0ABDD1C()
{
  result = qword_1EB6E4140;
  if (!qword_1EB6E4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4140);
  }

  return result;
}

uint64_t sub_1B0ABDD70(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A0A4(0, v4, 0);
  v5 = v24;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v10 = v21;
    v11 = v23;
    v12 = v22;
    v24 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_1B0B0A0A4((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v9 = v18;
      v5 = v24;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 40 * v14;
    *(v15 + 32) = v9;
    *(v15 + 48) = v10;
    *(v15 + 68) = (v12 | (v11 << 32)) >> 32;
    *(v15 + 64) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ABDEA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v98 = a3;
  v106 = a1;
  v107 = a2;
  v104 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v93 - v7;
  v95 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v102 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v93 - v11;
  v108 = type metadata accessor for DownloadTask.CommandID(0);
  v12 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v105 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for MessageHeader();
  v14 = *(v116 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v103 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  v17 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v19 = &v93 - v18;
  v20 = _s19MessageHeaderStatusOMa(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v101 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v115 = &v93 - v26;
  v27 = _s25MessageSectionsToDownloadVMa(0);
  v120 = *(v27 - 8);
  v28 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = *(_s18InProgressMessagesVMa(0) + 32);
  v97 = v4;
  v31 = *(v4 + v96);
  v119 = *(v31 + 16);
  if (!v119)
  {
LABEL_29:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    return (*(*(v66 - 8) + 56))(v104, 1, 1, v66);
  }

  v32 = 0;
  v122 = v31;
  v123 = 0;
  v33 = &v125;
  v94 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v118 = v31 + v94;
  v111 = v19;
  v112 = (v14 + 56);
  v114 = (v14 + 48);
  v121 = v30;
  while (1)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v117 = (*(v120 + 72) * v32);
    v34 = sub_1B0ACE73C(&v117[v118], v30, _s25MessageSectionsToDownloadVMa);
    v19 = v27;
    v4 = *(v30 + *(v27 + 24));
    v35 = *(v4 + 2);
    if (v35)
    {
      break;
    }

LABEL_12:
    v4 = &v93;
    v27 = v19;
    v30 = v121;
    v49 = *(v121 + *(v19 + 7));
    *&v125 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v34);
    *(&v93 - 2) = &v125;
    v19 = v123;
    v51 = sub_1B0B380AC(sub_1B0ACEA64, (&v93 - 4), v50);
    v123 = v19;
    v31 = v122;
    if (v51)
    {
LABEL_4:
      sub_1B0ACE7A4(v30, _s25MessageSectionsToDownloadVMa);
    }

    else
    {
      v52 = *(v27 + 20);
      v53 = v30;
      v54 = v115;
      v14 = v116;
      v110 = *v112;
      v110(v115, 2, 3, v116);
      v55 = *(v113 + 48);
      v56 = v53 + v52;
      v19 = v111;
      sub_1B0ACE73C(v56, v111, _s19MessageHeaderStatusOMa);
      sub_1B0ACE73C(v54, &v19[v55], _s19MessageHeaderStatusOMa);
      v4 = *v114;
      v57 = (*v114)(v19, 3, v14);
      if (v57 > 1)
      {
        if (v57 == 2)
        {
          sub_1B0ACE7A4(v115, _s19MessageHeaderStatusOMa);
          v59 = v4(&v19[v55], 3, v116);
          v30 = v121;
          if (v59 != 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE7A4(v115, _s19MessageHeaderStatusOMa);
          v61 = v4(&v19[v55], 3, v116);
          v30 = v121;
          if (v61 != 3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v14 = v109;
        if (v57)
        {
          sub_1B0ACE7A4(v115, _s19MessageHeaderStatusOMa);
          v60 = v4(&v19[v55], 3, v116);
          v30 = v121;
          if (v60 != 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE73C(v19, v109, _s19MessageHeaderStatusOMa);
          v58 = v4(&v19[v55], 3, v116);
          v30 = v121;
          if (v58)
          {
            sub_1B0ACE7A4(v115, _s19MessageHeaderStatusOMa);
            sub_1B0ACE7A4(v14, type metadata accessor for MessageHeader);
LABEL_23:
            sub_1B0398EFC(v19, &qword_1EB6E4160, &unk_1B0EC3C48);
            v62 = _s25MessageSectionsToDownloadVMa;
            v63 = v30;
LABEL_24:
            sub_1B0ACE7A4(v63, v62);
            v31 = v122;
            goto LABEL_5;
          }

          v4 = v103;
          sub_1B0ACE804(&v19[v55], v103, type metadata accessor for MessageHeader);
          v64 = static MessageHeader.== infix(_:_:)();
          sub_1B0ACE7A4(v4, type metadata accessor for MessageHeader);
          sub_1B0ACE7A4(v115, _s19MessageHeaderStatusOMa);
          sub_1B0ACE7A4(v14, type metadata accessor for MessageHeader);
          if ((v64 & 1) == 0)
          {
            sub_1B0ACE7A4(v30, _s25MessageSectionsToDownloadVMa);
            v62 = _s19MessageHeaderStatusOMa;
            v63 = v19;
            goto LABEL_24;
          }
        }
      }

      sub_1B0ACE7A4(v19, _s19MessageHeaderStatusOMa);
      v4 = v105;
      *v105 = *v30;
      swift_storeEnumTagMultiPayload();
      v65 = sub_1B0B70E5C(v4, v106, v107);
      sub_1B0ACE7A4(v4, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE7A4(v30, _s25MessageSectionsToDownloadVMa);
      v31 = v122;
      if ((v65 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if (++v32 == v119)
    {
      goto LABEL_29;
    }
  }

  v27 = 0;
  v14 = v4 + 32;
  while (v27 < *(v4 + 2))
  {
    v36 = *v14;
    v37 = *(v14 + 32);
    v126 = *(v14 + 16);
    v127 = v37;
    v125 = v36;
    v38 = *(v14 + 48);
    v39 = *(v14 + 64);
    v40 = *(v14 + 96);
    v130 = *(v14 + 80);
    v131 = v40;
    v128 = v38;
    v129 = v39;
    v41 = *(v14 + 112);
    v42 = *(v14 + 128);
    v43 = *(v14 + 160);
    v134 = *(v14 + 144);
    v135 = v43;
    v132 = v41;
    v133 = v42;
    v44 = *(v14 + 176);
    v45 = *(v14 + 192);
    v46 = *(v14 + 208);
    *(v138 + 9) = *(v14 + 217);
    v137 = v45;
    v138[0] = v46;
    v136 = v44;
    v31 = *(&v126 + 1);
    sub_1B0ACE448(&v125, v124);
    v47 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v47);

    v34 = sub_1B0ACE480(&v125);
    if (v48)
    {
      v27 = v19;
      v30 = v121;
      v31 = v122;
      goto LABEL_4;
    }

    ++v27;
    v14 += 240;
    if (v35 == v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  if (v32 >= *(v31 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v117;
  LODWORD(v33) = *&v117[v118];
  v4 = v101;
  v110(v101, 3, 3, v116);
  result = swift_isUniquelyReferenced_nonNull_native();
  v14 = v102;
  if (result)
  {
    goto LABEL_33;
  }

LABEL_40:
  result = sub_1B0B8C8EC(v31);
  v31 = result;
LABEL_33:
  if (v32 >= *(v31 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1B0ACE98C(v4, &v19[v31 + v94 + *(v27 + 20)]);
    *(v97 + v96) = v31;
    v68 = v98;
    v69 = v99;
    sub_1B0ACE73C(v98, v99, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE73C(v68, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v70 = sub_1B0E43988();
    v71 = sub_1B0E458D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v124[0] = v73;
      *v72 = 68159491;
      LODWORD(v123) = v33;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v74 = v95;
      v75 = v14;
      v76 = v14 + *(v95 + 20);
      *(v72 + 10) = *v76;
      *(v72 + 11) = 2082;
      v77 = v69 + *(v74 + 20);
      *(v72 + 13) = sub_1B0399D64(*(v77 + 8), *(v77 + 16), v124);
      *(v72 + 21) = 1040;
      *(v72 + 23) = 2;
      *(v72 + 27) = 512;
      LOWORD(v76) = *(v76 + 24);
      sub_1B0ACE7A4(v75, type metadata accessor for MailboxTaskLogger);
      *(v72 + 29) = v76;
      *(v72 + 31) = 2160;
      *(v72 + 33) = 0x786F626C69616DLL;
      *(v72 + 41) = 2085;
      v78 = *(v77 + 32);
      LODWORD(v77) = *(v77 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v69, type metadata accessor for MailboxTaskLogger);
      *&v125 = v78;
      DWORD2(v125) = v77;
      v79 = sub_1B0E44BA8();
      v81 = sub_1B0399D64(v79, v80, v124);
      LODWORD(v33) = v123;

      *(v72 + 43) = v81;
      *(v72 + 51) = 1024;
      *(v72 + 53) = v33;
      _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Fetching headers for message %u", v72, 0x39u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v73, -1, -1);
      MEMORY[0x1B272C230](v72, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v14, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v69, type metadata accessor for MailboxTaskLogger);
    }

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v83 = v104;
    v84 = v104 + *(v82 + 48);
    *v104 = v33;
    swift_storeEnumTagMultiPayload();
    LODWORD(v125) = v33;
    v85 = sub_1B041C1E8();
    v86 = v100;
    MessageIdentifierSet.init(_:)(&v125, &type metadata for UID, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1B0EC3500;
    *(v87 + 32) = 7;
    *(v87 + 40) = 0;
    *(v87 + 48) = 0;
    *(v87 + 56) = 0;
    *(v87 + 68) = -64;
    *(v87 + 64) = 0;
    v88 = SectionSpecifier.header.unsafeMutableAddressor();
    v90 = *v88;
    v89 = v88[1];
    v91 = *(v88 + 16);
    *(v87 + 72) = 1;
    *(v87 + 80) = v90;
    *(v87 + 88) = v89;
    *(v87 + 96) = v91;
    *(v87 + 108) = 33;
    *(v87 + 104) = 0;
    v92 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    sub_1B03C60A4(v86, v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v92 = v87;
    *(v92 + 8) = 0;
    *(v92 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v82 - 8) + 56))(v83, 0, 1, v82);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0ACE964(v89, v91);
  }

  return result;
}

uint64_t sub_1B0ABEC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v205 = a5;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v232 = *(v229 - 8);
  v10 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v202 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v194 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v223 = &v194 - v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v228);
  v206 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v225 = &v194 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v207 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v224 = &v194 - v24;
  v216 = _s25MessageSectionsToDownloadVMa(0);
  v203 = *(v216 - 8);
  v25 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v210 = (&v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v201 = (&v194 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v233 = (&v194 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v221 = (&v194 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4198, &unk_1B0EC3C80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v199 = &v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v196 = &v194 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v197 = &v194 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v209 = &v194 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v198 = &v194 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v208 = &v194 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v214 = &v194 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v194 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v213 = &v194 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v194 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v194 - v57;
  v59 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  v222 = a1;
  v236 = a3;
  sub_1B0ACEEC8(a3, v59, v55);
  v60 = _s18SectionDataRequestVMa();
  v61 = *(v60 - 8);
  v234 = *(v61 + 48);
  v235 = v61 + 48;
  if (v234(v55, 1, v60) != 1)
  {
    sub_1B0ACE804(v55, v58, _s18SectionDataRequestVMa);
    (*(v61 + 56))(v58, 0, 1, v60);
LABEL_54:
    if (v234(v58, 1, v60) == 1)
    {
      sub_1B0398EFC(v58, &qword_1EB6E4198, &unk_1B0EC3C80);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
      return (*(*(v183 - 8) + 56))(v205, 1, 1, v183);
    }

    else
    {
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
      v186 = v205;
      v187 = v205 + *(v185 + 48);
      *&v265 = &unk_1F2710BF0;
      v188 = *&v58[*(v60 + 24)];
      MEMORY[0x1EEE9AC00](v185);
      *(&v194 - 2) = v58;
      v190 = sub_1B0ABDD70(sub_1B0ACEA44, (&v194 - 4), v189);
      sub_1B0AFC708(v190);
      sub_1B0ACE73C(v58, v186, _s18SectionDataRequestVMa);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v191 = v202;
      sub_1B03B5C80(v58, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v192 = v265;
      v193 = v187 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03B5C80(v191, v187, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v193 = v192;
      *(v193 + 8) = 0;
      *(v193 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v191, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ACE7A4(v58, _s18SectionDataRequestVMa);
      return (*(*(v185 - 8) + 56))(v186, 0, 1, v185);
    }
  }

  v194 = v55;
  v200 = v58;
  v62 = *(v59 + 16);
  v226 = (v232 + 48);
  v227 = (v232 + 56);
  v232 = v61 + 56;
  swift_bridgeObjectRetain_n();
  v217 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v230 = v60;
  v215 = v62;
  v218 = a4;
  v195 = v59;
  if (!v62)
  {
LABEL_28:
    v121 = *(v59 + 16);
    if (v215 == v121)
    {

      (*v232)(v200, 1, 1, v60);
    }

    else
    {
      if (v215 >= v121)
      {
        goto LABEL_59;
      }

      v122 = v59 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v215;
      v123 = *(v122 + *(v216 + 24));
      sub_1B0ACE73C(v122, v201, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE73C(v122, v210, _s25MessageSectionsToDownloadVMa);
      v124 = *(v123 + 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v233 = v123;
      v125 = 0;
      if (v124)
      {
        v126 = v123 + 10;
        while (1)
        {
          v127 = *(v126 - 8);
          v128 = *(v126 + 24);
          v266 = *(v126 + 8);
          v267 = v128;
          v265 = v127;
          v129 = *(v126 + 40);
          v130 = *(v126 + 56);
          v131 = *(v126 + 88);
          v270 = *(v126 + 72);
          v271 = v131;
          v268 = v129;
          v269 = v130;
          v132 = *(v126 + 104);
          v133 = *(v126 + 120);
          v134 = *(v126 + 152);
          v274 = *(v126 + 136);
          v275 = v134;
          v272 = v132;
          v273 = v133;
          v135 = *(v126 + 168);
          v136 = *(v126 + 184);
          v137 = *(v126 + 200);
          *(v278 + 9) = *(v126 + 209);
          v277 = v136;
          v278[0] = v137;
          v276 = v135;
          v138 = *v210;
          v139 = v126[1];
          v278[2] = *v126;
          v279[0] = v139;
          *(v279 + 15) = *(v126 + 31);
          v140 = *(&v266 + 1);
          sub_1B0ACE448(&v265, &v251);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v141 = sub_1B0AD074C(v138, v140, v236);

          v142 = sub_1B0ACFEE0(1, v141);

          if (*(v142 + 16))
          {
            LODWORD(v251) = v138;
            v143 = sub_1B041C1E8();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v144 = v206;
            MessageIdentifierSet.init(_:)(&v251, &type metadata for UID, v143);
            if (MessageIdentifierSet.count.getter() <= 0)
            {
              sub_1B0398EFC(v144, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v147 = 1;
              v146 = v207;
            }

            else
            {
              v145 = v204;
              sub_1B03C60A4(v144, v204, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v146 = v207;
              sub_1B03C60A4(v145, v207, &unk_1EB6E26C0, &unk_1B0E9DE10);
              v147 = 0;
            }

            v150 = v229;
            (*v227)(v146, v147, 1, v229);
            if ((*v226)(v146, 1, v150) == 1)
            {
              goto LABEL_63;
            }

            v151 = v146;
            v148 = v209;
            sub_1B03C60A4(v151, v209, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v149 = v230;
            *(v148 + *(v230 + 20)) = v140;
            *(v148 + *(v149 + 24)) = v142;
            (*v232)(v148, 0, 1, v149);
          }

          else
          {
            v148 = v209;
            v149 = v230;
            (*v232)(v209, 1, 1, v230);
          }

          sub_1B0ACE480(&v265);
          v152 = v234(v148, 1, v149);
          sub_1B0398EFC(v148, &qword_1EB6E4198, &unk_1B0EC3C80);
          if (v152 != 1)
          {
            break;
          }

          ++v125;
          v126 += 15;
          if (v124 == v125)
          {
            v125 = v124;
            break;
          }
        }

        v60 = v230;
        v123 = v233;
      }

      else
      {
        v60 = v230;
      }

      v153 = *(v123 + 2);
      if (v125 == v153)
      {

        sub_1B0ACE7A4(v201, _s25MessageSectionsToDownloadVMa);
        v154 = *v232;
        v155 = v198;
        (*v232)(v198, 1, 1, v60);

        v156 = v199;
      }

      else
      {
        if (v125 >= v153)
        {
          goto LABEL_60;
        }

        v157 = &v123[60 * v125];
        v158 = *(v157 + 2);
        v159 = *(v157 + 4);
        v252 = *(v157 + 3);
        v253 = v159;
        v251 = v158;
        v160 = *(v157 + 5);
        v161 = *(v157 + 6);
        v162 = *(v157 + 8);
        v256 = *(v157 + 7);
        v257 = v162;
        v254 = v160;
        v255 = v161;
        v163 = *(v157 + 9);
        v164 = *(v157 + 10);
        v165 = *(v157 + 12);
        v260 = *(v157 + 11);
        v261 = v165;
        v258 = v163;
        v259 = v164;
        v166 = *(v157 + 13);
        v167 = *(v157 + 14);
        v168 = *(v157 + 15);
        *(v264 + 9) = *(v157 + 249);
        v263 = v167;
        v264[0] = v168;
        v262 = v166;
        v169 = *(v157 + 15);
        v249 = *(v157 + 14);
        v250[0] = v169;
        *(v250 + 9) = *(v157 + 249);
        v170 = *(v157 + 11);
        v245 = *(v157 + 10);
        v246 = v170;
        v171 = *(v157 + 13);
        v247 = *(v157 + 12);
        v248 = v171;
        v172 = *(v157 + 7);
        v241 = *(v157 + 6);
        v242 = v172;
        v173 = *(v157 + 9);
        v243 = *(v157 + 8);
        v244 = v173;
        v174 = *(v157 + 3);
        v237 = *(v157 + 2);
        v238 = v174;
        v175 = *(v157 + 5);
        v239 = *(v157 + 4);
        v240 = v175;
        sub_1B0ACE448(&v251, &v265);
        v176 = v197;
        v177 = v201;
        sub_1B0ACFA14(&v237, v236, v201, v197);

        sub_1B0ACE7A4(v177, _s25MessageSectionsToDownloadVMa);
        v277 = v249;
        v278[0] = v250[0];
        *(v278 + 9) = *(v250 + 9);
        v273 = v245;
        v274 = v246;
        v275 = v247;
        v276 = v248;
        v269 = v241;
        v270 = v242;
        v271 = v243;
        v272 = v244;
        v265 = v237;
        v266 = v238;
        v267 = v239;
        v268 = v240;
        sub_1B0ACE480(&v265);
        v178 = v196;
        sub_1B03B5C80(v176, v196, &qword_1EB6E4198, &unk_1B0EC3C80);
        if (v234(v178, 1, v60) == 1)
        {
          goto LABEL_65;
        }

        v155 = v198;
        sub_1B0ACE804(v178, v198, _s18SectionDataRequestVMa);
        sub_1B0398EFC(v176, &qword_1EB6E4198, &unk_1B0EC3C80);
        v154 = *v232;
        (*v232)(v155, 0, 1, v60);

        v156 = v199;
      }

      sub_1B0ACE7A4(v210, _s25MessageSectionsToDownloadVMa);

      sub_1B03B5C80(v155, v156, &qword_1EB6E4198, &unk_1B0EC3C80);
      if (v234(v156, 1, v60) == 1)
      {
        goto LABEL_64;
      }

      v179 = v156;
      v180 = v200;
      sub_1B0ACE804(v179, v200, _s18SectionDataRequestVMa);
      sub_1B0398EFC(v155, &qword_1EB6E4198, &unk_1B0EC3C80);
      v154(v180, 0, 1, v60);
    }

    v181 = v194;
    v182 = v234(v194, 1, v60);
    v58 = v200;
    if (v182 != 1)
    {
      sub_1B0398EFC(v181, &qword_1EB6E4198, &unk_1B0EC3C80);
    }

    goto LABEL_54;
  }

  v63 = 0;
  v212 = v59 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
  v211 = *(v203 + 72);
  while (1)
  {
    v219 = v63;
    v64 = v212 + v211 * v63;
    v65 = *(v64 + *(v216 + 24));
    sub_1B0ACE73C(v64, v221, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v64, v233, _s25MessageSectionsToDownloadVMa);
    v66 = *(v65 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v231 = v66;
    v220 = v65;
    v67 = 0;
    if (v66)
    {
      v68 = (v65 + 40);
      while (1)
      {
        v69 = *(v68 - 8);
        v70 = *(v68 + 24);
        v266 = *(v68 + 8);
        v267 = v70;
        v265 = v69;
        v71 = *(v68 + 40);
        v72 = *(v68 + 56);
        v73 = *(v68 + 88);
        v270 = *(v68 + 72);
        v271 = v73;
        v268 = v71;
        v269 = v72;
        v74 = *(v68 + 104);
        v75 = *(v68 + 120);
        v76 = *(v68 + 152);
        v274 = *(v68 + 136);
        v275 = v76;
        v272 = v74;
        v273 = v75;
        v77 = *(v68 + 168);
        v78 = *(v68 + 184);
        v79 = *(v68 + 200);
        *(v278 + 9) = *(v68 + 209);
        v277 = v78;
        v278[0] = v79;
        v276 = v77;
        v80 = *v233;
        v81 = v68[1];
        v279[2] = *v68;
        v280[0] = v81;
        *(v280 + 15) = *(v68 + 31);
        v82 = *(&v266 + 1);
        sub_1B0ACE448(&v265, &v251);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v83 = sub_1B0AD074C(v80, v82, v236);

        v84 = sub_1B0ACFEE0(1, v83);

        if (*(v84 + 16))
        {
          LODWORD(v251) = v80;
          v85 = sub_1B041C1E8();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v86 = v225;
          MessageIdentifierSet.init(_:)(&v251, &type metadata for UID, v85);
          if (MessageIdentifierSet.count.getter() <= 0)
          {
            sub_1B0398EFC(v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v89 = 1;
            v88 = v224;
          }

          else
          {
            v87 = v223;
            sub_1B03C60A4(v86, v223, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v88 = v224;
            sub_1B03C60A4(v87, v224, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v89 = 0;
          }

          v90 = v229;
          (*v227)(v88, v89, 1, v229);
          v91 = (*v226)(v88, 1, v90) == 1;
          v92 = v88;
          v60 = v230;
          if (v91)
          {
            goto LABEL_61;
          }

          sub_1B03C60A4(v92, v50, &unk_1EB6E26C0, &unk_1B0E9DE10);
          *&v50[*(v60 + 20)] = v82;
          *&v50[*(v60 + 24)] = v84;
          (*v232)(v50, 0, 1, v60);
        }

        else
        {
          v60 = v230;
          (*v232)(v50, 1, 1, v230);
        }

        sub_1B0ACE480(&v265);
        v93 = v234(v50, 1, v60);
        sub_1B0398EFC(v50, &qword_1EB6E4198, &unk_1B0EC3C80);
        if (v93 != 1)
        {
          break;
        }

        ++v67;
        v68 += 15;
        if (v231 == v67)
        {
          v67 = v231;
          break;
        }
      }

      v65 = v220;
    }

    v94 = *(v65 + 16);
    if (v67 == v94)
    {

      sub_1B0ACE7A4(v221, _s25MessageSectionsToDownloadVMa);
      v95 = v213;
      (*v232)(v213, 1, 1, v60);

      goto LABEL_22;
    }

    v96 = v214;
    if (v67 >= v94)
    {
      break;
    }

    v97 = (v65 + 240 * v67);
    v98 = v97[2];
    v99 = v97[4];
    v252 = v97[3];
    v253 = v99;
    v251 = v98;
    v100 = v97[5];
    v101 = v97[6];
    v102 = v97[8];
    v256 = v97[7];
    v257 = v102;
    v254 = v100;
    v255 = v101;
    v103 = v97[9];
    v104 = v97[10];
    v105 = v97[12];
    v260 = v97[11];
    v261 = v105;
    v258 = v103;
    v259 = v104;
    v106 = v97[13];
    v107 = v97[14];
    v108 = v97[15];
    *(v264 + 9) = *(v97 + 249);
    v263 = v107;
    v264[0] = v108;
    v262 = v106;
    v109 = v97[15];
    v249 = v97[14];
    v250[0] = v109;
    *(v250 + 9) = *(v97 + 249);
    v110 = v97[11];
    v245 = v97[10];
    v246 = v110;
    v111 = v97[13];
    v247 = v97[12];
    v248 = v111;
    v112 = v97[7];
    v241 = v97[6];
    v242 = v112;
    v113 = v97[9];
    v243 = v97[8];
    v244 = v113;
    v114 = v97[3];
    v237 = v97[2];
    v238 = v114;
    v115 = v97[5];
    v239 = v97[4];
    v240 = v115;
    sub_1B0ACE448(&v251, &v265);
    v116 = v96;
    v117 = v221;
    sub_1B0ACFA14(&v237, v236, v221, v116);
    v118 = v214;

    sub_1B0ACE7A4(v117, _s25MessageSectionsToDownloadVMa);
    v277 = v249;
    v278[0] = v250[0];
    *(v278 + 9) = *(v250 + 9);
    v273 = v245;
    v274 = v246;
    v275 = v247;
    v276 = v248;
    v269 = v241;
    v270 = v242;
    v271 = v243;
    v272 = v244;
    v265 = v237;
    v266 = v238;
    v267 = v239;
    v268 = v240;
    sub_1B0ACE480(&v265);
    v119 = v208;
    sub_1B03B5C80(v118, v208, &qword_1EB6E4198, &unk_1B0EC3C80);
    if (v234(v119, 1, v60) == 1)
    {
      goto LABEL_62;
    }

    v95 = v213;
    sub_1B0ACE804(v119, v213, _s18SectionDataRequestVMa);
    sub_1B0398EFC(v118, &qword_1EB6E4198, &unk_1B0EC3C80);
    (*v232)(v95, 0, 1, v60);

LABEL_22:

    sub_1B0ACE7A4(v233, _s25MessageSectionsToDownloadVMa);
    v120 = v234(v95, 1, v60);
    sub_1B0398EFC(v95, &qword_1EB6E4198, &unk_1B0EC3C80);
    if (v120 != 1)
    {
      v215 = v219;
LABEL_27:
      v59 = v195;
      goto LABEL_28;
    }

    v63 = v219 + 1;
    if (v219 + 1 == v215)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  sub_1B0ACE7A4(v233, _s25MessageSectionsToDownloadVMa);
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:

  __break(1u);
LABEL_65:

  result = sub_1B0ACE7A4(v210, _s25MessageSectionsToDownloadVMa);
  __break(1u);
  return result;
}

void sub_1B0AC03DC(uint64_t a1, uint64_t a2)
{
  v208 = a2;
  v217 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v209 = &v191 - v4;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v5 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v191 - v6;
  v200 = _s18SectionDataRequestVMa();
  v7 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v197 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v191 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v212 = &v191 - v12;
  v13 = _s19MessageHeaderStatusOMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v205 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v204 = &v191 - v17;
  v210 = _s25MessageSectionsToDownloadVMa(0);
  v18 = *(v210 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v21 = (&v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = type metadata accessor for MailboxTaskLogger(0);
  v22 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v198 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v201 = &v191 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v202 = &v191 - v27;
  MEMORY[0x1EEE9AC00](v28);
  *&v203 = &v191 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v191 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v214 = (&v191 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v191 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v191 - v39;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v191 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v191 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v191 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v191 - v50;
  v52 = type metadata accessor for DownloadTask.CommandID(0);
  v53 = *(*(v52 - 1) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v191 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0ACE73C(v217, v55, type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v79 = v45;
      sub_1B03C60A4(v55, v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v80 = v208;
      v81 = v214;
      sub_1B0ACE73C(v208, v214, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v80, v32, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v82 = v211;
      sub_1B03B5C80(v79, v211, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v83 = sub_1B0E43988();
      v84 = sub_1B0E45908();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v220[0] = v217;
        *v85 = 68159491;
        *(v85 + 4) = 2;
        *(v85 + 8) = 256;
        v86 = v206;
        v87 = &v32[*(v206 + 20)];
        *(v85 + 10) = *v87;
        *(v85 + 11) = 2082;
        v88 = v81;
        v89 = &v81[*(v86 + 20)];
        *(v85 + 13) = sub_1B0399D64(*(v89 + 1), *(v89 + 2), v220);
        *(v85 + 21) = 1040;
        *(v85 + 23) = 2;
        *(v85 + 27) = 512;
        LOWORD(v87) = *(v87 + 12);
        sub_1B0ACE7A4(v32, type metadata accessor for MailboxTaskLogger);
        *(v85 + 29) = v87;
        *(v85 + 31) = 2160;
        *(v85 + 33) = 0x786F626C69616DLL;
        *(v85 + 41) = 2085;
        v90 = *(v89 + 4);
        LODWORD(v87) = *(v89 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v88, type metadata accessor for MailboxTaskLogger);
        v218 = v90;
        v219 = v87;
        v91 = sub_1B0E44BA8();
        v93 = sub_1B0399D64(v91, v92, v220);

        *(v85 + 43) = v93;
        *(v85 + 51) = 2082;
        v94 = MessageIdentifierSet.debugDescription.getter(v213);
        v96 = v95;
        sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v97 = sub_1B0399D64(v94, v96, v220);

        *(v85 + 53) = v97;
        _os_log_impl(&dword_1B0389000, v83, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching message size for messages %{public}s", v85, 0x3Du);
        v98 = v217;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v98, -1, -1);
        MEMORY[0x1B272C230](v85, -1, -1);

        sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return;
      }

      sub_1B0ACE7A4(v32, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v106 = v81;
    }

    else
    {
      sub_1B03C60A4(v55, v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v57 = v208;
      sub_1B0ACE73C(v208, v40, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v57, v37, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v51, v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v58 = sub_1B0E43988();
      v59 = sub_1B0E45908();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v217 = v51;
        v62 = v61;
        v220[0] = v61;
        *v60 = 68159491;
        *(v60 + 4) = 2;
        *(v60 + 8) = 256;
        v63 = v206;
        v64 = &v37[*(v206 + 20)];
        *(v60 + 10) = *v64;
        *(v60 + 11) = 2082;
        v65 = &v40[*(v63 + 20)];
        *(v60 + 13) = sub_1B0399D64(*(v65 + 1), *(v65 + 2), v220);
        *(v60 + 21) = 1040;
        *(v60 + 23) = 2;
        *(v60 + 27) = 512;
        LOWORD(v64) = *(v64 + 12);
        sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);
        *(v60 + 29) = v64;
        *(v60 + 31) = 2160;
        *(v60 + 33) = 0x786F626C69616DLL;
        *(v60 + 41) = 2085;
        v66 = *(v65 + 4);
        LODWORD(v65) = *(v65 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v40, type metadata accessor for MailboxTaskLogger);
        v218 = v66;
        v219 = v65;
        v67 = sub_1B0E44BA8();
        v69 = sub_1B0399D64(v67, v68, v220);

        *(v60 + 43) = v69;
        *(v60 + 51) = 2082;
        v70 = MessageIdentifierSet.debugDescription.getter(v213);
        v72 = v71;
        sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v73 = sub_1B0399D64(v70, v72, v220);

        *(v60 + 53) = v73;
        _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching body structure for messages %{public}s", v60, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v62, -1, -1);
        MEMORY[0x1B272C230](v60, -1, -1);

        sub_1B0398EFC(v217, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return;
      }

      sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v106 = v40;
    }

    v105 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v74 = *v55;
    v217 = _s18InProgressMessagesVMa(0);
    v75 = *(v217 + 8);
    v76 = *(v207 + v75);
    v77 = *(v76 + 16);
    if (!v77)
    {
      return;
    }

    v78 = 0;
    while (1)
    {
      if (v78 >= *(v76 + 16))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v32 = (v76 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v78);
      sub_1B0ACE73C(v32, v21, _s25MessageSectionsToDownloadVMa);
      v55 = *v21;
      sub_1B0ACE7A4(v21, _s25MessageSectionsToDownloadVMa);
      if (v74 == v55)
      {
        break;
      }

      if (v77 == ++v78)
      {
        return;
      }
    }

    v216 = v75;
    if (v78 >= *(v76 + 16))
    {
      __break(1u);
    }

    else
    {
      v215 = *(v210 + 20);
      v166 = v204;
      sub_1B0ACE73C(&v32[v215], v204, _s19MessageHeaderStatusOMa);
      v167 = type metadata accessor for MessageHeader();
      v168 = *(v167 - 8);
      v169 = v205;
      v214 = *(v168 + 56);
      v212 = v168 + 56;
      (v214)(v205, 2, 3, v167);
      v170 = sub_1B0ACAF84(v166, v169);
      sub_1B0ACE7A4(v169, _s19MessageHeaderStatusOMa);
      sub_1B0ACE7A4(v166, _s19MessageHeaderStatusOMa);
      if (v170)
      {
LABEL_58:
        v174 = v208;
        v175 = v203;
        sub_1B0ACE73C(v208, v203, type metadata accessor for MailboxTaskLogger);
        v176 = v202;
        sub_1B0ACE73C(v174, v202, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v177 = sub_1B0E43988();
        v178 = sub_1B0E458E8();
        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          LODWORD(v214) = v178;
          v180 = v179;
          v215 = swift_slowAlloc();
          v220[0] = v215;
          *v180 = 68159491;
          *(v180 + 4) = 2;
          *(v180 + 8) = 256;
          v181 = v206;
          v182 = v176 + *(v206 + 20);
          *(v180 + 10) = *v182;
          *(v180 + 11) = 2082;
          v183 = v175;
          v184 = v175 + *(v181 + 20);
          *(v180 + 13) = sub_1B0399D64(*(v184 + 8), *(v184 + 16), v220);
          *(v180 + 21) = 1040;
          *(v180 + 23) = 2;
          *(v180 + 27) = 512;
          LOWORD(v182) = *(v182 + 24);
          sub_1B0ACE7A4(v176, type metadata accessor for MailboxTaskLogger);
          *(v180 + 29) = v182;
          *(v180 + 31) = 2160;
          *(v180 + 33) = 0x786F626C69616DLL;
          *(v180 + 41) = 2085;
          v185 = *(v184 + 32);
          LODWORD(v184) = *(v184 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v183, type metadata accessor for MailboxTaskLogger);
          v218 = v185;
          v219 = v184;
          v186 = sub_1B0E44BA8();
          v188 = sub_1B0399D64(v186, v187, v220);

          *(v180 + 43) = v188;
          *(v180 + 51) = 1024;
          *(v180 + 53) = v74;
          _os_log_impl(&dword_1B0389000, v177, v214, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return header data for message %u.", v180, 0x39u);
          v189 = v215;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v189, -1, -1);
          MEMORY[0x1B272C230](v180, -1, -1);
        }

        else
        {
          sub_1B0ACE7A4(v176, type metadata accessor for MailboxTaskLogger);

          sub_1B0ACE7A4(v175, type metadata accessor for MailboxTaskLogger);
        }

        LODWORD(v220[0]) = v74;
        v190 = v207 + *(v217 + 9);
        MessageIdentifierSet.insert(_:)(&v218, v220, v213);
        sub_1B0BAFDD8(v78, v21);
        v105 = _s25MessageSectionsToDownloadVMa;
        v106 = v21;
        goto LABEL_52;
      }

      if (v78 < *(v76 + 16))
      {
        v171 = v204;
        sub_1B0ACE73C(&v32[v215], v204, _s19MessageHeaderStatusOMa);
        v172 = v205;
        (v214)(v205, 3, 3, v167);
        v173 = sub_1B0ACAF84(v171, v172);
        sub_1B0ACE7A4(v172, _s19MessageHeaderStatusOMa);
        sub_1B0ACE7A4(v171, _s19MessageHeaderStatusOMa);
        if ((v173 & 1) == 0)
        {
          return;
        }

        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v99 = v212;
  sub_1B0ACE804(v55, v212, _s18SectionDataRequestVMa);
  v100 = v209;
  sub_1B03B5C80(v99, v209, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v74 = v215;
  sub_1B03B5C80(v100, v215, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v101 = (v74 + *(v216 + 36));
  v78 = MessageIdentifierSet.startIndex.getter(v213);
  v32 = v102;
  sub_1B0398EFC(v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v101 = v78;
  v101[1] = v32;
  v214 = v101;
  v77 = *(_s18InProgressMessagesVMa(0) + 32);
  v55 = v207;
  v52 = *(v207 + v77);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_65:
    v52 = sub_1B0B8C8EC(v52);
  }

  v204 = v77;
  *(v55 + v77) = v52;
  v55 = v213;
  if (v78 != MessageIdentifierSet.endIndex.getter(v213) || v32 != v103)
  {
    v211 = 0;
    *&v104 = 68160003;
    v203 = v104;
    while (1)
    {
      v77 = v74;
      MessageIdentifierSet.subscript.getter(v32, v55, &v218);
      v107 = v218;
      v108 = MessageIdentifierSet.index(_:offsetBy:)(v78, v32, 1);
      v109 = v214;
      v216 = v110;
      v217 = v108;
      *v214 = v108;
      v109[1] = v110;
      v32 = v52[2];
      if (v32)
      {
        v111 = 0;
        while (1)
        {
          if (v111 >= v52[2])
          {
            __break(1u);
            goto LABEL_63;
          }

          v78 = v52 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v111;
          sub_1B0ACE73C(v78, v21, _s25MessageSectionsToDownloadVMa);
          v77 = *v21;
          v112 = sub_1B0ACE7A4(v21, _s25MessageSectionsToDownloadVMa);
          if (v107 == v77)
          {
            break;
          }

          if (v32 == ++v111)
          {
            goto LABEL_27;
          }
        }

        if (v111 >= v52[2])
        {
          goto LABEL_64;
        }

        v209 = &v191;
        v205 = *(v210 + 24);
        v113 = *(v78 + v205);
        MEMORY[0x1EEE9AC00](v112);
        *(&v191 - 2) = v212;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v114 = v211;
        v115 = sub_1B0BA6EBC(sub_1B0ACE86C, (&v191 - 4), v113);
        v117 = v116;
        v211 = v114;
        v55 = v213;

        if ((v117 & 1) == 0)
        {
          v209 = v115;
          if (v111 >= v52[2])
          {
            goto LABEL_68;
          }

          if ((v209 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v120 = *(v78 + v205);
          if (v209 >= *(v120 + 16))
          {
            goto LABEL_70;
          }

          v205 = 240 * v209;
          v121 = v120 + 240 * v209;
          v122 = *(v121 + 72);
          v123 = *(v212 + *(v200 + 24));
          v124 = v202 & 0xFFFFFF0000000000 | *(v121 + 80) | (*(v121 + 84) << 32);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v202 = v124;
          LOBYTE(v123) = sub_1B0B815D8(v123, v122, v124);

          if ((v123 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_27:
      v74 = v215;
      v118 = MessageIdentifierSet.endIndex.getter(v55);
      v32 = v216;
      v78 = v217;
      if (v217 == v118 && v216 == v119)
      {
        goto LABEL_17;
      }
    }

    v125 = v208;
    sub_1B0ACE73C(v208, v201, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE73C(v125, v198, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v126 = v212;
    sub_1B0ACE73C(v212, v199, _s18SectionDataRequestVMa);
    v127 = v126;
    v128 = v197;
    sub_1B0ACE73C(v127, v197, _s18SectionDataRequestVMa);
    v129 = sub_1B0E43988();
    v130 = sub_1B0E458E8();
    if (os_log_type_enabled(v129, v130))
    {
      v194 = v130;
      v196 = v129;
      v131 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v220[0] = v193;
      *v131 = v203;
      *(v131 + 4) = 2;
      *(v131 + 8) = 256;
      v132 = v206;
      v133 = v198;
      v134 = v198 + *(v206 + 20);
      *(v131 + 10) = *v134;
      *(v131 + 11) = 2082;
      v135 = v201 + *(v132 + 20);
      *(v131 + 13) = sub_1B0399D64(*(v135 + 8), *(v135 + 16), v220);
      *(v131 + 21) = 1040;
      *(v131 + 23) = 2;
      *(v131 + 27) = 512;
      LODWORD(v195) = *(v134 + 24);
      sub_1B0ACE7A4(v133, type metadata accessor for MailboxTaskLogger);
      *(v131 + 29) = v195;
      *(v131 + 31) = 2160;
      *(v131 + 33) = 0x786F626C69616DLL;
      *(v131 + 41) = 2085;
      v136 = *(v135 + 32);
      LODWORD(v135) = *(v135 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v201, type metadata accessor for MailboxTaskLogger);
      v218 = v136;
      v219 = v135;
      v137 = sub_1B0E44BA8();
      v139 = sub_1B0399D64(v137, v138, v220);

      *(v131 + 43) = v139;
      *(v131 + 51) = 1024;
      *(v131 + 53) = v107;
      *(v131 + 57) = 2082;
      v140 = v200;
      v141 = v199;
      v142 = SectionSpecifier.Part.debugDescription.getter(*(v199 + *(v200 + 20)));
      v144 = v143;
      sub_1B0ACE7A4(v141, _s18SectionDataRequestVMa);
      v145 = sub_1B0399D64(v142, v144, v220);

      *(v131 + 59) = v145;
      v195 = v131;
      *(v131 + 67) = 2080;
      v146 = v197;
      v147 = *(v197 + *(v140 + 24));
      v148 = *(v147 + 16);
      if (v148)
      {
        v218 = MEMORY[0x1E69E7CC0];
        sub_1B0B0A0C4(0, v148, 0);
        v149 = v218;
        v150 = (v147 + 32);
        v151 = *(v218 + 16);
        do
        {
          v152 = *v150;
          v218 = v149;
          v153 = *(v149 + 24);
          if (v151 >= v153 >> 1)
          {
            v192 = v152;
            sub_1B0B0A0C4((v153 > 1), v151 + 1, 1);
            v152 = v192;
            v149 = v218;
          }

          *(v149 + 16) = v151 + 1;
          *(v149 + 8 * v151 + 32) = v152;
          ++v150;
          ++v151;
          --v148;
        }

        while (v148);
        v146 = v197;
      }

      else
      {
        v149 = MEMORY[0x1E69E7CC0];
      }

      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3AE0, &unk_1B0EA3A80);
      v155 = MEMORY[0x1B27272F0](v149, v154);
      v157 = v156;

      sub_1B0ACE7A4(v146, _s18SectionDataRequestVMa);
      v158 = sub_1B0399D64(v155, v157, v220);

      v159 = v195;
      *(v195 + 69) = v158;
      v160 = v196;
      _os_log_impl(&dword_1B0389000, v196, v194, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return any data for message %u, part '[%{public}s]', ranges %s", v159, 0x4Du);
      v161 = v193;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v161, -1, -1);
      MEMORY[0x1B272C230](v159, -1, -1);

      v55 = v213;
    }

    else
    {
      sub_1B0ACE7A4(v198, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v128, _s18SectionDataRequestVMa);
      sub_1B0ACE7A4(v201, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v199, _s18SectionDataRequestVMa);
    }

    if (v111 < v52[2])
    {
      v162 = *(v210 + 24);
      v163 = *(v78 + v162);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v78 + v162) = v163;
      v165 = v207;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v163 = sub_1B0B8C900(v163);
        *(v78 + v162) = v163;
      }

      if (v209 < *(v163 + 2))
      {
        v163[v205 + 86] = 1;
        *(v78 + v162) = v163;
        *(v165 + v204) = v52;
        goto LABEL_27;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

LABEL_17:
  sub_1B0398EFC(v74, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v105 = _s18SectionDataRequestVMa;
  v106 = v212;
LABEL_52:
  sub_1B0ACE7A4(v106, v105);
}

size_t sub_1B0AC1C84(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  sub_1B0ACDED4();
  v8 = 0;
  v9 = *(_s18InProgressMessagesVMa(0) + 32);
  v10 = *(v3 + v9);
  v11 = v10[2];
  while (1)
  {
    if (v11 == v8)
    {
      return 0xFF00000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C8EC(v10);
      v10 = result;
    }

    if (v8 >= v10[2])
    {
      break;
    }

    v13 = *(_s25MessageSectionsToDownloadVMa(0) - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v8;
    v15 = sub_1B0AC73F4(a1, a2, a3);
    *(v4 + v9) = v10;
    ++v8;
    if ((~v15 & 0xF000000000000007) != 0)
    {
      return 0x300000001;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0AC1DBC(int a1, uint64_t a2, int a3, uint64_t isa_low)
{
  v142 = a3;
  v8 = _s19MessageHeaderStatusOMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = (&v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v128 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v128 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v140 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v136 = (&v128 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v128 - v28;
  v138 = _s25MessageSectionsToDownloadVMa(0);
  v29 = *(v138 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v143 = &v128 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v128 - v35);
  sub_1B0AC57D8(a1, v149);
  v159 = v149[8];
  v160 = v149[9];
  v161[0] = v150[0];
  *(v161 + 9) = *(v150 + 9);
  v155 = v149[4];
  v156 = v149[5];
  v157 = v149[6];
  v158 = v149[7];
  v151 = v149[0];
  v152 = v149[1];
  v153 = v149[2];
  v154 = v149[3];
  if (sub_1B0ACE88C(&v151) != 1)
  {
    v133 = isa_low;
    v131 = a2;
    v162[8] = v159;
    v162[9] = v160;
    v163[0] = v161[0];
    *(v163 + 9) = *(v161 + 9);
    v162[4] = v155;
    v162[5] = v156;
    v162[6] = v157;
    v162[7] = v158;
    v162[0] = v151;
    v162[1] = v152;
    v162[2] = v153;
    v162[3] = v154;
    v51 = _s18InProgressMessagesVMa(0);
    v52 = 0;
    v53 = *(v51 + 32);
    v132 = v4;
    v129 = v51;
    v130 = v53;
    v54 = *(&v4->isa + v53);
    v55 = *(v54 + 16);
    while (v55 != v52)
    {
      if (v52 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1B0ACE73C(v54 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v52++, v36, _s25MessageSectionsToDownloadVMa);
      isa_low = LODWORD(v36->isa);
      sub_1B0ACE7A4(v36, _s25MessageSectionsToDownloadVMa);
      if (isa_low == a1)
      {
        v56 = v133;
        v57 = v135;
        sub_1B0ACE73C(v133, v135, type metadata accessor for MailboxTaskLogger);
        v58 = v134;
        sub_1B0ACE73C(v56, v134, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v59 = v131;
        swift_bridgeObjectRetain_n();
        v60 = sub_1B0E43988();
        v61 = sub_1B0E458E8();
        v144 = v60;
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v148 = v143;
          *v62 = 68159747;
          *(v62 + 4) = 2;
          *(v62 + 8) = 256;
          v63 = v145;
          v64 = v58;
          v65 = v58 + *(v145 + 20);
          *(v62 + 10) = *v65;
          *(v62 + 11) = 2082;
          v66 = v57 + *(v63 + 20);
          *(v62 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v148);
          *(v62 + 21) = 1040;
          *(v62 + 23) = 2;
          *(v62 + 27) = 512;
          LOWORD(v65) = *(v65 + 24);
          sub_1B0ACE7A4(v64, type metadata accessor for MailboxTaskLogger);
          *(v62 + 29) = v65;
          *(v62 + 31) = 2160;
          *(v62 + 33) = 0x786F626C69616DLL;
          *(v62 + 41) = 2085;
          v67 = *(v66 + 32);
          LODWORD(v66) = *(v66 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v57, type metadata accessor for MailboxTaskLogger);
          v146 = v67;
          v147 = v66;
          v68 = sub_1B0E44BA8();
          v70 = sub_1B0399D64(v68, v69, &v148);

          *(v62 + 43) = v70;
          *(v62 + 51) = 2048;
          v71 = *(v59 + 16);

          *(v62 + 53) = v71;

          *(v62 + 61) = 1024;
          *(v62 + 63) = a1;
          v72 = v144;
          _os_log_impl(&dword_1B0389000, v144, v61, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u -- but sections for this message have already been added.", v62, 0x43u);
          v73 = v143;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v73, -1, -1);
          MEMORY[0x1B272C230](v62, -1, -1);
          sub_1B0398EFC(v149, &qword_1EB6E4168, &qword_1B0EC3C58);

          return;
        }

        sub_1B0ACE7A4(v58, type metadata accessor for MailboxTaskLogger);
        sub_1B0398EFC(v149, &qword_1EB6E4168, &qword_1B0EC3C58);

        v97 = v57;
LABEL_27:
        sub_1B0ACE7A4(v97, type metadata accessor for MailboxTaskLogger);
        return;
      }
    }

    v74 = v133;
    v75 = v137;
    sub_1B0ACE73C(v133, v137, type metadata accessor for MailboxTaskLogger);
    v76 = v136;
    sub_1B0ACE73C(v74, v136, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v77 = v131;
    swift_bridgeObjectRetain_n();
    v78 = sub_1B0E43988();
    v79 = sub_1B0E45908();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      LODWORD(v134) = v79;
      v81 = v80;
      v135 = swift_slowAlloc();
      v148 = v135;
      *v81 = 68159747;
      *(v81 + 4) = 2;
      *(v81 + 8) = 256;
      v82 = v145;
      v83 = v76 + *(v145 + 20);
      *(v81 + 10) = *v83;
      *(v81 + 11) = 2082;
      v84 = *(v82 + 20);
      v128 = v78;
      v85 = v75;
      v86 = v75 + v84;
      *(v81 + 13) = sub_1B0399D64(*(v86 + 8), *(v86 + 16), &v148);
      *(v81 + 21) = 1040;
      *(v81 + 23) = 2;
      *(v81 + 27) = 512;
      v87 = *(v83 + 12);
      sub_1B0ACE7A4(v76, type metadata accessor for MailboxTaskLogger);
      *(v81 + 29) = v87;
      *(v81 + 31) = 2160;
      *(v81 + 33) = 0x786F626C69616DLL;
      *(v81 + 41) = 2085;
      v88 = *(v86 + 32);
      v89 = *(v86 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v85, type metadata accessor for MailboxTaskLogger);
      v146 = v88;
      v147 = v89;
      v74 = v133;
      v90 = sub_1B0E44BA8();
      v92 = sub_1B0399D64(v90, v91, &v148);

      *(v81 + 43) = v92;
      *(v81 + 51) = 2048;
      v93 = *(v77 + 16);

      *(v81 + 53) = v93;

      *(v81 + 61) = 1024;
      *(v81 + 63) = a1;
      v94 = v128;
      _os_log_impl(&dword_1B0389000, v128, v134, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u.", v81, 0x43u);
      v95 = v135;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v95, -1, -1);
      MEMORY[0x1B272C230](v81, -1, -1);
    }

    else
    {

      sub_1B0ACE7A4(v76, type metadata accessor for MailboxTaskLogger);

      v96 = sub_1B0ACE7A4(v75, type metadata accessor for MailboxTaskLogger);
    }

    v98 = v132;
    v99 = v144;
    v100 = v142;
    if (!*(v77 + 16))
    {
      LODWORD(v148) = a1;
      v101 = *(v129 + 40);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v96 = MessageIdentifierSet.insert(_:)(&v146, &v148, v102);
    }

    MEMORY[0x1EEE9AC00](v96);
    *(&v128 - 4) = v162;
    *(&v128 - 3) = v98;
    *(&v128 - 2) = v74;
    v103 = sub_1B0B3E208(sub_1B0ACE8B0, &(&v128)[-6], v77);
    v104 = type metadata accessor for MessageHeader();
    if (v100)
    {
      v105 = 2;
    }

    else
    {
      v105 = 1;
    }

    (*(*(v104 - 8) + 56))(v99, v105, 3, v104);
    v106 = v138;
    v52 = v143;
    sub_1B0ACE73C(v99, &v143[*(v138 + 20)], _s19MessageHeaderStatusOMa);
    *v52 = a1;
    *(v52 + *(v106 + 24)) = v103;
    *(v52 + *(v106 + 28)) = MEMORY[0x1E69E7CC0];
    v107 = v140;
    sub_1B0ACE73C(v74, v140, type metadata accessor for MailboxTaskLogger);
    v108 = v139;
    sub_1B0ACE73C(v74, v139, type metadata accessor for MailboxTaskLogger);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = sub_1B0E43988();
    v110 = sub_1B0E45908();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      LODWORD(v137) = v110;
      v112 = v111;
      v138 = swift_slowAlloc();
      v148 = v138;
      *v112 = 68160003;
      *(v112 + 4) = 2;
      *(v112 + 8) = 256;
      v113 = v145;
      v114 = *(v145 + 20);
      v136 = v109;
      v115 = v108 + v114;
      *(v112 + 10) = *(v108 + v114);
      *(v112 + 11) = 2082;
      v116 = v107;
      v117 = v107 + *(v113 + 20);
      *(v112 + 13) = sub_1B0399D64(*(v117 + 8), *(v117 + 16), &v148);
      *(v112 + 21) = 1040;
      *(v112 + 23) = 2;
      *(v112 + 27) = 512;
      LOWORD(v115) = *(v115 + 24);
      sub_1B0ACE7A4(v108, type metadata accessor for MailboxTaskLogger);
      *(v112 + 29) = v115;
      *(v112 + 31) = 2160;
      *(v112 + 33) = 0x786F626C69616DLL;
      *(v112 + 41) = 2085;
      v118 = *(v117 + 32);
      LODWORD(v117) = *(v117 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v116, type metadata accessor for MailboxTaskLogger);
      v146 = v118;
      v147 = v117;
      v119 = sub_1B0E44BA8();
      v121 = sub_1B0399D64(v119, v120, &v148);

      *(v112 + 43) = v121;
      v52 = v143;
      *(v112 + 51) = 2048;
      v122 = *(v103 + 2);

      *(v112 + 53) = v122;
      v36 = v132;

      *(v112 + 61) = 1024;
      *(v112 + 63) = a1;
      *(v112 + 67) = 1024;
      *(v112 + 69) = v142 & 1;
      v123 = v136;
      _os_log_impl(&dword_1B0389000, v136, v137, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld sections for message %u. Downloading message headers: %{BOOL}d", v112, 0x49u);
      v124 = v138;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v124, -1, -1);
      MEMORY[0x1B272C230](v112, -1, -1);

      isa_low = v141;
    }

    else
    {

      sub_1B0ACE7A4(v108, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v107, type metadata accessor for MailboxTaskLogger);
      isa_low = v141;
      v36 = v132;
    }

    sub_1B0ACE73C(v52, isa_low, _s25MessageSectionsToDownloadVMa);
    v54 = v130;
    v4 = *(&v36->isa + v130);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v4 = sub_1B0AFFAD0(0, v4[2].isa + 1, 1, v4);
    }

    v125 = v144;
    isa = v4[2].isa;
    v126 = v4[3].isa;
    if (isa >= v126 >> 1)
    {
      v4 = sub_1B0AFFAD0(v126 > 1, isa + 1, 1, v4);
    }

    sub_1B0398EFC(v149, &qword_1EB6E4168, &qword_1B0EC3C58);
    sub_1B0ACE7A4(v52, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE7A4(v125, _s19MessageHeaderStatusOMa);
    v4[2].isa = (isa + 1);
    sub_1B0ACE804(isa_low, v4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * isa, _s25MessageSectionsToDownloadVMa);
    *(&v36->isa + v54) = v4;
    return;
  }

  sub_1B0ACE73C(isa_low, v16, type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(isa_low, v13, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v37 = sub_1B0E43988();
  v38 = sub_1B0E458E8();
  if (!os_log_type_enabled(v37, v38))
  {

    sub_1B0ACE7A4(v13, type metadata accessor for MailboxTaskLogger);

    v97 = v16;
    goto LABEL_27;
  }

  v39 = swift_slowAlloc();
  LODWORD(v143) = v38;
  v40 = v39;
  v144 = swift_slowAlloc();
  v146 = v144;
  *v40 = 68159747;
  *(v40 + 4) = 2;
  *(v40 + 8) = 256;
  v41 = v145;
  v42 = a2;
  v43 = &v13[*(v145 + 20)];
  *(v40 + 10) = *v43;
  *(v40 + 11) = 2082;
  v44 = &v16[*(v41 + 20)];
  *(v40 + 13) = sub_1B0399D64(*(v44 + 1), *(v44 + 2), &v146);
  *(v40 + 21) = 1040;
  *(v40 + 23) = 2;
  *(v40 + 27) = 512;
  LOWORD(v43) = *(v43 + 12);
  sub_1B0ACE7A4(v13, type metadata accessor for MailboxTaskLogger);
  *(v40 + 29) = v43;
  *(v40 + 31) = 2160;
  *(v40 + 33) = 0x786F626C69616DLL;
  *(v40 + 41) = 2085;
  v45 = *(v44 + 4);
  LODWORD(v44) = *(v44 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE7A4(v16, type metadata accessor for MailboxTaskLogger);
  *&v162[0] = v45;
  DWORD2(v162[0]) = v44;
  v46 = sub_1B0E44BA8();
  v48 = sub_1B0399D64(v46, v47, &v146);

  *(v40 + 43) = v48;
  *(v40 + 51) = 2048;
  v49 = *(v42 + 16);

  *(v40 + 53) = v49;

  *(v40 + 61) = 1024;
  *(v40 + 63) = a1;
  _os_log_impl(&dword_1B0389000, v37, v143, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u, but we don’t have a body structure for this message.", v40, 0x43u);
  v50 = v144;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v50, -1, -1);
  MEMORY[0x1B272C230](v40, -1, -1);
}

BOOL sub_1B0AC2E88(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v119 = a1[8];
  v120 = v3;
  v121 = a1[10];
  v122 = *(a1 + 176);
  v4 = a1[5];
  v115 = a1[4];
  v116 = v4;
  v5 = a1[7];
  v117 = a1[6];
  v118 = v5;
  v6 = a1[1];
  v111 = *a1;
  v112 = v6;
  v7 = a1[3];
  v113 = a1[2];
  v114 = v7;
  if (sub_1B04FAE9C(&v111) == 1)
  {
    v8 = a2[9];
    v85 = a2[8];
    v86 = v8;
    v87 = a2[10];
    v88 = *(a2 + 176);
    v9 = a2[5];
    v81 = a2[4];
    v82 = v9;
    v10 = a2[7];
    v83 = a2[6];
    v84 = v10;
    v11 = a2[1];
    v77 = *a2;
    v78 = v11;
    v12 = a2[3];
    v79 = a2[2];
    v80 = v12;
    return sub_1B04FAE9C(&v77) == 1;
  }

  v14 = a2[9];
  v85 = a2[8];
  v86 = v14;
  v87 = a2[10];
  v88 = *(a2 + 176);
  v15 = a2[5];
  v81 = a2[4];
  v82 = v15;
  v16 = a2[7];
  v83 = a2[6];
  v84 = v16;
  v17 = a2[1];
  v77 = *a2;
  v78 = v17;
  v18 = a2[3];
  v79 = a2[2];
  v80 = v18;
  if (sub_1B04FAE9C(&v77) == 1)
  {
    return 0;
  }

  v73 = v119;
  v74 = v120;
  v75 = v121;
  v76 = v122;
  v69 = v115;
  v70 = v116;
  v71 = v117;
  v72 = v118;
  v65 = v111;
  v66 = v112;
  v67 = v113;
  v68 = v114;
  if (sub_1B04FAE88(&v65) != 1)
  {
    v61 = v85;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    if (sub_1B04FAE88(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_1B0717014(v51) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
      v20 = v19[4];
      v94 = v19[5];
      v95 = v19[6];
      *&v96 = *(v19 + 14);
      v21 = v19[1];
      v89 = *v19;
      v90 = v21;
      v22 = v19[3];
      v91 = v19[2];
      v92 = v22;
      v93 = v20;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_1B0717014(&v39) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
        v24 = v23[5];
        v104 = v23[4];
        v105 = v24;
        v106 = v23[6];
        *&v107 = *(v23 + 14);
        v25 = v23[1];
        v100 = *v23;
        v101 = v25;
        v26 = v23[3];
        v102 = v23[2];
        v103 = v26;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
      v28 = v27[9];
      v97 = v27[8];
      v98 = v28;
      v99 = v27[10];
      v29 = v27[4];
      v94 = v27[5];
      v30 = v27[6];
      v96 = v27[7];
      v95 = v30;
      v31 = v27[1];
      v89 = *v27;
      v90 = v31;
      v32 = v27[2];
      v92 = v27[3];
      v93 = v29;
      v91 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_1B0717014(&v39) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
        v34 = v33[9];
        v108 = v33[8];
        v109 = v34;
        v110 = v33[10];
        v35 = v33[5];
        v104 = v33[4];
        v105 = v35;
        v36 = v33[6];
        v107 = v33[7];
        v106 = v36;
        v37 = v33[1];
        v100 = *v33;
        v101 = v37;
        v38 = v33[2];
        v103 = v33[3];
        v102 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
    return 0;
  }

  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  return sub_1B04FAE88(&v53) == 1;
}

uint64_t sub_1B0AC3288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14[0] = a1[10];
  *(v14 + 9) = *(a1 + 169);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16[0] = a2[10];
  *(v16 + 9) = *(a2 + 169);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1B0ACB2BC(v13, v15) & 1;
}

uint64_t sub_1B0AC3330@<X0>(uint64_t a1@<X8>)
{
  v2 = _s25MessageSectionsToDownloadVMa(0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v53 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = v44 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v52 = v44 - v8;
  v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACA438(v9);
  v75[0] = sub_1B0AE2670(v10, v11);
  sub_1B0ACA2C0(v75);

  v12 = v75[0];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v13 = *(v12 + 2);
  if (!v13)
  {
  }

  v47 = *v54;
  v46 = *(v54 + 8);
  v44[1] = v12;
  v14 = v12 + 48;
  v45 = xmmword_1B0EC1E70;
  v48 = a1;
  while (1)
  {
    if (*v14)
    {
      goto LABEL_4;
    }

    v16 = *(v14 - 1);
    if (HIDWORD(v16) || v16 > 0x15F90)
    {
      goto LABEL_4;
    }

    v18 = v16 * 1.25;
    if (v18 == INFINITY)
    {
      break;
    }

    if (v18 <= -1.0)
    {
      goto LABEL_25;
    }

    if (v18 >= 4294967300.0)
    {
      goto LABEL_26;
    }

    v19 = *(v14 - 4);
    v20 = v16 + 0x4000;
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    sub_1B04FAA88(&v57);
    v69[8] = v65;
    v69[9] = v66;
    v69[10] = v67;
    v70 = v68;
    v69[4] = v61;
    v69[5] = v62;
    v69[6] = v63;
    v69[7] = v64;
    v69[0] = v57;
    v69[1] = v58;
    v69[2] = v59;
    v69[3] = v60;
    v22 = v47;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0398EFC(v69, &qword_1EB6E4148, &qword_1B0EE17F0);
    *&v56[97] = v63;
    *&v56[113] = v64;
    *&v56[65] = v61;
    *&v56[81] = v62;
    v56[177] = v68;
    *&v56[145] = v66;
    *&v56[161] = v67;
    *&v56[129] = v65;
    *&v56[1] = v57;
    *&v56[17] = v58;
    *&v56[33] = v59;
    *&v56[49] = v60;
    *(&v74[8] + 7) = *&v56[128];
    *(&v74[9] + 7) = *&v56[144];
    *(&v74[10] + 7) = *&v56[160];
    *(&v74[4] + 7) = *&v56[64];
    *(&v74[5] + 7) = *&v56[80];
    *(&v74[6] + 7) = *&v56[96];
    *(&v74[7] + 7) = *&v56[112];
    *(v74 + 7) = *v56;
    *(&v74[1] + 7) = *&v56[16];
    *(&v74[2] + 7) = *&v56[32];
    *(&v74[3] + 7) = *&v56[48];
    v92 = *&v56[128];
    v93 = *&v56[144];
    v94 = *&v56[160];
    v88 = *&v56[64];
    v89 = *&v56[80];
    v90 = *&v56[96];
    v91 = *&v56[112];
    v84 = *v56;
    v85 = *&v56[16];
    v86 = *&v56[32];
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v22;
    *&v72 = __PAIR64__(v19, v46);
    v23 = MEMORY[0x1E69E7CC0];
    *(&v72 + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v73) = v21;
    *(&v73 + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v74[0]) = 0;
    WORD2(v74[0]) = 2;
    BYTE6(v74[0]) = 0;
    *(&v74[11] + 7) = *&v56[176];
    LOBYTE(v75[0]) = 0;
    v75[1] = v22;
    v76 = v46;
    v77 = v19;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v21;
    v80 = MEMORY[0x1E69E7CC0];
    v81 = 0;
    v82 = 2;
    v83 = 0;
    v95 = *&v56[176];
    v87 = *&v56[48];
    sub_1B0ACE448(&v71, v55);
    sub_1B0ACE480(v75);
    v24 = v51;
    v25 = *(v51 + 20);
    v26 = type metadata accessor for MessageHeader();
    v27 = v49;
    (*(*(v26 - 8) + 56))(&v49[v25], 1, 3, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4150, &qword_1B0EC3510);
    v28 = swift_allocObject();
    v29 = v74[9];
    v28[13] = v74[8];
    v28[14] = v29;
    v28[15] = v74[10];
    *(v28 + 249) = *(&v74[10] + 9);
    v30 = v74[5];
    v31 = v74[6];
    v32 = v74[3];
    v28[9] = v74[4];
    v28[10] = v30;
    v33 = v74[7];
    v28[11] = v31;
    v28[12] = v33;
    v34 = v74[1];
    v35 = v74[2];
    v36 = v73;
    v28[5] = v74[0];
    v28[6] = v34;
    v28[7] = v35;
    v28[8] = v32;
    v37 = v71;
    v38 = v72;
    v28[1] = v45;
    v28[2] = v37;
    v28[3] = v38;
    v28[4] = v36;
    *v27 = v19;
    *(v27 + *(v24 + 24)) = v28;
    *(v27 + *(v24 + 28)) = v23;
    v39 = v52;
    sub_1B0ACE804(v27, v52, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v39, v53, _s25MessageSectionsToDownloadVMa);
    v40 = *(_s18InProgressMessagesVMa(0) + 32);
    v12 = *(v54 + v40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B0AFFAD0(0, *(v12 + 2) + 1, 1, v12);
    }

    v42 = *(v12 + 2);
    v41 = *(v12 + 3);
    if (v42 >= v41 >> 1)
    {
      v12 = sub_1B0AFFAD0(v41 > 1, v42 + 1, 1, v12);
    }

    *(v12 + 2) = v42 + 1;
    sub_1B0ACE804(v53, &v12[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42], _s25MessageSectionsToDownloadVMa);
    *(v54 + v40) = v12;
    *v56 = v19;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v55, v56, v15);
    sub_1B0ACE7A4(v52, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    v14 += 24;
    if (!--v13)
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
  return result;
}