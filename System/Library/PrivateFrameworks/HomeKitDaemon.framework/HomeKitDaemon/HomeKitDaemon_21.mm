id sub_22973FA04()
{
  v222 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);

  swift_unknownObjectRelease();
  sub_2297A46D4();
  v6 = v5;
  v7 = v2;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v206 = *(v0 + 152);
    v10 = *(v0 + 136);
    v208 = *(v0 + 144);
    v214 = *(v0 + 160);
    v11 = *(v0 + 128);
    v193 = *(v0 + 248);
    v197 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v220 = v201;
    *v13 = 136315650;
    *(v0 + 16) = 91;
    *(v0 + 24) = 0xE100000000000000;
    v14 = [v12 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), &v220);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v220);
    *(v13 + 22) = 2080;
    v19 = [v193 uuid];
    sub_22A4DB79C();

    sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
    v20 = sub_22A4DE5CC();
    v22 = v21;
    (*(v11 + 8))(v10, v197);
    v23 = sub_2295A3E30(v20, v22, &v220);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Found user %s with no qualified devices", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v201, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v206 + 8))(v214, v208);
  }

  else
  {
    v25 = *(v0 + 152);
    v24 = *(v0 + 160);
    v26 = *(v0 + 144);

    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v0 + 240);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_22958B0B0(0, *(v29 + 2) + 1, 1, *(v0 + 240));
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_22958B0B0((v30 > 1), v31 + 1, 1, v29);
  }

  v32 = *(v0 + 248);

  *(v29 + 2) = v31 + 1;
  v29[v31 + 32] = 0;
  v33 = *(v0 + 232) + 1;
  if (v33 != *(v0 + 224))
  {
    while (2)
    {
      v189 = v29;
      while (1)
      {
        *(v0 + 232) = v33;
        *(v0 + 240) = v29;
        v79 = *(v0 + 216);
        if ((v79 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x22AAD13F0]();
        }

        else
        {
          v80 = *(v79 + 8 * v33 + 32);
        }

        v81 = v80;
        *(v0 + 248) = v80;
        v82 = [*(v0 + 104) detailForUser_];
        if (!v82)
        {
          goto LABEL_59;
        }

        v83 = v82;
        swift_getObjectType();
        if (([v83 isAtHome] & 1) == 0 && !objc_msgSend(v83, sel_isNotAtHome))
        {
          v159 = *(v0 + 184);
          v160 = *(v0 + 112);
          v161 = *(v0 + 96);
          sub_2297A46D4();
          v162 = v161;
          v163 = v81;
          v164 = sub_22A4DD05C();
          v165 = sub_22A4DDCCC();

          v166 = os_log_type_enabled(v164, v165);
          v167 = *(v0 + 184);
          v169 = *(v0 + 144);
          v168 = *(v0 + 152);
          if (v166)
          {
            v213 = *(v0 + 184);
            v218 = *(v0 + 144);
            v170 = *(v0 + 136);
            v196 = *(v0 + 120);
            v200 = *(v0 + 128);
            v171 = *(v0 + 96);
            v172 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v220 = v205;
            *v172 = 136315650;
            *(v0 + 32) = 91;
            *(v0 + 40) = 0xE100000000000000;
            v173 = [v171 logIdentifier];
            logb = v165;
            v174 = sub_22A4DD5EC();
            v176 = v175;

            MEMORY[0x22AAD08C0](v174, v176);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v177 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), &v220);

            *(v172 + 4) = v177;
            *(v172 + 12) = 2080;
            *(v172 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v220);
            *(v172 + 22) = 2080;
            v178 = [v163 uuid];
            sub_22A4DB79C();

            sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
            v179 = sub_22A4DE5CC();
            v181 = v180;
            (*(v200 + 8))(v170, v196);
            v182 = sub_2295A3E30(v179, v181, &v220);

            *(v172 + 24) = v182;
            _os_log_impl(&dword_229538000, v164, logb, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v172, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v205, -1, -1);
            MEMORY[0x22AAD4E50](v172, -1, -1);

            swift_unknownObjectRelease();
            (*(v168 + 8))(v213, v218);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v168 + 8))(v167, v169);
          }

LABEL_59:
          v183 = *(v0 + 96);
          v184 = [objc_msgSend(v183 dataSource)];
          *(v0 + 256) = v184;
          swift_unknownObjectRelease();
          v185 = [v183 workQueue];
          *(v0 + 264) = v185;
          v186 = swift_task_alloc();
          *(v0 + 272) = v186;
          *v186 = v0;
          v186[1] = sub_22973E734;

          return sub_229740E64(v184, v185);
        }

        v84 = [v83 deviceWhichUpdatedUserPresence];
        if (v84)
        {
          break;
        }

        v85 = *(v0 + 192);
        v86 = *(v0 + 112);
        v87 = *(v0 + 96);
        sub_2297A46D4();
        v88 = v87;
        v89 = v81;
        swift_unknownObjectRetain();
        v90 = sub_22A4DD05C();
        LOBYTE(v86) = sub_22A4DDCCC();

        swift_unknownObjectRelease();
        v210 = v86;
        v91 = os_log_type_enabled(v90, v86);
        v92 = *(v0 + 192);
        v93 = *(v0 + 144);
        v94 = *(v0 + 152);
        if (v91)
        {
          v62 = *(v0 + 128);
          v63 = *(v0 + 136);
          log = *(v0 + 120);
          v203 = *(v0 + 192);
          v64 = *(v0 + 96);
          v198 = *(v0 + 144);
          v65 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v220 = v194;
          *v65 = 136315906;
          *(v0 + 48) = 91;
          *(v0 + 56) = 0xE100000000000000;
          v66 = [v64 logIdentifier];
          v67 = sub_22A4DD5EC();
          v207 = v83;
          v69 = v68;

          MEMORY[0x22AAD08C0](v67, v69);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v70 = sub_2295A3E30(*(v0 + 48), *(v0 + 56), &v220);

          *(v65 + 4) = v70;
          *(v65 + 12) = 2080;
          *(v65 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v220);
          *(v65 + 22) = 2080;
          v71 = [v89 uuid];
          sub_22A4DB79C();

          sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
          v72 = sub_22A4DE5CC();
          v74 = v73;
          (*(v62 + 8))(v63, log);
          v29 = v189;
          v75 = sub_2295A3E30(v72, v74, &v220);

          *(v65 + 24) = v75;
          *(v65 + 32) = 2080;
          *(v0 + 80) = v207;
          v76 = sub_22A4DBA6C();
          v78 = sub_2295A3E30(v76, v77, &v220);

          *(v65 + 34) = v78;
          _os_log_impl(&dword_229538000, v90, v210, "%s %s Unqualified user %s: missing device %s", v65, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v194, -1, -1);
          MEMORY[0x22AAD4E50](v65, -1, -1);

          swift_unknownObjectRelease();
          (*(v94 + 8))(v203, v198);
        }

        else
        {

          swift_unknownObjectRelease();
          (*(v94 + 8))(v92, v93);
        }

        v33 = *(v0 + 232) + 1;
        if (v33 == *(v0 + 224))
        {
          goto LABEL_9;
        }
      }

      v95 = v84;
      v96 = [v84 version];
      if (v96)
      {
        v97 = v96;
        v98 = [objc_opt_self() version13_0];
        v99 = [v97 compare_];

        if (v99 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_22958B0B0(0, *(v29 + 2) + 1, 1, v29);
          }

          v101 = *(v29 + 2);
          v100 = *(v29 + 3);
          v102 = v101 + 1;
          if (v101 >= v100 >> 1)
          {
            v29 = sub_22958B0B0((v100 > 1), v101 + 1, 1, v29);
          }

          v103 = 1;
          goto LABEL_46;
        }
      }

      v104 = *(v0 + 200);
      v105 = *(v0 + 112);
      v106 = *(v0 + 96);
      sub_2297A46D4();
      v107 = v106;
      v108 = v81;
      v109 = v95;
      v110 = sub_22A4DD05C();
      LOBYTE(v105) = sub_22A4DDCCC();

      v211 = v109;
      v216 = v105;
      v111 = os_log_type_enabled(v110, v105);
      v112 = *(v0 + 200);
      v114 = *(v0 + 144);
      v113 = *(v0 + 152);
      if (v111)
      {
        v187 = *(v0 + 136);
        v188 = *(v0 + 128);
        loga = v110;
        v115 = *(v0 + 120);
        v204 = *(v0 + 200);
        v116 = *(v0 + 96);
        v117 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v220 = v195;
        *v117 = 136315906;
        *(v0 + 64) = 91;
        *(v0 + 72) = 0xE100000000000000;
        v118 = [v116 logIdentifier];
        v119 = sub_22A4DD5EC();
        v199 = v114;
        v121 = v120;

        MEMORY[0x22AAD08C0](v119, v121);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v122 = sub_2295A3E30(*(v0 + 64), *(v0 + 72), &v220);

        *(v117 + 4) = v122;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v220);
        *(v117 + 22) = 2080;
        v123 = [v108 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v124 = sub_22A4DE5CC();
        v126 = v125;
        (*(v188 + 8))(v187, v115);
        v127 = sub_2295A3E30(v124, v126, &v220);

        *(v117 + 24) = v127;
        *(v117 + 32) = 2080;
        *(v0 + 88) = v211;
        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v128 = sub_22A4DBA6C();
        v130 = sub_2295A3E30(v128, v129, &v220);

        *(v117 + 34) = v130;
        _os_log_impl(&dword_229538000, loga, v216, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v117, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v195, -1, -1);
        MEMORY[0x22AAD4E50](v117, -1, -1);

        (*(v113 + 8))(v204, v199);
      }

      else
      {

        (*(v113 + 8))(v112, v114);
      }

      v29 = v189;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22958B0B0(0, *(v189 + 2) + 1, 1, v189);
      }

      v101 = *(v29 + 2);
      v131 = *(v29 + 3);
      v102 = v101 + 1;
      if (v101 >= v131 >> 1)
      {
        v29 = sub_22958B0B0((v131 > 1), v101 + 1, 1, v29);
      }

      v103 = 0;
LABEL_46:

      swift_unknownObjectRelease();
      *(v29 + 2) = v102;
      v29[v101 + 32] = v103;
      v33 = *(v0 + 232) + 1;
      if (v33 != *(v0 + 224))
      {
        continue;
      }

      break;
    }
  }

LABEL_9:
  v34 = *(v0 + 216);

  v35 = *(v29 + 2);
  result = [*(v0 + 96) users];
  if (result)
  {
    v37 = result;
    v38 = *(v0 + 208);
    v39 = sub_22A4DD83C();

    if (v39 >> 62)
    {
      v40 = sub_22A4DE0EC();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 == v40)
    {
      v41 = *(v29 + 2);
      v42 = v29 + 32;
      do
      {
        v43 = v41;
        if (!v41)
        {
          break;
        }

        v44 = *v42++;
        --v41;
      }

      while ((v44 & 1) != 0);
      v45 = *(v0 + 176);
      v46 = *(v0 + 112);
      v47 = *(v0 + 96);

      sub_2297A46D4();
      v48 = v47;
      v49 = sub_22A4DD05C();
      v50 = sub_22A4DDCCC();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 176);
      v53 = *(v0 + 144);
      v54 = *(v0 + 152);
      v55 = *(v0 + 96);
      if (v51)
      {
        v56 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *v56 = 136315906;
        v219 = v209;
        v220 = 91;
        v221 = 0xE100000000000000;
        v215 = v52;
        v57 = [v55 logIdentifier];
        v58 = sub_22A4DD5EC();
        v202 = v53;
        v60 = v59;

        MEMORY[0x22AAD08C0](v58, v60);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v61 = sub_2295A3E30(v220, v221, &v219);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v219);
        *(v56 + 22) = 1024;
        LODWORD(v57) = [v55 isAllowedToEnableAdaptiveTemperatureAutomations];

        *(v56 + 24) = v57;
        *(v56 + 28) = 1024;
        *(v56 + 30) = v43 == 0;
        _os_log_impl(&dword_229538000, v49, v50, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v56, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v209, -1, -1);
        MEMORY[0x22AAD4E50](v56, -1, -1);

        (*(v54 + 8))(v215, v202);
      }

      else
      {

        (*(v54 + 8))(v52, v53);
      }

      v150 = *(v0 + 96);
      sub_22973CDE8(v43 == 0);
    }

    else
    {
      v132 = *(v0 + 168);
      v133 = *(v0 + 112);
      v134 = *(v0 + 96);

      sub_2297A46D4();
      v135 = v134;
      v136 = sub_22A4DD05C();
      v137 = sub_22A4DDCCC();
      v138 = os_log_type_enabled(v136, v137);
      v139 = *(v0 + 168);
      v140 = *(v0 + 144);
      v141 = *(v0 + 152);
      v142 = *(v0 + 96);
      if (v138)
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v143 = 136315650;
        v219 = v144;
        v220 = 91;
        v221 = 0xE100000000000000;
        v217 = v139;
        v145 = [v142 logIdentifier];
        v146 = sub_22A4DD5EC();
        v212 = v140;
        v148 = v147;

        MEMORY[0x22AAD08C0](v146, v148);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v149 = sub_2295A3E30(v220, v221, &v219);

        *(v143 + 4) = v149;
        *(v143 + 12) = 2080;
        *(v143 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v219);
        *(v143 + 22) = 1024;
        LODWORD(v145) = [v142 isAllowedToEnableAdaptiveTemperatureAutomations];

        *(v143 + 24) = v145;
        _os_log_impl(&dword_229538000, v136, v137, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v143, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v144, -1, -1);
        MEMORY[0x22AAD4E50](v143, -1, -1);

        (*(v141 + 8))(v217, v212);
      }

      else
      {

        (*(v141 + 8))(v139, v140);
      }
    }

    v152 = *(v0 + 192);
    v151 = *(v0 + 200);
    v154 = *(v0 + 176);
    v153 = *(v0 + 184);
    v156 = *(v0 + 160);
    v155 = *(v0 + 168);
    v157 = *(v0 + 136);

    v158 = *(v0 + 8);

    return v158();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229740E64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DB7DC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229740F90, 0, 0);
}

uint64_t sub_229740F90()
{
  v69 = v0;
  v1 = [*(v0 + 32) accountHandle];
  *(v0 + 96) = v1;
  if (!v1)
  {
LABEL_9:
    v7 = *(v0 + 80);
    v8 = *(v0 + 32);
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v9 = v8;
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    if (v12)
    {
      v66 = *(v0 + 80);
      v17 = *(v0 + 48);
      v16 = *(v0 + 56);
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68[0] = v64;
      *v20 = 136315394;
      v21 = [v19 uuid];
      sub_22A4DB79C();

      sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
      v22 = sub_22A4DE5CC();
      v62 = v15;
      v24 = v23;
      (*(v17 + 8))(v16, v18);
      v25 = sub_2295A3E30(v22, v24, v68);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(0xD000000000000040, 0x800000022A5948A0, v68);
      _os_log_impl(&dword_229538000, v10, v11, "User %s %s Unknown - missing account handle or IDS query controller", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v64, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);

      (*(v14 + 8))(v66, v62);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    goto LABEL_24;
  }

  v2 = v1;
  if (!*(v0 + 16))
  {

    goto LABEL_9;
  }

  v3 = *(v0 + 16);
  swift_unknownObjectRetain();
  v4 = [v2 type];
  if (v4 == 1)
  {
    v5 = [v2 value];
    if (!v5)
    {
      sub_22A4DD5EC();
      v5 = sub_22A4DD5AC();
    }

    v6 = MEMORY[0x22AAD2AB0](v5);
LABEL_16:
    v26 = v6;

    if (v26)
    {
      v27 = sub_22A4DD5EC();
      v29 = v28;

      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
      v31 = swift_allocObject();
      *(v0 + 104) = v31;
      v32 = MEMORY[0x277D837D0];
      *(v31 + 16) = xmmword_22A576180;
      *(v31 + 56) = v32;
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;
      v33 = [objc_opt_self() currentIDInfo];
      *(v0 + 112) = v33;
      v34 = swift_task_alloc();
      *(v0 + 120) = v34;
      *v34 = v0;
      v34[1] = sub_2297416A8;
      v35 = *(v0 + 24);

      return sub_22973AF24(v31, v33, v35, ObjectType);
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
    v5 = [v2 value];
    if (!v5)
    {
      sub_22A4DD5EC();
      v5 = sub_22A4DD5AC();
    }

    v6 = IDSCopyIDForPhoneNumber();
    goto LABEL_16;
  }

LABEL_20:
  v37 = *(v0 + 88);
  v38 = *(v0 + 32);
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_2297A46D4();
  v39 = v38;
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCEC();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 88);
  v45 = *(v0 + 64);
  v44 = *(v0 + 72);
  if (v42)
  {
    v65 = *(v0 + 64);
    v67 = *(v0 + 88);
    v63 = v41;
    v47 = *(v0 + 48);
    v46 = *(v0 + 56);
    log = v40;
    v49 = *(v0 + 32);
    v48 = *(v0 + 40);
    v50 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68[0] = v61;
    *v50 = 136315394;
    v51 = [v49 uuid];
    sub_22A4DB79C();

    sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
    v52 = sub_22A4DE5CC();
    v54 = v53;
    (*(v47 + 8))(v46, v48);
    v55 = sub_2295A3E30(v52, v54, v68);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2295A3E30(0xD000000000000040, 0x800000022A5948A0, v68);
    _os_log_impl(&dword_229538000, log, v63, "User %s %s Unknown - found handle with unsupported type", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v50, -1, -1);

    (*(v44 + 8))(v67, v65);
  }

  else
  {

    (*(v44 + 8))(v43, v45);
  }

  [objc_opt_self() hmErrorWithCode_];
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_24:
  v57 = *(v0 + 80);
  v56 = *(v0 + 88);
  v58 = *(v0 + 56);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_2297416A8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_229741864;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2297417CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2297417CC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_229741864()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);

  swift_unknownObjectRelease();
  v4 = *(v0 + 128);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

void sub_229741908(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  v11 = sub_22A4DD07C();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = [v1 homeManager];
  if (v18)
  {
    v19 = v18;
    if ([v18 hasLoadedData])
    {
      sub_2297A46D4();
      v20 = v4[2];
      v20(v10, a1, v3);
      v20(v8, a1, v3);
      v21 = v1;
      v22 = sub_22A4DD05C();
      v23 = sub_22A4DDCCC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v58 = v25;
        *v24 = 136315906;
        v62 = 91;
        v63 = 0xE100000000000000;
        v64 = v25;
        v26 = [v21 logIdentifier];
        v57 = v22;
        v27 = v26;
        v28 = sub_22A4DD5EC();
        v59 = v21;
        v29 = v28;
        v56 = v23;
        v31 = v30;

        MEMORY[0x22AAD08C0](v29, v31);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v32 = sub_2295A3E30(v62, v63, &v64);

        *(v24 + 4) = v32;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A5949F0, &v64);
        *(v24 + 22) = 2080;
        v33 = sub_22A4DB1EC();
        v34 = sub_22A4DD5EC();
        v36 = v35;

        v55 = v4[1];
        v55(v10, v3);
        v37 = sub_2295A3E30(v34, v36, &v64);

        *(v24 + 24) = v37;
        *(v24 + 32) = 2080;
        v62 = sub_22A4DB20C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
        v38 = sub_22A4DDF7C();
        v40 = v39;
        v55(v8, v3);

        v41 = sub_2295A3E30(v38, v40, &v64);

        *(v24 + 34) = v41;
        v42 = v57;
        _os_log_impl(&dword_229538000, v57, v56, "%s %s Handling %s with %s", v24, 0x2Au);
        v43 = v58;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v43, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);
      }

      else
      {

        v54 = v4[1];
        v54(v8, v3);
        v54(v10, v3);
      }

      (*(v60 + 8))(v17, v61);
      sub_22973BF64();

      return;
    }
  }

  sub_2297A46D4();
  v44 = v1;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDCEC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 136315394;
    v62 = 91;
    v63 = 0xE100000000000000;
    v64 = v48;
    v49 = [v44 logIdentifier];
    v50 = sub_22A4DD5EC();
    v52 = v51;

    MEMORY[0x22AAD08C0](v50, v52);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v53 = sub_2295A3E30(v62, v63, &v64);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A5949F0, &v64);
    _os_log_impl(&dword_229538000, v45, v46, "%s %s Not handling because home data load is in progress", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
  }

  (*(v60 + 8))(v15, v61);
}

uint64_t sub_229741F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_22A4DD07C();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229742024, 0, 0);
}

uint64_t sub_229742024()
{
  v1 = *__swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2297420C8;
  v3 = *(v0 + 80);

  return sub_229656D24(v3);
}

uint64_t sub_2297420C8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229742204, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_229742204()
{
  v31 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_2297A46D4();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v9)
  {
    v29 = v0[7];
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136315650;
    v30[0] = v28;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v17 = [v14 logIdentifier];
    v27 = v13;
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, v30);
    *(v15 + 22) = 2112;
    v22 = v10;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v23;
    *v16 = v23;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to save with error %@", v15, 0x20u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v12 + 8))(v29, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

void sub_2297424C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v140 = &v132[-v6];
  v7 = sub_22A4DB21C();
  v146 = *(v7 - 8);
  v8 = *(v146 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v132[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v132[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v141 = &v132[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v132[-v17];
  v19 = sub_22A4DD07C();
  v143 = *(v19 - 8);
  v144 = v19;
  v20 = *(v143 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v132[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v132[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v139 = &v132[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v142 = &v132[-v30];
  MEMORY[0x28223BE20](v29);
  v32 = &v132[-v31];
  v33 = sub_22A4DB20C();
  if (!v33)
  {
    goto LABEL_10;
  }

  v34 = v33;
  v147 = sub_22A4DD5EC();
  v148 = v35;
  sub_22A4DE18C();
  if (!*(v34 + 16) || (v36 = sub_2295402E8(&v149), (v37 & 1) == 0))
  {

    sub_22954045C(&v149);
LABEL_10:
    v151 = 0u;
    v152 = 0u;
    goto LABEL_11;
  }

  sub_2295404B0(*(v34 + 56) + 32 * v36, &v151);
  sub_22954045C(&v149);

  if (!*(&v152 + 1))
  {
LABEL_11:
    sub_22953EAE4(&v151, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_12;
  }

  sub_229562F68(0, &qword_27D87DE70, off_2786661F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_2297A46D4();
    v69 = v146;
    (*(v146 + 16))(v11, a1, v7);
    v70 = v2;
    v71 = sub_22A4DD05C();
    v72 = sub_22A4DDCEC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      ObjectType = v7;
      v75 = v74;
      *&v151 = v74;
      *v73 = 136315650;
      v149 = 91;
      v150 = 0xE100000000000000;
      v76 = [v70 logIdentifier];
      v77 = sub_22A4DD5EC();
      v79 = v78;

      MEMORY[0x22AAD08C0](v77, v79);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v80 = sub_2295A3E30(v149, v150, &v151);

      *(v73 + 4) = v80;
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v151);
      *(v73 + 22) = 2080;
      v149 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v81 = sub_22A4DDF7C();
      v83 = v82;
      (*(v69 + 8))(v11, ObjectType);

      v84 = sub_2295A3E30(v81, v83, &v151);

      *(v73 + 24) = v84;
      _os_log_impl(&dword_229538000, v71, v72, "%s %s Missing presence update in notification %s", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v75, -1, -1);
      MEMORY[0x22AAD4E50](v73, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v11, v7);
    }

    (*(v143 + 8))(v23, v144);
    return;
  }

  v138 = v149;
  v38 = [v149 userPresence];
  v39 = (v146 + 16);
  if (v38)
  {
    v137 = v38;
    v40 = v32;
    sub_2297A46D4();
    v41 = *v39;
    (*v39)(v18, a1, v7);
    v42 = v141;
    v41(v141, a1, v7);
    v43 = v40;
    v44 = v2;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCCC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&v151 = v136;
      *v47 = 136315906;
      v149 = 91;
      v150 = 0xE100000000000000;
      v48 = [v44 logIdentifier];
      v134 = v45;
      v49 = v48;
      v50 = sub_22A4DD5EC();
      v135 = v43;
      v133 = v46;
      v51 = v50;
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v149, v150, &v151);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v151);
      *(v47 + 22) = 2080;
      v55 = sub_22A4DB1EC();
      v56 = sub_22A4DD5EC();
      v58 = v57;

      v59 = *(v146 + 8);
      v59(v18, v7);
      v60 = sub_2295A3E30(v56, v58, &v151);

      *(v47 + 24) = v60;
      *(v47 + 32) = 2080;
      v149 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v61 = sub_22A4DDF7C();
      v63 = v62;
      v59(v42, v7);

      v64 = sub_2295A3E30(v61, v63, &v151);

      *(v47 + 34) = v64;
      v65 = v134;
      _os_log_impl(&dword_229538000, v134, v133, "%s %s Handling %s with %s", v47, 0x2Au);
      v66 = v136;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);

      v67 = *(v143 + 8);
      v68 = v135;
    }

    else
    {

      v101 = *(v146 + 8);
      v101(v42, v7);
      v101(v18, v7);
      v67 = *(v143 + 8);
      v68 = v40;
    }

    v102 = v144;
    v67(v68, v144);
    v103 = v142;
    if (sub_22973A7D0())
    {
      v104 = v137;
      if ([v137 isAtHome] & 1) != 0 || (objc_msgSend(v104, sel_isNotAtHome))
      {
        v105 = [v104 deviceWhichUpdatedUserPresence];
        v106 = [v104 user];
        v107 = sub_22A4DD9DC();
        v108 = v140;
        (*(*(v107 - 8) + 56))(v140, 1, 1, v107);
        v109 = swift_allocObject();
        v109[2] = 0;
        v109[3] = 0;
        v109[4] = v106;
        v109[5] = v105;
        v110 = v106;
        v111 = v105;
        sub_22957F3C0(0, 0, v108, &unk_22A581970, v109);
        swift_unknownObjectRelease();

        return;
      }

      v103 = v139;
      sub_2297A46D4();
      v123 = v44;
      v113 = sub_22A4DD05C();
      v124 = sub_22A4DDCCC();

      if (os_log_type_enabled(v113, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v151 = v126;
        *v125 = 136315394;
        v149 = 91;
        v150 = 0xE100000000000000;
        v127 = [v123 logIdentifier];
        v128 = sub_22A4DD5EC();
        v130 = v129;

        MEMORY[0x22AAD08C0](v128, v130);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v131 = sub_2295A3E30(v149, v150, &v151);

        *(v125 + 4) = v131;
        *(v125 + 12) = 2080;
        *(v125 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v151);
        _os_log_impl(&dword_229538000, v113, v124, "%s %s User is not sharing presence", v125, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v126, -1, -1);
        MEMORY[0x22AAD4E50](v125, -1, -1);
        swift_unknownObjectRelease();

        v122 = v139;
        goto LABEL_31;
      }
    }

    else
    {
      sub_2297A46D4();
      v112 = v44;
      v113 = sub_22A4DD05C();
      v114 = sub_22A4DDCCC();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v151 = v116;
        *v115 = 136315394;
        v149 = 91;
        v150 = 0xE100000000000000;
        v117 = [v112 logIdentifier];
        v118 = sub_22A4DD5EC();
        v120 = v119;

        MEMORY[0x22AAD08C0](v118, v120);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v121 = sub_2295A3E30(v149, v150, &v151);

        *(v115 + 4) = v121;
        *(v115 + 12) = 2080;
        *(v115 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v151);
        _os_log_impl(&dword_229538000, v113, v114, "%s %s Adaptive Temperature Automations is not enabled", v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v116, -1, -1);
        MEMORY[0x22AAD4E50](v115, -1, -1);

        swift_unknownObjectRelease();
        v122 = v142;
LABEL_31:
        v67(v122, v102);
        return;
      }
    }

    swift_unknownObjectRelease();
    v122 = v103;
    goto LABEL_31;
  }

  v85 = v26;
  sub_2297A46D4();
  v86 = v7;
  (*v39)(v14, a1, v7);
  v87 = v2;
  v88 = sub_22A4DD05C();
  v89 = sub_22A4DDCEC();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v151 = v91;
    *v90 = 136315650;
    v149 = 91;
    v150 = 0xE100000000000000;
    v92 = [v87 logIdentifier];
    v93 = sub_22A4DD5EC();
    v95 = v94;

    MEMORY[0x22AAD08C0](v93, v95);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v96 = sub_2295A3E30(v149, v150, &v151);

    *(v90 + 4) = v96;
    *(v90 + 12) = 2080;
    *(v90 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v151);
    *(v90 + 22) = 2080;
    v149 = sub_22A4DB20C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
    v97 = sub_22A4DDF7C();
    v99 = v98;
    (*(v146 + 8))(v14, v86);

    v100 = sub_2295A3E30(v97, v99, &v151);

    *(v90 + 24) = v100;
    _os_log_impl(&dword_229538000, v88, v89, "%s %s Missing user presence update in notification %s", v90, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v91, -1, -1);
    MEMORY[0x22AAD4E50](v90, -1, -1);
  }

  else
  {

    (*(v146 + 8))(v14, v86);
  }

  (*(v143 + 8))(v85, v144);
}

uint64_t sub_2297435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297436B0, 0, 0);
}

uint64_t sub_2297436B0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v1[18];
  v8 = v1[19];
  v1[2] = v2;
  v1[3] = sub_229743854;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2297D3D1C;
  v1[13] = &block_descriptor_32;
  [v9 sendDisclosureNotificationWithLocationSharingDevice:v8 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229743854()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229743934, 0, 0);
}

uint64_t sub_229743934()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_229743994(void *a1)
{
  v2 = v1;
  v132 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v133 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = &v124 - v8;
  v9 = sub_22A4DB21C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v124 - v15;
  v17 = sub_22A4DD07C();
  v18 = *(v17 - 8);
  v134 = v17;
  v135 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v124 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v124 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v124 - v29;
  v31 = [v2 homeManager];
  if (!v31)
  {
    goto LABEL_8;
  }

  v131 = v28;
  v32 = v31;
  if (![v31 hasLoadedData])
  {

LABEL_8:
    sub_2297A46D4();
    v62 = v2;
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDCEC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 136315394;
      v142 = 91;
      v143 = 0xE100000000000000;
      v144[0] = v66;
      v67 = [v62 logIdentifier];
      v68 = sub_22A4DD5EC();
      v70 = v69;

      MEMORY[0x22AAD08C0](v68, v70);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v71 = sub_2295A3E30(v142, v143, v144);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v144);
      _os_log_impl(&dword_229538000, v63, v64, "%s %s Not handling because home data load is in progress", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v65, -1, -1);
    }

    (*(v135 + 8))(v22, v134);
    return;
  }

  v130 = v32;
  v33 = [v2 homeActivityStateManager];
  if (!v33)
  {
LABEL_12:
    sub_2297A46D4();
    v72 = v2;
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCEC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 136315394;
      v142 = 91;
      v143 = 0xE100000000000000;
      v144[0] = v76;
      v77 = [v72 logIdentifier];
      v78 = sub_22A4DD5EC();
      v80 = v79;

      MEMORY[0x22AAD08C0](v78, v80);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v81 = sub_2295A3E30(v142, v143, v144);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v144);
      _os_log_impl(&dword_229538000, v73, v74, "%s %s Missing user activity state details", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v76, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);
    }

    (*(v135 + 8))(v25, v134);
    return;
  }

  v34 = v33;
  v136 = [v33 userActivityStatesDetails];
  if (!v136)
  {

    goto LABEL_12;
  }

  v128 = ObjectType;
  v129 = v34;
  sub_2297A46D4();
  v35 = v10;
  v36 = *(v10 + 16);
  v37 = v132;
  v36(v16, v132, v9);
  v36(v14, v37, v9);
  v38 = v2;
  v39 = sub_22A4DD05C();
  v40 = sub_22A4DDCCC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v127 = v42;
    *v41 = 136315906;
    v142 = 91;
    v143 = 0xE100000000000000;
    v144[0] = v42;
    v43 = [v38 logIdentifier];
    v126 = v40;
    v44 = v43;
    v45 = sub_22A4DD5EC();
    v132 = v38;
    v46 = v45;
    v48 = v47;

    MEMORY[0x22AAD08C0](v46, v48);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v49 = sub_2295A3E30(v142, v143, v144);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v144);
    *(v41 + 22) = 2080;
    v50 = sub_22A4DB1EC();
    v51 = sub_22A4DD5EC();
    v53 = v52;

    v125 = v39;
    v54 = *(v35 + 8);
    v54(v16, v9);
    v55 = sub_2295A3E30(v51, v53, v144);

    *(v41 + 24) = v55;
    *(v41 + 32) = 2080;
    v142 = sub_22A4DB20C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
    v56 = sub_22A4DDF7C();
    v58 = v57;
    v54(v14, v9);

    v59 = sub_2295A3E30(v56, v58, v144);
    v38 = v132;

    *(v41 + 34) = v59;
    v60 = v125;
    _os_log_impl(&dword_229538000, v125, v126, "%s %s Handling %s with %s", v41, 0x2Au);
    v61 = v127;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v41, -1, -1);
  }

  else
  {

    v82 = *(v35 + 8);
    v82(v14, v9);
    v82(v16, v9);
  }

  v83 = v134;
  v84 = *(v135 + 8);
  v84(v30, v134);
  v85 = v131;
  if (sub_22973A7D0())
  {
    v86 = [v38 users];
    if (!v86)
    {
LABEL_61:
      __break(1u);
      return;
    }

    v87 = v86;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v88 = sub_22A4DD83C();

    v142 = MEMORY[0x277D84F90];
    if (v88 >> 62)
    {
LABEL_57:
      v89 = sub_22A4DE0EC();
    }

    else
    {
      v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = 0;
    v91 = MEMORY[0x277D84F90];
    while (v89 != v90)
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x22AAD13F0](v90, v88);
      }

      else
      {
        if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v92 = *(v88 + 8 * v90 + 32);
      }

      v93 = v92;
      v94 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v95 = [v136 detailForUser_];

      ++v90;
      if (v95)
      {
        MEMORY[0x22AAD09E0]();
        if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v96 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v91 = v142;
        v90 = v94;
      }
    }

    if (v91 >> 62)
    {
      v107 = sub_22A4DE0EC();
      if (v107)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v107 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v107)
      {
LABEL_36:
        if (v107 >= 1)
        {
          v108 = 0;
          v134 = v107;
          v135 = v91 & 0xC000000000000001;
          do
          {
            if (v135)
            {
              v109 = MEMORY[0x22AAD13F0](v108, v91);
            }

            else
            {
              v109 = *(v91 + 8 * v108 + 32);
              swift_unknownObjectRetain();
            }

            if ([v109 isAtHome] & 1) != 0 || (objc_msgSend(v109, sel_isNotAtHome))
            {
              v110 = v91;
              v111 = [v109 deviceWhichUpdatedUserPresence];
              v112 = [v109 user];
              v113 = sub_22A4DD9DC();
              v114 = *(v113 - 8);
              v115 = v137;
              (*(v114 + 56))(v137, 1, 1, v113);
              v116 = swift_allocObject();
              v116[2] = 0;
              v116[3] = 0;
              v116[4] = v112;
              v116[5] = v111;
              v117 = v133;
              sub_229564F88(v115, v133, &unk_27D87D8F0, &qword_22A578D70);
              LODWORD(v111) = (*(v114 + 48))(v117, 1, v113);

              if (v111 == 1)
              {
                sub_22953EAE4(v117, &unk_27D87D8F0, &qword_22A578D70);
              }

              else
              {
                sub_22A4DD9CC();
                (*(v114 + 8))(v117, v113);
              }

              v118 = v116[2];
              v119 = v116[3];
              swift_unknownObjectRetain();

              v91 = v110;
              if (v118)
              {
                swift_getObjectType();
                v120 = sub_22A4DD8CC();
                v122 = v121;
                swift_unknownObjectRelease();
              }

              else
              {
                v120 = 0;
                v122 = 0;
              }

              v107 = v134;
              sub_22953EAE4(v137, &unk_27D87D8F0, &qword_22A578D70);
              v123 = swift_allocObject();
              *(v123 + 16) = &unk_22A581960;
              *(v123 + 24) = v116;
              if (v122 | v120)
              {
                v138 = 0;
                v139 = 0;
                v140 = v120;
                v141 = v122;
              }

              swift_task_create();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v108;
          }

          while (v107 != v108);
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

LABEL_59:
    swift_unknownObjectRelease();

    return;
  }

  sub_2297A46D4();
  v97 = v38;
  v98 = sub_22A4DD05C();
  v99 = sub_22A4DDCCC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v100 = 136315394;
    v142 = 91;
    v143 = 0xE100000000000000;
    v144[0] = v101;
    v102 = [v97 logIdentifier];
    v103 = sub_22A4DD5EC();
    v105 = v104;

    MEMORY[0x22AAD08C0](v103, v105);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v106 = sub_2295A3E30(v142, v143, v144);

    *(v100 + 4) = v106;
    *(v100 + 12) = 2080;
    *(v100 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v144);
    _os_log_impl(&dword_229538000, v98, v99, "%s %s Adaptive Temperature Automations is not enabled", v100, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v101, -1, -1);
    MEMORY[0x22AAD4E50](v100, -1, -1);
  }

  swift_unknownObjectRelease();
  v84(v85, v83);
}

uint64_t sub_22974488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229744958, 0, 0);
}

uint64_t sub_229744958()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v1[18];
  v8 = v1[19];
  v1[2] = v2;
  v1[3] = sub_229744AFC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2297D3D1C;
  v1[13] = &block_descriptor_25_0;
  [v9 sendDisclosureNotificationWithLocationSharingDevice:v8 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229744AFC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297463A8, 0, 0);
}

uint64_t sub_229744BF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22A4DB21C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_229744CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = sub_22A4DD81C();
  v13 = [objc_opt_self() sharedIDSServiceName];
  if (!v13)
  {
    sub_22A4DD5EC();
    v13 = sub_22A4DD5AC();
  }

  v14 = [objc_opt_self() stringGUID];
  if (v14)
  {
    v15 = v14;
    (*(v8 + 16))(v11, a1, v7);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v16, v11, v7);
    aBlock[4] = sub_22974604C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229745DF0;
    aBlock[3] = &block_descriptor_27;
    v18 = _Block_copy(aBlock);

    [a2 hmdIDInfoForDestinations:v12 service:v13 infoTypes:1 options:v19 listenerID:v15 queue:v20 completionBlock:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_229744F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  if (a2)
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v20 = a2;
    sub_2297A46D4();
    v21 = a2;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v59);
      *(v24 + 12) = 2112;
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_229538000, v22, v23, "%s idInfo failed with error: %@", v24, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v7 + 8))(v19, v6);
    v29 = objc_opt_self();
    v30 = sub_22A4DB3DC();
    v31 = [v29 hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v30];

    v59 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
  }

  else if (a1)
  {
    v56 = v6;
    v57 = v7;
    v58 = a3;
    v32 = 1 << *(a1 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(a1 + 64);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    while (v34)
    {
      v37 = v36;
LABEL_15:
      v38 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v39 = v38 | (v37 << 6);
      v40 = *(a1 + 48) + 16 * v39;
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(*(a1 + 56) + 8 * v39);

      swift_unknownObjectRetain();
      LOBYTE(v41) = sub_22974571C(v41, v42, v43);
      swift_unknownObjectRelease();

      if ((v41 & 1) == 0)
      {

        sub_229562F68(0, &qword_2814017B0, off_278666198);
        sub_2297A46D4();
        v44 = sub_22A4DD05C();
        v45 = sub_22A4DDCCC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v59 = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v59);
          _os_log_impl(&dword_229538000, v44, v45, "%s NO - one or more accounts are unqualified", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x22AAD4E50](v47, -1, -1);
          MEMORY[0x22AAD4E50](v46, -1, -1);
        }

        (*(v57 + 8))(v14, v56);
        v59 = [objc_opt_self() hmPrivateErrorWithCode_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
        goto LABEL_25;
      }
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(a1 + 64 + 8 * v37);
      ++v36;
      if (v34)
      {
        v36 = v37;
        goto LABEL_15;
      }
    }

    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCCC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v59);
      _os_log_impl(&dword_229538000, v48, v49, "%s YES - all accounts are qualified", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    (*(v57 + 8))(v17, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();
  }

  else
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v59);
      _os_log_impl(&dword_229538000, v52, v53, "%s Unknown - uriToInfoResult is nil", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v59 = [objc_opt_self() hmErrorWithCode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
LABEL_25:
    sub_22A4DD8EC();
  }
}

uint64_t sub_22974571C(id a1, unint64_t a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = [a3 hmdEndpoints];
  if (!v17)
  {
LABEL_24:
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();

    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCCC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = a1;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v55);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2295A3E30(v43, a2, &v55);
      _os_log_impl(&dword_229538000, v41, v42, "%s Unknown - found no device endpoints for URI: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    (*(v7 + 1))(v11, v6);
    return 0;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880530, &qword_22A581950);
  v19 = sub_22A4DD83C();

  if (v19 >> 62)
  {
LABEL_22:
    v20 = sub_22A4DE0EC();
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_4:
  v47 = v14;
  v48 = a1;
  v49 = v16;
  v50 = a2;
  v51 = v7;
  v52 = v6;
  a2 = 0;
  v53 = v19 & 0xC000000000000001;
  v14 = (v19 & 0xFFFFFFFFFFFFFF8);
  v16 = *MEMORY[0x277D18860];
  while (v53)
  {
    v11 = MEMORY[0x22AAD13F0](a2, v19);
    v21 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    v6 = v20;
    v22 = [v11 hmdCapabilities];
    v7 = v16;
    a1 = [v22 valueForCapability_];

    swift_unknownObjectRelease();
    if (a1 == 1)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    ++a2;
    v20 = v6;
    if (v21 == v6)
    {

      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v33 = v47;
      sub_2297A46D4();
      v34 = v50;

      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();

      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v55);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_2295A3E30(v48, v34, &v55);
        _os_log_impl(&dword_229538000, v35, v36, "%s Found URI %s with no qualified devices", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v39, -1, -1);
        MEMORY[0x22AAD4E50](v38, -1, -1);
      }

      (*(v51 + 1))(v33, v52);
      return 0;
    }
  }

  if (a2 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(v19 + 8 * a2 + 32);
  swift_unknownObjectRetain();
  v21 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v23 = v49;
  sub_2297A46D4();
  v24 = v50;

  swift_unknownObjectRetain();
  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCCC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55 = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v55);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2295A3E30(v48, v24, &v55);
    *(v27 + 22) = 2080;
    v29 = [v11 hmdCapabilities];
    swift_getObjectType();
    v54 = v29;
    v30 = sub_22A4DD64C();
    v32 = sub_2295A3E30(v30, v31, &v55);

    *(v27 + 24) = v32;
    _os_log_impl(&dword_229538000, v25, v26, "%s Found URI %s with qualified device %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v51 + 1))(v23, v52);
  return 1;
}

uint64_t sub_229745DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C8, &unk_22A581940);
    v4 = sub_22A4DD49C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_229745EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22973D400(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229745F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229741F5C(a1, v4, v5, v1 + 32, v6, v7, v8);
}

void sub_22974604C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_229744F4C(a1, a2, v6);
}

uint64_t sub_2297460D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22974488C(a1, v4, v5, v7, v6);
}

uint64_t sub_2297461C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297435E4(a1, v4, v5, v7, v6);
}

uint64_t sub_229746284()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_22973B360(v2, v3, v5, v4);
}

uint64_t sub_229746354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2297463B0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DC56C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229746470, v1, 0);
}

uint64_t sub_229746470()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v16 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    v6 = (v3 + 8);
    do
    {
      v10 = v0[6];
      v16(v0[9], v5, v0[7]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v11 = v0[6];
        swift_task_reportUnexpectedExecutor();
      }

      swift_beginAccess();
      v7 = v0[9];
      v8 = v0[7];
      if (*(v4 + 168))
      {
        v9 = *(v4 + 176);
        swift_endAccess();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22A4DC5DC();
        swift_unknownObjectRelease();
        (*v6)(v7, v8);
      }

      else
      {
        (*v6)(v0[9], v0[7]);
        swift_endAccess();
      }

      v5 += v15;
      --v2;
    }

    while (v2);
  }

  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229746624(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DC56C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297466E4, v1, 0);
}

uint64_t sub_2297466E4()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v16 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    v6 = (v3 + 8);
    do
    {
      v10 = v0[6];
      v16(v0[9], v5, v0[7]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v11 = v0[6];
        swift_task_reportUnexpectedExecutor();
      }

      swift_beginAccess();
      v7 = v0[9];
      v8 = v0[7];
      if (*(v4 + 168))
      {
        v9 = *(v4 + 176);
        swift_endAccess();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22A4DC5EC();
        swift_unknownObjectRelease();
        (*v6)(v7, v8);
      }

      else
      {
        (*v6)(v0[9], v0[7]);
        swift_endAccess();
      }

      v5 += v15;
      --v2;
    }

    while (v2);
  }

  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229746898()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v0[21];
  swift_unknownObjectRelease();
  v3 = v0[25];
  sub_2295571A0(v0[24]);
  v4 = v0[27];
  sub_2295571A0(v0[26]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_229746938()
{
  result = qword_27D880670;
  if (!qword_27D880670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880678, "J \b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880670);
  }

  return result;
}

uint64_t sub_2297469A8()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_229746A70()
{
  *v0;
  *v0;
  *v0;
  sub_22A4DD6BC();
}

uint64_t sub_229746B24()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_229746BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_229746E68();
  *a2 = result;
  return result;
}

void sub_229746C18(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E6E7572;
  if (*v1 != 2)
  {
    v5 = 0x6164696C61766E69;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6E69726170657270;
    v2 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_229746CB0()
{
  result = qword_27D880680;
  if (!qword_27D880680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880680);
  }

  return result;
}

uint64_t sub_229746D04()
{
  sub_22A4DE77C();
  sub_22A4DD6BC();
  return sub_22A4DE7BC();
}

uint64_t sub_229746D60()
{
  sub_22A4DE77C();
  sub_22A4DD6BC();
  return sub_22A4DE7BC();
}

uint64_t sub_229746DA8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22A4DE42C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_229746E14()
{
  result = qword_27D880688;
  if (!qword_27D880688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880688);
  }

  return result;
}

uint64_t sub_229746E68()
{
  v0 = sub_22A4DE42C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_229746EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_229746F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  v51 = a4;
  v10 = sub_22A4DB7DC();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD07C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (*(*a1 + 16) && (v19 = sub_2296DBEC0(a2), (v20 & 1) != 0))
  {
    v47 = v14;
    v49 = v5;
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_beginAccess();
    v50 = v21;
    v22 = *(v21 + 24);
    v48 = a5;
    v46 = v15;
    if (v22 >> 62)
    {
LABEL_26:
      v23 = sub_22A4DE0EC();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a5 = (v22 & 0xC000000000000001);

    v24 = 0;
    while (v23 != v24)
    {
      if (a5)
      {
        a1 = MEMORY[0x22AAD13F0](v24, v22);
        if (__OFADD__(v24, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        a1 = *(v22 + 8 * v24 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v24, 1))
        {
          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      ++v24;
      if (a1 == a3)
      {

        v33 = v55;
        sub_229541CB0(v51, &off_283CE3478);
        v35 = v52;
        v34 = v53;
        (*(v52 + 16))(v13, a2, v53);
        v36 = sub_22A4DD05C();
        v37 = sub_22A4DDCDC();
        if (os_log_type_enabled(v36, v37))
        {
          v39 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v54 = v51;
          *v39 = 136315138;
          sub_229586A3C();
          v40 = sub_22A4DE5CC();
          v42 = v41;
          (*(v35 + 8))(v13, v34);
          v43 = sub_2295A3E30(v40, v42, &v54);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_229538000, v36, v37, "Action Set: %s is already monitored by given observer", v39, 0xCu);
          v44 = v51;
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x22AAD4E50](v44, -1, -1);
          MEMORY[0x22AAD4E50](v39, -1, -1);
        }

        else
        {

          (*(v35 + 8))(v13, v34);
        }

        result = (*(v46 + 8))(v33, v47);
        goto LABEL_23;
      }
    }

    v31 = v50;
    swift_beginAccess();
    v32 = swift_unknownObjectRetain();
    MEMORY[0x22AAD09E0](v32);
    if (*((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    swift_endAccess();

LABEL_23:
    v27 = 0;
    a5 = v48;
  }

  else
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22A576190;
    *(v25 + 32) = a3;
    _s19SubscriptionManagerC23MonitoredActionSetStateCMa();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = MEMORY[0x277D84F90];
    v27 = 1;
    swift_beginAccess();
    *(v26 + 24) = v25;
    swift_unknownObjectRetain();
    v28 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *a1;
    result = sub_2295AB6BC(v26, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v54;
  }

  *a5 = v27;
  return result;
}

uint64_t sub_229747450(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t, uint64_t), char a4)
{
  v7 = v4;
  ObjectType = swift_getObjectType();
  v11 = *(v7 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock(v11 + 6);
  a3(&v16, v11 + 4, a1, a2, ObjectType);
  os_unfair_lock_unlock(v11 + 6);
  LODWORD(a2) = v16;

  if (a2 == 1)
  {
    v13 = v7 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v13 + 8);
      v15 = swift_getObjectType();
      (*(v14 + 8))(a1, a4 & 1, v15, v14);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_229747580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v62 = a5;
  v61 = sub_22A4DB7DC();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v61);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = sub_22A4DD07C();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v22 = *a1;
  if (!*(*a1 + 16) || (v23 = sub_2296DBEC0(a2), (v24 & 1) == 0))
  {
    sub_229541CB0(a4, &off_283CE3478);
    v32 = a2;
    v33 = v61;
    (*(v9 + 16))(v15, v32, v61);
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCCC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136315138;
      sub_229586A3C();
      v38 = sub_22A4DE5CC();
      v39 = v33;
      v41 = v40;
      (*(v9 + 8))(v15, v39);
      v42 = sub_2295A3E30(v38, v41, v63);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_229538000, v34, v35, "Action Set: %s was not being monitored", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v33);
    }

    result = (*(v59 + 8))(v21, v60);
    goto LABEL_12;
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_beginAccess();
  swift_unknownObjectRetain();

  v26 = v64;
  v27 = sub_22974913C((v25 + 24), a3);
  v64 = v26;
  swift_unknownObjectRelease();
  v28 = *(v25 + 24);
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 >= v27)
    {
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    if (sub_22A4DE0EC())
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v28 < 0)
  {
    v44 = *(v25 + 24);
  }

  v29 = sub_22A4DE0EC();
  if (v29 < v27)
  {
    goto LABEL_17;
  }

LABEL_5:
  sub_229749384(v27, v29);
  swift_endAccess();
  v30 = *(v25 + 24);
  if (v30 >> 62)
  {
    goto LABEL_18;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

LABEL_12:
    v43 = 0;
    goto LABEL_13;
  }

LABEL_19:
  sub_22969DA64(a2);

  v45 = a4;
  v46 = v58;
  sub_229541CB0(v45, &off_283CE3478);
  v47 = a2;
  v48 = v61;
  (*(v9 + 16))(v13, v47, v61);
  v49 = sub_22A4DD05C();
  v50 = sub_22A4DDCCC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    sub_229586A3C();
    v53 = sub_22A4DE5CC();
    v54 = v48;
    v56 = v55;
    (*(v9 + 8))(v13, v54);
    v57 = sub_2295A3E30(v53, v56, v63);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_229538000, v49, v50, "Stoped monitoring Action Set: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AAD4E50](v52, -1, -1);
    MEMORY[0x22AAD4E50](v51, -1, -1);

    result = (*(v59 + 8))(v58, v60);
  }

  else
  {

    (*(v9 + 8))(v13, v48);
    result = (*(v59 + 8))(v46, v60);
  }

  v43 = 1;
LABEL_13:
  *v62 = v43;
  return result;
}

uint64_t sub_229747B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  swift_unknownObjectRetain();
  v13 = a1;
  a5(v12, a4);
  swift_unknownObjectRelease();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_229747C48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_229747CB8, 0, 0);
}

uint64_t sub_229747CB8()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock(v3 + 6);
  sub_229747DDC(&v3[4], v2, v1, v10);
  os_unfair_lock_unlock(v3 + 6);
  LOBYTE(v1) = v10[0];

  if (v1)
  {
    v4 = v0[3] + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v0[2];
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v5, 0, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_229747DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v47 = a4;
  v44 = sub_22A4DB7DC();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = sub_22A4DD07C();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (*(*a1 + 16) && (sub_2296DBEC0(a2), (v21 & 1) != 0))
  {
    sub_22969DA64(a2);

    sub_229541CB0(a3, &off_283CE3478);
    v22 = v44;
    (*(v7 + 16))(v13, a2, v44);
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v25 = 136315138;
      sub_229586A3C();
      v26 = sub_22A4DE5CC();
      v28 = v27;
      (*(v7 + 8))(v13, v22);
      v29 = sub_2295A3E30(v26, v28, &v48);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_229538000, v23, v24, "Stoped monitoring Action Set: %s", v25, 0xCu);
      v30 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v22);
    }

    result = (*(v45 + 8))(v20, v46);
    v42 = 1;
  }

  else
  {
    sub_229541CB0(a3, &off_283CE3478);
    v31 = v44;
    (*(v7 + 16))(v11, a2, v44);
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCCC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      sub_229586A3C();
      v36 = sub_22A4DE5CC();
      v37 = v31;
      v39 = v38;
      (*(v7 + 8))(v11, v37);
      v40 = sub_2295A3E30(v36, v39, &v48);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_229538000, v32, v33, "Action Set: %s was not being monitored", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v31);
    }

    result = (*(v45 + 8))(v18, v46);
    v42 = 0;
  }

  *v47 = v42;
  return result;
}

uint64_t sub_229748400(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_22A4DB7DC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_22A4DB79C();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_22974852C;

  return sub_229747C48(v9);
}

uint64_t sub_22974852C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2297486D0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock((v3 + 24));
  if (*(*(v3 + 16) + 16))
  {
    sub_2296DBEC0(a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));

  return v5 & 1;
}

unint64_t sub_229748838@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    result = sub_2296DBEC0(a2);
    if (v6)
    {
      LOBYTE(v5) = *(*(*(v4 + 56) + 8 * result) + 16);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_2297489C4(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *(v3 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock((v7 + 24));
  sub_229748B24((v7 + 16), a1, a2, ObjectType, &v14);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v14;

  if (v8 >> 62)
  {
    result = sub_22A4DE0EC();
    v10 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAD13F0](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    ++v11;
    v13 = sub_22A4DB77C();
    [v12 didUpdateStateActionSetUUID:v13 state:a2 & 1];
    swift_unknownObjectRelease();
  }

  while (v10 != v11);
LABEL_10:
}

unint64_t sub_229748B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = a5;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22A4DD07C();
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (*(v19 + 16) && (result = sub_2296DBEC0(a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * result);
    if (*(v22 + 16) != (a3 & 1))
    {
      *(v22 + 16) = a3 & 1;
      swift_beginAccess();
      *v37 = *(v22 + 24);
    }
  }

  else
  {
    sub_229541CB0(a4, &off_283CE3478);
    (*(v11 + 16))(v14, a2, v10);
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v25 = 136315138;
      sub_229586A3C();
      v26 = sub_22A4DE5CC();
      v33 = v5;
      v28 = v27;
      (*(v11 + 8))(v14, v10);
      v29 = sub_2295A3E30(v26, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_229538000, v23, v24, "Action Set: %s is not being monitored", v25, 0xCu);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    result = (*(v34 + 8))(v18, v35);
  }

  *v37 = MEMORY[0x277D84F90];
  return result;
}

id sub_229748F70()
{
  v2.receiver = v0;
  v2.super_class = _s19SubscriptionManagerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_229749054(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_22A4DE0EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22974913C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_229749054(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22A4DE0EC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22A4DE0EC())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AAD13F0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x22AAD13F0](v10, v7);
          v16 = MEMORY[0x22AAD13F0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2295AFEC8(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_2295AFEC8(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_22A4DE0EC();
}

uint64_t sub_229749384(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22A4DE0EC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_22A4DE0EC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2296F4FE0(result, 1);

  return sub_2296A5130(v4, v2, 0);
}

uint64_t sub_22974945C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_229748400(v2, v3, v4);
}

uint64_t sub_229749510(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_229749580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2297496C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2297498E0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880780);
  __swift_project_value_buffer(v0, qword_27D880780);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

id sub_229749958()
{
  result = [objc_allocWithZone(type metadata accessor for CommunicationTrustHandler()) init];
  qword_281405018 = result;
  return result;
}

uint64_t sub_229749B10(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_229562F68(0, &qword_27D880818, off_278666008);
  v5 = sub_22A4DD83C();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_229749C08;

  return sub_22974A68C(v5);
}

uint64_t sub_229749C08(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_22A4DB3DC();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

HMDCommunicationTrustHandlerFactory __swiftcall HMDCommunicationTrustHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_229749F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_229749B10(v2, v3, v4);
}

uint64_t sub_229749FF0(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880820, &qword_22A581CD8) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_22A4DC26C();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_22A4DC24C();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22974A150, 0, 0);
}

uint64_t sub_22974A150()
{
  v1 = *(v0 + 80);
  v2 = [*(v0 + 32) type];
  if (v2 > 2)
  {
    v3 = MEMORY[0x277CD4738];
  }

  else
  {
    v3 = qword_27866DC28[v2];
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  (*(v1 + 104))(v4, *v3, v6);
  (*(v7 + 16))(v5, v4, v6);
  v11 = [v10 value];
  sub_22A4DD5EC();

  sub_22A4DC25C();
  sub_22A4DC23C();
  *(v0 + 104) = sub_22A4DC22C();
  v12 = sub_22A4DC1FC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *(MEMORY[0x277CFB9A8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_22974A320;
  v15 = *(v0 + 64);
  v16 = *(v0 + 40);

  return MEMORY[0x28214E8B0](v15, v16);
}

uint64_t sub_22974A320(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[5];
  if (v1)
  {
    sub_22974AE30(v7);
    v8 = sub_22974A548;
  }

  else
  {
    v4[16] = a1;
    sub_22974AE30(v7);
    v8 = sub_22974A468;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22974A468()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v1, v4);

  v9 = *(v0 + 8);
  v10 = *(v0 + 128);

  return v9(v10);
}

uint64_t sub_22974A548()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v10 = v0[15];
  v11 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v12 = v0[11];
  v13 = v0[5];
  type metadata accessor for HMError(0);
  v0[3] = 2;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v7 = v0[2];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22974A6AC()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[2];
    }

    v9 = sub_22A4DE0EC();
    v0[3] = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[3] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[2];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAD13F0](0);
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);
LABEL_6:
        v5 = v4;
        v0[4] = v4;
        v0[5] = 1;
        v6 = swift_task_alloc();
        v0[6] = v6;
        *v6 = v0;
        v6[1] = sub_22974A8A8;

        return sub_229749FF0(v5);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  if (qword_27D87BA70 != -1)
  {
LABEL_20:
    swift_once();
  }

  v10 = sub_22A4DD07C();
  __swift_project_value_buffer(v10, qword_27D880780);
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDD0C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_229538000, v11, v12, "HMDAccount is not trustworthy.", v13, 2u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_22974A8A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_22974ADC8;
  }

  else
  {
    v5 = sub_22974A9BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22974A9BC()
{
  v31 = v0;
  if (qword_27D87BA70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D880780);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315138;
    v7 = sub_22A4DC20C();
    v9 = sub_2295A3E30(v7, v8, &v30);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_229538000, v2, v3, "Handle CommunicationTrust score: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v10 = *(v0 + 56) - 5;
  if (v10 < 5)
  {
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDD0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = sub_22A4DC20C();
      v19 = sub_2295A3E30(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_229538000, v11, v12, "HMDAccount is trustworthy with score: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }

LABEL_14:

    v24 = *(v0 + 8);

    v24(v10 < 5);
    return;
  }

  v20 = *(v0 + 40);
  v21 = *(v0 + 24);

  if (v20 == v21)
  {
    if (qword_27D87BA70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27D880780);
    v11 = sub_22A4DD05C();
    v22 = sub_22A4DDD0C();
    if (os_log_type_enabled(v11, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_229538000, v11, v22, "HMDAccount is not trustworthy.", v23, 2u);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    goto LABEL_14;
  }

  v25 = *(v0 + 40);
  v26 = *(v0 + 16);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x22AAD13F0](*(v0 + 40));
  }

  else
  {
    if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v27 = *(v26 + 8 * v25 + 32);
  }

  v28 = v27;
  *(v0 + 32) = v27;
  *(v0 + 40) = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v29 = swift_task_alloc();
  *(v0 + 48) = v29;
  *v29 = v0;
  v29[1] = sub_22974A8A8;

  sub_229749FF0(v28);
}

uint64_t sub_22974ADC8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(0);
}

uint64_t sub_22974AE30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880820, &qword_22A581CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22974AE98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22974AF08, 0, 0);
}

uint64_t sub_22974AF08()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_22974B008;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x800000022A594E10, sub_22974B638, v2, v5);
}

uint64_t sub_22974B008()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22974B124;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22974B124()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_22974B188(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v35 = a1;
  v36 = a4;
  v38 = a3;
  v37 = sub_22A4DD26C();
  v41 = *(v37 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = sub_22A4DD5AC();
  v18 = [objc_opt_self() allMessageDestinations];
  v19 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:v17 destination:v18 payload:0];

  (*(v13 + 16))(v16, v35, v12);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v19;
  (*(v13 + 32))(v22 + v20, v16, v12);
  *(v22 + v21) = v36;
  v47 = sub_22974C698;
  v48 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2297986BC;
  v46 = &block_descriptor_28;
  v23 = _Block_copy(&aBlock);
  v24 = a2;
  v25 = v19;

  [v25 setResponseHandler_];
  _Block_release(v23);
  v26 = [v24 workQueue];
  v27 = swift_allocObject();
  v28 = v38;
  v27[2] = v24;
  v27[3] = v28;
  v27[4] = v25;
  v47 = sub_22974B644;
  v48 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_22953E640;
  v46 = &block_descriptor_8_0;
  v29 = _Block_copy(&aBlock);
  v30 = v24;
  v31 = v25;
  v32 = v28;
  sub_22A4DD28C();
  v42 = MEMORY[0x277D84F90];
  sub_22974B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v33 = v37;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v11, v7, v29);
  _Block_release(v29);

  (*(v41 + 8))(v7, v33);
  (*(v39 + 8))(v11, v40);
}

unint64_t sub_22974B658()
{
  result = qword_281401CF0;
  if (!qword_281401CF0)
  {
    sub_22A4DD26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401CF0);
  }

  return result;
}

void sub_22974B6B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v39 = a4;
  v36[1] = a3;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277CD24F0];
  v16 = [a2 messageTargetUUID];
  sub_22A4DB79C();

  v17 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v18 = sub_22A4DB77C();
  v19 = [v17 initWithTarget_];

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v21 = *MEMORY[0x277CCF0B0];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v22;
  v23 = sub_22A4DB76C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  v25 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v26 = sub_22A4DD47C();

  v27 = [v25 initWithName:v15 destination:v19 payload:v26];

  (*(v6 + 16))(v9, v38, v5);
  v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v29 = swift_allocObject();
  v30 = v37;
  *(v29 + 16) = v37;
  *(v29 + 24) = v27;
  (*(v6 + 32))(v29 + v28, v9, v5);
  *(v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  aBlock[4] = sub_22974C5D4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_14;
  v31 = _Block_copy(aBlock);
  v32 = v30;
  v33 = v27;

  [v33 setResponseHandler_];
  _Block_release(v31);
  v34 = [v32 msgDispatcher];
  if (v34)
  {
    v35 = v34;
    [v34 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22974BAD8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_22A4DD07C();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  if (a1)
  {
    v17 = a1;
    sub_2297A46D4();
    v18 = a1;
    v19 = a3;
    v20 = a4;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v56 = v26;
      *v23 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v62 = v26;
      v27 = [v19 logIdentifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v60, v61, &v62);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v25 = v20;
      *(v23 + 22) = 2112;
      v32 = a1;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v34;
      v25[1] = v34;
      _os_log_impl(&dword_229538000, v21, v22, "%s Responded to %@ with %@", v23, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v35 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v58 + 8))(v16, v59);
    v60 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    sub_2297A46D4();

    v37 = a3;
    v38 = a4;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = a5;
      v43 = v42;
      v44 = swift_slowAlloc();
      v56 = v44;
      *v41 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v62 = v44;
      v45 = [v37 logIdentifier];
      v46 = sub_22A4DD5EC();
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v60, v61, &v62);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v43 = v38;
      *(v41 + 22) = 2080;
      v60 = a2;
      v50 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
      v51 = sub_22A4DD64C();
      v53 = sub_2295A3E30(v51, v52, &v62);

      *(v41 + 24) = v53;
      _os_log_impl(&dword_229538000, v39, v40, "%s Responded to %@ with %s", v41, 0x20u);
      sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      v54 = v56;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (*(v58 + 8))(v14, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

uint64_t sub_22974C028(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22974C0EC, 0, 0);
}

uint64_t sub_22974C0EC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = [v3 administratorHandler];
  v8 = *MEMORY[0x277CD2540];
  v0[18] = v7;
  v0[19] = v8;
  v19 = v8;
  v9 = [v3 messageTargetUUID];
  sub_22A4DB79C();

  v10 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v11 = sub_22A4DB77C();
  v12 = [v10 initWithTarget_];
  v0[20] = v12;

  (*(v1 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v14 = *MEMORY[0x277CD23D0];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v15;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v16 = sub_22956AC5C(inited);
  v0[21] = v16;
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_22974C2F4;

  return sub_2297983DC(v19, v12, v16);
}

uint64_t sub_22974C2F4()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22974C468, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v7 = v3[18];
    v6 = v3[19];
    v8 = v3[17];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_22974C468()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  v6 = v0[1];
  v7 = v0[23];

  return v6();
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22974C5D8(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_22974BAD8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6);
}

uint64_t sub_22974C69C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22A4DE37C();

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880910, &qword_22A581DE8);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2296DBF94(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_22974C758(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22A4DE0EC();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    result = sub_22A4DE08C();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_22A4DE29C();
  v5 = -1 << *(a1 + 32);
  result = sub_22A4DE04C();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_22962F6C0(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 nodeID];

    sub_22A4DE27C();
    v16 = *(v31 + 16);
    sub_22A4DE2AC();
    sub_22A4DE2BC();
    result = sub_22A4DE28C();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_22A4DE0AC())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880940, &qword_22A581DF0);
      v8 = sub_22A4DDB9C();
      sub_22A4DE15C();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_22962F424(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22962F424(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_22962F424(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_22974CA70(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    sub_22959E62C(&qword_27D87D580, &unk_27D87E490, off_2786660B8);
    sub_22A4DDBAC();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_22A4DE12C() || (sub_229562F68(0, &unk_27D87E490, off_2786660B8), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_22953EE84();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 accessory];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x22AAD09E0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_22974CCF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757764(&v40, off_2786660E0, &selRef_characteristic, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v37)
        {
          goto LABEL_46;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
            v22 = sub_22958C03C(v38, j, v9);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v37 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v37);
          v26 = v25 + v37;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D080(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v4 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v31);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757954(&v40, off_278666278, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = sub_22A4DE0EC();
        v13 = v28 + v10;
        if (__OFADD__(v28, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = v10;
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v14 + 16);
LABEL_23:
      v15 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v6)
      {
        v20 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v15)
        {
          goto LABEL_46;
        }

        v37 = v5;
        v21 = v14 + 8 * v17 + 32;
        v32 = v14;
        if (v6)
        {
          if (v19 < 1)
          {
            goto LABEL_48;
          }

          sub_2297636E4(&qword_27D8809C0, &qword_27D8809B8, &qword_22A581E20);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809B8, &qword_22A581E20);
            v23 = sub_22958C03C(v38, j, v9);
            v25 = *v24;
            (v23)(v38, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          sub_229562F68(0, &qword_27D8809B0, off_278666278);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v37;
        if (v15 >= 1)
        {
          v26 = *(v32 + 16);
          v7 = __OFADD__(v26, v15);
          v27 = v26 + v15;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v15 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v33)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D400(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v4 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v31);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757954(&v40, off_278666040, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = sub_22A4DE0EC();
        v13 = v28 + v10;
        if (__OFADD__(v28, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = v10;
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v14 + 16);
LABEL_23:
      v15 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v6)
      {
        v20 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v15)
        {
          goto LABEL_46;
        }

        v37 = v5;
        v21 = v14 + 8 * v17 + 32;
        v32 = v14;
        if (v6)
        {
          if (v19 < 1)
          {
            goto LABEL_48;
          }

          sub_2297636E4(&qword_27D8809A8, &qword_27D8809A0, &qword_22A581E18);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809A0, &qword_22A581E18);
            v23 = sub_22958C03C(v38, j, v9);
            v25 = *v24;
            (v23)(v38, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          sub_229562F68(0, &qword_27D880998, off_278666040);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v37;
        if (v15 >= 1)
        {
          v26 = *(v32 + 16);
          v7 = __OFADD__(v26, v15);
          v27 = v26 + v15;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v15 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v33)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D780(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757764(&v40, off_278666230, &selRef_lightProfile, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v37)
        {
          goto LABEL_46;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          sub_2297636E4(&unk_27D880988, &qword_27D880980, &qword_22A581E10);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880980, &qword_22A581E10);
            v22 = sub_22958C03C(v38, j, v9);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D880970, off_278666228);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v37 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v37);
          v26 = v25 + v37;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974DB0C(void (*a1)(unint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_49;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v35 = a3 & 0xFFFFFFFFFFFFFF8;
    v36 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v32 = a3;
    v33 = v5;
    v34 = a3 + 32;
    while (1)
    {
      if (v36)
      {
        v8 = MEMORY[0x22AAD13F0](v6, v32);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v34 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v41 = v8;
      v11 = v4;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_42;
      }

      v12 = v40;
      v13 = v40 >> 62;
      if (v40 >> 62)
      {
        v14 = sub_22A4DE0EC();
      }

      else
      {
        v14 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v7 >> 62;
      if (v7 >> 62)
      {
        v29 = sub_22A4DE0EC();
        v9 = (v29 + v14);
        if (__OFADD__(v29, v14))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v7;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = (v16 + v14);
        if (__OFADD__(v16, v14))
        {
          goto LABEL_41;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v15)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v17 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_23:
      v7 = sub_22A4DE22C();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v38 = v14;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v13)
      {
        v21 = sub_22A4DE0EC();
        if (!v21)
        {
LABEL_4:

          if (v38 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_46;
      }

      v22 = v17 + 8 * v19 + 32;
      if (v13)
      {
        if (v21 < 1)
        {
          goto LABEL_48;
        }

        sub_2297636E4(&qword_27D880950, &qword_27D880948, &qword_22A581DF8);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880948, &qword_22A581DF8);
          v24 = sub_22958C03C(v39, i, v12);
          v26 = *v25;
          (v24)(v39, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        swift_arrayInitWithCopy();
      }

      v4 = v11;
      if (v38 > 0)
      {
        v27 = *(v17 + 16);
        v10 = __OFADD__(v27, v38);
        v28 = v27 + v38;
        if (v10)
        {
          goto LABEL_47;
        }

        *(v17 + 16) = v28;
      }

LABEL_5:
      if (v6 == v33)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v30 = a3;
    v5 = sub_22A4DE0EC();
    a3 = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22974DE8C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572498(v5, v6);
      return sub_22975FC6C(a1, a2, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_22966F34C, sub_22966F34C);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_22966F34C, sub_22966F34C);
  }

  sub_22975E460(a1, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_229578C60);
  return a2;
}

uint64_t sub_22974DFCC(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B20(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22966FAFC, sub_22966FAFC);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22966FAFC, sub_22966FAFC);
  }

  sub_22975E460(a1, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  return a2;
}

uint64_t sub_22974E10C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22975E460(a1, &qword_281401B70, off_278666148, &unk_27D87E480, sub_229579308);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22A4DE0EC() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22A4DE0EC();
  v2 = sub_229572B44(v5, v6);
LABEL_10:

  return sub_22975F5D4(a1, v2);
}

uint64_t sub_22974E22C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B68(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_22966FB10, sub_22966FB10);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_22966FB10, sub_22966FB10);
  }

  sub_22975E460(a1, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_229579350);
  return a2;
}

uint64_t sub_22974E36C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B8C(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_22966FB24, sub_22966FB24);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_22966FB24, sub_22966FB24);
  }

  sub_22975E460(a1, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_229579374);
  return a2;
}

id sub_22974E4EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSetState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22974E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() deviceWithNodeID:a3 controller:a1];

  return v3;
}

uint64_t sub_22974E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974E5C0, a4, 0);
}

uint64_t sub_22974E5C0()
{
  v1 = *(v0 + 16);
  sub_22974F194(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22974E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974E754, a4, 0);
}

uint64_t sub_22974E754()
{
  v1 = v0[2];
  sub_22974E8DC(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22974E8DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v45 = sub_22A4DD07C();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v16 = &v39 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v20 = *(v13 + 16);
    v18 = v13 + 16;
    v19 = v20;
    v21 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v47 = *(v18 + 56);
    v49 = (v18 - 8);
    v50 = v18;
    v43 = (v4 + 8);
    *&v14 = 136315138;
    v39 = v14;
    v46 = v20;
    v40 = v2;
    v20(v16, v21, v7);
    while (1)
    {
      if (swift_unknownObjectWeakLoadStrong() && (v23 = *(v2 + 200), v24 = swift_getObjectType(), v25 = (*(v23 + 64))(v16, v2, v24, v23), swift_unknownObjectRelease(), v25))
      {
        v26 = *(v2 + 184);
        v27 = sub_22A4DB77C();
        LOBYTE(v26) = [v26 hasRegistrationsForActionSetUUID_];

        if (v26 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v28 = *(v2 + 200), v29 = swift_getObjectType(), LOBYTE(v28) = (*(v28 + 56))(v16, v2, v29, v28), swift_unknownObjectRelease(), (v28))
        {
          sub_22974EDD8(v25);
        }

        else
        {
          sub_22974F194(v25);
        }

        result = (*v49)(v16, v7);
        v19 = v46;
      }

      else
      {
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v19(v11, v16, v7);
        v30 = sub_22A4DD05C();
        v31 = sub_22A4DDCCC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v51 = v42;
          *v32 = v39;
          sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
          v33 = v31;
          v34 = sub_22A4DE5CC();
          v36 = v35;
          v41 = *v49;
          v41(v11, v7);
          v37 = sub_2295A3E30(v34, v36, &v51);
          v19 = v46;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_229538000, v30, v33, "Could not find Action Set: %s", v32, 0xCu);
          v38 = v42;
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x22AAD4E50](v38, -1, -1);
          v2 = v40;
          MEMORY[0x22AAD4E50](v32, -1, -1);

          (*v43)(v48, v45);
          result = v41(v16, v7);
        }

        else
        {

          v22 = *v49;
          (*v49)(v11, v7);
          (*v43)(v48, v45);
          result = v22(v16, v7);
        }
      }

      v21 += v47;
      if (!--v17)
      {
        break;
      }

      v19(v16, v21, v7);
    }
  }

  return result;
}

void sub_22974EDD8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  swift_beginAccess();
  if (*(*(v1 + 208) + 16) && (, sub_2296DBFE4(a1), v14 = v13, , (v14 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v15 = a1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_229538000, v16, v17, "Action Set: %@ is already monitored", v18, 0xCu);
      sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    swift_beginAccess();
    v21 = *(v1 + 208);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v1 + 208);
    *(v1 + 208) = 0x8000000000000000;
    sub_2295ABA04(0, a1, isUniquelyReferenced_nonNull_native);
    *(v1 + 208) = v30;
    swift_endAccess();
    sub_22975381C();
    sub_229752A10();
    sub_229753228();
    sub_229754A38();
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v23 = a1;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCCC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_229538000, v24, v25, "Started monitoring Action Set: %@", v26, 0xCu);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    [*(v2 + 176) addObserver:v2 selector:sel_handleActionSetUpdatedWithNotification_ name:@"HMDActionSetActionsUpdatedNotification" object:v23];
    sub_2297564E4();
  }
}

uint64_t sub_22974F194(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-v10];
  swift_beginAccess();
  if (!*(*(v1 + 208) + 16) || (, sub_2296DBFE4(a1), v13 = v12, , (v13 & 1) == 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v20 = a1;
    v15 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (!os_log_type_enabled(v15, v21))
    {
      v9 = v11;
      goto LABEL_9;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v20;
    *v18 = v20;
    v22 = v20;
    _os_log_impl(&dword_229538000, v15, v21, "Action Set: %@ was not being monitored", v17, 0xCu);
    v9 = v11;
    goto LABEL_7;
  }

  [*(v1 + 176) removeObserver:v1 name:@"HMDActionSetActionsUpdatedNotification" object:a1];
  swift_beginAccess();
  sub_2297FD600(a1);
  swift_endAccess();
  sub_22975381C();
  sub_229752A10();
  sub_229753228();
  sub_229754A38();
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v14 = a1;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_229538000, v15, v16, "Stoped monitoring Action Set: %@", v17, 0xCu);
LABEL_7:
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

LABEL_9:

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_22974F4D0(void *a1)
{
  v2 = v1;
  v39 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_22A4DB7DC();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = [a1 userInfo];
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v20;
  v22 = sub_22A4DD49C();

  v40 = sub_22A4DD5EC();
  v41 = v23;
  sub_22A4DE18C();
  if (!*(v22 + 16) || (v24 = sub_2295402E8(v42), (v25 & 1) == 0))
  {

    sub_22954045C(v42);
LABEL_8:
    v43 = 0u;
    v44 = 0u;
    goto LABEL_9;
  }

  sub_2295404B0(*(v22 + 56) + 32 * v24, &v43);
  sub_22954045C(v42);

  if (!*(&v44 + 1))
  {
LABEL_9:
    sub_22953EAE4(&v43, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_10;
  }

  sub_229562F68(0, &qword_281401C20, off_278666020);
  if (swift_dynamicCast())
  {
    v26 = v42[0];
    v27 = [v42[0] uuid];
    sub_22A4DB79C();

    v28 = sub_22A4DD9DC();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v30 = v37;
    v29 = v38;
    (*(v37 + 16))(v17, v19, v38);
    v31 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v39;
    (*(v30 + 32))(&v32[v31], v17, v29);

    sub_22957F3C0(0, 0, v13, &unk_22A581E88, v32);

    return (*(v30 + 8))(v19, v29);
  }

LABEL_10:
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCEC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_229538000, v34, v35, "Action Set is missing from notification", v36, 2u);
    MEMORY[0x22AAD4E50](v36, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22974F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974F9A0, 0, 0);
}

uint64_t sub_22974F9A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
  v3 = sub_22A4DB7DC();
  *(v0 + 32) = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  *(v0 + 40) = v4;
  v6 = *(v4 + 72);
  v7 = *(v5 + 80);
  *(v0 + 56) = v7;
  v8 = (v7 + 32) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 48) = v9;
  *(v9 + 16) = xmmword_22A576180;
  (*(v5 + 16))(v9 + v8, v1, v3);

  return MEMORY[0x2822009F8](sub_22974FAD4, v2, 0);
}

uint64_t sub_22974FAD4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = (*(v0 + 56) + 32) & ~*(v0 + 56);
  sub_22974E8DC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22974FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974FBF4, a4, 0);
}

uint64_t sub_22974FBF4()
{
  v1 = *(v0 + 16);
  sub_22974FC6C(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_22974FC6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 208) + 16) && (, sub_2296DBFE4(a1), v10 = v9, , (v10 & 1) != 0))
  {
    sub_22975381C();
    sub_229752A10();
    sub_229753228();
    sub_229754A38();
    sub_2297564E4();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v11 = a1;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_229538000, v12, v13, "Action set: %@ is not relevant", v14, 0xCu);
      sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22974FE88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = sub_22A4DB20C();
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v38 = sub_22A4DD5EC();
  v39 = v20;
  sub_22A4DE18C();
  if (!*(v19 + 16) || (v21 = sub_2295402E8(v40), (v22 & 1) == 0))
  {

    sub_22954045C(v40);
LABEL_10:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_11;
  }

  sub_2295404B0(*(v19 + 56) + 32 * v21, &v41);
  sub_22954045C(v40);

  if (!*(&v42 + 1))
  {
LABEL_11:
    sub_22953EAE4(&v41, &unk_27D87DE60, &unk_22A57A960);
LABEL_12:
    sub_229541CB0(ObjectType, &off_283CE36C8);
    (*(v6 + 16))(v9, a1, v5);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      sub_229763570(&unk_2814038C0, 255, MEMORY[0x277CC8900]);
      v31 = sub_22A4DE5CC();
      v36 = v10;
      v33 = v32;
      (*(v6 + 8))(v9, v5);
      v34 = sub_2295A3E30(v31, v33, v40);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_229538000, v27, v28, "No characteristics in change notification: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      return (*(v37 + 8))(v13, v36);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      return (*(v37 + 8))(v13, v10);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = v40[0];
  if (v40[0] >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_8;
    }
  }

  else if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v24 = sub_22A4DD9DC();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v2;
    v25[5] = v23;

    sub_22957F3C0(0, 0, v17, &unk_22A581E68, v25);
  }
}

uint64_t sub_229750380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297503A0, a4, 0);
}

uint64_t sub_2297503A0()
{
  v1 = v0[2];
  sub_2297504EC(v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_2297504EC(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = ObjectType;
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_31:
    v8 = sub_22A4DE0EC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 + 32;
  v33 = v8;
  v34 = a1;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v17 = MEMORY[0x22AAD13F0](v9, a1);
    }

    else
    {
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_30;
      }

      v17 = *(v39 + 8 * v9);
    }

    v18 = v17;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = *(v2 + 112);
    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v12 < 0)
    {
      v13 = *(v2 + 112);
    }

    v14 = *(v2 + 112);

    v15 = v18;
    v16 = sub_22A4DE13C();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v9 == v8)
    {
      return;
    }
  }

  if (!*(v12 + 16))
  {

    goto LABEL_9;
  }

  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v20 = *(v12 + 40);

  v21 = sub_22A4DDECC();
  v22 = -1 << *(v12 + 32);
  v23 = v21 & ~v22;
  if (((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_21:

    v8 = v33;
    a1 = v34;
    v11 = v31;
    v10 = v32;
    goto LABEL_9;
  }

  v24 = ~v22;
  while (1)
  {
    v25 = *(*(v12 + 48) + 8 * v23);
    v26 = sub_22A4DDEDC();

    if (v26)
    {
      break;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v27 = v36;
  sub_229541CB0(v35, &off_283CE36C8);
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCDC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_229538000, v28, v29, "Detected relevant characteristic change, refreshing on state", v30, 2u);
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  (*(v37 + 8))(v27, v38);
  sub_2297564E4();
}

void sub_229750860(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  if ([a1 object])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    sub_229562F68(0, &qword_27D880918, off_278666280);
    if (swift_dynamicCast())
    {
      v15 = v28;
      v16 = [v28 accessory];
      if (v16)
      {
        v17 = v16;
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v19 = [v18 uuid];
          v27 = ObjectType;
          v20 = v19;
          sub_22A4DB79C();

          v21 = sub_22A4DD9DC();
          (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
          (*(v9 + 16))(v12, v14, v8);
          v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
          v26 = v15;
          v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
          v24 = swift_allocObject();
          *(v24 + 2) = 0;
          *(v24 + 3) = 0;
          *(v24 + 4) = v1;
          (*(v9 + 32))(&v24[v22], v12, v8);
          *&v24[v23] = v27;

          sub_22957F3C0(0, 0, v7, &unk_22A581E58, v24);

          (*(v9 + 8))(v14, v8);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_22953EAE4(v31, &unk_27D87DE60, &unk_22A57A960);
  }
}

uint64_t sub_229750BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_22A4DB7DC();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229750D18, a4, 0);
}

uint64_t sub_229750D18()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 128) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_229750DA0, 0, 0);
}

uint64_t sub_229750DA0()
{
  v57 = v0;
  v1 = v0[9];
  v2 = sub_22956F33C(v0[6], v0[16]);

  v3 = (v1 + 16);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  if (v2)
  {
    v7 = v0[15];
    v8 = v0[11];
    v9 = v0[7];
    sub_229541CB0(v4, &off_283CE36C8);
    (*v3)(v8, v6, v5);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCDC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    if (v12)
    {
      v54 = v0[12];
      v19 = swift_slowAlloc();
      v50 = v11;
      v20 = swift_slowAlloc();
      v56 = v20;
      *v19 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v21 = sub_22A4DE5CC();
      v52 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_2295A3E30(v21, v23, &v56);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_229538000, v10, v50, "Detected relevant media profile change for %s, refreshing on state", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v14 + 8))(v52, v54);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v43 = v0[5];

    return MEMORY[0x2822009F8](sub_229751234, v43, 0);
  }

  else
  {
    v25 = v0[14];
    v26 = v0[10];
    v27 = v0[7];
    sub_229541CB0(v4, &off_283CE36C8);
    (*v3)(v26, v6, v5);
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCDC();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[13];
    v31 = v0[14];
    v33 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    v36 = v0[8];
    if (v30)
    {
      v55 = v0[12];
      v37 = swift_slowAlloc();
      v51 = v29;
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v39 = sub_22A4DE5CC();
      v53 = v31;
      v41 = v40;
      (*(v35 + 8))(v34, v36);
      v42 = sub_2295A3E30(v39, v41, &v56);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_229538000, v28, v51, "Media accessory: %s is not relevant", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v32 + 8))(v53, v55);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
      (*(v32 + 8))(v31, v33);
    }

    v45 = v0[14];
    v44 = v0[15];
    v47 = v0[10];
    v46 = v0[11];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_229751234()
{
  v1 = v0[5];
  sub_2297564E4();
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_229751308(void *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  if ([a1 object])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    return sub_22953EAE4(v21, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229562F68(0, a2, a3);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v18[1];
    v16 = sub_22A4DD9DC();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v5;
    v17[5] = v15;

    sub_22957F3C0(0, 0, v13, a5, v17);
  }

  return result;
}

uint64_t sub_2297514C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297514E4, a4, 0);
}

uint64_t sub_2297514E4()
{
  v1 = *(v0 + 16);
  sub_2297515BC(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22975155C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_2297515BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  swift_beginAccess();
  v13 = *(v2 + 168);

  v14 = sub_22956F554(a1, v13);

  if (v14)
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v15 = a1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_229538000, v16, v17, "Detected relevant lighting profile change for %@, refreshing on state", v18, 0xCu);
      sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    sub_2297564E4();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v21 = a1;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCDC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_229538000, v22, v23, "Lighting profile: %@ is not relevant", v24, 0xCu);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_2297518E0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809C8, &qword_22A581E28);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297519B8, 0, 0);
}

uint64_t sub_2297519B8()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;

  v6 = sub_22957F9B4(0, 0, v1, &unk_22A581E38, v5);
  v0[9] = v6;
  v7 = *(MEMORY[0x277D857D0] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
  *v8 = v0;
  v8[1] = sub_229751B2C;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 2, v6, v9, v10, v11);
}

uint64_t sub_229751B2C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229751C44, 0, 0);
}

uint64_t sub_229751C44()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {

    return swift_willThrowTypedImpl();
  }

  else
  {
    v23 = *(v0 + 48);
    v22 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v8 = *(v0 + 56);
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v7 << 6);
        v11 = *(v1 + 48);
        v12 = sub_22A4DB7DC();
        (*(*(v12 - 8) + 16))(v8, v11 + *(*(v12 - 8) + 72) * v10, v12);
        v13 = *(*(v1 + 56) + v10);
        *(v8 + *(v23 + 48)) = v13;
        v14 = objc_allocWithZone(HMDActionSetResponse);
        v15 = sub_22A4DB77C();
        v16 = [v14 initWithActionSetUUID:v15 state:v13];

        result = sub_22953EAE4(v8, &qword_27D8809C8, &qword_22A581E28);
        if (v16)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x22AAD09E0](result);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      result = sub_22A4DD87C();
      v22 = v24;
    }

    while (v5);
    while (1)
    {
LABEL_10:
      v17 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      if (v17 >= v6)
      {
        break;
      }

      v5 = *(v1 + 64 + 8 * v17);
      ++v7;
      if (v5)
      {
        v7 = v17;
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 56);
    v19 = *(v0 + 64);

    sub_2297637F8(v1, 0);

    v21 = *(v0 + 8);

    return v21(v22);
  }
}

uint64_t sub_229751EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_229751F08, a4, 0);
}

uint64_t sub_229751F08()
{
  v1 = v0[3];
  v0[5] = sub_229752384(v0[4]);

  return MEMORY[0x2822009F8](sub_229751F74, 0, 0);
}

uint64_t sub_229752120(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_22A4DB7DC();
  v4 = sub_22A4DD83C();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2297521F8;

  return sub_2297518E0(v4);
}

uint64_t sub_2297521F8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  type metadata accessor for HMDActionSetResponse(0);
  v5 = sub_22A4DD81C();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_229752384(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v70 = sub_22A4DD07C();
  v2 = *(v70 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v70);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v72 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F98];
  }

  v17 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  swift_beginAccess();
  v19 = *(v7 + 16);
  v18 = v7 + 16;
  v80 = v19;
  v20 = *(v18 + 56);
  v73 = (v18 - 8);
  v74 = v20;
  v21 = MEMORY[0x277D84F98];
  v68 = (v2 + 8);
  *&v22 = 136315138;
  v67 = v22;
  v75 = v11;
  v76 = v6;
  v77 = v15;
  v69 = v18;
  v66 = v5;
  while (1)
  {
    v78 = v21;
    v80(v15, v17, v6);
    if (!swift_unknownObjectWeakLoadStrong() || (v25 = v79, v26 = *(v79 + 200), v27 = swift_getObjectType(), v28 = (*(v26 + 64))(v15, v25, v27, v26), swift_unknownObjectRelease(), !v28))
    {
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v80(v11, v15, v6);
      v35 = sub_22A4DD05C();
      v36 = v5;
      v37 = sub_22A4DDCCC();
      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v81 = v39;
        *v38 = v67;
        sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
        v40 = sub_22A4DE5CC();
        v42 = v41;
        v43 = *v73;
        (*v73)(v75, v76);
        v44 = sub_2295A3E30(v40, v42, &v81);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_229538000, v35, v37, "Could not find Action Set: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v45 = v39;
        v11 = v75;
        MEMORY[0x22AAD4E50](v45, -1, -1);
        v46 = v38;
        v6 = v76;
        MEMORY[0x22AAD4E50](v46, -1, -1);

        v5 = v66;
        (*v68)(v66, v70);
        v15 = v77;
        v43(v77, v6);
      }

      else
      {
        v23 = v15;

        v24 = *v73;
        (*v73)(v11, v6);
        (*v68)(v36, v70);
        v24(v23, v6);
        v5 = v36;
        v15 = v23;
      }

      v21 = v78;
      goto LABEL_5;
    }

    v29 = *(v79 + 208);
    if (*(v29 + 16))
    {
      v30 = *(v79 + 208);

      v31 = sub_2296DBFE4(v28);
      v32 = v78;
      v34 = (v33 & 1) != 0 ? *(*(v29 + 56) + v31) : 0;
    }

    else
    {
      v34 = 0;
      v32 = v78;
    }

    v47 = v72;
    v80(v72, v77, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v32;
    v49 = sub_2296DBEC0(v47);
    v51 = *(v32 + 16);
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      break;
    }

    v55 = v50;
    if (*(v32 + 24) >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = v49;
        sub_229899030();
        v49 = v63;
      }
    }

    else
    {
      sub_229895274(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_2296DBEC0(v72);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_31;
      }
    }

    v6 = v76;
    v21 = v81;
    if (v55)
    {
      *(v81[7] + v49) = v34;

      v57 = *v73;
      (*v73)(v72, v6);
      v57(v77, v6);
    }

    else
    {
      v81[(v49 >> 6) + 8] |= 1 << v49;
      v58 = v49;
      v59 = v72;
      v80((v21[6] + v49 * v74), v72, v6);
      *(v21[7] + v58) = v34;

      v60 = *v73;
      (*v73)(v59, v6);
      v60(v77, v6);
      v61 = v21[2];
      v53 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v53)
      {
        goto LABEL_30;
      }

      v21[2] = v62;
    }

    v11 = v75;
    v15 = v77;
LABEL_5:
    v17 += v74;
    if (!--v16)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_229752A10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB7DC();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v68 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v68 - v16;
  swift_beginAccess();
  v17 = *(v0 + 26);
  v18 = *(v17 + 16);
  if (v18)
  {
    v76 = ObjectType;
    v77 = v7;
    v78 = v4;
    Strong = v3;
    v19 = sub_229716310(v18, 0);
    v20 = sub_229715980(&v85, (v19 + 32), v18, v17);

    result = sub_22953EE84();
    if (v20 != v18)
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v3 = Strong;
    v7 = v77;
    v4 = v78;
    ObjectType = v76;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v84 = sub_229762958(v19);
  v22 = sub_229762E64(v19);

  sub_229594AA4(v22);
  swift_beginAccess();
  v23 = *(v1 + 20);
  v24 = v84;
  if (*(v84 + 16) <= *(v23 + 16) >> 3)
  {
    v83 = *(v1 + 20);

    sub_22975E244(v24);
    v26 = v83;
  }

  else
  {
    v25 = *(v1 + 20);

    v26 = sub_22975EB68(v24, v23);
  }

  if (*(*(v1 + 20) + 16) <= *(v24 + 16) >> 3)
  {
    v83 = v24;

    sub_22975E244(v30);

    v29 = v83;
  }

  else
  {
    v27 = *(v1 + 20);

    v29 = sub_22975EB68(v28, v24);
  }

  v31 = v70;
  if (*(v29 + 16) || *(v26 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v69 = v29;
      v32 = *(v1 + 25);
      v33 = v26 + 56;
      v34 = 1 << *(v26 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      v36 = v35 & *(v26 + 56);
      v37 = (v34 + 63) >> 6;
      v77 = (v80 + 32);
      v78 = v80 + 16;
      v76 = v32 + 48;
      v71 = v32 + 32;
      v75 = (v80 + 8);

      v38 = 0;
      v72 = v26;
      while (v36)
      {
LABEL_23:
        v41 = v80;
        v40 = v81;
        v42 = *(v26 + 48) + *(v80 + 72) * (__clz(__rbit64(v36)) | (v38 << 6));
        v43 = v74;
        (*(v80 + 16))(v74, v42, v81);
        (*(v41 + 32))(v31, v43, v40);
        v44 = swift_getObjectType();
        v45 = (*(v32 + 48))(v31, v1, v44, v32);
        if (v45)
        {
          v46 = v45;
          [*(v1 + 22) removeObserver:v1 name:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v45];
        }

        v36 &= v36 - 1;
        (*(v32 + 32))(v31, v1, v44, v32);
        result = (*v75)(v31, v81);
        v26 = v72;
      }

      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v39 >= v37)
        {
          break;
        }

        v36 = *(v33 + 8 * v39);
        ++v38;
        if (v36)
        {
          v38 = v39;
          goto LABEL_23;
        }
      }

      swift_beginAccess();
      sub_22975E244(v26);
      swift_endAccess();

      v47 = v69;
      v48 = v69 + 56;
      v49 = 1 << *(v69 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & *(v69 + 56);
      v52 = (v49 + 63) >> 6;
      v72 = v32 + 24;

      v53 = 0;
      v74 = v1;
      while (v51)
      {
LABEL_34:
        v56 = v47;
        v58 = v80;
        v57 = v81;
        v59 = v73;
        (*(v80 + 16))(v73, *(v47 + 48) + *(v80 + 72) * (__clz(__rbit64(v51)) | (v53 << 6)), v81);
        v60 = v79;
        (*(v58 + 32))(v79, v59, v57);
        v61 = swift_getObjectType();
        v62 = v74;
        v63 = (*(v32 + 48))(v60, v74, v61, v32);
        if (v63)
        {
          v64 = v63;
          [*(v62 + 22) addObserver:v62 selector:sel_handleMediaProfileHasMediaSessionStateChangedWithNotification_ name:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v63];
        }

        v51 &= v51 - 1;
        v54 = v79;
        (*(v32 + 24))(v79, v62, v61, v32);
        result = (*v75)(v54, v81);
        v47 = v56;
      }

      while (1)
      {
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v55 >= v52)
        {

          swift_beginAccess();
          sub_229594AA4(v47);
          swift_endAccess();
          return swift_unknownObjectRelease();
        }

        v51 = *(v48 + 8 * v55);
        ++v53;
        if (v51)
        {
          v53 = v55;
          goto LABEL_34;
        }
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v65 = sub_22A4DD05C();
    v66 = sub_22A4DDCEC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_229538000, v65, v66, "Cannot evaluate media state with nil dataSource", v67, 2u);
      MEMORY[0x22AAD4E50](v67, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
  }
}

void sub_229753228()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 208);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_229716310(*(v2 + 16), 0);
    v5 = sub_229715980(v52, (v4 + 32), v3, v2);

    sub_22953EE84();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = sub_22974D780(v4);

  v7 = sub_229672A20(v6);

  swift_beginAccess();
  v8 = *(v1 + 168);

  v9 = sub_22974E22C(v7, v8);
  v10 = *(v1 + 168);

  v12 = sub_22974E22C(v11, v7);

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = v9 & 0xC000000000000001;
    if (!sub_22A4DE0EC())
    {
LABEL_9:
      if (v13)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_11;
        }
      }

      else if (*(v9 + 16))
      {
        goto LABEL_11;
      }

      return;
    }
  }

  else
  {
    v13 = v9 & 0xC000000000000001;
    if (!*(v12 + 16))
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v43 = v12 & 0xC000000000000001;
  v44 = v9;
  v45 = v12;
  if (v13)
  {

    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D880970, off_278666228);
    sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
    sub_22A4DDBAC();
    v9 = v47;
    v14 = v48;
    v15 = v49;
    v16 = v50;
    v17 = v51;
  }

  else
  {
    v18 = -1 << *(v9 + 32);
    v14 = v9 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v9 + 56);

    v16 = 0;
  }

  v42 = v15;
  v21 = (v15 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (!v17)
    {
      break;
    }

LABEL_22:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v9 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
LABEL_28:
      sub_22953EE84();
      swift_beginAccess();
      sub_22975E460(v44, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_229579350);
      swift_endAccess();

      if (v43)
      {

        sub_22A4DE09C();
        sub_229562F68(0, &unk_27D880970, off_278666228);
        sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
        sub_22A4DDBAC();
        v29 = v52[0];
        v28 = v52[1];
        v30 = v52[2];
        v31 = v52[3];
        v32 = v52[4];
      }

      else
      {
        v29 = v45;
        v33 = -1 << *(v45 + 32);
        v28 = v45 + 56;
        v30 = ~v33;
        v34 = -v33;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v32 = v35 & *(v45 + 56);

        v31 = 0;
      }

      v36 = (v30 + 64) >> 6;
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v37 = v31;
        v38 = v32;
        v39 = v31;
        if (!v32)
        {
          break;
        }

LABEL_39:
        v40 = (v38 - 1) & v38;
        v41 = *(*(v29 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v41)
        {
LABEL_45:
          sub_22953EE84();
          swift_beginAccess();
          sub_229594CB4(v45);
          swift_endAccess();
          return;
        }

        while (1)
        {
          [*(v1 + 176) addObserver:v1 selector:sel_handleNaturalLightingProfileStateChangedWithNotification_ name:@"HMDLightProfile.SettingsUpdated" object:{v41, v42}];

          v31 = v39;
          v32 = v40;
          if ((v29 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_41:
          if (sub_22A4DE12C())
          {
            sub_229562F68(0, &unk_27D880970, off_278666228);
            swift_dynamicCast();
            v41 = v46;
            v39 = v31;
            v40 = v32;
            if (v46)
            {
              continue;
            }
          }

          goto LABEL_45;
        }
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_49;
        }

        if (v39 >= v36)
        {
          goto LABEL_45;
        }

        v38 = *(v28 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_39;
        }
      }
    }

    while (1)
    {
      [*(v1 + 176) removeObserver:v1 name:@"HMDLightProfile.SettingsUpdated" object:{v26, v42}];

      v16 = v24;
      v17 = v25;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      v27 = sub_22A4DE12C();
      if (v27)
      {
        v46 = v27;
        sub_229562F68(0, &unk_27D880970, off_278666228);
        swift_dynamicCast();
        v26 = v52[0];
        v24 = v16;
        v25 = v17;
        if (v52[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_28;
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_22975381C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = v76 - v4;
  swift_beginAccess();
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_229716310(*(v5 + 16), 0);
    v8 = sub_229715980(v87, (v7 + 32), v6, v5);

    sub_22953EE84();
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = sub_22974CCF4(v7);

  v10 = sub_229762550(v7, v1);

  v11 = sub_2296729C0(v10);

  v87[0] = v9;
  sub_2296F0B94(v11);
  v12 = sub_2296729C0(v87[0]);

  swift_beginAccess();
  v13 = *(v1 + 112);

  v14 = sub_22974DFCC(v12, v13);
  v15 = *(v1 + 112);

  v17 = sub_22974DFCC(v16, v12);

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_17;
    }
  }

  else if (*(v14 + 16))
  {
    goto LABEL_17;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_17;
    }
  }

  else if (*(v17 + 16))
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v18 = *(v1 + 120);
  if ((v18 & 0xC000000000000001) != 0)
  {
    if (v18 < 0)
    {
      v19 = *(v1 + 120);
    }

    v20 = *(v1 + 120);

    v21 = sub_22A4DE0EC();

    if (v21)
    {
      goto LABEL_17;
    }

LABEL_55:

    return;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_55;
  }

LABEL_17:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v1 + 200);
    v23 = swift_getObjectType();
    (*(v22 + 16))(v14, v1, v23, v22);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_22975E460(v14, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  swift_endAccess();
  swift_beginAccess();
  sub_22975E460(v14, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  swift_endAccess();
  v24 = *(v1 + 112);

  sub_22974CA70(v25);
  v27 = v26;

  v28 = sub_2296729F0(v27);

  v76[0] = v17;
  sub_22974CA70(v17);
  v30 = sub_2296729F0(v29);

  v31 = sub_22974E10C(v28, v30);
  sub_22974CA70(v14);
  v33 = v32;

  v34 = sub_2296729F0(v33);

  v35 = sub_22974E10C(v28, v34);

  v36 = sub_22974E10C(v31, v35);
  v37 = v36;
  if ((v36 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
    sub_22A4DDBAC();
    v37 = v82;
    v38 = v83;
    v39 = v84;
    v40 = v85;
    v41 = v86;
  }

  else
  {
    v40 = 0;
    v42 = -1 << *(v36 + 32);
    v38 = v36 + 56;
    v39 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v36 + 56);
  }

  v76[1] = v39;
  v45 = (v39 + 64) >> 6;
  v79 = @"HMDAccessoryCharacteristicsChangedNotification";
  if (v37 < 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v46 = v40;
    v47 = v41;
    v48 = v40;
    if (!v41)
    {
      break;
    }

LABEL_30:
    v49 = (v47 - 1) & v47;
    v50 = *(*(v37 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v47)))));
    if (!v50)
    {
LABEL_36:
      sub_22953EE84();
      if ((v31 & 0xC000000000000001) != 0)
      {
        sub_22A4DE09C();
        sub_229562F68(0, &qword_281401B70, off_278666148);
        sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
        sub_22A4DDBAC();
        v31 = v87[0];
        v52 = v87[1];
        v53 = v87[2];
        v54 = v87[3];
        v55 = v87[4];
      }

      else
      {
        v54 = 0;
        v56 = -1 << *(v31 + 32);
        v52 = v31 + 56;
        v53 = ~v56;
        v57 = -v56;
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v55 = v58 & *(v31 + 56);
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      while (1)
      {
        v59 = v54;
        v60 = v55;
        v61 = v54;
        if (!v55)
        {
          break;
        }

LABEL_47:
        v62 = (v60 - 1) & v60;
        v63 = *(*(v31 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));
        if (!v63)
        {
LABEL_53:
          sub_22953EE84();
          swift_beginAccess();
          v65 = v76[0];

          sub_229594A74(v66);
          swift_endAccess();
          v67 = *(v1 + 120);

          sub_229839D7C(v68, v65);
          v70 = v69;
          v71 = sub_22A4DD9DC();
          v72 = v77;
          (*(*(v71 - 8) + 56))(v77, 1, 1, v71);
          v74 = sub_229763570(&qword_27D880958, v73, type metadata accessor for ActionSetState.Observer);
          v75 = swift_allocObject();
          v75[2] = v1;
          v75[3] = v74;
          v75[4] = v1;
          v75[5] = v70;
          v75[6] = ObjectType;
          swift_retain_n();
          sub_22957F3C0(0, 0, v72, &unk_22A581E08, v75);

          return;
        }

        while (1)
        {
          [*(v1 + 176) addObserver:v1 selector:sel_handleWithCharacteristicsChangedNotification_ name:v79 object:v63];

          v54 = v61;
          v55 = v62;
          if ((v31 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_49:
          v64 = sub_22A4DE12C();
          if (v64)
          {
            v80 = v64;
            sub_229562F68(0, &qword_281401B70, off_278666148);
            swift_dynamicCast();
            v63 = v81;
            v61 = v54;
            v62 = v55;
            if (v81)
            {
              continue;
            }
          }

          goto LABEL_53;
        }
      }

      while (1)
      {
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_57;
        }

        if (v61 >= ((v53 + 64) >> 6))
        {
          goto LABEL_53;
        }

        v60 = *(v52 + 8 * v61);
        ++v59;
        if (v60)
        {
          goto LABEL_47;
        }
      }
    }

    while (1)
    {
      [*(v1 + 176) removeObserver:v1 name:v79 object:v50];

      v40 = v48;
      v41 = v49;
      if ((v37 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_32:
      v51 = sub_22A4DE12C();
      if (v51)
      {
        v81 = v51;
        sub_229562F68(0, &qword_281401B70, off_278666148);
        swift_dynamicCast();
        v50 = v87[0];
        v48 = v40;
        v49 = v41;
        if (v87[0])
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v45)
    {
      goto LABEL_36;
    }

    v47 = *(v38 + 8 * v48);
    ++v46;
    if (v47)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_22975412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = sub_22A4DD07C();
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229754200, a4, 0);
}

uint64_t sub_229754200()
{
  v31 = v0;
  v1 = v0[11];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = *(v0[11] + 200);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v28 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_229754518;
    v8 = v0[11];
    v9 = v0[12];

    return v28(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[17];
    v12 = v0[12];
    sub_229541CB0(v0[13], &off_283CE36C8);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[17];
    v18 = v0[14];
    v17 = v0[15];
    if (v15)
    {
      v19 = v0[12];
      v29 = v0[14];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      sub_22959E62C(&qword_27D87D580, &unk_27D87E490, off_2786660B8);
      v22 = sub_22A4DDB7C();
      v24 = sub_2295A3E30(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_229538000, v13, v14, "Error subscribing to characteristics :%s due to nil dataSource", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);

      (*(v17 + 8))(v16, v29);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v26 = v0[16];
    v25 = v0[17];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_229754518(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_229754630, v3, 0);
}

void sub_229754630(__n128 a1)
{
  v44 = v1;
  v2 = v1[20];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v28 = v1[20];
    }

    v3 = sub_22A4DE0EC();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = v1[11];
  v6 = v2 & 0xC000000000000001;
  v41 = v1[20] + 32;
  v42 = (v1[15] + 8);
  a1.n128_u64[0] = 138412290;
  v38 = a1;
  v39 = v3;
  v40 = v5;
  do
  {
    if (v6)
    {
      v12 = MEMORY[0x22AAD13F0](v4, v1[20]);
    }

    else
    {
      v12 = *(v41 + 8 * v4);
    }

    v13 = v12;
    v14 = [v12 error];
    if (v14)
    {
      v15 = v1[16];
      v16 = v1[13];

      sub_229541CB0(v16, &off_283CE36C8);
      v17 = v13;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCEC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = v38.n128_u32[0];
        v22 = v6;
        v23 = [v17 request];
        v24 = [v23 characteristic];

        v6 = v22;
        *(v20 + 4) = v24;
        *v21 = v24;
        _os_log_impl(&dword_229538000, v18, v19, "Error monitoring characteristic: %@, will retry", v20, 0xCu);
        sub_22953EAE4(v21, &qword_27D87D7D0, &unk_22A578D90);
        v25 = v21;
        v3 = v39;
        v5 = v40;
        MEMORY[0x22AAD4E50](v25, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);
      }

      v7 = v1[16];
      v8 = v1[14];

      (*v42)(v7, v8);
      v9 = [v17 request];
      v10 = [v9 characteristic];

      swift_beginAccess();
      sub_229571F28(&v43, v10);
      v11 = v43;
      swift_endAccess();

      [*(v5 + 152) resume];
    }

    else
    {
      v26 = [v13 request];
      v27 = [v26 characteristic];

      swift_beginAccess();
      v17 = sub_22957932C(v27);
      swift_endAccess();
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_17:
  v29 = v1[20];

  v30 = v1[11];
  swift_beginAccess();
  v31 = *(v30 + 120);
  if ((v31 & 0xC000000000000001) == 0)
  {
    if (*(v31 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v32 = sub_22A4DE0EC();

  if (!v32)
  {
LABEL_19:
    [*(v1[11] + 152) reset];
  }

LABEL_20:
  v33 = v1[18];
  v34 = v1[11];
  sub_2297564E4();
  swift_unknownObjectRelease();
  v36 = v1[16];
  v35 = v1[17];

  v37 = v1[1];

  v37();
}

uint64_t sub_229754A38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v163 = sub_22A4DD07C();
  v3 = *(v163 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v163);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v172 = &v151 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v151 - v11;
  MEMORY[0x28223BE20](v10);
  v173 = &v151 - v13;
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v171 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v174 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v151 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v151 - v26;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_229538000, v39, v40, "Unable to evaluate subscriptions, failed to get controller identifier from data source", v41, 2u);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    return (*(v3 + 8))(v7, v163);
  }

  v155 = ObjectType;
  v154 = v12;
  v152 = v3;
  v28 = v0[25];
  v29 = swift_getObjectType();
  (*(v28 + 80))(v0, v29, v28);
  swift_unknownObjectRelease();
  v157 = v15;
  v30 = *(v15 + 32);
  v161 = v14;
  v30(v27, v25, v14);
  result = swift_beginAccess();
  v32 = v0[26];
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  v170 = v1;
  if (v33)
  {
    v34 = sub_229716310(v33, 0);
    v35 = sub_229715980(v178, (v34 + 32), v33, v32);

    result = sub_22953EE84();
    if (v35 != v33)
    {
      goto LABEL_86;
    }

    v1 = v170;
  }

  MEMORY[0x28223BE20](result);
  *(&v151 - 2) = v1;
  *(&v151 - 1) = v27;
  v160 = v27;
  v36 = sub_22974DB0C(sub_229763554, (&v151 - 4), v34);

  v37 = sub_229672A50(v36);

  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = sub_22A4DE0EC();
  }

  else
  {
    v38 = *(v37 + 16);
  }

  v42 = v161;
  if (!v38)
  {
    v43 = v1[17];
    if ((v43 & 0xC000000000000001) != 0)
    {
      if (v43 < 0)
      {
        v44 = v1[17];
      }

      v45 = v1[17];

      v46 = sub_22A4DE0EC();

      if (v46)
      {
        goto LABEL_16;
      }
    }

    else if (*(v43 + 16))
    {
      goto LABEL_16;
    }

    (*(v157 + 8))(v160, v42);
  }

LABEL_16:
  v153 = v37 & 0xC000000000000001;
  v47 = v1[16];
  if (!v47)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = v1[25];
      v49 = swift_getObjectType();
      v50 = (*(v48 + 96))(v160, v1, v49, v48);
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0;
    }

    v51 = v1[16];
    v1[16] = v50;
    swift_unknownObjectRelease();
    v47 = v1[16];
    if (!v47)
    {

      v117 = v172;
      sub_229541CB0(v155, &off_283CE36C8);
      v118 = v157;
      v119 = v171;
      v120 = v160;
      (*(v157 + 16))(v171, v160, v42);
      v121 = sub_22A4DD05C();
      v122 = sub_22A4DDCEC();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v178[0] = v124;
        *v123 = 136315138;
        sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
        v125 = sub_22A4DE5CC();
        v126 = v42;
        v128 = v127;
        v129 = *(v118 + 8);
        v130 = v119;
        v131 = v126;
        v129(v130, v126);
        v132 = sub_2295A3E30(v125, v128, v178);
        v133 = v117;
        v134 = v132;

        *(v123 + 4) = v134;
        _os_log_impl(&dword_229538000, v121, v122, "Unable to create matter device controller for identifier %s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x22AAD4E50](v124, -1, -1);
        MEMORY[0x22AAD4E50](v123, -1, -1);

        (*(v152 + 8))(v133, v163);
        return (v129)(v160, v131);
      }

      else
      {

        v149 = *(v118 + 8);
        v149(v119, v42);
        (*(v152 + 8))(v117, v163);
        return (v149)(v120, v42);
      }
    }
  }

  v52 = v1[17];
  swift_unknownObjectRetain();

  v54 = v37;
  v55 = sub_22974E36C(v53, v37);

  v56 = v1[17];

  v159 = v54;
  v57 = sub_22974E36C(v54, v56);
  if ((v55 & 0xC000000000000001) != 0)
  {
    v58 = sub_22A4DE0EC();
  }

  else
  {
    v58 = *(v55 + 16);
  }

  v59 = v174;
  v169 = v47;
  if (v58)
  {
    goto LABEL_29;
  }

  if ((v57 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_29;
    }

LABEL_80:

    v137 = v173;
    sub_229541CB0(v155, &off_283CE36C8);
    v138 = v157;
    v139 = v160;
    (*(v157 + 16))(v59, v160, v42);
    v140 = sub_22A4DD05C();
    v141 = sub_22A4DDCDC();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v178[0] = v143;
      *v142 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v144 = sub_22A4DE5CC();
      v146 = v145;
      v147 = *(v138 + 8);
      v147(v59, v42);
      v148 = sub_2295A3E30(v144, v146, v178);

      *(v142 + 4) = v148;
      _os_log_impl(&dword_229538000, v140, v141, "No changes for attributes to monitor %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v143);
      MEMORY[0x22AAD4E50](v143, -1, -1);
      MEMORY[0x22AAD4E50](v142, -1, -1);

      swift_unknownObjectRelease();
      (*(v152 + 8))(v173, v163);
      return (v147)(v160, v42);
    }

    else
    {

      swift_unknownObjectRelease();
      v150 = *(v138 + 8);
      v150(v59, v42);
      (*(v152 + 8))(v137, v163);
      return (v150)(v139, v42);
    }
  }

  if (!*(v57 + 16))
  {
    goto LABEL_80;
  }

LABEL_29:
  v60 = v1[17];

  v61 = sub_2297612DC(v159, v60);

  sub_229839DAC(v62, v61);
  v164 = v63;
  sub_229839DAC(v57, v55);
  v65 = sub_22974C758(v64);

  v66 = sub_229672A80(v65);

  if ((v66 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    sub_22959E62C(&qword_27D87E460, &qword_281401770, 0x277CCABB0);
    result = sub_22A4DDBAC();
    v66 = v177[5];
    v67 = v177[6];
    v68 = v177[7];
    v69 = v177[8];
    v70 = v177[9];
  }

  else
  {
    v69 = 0;
    v71 = -1 << *(v66 + 32);
    v67 = v66 + 56;
    v68 = ~v71;
    v72 = -v71;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v70 = v73 & *(v66 + 56);
  }

  v151 = v68;
  v74 = (v68 + 64) >> 6;
  v168 = v164 & 0xC000000000000001;
  v75 = v164 & 0xFFFFFFFFFFFFFF8;
  if (v164 < 0)
  {
    v75 = v164;
  }

  v162 = v75;
  v156 = v164 + 56;
  v167 = v66;
  v166 = v67;
  v165 = (v68 + 64) >> 6;
LABEL_39:
  if (v66 < 0)
  {
    v81 = sub_22A4DE12C();
    if (!v81)
    {
      goto LABEL_67;
    }

    v176 = v81;
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    swift_dynamicCast();
    v79 = v69;
    v80 = v70;
    v173 = v177[0];
    if (!v177[0])
    {
      goto LABEL_67;
    }
  }

  else
  {
    v77 = v69;
    v78 = v70;
    v79 = v69;
    if (!v70)
    {
      while (1)
      {
        v79 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_85;
        }

        if (v79 >= v74)
        {
          break;
        }

        v78 = *(v67 + 8 * v79);
        ++v77;
        if (v78)
        {
          goto LABEL_44;
        }
      }

LABEL_67:

      sub_22953EE84();
      v101 = v159;
      if (v153)
      {
        v102 = sub_22A4DE0EC();
      }

      else
      {
        v102 = *(v159 + 16);
      }

      v103 = v161;
      v104 = v154;
      v105 = v158;
      if (v102)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_229541CB0(v155, &off_283CE36C8);
        v106 = v157;
        (*(v157 + 16))(v105, v160, v103);
        v107 = sub_22A4DD05C();
        v108 = sub_22A4DDCCC();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v177[0] = v110;
          *v109 = 136315138;
          sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0]);
          v111 = sub_22A4DE5CC();
          v112 = v105;
          v114 = v113;
          (*(v106 + 8))(v112, v103);
          v115 = sub_2295A3E30(v111, v114, v177);

          *(v109 + 4) = v115;
          _os_log_impl(&dword_229538000, v107, v108, "Shutting down matter device controller %s as its no longer needed", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          v116 = v110;
          v47 = v169;
          MEMORY[0x22AAD4E50](v116, -1, -1);
          MEMORY[0x22AAD4E50](v109, -1, -1);
        }

        else
        {

          (*(v106 + 8))(v105, v103);
        }

        (*(v152 + 8))(v104, v163);
        [v47 shutdown];
        swift_unknownObjectRelease();
        v135 = v1[16];
        v1[16] = 0;
        swift_unknownObjectRelease();
        v101 = v159;
      }

      v136 = v1[17];
      v1[17] = v101;

      return (*(v157 + 8))(v160, v103);
    }

LABEL_44:
    v80 = (v78 - 1) & v78;
    v173 = *(*(v66 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v78)))));
    if (!v173)
    {
      goto LABEL_67;
    }
  }

  v172 = v80;
  v177[0] = MEMORY[0x277D84F90];
  if (v168)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
    sub_22A4DDBAC();
    result = v178[0];
    v82 = v178[1];
    v83 = v178[2];
    v84 = v178[3];
    v85 = v178[4];
  }

  else
  {
    v86 = -1 << *(v164 + 32);
    v83 = ~v86;
    v87 = -v86;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v85 = v88 & *(v164 + 56);

    v84 = 0;
    v82 = v156;
  }

  v89 = v173;
  v171 = v83;
  v90 = (v83 + 64) >> 6;
  v174 = result;
  while (result < 0)
  {
    v96 = sub_22A4DE12C();
    if (!v96 || (v175 = v96, sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58), swift_dynamicCast(), v95 = v176, v93 = v84, v94 = v85, !v176))
    {
LABEL_38:
      sub_22953EE84();
      v76 = sub_229672AB0(v177[0]);

      v47 = v169;
      v1 = v170;
      sub_229755CDC(v89, v169, v76);

      v69 = v79;
      v70 = v172;
      v66 = v167;
      v67 = v166;
      v74 = v165;
      goto LABEL_39;
    }

LABEL_65:
    v97 = [v95 nodeID];
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v98 = sub_22A4DDEDC();

    v99 = MEMORY[0x277D84FA0];
    if (v98)
    {
      v100 = [v95 attributePaths];
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      v89 = v173;
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v99 = sub_22A4DDB6C();
    }

    sub_2296F0D2C(v99);
    v84 = v93;
    v85 = v94;
    result = v174;
  }

  v91 = v84;
  v92 = v85;
  v93 = v84;
  if (v85)
  {
LABEL_61:
    v94 = (v92 - 1) & v92;
    v95 = *(*(result + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v92)))));
    if (!v95)
    {
      goto LABEL_38;
    }

    goto LABEL_65;
  }

  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v93 >= v90)
    {
      goto LABEL_38;
    }

    v92 = *(v82 + 8 * v93);
    ++v91;
    if (v92)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}