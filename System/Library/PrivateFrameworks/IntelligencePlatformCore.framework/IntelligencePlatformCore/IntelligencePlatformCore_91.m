uint64_t sub_1C4C1AFA4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64) + 8;
  (*(v0 + 112))(*(v0 + 88), *(v0 + 56));

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4C1B05C()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v1[3] = v2;
  v1[4] = v3;
  v4 = sub_1C4EF9CD8();
  v1[6] = v4;
  sub_1C43FCF7C(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4C1B10C()
{
  v1 = v0[5];
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = objc_autoreleasePoolPush();
  sub_1C4C1B22C(v1, v0 + 2, v3, v2);
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = *(v0 + 4);
  objc_autoreleasePoolPop(v4);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  if (*(v8 + 24) < v9 && v11 > v9)
  {
    *(v8 + 24) = v0[4];
  }

  v13 = v0[8];

  sub_1C43FC1B0();

  return v14();
}

uint64_t sub_1C4C1B22C(void *a1, uint64_t *a2, double a3, double a4)
{
  v200 = a2;
  v7 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v184 = *(v7 - 8);
  v185 = v7;
  v8 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v183 = &v180 - v9;
  v10 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v181 = *(v10 - 8);
  v182 = v10;
  v11 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v180 - v12;
  v13 = sub_1C4EFE0D8();
  v192 = *(v13 - 8);
  v193 = v13;
  v14 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0C4D28, &qword_1C4F5E180);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v189 = &v180 - v18;
  v190 = sub_1C4EFDB78();
  v187 = *(v190 - 8);
  v19 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C456902C(&qword_1EC0C4D30, &qword_1C4F5E188);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v197 = &v180 - v23;
  v24 = sub_1C4EFE228();
  v198 = *(v24 - 8);
  v199 = v24;
  v25 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v188 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v195 = &v180 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v194 = &v180 - v30;
  v31 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v204 = (&v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v203 = &v180 - v35;
  v36 = sub_1C456902C(&qword_1EC0C4D38, &qword_1C4F5E2E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v180 - v38;
  v40 = sub_1C456902C(&qword_1EC0C4D40, &qword_1C4F5E190);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v180 - v42;
  v44 = sub_1C4EFE248();
  v206 = *(v44 - 8);
  v207 = v44;
  v45 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v196 = &v180 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v210 = &v180 - v48;
  v209 = sub_1C456902C(&qword_1EC0C4D48, &qword_1C4F5E198);
  v201 = *(v209 - 8);
  v49 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v51 = &v180 - v50;
  v208 = a1;
  v52 = a1[7];
  v53 = a1[8];
  sub_1C4409678(a1 + 4, v52);
  v54 = *((*(v53 + 8))(v52, v53) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);

  sub_1C4EFF138();
  v55 = MEMORY[0x1E69A9860];
  sub_1C4C1F314(&qword_1EC0C4D50, MEMORY[0x1E69A9860]);
  sub_1C4C1F314(&qword_1EC0C4D58, v55);
  sub_1C4EFF268();
  v202 = *&a4;
  v56 = *MEMORY[0x1E69A9600];
  v57 = sub_1C4EFE098();
  (*(*(v57 - 8) + 104))(v43, v56, v57);
  sub_1C440BAA8(v43, 0, 1, v57);
  v58 = sub_1C4F00258();
  sub_1C440BAA8(v39, 1, 1, v58);
  v59 = sub_1C4EFF0C8();
  sub_1C440BAA8(v203, 1, 1, v59);
  sub_1C440BAA8(v204, 1, 1, v59);
  v61 = v209;
  v60 = v210;
  sub_1C4EFE238();
  v62 = v208[19];
  v63 = sub_1C4EF93D8();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_1C4EF93C8();
  v67 = v205;
  v68 = sub_1C4EFF258();
  v69 = v67;
  if (v67)
  {

    (*(v206 + 8))(v60, v207);
    result = (*(v201 + 8))(v51, v61);
    *v200 = v67;
  }

  else
  {
    v71 = v68;
    v204 = v62;
    v205 = v51;
    if (v68)
    {
      v203 = v66;
      v72 = *(v68 + 16);
      if (v72)
      {
        v215 = MEMORY[0x1E69E7CC0];
        sub_1C459EFF8();
        v73 = 0;
        v74 = v215;
        v75 = v71 + 32;
        do
        {
          if (v73 >= *(v71 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v60 = v71;
          sub_1C4609884(v75, &v211);
          sub_1C4409678(&v211, v213);
          sub_1C4EFF278();
          sub_1C440962C(&v211);
          v215 = v74;
          v69 = *(v74 + 16);
          if (v69 >= *(v74 + 24) >> 1)
          {
            sub_1C459EFF8();
            v74 = v215;
          }

          ++v73;
          *(v74 + 16) = v69 + 1;
          sub_1C441D670(&v214, v74 + 40 * v69 + 32);
          v75 += 48;
        }

        while (v72 != v73);

        (*(v206 + 16))(v196, v210, v207);
        v117 = sub_1C4EFE208();
        sub_1C440BAA8(v197, 1, 1, v117);
        sub_1C4EFE1F8();
        v118 = v208[20];
        v119 = sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
        v120 = *(v119 + 48);
        v121 = *(v119 + 52);
        swift_allocObject();
        v122 = v118;
        v127 = sub_1C4EFF738();
        sub_1C4EFE218();
        v197 = v127;
        v128 = v191;
        v129 = v192;
        v130 = v193;
        (*(v192 + 104))(v191, *MEMORY[0x1E69A9610]);

        sub_1C4EFE0C8();
        v202 = 0;
        (*(v129 + 8))(v128, v130);

        if (v213)
        {
          sub_1C456902C(&qword_1EC0B8F88, &qword_1C4F0EA60);
          v131 = v189;
          v132 = v190;
          v133 = swift_dynamicCast();
          sub_1C440BAA8(v131, v133 ^ 1u, 1, v132);
          if (sub_1C44157D4(v131, 1, v132) != 1)
          {
            v134 = v186;
            (*(v187 + 32))(v186, v131, v132);
            v196 = sub_1C4EFDB68();
            v135 = sub_1C4EFDB58();
            v136 = v180;
            sub_1C4EFF5C8();
            v137 = v182;
            sub_1C4EF9408();
            v139 = v138;
            v140 = *(v181 + 8);
            v140(v136, v137);
            sub_1C4EFF5E8();
            sub_1C4EF9408();
            v142 = v141;
            v140(v136, v137);
            v143 = v183;
            sub_1C4EFF5D8();
            v144 = v185;
            sub_1C4EF9408();
            v146 = v145;
            (*(v184 + 8))(v143, v144);
            sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C4F17D00;
            *(inited + 32) = 0x696669746E656469;
            *(inited + 40) = 0xEA00000000007265;
            v148 = sub_1C4EFDB48();
            v149 = MEMORY[0x1E69E6158];
            *(inited + 48) = v148;
            *(inited + 56) = v150;
            *(inited + 72) = v149;
            *(inited + 80) = 0x6D69547472617473;
            *(inited + 88) = 0xE900000000000065;
            v151 = MEMORY[0x1E69E63B0];
            *(inited + 96) = a3;
            *(inited + 120) = v151;
            *(inited + 128) = 0x656D6954646E65;
            *(inited + 136) = 0xE700000000000000;
            *(inited + 144) = a4;
            *(inited + 168) = v151;
            *(inited + 176) = 0x65726F6373;
            *(inited + 184) = 0xE500000000000000;
            sub_1C4EFDB58();
            sub_1C4EFF5F8();
            v153 = v152;

            *(inited + 192) = v153;
            *(inited + 216) = v151;
            *(inited + 224) = 0x65636E6174736964;
            *(inited + 232) = 0xE800000000000000;
            *(inited + 240) = v139;
            *(inited + 264) = v151;
            strcpy((inited + 272), "elevationGain");
            *(inited + 286) = -4864;
            *(inited + 288) = v142;
            *(inited + 312) = v151;
            *(inited + 320) = 0x6E6F697461727564;
            *(inited + 328) = 0xE800000000000000;
            *(inited + 336) = v146;
            *(inited + 360) = v151;
            *(inited + 368) = 0x6177686769487369;
            v69 = v202;
            *(inited + 376) = 0xE900000000000079;
            v154 = MEMORY[0x1E69E6370];
            *(inited + 384) = 0;
            *(inited + 408) = v154;
            *(inited + 416) = 0x797469437369;
            *(inited + 424) = 0xE600000000000000;
            *(inited + 432) = 0;
            *(inited + 456) = v154;
            *(inited + 464) = 0x656D614E64616F72;
            *(inited + 472) = 0xE900000000000073;
            *(inited + 480) = 0u;
            *(inited + 496) = 0u;
            *(inited + 512) = 0x65746E6F4373746BLL;
            *(inited + 520) = 0xEA00000000007478;
            *(inited + 552) = sub_1C4EFFFB8();
            *(inited + 528) = v196;
            *(inited + 560) = 0x6174614473746BLL;
            *(inited + 568) = 0xE700000000000000;
            *(inited + 600) = sub_1C4EFFE08();
            *(inited + 576) = v135;

            sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
            v112 = sub_1C4F00F28();

            (*(v187 + 8))(v134, v132);
            (*(v198 + 8))(v195, v199);
            goto LABEL_19;
          }
        }

        else
        {
          sub_1C4423A0C(&v211, &qword_1EC0C4D60, &qword_1C4F5E1A8);
          v131 = v189;
          sub_1C440BAA8(v189, 1, 1, v190);
        }

        sub_1C4423A0C(v131, &qword_1EC0C4D28, &qword_1C4F5E180);
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v155 = sub_1C4F00978();
        sub_1C442B738(v155, qword_1EDE2DF70);
        v156 = v198;
        v157 = v199;
        v158 = *(v198 + 16);
        v159 = v188;
        v158(v188, v195, v199);
        v160 = sub_1C4F00968();
        v161 = sub_1C4F01CD8();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          LODWORD(v208) = v161;
          v163 = v156;
          v164 = v162;
          v202 = v162;
          v204 = swift_slowAlloc();
          v211 = v204;
          *v164 = 136315138;
          v158(v194, v159, v157);
          v165 = v157;
          v166 = sub_1C4F01198();
          v168 = v167;
          v169 = *(v163 + 8);
          v169(v159, v165);
          v170 = sub_1C441D828(v166, v168, &v211);

          v171 = v202;
          *(v202 + 4) = v170;
          v172 = v169;
          _os_log_impl(&dword_1C43F8000, v160, v208, "KTSError: Could not combine result for request %s", v171, 0xCu);
          v173 = v204;
          sub_1C440962C(v204);
          MEMORY[0x1C6942830](v173, -1, -1);
          MEMORY[0x1C6942830](v171, -1, -1);
        }

        else
        {

          v172 = *(v156 + 8);
          v172(v159, v157);
          v165 = v157;
        }

        v174 = sub_1C4F001F8();
        sub_1C4C1F314(&qword_1EC0C4D68, MEMORY[0x1E69A9DA8]);
        v175 = swift_allocError();
        v177 = v176;
        v211 = 0;
        v212 = 0xE000000000000000;
        sub_1C4F02248();
        MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4FBA2B0);
        v178 = v195;
        sub_1C4F02438();
        v179 = v212;
        *v177 = v211;
        v177[1] = v179;
        (*(*(v174 - 8) + 104))(v177, *MEMORY[0x1E69A9DA0], v174);
        swift_willThrow();

        v172(v178, v165);
        (*(v206 + 8))(v210, v207);
        result = (*(v201 + 8))(v205, v209);
        *v200 = v175;
      }

      else
      {

        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v87 = sub_1C4F00978();
        sub_1C442B738(v87, qword_1EDE2DF70);
        v88 = sub_1C4F00968();
        v89 = sub_1C4F01CB8();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v211 = v91;
          *v90 = 136315394;
          v92 = sub_1C4F019E8();
          v94 = sub_1C441D828(v92, v93, &v211);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          v95 = sub_1C4F019E8();
          v97 = sub_1C441D828(v95, v96, &v211);

          *(v90 + 14) = v97;
          _os_log_impl(&dword_1C43F8000, v88, v89, "KTSCadenceViewGenerator: no results for query from %s to %s", v90, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v91, -1, -1);
          MEMORY[0x1C6942830](v90, -1, -1);
        }

        v98 = v194;
        v99 = v197;
        (*(v206 + 16))(v196, v210, v207);
        v100 = sub_1C4EFE208();
        sub_1C440BAA8(v99, 1, 1, v100);
        sub_1C4EFE1F8();
        v101 = sub_1C4EFFE08();
        v102 = sub_1C4EFFDF8();

        sub_1C4EFF628();
        sub_1C4EFF608();

        sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1C4F17D00;
        *(v103 + 32) = 0x696669746E656469;
        *(v103 + 40) = 0xEA00000000007265;
        v104 = sub_1C4EFE218();
        v105 = MEMORY[0x1E69E6158];
        *(v103 + 48) = v104;
        *(v103 + 56) = v106;
        *(v103 + 72) = v105;
        *(v103 + 80) = 0x6D69547472617473;
        *(v103 + 88) = 0xE900000000000065;
        v107 = MEMORY[0x1E69E63B0];
        *(v103 + 96) = a3;
        *(v103 + 120) = v107;
        *(v103 + 128) = 0x656D6954646E65;
        *(v103 + 136) = 0xE700000000000000;
        *(v103 + 144) = a4;
        *(v103 + 168) = v107;
        *(v103 + 176) = 0x65726F6373;
        v108 = MEMORY[0x1E69E6530];
        *(v103 + 184) = 0xE500000000000000;
        *(v103 + 192) = 0;
        *(v103 + 216) = v108;
        *(v103 + 224) = 0x65636E6174736964;
        *(v103 + 232) = 0xE800000000000000;
        *(v103 + 240) = 0;
        *(v103 + 264) = v108;
        strcpy((v103 + 272), "elevationGain");
        *(v103 + 286) = -4864;
        *(v103 + 288) = 0;
        *(v103 + 312) = v108;
        *(v103 + 320) = 0x6E6F697461727564;
        *(v103 + 328) = 0xE800000000000000;
        *(v103 + 336) = 0;
        *(v103 + 360) = v108;
        *(v103 + 368) = 0x6177686769487369;
        *(v103 + 376) = 0xE900000000000079;
        v109 = MEMORY[0x1E69E6370];
        *(v103 + 384) = 0;
        *(v103 + 408) = v109;
        *(v103 + 416) = 0x797469437369;
        *(v103 + 424) = 0xE600000000000000;
        *(v103 + 432) = 0;
        *(v103 + 456) = v109;
        *(v103 + 464) = 0x656D614E64616F72;
        *(v103 + 472) = 0xE900000000000073;
        *(v103 + 480) = 0u;
        *(v103 + 496) = 0u;
        *(v103 + 512) = 0x65746E6F4373746BLL;
        *(v103 + 520) = 0xEA00000000007478;
        v110 = sub_1C4EFFFB8();
        v111 = sub_1C4EFFFA8();
        *(v103 + 552) = v110;
        *(v103 + 528) = v111;
        *(v103 + 560) = 0x6174614473746BLL;
        *(v103 + 568) = 0xE700000000000000;
        *(v103 + 600) = v101;
        *(v103 + 576) = v102;
        sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
        v112 = sub_1C4F00F28();
        (*(v198 + 8))(v98, v199);
LABEL_19:
        v216 = v112;

        v113 = v69;
        v114 = sub_1C4C19AC4(v204, &v216);
        v115 = v201;
        v116 = v209;
        if (v113)
        {

          (*(v206 + 8))(v210, v207);
          (*(v115 + 8))(v205, v116);

          *v200 = v113;
        }

        else
        {
          v123 = v114;
          v124 = v208[17];
          v202 = v208[16];
          v200 = v124;
          v125 = v208[18];
          sub_1C456902C(&qword_1EC0B8870, &unk_1C4F0DC60);
          v126 = swift_initStackObject();
          *(v126 + 16) = xmmword_1C4F0D130;
          *(v126 + 32) = v123;
          sub_1C4C19F38(v126, v202, v200, v125, v204);

          swift_setDeallocating();
          sub_1C49E1600();
          (*(v206 + 8))(v210, v207);
          (*(v115 + 8))(v205, v116);
        }
      }
    }

    else
    {
      v202 = 0;
      v69 = v201;
      if (qword_1EDDFECD0 != -1)
      {
LABEL_35:
        swift_once();
      }

      v76 = sub_1C4F00978();
      sub_1C442B738(v76, qword_1EDE2DF70);
      v77 = sub_1C4F00968();
      v78 = sub_1C4F01CB8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v211 = v80;
        *v79 = 136315394;
        v81 = sub_1C4F019E8();
        v83 = sub_1C441D828(v81, v82, &v211);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2080;
        v84 = sub_1C4F019E8();
        v86 = sub_1C441D828(v84, v85, &v211);

        *(v79 + 14) = v86;
        _os_log_impl(&dword_1C43F8000, v77, v78, "KTSCadenceViewGenerator: no results for query from %s to %s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v80, -1, -1);
        MEMORY[0x1C6942830](v79, -1, -1);

        (*(v206 + 8))(v210, v207);
      }

      else
      {

        (*(v206 + 8))(v60, v207);
      }

      return (*(v69 + 8))(v205, v209);
    }
  }

  return result;
}

uint64_t sub_1C4C1CCE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  sub_1C465C2C4(*a1, v9, *a2);
  if (*(&v35 + 1) == 1)
  {
    v10 = &qword_1EC0BA6E0;
    v11 = &unk_1C4F5E2C0;
    v12 = &v34;
LABEL_7:
    sub_1C4423A0C(v12, v10, v11);
    goto LABEL_8;
  }

  v31 = v34;
  v32 = v35;
  if (!*(&v35 + 1))
  {
    v10 = &qword_1EC0BCD10;
    v11 = &qword_1C4F0C8C0;
    v12 = &v31;
    goto LABEL_7;
  }

  sub_1C4EFFE08();
  if (swift_dynamicCast())
  {
    *&v31 = v29;
    v13 = &unk_1EC0C4D78;
    v14 = MEMORY[0x1E69A9BE0];
    goto LABEL_13;
  }

LABEL_8:
  sub_1C465C2C4(v8, v9, *a2);
  if (*(&v35 + 1) == 1)
  {
    v15 = &qword_1EC0BA6E0;
    v16 = &unk_1C4F5E2C0;
    v17 = &v34;
LABEL_16:
    sub_1C4423A0C(v17, v15, v16);
LABEL_17:
    sub_1C465C2C4(v8, v9, *a2);
    if (*(&v30 + 1) == 1)
    {
      v21 = &qword_1EC0BA6E0;
      v22 = &unk_1C4F5E2C0;
      v23 = &v29;
    }

    else
    {
      v34 = v29;
      v35 = v30;
      if (*(&v30 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if (*(&v32 + 1))
          {
            return sub_1C441D670(&v31, a4);
          }
        }

        else
        {
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
        }

        goto LABEL_25;
      }

      v21 = &qword_1EC0BCD10;
      v22 = &qword_1C4F0C8C0;
      v23 = &v34;
    }

    sub_1C4423A0C(v23, v21, v22);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
LABEL_25:
    v24 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
    result = sub_1C4C1F2D0();
    v25 = MEMORY[0x1E69A0190];
    a4[3] = result;
    a4[4] = v25;
    *a4 = v24;
    if (*(&v32 + 1))
    {
      return sub_1C4423A0C(&v31, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    return result;
  }

  v31 = v34;
  v32 = v35;
  if (!*(&v35 + 1))
  {
    v15 = &qword_1EC0BCD10;
    v16 = &qword_1C4F0C8C0;
    v17 = &v31;
    goto LABEL_16;
  }

  sub_1C4EFFFB8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  *&v31 = v29;
  v13 = &unk_1EC0C4D70;
  v14 = MEMORY[0x1E69A9C60];
LABEL_13:
  sub_1C4C1F314(v13, v14);
  v18 = sub_1C4EF93B8();
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v26 = v18;
    v27 = v19;
    v28 = MEMORY[0x1E699FD70];
    a4[3] = MEMORY[0x1E6969080];
    a4[4] = v28;

    *a4 = v26;
    a4[1] = v27;
  }

  return result;
}

uint64_t sub_1C4C1D044()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v1[12] = sub_1C43FE604();
  v1[13] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[14] = v6;
  sub_1C43FCF7C(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = sub_1C43FE604();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4C1D748()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;
  *(v2 + 192) = v0;

  if (v0)
  {
    v8 = *(v2 + 72);

    v9 = sub_1C4C1DCC4;
  }

  else
  {
    v9 = sub_1C4C1D858;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4C1DCC4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 120) + 8;
  (*(v0 + 160))(*(v0 + 144), *(v0 + 112));

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4C1DD7C()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  v2 = sub_1C4EF9CD8();
  v1[3] = v2;
  sub_1C43FCF7C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_1C4F00978();
  v1[6] = v6;
  sub_1C43FCF7C(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4C1DE7C()
{
  v1 = v0[2];
  sub_1C4C1A148();
  v2 = v0[8];
  v3 = v0[5];
  sub_1C4CFDBF8(*(v0[2] + 128), *(v0[2] + 136), *(v0[2] + 144), *(v0[2] + 152));

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4C1E060()
{
  sub_1C440962C((v0 + 32));
  sub_1C440962C((v0 + 72));
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return v0;
}

uint64_t sub_1C4C1E0BC()
{
  sub_1C4C1E060();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C1E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = _s10ViewConfigVMa(0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44164BC();
  if (qword_1EDDFECD0 != -1)
  {
LABEL_57:
    sub_1C4400FC0();
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v16))
  {
    sub_1C43FD1A8();
    v17 = swift_slowAlloc();
    sub_1C441F048(v17);
    sub_1C441CEBC(&dword_1C43F8000, v18, v19, "KTSCadenceViewGenerationProvider: Giving the listener");
    sub_1C444007C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = *(a4 + 16);
  sub_1C443A738(a1, a2, v21, v22, v23, v24, v25, v26);
  if (v5)
  {
    goto LABEL_15;
  }

  v84 = a2;
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v28))
  {
    sub_1C43FD1A8();
    v29 = swift_slowAlloc();
    sub_1C441F048(v29);
    sub_1C441CEBC(&dword_1C43F8000, v30, v31, "KTSCadenceViewGenerationProvider: Got the config");
    sub_1C444007C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v32 = *(v4 + 160);
  v33 = *(v4 + 152);
  if (v32)
  {
    v34 = *(v4 + 152) == 3;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v36 = *v4;
    v35 = *(v4 + 8);
    sub_1C450B034();
    sub_1C441C114();
    v6 = swift_allocError();
    *v37 = v36;
    *(v37 + 8) = v35;
    *(v37 + 16) = 0x65636E65646163;
    *(v37 + 24) = 0xE700000000000000;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0xE000000000000000;
    *(v37 + 48) = v94;
    *(v37 + 64) = 1;
    swift_willThrow();
LABEL_13:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_14;
  }

  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    sub_1C450B034();
    sub_1C441C114();
    v6 = swift_allocError();
    *v64 = a1;
    *(v64 + 8) = v84;
    *(v64 + 16) = xmmword_1C4F5B670;
    *(v64 + 32) = 0xD000000000000025;
    *(v64 + 40) = 0x80000001C4FB83A0;
    *(v64 + 48) = *v88;
    *(v64 + 64) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v83 = v32;
  v82 = v33;
  v85 = a4;
  v86 = v14;
  v46 = v90;
  v47 = v91;
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v49))
  {
    sub_1C43FD1A8();
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1C43F8000, v48, v33, "KTSCadenceViewGenerationProvider: Got the object client", v50, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;

  sub_1C4F02248();

  strcpy(&v94, "SELECT * FROM ");
  HIBYTE(v94) = -18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v46, *(&v46 + 1));

  v51 = sub_1C4C8CE18(v94, *(&v94 + 1), *(&v47 + 1), 0);

  v52 = 0;
  a4 = MEMORY[0x1E69E7CC0];
  v53 = *(v51 + 16);
  a2 = 0x6D69547472617473;
  a1 = MEMORY[0x1E69E63B0];
  while (v53 != v52)
  {
    if (v52 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_57;
    }

    v54 = *(v51 + 8 * v52 + 32);
    if (*(v54 + 16))
    {
      v55 = *(v51 + 8 * v52 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v56 = sub_1C445FAA8(0x6D69547472617473, 0xE900000000000065);
      if ((v57 & 1) == 0)
      {

        goto LABEL_36;
      }

      sub_1C442B870(*(v54 + 56) + 32 * v56, &v94);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v58 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(a4 + 16);
        sub_1C43FCEC0();
        sub_1C458A6E0();
        a4 = v62;
      }

      v59 = *(a4 + 16);
      v60 = v59 + 1;
      if (v59 >= *(a4 + 24) >> 1)
      {
        sub_1C458A6E0();
        v60 = v59 + 1;
        a4 = v63;
      }

      ++v52;
      *(a4 + 16) = v60;
      *(a4 + 8 * v59 + 32) = v58;
    }

    else
    {
LABEL_36:
      ++v52;
    }
  }

  v65 = COERCE_DOUBLE(sub_1C46134D4(a4));
  v67 = v66;

  if (v67)
  {
    v68 = 0.0;
  }

  else
  {
    v68 = v65;
  }

  v95 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v96 = sub_1C4C1F36C();
  *&v94 = v83;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4C81ADC(&v94);
  sub_1C440962C(&v94);
  v70 = sub_1C4C83D3C(v69);
  v14 = v86;
  if (*(v69 + 16))
  {
    sub_1C465C324(0x656D67655373746BLL, 0xEF656C626154746ELL, v70);

    if (v89)
    {
      sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
      sub_1C456902C(&qword_1EC0C4D90, &qword_1C4F5E238);
      if (swift_dynamicCast())
      {
        if (*(&v91 + 1))
        {
          sub_1C4C1F3D0(&v90, &v94);
          v71 = sub_1C4F00968();
          v72 = sub_1C4F01CB8();
          if (sub_1C441E1F8(v72))
          {
            sub_1C43FD1A8();
            *swift_slowAlloc() = 0;
            sub_1C441CEBC(&dword_1C43F8000, v73, v74, "KTSCadenceViewGenerationProvider: Got the KTS table");
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          sub_1C4C687F0(v69, v88);

          sub_1C442E860(v88, v87);
          sub_1C4C1F3F0(&v94, &v90);
          v81 = *(v85 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
          _s23KTSCadenceViewGeneratorCMa();
          v40 = swift_allocObject();
          sub_1C4C19FCC(v87, v46, *(&v46 + 1), v47, *(&v47 + 1), &v90, v81, v82, v68);
          sub_1C440962C(v88);
          sub_1C440962C(&v94);
          sub_1C445F57C(v4);
          return v40;
        }
      }

      else
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
      }
    }

    else
    {

      sub_1C4423A0C(v88, &qword_1EC0C4868, &qword_1C4F5E220);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0;
    }

    sub_1C4423A0C(&v90, &qword_1EC0C4D80, &qword_1C4F5E228);
  }

  else
  {
  }

  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CD8();
  if (sub_1C441E1F8(v76))
  {
    sub_1C43FD1A8();
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1C43F8000, v75, v67, "KTSCadenceViewGenerationProvider: No KTS segment table could be found in dependency stores", v77, 2u);
    v78 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v78);
  }

  v79 = sub_1C4F001F8();
  sub_1C4C1F314(&qword_1EC0C4D68, MEMORY[0x1E69A9DA8]);
  sub_1C441C114();
  v6 = swift_allocError();
  *v80 = 0xD00000000000005ALL;
  v80[1] = 0x80000001C4FBA2E0;
  (*(*(v79 - 8) + 104))(v80, *MEMORY[0x1E69A9DA0], v79);
  swift_willThrow();

  sub_1C44247D0();

LABEL_14:
  sub_1C445F57C(v4);
LABEL_15:
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v14, qword_1EDDFECB8);
  v38 = v6;
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CD8();

  if (os_log_type_enabled(v39, v40))
  {
    sub_1C43FECF0();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = v6;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v44;
    *v42 = v44;
    _os_log_impl(&dword_1C43F8000, v39, v40, "KTSCadenceViewGenerationProvider error: %@", v41, 0xCu);
    sub_1C4423A0C(v42, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_willThrow();
  return v40;
}

uint64_t sub_1C4C1EC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C1E114(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C1ECF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4C1EDE4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C45E7BE4(0, v2, 1, a1);
  }

  return result;
}

void sub_1C4C1EDE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_1C43FCEC0();
        sub_1C458A358();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C45E821C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C45E80F0(&v80, *a1, a3);
LABEL_89:
}

unint64_t sub_1C4C1F2D0()
{
  result = qword_1EC0C4778;
  if (!qword_1EC0C4778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C4778);
  }

  return result;
}

uint64_t sub_1C4C1F314(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4C1F36C()
{
  result = qword_1EDDFCEC0;
  if (!qword_1EDDFCEC0)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEC0);
  }

  return result;
}

uint64_t sub_1C4C1F3D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C4C1F3F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C4C1F45C(uint64_t a1)
{
  v3 = sub_1C4EFE288();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v14[1] = v1;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = sub_1C4461BB8(0, &qword_1EC0C4F10, 0x1E6985C40);
    v15 = *(v4 + 16);
    v16 = v11;
    v12 = *(v4 + 72);
    do
    {
      v15(v7, v10, v3);
      sub_1C4F01C28();
      sub_1C4F02318();
      v13 = *(v17 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      v10 += v12;
      --v8;
    }

    while (v8);
    return v17;
  }

  return result;
}

void sub_1C4C1F5EC()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v69 = sub_1C456902C(&qword_1EC0C4F00, &unk_1C4F5E3B0);
  v5 = sub_1C43FBCE0(v69);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v67 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v55 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v68 = v15;
  v16 = v2;
  v18 = *(v2 + 64);
  v17 = v2 + 64;
  v19 = *(v17 - 32);
  sub_1C43FD030();
  v23 = v22 & v21;
  if (v23)
  {
    v55 = v4;
    v56 = v0;
    v24 = 0;
    v62 = __clz(__rbit64(v23));
    v25 = (v23 - 1) & v23;
    v26 = (v20 + 63) >> 6;
LABEL_7:
    v29 = *(v16 + 48);
    v30 = sub_1C4F00258();
    sub_1C43FBCE0(v30);
    v32 = *(v31 + 16);
    v63 = *(v31 + 72);
    v64 = v31 + 16;
    v33 = v62;
    v34 = v29 + v63 * v62;
    v35 = v57;
    v65 = v32;
    v66 = v36;
    (v32)(v57, v34);
    v61 = *(v16 + 56);
    v37 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
    sub_1C43FBCE0(v37);
    v39 = *(v38 + 16);
    v59 = *(v38 + 72);
    v60 = v38 + 16;
    v40 = &v61[v59 * v33];
    v41 = &v35[*(v69 + 48)];
    v61 = v39;
    v62 = v42;
    (v39)(v41, v40);
    v43 = v35;
    v44 = &qword_1EC0C4F00;
    sub_1C44CD9E0(v43, v68, &qword_1EC0C4F00, &unk_1C4F5E3B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v58 = v16;
    if (!v25)
    {
      goto LABEL_9;
    }

    do
    {
      v45 = v11;
      v46 = v24;
LABEL_13:
      v47 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v48 = v47 | (v46 << 6);
      v49 = v67;
      v65(v67, *(v16 + 48) + v48 * v63, v66);
      (v61)(v49 + *(v69 + 48), *(v16 + 56) + v48 * v59, v62);
      v50 = v49;
      v11 = v45;
      sub_1C44CD9E0(v50, v45, v44, &unk_1C4F5E3B0);
      v51 = *(v69 + 48);
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v52 = v44;
      v53 = v68;
      if (sub_1C4EF93E8())
      {
        sub_1C4420C3C(v53, v52, &unk_1C4F5E3B0);
        sub_1C44CD9E0(v11, v53, v52, &unk_1C4F5E3B0);
      }

      else
      {
        sub_1C4420C3C(v11, v52, &unk_1C4F5E3B0);
      }

      v24 = v46;
      v44 = v52;
      v16 = v58;
    }

    while (v25);
LABEL_9:
    while (1)
    {
      v46 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v46 >= v26)
      {

        v54 = v55;
        sub_1C44CD9E0(v68, v55, &qword_1EC0C4F00, &unk_1C4F5E3B0);
        sub_1C440BAA8(v54, 0, 1, v69);
        goto LABEL_19;
      }

      v25 = *(v17 + 8 * v46);
      ++v24;
      if (v25)
      {
        v45 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0;
    v26 = (v20 + 63) >> 6;
    while (1)
    {
      v24 = v27 + 1;
      if (v27 + 1 >= v26)
      {
        break;
      }

      v28 = *(v16 + 72 + 8 * v27);
      v23 += 64;
      ++v27;
      if (v28)
      {
        v55 = v4;
        v56 = v0;
        v25 = (v28 - 1) & v28;
        v62 = __clz(__rbit64(v28)) + v23;
        goto LABEL_7;
      }
    }

    sub_1C440BAA8(v4, 1, 1, v69);
LABEL_19:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C4C1F9D0(char *a1)
{
  v65 = a1;
  v1 = sub_1C4EFFA28();
  v64 = *(v1 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v51 - v5;
  v6 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v51 - v10;
  v11 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v58 = (&v51 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v51 - v17;
  v53 = sub_1C456902C(&qword_1EC0C4DE0, &qword_1C4F5E318);
  AssociatedConformanceWitness = *(v53 - 8);
  v18 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x1EEE9AC00](v53);
  v20 = &v51 - v19;
  v66 = sub_1C456902C(&qword_1EC0C4F98, qword_1C4F5E440);
  v52 = *(v66 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v23 = &v51 - v22;
  v24 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v25 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610);
  v67 = v24;
  v68 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v65;
  v27 = sub_1C4F01488();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v28 = v67;
  (*(AssociatedConformanceWitness + 16))(v20, v26, v53);
  v65 = v23;
  result = sub_1C4F01478();
  if (v27 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v62 = v11;
  if (v27)
  {
    v61 = v28;
    v30 = (v64 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = &qword_1EC0C4F80;
    v28 = v57;
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v28, 1, v11);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v32 = v54;
      sub_1C4460050(v28, v54, v31, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v55;
      if (EnumCaseMultiPayload == 1)
      {
        v69 = *v32;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        (*(v52 + 8))(v65, v66);

        sub_1C4420C3C(v28, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        return v28;
      }

      v35 = v31;
      v36 = *v30;
      (*v30)(v55, v32, v1);
      v37 = v35;
      sub_1C4420C3C(v28, v35, &qword_1C4F5E5B0);
      v38 = v61;
      v67 = v61;
      v39 = v1;
      v40 = *(v61 + 16);
      if (v40 >= *(v61 + 24) >> 1)
      {
        sub_1C459F038();
        v34 = v55;
        v38 = v67;
      }

      *(v38 + 16) = v40 + 1;
      v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v61 = v38;
      v36((v38 + v41 + *(v64 + 72) * v40), v34, v39);
      --v27;
      v1 = v39;
      v11 = v62;
      v31 = v37;
      v28 = v57;
      if (!v27)
      {
        v43 = v59;
        v42 = v60;
        v28 = v61;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v59;
  v42 = v60;
LABEL_12:
  v44 = (v64 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v42, 1, v11) == 1)
    {
      (*(v52 + 8))(v65, v66);
      sub_1C4420C3C(v42, &qword_1EC0C4F78, &unk_1C4F5E420);
      return v28;
    }

    sub_1C44CD9E0(v42, v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v45 = v58;
    sub_1C4460050(v43, v58, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v46 = *v44;
    v47 = v45;
    v48 = v56;
    (*v44)(v56, v47, v1);
    sub_1C4420C3C(v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v67 = v28;
    v49 = v1;
    v50 = *(v28 + 16);
    if (v50 >= *(v28 + 24) >> 1)
    {
      sub_1C459F038();
      v48 = v56;
      v28 = v67;
    }

    *(v28 + 16) = v50 + 1;
    v46(v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v50, v48, v49);
    v1 = v49;
    v43 = v59;
    v42 = v60;
    v11 = v62;
  }

  v69 = *v45;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(v52 + 8))(v65, v66);

  return v28;
}

uint64_t sub_1C4C201BC(char *a1)
{
  v65 = a1;
  v1 = sub_1C4EFFA28();
  v64 = *(v1 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v51 - v5;
  v6 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v51 - v10;
  v11 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v58 = (&v51 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v51 - v17;
  v53 = sub_1C456902C(&qword_1EC0C4DD8, &qword_1C4F5E310);
  AssociatedConformanceWitness = *(v53 - 8);
  v18 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x1EEE9AC00](v53);
  v20 = &v51 - v19;
  v66 = sub_1C456902C(&qword_1EC0C4F90, &qword_1C4F5E438);
  v52 = *(v66 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v23 = &v51 - v22;
  v24 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v25 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610);
  v67 = v24;
  v68 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v65;
  v27 = sub_1C4F01488();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v28 = v67;
  (*(AssociatedConformanceWitness + 16))(v20, v26, v53);
  v65 = v23;
  result = sub_1C4F01478();
  if (v27 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v62 = v11;
  if (v27)
  {
    v61 = v28;
    v30 = (v64 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = &qword_1EC0C4F80;
    v28 = v57;
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v28, 1, v11);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v32 = v54;
      sub_1C4460050(v28, v54, v31, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v55;
      if (EnumCaseMultiPayload == 1)
      {
        v69 = *v32;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        (*(v52 + 8))(v65, v66);

        sub_1C4420C3C(v28, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        return v28;
      }

      v35 = v31;
      v36 = *v30;
      (*v30)(v55, v32, v1);
      v37 = v35;
      sub_1C4420C3C(v28, v35, &qword_1C4F5E5B0);
      v38 = v61;
      v67 = v61;
      v39 = v1;
      v40 = *(v61 + 16);
      if (v40 >= *(v61 + 24) >> 1)
      {
        sub_1C459F038();
        v34 = v55;
        v38 = v67;
      }

      *(v38 + 16) = v40 + 1;
      v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v61 = v38;
      v36((v38 + v41 + *(v64 + 72) * v40), v34, v39);
      --v27;
      v1 = v39;
      v11 = v62;
      v31 = v37;
      v28 = v57;
      if (!v27)
      {
        v43 = v59;
        v42 = v60;
        v28 = v61;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v59;
  v42 = v60;
LABEL_12:
  v44 = (v64 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v42, 1, v11) == 1)
    {
      (*(v52 + 8))(v65, v66);
      sub_1C4420C3C(v42, &qword_1EC0C4F78, &unk_1C4F5E420);
      return v28;
    }

    sub_1C44CD9E0(v42, v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v45 = v58;
    sub_1C4460050(v43, v58, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v46 = *v44;
    v47 = v45;
    v48 = v56;
    (*v44)(v56, v47, v1);
    sub_1C4420C3C(v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v67 = v28;
    v49 = v1;
    v50 = *(v28 + 16);
    if (v50 >= *(v28 + 24) >> 1)
    {
      sub_1C459F038();
      v48 = v56;
      v28 = v67;
    }

    *(v28 + 16) = v50 + 1;
    v46(v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v50, v48, v49);
    v1 = v49;
    v43 = v59;
    v42 = v60;
    v11 = v62;
  }

  v69 = *v45;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v43, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(v52 + 8))(v65, v66);

  return v28;
}

void *sub_1C4C209A8(__int128 *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "KTSSegmentViewGenerator: Created", v13, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C441D670(a1, (v5 + 2));
  memcpy(v5 + 8, a2, 0x48uLL);
  v5[7] = a3;
  v5[17] = a4;
  return v5;
}

void sub_1C4C20AB8()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = v0;
  v95 = v4;
  v5 = type metadata accessor for ViewDatabaseArtifact.Property();
  v6 = sub_1C43FCDF8(v5);
  v107 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  if (qword_1EDDFECD0 != -1)
  {
LABEL_49:
    sub_1C4400FC0();
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DF70);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v15))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C440A5A8();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v21 = v3[7];
  if (!*(v21 + 16))
  {
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();
    if (sub_1C43FDD64(v37))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1C465C324(0xD000000000000010, 0x80000001C4FBA3C0, v3[7]);
  if (!v112)
  {
    v38 = &v111;
    goto LABEL_13;
  }

  v105 = v12;
  sub_1C460986C(&v111, v113);
  sub_1C465C324(0xD000000000000016, 0x80000001C4FBA3E0, v21);
  if (!v110)
  {
    sub_1C440962C(v113);
    v38 = &v109;
LABEL_13:
    sub_1C4420C3C(v38, &qword_1EC0C4868, &qword_1C4F5E220);
    v36 = sub_1C4F00968();
    v39 = sub_1C4F01CD8();
    if (sub_1C43FDD64(v39))
    {
LABEL_14:
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C440A5A8();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

LABEL_15:

    goto LABEL_46;
  }

  sub_1C460986C(&v109, &v111);
  v22 = v3[5];
  v104 = v3[6];
  v96 = v3;
  sub_1C4409678(v3 + 2, v22);
  sub_1C456902C(&qword_1EC0C4D98, &unk_1C4F5E2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4FBA3C0;
  sub_1C4609884(v113, inited + 48);
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x80000001C4FBA3E0;
  sub_1C4609884(&v111, inited + 112);
  sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
  sub_1C4F00F28();
  sub_1C4403A1C();
  v27 = sub_1C4BDEB08(v24, v95, v25, v26, 0, v22, v104);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v29))
  {
    v30 = sub_1C43FD084();
    *v30 = 134217984;
    *(v30 + 4) = *(v27 + 16);

    sub_1C440A5A8();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v45 = v5;
  v46 = v3[17];
  v47 = sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v46;
  v51 = sub_1C4EFF738();
  if (v2)
  {

    goto LABEL_45;
  }

  v99 = v51;
  v12 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CC8();

  v106 = v12;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = sub_1C43FD084();
    v55 = swift_slowAlloc();
    *&v109 = v55;
    *v54 = 136315138;
    v56 = MEMORY[0x1C6940380](v106, v45);
    v58 = sub_1C441D828(v56, v57, &v109);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_1C43F8000, v52, v53, "Schema: kts_segment \n %s", v54, 0xCu);
    sub_1C440962C(v55);
    v12 = v106;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v3 = v96;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5 = v105;
  v59 = sub_1C4EF9348();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v100 = sub_1C4EF9338();
  v62 = sub_1C4EF93D8();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  v65 = 0;
  v101 = *(v27 + 16);
  v98 = v27 + 32;
  v94 = MEMORY[0x1E69E7CC0];
  v97 = v27;
  while (v65 != v101)
  {
    if (v65 >= *(v27 + 16))
    {
      goto LABEL_48;
    }

    v66 = *(v98 + 8 * v65);
    v103 = v65 + 1;
    v102 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C2146C(v102, v100, v67, v99);
    v69 = v68;
    if (!*(v68 + 16))
    {

      goto LABEL_35;
    }

    v3 = v12[2];
    if (v3)
    {
      v115 = MEMORY[0x1E69E7CC0];
      sub_1C459D930();
      v70 = 0;
      v71 = v115;
      v72 = v12 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      while (v70 < v12[2])
      {
        sub_1C443CCBC(v72 + *(v107 + 72) * v70, v5);
        sub_1C4C21504(v5, v69, v108, &v109);
        v2 = 0;
        sub_1C4413A2C();
        v74 = *(v115 + 16);
        v73 = *(v115 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1C43FCFE8(v73);
          sub_1C459D930();
        }

        ++v70;
        *(v115 + 16) = v74 + 1;
        sub_1C441D670(&v109, v115 + 40 * v74 + 32);
        v5 = v105;
        v12 = v106;
        if (v3 == v70)
        {

          v27 = v97;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v71 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v3 = v96;
    if (*(v71 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = *(v94 + 16);
        sub_1C458B824();
        v94 = v78;
      }

      v76 = *(v94 + 16);
      v75 = *(v94 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C43FCFE8(v75);
        sub_1C458B824();
        v94 = v79;
      }

      *(v94 + 16) = v76 + 1;
      *(v94 + 8 * v76 + 32) = v71;
      v65 = v103;
    }

    else
    {
LABEL_35:

      v65 = v103;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v80 = sub_1C4F00968();
  v81 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v81))
  {
    v82 = sub_1C43FD084();
    *v82 = 134217984;
    *(v82 + 4) = *(v94 + 16);

    sub_1C440A5A8();
    _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  memcpy(v114, v3 + 8, sizeof(v114));
  sub_1C4BE3D80(v94, v95, v88, v89, v90, v91, v92, v93);

LABEL_45:
  sub_1C440962C(&v111);
  sub_1C440962C(v113);
LABEL_46:
  sub_1C43FBC80();
}

void sub_1C4C2146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4403A1C();
  sub_1C4C21860(a1, v4, v9, v10, a4, a2, &v11, &v12);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4C21504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  sub_1C465C2C4(*a1, v10, a2);
  if (*(&v35 + 1) == 1)
  {
    v11 = &qword_1EC0BA6E0;
    v12 = &unk_1C4F5E2C0;
    v13 = &v34;
LABEL_7:
    sub_1C4420C3C(v13, v11, v12);
    goto LABEL_8;
  }

  v31 = v34;
  v32 = v35;
  if (!*(&v35 + 1))
  {
    v11 = &qword_1EC0BCD10;
    v12 = &qword_1C4F0C8C0;
    v13 = &v31;
    goto LABEL_7;
  }

  sub_1C4EFF638();
  if (swift_dynamicCast())
  {
    *&v31 = v29;
    v14 = &unk_1EC0C4DA8;
    v15 = MEMORY[0x1E69A9950];
    goto LABEL_13;
  }

LABEL_8:
  sub_1C465C2C4(v9, v10, a2);
  if (*(&v35 + 1) == 1)
  {
    v16 = &qword_1EC0BA6E0;
    v17 = &unk_1C4F5E2C0;
    v18 = &v34;
LABEL_16:
    sub_1C4420C3C(v18, v16, v17);
LABEL_17:
    sub_1C465C2C4(v9, v10, a2);
    if (*(&v30 + 1) == 1)
    {
      v22 = &qword_1EC0BA6E0;
      v23 = &unk_1C4F5E2C0;
      v24 = &v29;
    }

    else
    {
      v34 = v29;
      v35 = v30;
      if (*(&v30 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if (*(&v32 + 1))
          {
            return sub_1C441D670(&v31, a4);
          }
        }

        else
        {
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
        }

        goto LABEL_25;
      }

      v22 = &qword_1EC0BCD10;
      v23 = &qword_1C4F0C8C0;
      v24 = &v34;
    }

    sub_1C4420C3C(v24, v22, v23);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
LABEL_25:
    v25 = type metadata accessor for ViewDatabaseArtifact.Property();
    result = static DatabaseValue.emptyValue(forType:)(a1 + *(v25 + 20), a4);
    if (*(&v32 + 1))
    {
      return sub_1C4420C3C(&v31, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    return result;
  }

  v31 = v34;
  v32 = v35;
  if (!*(&v35 + 1))
  {
    v16 = &qword_1EC0BCD10;
    v17 = &qword_1C4F0C8C0;
    v18 = &v31;
    goto LABEL_16;
  }

  sub_1C4EFFA48();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  *&v31 = v29;
  v14 = &unk_1EC0C4DA0;
  v15 = MEMORY[0x1E69A9AB8];
LABEL_13:
  sub_1C4C2F284(v14, v15);
  v19 = sub_1C4EF93B8();
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v26 = v19;
    v27 = v20;
    v28 = MEMORY[0x1E699FD70];
    a4[3] = MEMORY[0x1E6969080];
    a4[4] = v28;

    *a4 = v26;
    a4[1] = v27;
  }

  return result;
}

uint64_t sub_1C4C21860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v774 = a7;
  v729 = a6;
  v753 = a5;
  v776 = a4;
  v781 = a3;
  v782 = a8;
  v750 = sub_1C4F00258();
  v748 = *(v750 - 8);
  v10 = *(v748 + 64);
  MEMORY[0x1EEE9AC00](v750);
  v744 = &v636 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v738 = sub_1C456902C(&qword_1EC0C4DB0, &qword_1C4F5E2D0);
  v12 = *(*(v738 - 8) + 64);
  MEMORY[0x1EEE9AC00](v738);
  v749 = &v636 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v736 = &v636 - v15;
  v16 = sub_1C456902C(&qword_1EC0C4DB8, &qword_1C4F5E2D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v737 = &v636 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v730 = &v636 - v20;
  v21 = sub_1C456902C(&qword_1EC0C4D38, &qword_1C4F5E2E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v741 = &v636 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v739 = &v636 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v740 = &v636 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v735 = &v636 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v732 = &v636 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v734 = &v636 - v33;
  v760 = sub_1C456902C(&qword_1EC0C4DC0, &qword_1C4F5E2E8);
  v759 = *(v760 - 8);
  v34 = v759[8];
  MEMORY[0x1EEE9AC00](v760);
  v752 = &v636 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v751 = &v636 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v755 = &v636 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v756 = &v636 - v41;
  v758 = sub_1C456902C(&qword_1EC0C4DC8, &unk_1C4F5E2F0);
  v757 = *(v758 - 8);
  v42 = *(v757 + 64);
  MEMORY[0x1EEE9AC00](v758);
  v747 = &v636 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v754 = &v636 - v45;
  v762 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v763 = *(v762 - 8);
  v46 = *(v763 + 64);
  MEMORY[0x1EEE9AC00](v762);
  v746 = &v636 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v745 = &v636 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v761 = &v636 - v51;
  v733 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v731 = *(v733 - 8);
  v52 = *(v731 + 64);
  MEMORY[0x1EEE9AC00](v733);
  v743 = &v636 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v742 = &v636 - v55;
  v726 = sub_1C456902C(&qword_1EC0C4DD0, &qword_1C4F5E308);
  isa = v726[-1].isa;
  v56 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v726);
  v724 = &v636 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v722 = &v636 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v720 = &v636 - v61;
  v707 = sub_1C456902C(&qword_1EC0C4DD8, &qword_1C4F5E310);
  *&v706 = *(v707 - 8);
  v62 = *(v706 + 64);
  MEMORY[0x1EEE9AC00](v707);
  v703 = &v636 - v63;
  v728 = sub_1C4EFF1F8();
  v727 = *(v728 - 8);
  v64 = *(v727 + 64);
  MEMORY[0x1EEE9AC00](v728);
  v721 = &v636 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v719 = &v636 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v717 = &v636 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v702 = &v636 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v694 = &v636 - v73;
  v697 = sub_1C456902C(&qword_1EC0C4DE0, &qword_1C4F5E318);
  v696 = *(v697 - 8);
  v74 = *(v696 + 64);
  MEMORY[0x1EEE9AC00](v697);
  v692 = &v636 - v75;
  v76 = sub_1C456902C(&qword_1EC0C4DE8, &unk_1C4F5E320);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v768 = &v636 - v78;
  v79 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v765 = &v636 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v766 = &v636 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v770 = &v636 - v85;
  v86 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v716 = &v636 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v709 = &v636 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v701 = &v636 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v691 = &v636 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v686 = &v636 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v680 = &v636 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v674 = &v636 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v671 = &v636 - v102;
  v103 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v714 = &v636 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106);
  v705 = &v636 - v107;
  MEMORY[0x1EEE9AC00](v108);
  *&v700 = &v636 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v690 = &v636 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v685 = &v636 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v679 = &v636 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v673 = &v636 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v670 = &v636 - v119;
  v710 = sub_1C4EF9CD8();
  v708 = *(v710 - 8);
  v120 = *(v708 + 64);
  MEMORY[0x1EEE9AC00](v710);
  v712 = &v636 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v711 = (&v636 - v123);
  MEMORY[0x1EEE9AC00](v124);
  v695 = &v636 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v693 = &v636 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v682 = &v636 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v677 = &v636 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v675 = &v636 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v669 = &v636 - v135;
  v136 = sub_1C456902C(&qword_1EC0C4DF0, &unk_1C4F5E330);
  v137 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136 - 8);
  v769 = &v636 - v138;
  v668 = sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
  v667 = *(v668 - 8);
  v139 = *(v667 + 64);
  MEMORY[0x1EEE9AC00](v668);
  v666 = &v636 - v140;
  v141 = sub_1C456902C(&qword_1EC0C4E00, &unk_1C4F5E340);
  v142 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141 - 8);
  v688 = &v636 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v144);
  v683 = &v636 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v636 - v147;
  v772 = sub_1C4EFFA28();
  v773 = *(v772 - 8);
  v149 = *(v773 + 64);
  MEMORY[0x1EEE9AC00](v772);
  v764 = &v636 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v151);
  v767 = &v636 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v771 = &v636 - v154;
  v155 = sub_1C4EFF0C8();
  v777 = *(v155 - 8);
  v156 = *(v777 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v723 = &v636 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v157);
  v715 = &v636 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v718 = &v636 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v713 = &v636 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v704 = &v636 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v687 = &v636 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v699 = &v636 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v684 = &v636 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v698 = &v636 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v681 = &v636 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v689 = &v636 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v678 = &v636 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v676 = &v636 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v636 - v182;
  MEMORY[0x1EEE9AC00](v184);
  v672 = &v636 - v185;
  MEMORY[0x1EEE9AC00](v186);
  v188 = &v636 - v187;
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v636 - v190;
  MEMORY[0x1EEE9AC00](v192);
  v775 = &v636 - v193;
  MEMORY[0x1EEE9AC00](v194);
  v780 = &v636 - v195;
  v196 = *(a2 + 104);
  v197 = a2;
  v778 = *(a2 + 96);
  v779 = v196;
  v198 = a1;
  sub_1C465C4B8(v778, v196, a1);
  if (!v787)
  {
    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_50;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v212 = sub_1C4F00978();
    sub_1C442B738(v212, qword_1EDE2DF70);
    swift_retain_n();
    v213 = sub_1C4F00968();
    v214 = sub_1C4F01CE8();
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v217 = swift_allocObject();
    *(v217 + 16) = sub_1C4C2C7FC;
    *(v217 + 24) = v197;
    v218 = swift_allocObject();
    *(v218 + 16) = sub_1C4AD71F0;
    *(v218 + 24) = v217;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1C4F0C890;
    *(v219 + 32) = sub_1C44549EC;
    *(v219 + 40) = v215;
    *(v219 + 48) = sub_1C44549F4;
    *(v219 + 56) = v216;
    *(v219 + 64) = sub_1C4454B88;
    *(v219 + 72) = v218;
    swift_setDeallocating();

    sub_1C49E1614();
    if (os_log_type_enabled(v213, v214))
    {
      v220 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      LODWORD(v781) = v214;
      v222 = v221;
      v785 = v221;
      *v220 = 258;
      *(v220 + 2) = 32;

      *(v220 + 3) = 8;

      v223 = v779;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v224 = sub_1C441D828(v778, v223, &v785);

      *(v220 + 4) = v224;

      _os_log_impl(&dword_1C43F8000, v213, v781, "Column[%s] not found in the row.", v220, 0xCu);
      sub_1C440962C(v222);
      MEMORY[0x1C6942830](v222, -1, -1);
      MEMORY[0x1C6942830](v220, -1, -1);
    }

    else
    {
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    result = sub_1C4F00F28();
    v225 = result;
    goto LABEL_63;
  }

  sub_1C4EFF0B8();
  v199 = v776;
  sub_1C465C4B8(v781, v776, v198);
  if (!v787)
  {
    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v665 = v155;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v226 = sub_1C4F00978();
    sub_1C442B738(v226, qword_1EDE2DF70);
    v227 = swift_allocObject();
    *(v227 + 16) = v781;
    *(v227 + 24) = v199;
    swift_bridgeObjectRetain_n();
    v228 = sub_1C4F00968();
    v229 = sub_1C4F01CE8();
    v230 = swift_allocObject();
    *(v230 + 16) = 32;
    v231 = swift_allocObject();
    *(v231 + 16) = 8;
    v232 = swift_allocObject();
    *(v232 + 16) = sub_1C4AD7104;
    *(v232 + 24) = v227;
    v233 = swift_allocObject();
    *(v233 + 16) = sub_1C4B0E9F8;
    *(v233 + 24) = v232;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v234 = swift_allocObject();
    *(v234 + 16) = xmmword_1C4F0C890;
    *(v234 + 32) = sub_1C44549F4;
    *(v234 + 40) = v230;
    *(v234 + 48) = sub_1C44549F4;
    *(v234 + 56) = v231;
    *(v234 + 64) = sub_1C4454C38;
    *(v234 + 72) = v233;
    swift_setDeallocating();

    sub_1C49E1614();
    LODWORD(v779) = v229;
    if (os_log_type_enabled(v228, v229))
    {
      v235 = swift_slowAlloc();
      v236 = v228;
      v237 = swift_slowAlloc();
      v785 = v237;
      *v235 = 258;
      *(v235 + 2) = 32;

      *(v235 + 3) = 8;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v238 = sub_1C441D828(v781, v199, &v785);

      *(v235 + 4) = v238;

      _os_log_impl(&dword_1C43F8000, v236, v779, "Column[%s] not found in the row.", v235, 0xCu);
      sub_1C440962C(v237);
      MEMORY[0x1C6942830](v237, -1, -1);
      MEMORY[0x1C6942830](v235, -1, -1);
    }

    else
    {
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v225 = sub_1C4F00F28();
    result = (*(v777 + 8))(v780, v665);
    goto LABEL_63;
  }

  sub_1C4EFF0B8();
  sub_1C465C4B8(0x644970697274, 0xE600000000000000, v198);
  if (!v787)
  {
    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_65;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v239 = sub_1C4F00978();
    sub_1C442B738(v239, qword_1EDE2DF70);
    v240 = sub_1C4F00968();
    v241 = sub_1C4F01CE8();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      *v242 = 0;
      _os_log_impl(&dword_1C43F8000, v240, v241, "Column[tripId] not found in the row.", v242, 2u);
      MEMORY[0x1C6942830](v242, -1, -1);
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v225 = sub_1C4F00F28();
    v243 = *(v777 + 8);
    v243(v775, v155);
    result = (v243)(v780, v155);
    goto LABEL_63;
  }

  v665 = v155;
  v200 = v784;
  v776 = v783;
  sub_1C465C4B8(0x6D69547472617473, 0xE900000000000065, v198);
  if (!v787)
  {
    goto LABEL_80;
  }

  v781 = v200;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_71:

LABEL_72:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v244 = sub_1C4F00978();
    sub_1C442B738(v244, qword_1EDDFECB8);
    v245 = sub_1C4F00968();
    v246 = sub_1C4F01CD8();
    if (os_log_type_enabled(v245, v246))
    {
      v247 = swift_slowAlloc();
      *v247 = 0;
      _os_log_impl(&dword_1C43F8000, v245, v246, "Column[endTime] or [startTime] not found in the row.", v247, 2u);
      MEMORY[0x1C6942830](v247, -1, -1);
    }

    v248 = 0x80000001C4FBA400;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v250 = 0xD000000000000034;
    goto LABEL_77;
  }

  v201 = *&v783;
  sub_1C465C4B8(0x656D6954646E65, 0xE700000000000000, v198);
  if (!v787)
  {
LABEL_80:

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_71;
  }

  v202 = *&v783;
  sub_1C465C4B8(0xD000000000000010, 0x80000001C4FBA440, v198);
  if (!v787)
  {
    goto LABEL_82;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_83:

    goto LABEL_84;
  }

  v203 = v783;
  sub_1C465C4B8(0xD000000000000015, 0x80000001C4FBA4B0, v198);
  if (!v787)
  {
LABEL_82:

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_84:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v253 = sub_1C4F00978();
    sub_1C442B738(v253, qword_1EDDFECB8);
    v254 = sub_1C4F00968();
    v255 = sub_1C4F01CD8();
    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      *v256 = 0;
      _os_log_impl(&dword_1C43F8000, v254, v255, "Column[elevationGainInMeters] or [distanceInMeters] not found in the row.", v256, 2u);
      MEMORY[0x1C6942830](v256, -1, -1);
    }

    v248 = 0x80000001C4FBA460;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v250 = 0xD000000000000049;
    goto LABEL_77;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_83;
  }

  v204 = v783;
  sub_1C465C4B8(0x6574756F72, 0xE500000000000000, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_91:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v257 = sub_1C4F00978();
    sub_1C442B738(v257, qword_1EDDFECB8);
    v258 = sub_1C4F00968();
    v259 = sub_1C4F01CD8();
    if (os_log_type_enabled(v258, v259))
    {
      v260 = swift_slowAlloc();
      *v260 = 0;
      _os_log_impl(&dword_1C43F8000, v258, v259, "Column[route] not found in the row.", v260, 2u);
      MEMORY[0x1C6942830](v260, -1, -1);
    }

    v248 = 0x80000001C4FBA4D0;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v250 = 0xD000000000000023;
LABEL_77:
    *v249 = v250;
    *(v249 + 8) = v248;
    *(v249 + 16) = 3;
    swift_willThrow();
LABEL_78:
    v251 = *(v777 + 8);
    v252 = v665;
    v251(v775, v665);
    result = (v251)(v780, v252);
    goto LABEL_79;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_91;
  }

  v663 = v783;
  v664 = v784;
  sub_1C465C4B8(0xD00000000000001FLL, 0x80000001C4FBA500, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_98:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v261 = sub_1C4F00978();
    sub_1C442B738(v261, qword_1EDDFECB8);
    v262 = sub_1C4F00968();
    v263 = sub_1C4F01CD8();
    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&dword_1C43F8000, v262, v263, "Column[speedBuckets_metricsPerDistance] not found in the row.", v264, 2u);
      MEMORY[0x1C6942830](v264, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v265 = 0xD00000000000003DLL;
    *(v265 + 8) = 0x80000001C4FBA520;
    *(v265 + 16) = 3;
    swift_willThrow();
    goto LABEL_213;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_98;
  }

  v661 = v783;
  v662 = v784;
  sub_1C465C4B8(0xD000000000000021, 0x80000001C4FBA560, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_105:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v266 = sub_1C4F00978();
    sub_1C442B738(v266, qword_1EDDFECB8);
    v267 = sub_1C4F00968();
    v268 = sub_1C4F01CD8();
    if (os_log_type_enabled(v267, v268))
    {
      v269 = swift_slowAlloc();
      *v269 = 0;
      _os_log_impl(&dword_1C43F8000, v267, v268, "Column[relativeSpeeds_metricsPerDistance] not found in the row.", v269, 2u);
      MEMORY[0x1C6942830](v269, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v270 = 0xD00000000000003FLL;
    *(v270 + 8) = 0x80000001C4FBA590;
    *(v270 + 16) = 3;
    swift_willThrow();
    goto LABEL_212;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_105;
  }

  v659 = v783;
  v660 = v784;
  sub_1C465C4B8(0xD000000000000021, 0x80000001C4FBA5D0, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_112:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v271 = sub_1C4F00978();
    sub_1C442B738(v271, qword_1EDDFECB8);
    v272 = sub_1C4F00968();
    v273 = sub_1C4F01CD8();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_1C43F8000, v272, v273, "Column[trafficBuckets_metricsPerDistance] not found in the row.", v274, 2u);
      MEMORY[0x1C6942830](v274, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v275 = 0xD00000000000003FLL;
    *(v275 + 8) = 0x80000001C4FBA600;
    *(v275 + 16) = 3;
    swift_willThrow();
    goto LABEL_211;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_112;
  }

  v657 = v783;
  v658 = v784;
  sub_1C465C4B8(0xD00000000000001FLL, 0x80000001C4FBA640, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_119:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v276 = sub_1C4F00978();
    sub_1C442B738(v276, qword_1EDDFECB8);
    v277 = sub_1C4F00968();
    v278 = sub_1C4F01CD8();
    if (os_log_type_enabled(v277, v278))
    {
      v279 = swift_slowAlloc();
      *v279 = 0;
      _os_log_impl(&dword_1C43F8000, v277, v278, "Column[weatherTypes_metricsPerDistance] not found in the row.", v279, 2u);
      MEMORY[0x1C6942830](v279, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v280 = 0xD00000000000003DLL;
    *(v280 + 8) = 0x80000001C4FBA660;
    *(v280 + 16) = 3;
    swift_willThrow();
    goto LABEL_210;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_119;
  }

  v655 = v783;
  v656 = v784;
  sub_1C465C4B8(0xD00000000000001FLL, 0x80000001C4FBA6A0, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_126:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v281 = sub_1C4F00978();
    sub_1C442B738(v281, qword_1EDDFECB8);
    v282 = sub_1C4F00968();
    v283 = sub_1C4F01CD8();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&dword_1C43F8000, v282, v283, "Column[terrainTypes_metricsPerDistance] not found in the row.", v284, 2u);
      MEMORY[0x1C6942830](v284, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v285 = 0xD00000000000003DLL;
    *(v285 + 8) = 0x80000001C4FBA6C0;
    *(v285 + 16) = 3;
    swift_willThrow();
    goto LABEL_209;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_126;
  }

  v653 = v783;
  v654 = v784;
  sub_1C465C4B8(0xD00000000000001CLL, 0x80000001C4FBA700, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_133:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v286 = sub_1C4F00978();
    sub_1C442B738(v286, qword_1EDDFECB8);
    v287 = sub_1C4F00968();
    v288 = sub_1C4F01CD8();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&dword_1C43F8000, v287, v288, "Column[roadTypes_metricsPerDistance] not found in the row.", v289, 2u);
      MEMORY[0x1C6942830](v289, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v290 = 0xD00000000000003ALL;
    *(v290 + 8) = 0x80000001C4FBA720;
    *(v290 + 16) = 3;
    swift_willThrow();
    goto LABEL_208;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_133;
  }

  v651 = v783;
  v652 = v784;
  sub_1C465C4B8(0xD00000000000001BLL, 0x80000001C4FBA760, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_140:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v291 = sub_1C4F00978();
    sub_1C442B738(v291, qword_1EDDFECB8);
    v292 = sub_1C4F00968();
    v293 = sub_1C4F01CD8();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&dword_1C43F8000, v292, v293, "Column[speedBuckets_metricsPerTime] not found in the row.", v294, 2u);
      MEMORY[0x1C6942830](v294, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v295 = 0xD000000000000039;
    *(v295 + 8) = 0x80000001C4FBA780;
    *(v295 + 16) = 3;
    swift_willThrow();
    goto LABEL_207;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_140;
  }

  v649 = v783;
  v650 = v784;
  sub_1C465C4B8(0xD00000000000001DLL, 0x80000001C4FBA7C0, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_147:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v296 = sub_1C4F00978();
    sub_1C442B738(v296, qword_1EDDFECB8);
    v297 = sub_1C4F00968();
    v298 = sub_1C4F01CD8();
    if (os_log_type_enabled(v297, v298))
    {
      v299 = swift_slowAlloc();
      *v299 = 0;
      _os_log_impl(&dword_1C43F8000, v297, v298, "Column[relativeSpeeds_metricsPerTime] not found in the row.", v299, 2u);
      MEMORY[0x1C6942830](v299, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v300 = 0xD00000000000003BLL;
    *(v300 + 8) = 0x80000001C4FBA7E0;
    *(v300 + 16) = 3;
    swift_willThrow();
    goto LABEL_206;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_147;
  }

  v647 = v783;
  v648 = v784;
  sub_1C465C4B8(0xD00000000000001DLL, 0x80000001C4FBA820, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_154:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v301 = sub_1C4F00978();
    sub_1C442B738(v301, qword_1EDDFECB8);
    v302 = sub_1C4F00968();
    v303 = sub_1C4F01CD8();
    if (os_log_type_enabled(v302, v303))
    {
      v304 = swift_slowAlloc();
      *v304 = 0;
      _os_log_impl(&dword_1C43F8000, v302, v303, "Column[trafficBuckets_metricsPerTime] not found in the row.", v304, 2u);
      MEMORY[0x1C6942830](v304, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v305 = 0xD00000000000003BLL;
    *(v305 + 8) = 0x80000001C4FBA840;
    *(v305 + 16) = 3;
    swift_willThrow();
    goto LABEL_205;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_154;
  }

  v645 = v783;
  v646 = v784;
  sub_1C465C4B8(0xD00000000000001BLL, 0x80000001C4FBA880, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_161:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v306 = sub_1C4F00978();
    sub_1C442B738(v306, qword_1EDDFECB8);
    v307 = sub_1C4F00968();
    v308 = sub_1C4F01CD8();
    if (os_log_type_enabled(v307, v308))
    {
      v309 = swift_slowAlloc();
      *v309 = 0;
      _os_log_impl(&dword_1C43F8000, v307, v308, "Column[weatherTypes_metricsPerTime] not found in the row.", v309, 2u);
      MEMORY[0x1C6942830](v309, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v310 = 0xD000000000000039;
    *(v310 + 8) = 0x80000001C4FBA8A0;
    *(v310 + 16) = 3;
    swift_willThrow();
    goto LABEL_204;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_161;
  }

  v643 = v783;
  v644 = v784;
  sub_1C465C4B8(0xD000000000000018, 0x80000001C4FBA8E0, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_168:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v311 = sub_1C4F00978();
    sub_1C442B738(v311, qword_1EDDFECB8);
    v312 = sub_1C4F00968();
    v313 = sub_1C4F01CD8();
    if (os_log_type_enabled(v312, v313))
    {
      v314 = swift_slowAlloc();
      *v314 = 0;
      _os_log_impl(&dword_1C43F8000, v312, v313, "Column[roadTypes_metricsPerTime] not found in the row.", v314, 2u);
      MEMORY[0x1C6942830](v314, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v315 = 0xD000000000000036;
    *(v315 + 8) = 0x80000001C4FBA900;
    *(v315 + 16) = 3;
    swift_willThrow();
    goto LABEL_203;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_168;
  }

  v641 = v783;
  v642 = v784;
  sub_1C465C4B8(0xD00000000000001BLL, 0x80000001C4FBA940, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_175:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v316 = sub_1C4F00978();
    sub_1C442B738(v316, qword_1EDDFECB8);
    v317 = sub_1C4F00968();
    v318 = sub_1C4F01CD8();
    if (os_log_type_enabled(v317, v318))
    {
      v319 = swift_slowAlloc();
      *v319 = 0;
      _os_log_impl(&dword_1C43F8000, v317, v318, "Column[terrainTypes_metricsPerTime] not found in the row.", v319, 2u);
      MEMORY[0x1C6942830](v319, -1, -1);
    }

    sub_1C446D0DC();
    v211 = swift_allocError();
    *v320 = 0xD000000000000039;
    *(v320 + 8) = 0x80000001C4FBA960;
    *(v320 + 16) = 3;
    swift_willThrow();
    goto LABEL_202;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_175;
  }

  v639 = v783;
  v640 = v784;
  sub_1C465C4B8(0x65726F6373, 0xE500000000000000, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_182:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v321 = sub_1C4F00978();
    sub_1C442B738(v321, qword_1EDDFECB8);
    v322 = sub_1C4F00968();
    v323 = sub_1C4F01CD8();
    if (os_log_type_enabled(v322, v323))
    {
      v324 = swift_slowAlloc();
      *v324 = 0;
      _os_log_impl(&dword_1C43F8000, v322, v323, "Column[score] not found in the row.", v324, 2u);
      MEMORY[0x1C6942830](v324, -1, -1);
    }

    v325 = 0x80000001C4FBA9A0;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v327 = 0xD000000000000023;
    goto LABEL_201;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_182;
  }

  v205 = v783;
  sub_1C465C4B8(0x68774B6567617375, 0xE800000000000000, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_189:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v328 = sub_1C4F00978();
    sub_1C442B738(v328, qword_1EDDFECB8);
    v329 = sub_1C4F00968();
    v330 = sub_1C4F01CD8();
    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      *v331 = 0;
      _os_log_impl(&dword_1C43F8000, v329, v330, "Column[usageKwh] not found in the row.", v331, 2u);
      MEMORY[0x1C6942830](v331, -1, -1);
    }

    v325 = 0x80000001C4FBA9D0;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v327 = 0xD000000000000026;
    goto LABEL_201;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_189;
  }

  sub_1C465C4B8(0x556C616D6974706FLL, 0xEF68774B65676173, v198);
  if (!v787)
  {

    sub_1C4420C3C(&v785, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_196:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v332 = sub_1C4F00978();
    sub_1C442B738(v332, qword_1EDDFECB8);
    v333 = sub_1C4F00968();
    v334 = sub_1C4F01CD8();
    if (os_log_type_enabled(v333, v334))
    {
      v335 = swift_slowAlloc();
      *v335 = 0;
      _os_log_impl(&dword_1C43F8000, v333, v334, "Column[optimalUsageKwh] not found in the row.", v335, 2u);
      MEMORY[0x1C6942830](v335, -1, -1);
    }

    v325 = 0x80000001C4FBAA00;
    sub_1C446D0DC();
    v211 = swift_allocError();
    v327 = 0xD00000000000002DLL;
LABEL_201:
    *v326 = v327;
    *(v326 + 8) = v325;
    *(v326 + 16) = 3;
    swift_willThrow();
    sub_1C4434000(v639, v640);
LABEL_202:
    sub_1C4434000(v641, v642);
LABEL_203:
    sub_1C4434000(v643, v644);
LABEL_204:
    sub_1C4434000(v645, v646);
LABEL_205:
    sub_1C4434000(v647, v648);
LABEL_206:
    sub_1C4434000(v649, v650);
LABEL_207:
    sub_1C4434000(v651, v652);
LABEL_208:
    sub_1C4434000(v653, v654);
LABEL_209:
    sub_1C4434000(v655, v656);
LABEL_210:
    sub_1C4434000(v657, v658);
LABEL_211:
    sub_1C4434000(v659, v660);
LABEL_212:
    sub_1C4434000(v661, v662);
LABEL_213:
    sub_1C4434000(v663, v664);
    goto LABEL_78;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_196;
  }

  v206 = *(v777 + 16);
  v638 = v777 + 16;
  v637 = v206;
  v206(v191, v775, v665);
  sub_1C4C2F284(&qword_1EDDEFF50, MEMORY[0x1E69A9AB0]);
  v207 = v788;
  sub_1C4EFF688();
  if (!v207)
  {
    v785 = v753;
    sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
    sub_1C4401CBC(&qword_1EC0C4E08, &qword_1EC0BFC90, &qword_1C4F5E1A0);
    sub_1C4C2F284(&qword_1EC0C4E10, MEMORY[0x1E69A94F8]);
    sub_1C4EFF668();
    v788 = 0;
    (*(v667 + 8))(v666, v668);
    if (sub_1C44157D4(v148, 1, v772) == 1)
    {
      sub_1C4420C3C(v148, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v338 = sub_1C4F00978();
      v778 = sub_1C442B738(v338, qword_1EDE2DF70);
      v339 = v665;
      v340 = v637;
      v637(v188, v780, v665);
      v340(v672, v188, v339);
      v341 = v777;
      v776 = ((*(v777 + 80) + 16) & ~*(v777 + 80));
      v342 = v776;
      v343 = swift_allocObject();
      v344 = *(v341 + 32);
      v345 = &v342[v343];
      v346 = v343;
      v344(v345, v188, v339);
      v347 = swift_allocObject();
      v779 = v347;
      *(v347 + 16) = sub_1C4C2F804;
      *(v347 + 24) = v346;
      v348 = v346;
      v340(v183, v775, v339);
      v340(v676, v183, v339);
      v349 = v776;
      v350 = swift_allocObject();
      v344(&v349[v350], v183, v339);
      v351 = swift_allocObject();
      v351[2] = sub_1C4C2F804;
      v351[3] = v350;
      v352 = v351;
      v776 = v351;
      v771 = v348;

      v772 = v350;

      v778 = sub_1C4F00968();
      LODWORD(v774) = sub_1C4F01CE8();
      v353 = swift_allocObject();
      *(v353 + 16) = 32;
      v354 = v353;
      v773 = swift_allocObject();
      *(v773 + 16) = 8;
      v355 = swift_allocObject();
      v356 = v779;
      *(v355 + 16) = sub_1C4C2C804;
      *(v355 + 24) = v356;
      v357 = swift_allocObject();
      *(v357 + 16) = sub_1C4B0E9F8;
      *(v357 + 24) = v355;
      v358 = swift_allocObject();
      *(v358 + 16) = 32;
      v359 = swift_allocObject();
      *(v359 + 16) = 8;
      v360 = swift_allocObject();
      *(v360 + 16) = sub_1C4C2F800;
      *(v360 + 24) = v352;
      v361 = swift_allocObject();
      *(v361 + 16) = sub_1C4B0E9F8;
      *(v361 + 24) = v360;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v362 = swift_allocObject();
      *(v362 + 16) = xmmword_1C4F0F820;
      *(v362 + 32) = sub_1C44549F4;
      *(v362 + 40) = v354;
      v363 = v773;
      *(v362 + 48) = sub_1C44549F4;
      *(v362 + 56) = v363;
      *(v362 + 64) = sub_1C4454C38;
      *(v362 + 72) = v357;
      *(v362 + 80) = sub_1C44549F4;
      *(v362 + 88) = v358;
      *(v362 + 96) = sub_1C44549F4;
      *(v362 + 104) = v359;
      *(v362 + 112) = sub_1C4454C38;
      *(v362 + 120) = v361;
      swift_setDeallocating();

      v766 = v355;

      v770 = v360;

      v765 = v357;

      v769 = v358;

      v767 = v359;

      v768 = v361;

      sub_1C49E1614();
      if (os_log_type_enabled(v778, v774))
      {
        v364 = swift_slowAlloc();
        v365 = swift_slowAlloc();
        v785 = v365;
        *v364 = 514;
        *(v364 + 2) = 32;

        *(v364 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        v366 = v672;
        v367 = v665;
        v368 = sub_1C4F02858();
        v370 = sub_1C441D828(v368, v369, &v785);

        *(v364 + 4) = v370;

        v371 = *(v777 + 8);
        v371(v366, v367);
        *(v364 + 12) = 32;

        *(v364 + 13) = 8;

        v372 = v676;
        v373 = sub_1C4F02858();
        v375 = sub_1C441D828(v373, v374, &v785);

        *(v364 + 14) = v375;

        v371(v372, v367);
        v376 = v778;
        _os_log_impl(&dword_1C43F8000, v778, v774, "Couldn't find a life event that points to this trip, segmentId: %s, lifeEventId: %s.", v364, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v365, -1, -1);
        MEMORY[0x1C6942830](v364, -1, -1);
      }

      else
      {

        v371 = *(v777 + 8);
        v380 = v665;
        v371(v672, v665);

        v371(v676, v380);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v225 = sub_1C4F00F28();
      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      v381 = v665;
      v371(v775, v665);
      result = (v371)(v780, v381);
      goto LABEL_63;
    }

    v377 = *(v773 + 32);
    v377(v771, v148, v772);
    v378 = v671;
    sub_1C4EFFA18();
    v379 = sub_1C4EFFC68();
    if (sub_1C44157D4(v378, 1, v379) == 1)
    {
      sub_1C4420C3C(v671, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v670, 1, 1, v710);
    }

    else
    {
      v382 = v670;
      v383 = v671;
      sub_1C4EFFC58();
      (*(*(v379 - 8) + 8))(v383, v379);
      if (sub_1C44157D4(v382, 1, v710) != 1)
      {
        (*(v708 + 32))(v669, v670, v710);
        goto LABEL_227;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v670, 1, v710) != 1)
    {
      sub_1C4420C3C(v670, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_227:
    v384 = *(v708 + 32);
    v384(v769, v669, v710);
    v385 = v674;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v385, 1, v379) == 1)
    {
      sub_1C4420C3C(v674, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v673, 1, 1, v710);
    }

    else
    {
      v386 = v673;
      v387 = v674;
      sub_1C4EFFC58();
      (*(*(v379 - 8) + 8))(v387, v379);
      if (sub_1C44157D4(v386, 1, v710) != 1)
      {
        v384(v675, v673, v710);
        goto LABEL_233;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v673, 1, v710) != 1)
    {
      sub_1C4420C3C(v673, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_233:
    v388 = v680;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v388, 1, v379) == 1)
    {
      sub_1C4420C3C(v680, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v679, 1, 1, v710);
    }

    else
    {
      v389 = v679;
      v390 = v680;
      sub_1C4EFFC48();
      (*(*(v379 - 8) + 8))(v390, v379);
      if (sub_1C44157D4(v389, 1, v710) != 1)
      {
        v384(v677, v679, v710);
        goto LABEL_239;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v679, 1, v710) != 1)
    {
      sub_1C4420C3C(v679, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_239:
    sub_1C4C2BCB8(v675, v677, v770);
    v391 = v686;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v391, 1, v379) == 1)
    {
      sub_1C4420C3C(v686, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v685, 1, 1, v710);
    }

    else
    {
      v392 = v685;
      v393 = v686;
      sub_1C4EFFC48();
      (*(*(v379 - 8) + 8))(v393, v379);
      if (sub_1C44157D4(v392, 1, v710) != 1)
      {
        v384(v682, v685, v710);
        goto LABEL_245;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v685, 1, v710) != 1)
    {
      sub_1C4420C3C(v685, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_245:
    v384(v768, v682, v710);
    v394 = *MEMORY[0x1E69A9878];
    v708 = *(v727 + 104);
    (v708)(v694, v394, v728);
    v395 = v788;
    sub_1C4EFF778();
    v211 = v395;
    if (v395)
    {

      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      (*(v727 + 8))(v694, v728);
      sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
      (*(v773 + 8))(v771, v772);
      goto LABEL_78;
    }

    v396 = *(v727 + 8);
    v397 = v694;
    v727 += 8;
    v694 = v396;
    (v396)(v397, v728);
    v398 = sub_1C4C1F9D0(v692);
    v788 = 0;
    v399 = v398;
    (*(v696 + 8))(v692, v697);
    v400 = v683;
    sub_1C48687B8(v399, v683);

    if (sub_1C44157D4(v400, 1, v772) == 1)
    {
      sub_1C4420C3C(v683, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v401 = sub_1C4F00978();
      v778 = sub_1C442B738(v401, qword_1EDE2DF70);
      v402 = v678;
      v403 = v665;
      v404 = v637;
      v637(v678, v780, v665);
      v404(v689, v402, v403);
      v405 = v777;
      v406 = (*(v777 + 80) + 16) & ~*(v777 + 80);
      v407 = swift_allocObject();
      v776 = *(v405 + 32);
      (v776)(&v407[v406], v402, v403);
      v408 = swift_allocObject();
      v779 = v408;
      *(v408 + 16) = sub_1C4C2F804;
      *(v408 + 24) = v407;
      v409 = v681;
      v404(v681, v775, v403);
      v404(v698, v409, v403);
      v410 = swift_allocObject();
      (v776)(v410 + v406, v409, v403);
      v411 = swift_allocObject();
      v411[2] = sub_1C4C2F804;
      v411[3] = v410;
      v412 = v411;
      v776 = v411;
      v766 = v407;

      v767 = v410;

      v778 = sub_1C4F00968();
      LODWORD(v774) = sub_1C4F01CB8();
      v413 = swift_allocObject();
      *(v413 + 16) = 32;
      v414 = v413;
      v760 = swift_allocObject();
      *(v760 + 16) = 8;
      v415 = swift_allocObject();
      v416 = v779;
      *(v415 + 16) = sub_1C4C2F800;
      *(v415 + 24) = v416;
      v417 = swift_allocObject();
      *(v417 + 16) = sub_1C4B0E9F8;
      *(v417 + 24) = v415;
      v418 = swift_allocObject();
      v418[16] = 32;
      v419 = swift_allocObject();
      *(v419 + 16) = 8;
      v420 = swift_allocObject();
      *(v420 + 16) = sub_1C4C2F800;
      *(v420 + 24) = v412;
      v421 = swift_allocObject();
      *(v421 + 16) = sub_1C4B0E9F8;
      *(v421 + 24) = v420;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v422 = swift_allocObject();
      *(v422 + 16) = xmmword_1C4F0F820;
      *(v422 + 32) = sub_1C44549F4;
      *(v422 + 40) = v414;
      v423 = v760;
      *(v422 + 48) = sub_1C44549F4;
      *(v422 + 56) = v423;
      *(v422 + 64) = sub_1C4454C38;
      *(v422 + 72) = v417;
      *(v422 + 80) = sub_1C44549F4;
      *(v422 + 88) = v418;
      *(v422 + 96) = sub_1C44549F4;
      *(v422 + 104) = v419;
      *(v422 + 112) = sub_1C4454C38;
      *(v422 + 120) = v421;
      swift_setDeallocating();

      v761 = v415;

      v763 = v420;

      v765 = v418;

      v764 = v419;

      v762 = v421;

      sub_1C49E1614();
      if (os_log_type_enabled(v778, v774))
      {
        v424 = swift_slowAlloc();
        v759 = swift_slowAlloc();
        v785 = v759;
        *v424 = 514;
        *(v424 + 2) = 32;

        *(v424 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        v425 = v689;
        v426 = v665;
        v427 = sub_1C4F02858();
        v429 = sub_1C441D828(v427, v428, &v785);

        *(v424 + 4) = v429;

        v430 = *(v777 + 8);
        v779 = (v777 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v430(v425, v426);
        *(v424 + 12) = 32;

        *(v424 + 13) = 8;

        v431 = v698;
        v432 = sub_1C4F02858();
        v434 = sub_1C441D828(v432, v433, &v785);

        *(v424 + 14) = v434;

        v435 = v430;
        v430(v431, v426);
        v436 = v778;
        _os_log_impl(&dword_1C43F8000, v778, v774, "Couldn't find a life event before trip with segmentId: %s, lifeEventId: %s.", v424, 0x16u);
        v437 = v759;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v437, -1, -1);
        MEMORY[0x1C6942830](v424, -1, -1);
      }

      else
      {

        v439 = *(v777 + 8);
        v779 = (v777 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v440 = v665;
        v439(v689, v665);

        v435 = v439;
        v439(v698, v440);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v225 = sub_1C4F00F28();
      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
      (*(v773 + 8))(v771, v772);
      v441 = v665;
      v435(v775, v665);
      result = (v435)(v780, v441);
      goto LABEL_63;
    }

    v377(v767, v683, v772);
    LODWORD(v698) = *MEMORY[0x1E69A9880];
    (v708)(v702);
    v438 = v788;
    sub_1C4EFF768();
    v788 = v438;
    if (v438)
    {

      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      (v694)(v702, v728);
LABEL_258:
      v444 = *(v773 + 8);
      v445 = v772;
      v444(v767, v772);
      sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v444(v771, v445);
      v336 = *(v777 + 8);
      v337 = v665;
      v336(v775, v665);
      result = (v336)(v780, v337);
      v211 = v788;
      goto LABEL_79;
    }

    (v694)(v702, v728);
    v442 = v788;
    v443 = sub_1C4C201BC(v703);
    v788 = v442;
    if (v442)
    {

      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      (*(v706 + 8))(v703, v707);
      goto LABEL_258;
    }

    v446 = v443;
    (*(v706 + 8))(v703, v707);
    v447 = v688;
    sub_1C48687B8(v446, v688);

    if (sub_1C44157D4(v447, 1, v772) == 1)
    {
      sub_1C4420C3C(v688, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v448 = sub_1C4F00978();
      v778 = sub_1C442B738(v448, qword_1EDE2DF70);
      v449 = v684;
      v450 = v665;
      v451 = v637;
      v637(v684, v780, v665);
      v451(v699, v449, v450);
      v452 = v777;
      v453 = (*(v777 + 80) + 16) & ~*(v777 + 80);
      v454 = swift_allocObject();
      v776 = *(v452 + 32);
      (v776)(v454 + v453, v449, v450);
      v455 = swift_allocObject();
      v779 = v455;
      *(v455 + 16) = sub_1C4C2F804;
      *(v455 + 24) = v454;
      v456 = v687;
      v451(v687, v775, v450);
      v451(v704, v456, v450);
      v457 = swift_allocObject();
      (v776)(&v457[v453], v456, v450);
      v458 = swift_allocObject();
      v458[2] = sub_1C4C2C870;
      v458[3] = v457;
      v459 = v458;
      v776 = v458;
      v764 = v454;

      v765 = v457;

      v778 = sub_1C4F00968();
      LODWORD(v774) = sub_1C4F01CB8();
      v460 = swift_allocObject();
      *(v460 + 16) = 32;
      v461 = v460;
      v766 = swift_allocObject();
      v766[16] = 8;
      v462 = swift_allocObject();
      v463 = v779;
      *(v462 + 16) = sub_1C4C2F800;
      *(v462 + 24) = v463;
      v464 = swift_allocObject();
      *(v464 + 16) = sub_1C4B0E9F8;
      *(v464 + 24) = v462;
      v465 = swift_allocObject();
      *(v465 + 16) = 32;
      v466 = swift_allocObject();
      *(v466 + 16) = 8;
      v467 = swift_allocObject();
      *(v467 + 16) = sub_1C4C2F800;
      *(v467 + 24) = v459;
      v468 = swift_allocObject();
      *(v468 + 16) = sub_1C4B0E9F8;
      *(v468 + 24) = v467;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v469 = swift_allocObject();
      *(v469 + 16) = xmmword_1C4F0F820;
      *(v469 + 32) = sub_1C44549F4;
      *(v469 + 40) = v461;
      v470 = v766;
      *(v469 + 48) = sub_1C44549F4;
      *(v469 + 56) = v470;
      *(v469 + 64) = sub_1C4454C38;
      *(v469 + 72) = v464;
      *(v469 + 80) = sub_1C44549F4;
      *(v469 + 88) = v465;
      *(v469 + 96) = sub_1C44549F4;
      *(v469 + 104) = v466;
      *(v469 + 112) = sub_1C4454C38;
      *(v469 + 120) = v468;
      swift_setDeallocating();

      v759 = v462;

      v761 = v467;

      v763 = v465;

      v762 = v466;

      v760 = v468;

      sub_1C49E1614();
      if (os_log_type_enabled(v778, v774))
      {
        v471 = swift_slowAlloc();
        v758 = swift_slowAlloc();
        v785 = v758;
        *v471 = 514;
        *(v471 + 2) = 32;

        *(v471 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        v472 = v699;
        v473 = v665;
        v474 = sub_1C4F02858();
        v476 = sub_1C441D828(v474, v475, &v785);

        *(v471 + 4) = v476;

        v477 = *(v777 + 8);
        v477(v472, v473);
        *(v471 + 12) = 32;

        *(v471 + 13) = 8;

        v478 = v704;
        v479 = sub_1C4F02858();
        v481 = sub_1C441D828(v479, v480, &v785);

        *(v471 + 14) = v481;

        v477(v478, v473);
        v482 = v778;
        _os_log_impl(&dword_1C43F8000, v778, v774, "Couldn't find a life event after trip with segmentId: %s, lifeEventId: %s.", v471, 0x16u);
        v483 = v758;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v483, -1, -1);
        MEMORY[0x1C6942830](v471, -1, -1);
      }

      else
      {

        v477 = *(v777 + 8);
        v485 = v665;
        v477(v699, v665);

        v477(v704, v485);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v225 = sub_1C4F00F28();
      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      v486 = *(v773 + 8);
      v487 = v772;
      v486(v767, v772);
      sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v486(v771, v487);
      v488 = v665;
      v477(v775, v665);
      result = (v477)(v780, v488);
      goto LABEL_63;
    }

    v377(v764, v688, v772);
    v484 = v691;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v484, 1, v379) == 1)
    {
      sub_1C4420C3C(v691, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v690, 1, 1, v710);
    }

    else
    {
      v489 = v690;
      v490 = v691;
      sub_1C4EFFC58();
      (*(*(v379 - 8) + 8))(v490, v379);
      if (sub_1C44157D4(v489, 1, v710) != 1)
      {
        v384(v693, v690, v710);
        goto LABEL_272;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v690, 1, v710) != 1)
    {
      sub_1C4420C3C(v690, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_272:
    v491 = v701;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v491, 1, v379) == 1)
    {
      sub_1C4420C3C(v701, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(*&v700, 1, 1, v710);
    }

    else
    {
      v492 = *&v700;
      v493 = v701;
      sub_1C4EFFC48();
      (*(*(v379 - 8) + 8))(v493, v379);
      if (sub_1C44157D4(v492, 1, v710) != 1)
      {
        v384(v695, *&v700, v710);
        goto LABEL_278;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(*&v700, 1, v710) != 1)
    {
      sub_1C4420C3C(*&v700, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_278:
    sub_1C4C2BCB8(v693, v695, v766);
    v494 = v709;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v494, 1, v379) == 1)
    {
      sub_1C4420C3C(v709, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v705, 1, 1, v710);
    }

    else
    {
      v495 = v705;
      v496 = v709;
      sub_1C4EFFC58();
      (*(*(v379 - 8) + 8))(v496, v379);
      if (sub_1C44157D4(v495, 1, v710) != 1)
      {
        v384(v711, v705, v710);
        goto LABEL_284;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v705, 1, v710) != 1)
    {
      sub_1C4420C3C(v705, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_284:
    v497 = v716;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v497, 1, v379) == 1)
    {
      sub_1C4420C3C(v716, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v714, 1, 1, v710);
    }

    else
    {
      v498 = v714;
      v499 = v716;
      sub_1C4EFFC48();
      (*(*(v379 - 8) + 8))(v499, v379);
      if (sub_1C44157D4(v498, 1, v710) != 1)
      {
        v384(v712, v714, v710);
        goto LABEL_290;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v714, 1, v710) != 1)
    {
      sub_1C4420C3C(v714, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_290:
    sub_1C4C2BCB8(v711, v712, v765);
    (v708)(v717, v698, v728);
    v500 = v788;
    sub_1C4EFF758();
    v211 = v500;
    if (v500)
    {

      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      (v694)(v717, v728);
LABEL_302:
      sub_1C4420C3C(v765, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v766, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      v555 = *(v773 + 8);
      v556 = v772;
      v555(v764, v772);
      v555(v767, v556);
      sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v555(v771, v556);
      goto LABEL_78;
    }

    (v694)(v717, v728);
    sub_1C45438E8();
    v717 = v501;
    v502 = *(isa + 1);
    v502(v720, v726);
    (v708)(v719, v698, v728);
    sub_1C4EFF758();
    (v694)(v719, v728);
    sub_1C45438E8();
    isa = v503;
    v502(v722, v726);
    (v708)(v721, v698, v728);
    sub_1C4EFF758();
    (v694)(v721, v728);
    sub_1C45438E8();
    v728 = v504;
    v788 = 0;
    v502(v724, v726);
    if (!*(v717 + 2) || !*(v728 + 16))
    {
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v505 = sub_1C4F00978();
      v726 = sub_1C442B738(v505, qword_1EDE2DF70);
      v506 = v713;
      v507 = v665;
      v508 = v637;
      v637(v713, v780, v665);
      v508(v718, v506, v507);
      v509 = v777;
      v510 = (*(v777 + 80) + 16) & ~*(v777 + 80);
      v511 = swift_allocObject();
      v724 = *(v509 + 32);
      (v724)(v511 + v510, v506, v507);
      v512 = swift_allocObject();
      v727 = v512;
      *(v512 + 16) = sub_1C4C2F804;
      *(v512 + 24) = v511;
      v513 = v715;
      v508(v715, v775, v507);
      v508(v723, v513, v507);
      v514 = swift_allocObject();
      (v724)(v514 + v510, v513, v507);
      v515 = swift_allocObject();
      *(v515 + 16) = sub_1C4C2F804;
      *(v515 + 24) = v514;
      v721 = v511;

      v724 = v514;

      v726 = sub_1C4F00968();
      LODWORD(v720) = sub_1C4F01CD8();
      v516 = swift_allocObject();
      v516[16] = 32;
      v517 = v516;
      v711 = v516;
      v712 = swift_allocObject();
      *(v712 + 16) = 8;
      v518 = swift_allocObject();
      v519 = v727;
      *(v518 + 16) = sub_1C4C2F800;
      *(v518 + 24) = v519;
      v520 = swift_allocObject();
      *(v520 + 16) = sub_1C4B0E9F8;
      *(v520 + 24) = v518;
      v521 = swift_allocObject();
      *(v521 + 16) = 32;
      v522 = swift_allocObject();
      *(v522 + 16) = 8;
      v523 = swift_allocObject();
      *(v523 + 16) = sub_1C4C2F800;
      *(v523 + 24) = v515;
      v524 = swift_allocObject();
      *(v524 + 16) = sub_1C4B0E9F8;
      *(v524 + 24) = v523;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v525 = swift_allocObject();
      *(v525 + 16) = xmmword_1C4F0F820;
      *(v525 + 32) = sub_1C44549F4;
      *(v525 + 40) = v517;
      v526 = v712;
      *(v525 + 48) = sub_1C44549F4;
      *(v525 + 56) = v526;
      *(v525 + 64) = sub_1C4454C38;
      *(v525 + 72) = v520;
      *(v525 + 80) = sub_1C44549F4;
      *(v525 + 88) = v521;
      *(v525 + 96) = sub_1C44549F4;
      *(v525 + 104) = v522;
      *(v525 + 112) = sub_1C4454C38;
      *(v525 + 120) = v524;
      swift_setDeallocating();

      v713 = v518;

      v722 = v515;

      v719 = v523;

      v715 = v521;

      v714 = v522;

      v716 = v524;

      sub_1C49E1614();
      if (os_log_type_enabled(v726, v720))
      {
        v527 = swift_slowAlloc();
        v528 = swift_slowAlloc();
        v785 = v528;
        *v527 = 514;
        *(v527 + 2) = 32;

        *(v527 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        v529 = v718;
        v530 = v665;
        v531 = sub_1C4F02858();
        v533 = sub_1C441D828(v531, v532, &v785);

        *(v527 + 4) = v533;

        v534 = *(v777 + 8);
        v534(v529, v530);
        *(v527 + 12) = 32;

        *(v527 + 13) = 8;

        v535 = v723;
        v536 = sub_1C4F02858();
        v538 = sub_1C441D828(v536, v537, &v785);

        *(v527 + 14) = v538;

        v534(v535, v530);
        v539 = v726;
        _os_log_impl(&dword_1C43F8000, v726, v720, "Couldn't find a life event either before or after this trip, segmentId: %s, lifeEventId: %s.", v527, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v528, -1, -1);
        MEMORY[0x1C6942830](v527, -1, -1);
      }

      else
      {

        v540 = *(v777 + 8);
        v541 = v665;
        v540(v718, v665);

        v540(v723, v541);
      }
    }

    sub_1C456902C(&qword_1EC0C4E18, &qword_1C4F5E350);
    v542 = (sub_1C456902C(&qword_1EC0C4E20, &qword_1C4F5E358) - 8);
    v543 = *(*v542 + 72);
    v544 = (*(*v542 + 80) + 32) & ~*(*v542 + 80);
    v545 = swift_allocObject();
    v706 = xmmword_1C4F0D130;
    *(v545 + 16) = xmmword_1C4F0D130;
    v546 = v545 + v544;
    v547 = v542[14];
    v704 = objc_opt_self();
    v548 = [v704 miles];
    v549 = sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
    v550 = v742;
    v703 = v549;
    sub_1C4EF93F8();
    sub_1C4EFE1D8();
    v551 = *(v731 + 8);
    v731 += 8;
    v711 = v551;
    (v551)(v550, v733);
    *(v546 + v547) = 1;
    sub_1C4EFE1E8();
    sub_1C4C2F284(&qword_1EC0C4E30, MEMORY[0x1E69A9630]);
    v727 = sub_1C4F00F28();
    v702 = objc_opt_self();
    v552 = [v702 seconds];
    v701 = sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
    sub_1C4EF93F8();
    sub_1C456902C(&qword_1EC0C4E38, &qword_1C4F5E360);
    sub_1C4C2C874();
    v553 = v788;
    sub_1C4EF9328();
    v211 = v553;
    if (v553)
    {

      sub_1C4434000(v639, v640);
      sub_1C4434000(v641, v642);
      sub_1C4434000(v643, v644);
      sub_1C4434000(v645, v646);
      sub_1C4434000(v647, v648);
      sub_1C4434000(v649, v650);
      sub_1C4434000(v651, v652);
      sub_1C4434000(v653, v654);
      sub_1C4434000(v655, v656);
      sub_1C4434000(v657, v658);
      sub_1C4434000(v659, v660);
      sub_1C4434000(v661, v662);
      sub_1C4434000(v663, v664);
      (*(v763 + 8))(v761, v762);
      goto LABEL_302;
    }

    v726 = sub_1C4C2EAC8(v785);

    sub_1C4EF9328();
    v724 = sub_1C4C2E76C(v785);

    sub_1C456902C(&qword_1EC0C4E50, &qword_1C4F5E368);
    v788 = sub_1C4C2EE24();
    sub_1C4EF9328();
    v723 = sub_1C4C2E410(v785);

    sub_1C456902C(&qword_1EC0C4E68, &qword_1C4F5E370);
    sub_1C4C2EEE0();
    sub_1C4EF9328();
    v722 = sub_1C4C2E0B4(v785);

    sub_1C4EF9328();
    v721 = sub_1C4C2DD58(v785);

    sub_1C456902C(&qword_1EC0C4E80, &qword_1C4F5E378);
    sub_1C4C2EF9C();
    sub_1C4EF9328();
    v720 = sub_1C4C2D9FC(v785);

    sub_1C456902C(&qword_1EC0C4E98, &qword_1C4F5E380);
    sub_1C4C2F058();
    sub_1C4EF9328();
    v719 = sub_1C4C2D6A0(v785);

    sub_1C456902C(&qword_1EC0C4EB0, &qword_1C4F5E388);
    sub_1C4C2F114();
    sub_1C4EF9328();
    sub_1C45440B0(v785);
    v718 = v554;

    sub_1C4EF9328();
    v716 = sub_1C4C2D344(v785);

    sub_1C4EF9328();
    v715 = sub_1C4C2CFE8(v785);

    sub_1C4EF9328();
    v714 = sub_1C4C2CC8C(v785);

    sub_1C4EF9328();
    v713 = sub_1C4C2C930(v785);

    sub_1C4EF9328();
    sub_1C45440B0(v785);
    v712 = v557;

    v700 = v202 - v201;
    v558 = [objc_opt_self() metersPerSecond];
    sub_1C4461BB8(0, &qword_1EC0C4EC8, 0x1E696B078);
    sub_1C4EF93F8();
    v559 = objc_opt_self();
    v560 = [v559 kilowattHours];
    sub_1C4461BB8(0, &qword_1EC0C4ED0, 0x1E696B030);
    sub_1C4EF93F8();
    v561 = [v559 kilowattHours];
    sub_1C4EF93F8();
    v710 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0C4ED8, &qword_1C4F5E390);
    v709 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0C4EE0, &unk_1C4F5E398);
    v708 = sub_1C4F00F28();
    v707 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v562 = *(v777 + 72);
    v563 = (*(v777 + 80) + 32) & ~*(v777 + 80);
    v564 = swift_allocObject();
    *(v564 + 16) = v706;
    v705 = v564;
    v565 = v665;
    v566 = v637;
    v637((v564 + v563), v775, v665);
    v567 = swift_allocObject();
    *(v567 + 16) = v706;
    *&v706 = v567;
    v566(v567 + v563, v780, v565);
    v568 = objc_autoreleasePoolPush();
    sub_1C456902C(&qword_1EC0C4EE8, &qword_1C4F5E3A8);
    sub_1C4C2F1D0();
    sub_1C4EF9328();
    v729 = sub_1C4C1F45C(v785);

    objc_autoreleasePoolPop(v568);
    v569 = v730;
    sub_1C4C1F5EC();
    v788 = 0;
    v570 = sub_1C456902C(&qword_1EC0C4F00, &unk_1C4F5E3B0);
    if (sub_1C44157D4(v569, 1, v570) == 1)
    {
      sub_1C4420C3C(v730, &qword_1EC0C4DB8, &qword_1C4F5E2D8);
      sub_1C440BAA8(v734, 1, 1, v750);
    }

    else
    {
      v571 = *(v570 + 48);
      v572 = v734;
      v573 = v730;
      v574 = v750;
      (*(v748 + 32))(v734, v730, v750);
      sub_1C440BAA8(v572, 0, 1, v574);
      (v711)(&v573[v571], v733);
    }

    v575 = *MEMORY[0x1E69A9DC8];
    v576 = v732;
    v577 = v750;
    v730 = *(v748 + 104);
    (v730)(v732, v575, v750);
    sub_1C440BAA8(v576, 0, 1, v577);
    v578 = *(v738 + 48);
    v579 = v736;
    sub_1C4460050(v734, v736, &qword_1EC0C4D38, &qword_1C4F5E2E0);
    sub_1C4460050(v576, v579 + v578, &qword_1EC0C4D38, &qword_1C4F5E2E0);
    if (sub_1C44157D4(v579, 1, v577) == 1)
    {
      sub_1C4420C3C(v732, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      sub_1C4420C3C(v734, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      if (sub_1C44157D4(v736 + v578, 1, v750) == 1)
      {
        sub_1C4420C3C(v736, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        LODWORD(v774) = 1;
        goto LABEL_313;
      }
    }

    else
    {
      v580 = v736;
      sub_1C4460050(v736, v735, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      if (sub_1C44157D4(v580 + v578, 1, v750) != 1)
      {
        v581 = v748;
        v582 = v736;
        v583 = v744;
        v584 = v750;
        (*(v748 + 32))(v744, v736 + v578, v750);
        sub_1C4C2F284(&qword_1EC0C4F08, MEMORY[0x1E69A9DD0]);
        v585 = v735;
        LODWORD(v774) = sub_1C4F010B8();
        v586 = *(v581 + 8);
        v586(v583, v584);
        sub_1C4420C3C(v732, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        sub_1C4420C3C(v734, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        v586(v585, v584);
        sub_1C4420C3C(v582, &qword_1EC0C4D38, &qword_1C4F5E2E0);
LABEL_313:
        v587 = v737;
        v588 = v788;
        sub_1C4C1F5EC();
        v788 = v588;

        if (sub_1C44157D4(v587, 1, v570) == 1)
        {
          sub_1C4420C3C(v737, &qword_1EC0C4DB8, &qword_1C4F5E2D8);
          sub_1C440BAA8(v740, 1, 1, v750);
        }

        else
        {
          v589 = *(v570 + 48);
          v590 = v740;
          v591 = v737;
          v592 = v750;
          (*(v748 + 32))(v740, v737, v750);
          sub_1C440BAA8(v590, 0, 1, v592);
          (v711)(v591 + v589, v733);
        }

        v593 = v739;
        v594 = v750;
        (v730)(v739, *MEMORY[0x1E69A9DC0], v750);
        sub_1C440BAA8(v593, 0, 1, v594);
        v595 = *(v738 + 48);
        v596 = v749;
        sub_1C4460050(v740, v749, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        sub_1C4460050(v593, v596 + v595, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        if (sub_1C44157D4(v596, 1, v594) == 1)
        {
          sub_1C4420C3C(v739, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          sub_1C4420C3C(v740, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          if (sub_1C44157D4(v749 + v595, 1, v750) == 1)
          {
            sub_1C4420C3C(v749, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            LODWORD(v738) = 1;
LABEL_323:
            v605 = v704;
            v606 = [v704 meters];
            sub_1C4EF93F8();
            v607 = [v605 meters];
            sub_1C4EF93F8();
            v608 = [v702 seconds];
            v609 = v700;
            sub_1C4EF93F8();
            (*(v763 + 16))(v746, v761, v762);
            (*(v757 + 16))(v747, v754, v758);
            v610 = v759[2];
            v611 = v760;
            v610(v751, v756, v760);
            v610(v752, v755, v611);
            v612 = sub_1C4EFF638();
            v613 = *(v612 + 48);
            v614 = *(v612 + 52);
            v615 = v612;
            swift_allocObject();
            v616 = sub_1C4EFF618();
            v617 = sub_1C4EFFA48();
            v618 = *(v617 + 48);
            v619 = *(v617 + 52);
            swift_allocObject();
            v620 = v753;

            v621 = MEMORY[0x1C693E720](v717, isa, v728, v620);
            sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
            v622 = swift_allocObject();
            *(v622 + 16) = xmmword_1C4F17CF0;
            v785 = sub_1C4F02908();
            v786 = v623;
            MEMORY[0x1C6940010](v778, v779);
            v624 = v786;
            *(v622 + 32) = v785;
            *(v622 + 40) = v624;
            v625 = v665;
            *(v622 + 72) = v665;
            v626 = sub_1C4422F90((v622 + 48));
            v627 = v780;
            v637(v626, v780, v625);
            *(v622 + 80) = 0x696669746E656469;
            *(v622 + 88) = 0xEA00000000007265;
            v628 = v781;
            *(v622 + 96) = v776;
            *(v622 + 104) = v628;
            *(v622 + 120) = MEMORY[0x1E69E6158];
            *(v622 + 128) = 0x6D69547472617473;
            *(v622 + 136) = 0xE900000000000065;
            *(v622 + 144) = v201;
            v629 = MEMORY[0x1E69E63B0];
            *(v622 + 168) = MEMORY[0x1E69E63B0];
            *(v622 + 176) = 0x656D6954646E65;
            *(v622 + 184) = 0xE700000000000000;
            *(v622 + 192) = v202;
            *(v622 + 216) = v629;
            *(v622 + 224) = 0x65726F6373;
            *(v622 + 232) = 0xE500000000000000;
            *(v622 + 240) = v205;
            *(v622 + 264) = v629;
            *(v622 + 272) = 0x65636E6174736964;
            *(v622 + 280) = 0xE800000000000000;
            *(v622 + 288) = v203;
            *(v622 + 312) = v629;
            strcpy((v622 + 320), "elevationGain");
            *(v622 + 334) = -4864;
            *(v622 + 336) = v204;
            *(v622 + 360) = v629;
            *(v622 + 368) = 0x6E6F697461727564;
            *(v622 + 376) = 0xE800000000000000;
            *(v622 + 384) = v609;
            *(v622 + 408) = v629;
            *(v622 + 416) = 0x6177686769487369;
            *(v622 + 424) = 0xE900000000000079;
            v630 = MEMORY[0x1E69E6370];
            *(v622 + 432) = v774 & 1;
            *(v622 + 456) = v630;
            *(v622 + 464) = 0x797469437369;
            *(v622 + 472) = 0xE600000000000000;
            *(v622 + 480) = v738 & 1;
            *(v622 + 504) = v630;
            *(v622 + 512) = 0x656D614E64616F72;
            *(v622 + 520) = 0xE900000000000073;
            *(v622 + 528) = 0u;
            *(v622 + 544) = 0u;
            *(v622 + 560) = 0x65746E6F4373746BLL;
            *(v622 + 568) = 0xEA00000000007478;
            *(v622 + 600) = v617;
            *(v622 + 576) = v621;
            *(v622 + 608) = 0x6174614473746BLL;
            *(v622 + 616) = 0xE700000000000000;
            *(v622 + 648) = v615;
            *(v622 + 624) = v616;

            sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
            v225 = sub_1C4F00F28();
            sub_1C4434000(v639, v640);
            sub_1C4434000(v641, v642);
            sub_1C4434000(v643, v644);
            sub_1C4434000(v645, v646);
            sub_1C4434000(v647, v648);
            sub_1C4434000(v649, v650);
            sub_1C4434000(v651, v652);
            sub_1C4434000(v653, v654);
            sub_1C4434000(v655, v656);
            sub_1C4434000(v657, v658);
            sub_1C4434000(v659, v660);
            sub_1C4434000(v661, v662);
            sub_1C4434000(v663, v664);

            v631 = v759[1];
            v632 = v760;
            v631(v755, v760);
            v631(v756, v632);
            (*(v757 + 8))(v754, v758);
            (*(v763 + 8))(v761, v762);
            sub_1C4420C3C(v765, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            sub_1C4420C3C(v766, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            v633 = *(v773 + 8);
            v634 = v772;
            v633(v764, v772);
            v633(v767, v634);
            sub_1C4420C3C(v768, &qword_1EC0C4DE8, &unk_1C4F5E320);
            sub_1C4420C3C(v770, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            sub_1C4420C3C(v769, &qword_1EC0C4DF0, &unk_1C4F5E330);
            v633(v771, v634);
            v635 = *(v777 + 8);
            v635(v775, v625);
            result = (v635)(v627, v625);
LABEL_63:
            *v782 = v225;
            return result;
          }
        }

        else
        {
          v597 = v749;
          sub_1C4460050(v749, v741, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          if (sub_1C44157D4(v597 + v595, 1, v750) != 1)
          {
            v598 = v748;
            v599 = v749;
            v600 = v749 + v595;
            v601 = v744;
            v602 = v750;
            (*(v748 + 32))(v744, v600, v750);
            sub_1C4C2F284(&qword_1EC0C4F08, MEMORY[0x1E69A9DD0]);
            v603 = v741;
            LODWORD(v738) = sub_1C4F010B8();
            v604 = *(v598 + 8);
            v604(v601, v602);
            sub_1C4420C3C(v739, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            sub_1C4420C3C(v740, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            v604(v603, v602);
            sub_1C4420C3C(v599, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            goto LABEL_323;
          }

          sub_1C4420C3C(v739, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          sub_1C4420C3C(v740, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          (*(v748 + 8))(v741, v750);
        }

        sub_1C4420C3C(v749, &qword_1EC0C4DB0, &qword_1C4F5E2D0);
        LODWORD(v738) = 0;
        goto LABEL_323;
      }

      sub_1C4420C3C(v732, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      sub_1C4420C3C(v734, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      (*(v748 + 8))(v735, v750);
    }

    sub_1C4420C3C(v736, &qword_1EC0C4DB0, &qword_1C4F5E2D0);
    LODWORD(v774) = 0;
    goto LABEL_313;
  }

  sub_1C4434000(v639, v640);
  sub_1C4434000(v641, v642);
  sub_1C4434000(v643, v644);
  sub_1C4434000(v645, v646);
  sub_1C4434000(v647, v648);
  sub_1C4434000(v649, v650);
  sub_1C4434000(v651, v652);
  sub_1C4434000(v653, v654);
  sub_1C4434000(v655, v656);
  sub_1C4434000(v657, v658);
  sub_1C4434000(v659, v660);
  sub_1C4434000(v661, v662);
  sub_1C4434000(v663, v664);
  v208 = *(v777 + 8);
  v209 = v665;
  v208(v775, v665);
  result = (v208)(v780, v209);
  v211 = v207;
LABEL_79:
  *v774 = v211;
  return result;
}

uint64_t sub_1C4C2BC88(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4C2BCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1C4EF9CD8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 32);
  v21(v18, v33, v19);
  v21(&v18[*(v5 + 56)], a2, v19);
  v31 = v15;
  sub_1C4460050(v18, v15, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v33 = *(v5 + 56);
  v30 = v12;
  sub_1C44CD9E0(v18, v12, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v22 = *(v5 + 56);
  v23 = v32;
  v21(v32, v15, v19);
  v21((v23 + *(v5 + 56)), &v12[v22], v19);
  v24 = v34;
  sub_1C4460050(v23, v34, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v25 = *(v5 + 56);
  v21(v35, v24, v19);
  v26 = *(v20 + 8);
  v26(v24 + v25, v19);
  sub_1C44CD9E0(v23, v24, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v27 = *(v5 + 56);
  v28 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21(&v35[*(v28 + 36)], v24 + v27, v19);
  v26(v24, v19);
  v26(v30, v19);
  return (v26)(&v31[v33], v19);
}

uint64_t sub_1C4C2BFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a2, a1, v5);
}

uint64_t sub_1C4C2C028()
{
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);

  return v0;
}

uint64_t sub_1C4C2C0AC()
{
  sub_1C4C2C028();

  return swift_deallocClassInstance();
}

void sub_1C4C2C104()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = _s10ViewConfigVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DF70);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v15))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C44179D4(&dword_1C43F8000, v16, v17, "KTSSegmentViewGenerationProvider: Giving the listener");
    v1 = v0;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = *(v3 + 16);
  sub_1C443A738(v7, v5, v19, v20, v21, v22, v23, v24);
  if (!v1)
  {
    ViewGeneration.ViewClients.storage(for:fullRebuild:)();
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(v53, v51, 0x48uLL);
      v25 = *(v12 + 144);
      if (v25)
      {
        *&v51[24] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        *&v51[32] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
        *v51 = v25;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v36 = sub_1C4C81ADC(v51);
        sub_1C440962C(v51);
        v37 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v38 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v39 = sub_1C4C2F3D4(v38);

        sub_1C4C687F0(v39, v51);

        v40 = sub_1C4F00968();
        v41 = sub_1C4F01CB8();
        if (sub_1C43FDD64(v41))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44179D4(&dword_1C43F8000, v42, v43, "KTSSegmentViewGenerationProvider: Got the loader");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v44 = sub_1C4C83D3C(v36);

        v45 = sub_1C4F00968();
        v46 = sub_1C4F01CB8();
        if (sub_1C43FDD64(v46))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44179D4(&dword_1C43F8000, v47, v48, "KTSSegmentViewGenerationProvider: Got the listener");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C442E860(v51, v52);
        _s23KTSSegmentViewGeneratorCMa();
        swift_allocObject();
        sub_1C4C209A8(v52, v53, v44, v37);
        sub_1C440962C(v51);
        sub_1C4407E24();
        sub_1C443CED4(v12, v49);
        goto LABEL_17;
      }

      sub_1C450B034();
      v1 = swift_allocError();
      *v27 = v7;
      *(v27 + 8) = v5;
      *(v27 + 16) = 0xD000000000000017;
      *(v27 + 24) = 0x80000001C4FBAA30;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0xE000000000000000;
      *(v27 + 48) = *v51;
      *(v27 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(v53);
    }

    else
    {
      sub_1C450B034();
      v1 = swift_allocError();
      *v26 = v7;
      *(v26 + 8) = v5;
      *(v26 + 16) = xmmword_1C4F5B670;
      *(v26 + 32) = 0xD000000000000025;
      *(v26 + 40) = 0x80000001C4FB83A0;
      *(v26 + 48) = v50;
      *(v26 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4407E24();
    sub_1C443CED4(v12, v28);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v13, qword_1EDDFECB8);
  v29 = v1;
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CD8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_1C43FD084();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v1;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_1C43F8000, v30, v31, "KTSSegmentViewGenerationProvider error: %@", v32, 0xCu);
    sub_1C4420C3C(v33, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_willThrow();
LABEL_17:
  sub_1C43FBC80();
}

uint64_t sub_1C4C2C750()
{
  v2 = *v0;
  sub_1C4C2C104();
  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1C4C2C874()
{
  result = qword_1EC0C4E40;
  if (!qword_1EC0C4E40)
  {
    sub_1C4572308(&qword_1EC0C4E38, &qword_1C4F5E360);
    sub_1C4C2F284(&qword_1EC0C4E48, MEMORY[0x1E69A9318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E40);
  }

  return result;
}

uint64_t sub_1C4C2C930(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFF998();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F20, &qword_1C4F5E3C8);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2CC8C(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFD638();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F28, &qword_1C4F5E3D0);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2CFE8(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFDA38();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F30, &qword_1C4F5E3D8);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D344(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4F00258();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F38, &qword_1C4F5E3E0);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D6A0(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFD638();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F40, &qword_1C4F5E3E8);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D9FC(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFDA38();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F48, &qword_1C4F5E3F0);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2DD58(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFE138();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F50, &qword_1C4F5E3F8);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E0B4(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFE138();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F58, &qword_1C4F5E400);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E410(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFF998();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F60, &qword_1C4F5E408);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E76C(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFD628();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F68, &qword_1C4F5E410);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2EAC8(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v33 - v4;
  v39 = sub_1C4EFD628();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F70, &qword_1C4F5E418);
  result = sub_1C4F02538();
  v9 = 0;
  v43 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = result + 64;
  v35 = v5 + 16;
  v38 = v5;
  v41 = v2;
  v33[2] = v2 + 32;
  v33[3] = v5 + 32;
  v17 = result;
  v36 = result;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v43;
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v21;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = *(*(v22 + 56) + 8 * v21);
      v28 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v29 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v17 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      result = (*(v41 + 32))(*(v17 + 56) + *(v41 + 72) * v21, v29, v42);
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v17 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v17;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4C2EE24()
{
  result = qword_1EC0C4E58;
  if (!qword_1EC0C4E58)
  {
    sub_1C4572308(&qword_1EC0C4E50, &qword_1C4F5E368);
    sub_1C4C2F284(&qword_1EC0C4E60, MEMORY[0x1E69A9A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E58);
  }

  return result;
}

unint64_t sub_1C4C2EEE0()
{
  result = qword_1EC0C4E70;
  if (!qword_1EC0C4E70)
  {
    sub_1C4572308(&qword_1EC0C4E68, &qword_1C4F5E370);
    sub_1C4C2F284(&qword_1EC0C4E78, MEMORY[0x1E69A9620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E70);
  }

  return result;
}

unint64_t sub_1C4C2EF9C()
{
  result = qword_1EC0C4E88;
  if (!qword_1EC0C4E88)
  {
    sub_1C4572308(&qword_1EC0C4E80, &qword_1C4F5E378);
    sub_1C4C2F284(&qword_1EC0C4E90, MEMORY[0x1E69A93B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E88);
  }

  return result;
}

unint64_t sub_1C4C2F058()
{
  result = qword_1EC0C4EA0;
  if (!qword_1EC0C4EA0)
  {
    sub_1C4572308(&qword_1EC0C4E98, &qword_1C4F5E380);
    sub_1C4C2F284(&qword_1EC0C4EA8, MEMORY[0x1E69A9328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EA0);
  }

  return result;
}

unint64_t sub_1C4C2F114()
{
  result = qword_1EC0C4EB8;
  if (!qword_1EC0C4EB8)
  {
    sub_1C4572308(&qword_1EC0C4EB0, &qword_1C4F5E388);
    sub_1C4C2F284(&qword_1EC0C4EC0, MEMORY[0x1E69A9DD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EB8);
  }

  return result;
}

unint64_t sub_1C4C2F1D0()
{
  result = qword_1EC0C4EF0;
  if (!qword_1EC0C4EF0)
  {
    sub_1C4572308(&qword_1EC0C4EE8, &qword_1C4F5E3A8);
    sub_1C4C2F284(&qword_1EC0C4EF8, MEMORY[0x1E69A9640]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EF0);
  }

  return result;
}

uint64_t sub_1C4C2F284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4C2F2CC()
{
  v1 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_1C4C2F35C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C2F538(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1C4C2F3D4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C4C2F35C(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C4C2F538(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1C4C2F538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v24 = 0;
  v3 = 0;
  v28 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v27 = 0x80000001C4FBA3C0;
  v26 = 0x80000001C4FBA3E0;
  v25 = xmmword_1C4F0CE60;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v28 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1C442E860(*(v28 + 56) + 40 * v12, v32);
    v30[0] = v14;
    v30[1] = v15;
    sub_1C442E860(v32, &v31);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    v17 = v27;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = v17;
    v18 = v26;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = v18;
    v29[0] = v14;
    v29[1] = v15;
    MEMORY[0x1EEE9AC00](inited);
    v21[2] = v29;
    swift_bridgeObjectRetain_n();
    v19 = v33;
    LOBYTE(v14) = sub_1C44CE068(sub_1C44CE790, v21, inited);
    v33 = v19;
    swift_setDeallocating();
    sub_1C44DEE40();
    sub_1C4420C3C(v30, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
    sub_1C440962C(v32);

    if (v14)
    {
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C45877FC(v23, v22, v24, v28);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C2F808()
{
  v0 = sub_1C4F00DD8();
  v1 = sub_1C43FCDF8(v0);
  v30 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4F01188();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C4F00DC8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1C43FBCC4();
  v19 = sub_1C4EFD548();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1C43FBCC4();
  sub_1C4EFD518();
  sub_1C4F01138();
  sub_1C4F01178();
  sub_1C4F01148();

  (*(v11 + 8))(v16, v8);
  sub_1C4C32098(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  sub_1C4F00DB8();
  v21 = sub_1C43FD258();
  sub_1C44344B8(v21, v22);
  v23 = sub_1C43FD258();
  sub_1C4498FD8(v23, v24);
  v25 = sub_1C43FD258();
  sub_1C4434000(v25, v26);
  sub_1C4F00DA8();
  (*(v30 + 8))(v7, v0);
  v27 = sub_1C43FD258();
  sub_1C4434000(v27, v28);
  return sub_1C4EFF028();
}

uint64_t sub_1C4C2FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s21LanguageViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C2FBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C2FABC(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

void sub_1C4C2FC9C()
{
  v2 = type metadata accessor for InferredTriple();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C49B19E8();
  if (!v1)
  {
    v12 = v11;
    v104 = inited;
    v106 = v5;
    v111 = v10;
    v13 = sub_1C49B7FA8(v11);
    v99 = sub_1C4C31CFC(v13, 0.5);
    v98 = v13;
    v14 = sub_1C4C31E74(v13);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v108 = v14;

    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v110 = v2;
    v100 = v12;
    while (1)
    {
      v101 = v21;
      if (!v18)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v19)
          {
            goto LABEL_24;
          }

          v18 = *(v15 + 8 * v22);
          ++v20;
          if (v18)
          {
            v20 = v22;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_74;
      }

LABEL_10:
      v23 = (v20 << 9) | (8 * __clz(__rbit64(v18)));
      v24 = *(*(v108 + 56) + v23);
      v25 = *(*(v108 + 48) + v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C309E4(v25, v24, v12);
      sub_1C44036EC();

      v26 = *(v12 + 16);
      v27 = *(v101 + 16);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v101;
      if (!isUniquelyReferenced_nonNull_native || v28 > *(v101 + 24) >> 1)
      {
        if (v27 <= v28)
        {
          v31 = v27 + v26;
        }

        else
        {
          v31 = v27;
        }

        sub_1C458BD10(isUniquelyReferenced_nonNull_native, v31, 1, v101);
        v30 = v32;
      }

      v2 = v110;
      v18 &= v18 - 1;
      if (*(v12 + 16))
      {
        v33 = *(v30 + 16);
        if ((*(v30 + 24) >> 1) - v33 < v26)
        {
          goto LABEL_77;
        }

        v34 = v30 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v33;
        inited = v30;
        swift_arrayInitWithCopy();

        v21 = inited;
        v12 = v100;
        if (v26)
        {
          v35 = *(inited + 16);
          v36 = __OFADD__(v35, v26);
          v37 = v35 + v26;
          if (v36)
          {
            goto LABEL_78;
          }

          *(inited + 16) = v37;
        }
      }

      else
      {
        inited = v30;

        v21 = inited;
        v12 = v100;
        if (v26)
        {
          __break(1u);
LABEL_24:

          memcpy(__dst, (v104 + 24), sizeof(__dst));
          sub_1C4CFDC10();
          memcpy(v114, (v104 + 24), sizeof(v114));
          v38 = *(v101 + 16);
          if (v38)
          {
            v113 = MEMORY[0x1E69E7CC0];
            sub_1C459DB58();
            v109 = v113;
            v39 = v101 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
            v102 = *(v106 + 72);
            v40 = v111;
            do
            {
              v105 = v39;
              v107 = v38;
              sub_1C4C31FD8(v39, v40);
              sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
              v41 = swift_allocObject();
              *(v41 + 16) = xmmword_1C4F3B920;
              v42 = sub_1C4EFB258();
              *(v41 + 56) = v42;
              v43 = MEMORY[0x1E699FE38];
              *(v41 + 64) = MEMORY[0x1E699FE38];
              v44 = v43;
              sub_1C4422F90((v41 + 32));
              sub_1C4EFF058();
              v103 = *(v2 + 20);
              *(v41 + 96) = v42;
              *(v41 + 104) = v44;
              sub_1C4422F90((v41 + 72));
              sub_1C4EFEEF8();
              v45 = MEMORY[0x1E69A9748];
              sub_1C4C32098(&qword_1EC0BFA10, MEMORY[0x1E69A9748]);
              sub_1C4C32098(&qword_1EDDFCCC0, v45);
              sub_1C4C32098(&off_1EDDFCCA8, v45);
              sub_1C4EFBA18();
              v46 = v110[6];
              *(v41 + 136) = v42;
              v47 = MEMORY[0x1E699FE38];
              *(v41 + 144) = MEMORY[0x1E699FE38];
              sub_1C4422F90((v41 + 112));
              sub_1C4EFF858();
              v48 = v110[7];
              *(v41 + 176) = v42;
              *(v41 + 184) = v47;
              v40 = v111;
              sub_1C4422F90((v41 + 152));
              v2 = v110;
              v49 = MEMORY[0x1E69A0138];
              sub_1C4EFBA18();
              v50 = (v111 + v110[8]);
              v52 = *v50;
              v51 = v50[1];
              *(v41 + 216) = MEMORY[0x1E69E6158];
              *(v41 + 224) = v49;
              *(v41 + 192) = v52;
              *(v41 + 200) = v51;
              v53 = v111 + v110[9];
              v54 = *v53;
              v55 = *(v53 + 8);
              *(v41 + 256) = MEMORY[0x1E69E63B0];
              *(v41 + 264) = MEMORY[0x1E69A0168];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              if (v55 == 1)
              {
                v54 = sub_1C4EF92F8();
              }

              *(v41 + 232) = v54;
              v56 = *(v111 + v110[10]);
              *(v41 + 296) = &type metadata for SourceSet;
              *(v41 + 304) = sub_1C493EB98();
              *(v41 + 272) = v56;
              v57 = *(v111 + v110[11]);
              *(v41 + 336) = MEMORY[0x1E69E63B0];
              *(v41 + 344) = MEMORY[0x1E69A0168];
              *(v41 + 312) = v57;
              sub_1C4C3203C(v111);
              v58 = v109;
              v59 = v109[2];
              if (v59 >= v109[3] >> 1)
              {
                sub_1C459DB58();
                v58 = v109;
              }

              v58[2] = v59 + 1;
              v109 = v58;
              v58[v59 + 4] = v41;
              v39 = v105 + v102;
              --v38;
            }

            while (v107 != 1);

            v60 = v109;
          }

          else
          {

            v60 = MEMORY[0x1E69E7CC0];
          }

          v19 = 0xEC0000006E6F6967;
          v2 = 0xD000000000000011;
          v18 = 0x6552656369766544;
          sub_1C4BC7458();

          v61 = *(v98 + 16);
          if (v61 == 1)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49BCCB8();
            sub_1C4868270(v62);
            v60 = v63;

            if (!v60)
            {
              v60 = sub_1C4F01108();
            }

            if (*(v98 + 16))
            {
              sub_1C457EB50(v60);
              v65 = v64;

              if (v65)
              {

                sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1C4F0F830;
                strcpy((inited + 32), "DeviceLanguage");
                *(inited + 47) = -18;
                sub_1C49BCCB8();
                sub_1C4868270(v66);
                sub_1C44323EC();
                if (v60)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4401174();
                sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                sub_1C4413A54();
                sub_1C4F01108();
                sub_1C44036EC();
                sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                sub_1C4F017D8();
                sub_1C43FBDF0();
                *(inited + 72) = v88;
                *(inited + 80) = 0xD000000000000034;
                *(inited + 88) = v89;
                *(inited + 96) = sub_1C4F017D8();
                strcpy((inited + 104), "DeviceRegion");
                *(inited + 117) = 0;
                *(inited + 118) = -5120;
                sub_1C49BC878();
                sub_1C4868270(v90);
                v92 = v91;

                if (v92)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4F00288();
                sub_1C4401174();
                sub_1C4F01198();
                v93 = sub_1C4F01108();

                sub_1C43FBDF0();
                *(inited + 120) = v93;
                *(inited + 128) = 0xD000000000000011;
                *(inited + 136) = v94;
                sub_1C49BBF58();
                v84 = v95;
                sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
                sub_1C49BC7C4();
                sub_1C4F00EE8();
LABEL_65:

                sub_1C4F01108();
                sub_1C44323EC();
                sub_1C43FBDF0();
                *(inited + 144) = v84;
                *(inited + 152) = v2 + 1;
                *(inited + 160) = v85;
                type metadata accessor for NLLanguage(0);
                sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
                sub_1C4C32098(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
                sub_1C4F00EE8();

                v86 = sub_1C4F01108();

                *(inited + 168) = v86;
                *(inited + 176) = 0x73656372756F53;
                *(inited + 184) = 0xE700000000000000;
                sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
                v87 = sub_1C4F00EE8();

                sub_1C4F01108();
                sub_1C44323EC();
                *(inited + 192) = v87;
                sub_1C4468200();
                sub_1C4F00F28();
                sub_1C4F00268();

                return;
              }
            }

            else
            {
            }

            v61 = *(v98 + 16);
          }

          if (v61 >= 2)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49BCCB8();
            sub_1C4868270(v67);
            v60 = v68;

            if (!v60)
            {
              v60 = sub_1C4F01108();
            }

            if (!*(v98 + 16))
            {

              goto LABEL_56;
            }

            sub_1C457EB50(v60);
            v70 = v69;

            if ((v70 & 1) != 0 && *(v99 + 16) == 1)
            {
              sub_1C49BCCB8();
              sub_1C4868270(v71);
              v60 = v72;

              if (!v60)
              {
                v60 = sub_1C4F01108();
              }

              if (*(v99 + 16))
              {
                sub_1C457EB50(v60);
                v112 = v73;

                if (v112)
                {
                  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1C4F0F830;
                  strcpy((inited + 32), "DeviceLanguage");
                  *(inited + 47) = -18;
                  sub_1C49BCCB8();
                  sub_1C4868270(v74);
                  sub_1C44323EC();
                  if (v60)
                  {
                    sub_1C4F01138();
                    sub_1C4411974();

                    goto LABEL_75;
                  }

LABEL_74:
                  sub_1C440B66C();
LABEL_75:
                  sub_1C4401174();
                  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                  sub_1C4413A54();
                  sub_1C4F01108();
                  sub_1C44036EC();
                  sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                  sub_1C4F017D8();
                  sub_1C43FBDF0();
                  *(inited + 72) = v96;
                  *(inited + 80) = v2 + 25;
                  *(inited + 88) = v97;
LABEL_61:
                  *(inited + 96) = sub_1C4F017D8();
                  *(inited + 104) = v18;
                  *(inited + 112) = v19;
                  sub_1C49BC878();
                  sub_1C4868270(v78);
                  v80 = v79;

                  if (v80)
                  {
                    sub_1C4F01138();
                    sub_1C4411974();
                  }

                  else
                  {
                    sub_1C440B66C();
                  }

                  sub_1C4F00288();
                  sub_1C4401174();
                  sub_1C4F01198();
                  v81 = sub_1C4F01108();

                  sub_1C43FBDF0();
                  *(inited + 120) = v81;
                  *(inited + 128) = v2;
                  *(inited + 136) = v82;
                  sub_1C49BBF58();
                  v84 = v83;
                  sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
                  sub_1C49BC7C4();
                  sub_1C4F00F48();
                  goto LABEL_65;
                }

LABEL_57:
                sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1C4F0F830;
                strcpy((inited + 32), "DeviceLanguage");
                *(inited + 47) = -18;
                sub_1C49BCCB8();
                sub_1C4868270(v75);
                sub_1C44323EC();
                if (v60)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4401174();
                sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                sub_1C4413A54();
                sub_1C4F01108();
                sub_1C44036EC();
                sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                sub_1C4F017D8();
                sub_1C43FBDF0();
                *(inited + 72) = v76;
                *(inited + 80) = 0xD00000000000002ALL;
                *(inited + 88) = v77;
                goto LABEL_61;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }
}

uint64_t sub_1C4C309E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = a3;
  v188 = a2;
  v182 = a1;
  v3 = sub_1C4EFF8A8();
  v195 = *(v3 - 8);
  v196 = v3;
  v4 = *(v195 + 8);
  MEMORY[0x1EEE9AC00](v3);
  v171 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1C4EFD548();
  v193 = *(v197 - 8);
  v6 = *(v193 + 8);
  MEMORY[0x1EEE9AC00](v197);
  v8 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1C4EFEEF8();
  v198 = *(v176 - 8);
  v9 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v180 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v170 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v170 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v187 = &v170 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v170 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v170 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v170 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v170 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v170 - v27;
  v194 = sub_1C4EFF0C8();
  v29 = *(v194 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v190 = &v170 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v177 = &v170 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v186 = &v170 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v184 = &v170 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v181 = &v170 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v173 = &v170 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v170 - v45;
  sub_1C456902C(&qword_1EC0C0280, &unk_1C4F3E5C0);
  v47 = type metadata accessor for InferredTriple();
  v48 = *(*(v47 - 1) + 72);
  v49 = (*(*(v47 - 1) + 80) + 32) & ~*(*(v47 - 1) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C4F140B0;
  v179 = v50;
  v51 = v50 + v49;
  sub_1C4C2F808();
  v172 = v28;
  sub_1C4EFEBB8();
  sub_1C4EFD518();
  v52 = sub_1C4EFD2F8();
  v54 = v53;
  (*(v193 + 1))(v8, v197);
  v55 = v171;
  sub_1C4EFF888();
  v174 = v25;
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v57 = v56;
  v58 = v47[10];
  if (qword_1EDDDBDD8 != -1)
  {
    swift_once();
  }

  *(v51 + v58) = qword_1EDE2C8F8;
  v59 = *(v29 + 32);
  v197 = v29 + 32;
  v193 = v59;
  v59(v51, v46, v194);
  v61 = v198 + 32;
  v60 = *(v198 + 32);
  v62 = v176;
  v60(v51 + v47[5], v172, v176);
  v63 = (v51 + v47[8]);
  *v63 = v52;
  v63[1] = v54;
  v64 = v51 + v47[9];
  *v64 = 0;
  *(v64 + 8) = 1;
  (*(v195 + 4))(v51 + v47[6], v55, v196);
  v65 = v51 + v47[7];
  v198 = v61;
  v195 = v60;
  v60(v65, v174, v62);
  *(v51 + v47[11]) = v57;
  v196 = v48;
  v66 = v51 + v48;
  sub_1C4C2F808();
  v67 = v66 + v47[5];
  sub_1C4EFEBF8();
  v68 = sub_1C4F01138();
  v70 = v69;
  v71 = v66 + v47[6];
  sub_1C4EFF888();
  v72 = v66 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  *(v66 + v47[10]) = qword_1EDE2C8F8;
  v73 = (v66 + v47[8]);
  *v73 = v68;
  v73[1] = v70;
  v74 = v66 + v47[9];
  *v74 = 0;
  *(v74 + 8) = 1;
  *(v66 + v47[11]) = v75;
  v76 = v173;
  sub_1C4C2F808();
  v77 = v175;
  sub_1C4EFE7D8();
  v78 = v188;
  sub_1C465C4B8(0x656C61636F6CLL, 0xE600000000000000, v188);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E6158];
    *&v201 = 0;
    *(&v201 + 1) = 0xE000000000000000;
  }

  v79 = v51 + 2 * v196;
  v80 = sub_1C4F01198();
  v82 = v81;
  v83 = v79 + v47[6];
  sub_1C4EFF888();
  v84 = v79 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v86 = v85;
  *(v79 + v47[10]) = qword_1EDE2C8F8;
  v87 = v76;
  v88 = v193;
  v193(v79, v87, v194);
  v195(v79 + v47[5], v77, v62);
  v89 = (v79 + v47[8]);
  *v89 = v80;
  v89[1] = v82;
  v90 = v79 + v47[9];
  *v90 = 0;
  *(v90 + 8) = 1;
  *(v79 + v47[11]) = v86;
  sub_1C4C2F808();
  sub_1C4EFE4B8();
  sub_1C465C4B8(0x6C61636F6C627573, 0xE900000000000065, v78);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E6158];
    *&v201 = 0;
    *(&v201 + 1) = 0xE000000000000000;
  }

  v91 = v51 + 3 * v196;
  v92 = sub_1C4F01198();
  v94 = v93;
  v95 = v91 + v47[6];
  sub_1C4EFF888();
  v96 = v91 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v98 = v97;
  *(v91 + v47[10]) = qword_1EDE2C8F8;
  v99 = v194;
  v88(v91, v181, v194);
  v195(v91 + v47[5], v183, v62);
  v100 = (v91 + v47[8]);
  *v100 = v92;
  v100[1] = v94;
  v101 = v91 + v47[9];
  *v101 = 0;
  *(v101 + 8) = 1;
  *(v91 + v47[11]) = v98;
  sub_1C4C2F808();
  sub_1C4EFE2A8();
  sub_1C465C4B8(0x6E656469666E6F63, 0xEF65726F63536563, v78);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E63B0];
    *&v201 = 0;
  }

  v102 = v51 + 4 * v196;
  v103 = sub_1C4F01198();
  v105 = v104;
  v106 = v102 + v47[6];
  sub_1C4EFF888();
  v107 = v102 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v109 = v108;
  *(v102 + v47[10]) = qword_1EDE2C8F8;
  v88(v102, v184, v99);
  v195(v102 + v47[5], v185, v62);
  v110 = (v102 + v47[8]);
  *v110 = v103;
  v110[1] = v105;
  v111 = v102 + v47[9];
  *v111 = 0;
  *(v111 + 8) = 1;
  *(v102 + v47[11]) = v109;
  sub_1C4C2F808();
  sub_1C4EFE388();
  sub_1C465C4B8(0x73656372756F73, 0xE700000000000000, v78);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    *&v201 = MEMORY[0x1E69E7CC0];
  }

  v112 = v196;
  v113 = v51 + 5 * v196;
  v114 = sub_1C4F01198();
  v116 = v115;
  v117 = v113 + v47[6];
  sub_1C4EFF888();
  v118 = v113 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v120 = v119;
  *(v113 + v47[10]) = qword_1EDE2C8F8;
  v193(v51 + 5 * v112, v186, v99);
  v121 = v62;
  v195(v113 + v47[5], v187, v62);
  v122 = (v113 + v47[8]);
  *v122 = v114;
  v122[1] = v116;
  v123 = v113 + v47[9];
  *v123 = 0;
  *(v123 + 8) = 1;
  *(v113 + v47[11]) = v120;
  v124 = v51 + 6 * v112;
  sub_1C4C2F808();
  v125 = v124 + v47[5];
  sub_1C4EFE3E8();
  type metadata accessor for NLLanguage(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
  sub_1C4C32098(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
  v126 = sub_1C4F00EE8();
  v128 = v127;

  v129 = v124 + v47[6];
  sub_1C4EFF888();
  v130 = v124 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  *(v124 + v47[10]) = qword_1EDE2C8F8;
  v131 = (v124 + v47[8]);
  *v131 = v126;
  v131[1] = v128;
  v132 = v124 + v47[9];
  *v132 = 0;
  *(v132 + 8) = 1;
  *(v124 + v47[11]) = v133;
  v134 = v177;
  sub_1C4C2F808();
  sub_1C4EFE868();
  v135 = v188;
  sub_1C465C4B8(0xD000000000000016, 0x80000001C4FABB20, v188);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E63B0];
    *&v201 = 0;
  }

  v136 = v51 - v196 + 8 * v196;
  v137 = sub_1C4F01198();
  v139 = v138;
  v140 = v136 + v47[6];
  sub_1C4EFF888();
  v141 = v136 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v143 = v142;
  *(v136 + v47[10]) = qword_1EDE2C8F8;
  v144 = v134;
  v145 = v193;
  v193(v136, v144, v194);
  v195(v136 + v47[5], v189, v121);
  v146 = (v136 + v47[8]);
  *v146 = v137;
  v146[1] = v139;
  v147 = v136 + v47[9];
  *v147 = 0;
  *(v147 + 8) = 1;
  *(v136 + v47[11]) = v143;
  sub_1C4C2F808();
  sub_1C4EFE8B8();
  sub_1C465C4B8(0xD000000000000016, 0x80000001C4FABB40, v135);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E63B0];
    *&v201 = 0;
  }

  v148 = v51 + 8 * v196;
  v149 = sub_1C4F01198();
  v151 = v150;
  v152 = v148 + v47[6];
  sub_1C4EFF888();
  v153 = v148 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v155 = v154;
  *(v148 + v47[10]) = qword_1EDE2C8F8;
  v145(v148, v190, v194);
  v195(v148 + v47[5], v191, v121);
  v156 = (v148 + v47[8]);
  *v156 = v149;
  v156[1] = v151;
  v157 = v148 + v47[9];
  *v157 = 0;
  *(v157 + 8) = 1;
  *(v148 + v47[11]) = v155;
  sub_1C4C2F808();
  v158 = v180;
  sub_1C4EFE988();
  sub_1C465C4B8(0xD000000000000018, 0x80000001C4FABB60, v135);
  if (v200)
  {
    sub_1C44482AC(&v199, &v201);
  }

  else
  {
    v202 = MEMORY[0x1E69E63B0];
    *&v201 = 0;
  }

  v159 = v51 + 9 * v196;
  v160 = sub_1C4F01198();
  v162 = v161;
  v163 = v159 + v47[6];
  sub_1C4EFF888();
  v164 = v159 + v47[7];
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v166 = v165;
  *(v159 + v47[10]) = qword_1EDE2C8F8;
  v145(v159, v192, v194);
  v195(v159 + v47[5], v158, v121);
  v167 = (v159 + v47[8]);
  *v167 = v160;
  v167[1] = v162;
  v168 = v159 + v47[9];
  *v168 = 0;
  *(v168 + 8) = 1;
  *(v159 + v47[11]) = v166;
  return v179;
}

uint64_t sub_1C4C31A5C()
{
  v1 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_1C4EFF0C8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = *(v0 + 16);
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    return sub_1C47781FC(v4);
  }

  (*(v8 + 32))(v13, v4, v5);
  sub_1C4C2FC9C();
  return (*(v8 + 8))(v13, v5);
}

void *sub_1C4C31BFC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C320E0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1C4C31C74(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C322B8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4C31CFC(uint64_t a1, double a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      v4 = sub_1C4C31C74(v11, v6, v4, a2);
      MEMORY[0x1C6942830](v11, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v6, v7);
  sub_1C4C322B8(v7, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v8;
  }

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4C31E74(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C4C31BFC(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C4C320E0(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4C31FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredTriple();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C3203C(uint64_t a1)
{
  v2 = type metadata accessor for InferredTriple();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4C32098(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4C320E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 56) + 8 * v12);
    v14 = *(v13 + 16);
    v15 = *(*(a3 + 48) + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v14 && (v16 = sub_1C445FAA8(0x73656372756F73, 0xE700000000000000), (v17 & 1) != 0) && (sub_1C442B870(*(v13 + 56) + 32 * v16, v25), sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870), swift_dynamicCast()))
    {
      v18 = v26;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v18 + 16);

    if (v19 >= 3)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_20:
        sub_1C4586FF8(a1, a2, v23, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_20;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C4C322B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 56) + 8 * v16);
    if (!*(v17 + 16))
    {
      goto LABEL_17;
    }

    v18 = *(*(a3 + 48) + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = sub_1C445FAA8(0x6E656469666E6F63, 0xEF65726F63536563);
    if (v20 & 1) != 0 && (sub_1C442B870(*(v17 + 56) + 32 * v19, v25), (swift_dynamicCast()))
    {
      v21 = v26;

      if (v21 >= a4)
      {
        goto LABEL_18;
      }
    }

    else
    {

LABEL_17:
      if (a4 <= 0.0)
      {
LABEL_18:
        *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_21:
          sub_1C4586FF8(a1, a2, v6, a3);
          return;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_21;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C324A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s22LifeEventViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x80uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C325FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C324A8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C326A8(uint64_t a1, void (*a2)(void, void, void), void (*a3)(void, void, void), int a4)
{
  v177 = a4;
  v175 = a2;
  v176 = a3;
  v6 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C43FCE30(v11);
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FCE30(v17);
  v161 = sub_1C4EF9CD8();
  v18 = sub_1C43FCDF8(v161);
  v167 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  sub_1C43FCE30(v23);
  v178 = sub_1C4EFFA28();
  v24 = sub_1C43FCDF8(v178);
  v166 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FCE30(&v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  v30 = sub_1C43FBD18(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v150 - v33;
  v169 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  v35 = sub_1C43FBCE0(v169);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v183 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v184 = v40;
  v41 = sub_1C456902C(&qword_1EC0C4FA8, &qword_1C4F5E5B8);
  v42 = sub_1C43FBD18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v150 - v48;
  v187 = sub_1C456902C(&qword_1EC0C4FB0, &qword_1C4F5E5C0);
  v50 = sub_1C43FCDF8(v187);
  v168 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FCE30(&v150 - v54);
  v170 = sub_1C456902C(&qword_1EC0C4FB8, &qword_1C4F5E5C8);
  v55 = sub_1C43FCDF8(v170);
  v185 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v179 = v60;
  v174 = v4;
  v61 = *(v4 + 16);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v62 = *(sub_1C4EFEEF8() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  v154 = xmmword_1C4F0C890;
  *(v65 + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  v173 = a1;
  v66 = sub_1C486F58C(a1, v65, 0.0);

  v188[0] = v66;
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4C33D08(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
  v67 = sub_1C4F01498();

  v190 = MEMORY[0x1E69E7CC0];
  v172 = v67;
  v188[0] = v67;
  v68 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v69 = v178;
  v70 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0);
  v71 = sub_1C4C33D08(&qword_1EDDEFF50, MEMORY[0x1E69A9AB0]);
  v72 = sub_1C4C17CE0();
  v163 = v68;
  v73 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  v171 = v73;
  if (!v73)
  {
    (*(v185 + 16))(v164, v179, v170);
    v188[0] = v163;
    v188[1] = v69;
    v188[2] = v70;
    v189[0] = v71;
    v152 = v71;
    v189[1] = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v85 = v165;
    sub_1C4F01478();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v164 = v166 + 32;
    v163 = (v167 + 32);
    v153 = (v167 + 8);
    v167 = v166 + 8;
    v166 = MEMORY[0x1E69E7CC0];
    v86 = &qword_1EC0C4F80;
    sub_1C4432CFC();
    v87 = v85;
    v88 = v185;
    v181 = v34;
    v182 = v49;
    v180 = v46;
    while (1)
    {
      while (1)
      {
        v89 = v87;
        sub_1C4F01FA8();
        sub_1C49328EC(v46, v49, &qword_1EC0C4FA8, &qword_1C4F5E5B8);
        v90 = sub_1C456902C(&qword_1EC0C4FC0, &qword_1C4F5E5D8);
        if (sub_1C44157D4(v49, 1, v90) == 1)
        {
          (*(v168 + 8))(v89, v187);
          v83 = (*(v88 + 8))(v179, v170);
          goto LABEL_32;
        }

        v91 = v86;
        sub_1C49328EC(&v49[*(v90 + 48)], v34, &qword_1EC0C4F78, &unk_1C4F5E420);
        if (sub_1C44157D4(v34, 1, OpaqueTypeConformance2) == 1)
        {
          sub_1C4420C3C(v34, &qword_1EC0C4F78, &unk_1C4F5E420);
          v87 = v89;
          goto LABEL_12;
        }

        v92 = v184;
        sub_1C49328EC(v34, v184, v91, &qword_1C4F5E5B0);
        v93 = v183;
        sub_1C4C33C98(v92, v183);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        v87 = v89;
        sub_1C4420C3C(v92, v91, &qword_1C4F5E5B0);
        sub_1C4420C3C(v93, v91, &qword_1C4F5E5B0);
        v88 = v185;
        v46 = v180;
        v34 = v181;
        v49 = v182;
LABEL_12:
        v94 = sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
        sub_1C43FBCE0(v94);
        (*(v95 + 8))(v49);
        v86 = v91;
      }

      sub_1C4402C08(&v191);
      v96 = v162;
      OpaqueTypeConformance2 = v178;
      v97(v162, v93, v178);
      v98 = v160;
      sub_1C4EFFA18();
      v99 = sub_1C4EFFC68();
      if (sub_1C44157D4(v98, 1, v99) == 1)
      {
        break;
      }

      v105 = v159;
      sub_1C4EFFC58();
      v96 = v105;
      v106 = *(v99 - 8);
      OpaqueTypeConformance2 = *(v106 + 8);
      v165 = v106 + 8;
      OpaqueTypeConformance2(v98, v99);
      v107 = v161;
      v108 = v92;
      if (sub_1C44157D4(v96, 1, v161) == 1)
      {
        v109 = sub_1C4407F28();
        v110(v109);
        v111 = v92;
        v86 = v91;
        sub_1C4420C3C(v111, v91, &qword_1C4F5E5B0);
        goto LABEL_17;
      }

      v151 = OpaqueTypeConformance2;
      v150 = *v163;
      v150(v158, v96, v107);
      OpaqueTypeConformance2 = v157;
      v114 = v162;
      v115 = v162;
      sub_1C4EFFA18();
      v86 = v91;
      if (sub_1C44157D4(OpaqueTypeConformance2, 1, v99) == 1)
      {
        sub_1C4402C08(&v183);
        v116(v158, v107);
        sub_1C4402C08(&v192);
        v117(v115, v178);
        sub_1C4420C3C(v108, v91, &qword_1C4F5E5B0);
        sub_1C4420C3C(OpaqueTypeConformance2, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v118 = sub_1C44039C0(v188);
        sub_1C440BAA8(v118, v119, v120, v107);
        v88 = v185;
        goto LABEL_24;
      }

      OpaqueTypeConformance2 = v156;
      sub_1C4EFFC48();
      v114 = OpaqueTypeConformance2;
      v151(v157, v99);
      v121 = sub_1C44157D4(OpaqueTypeConformance2, 1, v107);
      v122 = v107;
      v88 = v185;
      if (v121 == 1)
      {
        sub_1C4402C08(&v183);
        v124(v158, v123);
        v125 = sub_1C4407F28();
        v126(v125);
        sub_1C4420C3C(v108, v91, &qword_1C4F5E5B0);
LABEL_24:
        v46 = v180;
        sub_1C4420C3C(v114, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4432CFC();
LABEL_18:
        v34 = v181;
        v49 = v182;
        goto LABEL_19;
      }

      v150(v155, OpaqueTypeConformance2, v122);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v127 = swift_allocObject();
      *(v127 + 16) = v154;
      *(v127 + 56) = sub_1C4EFF0C8();
      *(v127 + 64) = sub_1C4C33D08(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
      sub_1C4422F90((v127 + 32));
      sub_1C4EFD5A8();
      sub_1C4EF9AD8();
      v128 = MEMORY[0x1E69E63B0];
      *(v127 + 96) = MEMORY[0x1E69E63B0];
      v129 = MEMORY[0x1E69A0168];
      *(v127 + 104) = MEMORY[0x1E69A0168];
      *(v127 + 72) = v130;
      sub_1C4EF9AD8();
      *(v127 + 136) = v128;
      *(v127 + 144) = v129;
      v150 = v127;
      *(v127 + 112) = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v180;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v140 = *(v166 + 16);
        sub_1C458B824();
        v166 = v141;
      }

      v34 = v181;
      v49 = v182;
      v133 = *(v166 + 16);
      v134 = v133 >= *(v166 + 24) >> 1;
      v165 = v133;
      v151 = (v133 + 1);
      if (v134)
      {
        sub_1C458B824();
        v166 = v142;
      }

      OpaqueTypeConformance2 = v153;
      v135 = *v153;
      v136 = v161;
      (*v153)(v155, v161);
      v135(v158, v136);
      v137 = sub_1C4407F28();
      v138(v137);
      sub_1C4420C3C(v184, v86, &qword_1C4F5E5B0);
      v139 = v166;
      *(v166 + 16) = v151;
      *(v139 + 8 * v165 + 32) = v150;
      v190 = v139;
      sub_1C4432CFC();
LABEL_19:
      v112 = sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
      sub_1C43FBCE0(v112);
      (*(v113 + 8))(v49);
      v87 = v89;
    }

    sub_1C4402C08(&v192);
    v100(v96, OpaqueTypeConformance2);
    v101 = v92;
    v86 = v91;
    sub_1C4420C3C(v101, v91, &qword_1C4F5E5B0);
    sub_1C4420C3C(v98, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v102 = sub_1C44039C0(v189);
    sub_1C440BAA8(v102, v103, v104, v161);
LABEL_17:
    sub_1C4420C3C(v96, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4432CFC();
    v88 = v185;
    v46 = v180;
    goto LABEL_18;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v74 = sub_1C4F00978();
  sub_1C442B738(v74, qword_1EDE2DF70);
  v75 = v171;
  v76 = v171;
  v77 = sub_1C4F00968();
  v78 = sub_1C4F01CD8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    v81 = v75;
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v79 + 4) = v82;
    *v80 = v82;
    _os_log_impl(&dword_1C43F8000, v77, v78, "error with context.allGraphObjectsOfType: %@", v79, 0xCu);
    sub_1C4420C3C(v80, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v80, -1, -1);
    MEMORY[0x1C6942830](v79, -1, -1);
  }

  else
  {
  }

LABEL_32:
  v143 = *(*(v174 + 24) + 16);
  MEMORY[0x1EEE9AC00](v83);
  *(&v150 - 6) = v144;
  *(&v150 - 5) = &v190;
  v146 = v175;
  v145 = v176;
  *(&v150 - 4) = v173;
  *(&v150 - 3) = v146;
  *(&v150 - 2) = v145;
  *(&v150 - 8) = v177 & 1;

  sub_1C49A56B8();
  v148 = v147;

  return v148;
}

void sub_1C4C337C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v53) = a7;
  v55 = a6;
  v54 = a5;
  v52 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 3, sizeof(__dst));
  v18 = *a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BCB52C(a1, v18);

  if (!v8)
  {
    v50 = a4;
    v57 = v17;
    v19 = a2[13];
    if (v19)
    {
      v49 = v14;
      v56 = v13;
      v21 = a2[17];
      v20 = a2[18];
      v23 = a2[15];
      v22 = a2[16];
      v24 = a2[14];
      v25 = a2[12];
      v58[5] = v25;
      v58[6] = v19;
      v58[7] = v24;
      v58[8] = v23;
      v58[9] = v22;
      v58[10] = v21;
      v58[11] = v20;
      _s23UpdatedObjectDiffWriterCMa();
      v51 = swift_allocObject();
      sub_1C4BC3C1C(v25, v19);

      sub_1C4B8B458();
      v27 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v51 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        v48 = v26;

        sub_1C44CD9C0();
        v29 = v60;
        v30 = v49 + 16;
        v55 = *(v49 + 16);
        v31 = v27 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v54 = *(v49 + 72);
        v53 = (v49 + 8);
        v32 = v57;
        do
        {
          v33 = v56;
          v34 = v30;
          v55(v32, v31, v56);
          v35 = sub_1C4EFF048();
          v32 = v57;
          v36 = v35;
          v38 = v37;
          (*v53)(v57, v33);
          v60 = v29;
          v39 = *(v29 + 16);
          if (v39 >= *(v29 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v32 = v57;
            v29 = v60;
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v38;
          v31 += v54;
          --v28;
          v30 = v34;
        }

        while (v28);
        v42 = v52;
        v43 = v51;
      }

      else
      {

        v43 = 0;
        v29 = MEMORY[0x1E69E7CC0];
        v42 = v52;
      }

      v58[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v58[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
      v58[0] = v29;
      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v58);
      }

      else
      {
        sub_1C440962C(v58);

        sub_1C4B8BB5C();
        v45 = v44;
        v47 = v46;

        *v42 = v45;
        v42[1] = v47;
        *(v42 + 16) = 0;
      }
    }

    else
    {
      v41 = v52;
      *v52 = 0;
      v41[1] = 0;
      *(v41 + 16) = 1;
    }
  }
}

uint64_t sub_1C4C33C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C33D08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4C33D60(uint64_t a1, uint64_t *a2)
{
  v4 = _s14ViewConfigInfoVMa(0);
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = a1 + 40;
  v28 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 40;
LABEL_2:
  for (i = (v12 + 16 * v10); ; i += 2)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = *a2;
    if (*(*a2 + 16))
    {
      v16 = *(i - 1);
      v15 = *i;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = sub_1C445FAA8(v16, v15);
      if (v18)
      {
        v19 = *(v14 + 56);
        v20 = v29;
        sub_1C4509798(v19 + *(v30 + 72) * v17, v29);
        sub_1C4C41AB8(v20, v9);
        LOBYTE(v20) = v9[*(v31 + 28)];
        sub_1C4C41B10();
        if ((v20 & 1) == 0)
        {
          v21 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = *(v21 + 16);
            sub_1C44CD9C0();
            v21 = v32;
          }

          v24 = *(v21 + 16);
          v25 = v24 + 1;
          if (v24 >= *(v21 + 24) >> 1)
          {
            v28 = v24 + 1;
            sub_1C44CD9C0();
            v25 = v28;
            v21 = v32;
          }

          ++v10;
          *(v21 + 16) = v25;
          v28 = v21;
          v26 = v21 + 16 * v24;
          *(v26 + 32) = v16;
          *(v26 + 40) = v15;
          v12 = v27;
          goto LABEL_2;
        }
      }
    }

    ++v10;
  }

  __break(1u);
}

BOOL sub_1C4C33FC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = 0;
LABEL_2:
  if (v4 != v3)
  {
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = (a1 + 32 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = *(v5 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v10 = sub_1C4F02B68();
      v11 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v5 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(v5 + 48) + 16 * v12);
        if (*v13 != v8 || v13[1] != v7)
        {
          v15 = sub_1C4F02938();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }
  }

  return v4 != v3;
}

uint64_t sub_1C4C3412C(uint64_t a1)
{
  v57 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  v2 = *(*(v57 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v57);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v55 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = 0;
  v51 = a1 + 64;
  v54 = v5;
  if (v13)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v17 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
  }

  while (!v13);
  v16 = v17;
  while (1)
  {
LABEL_9:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = *(v55 + 56);
    v20 = (*(v55 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = (_s14ViewConfigInfoVMa(0) - 8);
    v24 = v19 + *(*v23 + 72) * v18;
    v25 = v57;
    v26 = v52;
    sub_1C4509798(v24, &v52[*(v57 + 48)]);
    *v26 = v22;
    v26[1] = v21;
    v27 = v53;
    sub_1C4C41CC8(v26, v53);
    v28 = (v27 + *(v25 + 48) + v23[10]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v27;
    v32 = v54;
    sub_1C4C41CC8(v31, v54);
    v34 = *(v9 + 16);
    v33 = *(v9 + 24);
    v56 = v29;
    if (v33 <= v34)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C467AA84();
      v9 = v58;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v35 = *v32;
    v36 = v32[1];
    v37 = *(v9 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v38 = v9 + 64;
    v39 = -1 << *(v9 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v9 + 64 + 8 * (v40 >> 6))) == 0)
    {
      break;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v9 + 64 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v47 = *(v57 + 48);
    *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v13 &= v13 - 1;
    v48 = (*(v9 + 48) + 16 * v42);
    *v48 = v35;
    v48[1] = v36;
    v49 = (*(v9 + 56) + 16 * v42);
    *v49 = v56;
    v49[1] = v30;
    ++*(v9 + 16);
    result = sub_1C4C41B10();
    v10 = v51;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  v43 = 0;
  v44 = (63 - v39) >> 6;
  while (++v41 != v44 || (v43 & 1) == 0)
  {
    v45 = v41 == v44;
    if (v41 == v44)
    {
      v41 = 0;
    }

    v43 |= v45;
    v46 = *(v38 + 8 * v41);
    if (v46 != -1)
    {
      v42 = __clz(__rbit64(~v46)) + (v41 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C4C344B8(uint64_t a1)
{
  v53 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  v2 = *(*(v53 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v53);
  v50 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v49 - v8;
  v51 = MEMORY[0x1E69E7CC8];
  v55 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v54 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

    v17 = v7;
LABEL_11:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v15 << 6);
    v20 = *(v54 + 56);
    v21 = (*(v54 + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = v20 + *(*(_s14ViewConfigInfoVMa(0) - 8) + 72) * v19;
    v26 = v52;
    v25 = v53;
    sub_1C4509798(v24, &v52[*(v53 + 48)]);
    *v26 = v23;
    v26[1] = v22;
    v7 = v17;
    sub_1C4C41CC8(v26, v17);
    v27 = v17 + *(v25 + 48);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v27 + 8);
      sub_1C4C41CC8(v17, v50);
      v31 = *(v51 + 16);
      v30 = *(v51 + 24);
      v49 = v29;
      if (v30 <= v31)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C467AA84();
        v32 = v55;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v32 = v51;
      }

      v51 = v32;
      v34 = *v50;
      v33 = v50[1];
      v35 = *(v32 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v36 = v51;
      v37 = v51 + 64;
      v38 = -1 << *(v51 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v51 + 64 + 8 * (v39 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v38) >> 6;
        while (++v40 != v43 || (v42 & 1) == 0)
        {
          v44 = v40 == v43;
          if (v40 == v43)
          {
            v40 = 0;
          }

          v42 |= v44;
          v45 = *(v37 + 8 * v40);
          if (v45 != -1)
          {
            v41 = __clz(__rbit64(~v45)) + (v40 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v41 = __clz(__rbit64((-1 << v39) & ~*(v51 + 64 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      v46 = *(v53 + 48);
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v47 = (v36[6] + 16 * v41);
      *v47 = v34;
      v47[1] = v33;
      v48 = (v36[7] + 16 * v41);
      *v48 = v49;
      v48[1] = v28;
      ++v36[2];
      result = sub_1C4C41B10();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C4420C3C(v17, &qword_1EC0C4FF0, &qword_1C4F5E678);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v51;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      v17 = v7;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C4C34878(uint64_t a1, uint64_t a2)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFDAF8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v46 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C447F150();
  if (*(v2 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v17 = a2 + 56;
  v16 = *(a2 + 56);
  v18 = *(a2 + 32);
  sub_1C44410A0();
  sub_1C440FDCC();
  v21 = v20 & v19;
  v42 = (v22 + 63) >> 6;
  v45 = v2 + 56;
  v23 = (v9 + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = 0;
  v41 = a2;
  v39 = v4;
  v40 = v9;
  v38 = a2 + 56;
LABEL_4:
  if (v21)
  {
    v26 = v25;
LABEL_9:
    sub_1C44168C0();
    v43 = *(v9 + 16);
    v44 = *(v9 + 72);
    v43(v4, *(a2 + 48) + v44 * (v27 | (v26 << 6)), v6);
    (*(v9 + 32))(v46, v4, v6);
    if (*(v2 + 16))
    {
      v28 = v2;
      v21 &= v21 - 1;
      v29 = *(v2 + 40);
      sub_1C4426F04();
      sub_1C44902AC(&qword_1EDDEFFA8, v30);
      v31 = sub_1C4F00FD8();
      v32 = ~(-1 << *(v28 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(v45 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v43(v3, *(v28 + 48) + v33 * v44, v6);
        sub_1C4426F04();
        sub_1C44902AC(&qword_1EC0B85A8, v34);
        v35 = sub_1C4F010B8();
        v36 = *v23;
        v37 = sub_1C440BB4C();
        v36(v37);
        v31 = v33 + 1;
        if (v35)
        {
          result = (v36)(v46, v6);
          v25 = v26;
          a2 = v41;
          v2 = v28;
          v4 = v39;
          v9 = v40;
          v17 = v38;
          goto LABEL_4;
        }
      }
    }

    (*v23)(v46, v6);
    v15 = 0;
LABEL_16:

    return v15;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v42)
    {
      v15 = 1;
      goto LABEL_16;
    }

    v21 = *(v17 + 8 * v26);
    ++v25;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C34B9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v18 = sub_1C4F02B68();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_1C4F02938();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}