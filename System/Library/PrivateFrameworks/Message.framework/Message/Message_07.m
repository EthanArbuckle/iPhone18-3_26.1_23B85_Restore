int64_t sub_1B042E7B4(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v166 = a5;
  v163 = a3;
  v164 = a4;
  v156 = a2;
  v157 = a1;
  v7 = _s6LoggerVMa_0();
  v8 = *(v7 - 8);
  v161 = v7;
  v162 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v151 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v151 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v153 = &v151 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v154 = &v151 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v158 = &v151 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v159 = &v151 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v155 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v151 - v28;
  v29 = type metadata accessor for ConnectionState();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UnauthenticatedStateWithTasks();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v6, v32, type metadata accessor for ConnectionState);
  v165 = v29;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1B038C704(v32, type metadata accessor for ConnectionState);
  }

  v151 = v17;
  v37 = v6;
  v38 = &v241;
  v152 = v37;
  sub_1B038C704(v37, type metadata accessor for ConnectionState);
  sub_1B04478FC(v32, v36, type metadata accessor for UnauthenticatedStateWithTasks);
  v39 = &v36[*(v33 + 24)];
  sub_1B04319C0(&v224);
  v221 = v232;
  v222 = v233;
  v223[0] = v234[0];
  *(v223 + 9) = *(v234 + 9);
  v217 = v228;
  v218 = v229;
  v219 = v230;
  v220 = v231;
  v213 = v224;
  v214 = v225;
  v215 = v226;
  v216 = v227;
  v249 = v232;
  v250 = v233;
  v251[0] = v234[0];
  *(v251 + 9) = *(v234 + 9);
  v245 = v228;
  v246 = v229;
  v247 = v230;
  v248 = v231;
  v241 = v224;
  v242 = v225;
  v243 = v226;
  v244 = v227;
  v40 = v36;
  if (sub_1B044CFF8(&v241) != 1)
  {
    v252[8] = v249;
    v252[9] = v250;
    v253[0] = v251[0];
    *(v253 + 9) = *(v251 + 9);
    v252[4] = v245;
    v252[5] = v246;
    v252[6] = v247;
    v252[7] = v248;
    v252[0] = v241;
    v252[1] = v242;
    v252[2] = v243;
    v252[3] = v244;
    if (sub_1B0BF706C(v252) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v252);
      v41 = &v213;
      goto LABEL_11;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v252);
  }

  if (*(*&v36[*(v33 + 28)] + 16))
  {
    sub_1B0398EFC(&v224, &qword_1EB6E5588, &qword_1B0ED2750);
LABEL_10:
    v43 = v166;
    sub_1B038CA0C(v166, v11, _s6LoggerVMa_0);
    v44 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1B04478FC(v11, v46 + v44, _s6LoggerVMa_0);
    v47 = (v46 + v45);
    v48 = v164;
    *v47 = v163;
    v47[1] = v48;
    sub_1B044D00C(v43, sub_1B0BF6FCC, v46);
    sub_1B04478FC(v36, v152, type metadata accessor for UnauthenticatedStateWithTasks);
    swift_storeEnumTagMultiPayload();
  }

  v239[8] = v232;
  v239[9] = v233;
  v240[0] = v234[0];
  *(v240 + 9) = *(v234 + 9);
  v239[4] = v228;
  v239[5] = v229;
  v239[6] = v230;
  v239[7] = v231;
  v239[0] = v224;
  v239[1] = v225;
  v239[2] = v226;
  v239[3] = v227;
  v41 = v239;
  if (sub_1B044CFF8(v239) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v49 = v41[9];
  v210 = v41[8];
  v211 = v49;
  v212[0] = v41[10];
  *(v212 + 9) = *(v41 + 169);
  v50 = v41[5];
  v206 = v41[4];
  v207 = v50;
  v51 = v41[7];
  v208 = v41[6];
  v209 = v51;
  v52 = v41[1];
  v202 = *v41;
  v203 = v52;
  v53 = v41[3];
  v204 = v41[2];
  v205 = v53;
  v200[8] = v210;
  v200[9] = v211;
  v201[0] = v212[0];
  *(v201 + 9) = *(v212 + 9);
  v200[4] = v206;
  v200[5] = v207;
  v200[6] = v208;
  v200[7] = v209;
  v200[0] = v202;
  v200[1] = v203;
  v200[2] = v204;
  v200[3] = v53;
  if (sub_1B0BF706C(v200) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v200);
    v38 = *v54;
    v55 = v54[1];
    v56 = v54[2];
    v57 = v166;
    v58 = v151;
    sub_1B038CA0C(v166, v151, _s6LoggerVMa_0);
    sub_1B038CA0C(v57, v14, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v197 = v221;
    v198 = v222;
    v199[0] = v223[0];
    *(v199 + 9) = *(v223 + 9);
    v193 = v217;
    v194 = v218;
    v195 = v219;
    v196 = v220;
    v189 = v213;
    v190 = v214;
    v191 = v215;
    v192 = v216;
    sub_1B03B5C80(&v189, &v178, &qword_1EB6E5590, &qword_1B0ED2758);
    v41 = sub_1B0E43988();
    v59 = sub_1B0E458E8();
    sub_1B0398EFC(&v224, &qword_1EB6E5588, &qword_1B0ED2750);
    if (os_log_type_enabled(v41, v59))
    {
      v163 = v55;
      v164 = v36;
      v166 = v38;
      v60 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v178 = v162;
      *v60 = 68158466;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v56;
      v62 = v161;
      v63 = v14[*(v161 + 20)];
      sub_1B038C704(v14, _s6LoggerVMa_0);
      *(v60 + 10) = v63;
      *(v60 + 11) = 2082;
      v64 = *(v62 + 20);
      v56 = v61;
      v65 = *(v58 + v64 + 4);
      sub_1B038C704(v58, _s6LoggerVMa_0);
      v66 = ConnectionID.debugDescription.getter(v65);
      v68 = sub_1B0399D64(v66, v67, &v178);

      *(v60 + 13) = v68;
      *(v60 + 21) = 2080;
      v69 = 0xEA00000000006174;
      v70 = 0x6F7571207265766FLL;
      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v69 = 0xE500000000000000;
          v70 = 0x6B63757473;
        }

        else if (v61 == 3)
        {
          v69 = 0xE500000000000000;
          v70 = 0x726568746FLL;
        }
      }

      else if (v61)
      {
        if (v61 == 1)
        {
          v69 = 0x80000001B0F2C330;
          v70 = 0xD000000000000015;
        }
      }

      else
      {
        v69 = 0xEF736C6169746E65;
        v70 = 0x6465726320646162;
      }

      v130 = sub_1B0399D64(v70, v69, &v178);

      *(v60 + 23) = v130;
      _os_log_impl(&dword_1B0389000, v41, v59, "[%.*hhx-%{public}s] Authentication failed: %s", v60, 0x1Fu);
      v131 = v162;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v131, -1, -1);
      MEMORY[0x1B272C230](v60, -1, -1);

      sub_1B038C704(v164, type metadata accessor for UnauthenticatedStateWithTasks);
      v74 = v152;
      v38 = v166;
      v55 = v163;
      goto LABEL_55;
    }

LABEL_22:
    sub_1B038C704(v14, _s6LoggerVMa_0);

    sub_1B038C704(v58, _s6LoggerVMa_0);
    sub_1B038C704(v36, type metadata accessor for UnauthenticatedStateWithTasks);
    v74 = v152;
LABEL_55:
    *v74 = v38;
    v74[1] = v55;
    v74[2] = v56;
    return swift_storeEnumTagMultiPayload();
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v200);
  v58 = v71;
  result = static MonotonicTime.now()();
  v72 = *(v36 + 1);
  v73 = result - v72;
  if (result < v72)
  {
    v14 = v159;
    v55 = v160;
    v56 = v158;
    if (__OFSUB__(v72, result))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v73 = result - v72;
    if (__OFSUB__(0, v72 - result))
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_24:
    v75 = v73 / 1000000000.0;
    if (COERCE__INT64(fabs(v75)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v75 > -9.22337204e18)
    {
      if (v75 < 9.22337204e18)
      {
        v76 = v75;
        v196 = *(v58 + 120);
        v197 = *(v58 + 136);
        v198 = *(v58 + 152);
        v199[0] = *(v58 + 168);
        v192 = *(v58 + 56);
        v193 = *(v58 + 72);
        v194 = *(v58 + 88);
        v195 = *(v58 + 104);
        v189 = *(v58 + 8);
        v190 = *(v58 + 24);
        v191 = *(v58 + 40);
        v77 = ServerID.logDescription.getter();
        if (v78)
        {
          v79 = v78;
          v164 = v77;
          v80 = v166;
          sub_1B038CA0C(v166, v55, _s6LoggerVMa_0);
          v81 = v155;
          sub_1B038CA0C(v80, v155, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v82 = sub_1B0E43988();
          v83 = sub_1B0E45908();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = v55;
            v85 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            *&v178 = v162;
            *v85 = 68158722;
            *(v85 + 4) = 2;
            *(v85 + 8) = 256;
            v163 = v76;
            v86 = v161;
            v87 = v81;
            v88 = *(v81 + *(v161 + 20));
            LODWORD(v160) = v83;
            sub_1B038C704(v87, _s6LoggerVMa_0);
            *(v85 + 10) = v88;
            *(v85 + 11) = 2082;
            v89 = *(v84 + *(v86 + 20) + 4);
            sub_1B038C704(v84, _s6LoggerVMa_0);
            v90 = ConnectionID.debugDescription.getter(v89);
            v92 = v40;
            v93 = sub_1B0399D64(v90, v91, &v178);

            *(v85 + 13) = v93;
            v40 = v92;
            *(v85 + 21) = 2082;
            v94 = sub_1B0399D64(v164, v79, &v178);

            *(v85 + 23) = v94;
            *(v85 + 31) = 2048;
            *(v85 + 33) = v163;
            _os_log_impl(&dword_1B0389000, v82, v160, "[%.*hhx-%{public}s] Authentication completed with server %{public}s (took %ld s)", v85, 0x29u);
            v95 = v162;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v95, -1, -1);
            v96 = v85;
LABEL_32:
            MEMORY[0x1B272C230](v96, -1, -1);

            goto LABEL_39;
          }

          sub_1B038C704(v81, _s6LoggerVMa_0);

          v110 = v55;
        }

        else
        {
          v97 = v166;
          sub_1B038CA0C(v166, v14, _s6LoggerVMa_0);
          sub_1B038CA0C(v97, v56, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v82 = sub_1B0E43988();
          v98 = sub_1B0E45908();
          if (os_log_type_enabled(v82, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v164 = v40;
            v101 = v100;
            *&v178 = v100;
            *v99 = 68158466;
            *(v99 + 4) = 2;
            *(v99 + 8) = 256;
            v163 = v76;
            v102 = v161;
            v103 = *(v56 + *(v161 + 20));
            sub_1B038C704(v56, _s6LoggerVMa_0);
            *(v99 + 10) = v103;
            *(v99 + 11) = 2082;
            v104 = *&v14[*(v102 + 20) + 4];
            sub_1B038C704(v14, _s6LoggerVMa_0);
            v105 = ConnectionID.debugDescription.getter(v104);
            v107 = sub_1B0399D64(v105, v106, &v178);

            *(v99 + 13) = v107;
            *(v99 + 21) = 2048;
            *(v99 + 23) = v163;
            _os_log_impl(&dword_1B0389000, v82, v98, "[%.*hhx-%{public}s] Authentication completed (took %ld s).", v99, 0x1Fu);
            __swift_destroy_boxed_opaque_existential_0(v101);
            v108 = v101;
            v40 = v164;
            MEMORY[0x1B272C230](v108, -1, -1);
            v96 = v99;
            goto LABEL_32;
          }

          sub_1B038C704(v56, _s6LoggerVMa_0);

          v110 = v14;
        }

        v109 = sub_1B038C704(v110, _s6LoggerVMa_0);
LABEL_39:
        v157(&v235, v109);
        v254 = v237;
        v255 = v238;
        v111 = v235;
        if (v238 == 1)
        {
          sub_1B044A65C(v235);
LABEL_41:
          v112 = *v58;
          v113 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v114 = sub_1B0BF4770(v113);

          v115 = *v40;
          sub_1B039F420(v58 + 8, &v178);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B038C704(v40, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1B0398EFC(&v224, &qword_1EB6E5588, &qword_1B0ED2750);
          v167 = 0u;
          v168 = 0u;
          *&v169 = 0;
          sub_1B0BF6DA0(&v167);
          v185 = *(v58 + 120);
          v116 = v185;
          v181 = *(v58 + 56);
          v117 = v181;
          v186 = *(v58 + 136);
          v187 = *(v58 + 152);
          v188 = *(v58 + 168);
          v182 = *(v58 + 72);
          v183 = *(v58 + 88);
          v184 = *(v58 + 104);
          v178 = *(v58 + 8);
          v179 = *(v58 + 24);
          v180 = *(v58 + 40);
          v118 = v152;
          *v152 = v114;
          *(v118 + 7) = v117;
          *(v118 + 15) = v116;
          v119 = v179;
          *(v118 + 5) = v180;
          v120 = v178;
          *(v118 + 3) = v119;
          *(v118 + 1) = v120;
          v121 = v182;
          v122 = v183;
          *(v118 + 13) = v184;
          *(v118 + 11) = v122;
          *(v118 + 9) = v121;
          v123 = v187;
          *(v118 + 21) = v188;
          v124 = v186;
          *(v118 + 19) = v123;
          *(v118 + 17) = v124;
          v118[23] = v115;
          v125 = v176;
          *(v118 + 20) = v175;
          *(v118 + 21) = v125;
          *(v118 + 176) = v177;
          v126 = v172;
          *(v118 + 16) = v171;
          *(v118 + 17) = v126;
          v127 = v174;
          *(v118 + 18) = v173;
          *(v118 + 19) = v127;
          v128 = v168;
          *(v118 + 12) = v167;
          *(v118 + 13) = v128;
          v129 = v170;
          *(v118 + 14) = v169;
          *(v118 + 15) = v129;
          return swift_storeEnumTagMultiPayload();
        }

        if (v235 >> 62 == 1)
        {
          if (!v238)
          {
            if ((v254 == 1 || v235 != 771) && v235 != 772)
            {
              goto LABEL_60;
            }

LABEL_59:
            sub_1B044A65C(v111);
            sub_1B044A6B4(&v254);
            goto LABEL_41;
          }

          if (v254 == 1)
          {
            if (v235 != 772)
            {
              goto LABEL_60;
            }
          }

          else if (v235 - 773 < 0xFFFFFFFE)
          {
            goto LABEL_60;
          }

          if (*(&v236 + 1) && (__PAIR128__(v238, *(&v254 + 1)) == v236 || (sub_1B0E46A78() & 1) != 0))
          {
            goto LABEL_59;
          }
        }

LABEL_60:
        v164 = v40;
        sub_1B0398EFC(&v224, &qword_1EB6E5588, &qword_1B0ED2750);
        v132 = v166;
        v133 = v154;
        sub_1B038CA0C(v166, v154, _s6LoggerVMa_0);
        v134 = v153;
        sub_1B038CA0C(v132, v153, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B044A64C(v111);
        sub_1B0BF7074(&v254, &v178);
        v135 = sub_1B0E43988();
        v136 = sub_1B0E458E8();
        sub_1B044A65C(v111);
        sub_1B044A6B4(&v254);
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *&v178 = v166;
          *v137 = 68158466;
          *(v137 + 4) = 2;
          *(v137 + 8) = 256;
          v138 = v161;
          v139 = *(v161 + 20);
          LODWORD(v163) = v136;
          v140 = v134;
          v141 = *(v134 + v139);
          sub_1B038C704(v140, _s6LoggerVMa_0);
          *(v137 + 10) = v141;
          *(v137 + 11) = 2082;
          v142 = *(v133 + *(v138 + 20) + 4);
          sub_1B038C704(v133, _s6LoggerVMa_0);
          v143 = ConnectionID.debugDescription.getter(v142);
          v145 = sub_1B0399D64(v143, v144, &v178);

          *(v137 + 13) = v145;
          *(v137 + 21) = 2082;
          sub_1B044A6B4(&v254);
          v146 = sub_1B0C36F70(v111);
          v148 = v147;
          sub_1B044A65C(v111);
          v149 = sub_1B0399D64(v146, v148, &v178);

          *(v137 + 23) = v149;
          _os_log_impl(&dword_1B0389000, v135, v163, "[%.*hhx-%{public}s] Did authenticate, but connection (%{public}s) does not fulfil TLS requirements.", v137, 0x1Fu);
          v150 = v166;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v150, -1, -1);
          MEMORY[0x1B272C230](v137, -1, -1);
        }

        else
        {
          sub_1B038C704(v134, _s6LoggerVMa_0);
          sub_1B044A65C(v111);
          sub_1B044A6B4(&v254);

          sub_1B038C704(v133, _s6LoggerVMa_0);
        }

        sub_1B038C704(v164, type metadata accessor for UnauthenticatedStateWithTasks);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v14 = v159;
  v55 = v160;
  v56 = v158;
  if (!__OFSUB__(result, v72))
  {
    goto LABEL_24;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1B042FBBC()
{
  v1 = *(_s6LoggerVMa_0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1B0E439A8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

void sub_1B042FC94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(v10, a3, a4);
}

uint64_t sub_1B042FD28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B042FD60(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, unsigned __int8 a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a6;
  v28 = a3;
  v29 = a2;
  v13 = _s6LoggerVMa_0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B0E44468();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB6DCDB8;
  *v21 = qword_1EB6DCDB8;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v23 = v22;
  LOBYTE(v22) = sub_1B0E44488();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    sub_1B041C97C(a8, v16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = sub_1B042FFCC(a4, a1, a5, v27, a7, v16);
    return v29(v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B042FF4C(int a1)
{
  v3 = *(_s6LoggerVMa_0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1B042FD60(a1, v4, v5, v9, v6, v7, v8, v10);
}

uint64_t sub_1B042FFCC(unsigned __int8 a1, int a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v163 = a5;
  v164 = a6;
  LODWORD(v162) = a2;
  v7 = a3;
  v161 = _s6LoggerVMa_0();
  v8 = *(*(v161 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v161);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v152 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v155 = &v152 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v156 = &v152 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v153 = &v152 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v154 = &v152 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v157 = &v152 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v158 = &v152 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v152 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v160 = &v152 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v152 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v159 = &v152 - v35;
  v36 = sub_1B0E439A8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v46 = MEMORY[0x1EEE9AC00](&v152 - v45);
  v51 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v7 == 772)
      {
        goto LABEL_4;
      }

LABEL_10:

      v71 = v164;
      (*(v37 + 16))(v41, v164, v36);
      sub_1B041C97C(v71, v14);
      sub_1B041C97C(v71, v11);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v72 = sub_1B0E43988();
      v73 = sub_1B0E458E8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v163 = v36;
        v165 = v162;
        *v74 = 68158210;
        *(v74 + 4) = 2;
        *(v74 + 8) = 256;
        v75 = v161;
        v76 = v11[*(v161 + 20)];
        sub_1B041C9E0(v11);
        *(v74 + 10) = v76;
        *(v74 + 11) = 2082;
        v77 = *&v14[*(v75 + 20) + 4];
        sub_1B041C9E0(v14);
        v78 = ConnectionID.debugDescription.getter(v77);
        v80 = sub_1B0399D64(v78, v79, &v165);

        *(v74 + 13) = v80;
        _os_log_impl(&dword_1B0389000, v72, v73, "[%.*hhx-%{public}s] TLS policy not met.", v74, 0x15u);
        v81 = v162;
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x1B272C230](v81, -1, -1);
        MEMORY[0x1B272C230](v74, -1, -1);

        sub_1B041C9E0(v71);
        (*(v37 + 8))(v41, v163);
      }

      else
      {
        sub_1B041C9E0(v11);

        sub_1B041C9E0(v71);
        sub_1B041C9E0(v14);
        (*(v37 + 8))(v41, v36);
      }

      return 1;
    }

    if ((v7 - 771) > 1)
    {
      goto LABEL_10;
    }
  }

  else if ((v7 - 771) >= 2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v52 = &v152 - v47;
  v53 = v46;
  v54 = v50;
  v55 = v49;
  v56 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5428, &qword_1B0ED0290);
  if (v162)
  {
    if (v162 == 4)
    {

      v83 = v37;
      v84 = v53;
      v85 = v53;
      v86 = v164;
      (*(v37 + 16))(v85, v164, v36);
      v87 = v160;
      sub_1B041C97C(v86, v160);
      sub_1B041C97C(v86, v29);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v88 = sub_1B0E43988();
      v89 = sub_1B0E458E8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v163 = v36;
        v92 = v91;
        v165 = v91;
        *v90 = 68158210;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v93 = v161;
        v94 = *(v161 + 20);
        v162 = v84;
        v95 = v29[v94];
        sub_1B041C9E0(v29);
        *(v90 + 10) = v95;
        *(v90 + 11) = 2082;
        v96 = *(v87 + *(v93 + 20) + 4);
        sub_1B041C9E0(v87);
        v97 = ConnectionID.debugDescription.getter(v96);
        v99 = sub_1B0399D64(v97, v98, &v165);

        *(v90 + 13) = v99;
        _os_log_impl(&dword_1B0389000, v88, v89, "[%.*hhx-%{public}s] Fatal trust failure.", v90, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x1B272C230](v92, -1, -1);
        MEMORY[0x1B272C230](v90, -1, -1);

        sub_1B041C9E0(v86);
        (*(v83 + 8))(v162, v163);
      }

      else
      {
        sub_1B041C9E0(v29);

        sub_1B041C9E0(v86);
        sub_1B041C9E0(v87);
        (*(v37 + 8))(v84, v36);
      }

      return 1;
    }

    if (v162 == 1)
    {

      v57 = v52;
      v58 = v164;
      (*(v37 + 16))(v52, v164, v36);
      v59 = v159;
      sub_1B041C97C(v58, v159);
      sub_1B041C97C(v58, v34);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v60 = sub_1B0E43988();
      v61 = sub_1B0E458E8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v165 = v162;
        *v62 = 68158210;
        *(v62 + 4) = 2;
        *(v62 + 8) = 256;
        v63 = v161;
        v64 = *(v161 + 20);
        v163 = v36;
        v65 = v34[v64];
        sub_1B041C9E0(v34);
        *(v62 + 10) = v65;
        *(v62 + 11) = 2082;
        v66 = *(v59 + *(v63 + 20) + 4);
        sub_1B041C9E0(v59);
        v67 = ConnectionID.debugDescription.getter(v66);
        v69 = sub_1B0399D64(v67, v68, &v165);

        *(v62 + 13) = v69;
        _os_log_impl(&dword_1B0389000, v60, v61, "[%.*hhx-%{public}s] Trust denied.", v62, 0x15u);
        v70 = v162;
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x1B272C230](v70, -1, -1);
        MEMORY[0x1B272C230](v62, -1, -1);

        sub_1B041C9E0(v58);
        (*(v37 + 8))(v57, v163);
      }

      else
      {
        sub_1B041C9E0(v34);

        sub_1B041C9E0(v58);
        sub_1B041C9E0(v59);
        (*(v37 + 8))(v57, v36);
      }

      return 1;
    }

    if (v51 <= 1u)
    {

      v100 = v37;
      v101 = *(v37 + 16);
      v102 = v54;
      v103 = v164;
      v104 = v36;
      v101(v54, v164, v36);
      v105 = v158;
      sub_1B041C97C(v103, v158);
      v106 = v157;
      sub_1B041C97C(v103, v157);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v107 = sub_1B0E43988();
      v108 = sub_1B0E458E8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v163 = v102;
        v111 = v110;
        v165 = v110;
        *v109 = 68158210;
        *(v109 + 4) = 2;
        *(v109 + 8) = 256;
        v112 = v161;
        v113 = v106;
        v114 = *(v106 + *(v161 + 20));
        sub_1B041C9E0(v113);
        *(v109 + 10) = v114;
        *(v109 + 11) = 2082;
        v115 = *(v105 + *(v112 + 20) + 4);
        sub_1B041C9E0(v105);
        v116 = ConnectionID.debugDescription.getter(v115);
        v118 = v104;
        v119 = sub_1B0399D64(v116, v117, &v165);

        *(v109 + 13) = v119;
        _os_log_impl(&dword_1B0389000, v107, v108, "[%.*hhx-%{public}s] Trust evaluation failed.", v109, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x1B272C230](v111, -1, -1);
        MEMORY[0x1B272C230](v109, -1, -1);

        sub_1B041C9E0(v103);
        (*(v100 + 8))(v163, v118);
        return 1;
      }

      sub_1B041C9E0(v106);

      sub_1B041C9E0(v103);
      v136 = v105;
      goto LABEL_35;
    }

    v120 = v164;
    v100 = v37;
    v104 = v36;
    switch(v162)
    {
      case 2u:

        (*(v37 + 16))(v55, v120, v36);
        v137 = v154;
        sub_1B041C97C(v120, v154);
        v138 = v153;
        sub_1B041C97C(v120, v153);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v139 = sub_1B0E43988();
        v140 = sub_1B0E45908();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v163 = v55;
          v143 = v142;
          v165 = v142;
          *v141 = 68158210;
          *(v141 + 4) = 2;
          *(v141 + 8) = 256;
          v144 = v161;
          v145 = v138;
          v146 = *(v138 + *(v161 + 20));
          sub_1B041C9E0(v145);
          *(v141 + 10) = v146;
          *(v141 + 11) = 2082;
          v147 = *(v137 + *(v144 + 20) + 4);
          sub_1B041C9E0(v137);
          v148 = ConnectionID.debugDescription.getter(v147);
          v150 = v104;
          v151 = sub_1B0399D64(v148, v149, &v165);

          *(v141 + 13) = v151;
          _os_log_impl(&dword_1B0389000, v139, v140, "[%.*hhx-%{public}s] Unspecified trust result.", v141, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v143);
          MEMORY[0x1B272C230](v143, -1, -1);
          MEMORY[0x1B272C230](v141, -1, -1);

          sub_1B041C9E0(v120);
          (*(v100 + 8))(v163, v150);
        }

        else
        {
          sub_1B041C9E0(v138);

          sub_1B041C9E0(v120);
          sub_1B041C9E0(v137);
          (*(v100 + 8))(v55, v36);
        }

        return 0;
      case 5u:

        v102 = v56;
        (*(v37 + 16))(v56, v120, v36);
        v121 = v156;
        sub_1B041C97C(v120, v156);
        v122 = v155;
        sub_1B041C97C(v120, v155);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v123 = sub_1B0E43988();
        v124 = sub_1B0E458E8();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v163 = v102;
          v127 = v126;
          v165 = v126;
          *v125 = 68158210;
          *(v125 + 4) = 2;
          *(v125 + 8) = 256;
          v128 = v161;
          v129 = v122;
          v130 = *(v122 + *(v161 + 20));
          sub_1B041C9E0(v129);
          *(v125 + 10) = v130;
          *(v125 + 11) = 2082;
          v131 = *(v121 + *(v128 + 20) + 4);
          sub_1B041C9E0(v121);
          v132 = ConnectionID.debugDescription.getter(v131);
          v134 = v104;
          v135 = sub_1B0399D64(v132, v133, &v165);

          *(v125 + 13) = v135;
          _os_log_impl(&dword_1B0389000, v123, v124, "[%.*hhx-%{public}s] Trust evaluation failed with other error.", v125, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v127);
          MEMORY[0x1B272C230](v127, -1, -1);
          MEMORY[0x1B272C230](v125, -1, -1);

          sub_1B041C9E0(v120);
          (*(v100 + 8))(v163, v134);
          return 1;
        }

        sub_1B041C9E0(v122);

        sub_1B041C9E0(v120);
        v136 = v121;
LABEL_35:
        sub_1B041C9E0(v136);
        (*(v100 + 8))(v102, v104);
        return 1;
      case 3u:
        sub_1B041C9E0(v164);

        return 2;
      default:
        result = sub_1B0E46A68();
        __break(1u);
        break;
    }
  }

  else
  {

    sub_1B041C9E0(v164);
    return 0;
  }

  return result;
}

uint64_t sub_1B0430E48(char a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[3];
  v6 = v1[2];
  return sub_1B0C2EFC0(v5, a1, v3, v4);
}

uint64_t sub_1B0430EC4()
{
  v0 = swift_allocObject();
  sub_1B0430F04();
  return v0;
}

uint64_t sub_1B0430F04()
{
  ServerResponseFramingParser.init()(v24);
  v1 = v24[9];
  *(v0 + 144) = v24[8];
  *(v0 + 160) = v1;
  v2 = v24[11];
  *(v0 + 176) = v24[10];
  *(v0 + 192) = v2;
  v3 = v24[5];
  *(v0 + 80) = v24[4];
  *(v0 + 96) = v3;
  v4 = v24[7];
  *(v0 + 112) = v24[6];
  *(v0 + 128) = v4;
  v5 = v24[1];
  *(v0 + 16) = v24[0];
  *(v0 + 32) = v5;
  v6 = v24[3];
  *(v0 + 48) = v24[2];
  *(v0 + 64) = v6;
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 256;
  v7 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  *(v0 + 242) = *v7;
  *(v0 + 243) = v8;
  *(v0 + 244) = v9;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v10 = sub_1B0E439A8();
  __swift_project_value_buffer(v10, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v11 = sub_1B0E43988();
  v12 = sub_1B0E458C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 68158210;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = sub_1B04314DC();

    *(v13 + 11) = 2082;
    sub_1B0E440F8();
    sub_1B0E44058();
    if (v22)
    {
      if (swift_dynamicCast())
      {

        v15 = v20;
LABEL_10:
        v16 = ConnectionID.debugDescription.getter(v15);
        v18 = sub_1B0399D64(v16, v17, &v23);

        *(v13 + 13) = v18;
        _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] New IMAP framer", v13, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x1B272C230](v14, -1, -1);
        MEMORY[0x1B272C230](v13, -1, -1);

        return v0;
      }
    }

    else
    {
      sub_1B0398EFC(v21, &qword_1EB6E29B0, &qword_1B0E9F008);
    }

    v15 = *(ConnectionLoggerID.invalid.unsafeMutableAddressor() + 1);
    goto LABEL_10;
  }

  return v0;
}

__n128 ServerResponseFramingParser.init()@<Q0>(uint64_t a1@<X8>)
{
  FramingParser.init(bufferSizeLimit:)(6000000, v8);
  sub_1B0431308(v9);
  v2 = v9[5];
  *(a1 + 128) = v9[4];
  *(a1 + 144) = v2;
  v3 = v10;
  v4 = v9[1];
  *(a1 + 64) = v9[0];
  *(a1 + 80) = v4;
  v5 = v9[3];
  *(a1 + 96) = v9[2];
  *(a1 + 112) = v5;
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = result;
  *(a1 + 160) = v3;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t FramingParser.init(bufferSizeLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EB6DE5C0 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a2 = v9;
    a1 = v8;
  }

  v3 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v4 = dword_1EB737EB8;
  v5 = word_1EB737EBC;
  v6 = byte_1EB737EBE;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = qword_1EB737EB0;
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  *(a2 + 54) = v6;
  *(a2 + 56) = a1;
}

__n128 sub_1B0431308@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ParsedStringCache();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B0EE7F20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6558, &qword_1B0EE8180);
  v3 = sub_1B0E45278();
  *(v3 + 16) = 32;
  bzero((v3 + 32), 0x300uLL);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v3;
  v13[0] = xmmword_1B0EE7F30;
  v13[1] = xmmword_1B0EE7F40;
  v14 = sub_1B0441678;
  v15 = v2;
  ResponseParser.init(options:)(v13, &v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v16 = v8;
  v17 = v9;
  *v21 = 0;
  *&v21[8] = 0;
  *&v21[15] = 0;
  v22[3] = v11;
  v22[4] = v12;
  v22[1] = v9;
  v22[2] = v10;
  v22[0] = v8;
  v23 = 0;
  v24[0] = 0;
  *(v24 + 7) = 0;
  sub_1B0431468(&v16, v7);
  sub_1B04314A0(v22);
  v4 = *v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v4;
  *(a1 + 95) = *&v21[15];
  v5 = v17;
  *a1 = v16;
  *(a1 + 16) = v5;
  result = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1B04314DC()
{
  sub_1B0E440F8();
  sub_1B0E44058();

  if (!v7)
  {
    sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v0 = *v2;
    v1 = *(v2 + 1);
    return v0 | (v1 << 32);
  }

  v0 = v4;
  v1 = v5;
  return v0 | (v1 << 32);
}

uint64_t sub_1B04315B0@<X0>(uint64_t a1@<X8>)
{
  sub_1B0E440F8();
  sub_1B0E44058();

  v2 = v25;
  sub_1B0398EFC(v24, &qword_1EB6E29B0, &qword_1B0E9F008);
  if (v2)
  {
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v3 = sub_1B0E439A8();
    __swift_project_value_buffer(v3, qword_1EB6DCD58);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v4 = sub_1B0E43988();
    v5 = sub_1B0E458C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24[0] = v7;
      *v6 = 68158210;
      *(v6 + 4) = 2;
      *(v6 + 8) = 256;
      *(v6 + 10) = sub_1B04314DC();

      *(v6 + 11) = 2082;
      v8 = sub_1B04314DC();
      v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
      v11 = sub_1B0399D64(v9, v10, v24);

      *(v6 + 13) = v11;
      _os_log_impl(&dword_1B0389000, v4, v5, "[%.*hhx-%{public}s] (post STARTTLS) IMAP framer loaded.", v6, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1B272C230](v7, -1, -1);
      MEMORY[0x1B272C230](v6, -1, -1);
    }

    else
    {
    }

    sub_1B0E44008();

    sub_1B0E43FF8();
    v25 = MEMORY[0x1E69E6370];
    LOBYTE(v24[0]) = 1;
    sub_1B0E44028();
    sub_1B0E440D8();
    goto LABEL_13;
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v12 = sub_1B0E439A8();
  __swift_project_value_buffer(v12, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E458C8();
  if (!os_log_type_enabled(v13, v14))
  {

LABEL_13:

    goto LABEL_14;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v24[0] = v16;
  *v15 = 68158210;
  *(v15 + 4) = 2;
  *(v15 + 8) = 256;
  *(v15 + 10) = sub_1B04314DC();

  *(v15 + 11) = 2082;
  v17 = sub_1B04314DC();
  v18 = ConnectionID.debugDescription.getter(HIDWORD(v17));
  v20 = sub_1B0399D64(v18, v19, v24);

  *(v15 + 13) = v20;
  _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] IMAP framer loaded.", v15, 0x15u);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  MEMORY[0x1B272C230](v16, -1, -1);
  MEMORY[0x1B272C230](v15, -1, -1);

LABEL_14:
  v21 = *MEMORY[0x1E6977CC8];
  v22 = sub_1B0E43FD8();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

double sub_1B04319C0@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Authenticator();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UnauthenticatedState();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51[-v19];
  sub_1B044CF68(v2, &v51[-v19]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 10)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_1B044CF68(v20, v18);
        v22 = *v18;
        *&v51[120] = *(v18 + 120);
        *&v51[136] = *(v18 + 136);
        *&v51[152] = *(v18 + 152);
        *&v51[168] = *(v18 + 168);
        *&v51[56] = *(v18 + 56);
        *&v51[72] = *(v18 + 72);
        *&v51[88] = *(v18 + 88);
        *&v51[104] = *(v18 + 104);
        *&v51[8] = *(v18 + 8);
        *&v51[24] = *(v18 + 24);
        *&v51[40] = *(v18 + 40);
        *v51 = v22;
        sub_1B0BD14CC(v51);
LABEL_16:
        v60 = *&v51[128];
        v61 = *&v51[144];
        v62[0] = *&v51[160];
        *(v62 + 9) = *&v51[169];
        v56 = *&v51[64];
        v57 = *&v51[80];
        v58 = *&v51[96];
        v59 = *&v51[112];
        v52 = *v51;
        v53 = *&v51[16];
        v54 = *&v51[32];
        v55 = *&v51[48];
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v52);
        v74 = v60;
        v75 = v61;
        v76[0] = v62[0];
        v36 = *(v62 + 9);
        goto LABEL_17;
      }

LABEL_19:
      sub_1B044CFCC(&v66);
      goto LABEL_20;
    }

    sub_1B044CF68(v20, v15);
    v23 = *v15;
    v24 = *(v15 + 1);
    v25 = *(v15 + 2);
    v26 = v15[24];
    v27 = v26 >> 6;
    if (v26 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v44 = v25 | v24;
        if (v25 | v24 | v23 || v26 != 192)
        {
          v45 = v26 == 192 && v23 == 1;
          v46 = v45 && v44 == 0;
          if (v46 || (v26 == 192 ? (v47 = v23 == 2) : (v47 = 0), v47 ? (v48 = v44 == 0) : (v48 = 0), !v48 && (v26 == 192 ? (v49 = v23 == 3) : (v49 = 0), v49 ? (v50 = v44 == 0) : (v50 = 0), v50)))
          {
            *v51 = 0;
            *&v51[8] = 0;
            v37 = 1;
            goto LABEL_14;
          }
        }

LABEL_13:
        *v51 = 0;
        *&v51[8] = 0;
        v37 = 3;
LABEL_14:
        *&v51[16] = v37;
        goto LABEL_15;
      }
    }

    else if (!v27)
    {
      *v51 = *v15;
      *&v51[8] = v24;
      *&v51[16] = v25;
LABEL_15:
      sub_1B0BD13E4(v51);
      goto LABEL_16;
    }

    sub_1B0BD1458(v23, v24, v25, v26);
    goto LABEL_13;
  }

  sub_1B044CF68(v20, v12);
  v28 = sub_1B0BD1360(v12, v7);
  v29 = *v7;
  MEMORY[0x1EEE9AC00](v28);
  *&v51[-16] = v7;
  sub_1B0BD4E3C(sub_1B0BD13C4, v30, &v66);
  v63[2] = v68;
  v64 = v69;
  v65 = v70;
  v63[0] = v66;
  v63[1] = v67;
  if ((~*(&v68 + 1) & 0x3000000000000000) != 0 || (*(&v64 + 1) & 0x1000000000000000) == 0)
  {
    sub_1B0BD13F0(v63);
    sub_1B0447964(v7, type metadata accessor for Authenticator);
    goto LABEL_19;
  }

  v31 = sub_1B0BD3F38();
  v33 = v32;
  v35 = v34;
  sub_1B0447964(v7, type metadata accessor for Authenticator);
  *v51 = v31;
  *&v51[8] = v33;
  *&v51[16] = v35;
  sub_1B0BD13E4(v51);
  v60 = *&v51[128];
  v61 = *&v51[144];
  v62[0] = *&v51[160];
  *(v62 + 9) = *&v51[169];
  v56 = *&v51[64];
  v57 = *&v51[80];
  v58 = *&v51[96];
  v59 = *&v51[112];
  v52 = *v51;
  v53 = *&v51[16];
  v54 = *&v51[32];
  v55 = *&v51[48];
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v52);
  v74 = v60;
  v75 = v61;
  v76[0] = v62[0];
  v36 = *(v62 + 9);
LABEL_17:
  *(v76 + 9) = v36;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
LABEL_20:
  sub_1B0447964(v20, type metadata accessor for UnauthenticatedState);
  v38 = v75;
  a1[8] = v74;
  a1[9] = v38;
  a1[10] = v76[0];
  *(a1 + 169) = *(v76 + 9);
  v39 = v71;
  a1[4] = v70;
  a1[5] = v39;
  v40 = v73;
  a1[6] = v72;
  a1[7] = v40;
  v41 = v67;
  *a1 = v66;
  a1[1] = v41;
  result = *&v68;
  v43 = v69;
  a1[2] = v68;
  a1[3] = v43;
  return result;
}

uint64_t sub_1B0431EC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
    ;
  }

  sub_1B0448650();
  sub_1B03D5174(a1);
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

BOOL sub_1B0432080()
{
  v0 = sub_1B0E44088();
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v2 = sub_1B0E43988();
  v3 = sub_1B0E458D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 68158466;
    *(v4 + 4) = 2;
    *(v4 + 8) = 256;
    *(v4 + 10) = sub_1B04314DC();

    *(v4 + 11) = 2082;
    v6 = sub_1B04314DC();
    v7 = ConnectionID.debugDescription.getter(HIDWORD(v6));
    v9 = sub_1B0399D64(v7, v8, &v11);

    *(v4 + 13) = v9;
    *(v4 + 21) = 1024;
    *(v4 + 23) = v0 & 1;
    _os_log_impl(&dword_1B0389000, v2, v3, "[%.*hhx-%{public}s] parseInput() returned %{BOOL}d", v4, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1B272C230](v5, -1, -1);
    MEMORY[0x1B272C230](v4, -1, -1);
  }

  else
  {
  }

  return (v0 & 1) == 0;
}

uint64_t sub_1B0432268(const void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  result = 0;
  if ((a3 & 1) == 0 && a1)
  {
    if (a2 == a1)
    {
      return 0;
    }

    else
    {
      sub_1B043257C(a1, a2, a6);
      return a2 - a1;
    }
  }

  return result;
}

void sub_1B043257C(const void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v4 = v3;
  v7 = sub_1B0E43868();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v54 - v12;
  v13 = sub_1B0E43828();
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Deflate.InputBuffer(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Deflate.Result(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2 - a1;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v4 + 248);
  if (a1)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v55 = v24;
    v27 = v4;
    v28 = *(v4 + 256);
    *v19 = a1;
    v19[1] = v26;
    swift_storeEnumTagMultiPayload();

    v29 = v64;
    sub_1B0BFAAE0(v19, v23);
    if (v29)
    {
      sub_1B03D6500(v25);
      sub_1B03D6B24(v19, type metadata accessor for Deflate.InputBuffer);
      return;
    }

    v64 = 0;
    v30 = sub_1B03D6B24(v19, type metadata accessor for Deflate.InputBuffer);
    MEMORY[0x1EEE9AC00](v30);
    *(&v54 - 2) = sub_1B0C05AA0;
    *(&v54 - 1) = v27;
    sub_1B0E44318();
    v56 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B03D6500(v25);
    sub_1B03D6B24(v23, type metadata accessor for Deflate.Result);
    v4 = v27;
    v24 = v55;
  }

  else
  {
    swift_beginAccess();
    ServerResponseFramingParser.append(_:)(a1, v26);
    swift_endAccess();
    v56 = v24;
  }

  sub_1B0E440F8();
  sub_1B0E44058();

  v32 = v61;
  v31 = v62;
  v33 = v63;
  v34 = v60;
  if (v67)
  {
    v35 = swift_dynamicCast();
    (*(v32 + 56))(v34, v35 ^ 1u, 1, v31);
    if ((*(v32 + 48))(v34, 1, v31) != 1)
    {
      v36 = v24;
      (*(v32 + 32))(v33, v34, v31);
      v37 = tracingSignposter.unsafeMutableAddressor();
      (*(v58 + 16))(v57, v37, v59);
      v38 = sub_1B0E43858();
      v39 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v40 = swift_slowAlloc();
        *v40 = 134218240;
        *(v40 + 4) = v36;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v56;
        v41 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v38, v39, v41, "Connection.didReceiveData", "%ld,%ld", v40, 0x16u);
        v42 = v40;
        v33 = v63;
        MEMORY[0x1B272C230](v42, -1, -1);
      }

      (*(v58 + 8))(v57, v59);
      (*(v32 + 8))(v33, v31);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1B0398EFC(v66, &qword_1EB6E29B0, &qword_1B0E9F008);
    (*(v32 + 56))(v34, 1, 1, v31);
  }

  sub_1B0398EFC(v34, &qword_1EB6E5530, &qword_1B0ED0CF8);
LABEL_19:
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v43 = sub_1B0E439A8();
  __swift_project_value_buffer(v43, qword_1EB6DCD58);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  v44 = sub_1B0E43988();
  v45 = sub_1B0E458D8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68 = v47;
    *v46 = 0x204100502;
    *(v46 + 8) = 256;
    v48 = sub_1B04314DC();

    *(v46 + 10) = v48;

    *(v46 + 11) = 2082;
    v49 = sub_1B04314DC();
    v50 = ConnectionID.debugDescription.getter(HIDWORD(v49));
    v52 = sub_1B0399D64(v50, v51, &v68);

    *(v46 + 13) = v52;
    *(v46 + 21) = 2048;
    *(v46 + 23) = v56;
    *(v46 + 31) = 2048;
    swift_beginAccess();
    v53 = *(v4 + 56);
    LODWORD(v52) = *(v4 + 60);

    *(v46 + 33) = (v52 - v53);

    _os_log_impl(&dword_1B0389000, v44, v45, "[%.*hhx-%{public}s] Appending %{iec-bytes}ld to receive buffer. Now has %{iec-bytes}ld.", v46, 0x29u);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x1B272C230](v47, -1, -1);
    MEMORY[0x1B272C230](v46, -1, -1);
  }

  else
  {
  }
}

uint64_t ServerResponseFramingParser.append(_:)(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  FramingParser.appendAndFrameBytes(_:)(a1, a2);
  sub_1B0434420(v6);
}

void ByteBuffer._setBytes(_:at:)(const void *a1, uint64_t a2, Swift::UInt32 a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + v4;
  if (__CFADD__(a3, v4))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = *(v3 + 4);
    v11 = v5 >= v10;
    v12 = v5 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (!HIDWORD(v4))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(v4, a3);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a2, a3);
    return;
  }

LABEL_15:
  __break(1u);
}

void FramingParser.appendAndFrameBytes(_:)(const void *a1, uint64_t a2)
{
  if (a1 && a2 != a1)
  {
    ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 44));
    v3 = *(v2 + 44);
    v5 = __CFADD__(v3, v4);
    v6 = v3 + v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 44) = v6;
      sub_1B0433C50();
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v4 = *(v2 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 22) | (*(v2 + 10) << 8);
  v6 = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6 + capacity;
  if (__CFADD__(v6, capacity))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *(v2 + 4))
  {
    v7 = *(v2 + 4);
  }

  v8 = v7 - v6;
  if (v7 < v6)
  {
    goto LABEL_16;
  }

  v9 = *v2;
  v10 = ByteBuffer._Storage.allocateStorage(capacity:)(capacity);
  v11 = *(v9 + 56);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_beginAccess();
  v11(v12, *(v9 + 24) + v6, v8);

  *v3 = v10;
  v13 = *(v3 + 2);
  v14 = v13 >= v4;
  v15 = v13 - v4;
  if (!v14)
  {
    goto LABEL_17;
  }

  *(v3 + 2) = v15;
  v16 = *(v3 + 3);
  v14 = v16 >= v4;
  v17 = v16 - v4;
  if (v14)
  {
    *(v3 + 3) = v17;
    swift_beginAccess();
    *(v3 + 4) = *(v10 + 16);
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(unint64_t a1, int a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = ByteBuffer._Storage.allocateStorage(capacity:)(a2);
  v6 = *(v2 + 56);
  swift_beginAccess();
  v7 = *(v5 + 24);
  swift_beginAccess();
  if (v4 < v3)
  {
    v8 = -(v3 - v4);
  }

  else
  {
    v8 = v4 - v3;
  }

  v6(v7, *(v2 + 24) + v3, v8);
  return v5;
}

uint64_t ByteBuffer._Storage.allocateStorage(capacity:)(int a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v1[4];
  result = v9(v8);
  if (result)
  {
    v11 = result;
    v12 = v1[7];
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 24) = v11;
    *(result + 32) = v9;
    *(result + 40) = *(v1 + 5);
    *(result + 56) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(Swift::UInt32 extraCapacity, Swift::Bool resetIndices)
{
  v3 = *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8));
  v4 = __CFADD__(v3, extraCapacity);
  v5 = v3 + extraCapacity;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, resetIndices);
  }
}

Swift::UInt32 __swiftcall UInt32.nextPowerOf2ClampedToMax()()
{
  if (!v0)
  {
    return 1;
  }

  v1 = (v0 - 1) | ((v0 - 1) >> 1) | (((v0 - 1) | ((v0 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | HIWORD(v2);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_1B0433338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v63[1] = a2;
  v64 = a1;
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v63 - v7;
  v9 = type metadata accessor for AuthenticationTask();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Authenticator();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UnauthenticatedState();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0433BE8(v4, v21, type metadata accessor for UnauthenticatedState);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      sub_1B0C3A6F0(v21, v17, type metadata accessor for Authenticator);
      sub_1B03B5C80(&v17[*(v14 + 32)], v8, &qword_1EB6E53F8, &qword_1B0ECFF80);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_1B0C3A6F0(v8, v13, type metadata accessor for AuthenticationTask);
        v85 = v9;
        v86 = &off_1F271C380;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
        sub_1B0C3A6F0(v13, boxed_opaque_existential_1, type metadata accessor for AuthenticationTask);
        sub_1B04479C4(v17, type metadata accessor for Authenticator);
        v24 = v85;
        v25 = v86;
        goto LABEL_15;
      }

      sub_1B04479C4(v17, type metadata accessor for Authenticator);
      result = sub_1B0398EFC(v8, &qword_1EB6E53F8, &qword_1B0ECFF80);
      v31 = v65;
      *v65 = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0;
      return result;
    case 3:
      v32 = *v21;
      v33 = Capability.id.unsafeMutableAddressor();
      v34 = v33[1];
      v35 = v33[2];
      v36 = *(v33 + 24);
      *&v72 = *v33;
      *(&v72 + 1) = v34;
      *&v73 = v35;
      BYTE8(v73) = v36;
      MEMORY[0x1EEE9AC00](v33);
      v63[-2] = &v72;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0C32414(sub_1B0C10BD0, &v63[-4], v32);

      if ((v37 & 1) == 0)
      {
        goto LABEL_3;
      }

      v38 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C090B4(v38, &v72);
      *(&v66[1] + 7) = v73;
      *(&v66[2] + 7) = v74;
      *(&v66[3] + 7) = v75;
      *(&v66[4] + 7) = v76;
      *(v66 + 7) = v72;
      v24 = &type metadata for IdentifyServer;
      v25 = &off_1F271E440;
      v85 = &type metadata for IdentifyServer;
      v86 = &off_1F271E440;
      v39 = swift_allocObject();
      v40 = v66[0];
      *(v39 + 33) = v66[1];
      v41 = v66[3];
      *(v39 + 49) = v66[2];
      *(v39 + 65) = v41;
      *(v39 + 80) = *(&v66[3] + 15);
      *&v83 = v39;
      *(v39 + 16) = 3;
      *(v39 + 17) = v40;
      *(v39 + 104) = 0;
      *(v39 + 112) = 0;
      *(v39 + 96) = 0;
      goto LABEL_15;
    case 4:
      sub_1B04479C4(v21, type metadata accessor for UnauthenticatedState);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B0EC1E70;
      v27 = Capability.uidOnly.unsafeMutableAddressor();
      v28 = v27[1];
      v29 = v27[2];
      v30 = *(v27 + 24);
      *(v26 + 32) = *v27;
      *(v26 + 40) = v28;
      *(v26 + 48) = v29;
      *(v26 + 56) = v30;
      v24 = &type metadata for Enable;
      v25 = &off_1F271DF88;
      v85 = &type metadata for Enable;
      v86 = &off_1F271DF88;
      LOBYTE(v83) = 4;
      *(&v83 + 1) = v26;
      v84 = MEMORY[0x1E69E7CD0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      goto LABEL_15;
    case 5:
      sub_1B04479C4(v21, type metadata accessor for UnauthenticatedState);
      v24 = &type metadata for Compress;
      v25 = &off_1F271CF00;
      v85 = &type metadata for Compress;
      v86 = &off_1F271CF00;
      LOBYTE(v83) = 6;
      goto LABEL_15;
    case 8:
      v42 = *(v21 + 1);
      v68 = *v21;
      v69 = v42;
      v43 = *(v21 + 3);
      v70 = *(v21 + 2);
      v71 = v43;
      v44 = *(v21 + 8);
      v45 = *(v21 + 184);
      v46 = *(v21 + 216);
      v80 = *(v21 + 200);
      v81 = v46;
      v82 = *(v21 + 232);
      v47 = *(v21 + 120);
      v48 = *(v21 + 152);
      v76 = *(v21 + 136);
      v77 = v48;
      v78 = *(v21 + 168);
      v79 = v45;
      v49 = *(v21 + 88);
      v72 = *(v21 + 72);
      v73 = v49;
      v74 = *(v21 + 104);
      v75 = v47;
      sub_1B039FF14(&v72);
      v50 = Capability.applePushService.unsafeMutableAddressor();
      v51 = v50[1];
      v52 = v50[2];
      v53 = *(v50 + 24);
      *&v83 = *v50;
      *(&v83 + 1) = v51;
      v84 = v52;
      LOBYTE(v85) = v53;
      MEMORY[0x1EEE9AC00](v50);
      v63[-2] = &v83;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54 = sub_1B0C32414(sub_1B0C10BD0, &v63[-4], v44);

      if (v54)
      {
        LOBYTE(v83) = 1;
        *(v67 + 7) = v68;
        *(&v67[1] + 7) = v69;
        *(&v67[2] + 7) = v70;
        *(&v67[3] + 7) = v71;
        v24 = &type metadata for RegisterForPush;
        v25 = &off_1F271FFC0;
        v85 = &type metadata for RegisterForPush;
        v86 = &off_1F271FFC0;
        v55 = swift_allocObject();
        v56 = v67[0];
        *(v55 + 33) = v67[1];
        v57 = v67[3];
        *(v55 + 49) = v67[2];
        *(v55 + 65) = v57;
        *&v83 = v55;
        *(v55 + 16) = 5;
        v58 = *(&v67[3] + 15);
        *(v55 + 17) = v56;
        v59 = MEMORY[0x1E69E7CC0];
        *(v55 + 80) = v58;
        *(v55 + 88) = v59;
        *(v55 + 96) = 0;
        *(v55 + 104) = 1;
        *(v55 + 112) = 0;
        *(v55 + 120) = 0;
LABEL_15:
        v61 = v65;
        __swift_project_boxed_opaque_existential_0(&v83, v24);
        v62 = (v25[1])(v24, v25);
        if (sub_1B0A9299C(v62, v64))
        {
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v83);
          *(v61 + 32) = 0;
          *v61 = 0u;
          *(v61 + 16) = 0u;
        }

        else
        {
          return sub_1B0450C74(&v83, v61);
        }
      }

      else
      {
        result = sub_1B0A1C37C(&v68);
LABEL_3:
        v23 = v65;
        *(v65 + 32) = 0;
        *v23 = 0u;
        v23[1] = 0u;
      }

      return result;
    case 11:
    case 14:
      goto LABEL_3;
    case 12:
    case 15:
      v24 = &type metadata for GetCapabilities;
      v25 = &off_1F271C600;
      v85 = &type metadata for GetCapabilities;
      v86 = &off_1F271C600;
      LOBYTE(v83) = 0;
      goto LABEL_15;
    case 13:
      v24 = &type metadata for StartTLS;
      v25 = &off_1F2720398;
      v85 = &type metadata for StartTLS;
      v86 = &off_1F2720398;
      LOWORD(v83) = 0;
      goto LABEL_15;
    default:
      result = sub_1B04479C4(v21, type metadata accessor for UnauthenticatedState);
      goto LABEL_3;
  }
}

uint64_t sub_1B0433B10()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1B0433B70()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  if (v0[13])
  {
    v6 = v0[12];

    v7 = v0[13];

    v8 = v0[14];
  }

  return swift_deallocObject();
}

uint64_t sub_1B0433BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1B0433C50()
{
  result = sub_1B043929C();
  v2 = *(result + 2);
  if (v2)
  {
    if (*&result[32 * v2 + 16] >> 62 == 1)
    {
      v3 = *(v0 + 40);
      v4 = *(v0 + 44);
      if (*(v0 + 56) < (v4 - v3))
      {
        v5 = result;

        sub_1B0D8E204();
        swift_allocError();
        swift_willThrow();
        if (v3 < 0x3E9 || v4 >> 1 >= v3)
        {
          return v5;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = *(v0 + 40);
  if (v6 >= 0x3E9 && *(v0 + 44) >> 1 < v6)
  {
    v5 = result;
LABEL_12:
    ByteBuffer.discardReadBytes()();
    return v5;
  }

  return result;
}

void sub_1B0433D28()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 44);
  v4 = v2 - v3;
  if (v1 >= v4)
  {
LABEL_32:
    v21 = *(v0 + 16);
    if ((v21 >> 61) <= 1)
    {
      if (v21 >> 61)
      {
        v25 = *(v0 + 8);
      }
    }

    return;
  }

  while (1)
  {
    v5 = *v0;
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v7 >> 61;
    if ((v7 >> 61) > 1)
    {
      break;
    }

    if (v8)
    {
      sub_1B0D8E258(*v0, *(v0 + 8), *(v0 + 16), HIBYTE(v7) & 0x1F);
      sub_1B0D8C688(v5, v6, v7 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1B04343E0(v5, v6, v7);
      return;
    }

    if (v1 >= v4)
    {
      __break(1u);
      goto LABEL_62;
    }

    v15 = *(v0 + 54);
    v16 = *(v0 + 52);
    v17 = *(v0 + 32);
    swift_beginAccess();
    v18 = *(v17 + 24) + (v15 | (v16 << 8)) + v3;
    v19 = *(v18 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v19 > 33)
    {
      if (v19 != 34)
      {
        if (v19 == 123)
        {
          *v0 = 0;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0x2400000000000000;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }

    if (v19 == 10)
    {
      if (v5)
      {
        goto LABEL_54;
      }

      v20 = v3 + 1;
      if (v3 == -1)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v1 || v2 < v20)
      {
        goto LABEL_59;
      }

      v14 = 0;
      *(v0 + 40) = v20;
      *(v0 + 24) = 0;
LABEL_27:
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      *v0 = 1;
      goto LABEL_5;
    }

    if (v19 == 13)
    {
      if (v14 >= v4)
      {
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
      }

      else
      {
        if (*(v18 + v14) == 10)
        {
          v14 = v1 + 2;
          *(v0 + 24) = v1 + 2;
        }

        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
        *v0 = 1;
      }

LABEL_54:
      v30 = ByteBuffer.readSlice(length:)(v14);
      *(v0 + 24) = 0;
      if (v30)
      {
        return;
      }

      goto LABEL_62;
    }

LABEL_5:
    v3 = *(v0 + 40);
    v4 = v2 - v3;
    v1 = v14;
    if (v14 >= v4)
    {
      goto LABEL_32;
    }
  }

  if (v8 == 3)
  {
    if (v1 >= v4)
    {
      goto LABEL_62;
    }

    v9 = *(v0 + 54);
    v10 = *(v0 + 52);
    v11 = *(v0 + 32);
    swift_beginAccess();
    v12 = *(v11 + 24) + (v9 | (v10 << 8)) + v3;
    v13 = *(v12 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v13 == 10)
    {
      goto LABEL_50;
    }

    if (v13 == 13)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      goto LABEL_3;
    }

    if (v13 == 34)
    {
      goto LABEL_27;
    }

    if (v13 != 92)
    {
LABEL_3:
      *v0 = 0;
      *(v0 + 8) = 0;
    }

    else
    {
      *v0 = xmmword_1B0ECE570;
    }

    *(v0 + 16) = 0x6000000000000000;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    sub_1B0D8C958(*v0 & 1, *(v0 + 8));
    v22 = *(v0 + 24);
    if (v22 <= 0)
    {
      v28 = *(v0 + 16) >> 61;
      return;
    }

    v23 = ByteBuffer.readSlice(length:)(v22);
    *(v0 + 24) = 0;
    if (v23)
    {
      if (v6 >= (HIDWORD(v24) - v24))
      {
        return;
      }

      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v26 = v0;
  sub_1B0434238();
  v27 = *(v0 + 24);
  v0 += 32;
  v14 = ByteBuffer.readSlice(length:)(v27);
  *(v26 + 24) = 0;
  if (v14)
  {
    return;
  }

  __break(1u);
LABEL_44:
  if (v14 >= v4)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else
  {
    if (*(v12 + v14) == 10)
    {
      v14 = v1 + 2;
      *(v0 + 24) = v1 + 2;
    }

    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

LABEL_50:
  v29 = ByteBuffer.readSlice(length:)(v14);
  *(v0 + 24) = 0;
  if (v29)
  {
    return;
  }

LABEL_62:
  __break(1u);
}

uint64_t sub_1B0434238()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v1 >= (*(v0 + 44) - v2))
  {
    result = sub_1B04343E0(*v0, *(v0 + 8), *(v0 + 16));
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 54);
    v4 = *(v0 + 52);
    v5 = *(v0 + 32);
    swift_beginAccess();
    if (*(*(v5 + 24) + (v3 | (v4 << 8)) + v2 + v1) == 10)
    {
      *(v0 + 24) = v1 + 1;
    }

    result = sub_1B04343E0(*v0, *(v0 + 8), *(v0 + 16));
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

  return result;
}

unint64_t ByteBuffer.readSlice(length:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 12);
  if (v3 < result || (v3 - result) < v4)
  {
    return 0;
  }

  v6 = *(v1 + 22) | (*(v1 + 20) << 8);
  if (__CFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = *v1;
    if ((v6 + v4) >> 24)
    {
      v8 = *(v1 + 16);
      result = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(*(v1 + 8), v2, *v1);
    }

    else
    {
    }

    if (!__CFADD__(v4, v2))
    {
      *(v1 + 8) = v4 + v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04343E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    return sub_1B0D8E268(result, a2, a3, HIBYTE(a3) & 0x1F);
  }

  return result;
}

uint64_t sub_1B04343F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return result;
}

uint64_t sub_1B043440C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return result;
}

uint64_t sub_1B0434420(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v37 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (a1 + 56);
  *&v7 = 68157955;
  v31 = v7;
  v32 = xmmword_1B0ECE570;
  v30 = v2;
  v35 = v4;
  while (1)
  {
    v11 = *(v10 - 3);
    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (v14)
      {
        *(v2 + 168) = v11;
        *(v2 + 176) = 0;
      }

      else
      {
        v39 = *(v10 - 3);
        v40 = v12;
        v41 = v13;
        v42 = WORD2(v13);
        v43 = BYTE6(v13);
        result = sub_1B0434864(&v39);
        *(v2 + 168) = 0;
        *(v2 + 176) = 1;
      }

      goto LABEL_4;
    }

    v15 = *v10;
    if (v14 != 2)
    {
      break;
    }

    v39 = *(v10 - 3);
    v40 = v12;
    v41 = v13;
    v42 = WORD2(v13);
    v43 = BYTE6(v13);
    result = sub_1B0434864(&v39);
    *(v2 + 168) = v15 & ~(v15 >> 63);
    *(v2 + 176) = v15 < 0;
LABEL_4:
    v10 += 4;
    if (!--v9)
    {
      return result;
    }
  }

  v38 = HIDWORD(v13);
  swift_beginAccess();
  v34 = *(v11 + 24);
  sub_1B04343F8(v11, v12, v13);
  v36 = v15;
  sub_1B04343F8(v11, v12, v13);
  if (qword_1EB6E63B0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B0E439A8();
  __swift_project_value_buffer(v16, qword_1EB7383B8);
  v17 = sub_1B0E43988();
  v18 = sub_1B0E458F8();
  if (!os_log_type_enabled(v17, v18))
  {
LABEL_16:

    sub_1B0D0CB00();
    v23 = swift_allocError();
    *v24 = v32;
    *(v24 + 16) = 3;
    v25 = v37;
    *v37 = v23;
    v25[1] = v11;
    v25[2] = v12;
    *(v25 + 30) = BYTE6(v13);
    *(v25 + 14) = v38;
    *(v25 + 6) = v13;
    swift_storeEnumTagMultiPayload();
    v26 = *(v2 + 184);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1B044861C(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1B044861C(v27 > 1, v28 + 1, 1, v26);
    }

    sub_1B043440C(v11, v12, v13);
    sub_1B043440C(v11, v12, v13);
    v26[2] = v28 + 1;
    result = sub_1B044533C(v37, v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, type metadata accessor for ServerResponseFramingParser.Frame);
    *(v2 + 184) = v26;
    goto LABEL_4;
  }

  v19 = HIDWORD(v12) - v12;
  result = swift_slowAlloc();
  *result = v31;
  if (v19 >= 0xFFFFFFFF80000000)
  {
    if (v19 > 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    v20 = result;
    v21 = (BYTE6(v13) | (v38 << 8)) + v12;
    *(result + 4) = v19;
    v22 = v34 + v21;
    *(result + 8) = 2101;
    *(result + 10) = v22;
    _os_log_impl(&dword_1B0389000, v17, v18, "Received invalid data frame from server: %{sensitive}.*P", result, 0x12u);
    MEMORY[0x1B272C230](v20, -1, -1);
    v2 = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0434864(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5680, &qword_1B0EE8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - v6;
  v46 = type metadata accessor for ResponseOrContinuationRequest(0);
  v51 = *(v46 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6598, &qword_1B0EE8178);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - v12;
  v54 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v54);
  v56 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v44 - v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  v24 = *(a1 + 22);
  v25 = *(v2 + 144);
  v47 = v2 + 144;
  if (v25)
  {
    v26 = *(v2 + 166);
    v27 = *(v2 + 164);
    v28 = *(v2 + 160);
    v29 = *(v2 + 152);
    v64 = v25;
    v65 = v29;
    v66 = v28;
    v67 = v27;
    v68 = v26;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v61 = v22;
    v62 = v23;
    v63 = v24;
    ByteBuffer.writeBuffer(_:)(&v58);
    v22 = v66;
    v23 = v67;
    v24 = v68;
    v19 = v64;
    v30 = v65;
    v31 = v66 | (v67 << 32) | (v68 << 48);
  }

  else
  {
    v30 = v20 | (v21 << 32);
    v31 = v22 | (v23 << 32) | (v24 << 48);
  }

  *(v2 + 144) = v19;
  *(v2 + 152) = v30;
  *(v2 + 160) = v31;
  *(v2 + 166) = BYTE6(v31);
  v57 = v2;
  *(v2 + 164) = WORD2(v31);
  if (v19)
  {
    v52 = v47 - 80;
    v53 = (v14 + 56);
    v45 = (v51 + 48);
    v48 = v14;
    v49 = v7;
    v51 = v14 + 48;
    while (1)
    {
      v64 = v19;
      v65 = v30;
      v66 = v22;
      v67 = v23;
      v68 = v24;

      ResponseParser.parseResponseStream(buffer:)(&v64, v7);
      if ((*v45)(v7, 1, v46) == 1)
      {
        sub_1B0398EFC(v7, &qword_1EB6E5680, &qword_1B0EE8170);
        v32 = v54;
        v33 = *v53;
        v34 = v13;
        v35 = 1;
      }

      else
      {
        v36 = v44;
        sub_1B044533C(v7, v44, type metadata accessor for ResponseOrContinuationRequest);
        sub_1B044533C(v36, v13, type metadata accessor for ResponseOrContinuationRequest);
        v32 = v54;
        swift_storeEnumTagMultiPayload();
        v33 = *v53;
        v34 = v13;
        v35 = 0;
      }

      v50 = v33;
      v33(v34, v35, 1, v32);

      if (v65 == HIDWORD(v30))
      {

        v19 = 0;
        v30 = 0;
        v37 = 0;
      }

      else
      {
        v30 = v30 & 0xFFFFFFFF00000000 | v65;
        v37 = v22 | (v23 << 32) | (v24 << 48);
      }

      v38 = v57;
      *(v57 + 144) = v19;
      *(v38 + 152) = v30;
      *(v38 + 160) = v37;
      *(v38 + 166) = BYTE6(v37);
      v22 = v37;
      v23 = WORD2(v37);
      v24 = BYTE6(v37);
      *(v38 + 164) = WORD2(v37);
      if ((*v51)(v13, 1, v32) == 1)
      {
        break;
      }

      v39 = v55;
      sub_1B044533C(v13, v55, type metadata accessor for ServerResponseFramingParser.Frame);
      sub_1B0446A38(v39, v56, type metadata accessor for ServerResponseFramingParser.Frame);
      v40 = *(v38 + 184);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B044861C(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1B044861C(v41 > 1, v42 + 1, 1, v40);
      }

      sub_1B0446AA0(v55, type metadata accessor for ServerResponseFramingParser.Frame);
      v40[2] = v42 + 1;
      sub_1B044533C(v56, v40 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, type metadata accessor for ServerResponseFramingParser.Frame);
      *(v57 + 184) = v40;
      v7 = v49;
      if (!v19)
      {
        v50(v13, 1, 1, v54);
        return sub_1B0398EFC(v13, &qword_1EB6E6598, &qword_1B0EE8178);
      }
    }
  }

  else
  {
    (*(v14 + 56))(v13, 1, 1, v54);
  }

  return sub_1B0398EFC(v13, &qword_1EB6E6598, &qword_1B0EE8178);
}

void ResponseParser.parseResponseStream(buffer:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = type metadata accessor for Response(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - v9;
  v11 = *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 10);
  v16 = *(a1 + 22);
  v64 = *a1;
  v70 = v12;
  v71 = v13;
  v65 = v13;
  v66 = v12;
  v67 = v14;
  v68 = v15;
  v69 = v16;
  v18 = *(v2 + 56);
  v17 = *(v2 + 64);
  if (!*(v2 + 72))
  {
    swift_retain_n();
    v23 = v17 & 1;
    v10 = v51;
    v17 = v50;
    sub_1B043554C(&v64, 1, 100, v23, v2, v51);
    if (v17)
    {

      v64 = v11;
      v22 = v70;
      v21 = v71;
      v65 = v71;
      v66 = v70;
      v67 = v14;
      v68 = v15;
      v69 = v16;
      swift_willThrow();
      v20 = v17;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (*(v2 + 72) != 1)
  {
    if (!v18)
    {
LABEL_23:
      if (__OFADD__(v17, 1))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1B0D047BC(&v52);
      v31 = v61;
      *(v10 + 8) = v60;
      *(v10 + 9) = v31;
      *(v10 + 10) = v62;
      *(v10 + 88) = v63;
      v32 = v57;
      *(v10 + 4) = v56;
      *(v10 + 5) = v32;
      v33 = v59;
      *(v10 + 6) = v58;
      *(v10 + 7) = v33;
      v34 = v53;
      *v10 = v52;
      *(v10 + 1) = v34;
      v35 = v55;
      *(v10 + 2) = v54;
      *(v10 + 3) = v35;
      swift_storeEnumTagMultiPayload();
      *(v2 + 56) = v17 + 1;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      v36 = v51;
      sub_1B04453A4(v10, v51, type metadata accessor for Response);

      goto LABEL_31;
    }

    v24 = *(v2 + 64);
    v22 = v70;
    v25 = v70 - v71;
    if (v70 == v71)
    {
      sub_1B0D3EA30();
      v20 = swift_allocError();
      swift_willThrow();

      v21 = v71;
      goto LABEL_10;
    }

    if (v18 > v25)
    {
      v37 = ByteBuffer.readSlice(length:)(v25);
      if (v37)
      {
LABEL_29:
        v40 = (HIDWORD(v38) - v38);
        v41 = v18 - v40;
        if (__OFSUB__(v18, v40))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        *&v52 = v37;
        *(&v52 + 1) = v38;
        LODWORD(v53) = v39;
        WORD2(v53) = WORD2(v39);
        BYTE6(v53) = BYTE6(v39);
        sub_1B0D047A8(&v52);
        v42 = v61;
        *(v8 + 8) = v60;
        *(v8 + 9) = v42;
        *(v8 + 10) = v62;
        *(v8 + 88) = v63;
        v43 = v57;
        *(v8 + 4) = v56;
        *(v8 + 5) = v43;
        v44 = v59;
        *(v8 + 6) = v58;
        *(v8 + 7) = v44;
        v45 = v53;
        *v8 = v52;
        *(v8 + 1) = v45;
        v46 = v55;
        *(v8 + 2) = v54;
        *(v8 + 3) = v46;
        swift_storeEnumTagMultiPayload();
        *(v2 + 56) = v41;
        *(v2 + 64) = v24;
        *(v2 + 72) = 2;
        v36 = v51;
        sub_1B04453A4(v8, v51, type metadata accessor for Response);
LABEL_31:
        v47 = v71;
        v48 = type metadata accessor for ResponseOrContinuationRequest(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v48 - 8) + 56))(v36, 0, 1, v48);
        v28 = v65;
        if (__CFADD__(v47, v65 - v47))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v70 < v65)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    v37 = ByteBuffer.readSlice(length:)(v18);
    if (!v37)
    {
LABEL_44:
      __break(1u);
      return;
    }

    goto LABEL_29;
  }

  v19 = v51;
  v17 = v50;
  sub_1B0E110DC(&v64, v18, v51);
  if (!v17)
  {
    v2 = type metadata accessor for ResponseOrContinuationRequest(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v2 - 8) + 56))(v19, 0, 1, v2);
    v28 = v70 - v66 + v65;
    if (__CFADD__(v71, v70 - (v71 + v66) + v65))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v70 >= v28)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_20:

    v30 = type metadata accessor for ResponseOrContinuationRequest(0);
    (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
    v28 = v70 - v66 + v65;
    if (__CFADD__(v71, v70 - (v71 + v66) + v65))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v70 >= v28)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_23;
  }

  v20 = v17;
  v22 = v70;
  v21 = v71;
LABEL_10:
  *&v52 = v20;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v27 = type metadata accessor for ResponseOrContinuationRequest(0);
  (*(*(v27 - 8) + 56))(v51, 1, 1, v27);

  v28 = v22 - v66 + v65;
  if (__CFADD__(v21, v22 - (v21 + v66) + v65))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v22 < v28)
  {
    __break(1u);
LABEL_14:

    v29 = v22 - v66 + v65;
    if (!__CFADD__(v21, v22 - (v21 + v66) + v65))
    {
      if (v22 >= v29)
      {
        *(a1 + 2) = v29;

        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  *(a1 + 2) = v28;
}

void sub_1B043554C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, __int128 *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  LODWORD(v134) = a4;
  v13 = type metadata accessor for ResponsePayload();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ResponseParser._Response();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v131 = &v124[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v132 = a2;
  v133 = &v124[-v22];
  v23 = __OFADD__(a2, 1);
  v24 = (a2 + 1);
  if (v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_1B0E46298();
    v142 = v146;
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F30570);
    *&v146 = v7;
    *(&v146 + 1) = a3;
    LOBYTE(v147) = v24;
    sub_1B0E46508();
    sub_1B0E465B8();
    __break(1u);
    return;
  }

  v129 = v16;
  v130 = v21;
  v135 = a6;
  *&v137 = a3;
  if (v24 >= a3)
  {
    sub_1B0439BCC();
    v6 = swift_allocError();
    *v31 = a3;
  }

  else
  {
    v25 = a5;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *(a1 + 20);
    v30 = *(a1 + 22);
    sub_1B0436204(a1);
    if (!v6)
    {
      a5 = v25;
      goto LABEL_9;
    }

    *a1 = v26;
    *(a1 + 8) = v27;
    *(a1 + 16) = v28;
    *(a1 + 20) = v29;
    *(a1 + 22) = v30;
    a5 = v25;
    a3 = v137;
  }

  swift_willThrow();

  if (v24 < a3)
  {
LABEL_9:
    v34 = *a1;
    v35 = *(a1 + 8);
    v36 = *(a1 + 16);
    v126 = *(a1 + 20);
    v127 = v36;
    v125 = *(a1 + 22);
    v37 = *a5;
    v38 = *(a5 + 1);
    v39 = a5;
    v40 = *(a5 + 2);
    *&v136 = v39;
    v41 = *(v39 + 3);

    v128 = a1;
    if (v134)
    {
      v42 = v171;
      sub_1B0439548(a1, v24, v137, v37, v38, v40, v41, v171);
    }

    else
    {
      v42 = v172;
      sub_1B0D9DD50(a1, v24, v137, v37, v38, v40, v41, v172);
    }

    a5 = v136;
    a3 = v133;
    v55 = *(v42 + 9);
    *(v133 + 8) = *(v42 + 8);
    *(a3 + 144) = v55;
    *(a3 + 160) = *(v42 + 10);
    *(a3 + 176) = *(v42 + 88);
    v56 = *(v42 + 5);
    *(a3 + 64) = *(v42 + 4);
    *(a3 + 80) = v56;
    v57 = *(v42 + 7);
    *(a3 + 96) = *(v42 + 6);
    *(a3 + 112) = v57;
    v58 = *(v42 + 1);
    *a3 = *v42;
    *(a3 + 16) = v58;
    v59 = *(v42 + 3);
    *(a3 + 32) = *(v42 + 2);
    *(a3 + 48) = v59;
    a1 = v128;
    goto LABEL_25;
  }

  sub_1B0439BCC();
  v32 = swift_allocError();
  *v33 = a3;
  swift_willThrow();
  *&v158[0] = v32;
  v43 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v158[0] = v32;
    v44 = v32;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  if (v24 >= a3)
  {
    sub_1B0439BCC();
    v32 = swift_allocError();
    *v54 = a3;
    swift_willThrow();
    goto LABEL_22;
  }

  v45 = *a1;
  v46 = *(a1 + 8);
  v47 = *(a1 + 16);
  v126 = *(a1 + 20);
  v127 = v47;
  v125 = *(a1 + 22);
  v48 = a3;
  v49 = *a5;
  v50 = *(a5 + 1);
  *&v136 = a5;
  v51 = *(a5 + 2);
  v52 = *(a5 + 3);
  v134 = v45;

  v53 = v129;
  sub_1B0439A40(a1, v24, v48, v49, v50, v51, v52);

  a3 = v133;
  sub_1B04453A4(v53, v133, type metadata accessor for ResponsePayload);
  a5 = v136;
LABEL_25:
  LOBYTE(v24) = v130;
  swift_storeEnumTagMultiPayload();

  v7 = v131;
  sub_1B0448354(a3, v131);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B04483B8(a3, type metadata accessor for ResponseParser._Response);
    sub_1B04453A4(v7, v135, type metadata accessor for ResponsePayload);
    type metadata accessor for Response(0);
LABEL_60:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResponseOrContinuationRequest(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v63 = *(v7 + 144);
  v64 = *(v7 + 112);
  v165 = *(v7 + 128);
  v166 = v63;
  v65 = *(v7 + 144);
  v167 = *(v7 + 160);
  v66 = *(v7 + 80);
  v67 = *(v7 + 48);
  v161 = *(v7 + 64);
  v162 = v66;
  v68 = *(v7 + 80);
  v69 = *(v7 + 112);
  v163 = *(v7 + 96);
  v164 = v69;
  v70 = *(v7 + 16);
  v158[0] = *v7;
  v158[1] = v70;
  v71 = *(v7 + 48);
  v73 = *v7;
  v72 = *(v7 + 16);
  v159 = *(v7 + 32);
  v160 = v71;
  v169[8] = v165;
  v169[9] = v65;
  v169[10] = *(v7 + 160);
  v169[4] = v161;
  v169[5] = v68;
  v169[6] = v163;
  v169[7] = v64;
  v169[0] = v73;
  v169[1] = v72;
  v168 = *(v7 + 176);
  v170 = *(v7 + 176);
  v169[2] = v159;
  v169[3] = v67;
  v74 = sub_1B0D0CBC8(v169);
  if (v74 <= 2)
  {
    if (!v74)
    {
      v89 = sub_1B041BA38(v169);
      v7 = *(a5 + 7);
      a3 = *(a5 + 8);
      v90 = a5 + 56;
      LOBYTE(v24) = *(v90 + 16);
      if (!v24 && (a3 & 1) != 0)
      {
        v91 = *v89;
        sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
        *v90 = 0;
        *(v90 + 8) = 0;
        *(v90 + 16) = 0;
        LODWORD(v146) = v91;
        sub_1B041BA38(&v146);
        goto LABEL_59;
      }

      goto LABEL_71;
    }

    if (v74 == 1)
    {
      v75 = sub_1B041BA38(v169);
      v7 = *(a5 + 7);
      a3 = *(a5 + 8);
      v76 = a5 + 56;
      LOBYTE(v24) = *(v76 + 16);
      if (!v24 && (a3 & 1) != 0)
      {
        v77 = *v75;
        sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
        *v76 = 0;
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        LODWORD(v146) = v77;
        sub_1B0D043DC(&v146);
LABEL_59:
        v114 = v155;
        v115 = v135;
        *(v135 + 128) = v154;
        *(v115 + 144) = v114;
        *(v115 + 160) = v156;
        *(v115 + 176) = v157;
        v116 = v151;
        *(v115 + 64) = v150;
        *(v115 + 80) = v116;
        v117 = v153;
        *(v115 + 96) = v152;
        *(v115 + 112) = v117;
        v118 = v147;
        *v115 = v146;
        *(v115 + 16) = v118;
        v119 = v149;
        *(v115 + 32) = v148;
        *(v115 + 48) = v119;
        type metadata accessor for Response(0);
        goto LABEL_60;
      }

      goto LABEL_71;
    }

    v99 = sub_1B041BA38(v169);
    if (!*(a5 + 72) && (a5[4] & 1) == 0)
    {
      v100 = *(a5 + 5);
      v101 = *(a5 + 7);
      if (v101 < v100)
      {
        v102 = v99;
        sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
        *(a5 + 7) = v101 + 1;
        *(a5 + 8) = 0;
        *(a5 + 72) = 0;
        v103 = *(v102 + 48);
        v105 = *v102;
        v104 = *(v102 + 16);
        v148 = *(v102 + 32);
        v149 = v103;
        v146 = v105;
        v147 = v104;
        v106 = *(v102 + 112);
        v108 = *(v102 + 64);
        v107 = *(v102 + 80);
        v152 = *(v102 + 96);
        v153 = v106;
        v150 = v108;
        v151 = v107;
        v110 = *(v102 + 144);
        v109 = *(v102 + 160);
        v111 = *(v102 + 128);
        v157 = *(v102 + 176);
        v155 = v110;
        v156 = v109;
        v154 = v111;
        sub_1B0D046AC(&v146);
        goto LABEL_59;
      }

      sub_1B0E12600();
      v32 = swift_allocError();
      *v122 = v101;
      v122[1] = v100;
      swift_willThrow();
      sub_1B0E12654(v158);
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  v24 = &v142;
  if (v74 != 3)
  {
    if (v74 != 4)
    {
      if (*(a5 + 72) || (a5[4] & 1) != 0)
      {
        goto LABEL_68;
      }

      v112 = *(a5 + 5);
      v113 = *(a5 + 7);
      if (v113 < v112)
      {
        sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
        *(a5 + 56) = xmmword_1B0EA4610;
        *(a5 + 72) = 0;
        sub_1B0D04728(&v146);
        goto LABEL_59;
      }

      sub_1B0E12600();
      v32 = swift_allocError();
      *v123 = v113;
      v123[1] = v112;
      swift_willThrow();
LABEL_65:
      sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
      goto LABEL_19;
    }

    v78 = sub_1B041BA38(v169);
    v79 = *v78;
    v80 = *(v78 + 16);
    a3 = *(v78 + 32);
    v7 = *(v78 + 40);
    *(v145 + 9) = *(a5 + 57);
    v81 = a5[3];
    v144 = a5[2];
    v145[0] = v81;
    v82 = a5[1];
    v142 = *a5;
    v143 = v82;
    if ((v7 & 0x8000000000000000) != 0 || (v24 = *&v145[0], v7 < *&v145[0]))
    {
      *(v141 + 9) = *(a5 + 57);
      v83 = a5[3];
      v140 = a5[2];
      v141[0] = v83;
      v84 = a5[1];
      v138 = *a5;
      v139 = v84;
      if (BYTE8(v141[1]) || (v141[1] & 1) != 0)
      {
        goto LABEL_70;
      }

      v85 = a5;
      v86 = *(&v141[0] + 1);
      v87 = *(&v140 + 1);
      if (*(&v141[0] + 1) < *(&v140 + 1))
      {
        v136 = v80;
        v137 = v79;
        sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
        *(v85 + 7) = v86 + 1;
        *(v85 + 8) = 0;
        v88 = 1;
LABEL_50:
        *(v85 + 72) = v88;
        v146 = v137;
        v147 = v136;
        LOBYTE(v148) = a3;
        *(&v148 + 1) = v7;
        sub_1B0D04794(&v146);
        goto LABEL_59;
      }

      goto LABEL_61;
    }

LABEL_62:
    sub_1B0E12598(&v142, &v146);
    sub_1B0E12654(v158);
    sub_1B0E126A8();
    v32 = swift_allocError();
    *v121 = v7;
    v121[1] = v24;
    swift_willThrow();
    sub_1B0E125D0(&v142);
    goto LABEL_65;
  }

  v92 = sub_1B041BA38(v169);
  v93 = *v92;
  v94 = *(v92 + 16);
  a3 = *(v92 + 32);
  v7 = *(v92 + 40);
  *(v145 + 9) = *(a5 + 57);
  v95 = a5[3];
  v144 = a5[2];
  v145[0] = v95;
  v96 = a5[1];
  v142 = *a5;
  v143 = v96;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = *&v145[0];
    if (v7 >= *&v145[0])
    {
      goto LABEL_62;
    }
  }

  *(v141 + 9) = *(a5 + 57);
  v97 = a5[3];
  v140 = a5[2];
  v141[0] = v97;
  v98 = a5[1];
  v138 = *a5;
  v139 = v98;
  if (BYTE8(v141[1]) || (v141[1] & 1) != 0)
  {
    goto LABEL_69;
  }

  v85 = a5;
  v86 = *(&v141[0] + 1);
  v87 = *(&v140 + 1);
  if (*(&v141[0] + 1) < *(&v140 + 1))
  {
    v136 = v94;
    v137 = v93;
    sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
    *(v85 + 7) = v7;
    *(v85 + 8) = v86 + 1;
    v88 = 2;
    goto LABEL_50;
  }

LABEL_61:
  sub_1B0E12598(&v138, &v146);
  sub_1B0E12654(v158);
  sub_1B0E12600();
  v32 = swift_allocError();
  *v120 = v86;
  v120[1] = v87;
  swift_willThrow();
  sub_1B0E125D0(&v138);
  sub_1B04483B8(v133, type metadata accessor for ResponseParser._Response);
  a5 = v85;
LABEL_19:
  a3 = v137;
LABEL_22:
  *&v146 = v32;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v61 = a5[3];
    v173[2] = a5[2];
    v174[0] = v61;
    *(v174 + 9) = *(a5 + 57);
    v62 = a5[1];
    v173[0] = *a5;
    v173[1] = v62;
    sub_1B0E12598(v173, v169);
    sub_1B0E11518(a1, v132, a3);
    sub_1B0E125D0(v173);
  }
}

uint64_t type metadata accessor for ResponseParser._Response()
{
  result = qword_1EB6DE710;
  if (!qword_1EB6DE710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0436204(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 12);
  if (v1 == v2)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  if (v1 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v39 = *result;
  v31 = v39;
  v32 = v2;
  v33 = v1;
  v12 = v4;
  v34 = v4;
  v13 = v6;
  v14 = v5;
  v35 = v5;
  v36 = v6;
  v37 = v2;
  v38 = v1;
  v7 = v2;
  while (1)
  {
    if (v7 < v32)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((v7 - v32) >= v33 - v32)
    {
      goto LABEL_18;
    }

    result = swift_beginAccess();
    if (*(*(v31 + 24) + (v36 | (v35 << 8)) + v7) != 32)
    {
      break;
    }

    if (++v7 == v1)
    {

      result = sub_1B04394F4(&v31);
      *(v3 + 8) = v1;
      return result;
    }
  }

  v8 = v39;

  sub_1B04394F4(&v31);
  v23 = v8;
  v24 = v2;
  v25 = v1;
  v26 = v12;
  v27 = v14;
  v28 = v13;
  v29 = v2;
  v30 = v1;

  result = sub_1B04394F4(&v23);
  if (v29 >= v7)
  {
    sub_1B0E46298();

    v15 = v8;
    v16 = v2;
    v17 = v1;
    v18 = v12;
    v19 = v14;
    v20 = v13;
    v21 = v2;
    v22 = v1;
    if ((v7 - v2) >= (v1 - v2))
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v9 = *(*(v8 + 24) + (v13 | (v14 << 8)) + v7);

    sub_1B04394F4(&v15);
    v10 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v10);

    sub_1B0436554();
    swift_allocError();
    *v11 = 0xD000000000000016;
    v11[1] = 0x80000001B0F304A0;
    v11[2] = 0xD000000000000020;
    v11[3] = 0x80000001B0F2FA10;
    v11[4] = 241;
    return swift_willThrow();
  }

  if (v1 < v7)
  {
    goto LABEL_21;
  }

  *(v3 + 8) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = 1752392040;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t sub_1B0436554()
{
  result = qword_1EB6DE910;
  if (!qword_1EB6DE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE910);
  }

  return result;
}

uint64_t sub_1B04365C0()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.gmailExtensions = 0x5458452D4D472D58;
  *algn_1EB7380A8 = 0xEA0000000000312DLL;
  qword_1EB7380B0 = v0;
  byte_1EB7380B8 = v4 & 1;
  return result;
}

uint64_t sub_1B04366AC()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.condStore = 0x524F5453444E4F43;
  *algn_1EB737F48 = 0xE900000000000045;
  qword_1EB737F50 = v0;
  byte_1EB737F58 = v4 & 1;
  return result;
}

void sub_1B0436798()
{
  if (("eBuffer-views.swift" & 0x2000000000000000) != 0)
  {
    v0 = ("eBuffer-views.swift" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 0x100000;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1B0E44EA8() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1B0E46A78();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1B0E44D08();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.yahooMailHighestModificationSequence = 0xD000000000000010;
  *algn_1EB738048 = 0x80000001B0F2FC70;
  qword_1EB738050 = v2;
  byte_1EB738058 = v1;
}

uint64_t sub_1B04368A8()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.partial = 0x4C414954524150;
  *algn_1EB737F88 = 0xE700000000000000;
  qword_1EB737F90 = v0;
  byte_1EB737F98 = v5 & 1;
  return result;
}

uint64_t sub_1B0436984()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.extendedSearch = 0x48435241455345;
  *algn_1EB7380C8 = 0xE700000000000000;
  qword_1EB7380D0 = v0;
  byte_1EB7380D8 = v5 & 1;
  return result;
}

uint64_t sub_1B0436A60()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.namespace = 0x43415053454D414ELL;
  *algn_1EB737F28 = 0xE900000000000045;
  qword_1EB737F30 = v0;
  byte_1EB737F38 = v4 & 1;
  return result;
}

uint64_t sub_1B0436B4C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.listStatus = 0x4154532D5453494CLL;
  *algn_1EB738188 = 0xEB00000000535554;
  qword_1EB738190 = v0;
  byte_1EB738198 = v4 & 1;
  return result;
}

uint64_t sub_1B0436C34()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.specialUse = 0x2D4C414943455053;
  *algn_1EB738168 = 0xEB00000000455355;
  qword_1EB738170 = v0;
  byte_1EB738178 = v4 & 1;
  return result;
}

uint64_t sub_1B0436D1C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.mailboxSpecificAppendLimit = 0x494C444E45505041;
  *algn_1EB738088 = 0xEB0000000054494DLL;
  qword_1EB738090 = v0;
  byte_1EB738098 = v4 & 1;
  return result;
}

uint64_t sub_1B0436E04()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.idle = 1162626121;
  *algn_1EB738028 = 0xE400000000000000;
  qword_1EB738030 = v0;
  byte_1EB738038 = v5 & 1;
  return result;
}

void sub_1B0436EE0()
{
  if (!qword_1EB6DD140)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD140);
    }
  }
}

void sub_1B0436F48()
{
  type metadata accessor for ClientCommand(319);
  if (v0 <= 0x3F)
  {
    sub_1B0436EE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0436FE0()
{
  result = sub_1B0E43DF8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UnauthenticatedStateWithTasks();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0437068()
{
  sub_1B043710C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnauthenticatedState();
    if (v1 <= 0x3F)
    {
      sub_1B043B4CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B043710C()
{
  if (!qword_1EB6DAD88)
  {
    sub_1B0437168();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD88);
    }
  }
}

unint64_t sub_1B0437168()
{
  result = qword_1EB6DCEE8;
  if (!qword_1EB6DCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCEE8);
  }

  return result;
}

unint64_t sub_1B04371C0()
{
  result = qword_1EB6DCEE0;
  if (!qword_1EB6DCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCEE0);
  }

  return result;
}

uint64_t type metadata accessor for UnauthenticatedState()
{
  result = qword_1EB6DCDF8;
  if (!qword_1EB6DCDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0437260()
{
  sub_1B0437328();
  if (v0 <= 0x3F)
  {
    sub_1B043739C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Authenticator();
      if (v2 <= 0x3F)
      {
        sub_1B043B15C();
        if (v3 <= 0x3F)
        {
          sub_1B043B450();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0437328()
{
  if (!qword_1EB6DB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB640);
    }
  }
}

void sub_1B043739C()
{
  if (!qword_1EB6DB648)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB648);
    }
  }
}

void sub_1B04373EC()
{
  sub_1B04374F0();
  if (v0 <= 0x3F)
  {
    sub_1B0437540(319, &qword_1EB6DAD80, sub_1B04375A0);
    if (v1 <= 0x3F)
    {
      sub_1B0437540(319, &qword_1EB6DAD70, sub_1B0437648);
      if (v2 <= 0x3F)
      {
        sub_1B0439D0C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B04374F0()
{
  if (!qword_1EB6DB450)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB450);
    }
  }
}

void sub_1B0437540(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B0E45588();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B04375A0()
{
  result = qword_1EB6DCE98;
  if (!qword_1EB6DCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE98);
  }

  return result;
}

unint64_t sub_1B04375F4()
{
  result = qword_1EB6DCE90;
  if (!qword_1EB6DCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE90);
  }

  return result;
}

unint64_t sub_1B0437648()
{
  result = qword_1EB6DCDF0;
  if (!qword_1EB6DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCDF0);
  }

  return result;
}

uint64_t sub_1B04376A0()
{
  v4 = qword_1EB6DECE0;
  if (!qword_1EB6DECE0)
  {
    sub_1B0E43108();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DECE0);
      return v1;
    }
  }

  return v4;
}

void sub_1B043773C()
{
  sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    sub_1B04377C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B04377C8()
{
  if (!qword_1EB6DCA50)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCA50);
    }
  }
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t type metadata accessor for Authenticator()
{
  result = qword_1EB6DCEA0;
  if (!qword_1EB6DCEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *OUTLINED_FUNCTION_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sub_1B04379A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B043A7A4(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_1B04379F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_1B0D9F404(a1, a2, a3);
  if (!v4)
  {
    v10 = result;
    sub_1B0DFE880(0x45474E5550584520uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
    *a4 = v10;
    type metadata accessor for MessageData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0437A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void (*a11)(uint64_t, uint64_t *, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1B0DFE880(a8, a10, 0, 0, a1, a2, a3);
  if (!v11)
  {
    v21 = MEMORY[0x1E69E7CC0];

    a11(a1, &v21, a2, a3, a4, a5, a6, a7);

    *a9 = v21;
    type metadata accessor for MessageData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_1B0437B90(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = a3;
  if (v13 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v18 = v11;
    goto LABEL_7;
  }

  v7 = a1;
  v10 = a7;
  v9 = *a1;
  v12 = *(a1 + 8);
  v39 = *(a1 + 20);
  v40 = *(a1 + 16);
  v38 = *(a1 + 22);

  sub_1B0DFE880(0x204449uLL, 0xE300000000000000, 0, 0, v7, v13, v11);
  if (v8)
  {
    v17 = *v7;

LABEL_5:
    *v7 = v9;
    *(v7 + 8) = v12;
    *(v7 + 16) = v40;
    *(v7 + 20) = v39;
    *(v7 + 22) = v38;
LABEL_7:
    swift_willThrow();
    return v10;
  }

  v10 = sub_1B0DB4BEC(v7, v13, v11, a4, a5, a6, v10);
  if (v13 + 1 >= v11)
  {
    sub_1B0439BCC();
    v22 = swift_allocError();
    *v23 = v11;
LABEL_30:
    swift_willThrow();
    v42 = v22;
    v31 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      return v10;
    }

    v32 = *v7;

    goto LABEL_5;
  }

  v35 = *(v7 + 8);
  v37 = *(v7 + 12);
  v34 = *(v7 + 20);
  v33 = *(v7 + 22);
  v36 = *v7;
  if (sub_1B0E46A78())
  {
LABEL_26:

    if (v13 + 2 < v11)
    {
      v20 = 10;
      goto LABEL_17;
    }

LABEL_28:
    v29 = v36;

    sub_1B0439BCC();
    v22 = swift_allocError();
    *v30 = v11;
    v21 = v35;
    goto LABEL_29;
  }

  result = sub_1B0E44818();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1B0C04CF0(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_34;
  }

  result = sub_1B0C04CF0(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    v20 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
      if (v13 + 2 < v11)
      {
LABEL_17:
        v21 = v35;
        if (v37 == v35)
        {
          sub_1B0D3EA30();
          v22 = swift_allocError();
LABEL_24:
          swift_willThrow();
          v29 = v36;

LABEL_29:
          swift_willThrow();
          *v7 = v29;
          *(v7 + 8) = v21;
          *(v7 + 12) = v37;
          *(v7 + 20) = v34;
          *(v7 + 22) = v33;
          goto LABEL_30;
        }

        result = swift_beginAccess();
        if (v35 != -1)
        {
          v24 = *(*(v36 + 24) + (v33 | (v34 << 8)) + v35);
          *(v7 + 8) = v35 + 1;
          if (v24 == v20)
          {

            return v10;
          }

          sub_1B0E46298();

          strcpy(v41, "looking for ");
          BYTE5(v41[1]) = 0;
          HIWORD(v41[1]) = -5120;
          v25 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v25);

          MEMORY[0x1B2726E80](0x20646E756F6620, 0xE700000000000000);
          LOBYTE(v42) = v24;
          v26 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v26);

          v27 = v41[1];
          sub_1B0436554();
          v22 = swift_allocError();
          *v28 = v41[0];
          v28[1] = v27;
          v28[2] = 0xD000000000000020;
          v28[3] = 0x80000001B0F2FA10;
          v28[4] = 295;
          v21 = v35;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B04380C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a3;
  v135 = a2;
  v126 = a1;
  v117 = sub_1B0E429A8();
  v116 = *(v117 - 8);
  v3 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v125 = (&v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v113 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = &v113 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v118 = &v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v113 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = &v113 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v128 = &v113 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v122 = &v113 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v113 - v25;
  v26 = sub_1B0E441D8();
  v127 = *(v26 - 8);
  v27 = *(v127 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v113 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v113 - v34;
  v36 = sub_1B0E43DF8();
  v131 = *(v36 - 8);
  v37 = *(v131 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v113 - v41;
  v43 = type metadata accessor for ConnectionEvent(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v132 = *(v47 - 8);
  v133 = v47;
  v48 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446B60(v135, v46, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v113 = v35;
    v114 = v33;
    v56 = v128;
    v57 = v129;
    v58 = v42;
    v59 = v130;
    v60 = v131;
    v61 = v36;
    v62 = v127;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v63 = v58;
        v64 = v61;
        (*(v131 + 32))(v58, v46, v61);
        (*(v60 + 16))(v40, v63, v64);
        v65 = (*(v60 + 88))(v40, v64);
        v66 = v26;
        if (v65 == *MEMORY[0x1E6977C18])
        {
          (*(v60 + 96))(v40, v64);
          v67 = v114;
          (*(v62 + 32))(v114, v40, v66);
          v68 = v125;
          (*(v62 + 16))(v125, v67, v66);
          swift_storeEnumTagMultiPayload();
          v69 = v122;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v68, v122);
          sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
          (*(v62 + 8))(v67, v66);
          (*(v60 + 8))(v63, v64);
          v52 = v132;
          v54 = v133;
          v70 = (*(v132 + 48))(v69, 1, v133);
          v53 = v134;
          if (v70)
          {
            v71 = v69;
LABEL_25:
            sub_1B0398EFC(v71, &qword_1EB6E5468, &qword_1B0ED0458);
            v55 = 1;
            return (*(v52 + 56))(v53, v55, 1, v54);
          }

          v97 = v69;
          v72 = v50;
        }

        else
        {
          v86 = v26;
          v54 = v133;
          v53 = v134;
          v87 = v125;
          if (v65 != *MEMORY[0x1E6977C10])
          {
            sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
            v103 = *(v60 + 8);
            v103(v63, v64);
            v103(v40, v64);
            v55 = 1;
            v52 = v132;
            return (*(v52 + 56))(v53, v55, 1, v54);
          }

          (*(v60 + 96))(v40, v64);
          v88 = v113;
          v89 = v40;
          v90 = v86;
          (*(v62 + 32))(v113, v89, v86);
          (*(v62 + 16))(v87, v88, v86);
          swift_storeEnumTagMultiPayload();
          v91 = v121;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v87, v121);
          sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
          (*(v62 + 8))(v88, v90);
          (*(v131 + 8))(v63, v64);
          v52 = v132;
          if ((*(v132 + 48))(v91, 1, v54))
          {
            v71 = v91;
            goto LABEL_25;
          }

          v97 = v91;
          v72 = v50;
        }

LABEL_58:
        sub_1B0C25A4C(v97, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_1B0C25A4C(v72, v53, type metadata accessor for CommandConnection.RecentErrors.Error);
        v55 = 0;
        return (*(v52 + 56))(v53, v55, 1, v54);
      }

      type metadata accessor for ConnectionEvent.FailureReason(0);
      v79 = swift_getEnumCaseMultiPayload();
      if (v79 > 1)
      {
        v52 = v132;
        if (v79 == 2)
        {
          goto LABEL_37;
        }

        v94 = v50;
        v95 = v125;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v95, v57);
        sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        v96 = (*(v52 + 48))(v57, 1, v133);
        v53 = v134;
        if (v96)
        {
          v71 = v57;
          goto LABEL_25;
        }

        v97 = v57;
        v72 = v94;
        goto LABEL_58;
      }

      v52 = v132;
      v72 = v50;
      if (v79)
      {
        v98 = v30;
        v99 = v30;
        v100 = v26;
        (*(v62 + 32))(v99, v46, v26);
        v101 = v125;
        (*(v62 + 16))(v125, v98, v26);
        swift_storeEnumTagMultiPayload();
        v102 = v119;
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v101, v119);
        sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
        (*(v62 + 8))(v98, v100);
        v54 = v133;
        if ((*(v52 + 48))(v102, 1, v133))
        {
          v82 = v102;
          goto LABEL_41;
        }

        v97 = v102;
      }

      else
      {
        v80 = *(v46 + 2);
        v81 = v125;
        *v125 = *v46;
        *(v81 + 16) = v80;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v81, v56);
        sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        if ((*(v52 + 48))(v56, 1, v133))
        {
          v82 = v56;
LABEL_41:
          sub_1B0398EFC(v82, &qword_1EB6E5468, &qword_1B0ED0458);
          v55 = 1;
          v53 = v134;
          return (*(v52 + 56))(v53, v55, 1, v54);
        }

        v97 = v56;
      }

      goto LABEL_57;
    }

    v72 = v50;
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for UntaggedResponse(0);
      v73 = swift_getEnumCaseMultiPayload();
      v52 = v132;
      v74 = v126;
      if ((v73 - 1) >= 2)
      {
        if (v73 != 4)
        {
          sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
          v78 = type metadata accessor for UntaggedResponse;
          v77 = v46;
          goto LABEL_38;
        }

        v92 = *(v46 + 2);
        v93 = v125;
        *v125 = *v46;
        *(v93 + 16) = v92;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v93, v59);
        sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        if ((*(v52 + 48))(v59, 1, v133))
        {
          v82 = v59;
          goto LABEL_41;
        }

        v97 = v59;
LABEL_57:
        v53 = v134;
        goto LABEL_58;
      }

      v75 = *v46;
      v76 = *(v46 + 2);
      v54 = v133;
      v53 = v134;
    }

    else
    {
      v75 = *v46;
      v76 = *(v46 + 2);
      v83 = v46[24];
      v52 = v132;
      v74 = v126;
      if (!v46[24])
      {
        sub_1B0447F00(*v46);

        goto LABEL_37;
      }

      v54 = v133;
      v53 = v134;
      if (v83 == 1)
      {
        if ((~v75 & 0xF000000000000007) != 0 && v75 == 0x800000000000006CLL)
        {
          v104 = v72;
          v136 = *(&v75 + 1);
          v137 = v76;
          sub_1B04420D8(0x800000000000006CLL);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v105 = v115;
          sub_1B0E42948();
          sub_1B07C7F5C();
          v106 = sub_1B0E45F08();
          v108 = v107;
          (*(v116 + 8))(v105, v117);

          v109 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v109 = v106 & 0xFFFFFFFFFFFFLL;
          }

          if (!v109)
          {

            v106 = 0;
            v108 = 0;
          }

          v110 = v125;
          *v125 = v106;
          *(v110 + 8) = v108;
          swift_storeEnumTagMultiPayload();
          v111 = v118;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v110, v118);
          sub_1B0447F00(0x800000000000006CLL);

          sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
          v85 = v111;
          if (!(*(v52 + 48))(v111, 1, v54))
          {
            v97 = v111;
            v72 = v104;
            goto LABEL_58;
          }

          goto LABEL_24;
        }

        v84 = v125;
        *v125 = v75;
        *(v84 + 16) = v76;
        swift_storeEnumTagMultiPayload();
        v85 = v120;
LABEL_23:
        CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v84, v85);
        sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
        if (!(*(v52 + 48))(v85, 1, v54))
        {
          v97 = v85;
          goto LABEL_58;
        }

LABEL_24:
        v71 = v85;
        goto LABEL_25;
      }
    }

    v84 = v125;
    *v125 = v75;
    *(v84 + 16) = v76;
    swift_storeEnumTagMultiPayload();
    v85 = v123;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v52 = v132;
    sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
    v77 = v46;
    v78 = type metadata accessor for ConnectionEvent;
LABEL_38:
    sub_1B0438FB0(v77, v78);
    v55 = 1;
    v54 = v133;
    v53 = v134;
    return (*(v52 + 56))(v53, v55, 1, v54);
  }

  v52 = v132;
  if (EnumCaseMultiPayload == 6)
  {
LABEL_37:
    v78 = type metadata accessor for ConnectionEvent;
    v77 = v135;
    goto LABEL_38;
  }

  v54 = v133;
  v53 = v134;
  sub_1B0438FB0(v135, type metadata accessor for ConnectionEvent);
  v55 = 1;
  return (*(v52 + 56))(v53, v55, 1, v54);
}

uint64_t sub_1B0438FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0439010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B0439080(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

Swift::Void __swiftcall ByteBuffer._ensureAvailableCapacity(_:at:)(Swift::UInt32 _, Swift::UInt32 at)
{
  v3 = *(v2 + 10);
  v4 = *(v2 + 22);
  v5 = v4 | (v3 << 8);
  v6 = v5 + at;
  if (__CFADD__(v5, at))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6 + _;
  if (__CFADD__(v6, _))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v2 + 4);
  if (v8 >= v7)
  {
    return;
  }

  v11 = *v2;
  v12 = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 < v7)
  {
    v12 = at + _;
    if (!__CFADD__(at, _))
    {
      if (v5)
      {
        v14 = v8 - v5;
        if (v8 >= v5)
        {
          v15 = v2;
          v16 = ByteBuffer._Storage.allocateStorage(capacity:)(v12);
          v17 = *(v11 + 56);
          swift_beginAccess();
          v18 = *(v16 + 24);
          swift_beginAccess();
          v17(v18, *(v11 + 24) + v5, v14);

          v2 = v15;
          *v15 = v16;
          v11 = v16;
LABEL_12:
          swift_beginAccess();
          LOWORD(v3) = 0;
          LOBYTE(v4) = 0;
          v13 = *(v11 + 16);
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_11:
      ByteBuffer._Storage.reallocStorage(capacity:)(v12);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  *(v2 + 4) = v13;
  *(v2 + 10) = v3;
  *(v2 + 22) = v4;
}

unint64_t sub_1B04391FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1B0433338(0, v6, a2, a3);
  if (!v4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_12:
    if (v5 >= v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (result < v4)
  {
    v4 = v5;
    if (a2)
    {
      return v4;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_1B043929C()
{
  v1 = MEMORY[0x1E69E7CC0];
  while (*(v0 + 44) != *(v0 + 40))
  {
    sub_1B0433D28();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1B04343F8(v2, v4, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B043939C(0, *(v1 + 2) + 1, 1, v1);
    }

    v11 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v11 >= v10 >> 1)
    {
      v1 = sub_1B043939C((v10 > 1), v11 + 1, 1, v1);
    }

    *(v1 + 2) = v11 + 1;
    v12 = &v1[32 * v11];
    *(v12 + 4) = v3;
    *(v12 + 5) = v5;
    *(v12 + 6) = v7;
    *(v12 + 7) = v9;
    if (v7 >> 62 == 1)
    {
      break;
    }

    sub_1B043440C(v3, v5, v7);
  }

  return v1;
}

char *sub_1B043939C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A10, &qword_1B0EF9F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0 || (a3 - (BYTE6(a3) | (a3 >> 24) & 0xFFFF00)) < a5)
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 20) = WORD2(a3);
    *(a6 + 22) = BYTE6(a3);
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
  }

  return result;
}

uint64_t sub_1B0439548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B044218C;
  *(v17 + 24) = v16;
  v46[0] = sub_1B0442174;
  v46[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0442358;
  *(result + 24) = v18;
  v46[2] = sub_1B0442378;
  v46[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v43 = v21;
      *(swift_allocObject() + 16) = *&v46[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v42 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B043D840(a1, v26, a3);
        v30 = v42;
        if (!v42)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v36 = v56;
          *(a8 + 128) = v55;
          *(a8 + 144) = v36;
          *(a8 + 160) = v57;
          *(a8 + 176) = v58;
          v37 = v52;
          *(a8 + 64) = v51;
          *(a8 + 80) = v37;
          v38 = v54;
          *(a8 + 96) = v53;
          *(a8 + 112) = v38;
          v39 = v48;
          *a8 = v47;
          *(a8 + 16) = v39;
          v40 = v50;
          *(a8 + 32) = v49;
          *(a8 + 48) = v40;
          return result;
        }

        v31 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v45 = v30;
      v33 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v45 = v30;
        v34 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v35 = 0xD000000000000019;
        v35[1] = 0x80000001B0F2FF00;
        v35[2] = 0xD000000000000020;
        v35[3] = 0x80000001B0F2FA10;
        v35[4] = 294;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04399C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04399F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0439A40(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = *(result + 8);
      v20 = *(result + 20);
      v21 = *(result + 16);
      v19 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        sub_1B043D060(v10, v8, a3, a4, a5, a6, a7);
        sub_1B0448078(v10, v8, a3);
      }

      v16 = *v10;

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v21;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0439BCC()
{
  result = qword_1EB6E6FB8;
  if (!qword_1EB6E6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FB8);
  }

  return result;
}

uint64_t sub_1B0439C20()
{
  v3 = sub_1B043B0C8();
  if (v0 <= 0x3F)
  {
    v3 = _s31PreviouslyDownloadedMessageDataVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

void sub_1B0439D0C()
{
  if (!qword_1EB6DCE08)
  {
    type metadata accessor for AuthenticationTask();
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCE08);
    }
  }
}

uint64_t sub_1B0439D64()
{
  result = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0439E28(uint64_t *a1)
{
  v13 = a1;
  v26 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BB8, &qword_1B0E9FBA8);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v5 - v17;
  v26 = MEMORY[0x1EEE9AC00](v13);
  v20 = v26[3];
  v21 = v26[4];
  __swift_project_boxed_opaque_existential_0(v26, v20);
  sub_1B043BCAC();
  v1 = v19;
  sub_1B0E46D18();
  v22 = v1;
  v23 = v1;
  if (v1)
  {
    v5[4] = v23;
    v5[0] = v23;
    __swift_destroy_boxed_opaque_existential_0(v13);
    return v5[1];
  }

  else
  {
    v25 = 0;
    v2 = sub_1B0E46878();
    v10 = 0;
    v11 = v2;
    v12 = 0;
    v6 = v2;
    v27 = v2;
    v24 = 1;
    v3 = sub_1B0E46878();
    v7 = 0;
    v8 = v3;
    v9 = 0;
    v5[5] = v3;
    v28 = v3;
    (*(v15 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_0(v13);
    return v6;
  }
}

double sub_1B043A0CC(double a1, double a2, double a3)
{
  if (a1 - a2 <= 0.0)
  {
    return a3;
  }

  pow(0.999997144, a1 - a2);
  if ((sub_1B0E453C8() & 1) == 0)
  {
    return 0.0;
  }

  sub_1B0E46B78();
  sub_1B0E46B68();
  return v5;
}

void sub_1B043A1E8()
{
  if (!qword_1EB6DB4F0)
  {
    _s25MessageSectionsToDownloadVMa(255);
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB4F0);
    }
  }
}

uint64_t sub_1B043A260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9FBA8;
  *(v18 + 24) = v17;
  v43 = sub_1B043DC40;
  v44 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B043DC58;
  *(v20 + 24) = v19;
  v45 = sub_1B043DC28;
  v46 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B043E6D0;
  *(result + 24) = v21;
  v47 = sub_1B043DC28;
  v48 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v42[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v40 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_1B043D890(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v56;
          a8[6] = v55;
          a8[7] = v35;
          a8[8] = v57;
          v36 = v52;
          a8[2] = v51;
          a8[3] = v36;
          v37 = v54;
          a8[4] = v53;
          a8[5] = v37;
          v38 = v50;
          *a8 = v49;
          a8[1] = v38;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v40;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v41 = v9;
      v32 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v41 = v9;
        v33 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 148;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043A71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B043A754()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B043A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B043EFD0;
  *(v17 + 24) = v16;
  v48 = sub_1B0DA9340;
  v49 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B04465C8;
  *(v19 + 24) = v18;
  v50 = sub_1B0DA938C;
  v51 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B043AF00;
  *(v21 + 24) = v20;
  v52 = sub_1B0DA938C;
  v53 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B043EFF0;
  *(v23 + 24) = v22;
  v54 = sub_1B0DA938C;
  v55 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0446770;
  *(v25 + 24) = v24;
  v56 = sub_1B0DA938C;
  v57 = v25;
  v26 = a2 + 1;
  v27 = __OFADD__(a2, 1);

  if (!v27)
  {
    swift_retain_n();
    v29 = 32;
    v30 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v47[v29];
      if (v26 >= a3)
      {
        sub_1B0439BCC();
        v38 = swift_allocError();
        *v40 = a3;
      }

      else
      {
        v45 = v29;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v44 = *(v30 + 20);
        v34 = v26;
        v35 = *(v30 + 22);

        v36 = v8;
        v37 = v34;
        sub_1B0DA9370(v30, v34, a3);
        v38 = v36;
        if (!v36)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        v39 = *v30;

        *v30 = v31;
        *(v30 + 8) = v32;
        *(v30 + 16) = v33;
        *(v30 + 20) = v44;
        *(v30 + 22) = v35;
        v26 = v37;
        v29 = v45;
      }

      swift_willThrow();
      v46 = v38;
      v41 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v46 = v38;
        v42 = v38;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v29 += 16;
      if (v29 == 112)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v43 = 0xD000000000000019;
        v43[1] = 0x80000001B0F2FF00;
        v43[2] = 0xD000000000000020;
        v43[3] = 0x80000001B0F2FA10;
        v43[4] = 72;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043ACDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B043AD14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B043AD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x44454853494E4156uLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v23 = *(a1 + 20);
      v24 = *(a1 + 16);
      v22 = *(a1 + 22);

      sub_1B0DB29B0(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

unint64_t sub_1B043AF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  result = sub_1B0437B90(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
    a8[2] = v12;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_1B043AF90()
{
  result = qword_1EB6DCDE8;
  if (!qword_1EB6DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCDE8);
  }

  return result;
}

void sub_1B043AFE4()
{
  _s6LoggerVMa_0();
  if (v0 <= 0x3F)
  {
    sub_1B0437328();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B043B0C8()
{
  v4 = qword_1EB6DB5E0;
  if (!qword_1EB6DB5E0)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB5E0);
      return v1;
    }
  }

  return v4;
}

void sub_1B043B15C()
{
  if (!qword_1EB6DB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DB638);
    }
  }
}

unint64_t sub_1B043B1E8()
{
  v2 = qword_1EB6DED58;
  if (!qword_1EB6DED58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043B29C()
{
  v4 = qword_1EB6DE3E0;
  if (!qword_1EB6DE3E0)
  {
    sub_1B041C1E8();
    v3 = type metadata accessor for MessageIdentifierSet();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DE3E0);
      return v1;
    }
  }

  return v4;
}

void sub_1B043B338()
{
  _s19MessageHeaderStatusOMa(319);
  if (v0 <= 0x3F)
  {
    sub_1B041D6E0(319, &qword_1EB6DB4E0);
    if (v1 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB5E0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for AuthenticationTask()
{
  result = qword_1EB6DCE10;
  if (!qword_1EB6DCE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B043B450()
{
  if (!qword_1EB6DD100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DD100);
    }
  }
}

void sub_1B043B4CC()
{
  if (!qword_1EB6DB440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5708, ",w\b");
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB440);
    }
  }
}

uint64_t sub_1B043B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  MEMORY[0x1E69E5928]();
  v8(a2, a3, a4);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B043B5A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  memset(__b, 0, 0x29uLL);
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v20 = a4;
  v21 = a5;
  MEMORY[0x1E69E5928](a1);
  result = sub_1B043B754(a1, &v14);
  if (v16)
  {
    __b[0] = v14;
    __b[1] = v15;
    __b[2] = v16;
    __b[3] = v17;
    __b[4] = v18;
    LOBYTE(__b[5]) = v19 & 1;
    v11[0] = v14;
    v11[1] = v15;
    v11[2] = v16;
    v11[3] = v17;
    v11[4] = v18;
    v12 = v19 & 1;
    a4(v11);
  }

  return result;
}

uint64_t sub_1B043B754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v46 = a1;
  v28 = [a1 objectAtIndexedSubscript_];
  v29 = [v28 int64Value];
  MEMORY[0x1E69E5920](v28);
  MailboxRowID.init(_:)(v29, &v44);
  v30 = v44;
  if (v45)
  {
    goto LABEL_14;
  }

  v43 = v44;
  v24 = [a1 objectAtIndexedSubscript_];
  v2 = [v24 stringValue];
  v25 = v2;
  if (v2)
  {
    v20 = sub_1B0E44AD8();
    v21 = v3;
    MEMORY[0x1E69E5920](v25);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (!v23)
  {
    MEMORY[0x1E69E5920](v24);
LABEL_14:
    result = MEMORY[0x1E69E5920](a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    return result;
  }

  v41 = v22;
  v42 = v23;
  MEMORY[0x1E69E5920](v24);
  v18 = [a1 objectAtIndexedSubscript_];
  v4 = [v18 dataValue];
  v19 = v4;
  if (v4)
  {
    v14 = sub_1B0E42F38();
    v15 = v5;
    MEMORY[0x1E69E5920](v19);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  MEMORY[0x1E69E5920](v18);
  v37[0] = v16;
  v37[1] = v17;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  sub_1B039A570(sub_1B043C52C, 0, v6, MEMORY[0x1E69E73E0], &unk_1F26DC9C8, v13, &v38);
  sub_1B043C03C(v37);
  v10 = v38;
  v11 = v39;
  v12 = v40;
  v34 = v38;
  v35 = v39;
  v36 = v40 & 1;
  v31 = v30;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
  sub_1B043C0EC(&v31, v7, v8, v10, v11, v12 & 1, v32);
  __b[0] = v32[0];
  __b[1] = v32[1];
  __b[2] = v32[2];
  __b[3] = v32[3];
  __b[4] = v32[4];
  LOBYTE(__b[5]) = v33 & 1;
  sub_1B043C08C(__b, a2);
  MEMORY[0x1E69E5920](a1);
  return sub_1B043C118(__b);
}

unint64_t sub_1B043BBB4()
{
  v2 = qword_1EB6DA738;
  if (!qword_1EB6DA738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B043BC30()
{
  v2 = qword_1EB6DA740;
  if (!qword_1EB6DA740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B043BCAC()
{
  v2 = qword_1EB6DA748;
  if (!qword_1EB6DA748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043BDE8(uint64_t a1, unint64_t a2)
{
  sub_1B043C5BC();
  sub_1B0E42878();
  sub_1B043BF98();
  v4 = v2;

  sub_1B0391D50(a1, a2);
  return v4;
}

void sub_1B043BF98()
{
  sub_1B043B1E8();
  sub_1B0E453D8();
  v0 = sub_1B0E453D8();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v0);
}

uint64_t sub_1B043C03C(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*a1, *(a1 + 8));
  }

  return a1;
}

__n128 sub_1B043C08C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v4;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void *sub_1B043C0EC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_1B043C118(uint64_t a1)
{
  v1 = *(a1 + 16);

  return a1;
}

void sub_1B043C144(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  __b[0] = *a1;
  __b[1] = v1;
  __b[2] = v2;
  *&__b[3] = v7;
  *&__b[4] = v8;
  LOBYTE(__b[5]) = v3 & 1;
  if (v3)
  {
    v4 = 0.0;
    v5 = 1;
  }

  else
  {
    v4 = sub_1B043C320(v7, v8);
    v5 = 0;
  }

  if ((v5 & 1) == 0 && v4 >= 0.01)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B08, &qword_1B0E9F570);
    sub_1B0E452E8();
  }
}

void sub_1B043C314(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B043C144(a1);
}

uint64_t sub_1B043C37C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1B043C52C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v7 = a1[1];
  sub_1B03B2000(*a1, v7);
  sub_1B0E428A8();
  sub_1B0E42888();
  result = sub_1B043BDE8(v5, v7);
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  return result;
}

unint64_t sub_1B043C5BC()
{
  v2 = qword_1EB6DA728;
  if (!qword_1EB6DA728)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA728);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043C638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0439E28(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1B043C6AC(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v29 = a1;
  v27 = a2;
  v28 = a3;
  sub_1B0E44838();
  v16 = sub_1B0E44AC8();

  v17 = [a1 preparedStatementForQueryString_];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v9 = v17;
    v26 = v17;
    v30 = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B043B73C;
    *(v7 + 24) = v8;

    v24 = sub_1B043B748;
    v25 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = 0;
    v22 = sub_1B043B530;
    v23 = &block_descriptor_95;
    v11 = _Block_copy(&aBlock);

    v18 = v30;
    v12 = [v17 executeUsingBlock:v11 error:&v18];
    v10 = v18;
    MEMORY[0x1E69E5928](v18);
    v3 = v30;
    v30 = v10;
    MEMORY[0x1E69E5920](v3);
    _Block_release(v11);
    if (v12)
    {
      MEMORY[0x1E69E5920](v17);
      sub_1B04197E4(sub_1B043B73C);
      result = sub_1B04197E4(sub_1B043B748);
      v5 = __OFSUB__(*MEMORY[0x1E69E9840], v31);
      return result;
    }
  }

  else
  {
    sub_1B0E44838();
    sub_1B0E465B8();
    __break(1u);
  }

  v6 = v30;
  sub_1B0E42CD8();
  MEMORY[0x1E69E5920](v6);
  swift_willThrow();
  MEMORY[0x1E69E5920](v9);
  sub_1B04197E4(sub_1B043B73C);
  result = sub_1B04197E4(sub_1B043B748);
  *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B043CAE0()
{
  result = qword_1EB6DD1D8;
  if (!qword_1EB6DD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1D8);
  }

  return result;
}

unint64_t sub_1B043CB48()
{
  result = qword_1EB6DD1B8;
  if (!qword_1EB6DD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1B8);
  }

  return result;
}

void sub_1B043CB9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B043CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B043CC6C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B0E45588();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B043CCCC()
{
  sub_1B043CB9C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v0 <= 0x3F)
  {
    _s18InProgressMessagesVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B043CE24()
{
  sub_1B043CF0C();
  if (v0 <= 0x3F)
  {
    sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB4E8);
      if (v2 <= 0x3F)
      {
        sub_1B043A1E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B043CF0C()
{
  if (!qword_1EB6DB790)
  {
    sub_1B043CF70();
    v0 = sub_1B0E44708();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB790);
    }
  }
}

unint64_t sub_1B043CF70()
{
  v2 = qword_1EB6DE1F0;
  if (!qword_1EB6DE1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043D008()
{
  v0 = type metadata accessor for MessageHeader();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1B043D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0442590;
  *(v17 + 24) = v16;
  v59 = sub_1B0DA9340;
  v60 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B043EFB0;
  *(v19 + 24) = v18;
  v61 = sub_1B0DA938C;
  v62 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B043AF20;
  *(v21 + 24) = v20;
  v63 = sub_1B0DA938C;
  v64 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B04380A8;
  *(v23 + 24) = v22;
  v65 = sub_1B0DA938C;
  v66 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0442B4C;
  *(v25 + 24) = v24;
  v67 = sub_1B0DA938C;
  v68 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0442B6C;
  *(v27 + 24) = v26;
  v69 = sub_1B0DA938C;
  v70 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0442B8C;
  *(v29 + 24) = v28;
  v71 = sub_1B0DA938C;
  v72 = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0442ED8;
  *(v31 + 24) = v30;
  v73 = sub_1B0DA938C;
  v74 = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B04433F8;
  *(v33 + 24) = v32;
  v75 = sub_1B0DA938C;
  v76 = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DAF4A4;
  *(v35 + 24) = v34;
  v77 = sub_1B0DA938C;
  v78 = v35;
  v36 = __OFADD__(a2, 1);
  v37 = a2 + 1;
  v38 = v36;
  result = swift_retain_n();
  if ((v38 & 1) == 0)
  {
    swift_retain_n();
    v40 = 32;
    v41 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v58[v40];
      if (v37 >= a3)
      {
        sub_1B0439BCC();
        v49 = swift_allocError();
        *v51 = a3;
      }

      else
      {
        v56 = v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        v55 = *(v41 + 20);
        v45 = v37;
        v46 = *(v41 + 22);

        v47 = v8;
        v48 = v45;
        sub_1B0DA9370(v41, v45, a3);
        v49 = v47;
        if (!v47)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        v50 = *v41;

        *v41 = v42;
        *(v41 + 8) = v43;
        *(v41 + 16) = v44;
        *(v41 + 20) = v55;
        *(v41 + 22) = v46;
        v37 = v48;
        v40 = v56;
      }

      swift_willThrow();
      v57 = v49;
      v52 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v57 = v49;
        v53 = v49;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v40 += 16;
      if (v40 == 192)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v54 = 0xD000000000000019;
        v54[1] = 0x80000001B0F2FF00;
        v54[2] = 0xD000000000000020;
        v54[3] = 0x80000001B0F2FA10;
        v54[4] = 180;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043D768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B043D7A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_1B043D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a2;
  return v4(a1, v7);
}

unint64_t sub_1B043D8AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_1B0A6D6C4(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_49;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_1B0E44E08();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_1B0E46368();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_1B0A6D6C4(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_51;
    }

    v23 = result;
    v14 = sub_1B0E44DD8();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_1B0A6D6C4(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_1B0E44E08();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_1B0E46368();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_1B0A6D6C4(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_50;
    }

    result = sub_1B0E44DD8();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    if (((v28 ^ v17) & 0xDF) != 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_1B043DC58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B043DCA4(a1, a2, a3, 0x53545349584520uLL, a4, sub_1B0D0443C);
}

unint64_t sub_1B043DCA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, _OWORD *a5@<X8>, uint64_t (*a6)(_OWORD *))
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v6)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v18 = 0xD000000000000011;
      v18[1] = 0x80000001B0F2FEE0;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001B0F2FA10;
      v18[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v13 = result;
      sub_1B0DFE880(a4, 0xE700000000000000, 0, 0, a1, a2, a3);
      *&v19[0] = v13;
      result = a6(v19);
      v14 = v19[7];
      a5[6] = v19[6];
      a5[7] = v14;
      a5[8] = v19[8];
      v15 = v19[3];
      a5[2] = v19[2];
      a5[3] = v15;
      v16 = v19[5];
      a5[4] = v19[4];
      a5[5] = v16;
      v17 = v19[1];
      *a5 = v19[0];
      a5[1] = v17;
    }
  }

  return result;
}

uint64_t sub_1B043DDD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v9 = a4;
    v8 = a5;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 20);
    v17 = *(result + 22);
    sub_1B043E32C(result, &v56);
    if (v5)
    {
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
      return swift_willThrow();
    }

    v7 = 0xD000000000000020;
    v6 = 0x80000001B0F2FA10;
    result = sub_1B0DFF2E8(v56, v57, v58 | (v59 << 32) | (v60 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 216);
    v20 = HIBYTE(v11) & 0xF;
    v21 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v22 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_71;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      v23 = v8;
      v24 = v9;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v56 = result;
        v57 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v20)
          {
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v27 = 0;
              v35 = &v56 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v27, v36);
                v27 = 10 * v27 + v36;
                if (v30)
                {
                  break;
                }

                ++v35;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        if (result != 45)
        {
          if (v20)
          {
            v27 = 0;
            v38 = &v56;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v27, v39);
              v27 = 10 * v27 + v39;
              if (v30)
              {
                break;
              }

              v38 = (v38 + 1);
              if (!--v20)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_69;
        }

        if (v20)
        {
          v21 = v20 - 1;
          if (v20 != 1)
          {
            v27 = 0;
            v31 = &v56 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = 10 * v27 >= v32;
              v27 = 10 * v27 - v32;
              if (!v30)
              {
                break;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v25 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v50 = result;
          v55 = v11;
          v51 = sub_1B0E46368();
          v24 = v9;
          v23 = v8;
          v25 = v51;
          result = v50;
          v21 = v52;
          v11 = v55;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v21 >= 1)
          {
            if (--v21)
            {
              v27 = 0;
              if (v25)
              {
                v33 = v25 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v27, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v30 = __CFADD__(10 * v27, v34);
                  v27 = 10 * v27 + v34;
                  if (v30)
                  {
                    goto LABEL_69;
                  }

                  ++v33;
                  if (!--v21)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_69;
          }

          goto LABEL_84;
        }

        if (v26 != 45)
        {
          if (v21)
          {
            v27 = 0;
            if (v25)
            {
              while (1)
              {
                v37 = *v25 - 48;
                if (v37 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = __CFADD__(10 * v27, v37);
                v27 = 10 * v27 + v37;
                if (v30)
                {
                  goto LABEL_69;
                }

                ++v25;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_69:
          v27 = 0;
          LOBYTE(v21) = 1;
LABEL_70:
          v61 = v21;
          if (v21)
          {
LABEL_71:
            v56 = 0;
            v57 = 0xE000000000000000;
            v40 = result;
            v41 = v11;
            sub_1B0E46298();

            v56 = v40;
            v57 = v41;
            MEMORY[0x1B2726E80](v7 - 16, 0x80000001B0F304C0);
            v42 = v56;
            v43 = v57;
            sub_1B0436554();
            swift_allocError();
            *v44 = v42;
            *(v44 + 8) = v43;
            *(v44 + 16) = v7;
            *(v44 + 24) = v6;
            v45 = 218;
LABEL_72:
            *(v44 + 32) = v45;
            swift_willThrow();
          }

          goto LABEL_76;
        }

        if (v21 >= 1)
        {
          if (--v21)
          {
            v27 = 0;
            if (v25)
            {
              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = 10 * v27 >= v29;
                v27 = 10 * v27 - v29;
                if (!v30)
                {
                  goto LABEL_69;
                }

                ++v28;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_68:
            LOBYTE(v21) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  v61 = 0;
  v53 = result;
  v54 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = sub_1B0B6D434(v53, v54, 10);
  v47 = v46;

  result = v53;
  v11 = v54;
  if (v47)
  {
    goto LABEL_71;
  }

  v24 = v9;
  v23 = v8;
LABEL_76:
  if (v24)
  {
LABEL_80:
    *v23 = v27;
    v48 = v23;
    v49 = sub_1B0E44CF8();

    v48[1] = v49;
    return result;
  }

  result = sub_1B0C704E4(result, v11);
  if ((result & 0x100) == 0)
  {
    v23 = v8;
    if (result == 48)
    {

      sub_1B0436554();
      swift_allocError();
      strcpy(v44, "starts with 0");
      *(v44 + 14) = -4864;
      *(v44 + 16) = v7;
      *(v44 + 24) = v6;
      v45 = 221;
      goto LABEL_72;
    }

    goto LABEL_80;
  }

LABEL_86:
  __break(1u);
  return result;
}

unint64_t sub_1B043E32C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 20);
  v21 = *result;
  v38 = *result;
  v39 = v3;
  v40 = v2;
  v18 = v4;
  v41 = v4;
  v42 = v5;
  v19 = v6;
  v43 = v6;
  v44 = v3;
  v45 = v2;
  if (v2 == v3)
  {
LABEL_9:

    sub_1B04394F4(&v38);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v3 + v7 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    result = swift_beginAccess();
    if (*(*(v38 + 24) + (v43 | (v42 << 8)) + v3 + v7) - 58 < 0xFFFFFFF6)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_9;
    }
  }

  sub_1B04394F4(&v38);
  v30 = v21;
  v31 = v3;
  v32 = v2;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v3;
  v37 = v2;

  result = sub_1B04394F4(&v30);
  if (v3 + v7 == v36)
  {
    v22 = v21;
    v23 = v3;
    v24 = v2;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v3;
    v29 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v12 = *(v21 + 24);
    v13 = *(v12 + v8);
    v14 = *(v12 + v8);

    sub_1B04394F4(&v22);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001B0F2FA10;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v3;
  v24 = v2;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v3;
  v29 = v2;
  v9 = v3 + v7;

  sub_1B04394F4(&v22);
  result = v9 - v28;
  if (__OFSUB__(v9, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 20) = WORD2(v11);
    *(a2 + 22) = BYTE6(v11);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B043E6D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B043DCA4(a1, a2, a3, 0x544E4543455220uLL, a4, sub_1B0D043F0);
}

unint64_t sub_1B043E71C(uint64_t a1, uint64_t a2, int64_t a3)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    v46[0] = v10;

    sub_1B0E0581C(v4, v46, v8, v7, v42, v45, v43, v44);
    if (v6)
    {

      v30 = *v4;

      swift_willThrow();
      v9 = v40;
      v16 = v41;
      v18 = v39;
      goto LABEL_9;
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v4, v8, v7);
    goto LABEL_16;
  }

  v46[7] = v14;
  v46[8] = v13;
  v46[12] = v9;
  v46[13] = v8;
  v46[15] = v7;
  v46[16] = v6;
  v46[17] = v4;
  v46[18] = v3;
  v46[19] = v11;
  v46[20] = v12;
  if (a2 + 1 < a3)
  {
    v4 = a1;
    v3 = *a1;
    v13 = *(a1 + 8);
    v16 = *(a1 + 16);
    v9 = *(a1 + 20);
    v17 = a2 + 2;
    v18 = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v4);
    if (v5)
    {

LABEL_8:
      swift_willThrow();
LABEL_9:
      *v4 = v3;
      *(v4 + 8) = v13;
      *(v4 + 16) = v16;
      *(v4 + 20) = v9;
      *(v4 + 22) = v18;
      goto LABEL_10;
    }

    v22 = *v4;
    v23 = *(v4 + 8);
    v24 = *(v4 + 16);
    v25 = *(v4 + 20);
    v26 = *(v4 + 22);

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v9 = MEMORY[0x1E69E7CC0];
    v27 = *v4;
    sub_1B0436204(v4);
    v28 = *v4;
    v29 = *(v4 + 8);
    LOWORD(v25) = *(v4 + 20);
    v36 = *(v4 + 22);
    v38 = *(v4 + 16);

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v31 = *v4;
    sub_1B0436204(v4);
    v32 = *v4;
    v33 = *(v4 + 8);
    v37 = *(v4 + 16);
    v34 = *(v4 + 22);
    v35 = *(v4 + 20);

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);
LABEL_16:

    return v9;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v19 = a3;
LABEL_10:
  swift_willThrow();
  return v9;
}

unint64_t sub_1B043EFD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B04379F0(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

int *OUTLINED_FUNCTION_7_0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_1B043F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75D8, &qword_1B0EF5000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B0EF4FF0;
  *(v11 + 32) = 0x5452454C41;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = sub_1B0DAC4CC;
  *(v11 + 56) = 0;
  strcpy((v11 + 64), "ALREADYEXISTS");
  *(v11 + 78) = -4864;
  *(v11 + 80) = sub_1B0DAC4DC;
  *(v11 + 88) = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B0DAF5A4;
  *(v13 + 24) = v12;
  *(v11 + 96) = 0x4955444E45505041;
  *(v11 + 104) = 0xE900000000000044;
  *(v11 + 112) = sub_1B04403D0;
  *(v11 + 120) = v13;
  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x80000001B0F30070;
  *(v11 + 144) = sub_1B0DAC4EC;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0xD000000000000013;
  *(v11 + 168) = 0x80000001B0F30090;
  *(v11 + 176) = sub_1B0DAC4FC;
  *(v11 + 184) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DAF5C4;
  *(v15 + 24) = v14;
  *(v11 + 192) = 0x5352414843444142;
  *(v11 + 200) = 0xEA00000000005445;
  *(v11 + 208) = sub_1B0DAFD90;
  *(v11 + 216) = v15;
  *(v11 + 224) = 0x544F4E4E4143;
  *(v11 + 232) = 0xE600000000000000;
  *(v11 + 240) = sub_1B0DAC50C;
  *(v11 + 248) = 0;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B044111C;
  *(v17 + 24) = v16;
  *(v11 + 256) = 0x494C494241504143;
  *(v11 + 264) = 0xEA00000000005954;
  *(v11 + 272) = sub_1B0DAFD90;
  *(v11 + 280) = v17;
  *(v11 + 288) = 0x5542544E45494C43;
  *(v11 + 296) = 0xE900000000000047;
  *(v11 + 304) = sub_1B0DAC51C;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0x4445534F4C43;
  *(v11 + 328) = 0xE600000000000000;
  *(v11 + 336) = sub_1B0DAC52C;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0xD000000000000011;
  *(v11 + 360) = 0x80000001B0F300B0;
  *(v11 + 368) = sub_1B0DAC53C;
  *(v11 + 376) = 0;
  strcpy((v11 + 384), "CONTACTADMIN");
  *(v11 + 397) = 0;
  *(v11 + 398) = -5120;
  *(v11 + 400) = sub_1B0DAC54C;
  *(v11 + 408) = 0;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DAF5E4;
  *(v19 + 24) = v18;
  *(v11 + 416) = 0x44495559504F43;
  *(v11 + 424) = 0xE700000000000000;
  *(v11 + 432) = sub_1B0DAFD90;
  *(v11 + 440) = v19;
  *(v11 + 448) = 0x4954505552524F43;
  *(v11 + 456) = 0xEA00000000004E4FLL;
  *(v11 + 464) = sub_1B0DAC55C;
  *(v11 + 472) = 0;
  *(v11 + 480) = 0x44455249505845;
  *(v11 + 488) = 0xE700000000000000;
  *(v11 + 496) = sub_1B0DAC56C;
  *(v11 + 504) = 0;
  strcpy((v11 + 512), "EXPUNGEISSUED");
  *(v11 + 526) = -4864;
  *(v11 + 528) = sub_1B0DAC57C;
  *(v11 + 536) = 0;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DAF604;
  *(v21 + 24) = v20;
  strcpy((v11 + 544), "HIGHESTMODSEQ");
  *(v11 + 558) = -4864;
  *(v11 + 560) = sub_1B0DAFD90;
  *(v11 + 568) = v21;
  *(v11 + 576) = 0x4553554E49;
  *(v11 + 584) = 0xE500000000000000;
  *(v11 + 592) = sub_1B0DAC58C;
  *(v11 + 600) = 0;
  *(v11 + 608) = 0x54494D494CLL;
  *(v11 + 616) = 0xE500000000000000;
  *(v11 + 624) = sub_1B0DAC59C;
  *(v11 + 632) = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DAF624;
  *(v23 + 24) = v22;
  *(v11 + 640) = 0x49584F424C49414DLL;
  *(v11 + 648) = 0xE900000000000044;
  *(v11 + 656) = sub_1B0DAFD90;
  *(v11 + 664) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DAF644;
  *(v25 + 24) = v24;
  *(v11 + 672) = 0x415441444154454DLL;
  *(v11 + 680) = 0xE800000000000000;
  *(v11 + 688) = sub_1B0DAFD90;
  *(v11 + 696) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DAF664;
  *(v27 + 24) = v26;
  *(v11 + 704) = 0x4445494649444F4DLL;
  *(v11 + 712) = 0xE800000000000000;
  *(v11 + 720) = sub_1B0DAFD90;
  *(v11 + 728) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DAF684;
  *(v29 + 24) = v28;
  *(v11 + 736) = 0x43415053454D414ELL;
  *(v11 + 744) = 0xE900000000000045;
  *(v11 + 752) = sub_1B0DAFD90;
  *(v11 + 760) = v29;
  *(v11 + 768) = 0x514553444F4D4F4ELL;
  *(v11 + 776) = 0xE800000000000000;
  *(v11 + 784) = sub_1B0DAC5AC;
  *(v11 + 792) = 0;
  *(v11 + 800) = 0x54534958454E4F4ELL;
  *(v11 + 808) = 0xEB00000000544E45;
  *(v11 + 816) = sub_1B0DAC5BC;
  *(v11 + 824) = 0;
  *(v11 + 832) = 0x4D5245504F4ELL;
  *(v11 + 840) = 0xE600000000000000;
  *(v11 + 848) = sub_1B0DAC5CC;
  *(v11 + 856) = 0;
  *(v11 + 864) = 0x4445564153544F4ELL;
  *(v11 + 872) = 0xE800000000000000;
  *(v11 + 880) = sub_1B0DAC5DC;
  *(v11 + 888) = 0;
  *(v11 + 896) = 0x544F55515245564FLL;
  *(v11 + 904) = 0xE900000000000041;
  *(v11 + 912) = sub_1B0DAC5EC;
  *(v11 + 920) = 0;
  *(v11 + 928) = 0x4553524150;
  *(v11 + 936) = 0xE500000000000000;
  *(v11 + 944) = sub_1B0DAC5FC;
  *(v11 + 952) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DAF6A4;
  *(v31 + 24) = v30;
  strcpy((v11 + 960), "PERMANENTFLAGS");
  *(v11 + 975) = -18;
  *(v11 + 976) = sub_1B0DAFD90;
  *(v11 + 984) = v31;
  *(v11 + 992) = 0x5259434156495250;
  *(v11 + 1000) = 0xEF44455249555145;
  *(v11 + 1008) = sub_1B0DAC60C;
  *(v11 + 1016) = 0;
  *(v11 + 1024) = 0x4C4E4F2D44414552;
  *(v11 + 1032) = 0xE900000000000059;
  *(v11 + 1040) = sub_1B0DAC61C;
  *(v11 + 1048) = 0;
  *(v11 + 1056) = 0x4952572D44414552;
  *(v11 + 1064) = 0xEA00000000004554;
  *(v11 + 1072) = sub_1B0DAC62C;
  *(v11 + 1080) = 0;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B0DAF6C4;
  *(v33 + 24) = v32;
  *(v11 + 1088) = 0x4C41525245464552;
  *(v11 + 1096) = 0xE800000000000000;
  *(v11 + 1104) = sub_1B0DAFD90;
  *(v11 + 1112) = v33;
  *(v11 + 1120) = 0x5542524556524553;
  *(v11 + 1128) = 0xE900000000000047;
  *(v11 + 1136) = sub_1B0DAC63C;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0x5441455243595254;
  *(v11 + 1160) = 0xE900000000000045;
  *(v11 + 1168) = sub_1B0DAC64C;
  *(v11 + 1176) = 0;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DAF6E4;
  *(v35 + 24) = v34;
  *(v11 + 1184) = 0x5458454E444955;
  *(v11 + 1192) = 0xE700000000000000;
  *(v11 + 1200) = sub_1B0DAFD90;
  *(v11 + 1208) = v35;
  strcpy((v11 + 1216), "UIDNOTSTICKY");
  *(v11 + 1229) = 0;
  *(v11 + 1230) = -5120;
  *(v11 + 1232) = sub_1B0DAC65C;
  *(v11 + 1240) = 0;
  *(v11 + 1248) = 0x4955514552444955;
  *(v11 + 1256) = 0xEB00000000444552;
  *(v11 + 1264) = sub_1B0DAC66C;
  *(v11 + 1272) = 0;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B0DAF704;
  *(v37 + 24) = v36;
  *(v11 + 1280) = 0x44494C4156444955;
  *(v11 + 1288) = 0xEB00000000595449;
  *(v11 + 1296) = sub_1B0DAFD90;
  *(v11 + 1304) = v37;
  *(v11 + 1312) = 0x414C494156414E55;
  *(v11 + 1320) = 0xEB00000000454C42;
  *(v11 + 1328) = sub_1B0DAC67C;
  *(v11 + 1336) = 0;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B0DAF724;
  *(v39 + 24) = v38;
  *(v11 + 1344) = 0x4E4545534E55;
  *(v11 + 1352) = 0xE600000000000000;
  *(v11 + 1360) = sub_1B0DAFD90;
  *(v11 + 1368) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1B0DAF744;
  *(v41 + 24) = v40;
  *(v11 + 1376) = 0x4843454D4C5255;
  *(v11 + 1384) = 0xE700000000000000;
  *(v11 + 1392) = sub_1B0DAFD90;
  *(v11 + 1400) = v41;
  *(v11 + 1408) = 0x52545441455355;
  *(v11 + 1416) = 0xE700000000000000;
  *(v11 + 1424) = sub_1B0DAC68C;
  *(v11 + 1432) = 0;
  swift_retain_n();
  v42 = sub_1B0DA9080(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E0, &qword_1B0EF5008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v44[6] = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1B0440424;
  *(v45 + 24) = v44;
  *(inited + 32) = sub_1B0DAFD90;
  *(inited + 40) = v45;
  v46 = swift_allocObject();
  v46[2] = a4;
  v46[3] = a5;
  v46[4] = a6;
  v46[5] = a7;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1B0DAF764;
  *(v47 + 24) = v46;
  *(inited + 48) = sub_1B0DAFD90;
  *(inited + 56) = v47;
  swift_retain_n();
  v48 = sub_1B0440090(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 436);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v48;
}

uint64_t sub_1B043FFD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B0440090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B04403B8(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0440364()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_1B04403E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1B0440440@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(result + 20);
  v20 = *result;
  v37 = *result;
  v38 = v3;
  v39 = v2;
  v17 = v4;
  v40 = v4;
  v41 = v5;
  v18 = v6;
  v42 = v6;
  v43 = v3;
  v44 = v2;
  if (v2 == v3)
  {
LABEL_12:

    sub_1B04394F4(&v37);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v38)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 + v7 - v38 >= v39 - v38)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v9 = *(*(v37 + 24) + (v42 | (v41 << 8)) + v3 + v7);
    result = isalnum(v9);
    if (!result && (v9 - 45) >= 2)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_12;
    }
  }

  sub_1B04394F4(&v37);
  v29 = v20;
  v30 = v3;
  v31 = v2;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v3;
  v36 = v2;

  result = sub_1B04394F4(&v29);
  if (v3 + v7 == v35)
  {
    v21 = v20;
    v22 = v3;
    v23 = v2;
    v24 = v17;
    v25 = v19;
    v26 = v18;
    v27 = v3;
    v28 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v13 = *(*(v20 + 24) + v8);

    sub_1B04394F4(&v21);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v14 = ((v13 >> 6) & 0xFFFFC0FF | ((v13 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v14 = v13 + 1;
    }

    v45 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD000000000000020;
    v15[3] = 0x80000001B0F2FA10;
    v15[4] = 118;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = v3;
  v23 = v2;
  v24 = v17;
  v25 = v19;
  v26 = v18;
  v27 = v3;
  v28 = v2;

  sub_1B04394F4(&v21);
  result = v3 + v7 - v27;
  if (__OFSUB__(v3 + v7, v27))
  {
    goto LABEL_26;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = WORD2(v12);
    *(a2 + 22) = BYTE6(v12);
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B04407F4(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  v3 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = sub_1B0440FC0(0, (v1 - v2) & ~((v1 - v2) >> 63), 0, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v5 + (v4 - v5);
  v13 = v7 | (v6 << 8);
  v14 = 8 * v1;
  v15 = xmmword_1B0EE0600;
  v16 = xmmword_1B0EE0610;
  v17 = xmmword_1B0EE0620;
  result = 49376;
  v19 = v2;
  while (1)
  {
    LODWORD(v55) = v10;
    BYTE4(v55) = v11;
    if (!v11)
    {
      break;
    }

    if ((v10 & 0x80) == 0)
    {
      v46 = v17;
      v48 = v16;
      v50 = v15;
      v52 = v14;
      v35 = v13;
      v36 = v12;
      v37 = v9;
      sub_1B0CB1F34();
      result = sub_1B0C14AB0();
      v39 = *(v38 + 4);
      if (!v39)
      {
        goto LABEL_79;
      }

      *v38 >>= 8;
      *(v38 + 4) = v39 - 8;
      (result)(v54, 0);
      v22 = (v10 + 1);
      v9 = v37;
      v12 = v36;
      v13 = v35;
      v14 = v52;
      v16 = v48;
      v15 = v50;
      v17 = v46;
      result = 49376;
      goto LABEL_49;
    }

LABEL_11:
    if (v19 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v19 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v19 >= v12)
    {
      goto LABEL_78;
    }

    v24 = v19 + 1;
    v10 = (*(*(v9 + 24) + v13 + v19) << v11) | ((-255 << v11) - 1) & v10;
    v23 = v11 + 8;
    if ((v11 + 8) > 0x1Fu)
    {
      goto LABEL_44;
    }

    if (v24 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v24 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v12 == v24)
    {
      goto LABEL_78;
    }

    v25 = v19 + 2;
    v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
    v23 = v11 + 16;
    if ((v11 + 16) > 0x1Fu)
    {
      v19 += 2;
    }

    else
    {
      if (v25 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v25 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v25)
      {
        goto LABEL_78;
      }

      v24 = v19 + 3;
      v10 = (*(*(v9 + 24) + v13 + v25) << v23) | ((-255 << v23) - 1) & v10;
      v23 = v11 + 24;
      if ((v11 + 24) > 0x1Fu)
      {
LABEL_44:
        v19 = v24;
        goto LABEL_45;
      }

      if (v24 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v24 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v24)
      {
        goto LABEL_78;
      }

      v26 = v19 + 4;
      v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
      if (v11 >= 0xE0u)
      {
        if (v26 != v1)
        {
          if (v19 < v2 || v26 >= v1)
          {
            goto LABEL_76;
          }

          if (v19 < v5)
          {
            goto LABEL_77;
          }

          if (v12 == v26)
          {
            goto LABEL_78;
          }

          v19 += 5;
          v10 = (*(*(v9 + 24) + v13 + v26) << v11) | ((-255 << v11) - 1) & v10;
          v23 = v11 + 40;
          goto LABEL_45;
        }

LABEL_12:
        v23 = v14 + v11 - 8 * v19;
        v19 = v1;
        if (!v23)
        {
LABEL_72:
          v54[0] = 0;
          v54[1] = 0xE000000000000000;
          v55 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64F8, &qword_1B0EE7580);
          sub_1B0440FD4();
          sub_1B0E44C48();

          return v54[0];
        }

        goto LABEL_45;
      }

      v23 = v11 + 32;
      v19 += 4;
    }

LABEL_45:
    if ((v10 & 0xC0E0) == 0x80C0)
    {
      if ((v10 & 0x1E) == 0)
      {
        goto LABEL_71;
      }

      v27 = 16;
    }

    else if ((v10 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v10 & 0x200F) == 0 || (v10 & 0x200F) == 0x200D)
      {
        goto LABEL_71;
      }

      v27 = 24;
    }

    else
    {
      if ((v10 & 0xC0C0C0F8) != 0x808080F0 || (v10 & 0x3007) == 0 || __rev16(v10 & 0x3007) > 0x400)
      {
LABEL_71:
        v43 = sub_1B0E46D58();
        LODWORD(v55) = v10 >> ((8 * v43) & 0x38);
        BYTE4(v55) = v23 - 8 * v43;

        return 0;
      }

      v27 = 32;
    }

    LODWORD(v55) = v10 >> v27;
    BYTE4(v55) = v23 - v27;
    v22 = ((1 << (v27 >> 1) << (v27 >> 1)) - 1) & (v10 + 16843009);
LABEL_49:
    v28 = __clz(v22) >> 3;
    switch(v28)
    {
      case 1u:
        v29 = ((v22 - 65793) >> 2) & 0xFC0 | ((v22 - 65793) >> 16) & 0x3F | (((v22 - 65793) & 0xF) << 12);
        break;
      case 2u:
        v29 = (((v22 - 257) & 0x1F) << 6) | ((v22 - 257) >> 8) & 0x3F;
        break;
      case 3u:
        v29 = v22 - 1;
        break;
      default:
        v30 = vdupq_n_s32(v22 - 16843009);
        v31.i64[0] = vshlq_u32(v30, v15).u64[0];
        v31.i64[1] = vshlq_u32(v30, v16).i64[1];
        v32 = vandq_s8(v31, v17);
        *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        v29 = v32.i32[0] | v32.i32[1];
        break;
    }

    v10 = v55;
    v11 = BYTE4(v55);
    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    if (v34 >= v33 >> 1)
    {
      v44 = v12;
      v45 = v9;
      v40 = v8;
      v41 = v13;
      v53 = v14;
      v49 = v16;
      v51 = v15;
      v47 = v17;
      v42 = sub_1B0440FC0((v33 > 1), v34 + 1, 1, v40);
      v17 = v47;
      v16 = v49;
      v15 = v51;
      v14 = v53;
      v13 = v41;
      v12 = v44;
      v9 = v45;
      v8 = v42;
      result = 49376;
    }

    *(v8 + 2) = v34 + 1;
    *&v8[4 * v34 + 32] = v29;
  }

  if (v19 == v1)
  {
    goto LABEL_72;
  }

  if (v19 >= v2 && v19 < v1)
  {
    if (v19 < v5)
    {
      goto LABEL_74;
    }

    if (v19 >= v12)
    {
      goto LABEL_75;
    }

    v20 = *(*(v9 + 24) + v13 + v19);
    v21 = *(*(v9 + 24) + v13 + v19++);
    if ((v20 & 0x80000000) == 0)
    {
      v22 = v21 + 1;
      goto LABEL_49;
    }

    v10 = v10 & 0xFFFFFF00 | v21;
    v11 = 8;
    goto LABEL_11;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

char *sub_1B0440EC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

unint64_t sub_1B0440FD4()
{
  result = qword_1EB6DADD8;
  if (!qword_1EB6DADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E64F8, &qword_1B0EE7580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DADD8);
  }

  return result;
}

unint64_t sub_1B0441064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B0E46A78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B044113C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];

  sub_1B0E06504(a1, &v17, a2, a3, a4, a5, a6, a7);

  if (v7)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    *(v15 + 16) = v17;
    return v15 | 4;
  }
}

uint64_t sub_1B0441228()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_1B0441264@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = *(result + 22);
  v25 = *result;
  v42 = *result;
  v43 = v3;
  v44 = v2;
  v23 = v4;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v48 = v3;
  v49 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v42);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v43)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v43 >= v44 - v43)
    {
      goto LABEL_28;
    }

    result = swift_beginAccess();
    v9 = *(*(v42 + 24) + (v47 | (v46 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    v11 = v10 > 0x3D;
    v12 = (1 << v10) & 0x3000000000000725;
    v13 = v11 || v12 == 0;
    if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v42);
  v34 = v25;
  v35 = v3;
  v36 = v2;
  v37 = v23;
  v38 = v5;
  v39 = v24;
  v40 = v3;
  v41 = v2;

  result = sub_1B04394F4(&v34);
  if (v3 + v7 == v40)
  {
    v26 = v25;
    v27 = v3;
    v28 = v2;
    v29 = v23;
    v30 = v5;
    v31 = v24;
    v32 = v3;
    v33 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v17 = *(v25 + 24);
    v18 = *(v17 + v8);
    v19 = *(v17 + v8);

    sub_1B04394F4(&v26);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v20 = ((v19 >> 6) & 0xFFFFC0FF | ((v19 & 0x3F) << 8)) + 33217;
    if (v18 >= 0)
    {
      v20 = v19 + 1;
    }

    v50 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001B0F2FA10;
    v21[4] = 118;
    return swift_willThrow();
  }

  v26 = v25;
  v27 = v3;
  v28 = v2;
  v29 = v23;
  v30 = v5;
  v31 = v24;
  v32 = v3;
  v33 = v2;
  v14 = v3 + v7;

  sub_1B04394F4(&v26);
  result = v14 - v32;
  if (__OFSUB__(v14, v32))
  {
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = WORD2(v16);
    *(a2 + 22) = BYTE6(v16);
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}