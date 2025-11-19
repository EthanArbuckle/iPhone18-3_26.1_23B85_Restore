uint64_t LinkEngineConnectBestController.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

void *LinkEngineConnectBestController.init(fallbackDelay:disconnectDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_1A7DCA318(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v231 = a7;
  v246 = a6;
  v253 = a5;
  v240 = a2;
  v239 = a1;
  v12 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v208 = v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v207 = v199 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v222 = v199 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v237 = v199 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v221 = v199 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v220 = v199 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v236 = v199 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v199 - v35;
  v254 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v254, v37);
  v213 = v199 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v199 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v235 = v199 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v234 = v199 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v233 = v199 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v215 = v199 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v241 = v199 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v219 = v199 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v232 = v199 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v228 = v199 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v255 = v199 - v69;
  v70 = sub_1A7E22CF0();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v72);
  v212 = v199 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v75);
  v211 = v199 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v206 = v199 - v79;
  v80 = sub_1A7CC7FFC(&qword_1EB2B5B78);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v227 = v199 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v210 = v199 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = v199 - v88;
  v90 = *(a8 - 8);
  v93 = MEMORY[0x1EEE9AC00](v91, v92);
  v95 = v199 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v95, a3, a8, v93);
  v96 = *v253;
  if (v96 != 1)
  {
    v247 = v95;
    v202 = v90;
    v97 = *(v231 + 40);
    v205 = *(v231 + 32);
    v204 = v97;
    v209 = v71;
    v98 = *(v71 + 56);
    v226 = v89;
    v248 = v70;
    v225 = v71 + 56;
    v224 = v98;
    v98(v89, 1, 1, v70);
    v245 = v36;
    v200 = v42;
    v203 = a8;
    if (a4 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A7E22DA0())
    {
      v100 = type metadata accessor for LinkStateComponent(0);
      v101 = 0;
      v244 = a4 & 0xC000000000000001;
      v223 = a4 & 0xFFFFFFFFFFFFFF8;
      v243 = v100 - 8;
      v238 = (v209 + 16);
      v199[1] = v240 + 2;
      v229 = (v209 + 8);
      v217 = v240 + 1;
      v201 = (v209 + 32);
      v216 = v240 + 3;
      *&v102 = 136315394;
      v218 = v102;
      v242 = a4;
      v230 = i;
      while (v244)
      {
        v103 = MEMORY[0x1AC562480](v101, a4);
        v104 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_78;
        }

LABEL_13:
        os_unfair_lock_lock((v103 + 40));
        v105 = *(v103 + 48);
        v253 = (v103 + 48);
        v106 = *(v105 + 16);
        v250 = v104;
        if (v106 && (v107 = sub_1A7CD0DFC(v100), (v108 & 1) != 0))
        {
          sub_1A7B0CD10(*(v105 + 56) + 32 * v107, &v256);
        }

        else
        {
          v256 = 0u;
          v257 = 0u;
        }

        os_unfair_lock_unlock((v103 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        v109 = v245;
        v110 = swift_dynamicCast();
        v111 = *(v100 - 8);
        v251 = *(v111 + 56);
        v251(v109, v110 ^ 1u, 1, v100);
        v252 = *(v111 + 48);
        if (v252(v109, 1, v100))
        {
          sub_1A7CC9970(v109, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
          if (!v96)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v116 = v101;
          v117 = v228;
          sub_1A7CD0EC4(v109, v228);
          sub_1A7CC9970(v109, &qword_1EB2B4A80);
          v118 = v117;
          v101 = v116;
          sub_1A7CF4888(v118, v255, type metadata accessor for LinkState);
          if (!v96)
          {
LABEL_24:
            v249 = v101;
            sub_1A7CD0EC4(v255, v241);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 2)
            {
              v120 = v234;
              if ((EnumCaseMultiPayload - 4) < 2)
              {
                goto LABEL_52;
              }

              if ((*(v241 + 9) & 1) == 0)
              {
                sub_1A7CD0E68(v255);

                goto LABEL_64;
              }

              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v125 = sub_1A7E22060();
              sub_1A7B0CB00(v125, qword_1EB2B2CC8);
              v126 = v200;
              sub_1A7CD0EC4(v255, v200);

              v127 = sub_1A7E22040();
              v128 = sub_1A7E228F0();

              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                *&v256 = v214;
                *v129 = v218;
                v130 = v128;
                v131 = *(v103 + 16);
                v132 = *(v103 + 24);

                v133 = sub_1A7B0CB38(v131, v132, &v256);

                *(v129 + 4) = v133;
                *(v129 + 12) = 2080;
                v134 = LinkState.description.getter();
                v136 = v135;
                sub_1A7CD0E68(v126);
                v137 = sub_1A7B0CB38(v134, v136, &v256);

                *(v129 + 14) = v137;
                _os_log_impl(&dword_1A7AD9000, v127, v130, "%s: %s -> connecting (reconnect)", v129, 0x16u);
                v138 = v214;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v138, -1, -1);
                MEMORY[0x1AC5654B0](v129, -1, -1);
              }

              else
              {

                sub_1A7CD0E68(v126);
              }

              v187 = v208;
              v188 = v207;
              v189 = v213;
              (*v238)(v213, v246, v248);
              swift_storeEnumTagMultiPayload();
              sub_1A7CD0EC4(v189, v188);
              v251(v188, 0, 1, v100);
              os_unfair_lock_lock((v103 + 40));
              sub_1A7CD1F00(v188, v187, &qword_1EB2B4A80);
              v190 = v252(v187, 1, v100);
              i = v230;
              if (v190 == 1)
              {
                sub_1A7CC9970(v187, &qword_1EB2B4A80);
                v256 = 0u;
                v257 = 0u;
              }

              else
              {
                *(&v257 + 1) = v100;
                v191 = sub_1A7CC98BC(&v256);
                sub_1A7CF4888(v187, v191, type metadata accessor for LinkStateComponent);
              }

              a4 = v242;
              sub_1A7CC8D74(&v256, v100);
              os_unfair_lock_unlock((v103 + 40));
              sub_1A7CD0E68(v213);
              sub_1A7CC9970(v188, &qword_1EB2B4A80);
              ObjectType = swift_getObjectType();
              v240[2](v103, ObjectType);
            }

            else
            {
              v120 = v234;
              if (!EnumCaseMultiPayload)
              {
                v161 = v211;
                v162 = v241;
                v163 = v248;
                (*v238)(v211, v241, v248);
                sub_1A7E22CE0();
                if (sub_1A7E232A0())
                {
                  v164 = v227;
                  sub_1A7E22CD0();

                  v165 = *v229;
                  (*v229)(v161, v163);
                  sub_1A7CD0E68(v255);
                  v166 = v226;
                  sub_1A7CC9970(v226, &qword_1EB2B5B78);
                  v96 = 1;
                  v224(v164, 0, 1, v163);
                  sub_1A7D25AEC(v164, v166);
                  v165(v241, v163);
                }

                else
                {

                  v186 = *v229;
                  (*v229)(v161, v163);
                  sub_1A7CD0E68(v255);
                  v186(v162, v163);
LABEL_64:
                  v96 = 0;
                }

LABEL_66:
                a4 = v242;
                v101 = v249;
                goto LABEL_6;
              }

              if (EnumCaseMultiPayload == 1)
              {
                v121 = v212;
                v122 = v248;
                (*v201)(v212, v241, v248);
                sub_1A7E22CE0();
                if (sub_1A7E232A0())
                {
                  v123 = v227;
                  sub_1A7E22CD0();

                  (*v229)(v121, v122);
                  sub_1A7CD0E68(v255);
                  v124 = v226;
                  sub_1A7CC9970(v226, &qword_1EB2B5B78);
                  v96 = 1;
                  v224(v123, 0, 1, v122);
                  sub_1A7D25AEC(v123, v124);
                }

                else
                {

                  (*v229)(v121, v122);
                  sub_1A7CD0E68(v255);
                  v96 = 2;
                }

                goto LABEL_66;
              }

              (*v229)(v241, v248);
LABEL_52:
              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v167 = sub_1A7E22060();
              sub_1A7B0CB00(v167, qword_1EB2B2CC8);
              sub_1A7CD0EC4(v255, v120);

              v168 = sub_1A7E22040();
              v169 = sub_1A7E228F0();

              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                *&v256 = v214;
                *v170 = v218;
                v171 = *(v103 + 16);
                v172 = *(v103 + 24);

                v173 = sub_1A7B0CB38(v171, v172, &v256);

                *(v170 + 4) = v173;
                *(v170 + 12) = 2080;
                v174 = LinkState.description.getter();
                v176 = v175;
                sub_1A7CD0E68(v120);
                v177 = sub_1A7B0CB38(v174, v176, &v256);

                *(v170 + 14) = v177;
                _os_log_impl(&dword_1A7AD9000, v168, v169, "%s: %s -> connecting", v170, 0x16u);
                v178 = v214;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v178, -1, -1);
                MEMORY[0x1AC5654B0](v170, -1, -1);
              }

              else
              {

                sub_1A7CD0E68(v120);
              }

              v179 = v222;
              i = v230;
              v180 = v235;
              (*v238)(v235, v246, v248);
              swift_storeEnumTagMultiPayload();
              v181 = v237;
              sub_1A7CD0EC4(v180, v237);
              v251(v181, 0, 1, v100);
              os_unfair_lock_lock((v103 + 40));
              sub_1A7CD1F00(v181, v179, &qword_1EB2B4A80);
              if (v252(v179, 1, v100) == 1)
              {
                sub_1A7CC9970(v179, &qword_1EB2B4A80);
                v256 = 0u;
                v257 = 0u;
              }

              else
              {
                *(&v257 + 1) = v100;
                v182 = sub_1A7CC98BC(&v256);
                sub_1A7CF4888(v179, v182, type metadata accessor for LinkStateComponent);
              }

              a4 = v242;
              sub_1A7CC8D74(&v256, v100);
              os_unfair_lock_unlock((v103 + 40));
              sub_1A7CD0E68(v235);
              sub_1A7CC9970(v237, &qword_1EB2B4A80);
              v183 = swift_getObjectType();
              v240[1](v103, v183);
            }

            v184 = v227;
            sub_1A7E22CD0();

            sub_1A7CD0E68(v255);
            v185 = v226;
            sub_1A7CC9970(v226, &qword_1EB2B5B78);
            v96 = 1;
            v224(v184, 0, 1, v248);
            sub_1A7D25AEC(v184, v185);
            v101 = v249;
            goto LABEL_6;
          }
        }

        if (v96 != 2)
        {
          sub_1A7CD0E68(v255);

          goto LABEL_73;
        }

        os_unfair_lock_lock((v103 + 40));
        v112 = *v253;
        if (*(*v253 + 16))
        {
          v113 = sub_1A7CD0DFC(v100);
          v114 = v236;
          if (v115)
          {
            sub_1A7B0CD10(*(v112 + 56) + 32 * v113, &v256);
          }

          else
          {
            v256 = 0u;
            v257 = 0u;
          }
        }

        else
        {
          v256 = 0u;
          v257 = 0u;
          v114 = v236;
        }

        os_unfair_lock_unlock((v103 + 40));
        v139 = swift_dynamicCast();
        v251(v114, v139 ^ 1u, 1, v100);
        if (v252(v114, 1, v100))
        {
          sub_1A7CC9970(v114, &qword_1EB2B4A80);
          v140 = v232;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v141 = v219;
          sub_1A7CD0EC4(v114, v219);
          sub_1A7CC9970(v114, &qword_1EB2B4A80);
          v140 = v232;
          sub_1A7CF4888(v141, v232, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() >= 2)
        {
          sub_1A7CD0E68(v255);

          sub_1A7CD0E68(v140);
          v96 = 2;
          a4 = v242;
        }

        else
        {
          (*v229)(v140, v248);
          if (qword_1EB2B2CC0 != -1)
          {
            swift_once();
          }

          v249 = v101;
          v142 = sub_1A7E22060();
          sub_1A7B0CB00(v142, qword_1EB2B2CC8);

          v143 = sub_1A7E22040();
          v144 = sub_1A7E228F0();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v214 = swift_slowAlloc();
            *&v256 = v214;
            *v145 = v218;
            v146 = *(v103 + 16);
            v147 = *(v103 + 24);

            v148 = sub_1A7B0CB38(v146, v147, &v256);

            *(v145 + 4) = v148;
            *(v145 + 12) = 2080;
            v149 = v215;
            LinkEngineLink.state.getter(v215);
            v150 = LinkState.description.getter();
            v152 = v151;
            sub_1A7CD0E68(v149);
            v153 = sub_1A7B0CB38(v150, v152, &v256);

            *(v145 + 14) = v153;
            _os_log_impl(&dword_1A7AD9000, v143, v144, "%s: %s -> disconnecting", v145, 0x16u);
            v154 = v214;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v154, -1, -1);
            MEMORY[0x1AC5654B0](v145, -1, -1);
          }

          v155 = v221;
          v156 = v220;
          v157 = v233;
          (*v238)(v233, v246, v248);
          swift_storeEnumTagMultiPayload();
          sub_1A7CD0EC4(v157, v156);
          v251(v156, 0, 1, v100);
          os_unfair_lock_lock((v103 + 40));
          sub_1A7CD1F00(v156, v155, &qword_1EB2B4A80);
          v158 = v252(v155, 1, v100);
          i = v230;
          if (v158 == 1)
          {
            sub_1A7CC9970(v155, &qword_1EB2B4A80);
            v256 = 0u;
            v257 = 0u;
          }

          else
          {
            *(&v257 + 1) = v100;
            v159 = sub_1A7CC98BC(&v256);
            sub_1A7CF4888(v155, v159, type metadata accessor for LinkStateComponent);
          }

          a4 = v242;
          v101 = v249;
          sub_1A7CC8D74(&v256, v100);
          os_unfair_lock_unlock((v103 + 40));
          sub_1A7CD0E68(v233);
          sub_1A7CC9970(v156, &qword_1EB2B4A80);
          v160 = swift_getObjectType();
          v240[3](v103, v160);

          sub_1A7CD0E68(v255);
          v96 = 2;
        }

LABEL_6:
        ++v101;
        if (v250 == i)
        {
          goto LABEL_73;
        }
      }

      if (v101 >= *(v223 + 16))
      {
        goto LABEL_79;
      }

      v103 = *(a4 + 8 * v101 + 32);

      v104 = v101 + 1;
      if (!__OFADD__(v101, 1))
      {
        goto LABEL_13;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      ;
    }

LABEL_73:
    v193 = v226;
    v194 = v210;
    sub_1A7CD1F00(v226, v210, &qword_1EB2B5B78);
    v195 = v209;
    v196 = v248;
    if ((*(v209 + 48))(v194, 1, v248) == 1)
    {
      sub_1A7CC9970(v193, &qword_1EB2B5B78);
      v193 = v194;
      a8 = v203;
    }

    else
    {
      v197 = v206;
      (*(v195 + 32))(v206, v194, v196);
      a8 = v203;
      (*(a9 + 24))(v197, v203, a9);
      (*(v195 + 8))(v197, v196);
    }

    sub_1A7CC9970(v193, &qword_1EB2B5B78);
    v90 = v202;
    v95 = v247;
  }

  return (*(v90 + 8))(v95, a8);
}

unint64_t sub_1A7DCBC7C()
{
  result = qword_1EB2B7820;
  if (!qword_1EB2B7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7820);
  }

  return result;
}

uint64_t sub_1A7DCBD30()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C30);
  sub_1A7B0CB00(v0, qword_1EB2B2C30);
  return sub_1A7E22050();
}

uint64_t IDSGLDefaultLinkConnector.__allocating_init(connector:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void IDSGLDefaultLinkConnector.startConnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B2C30);

  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v73 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
    _os_log_impl(&dword_1A7AD9000, v5, v6, "Start connecting link %s...", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  LinkEngineLink.definition.getter(&v73);
  v9 = v73;
  if (v73)
  {
    v11 = *(&v73 + 1);
    v10 = v74;
    sub_1A7CE0478(v74, &v73);
    v12 = v73;
    if (v73)
    {
      v65 = v9;

      v13 = sub_1A7E22040();
      v14 = sub_1A7E228F0();

      if (os_log_type_enabled(v13, v14))
      {
        v66 = v12;
        v15 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v2;
        *&v73 = v63;
        *v15 = 136315138;
        v78[0] = v66;
        v16 = LinkEndpoint.uniqueID.getter();
        v18 = a1;
        v19 = v11;
        v20 = v10;
        v21 = sub_1A7B0CB38(v16, v17, &v73);

        *(v15 + 4) = v21;
        v10 = v20;
        v11 = v19;
        a1 = v18;
        _os_log_impl(&dword_1A7AD9000, v13, v14, "    have an idsResolvedEndpoint: %s", v15, 0xCu);
        sub_1A7B0CD6C(v63);
        v2 = v64;
        MEMORY[0x1AC5654B0](v63, -1, -1);
        v22 = v15;
        v12 = v66;
        MEMORY[0x1AC5654B0](v22, -1, -1);
      }

      v9 = v65;
    }

    else
    {

      v12 = v10;
    }

    sub_1A7CE0318(v11, &v73);
    if (*(&v74 + 1))
    {
      sub_1A7CC99E0(&v73, v77);
      sub_1A7CE23DC(&v73);
      sub_1A7B14FF0(v77, v78);
      sub_1A7CE0318(v12, &v73);
      if (*(&v74 + 1))
      {
        sub_1A7CC99E0(&v73, &v71);
        sub_1A7CE23DC(&v73);
        sub_1A7B14FF0(&v71, v77);
        sub_1A7CC99E0(v78, &v71);
        sub_1A7CC99E0(v77, v70);
        sub_1A7CDB7B8(v9);

        sub_1A7CDB7B8(v9);

        v26 = sub_1A7E22040();
        v27 = sub_1A7E228F0();
        v66 = v12;
        if (!os_log_type_enabled(v26, v27))
        {

          sub_1A7CDB84C(v9);

          sub_1A7CDB84C(v9);

          sub_1A7B0CD6C(&v71);
          sub_1A7B0CD6C(v70);
LABEL_41:
          v58 = v79;
          v65 = v80;
          v64 = sub_1A7CC9878(v78, v79);
          sub_1A7CE0318(v11, &v73);
          if (*(&v74 + 1))
          {
            v59 = WORD4(v75);
            v60 = sub_1A7CE23DC(&v73);
          }

          else
          {
            v60 = sub_1A7CC9970(&v73, &qword_1EB2B5030);
            v59 = 0;
          }

          MEMORY[0x1EEE9AC00](v60, v61);
          v62[2] = v77;
          v62[3] = v66;
          v62[4] = v2;
          v62[5] = a1;
          v62[6] = v9;
          v62[7] = v11;
          v62[8] = v10;
          IPAddress.withSockaddrStorage<A>(forPort:block:)(v59, sub_1A7DCE940, v62, v58, MEMORY[0x1E69E7CA8] + 8, v65, MEMORY[0x1E69E7CA8]);
          sub_1A7CDB84C(v9);

          sub_1A7B0CD6C(v77);
          sub_1A7B0CD6C(v78);
          return;
        }

        v64 = v10;
        v65 = v9;
        v28 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69[0] = v63;
        *v28 = 136315906;
        v29 = sub_1A7CC9878(&v71, v72);
        v30 = MEMORY[0x1EEE9AC00](v29, v29);
        (*(v32 + 16))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        v33 = sub_1A7E222F0();
        v35 = v34;
        sub_1A7B0CD6C(&v71);
        v36 = sub_1A7B0CB38(v33, v35, v69);

        *(v28 + 4) = v36;
        *(v28 + 12) = 512;
        if (*(v11 + 16) && (v37 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v38 & 1) != 0))
        {
          sub_1A7B0CD10(*(v11 + 56) + 32 * v37, v68);
          sub_1A7B1503C(v68, v67);
          sub_1A7CC7FFC(&qword_1EB2B5040);
          if (swift_dynamicCast())
          {
            if (*(&v74 + 1))
            {
              v39 = WORD4(v75);
              sub_1A7CE23DC(&v73);
LABEL_32:
              v44 = v65;
              sub_1A7CDB84C(v65);
              *(v28 + 14) = v39;
              sub_1A7CDB84C(v44);
              *(v28 + 16) = 2080;
              v45 = sub_1A7CC9878(v70, v70[3]);
              v46 = MEMORY[0x1EEE9AC00](v45, v45);
              (*(v48 + 16))(&v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
              v49 = sub_1A7E222F0();
              v51 = v50;
              sub_1A7B0CD6C(v70);
              v52 = sub_1A7B0CB38(v49, v51, v69);

              *(v28 + 18) = v52;
              *(v28 + 26) = 512;
              v53 = v66;
              if (v66[2].isa && (v54 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v55 & 1) != 0))
              {
                sub_1A7B0CD10(v53[7].isa + 32 * v54, v68);
                sub_1A7B1503C(v68, v67);
                sub_1A7CC7FFC(&qword_1EB2B5040);
                if (swift_dynamicCast())
                {
                  v10 = v64;
                  if (*(&v74 + 1))
                  {
                    v56 = WORD4(v75);
                    sub_1A7CE23DC(&v73);
LABEL_40:

                    *(v28 + 28) = v56;

                    _os_log_impl(&dword_1A7AD9000, v26, v27, "    connecting link for %s:%hu ->  %s:%hu", v28, 0x1Eu);
                    v57 = v63;
                    swift_arrayDestroy();
                    MEMORY[0x1AC5654B0](v57, -1, -1);
                    MEMORY[0x1AC5654B0](v28, -1, -1);

                    v9 = v65;
                    goto LABEL_41;
                  }

LABEL_39:
                  sub_1A7CC9970(&v73, &qword_1EB2B5030);
                  v56 = 0;
                  goto LABEL_40;
                }

                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
              }

              else
              {
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
              }

              v10 = v64;
              goto LABEL_39;
            }
          }

          else
          {
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
        }

        sub_1A7CC9970(&v73, &qword_1EB2B5030);
        v39 = 0;
        goto LABEL_32;
      }

      sub_1A7CDB84C(v9);
      sub_1A7CC9970(&v73, &qword_1EB2B5030);
      sub_1A7B0CD6C(v78);
    }

    else
    {
      sub_1A7CDB84C(v9);

      sub_1A7CC9970(&v73, &qword_1EB2B5030);
    }

    v40 = sub_1A7E22040();
    v41 = sub_1A7E228F0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v73 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
      _os_log_impl(&dword_1A7AD9000, v40, v41, "    no ip addresses for link %s; skipping", v42, 0xCu);
      sub_1A7B0CD6C(v43);
      MEMORY[0x1AC5654B0](v43, -1, -1);
      MEMORY[0x1AC5654B0](v42, -1, -1);
    }
  }

  else
  {

    v66 = sub_1A7E22040();
    v23 = sub_1A7E228E0();

    if (os_log_type_enabled(v66, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v73 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
      _os_log_impl(&dword_1A7AD9000, v66, v23, "    no definition for link %s; skipping", v24, 0xCu);
      sub_1A7B0CD6C(v25);
      MEMORY[0x1AC5654B0](v25, -1, -1);
      MEMORY[0x1AC5654B0](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A7DCC924@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = a9;
  v16 = a2[3];
  v23 = a2[4];
  sub_1A7CC9878(a2, v16);
  sub_1A7CE0318(a3, &v24);
  if (v25)
  {
    v17 = v26;
    v18 = sub_1A7CE23DC(&v24);
  }

  else
  {
    v18 = sub_1A7CC9970(&v24, &qword_1EB2B5030);
    v17 = 0;
  }

  MEMORY[0x1EEE9AC00](v18, v19);
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a1;
  return IPAddress.withSockaddrStorage<A>(forPort:block:)(v17, sub_1A7DCEAB8, v21, v16, MEMORY[0x1E69E7CA8] + 8, v23, v22);
}

uint64_t sub_1A7DCCA48(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  aBlock[6] = a4;
  aBlock[7] = a5;
  aBlock[8] = a6;
  result = LinkDefinition.idsLinkType.getter(&v60);
  if (!v60)
  {
    v15 = a7[5];
    v48 = a7[4];
    v49 = v15;
    v16 = a7[7];
    v50 = a7[6];
    v51 = v16;
    v17 = a7[1];
    v44 = *a7;
    v45 = v17;
    v18 = a7[3];
    v46 = a7[2];
    v47 = v18;
    v19 = *a1;
    v20 = a1[1];
    v21 = a1[3];
    v54 = a1[2];
    v55 = v21;
    v52 = v19;
    v53 = v20;
    v22 = a1[4];
    v23 = a1[5];
    v24 = a1[7];
    v58 = a1[6];
    v59 = v24;
    v56 = v22;
    v57 = v23;
    if (qword_1EB2B2C28 != -1)
    {
      swift_once();
    }

    v25 = sub_1A7E22060();
    sub_1A7B0CB00(v25, qword_1EB2B2C30);

    v26 = sub_1A7E22040();
    v27 = sub_1A7E228F0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      v29 = a2;
      v30 = aBlock[0];
      *v28 = 136315138;
      *(v28 + 4) = sub_1A7B0CB38(*(a3 + 16), *(a3 + 24), aBlock);
      _os_log_impl(&dword_1A7AD9000, v26, v27, "Start connecting relay link %s", v28, 0xCu);
      sub_1A7B0CD6C(v30);
      v31 = v30;
      a2 = v29;
      MEMORY[0x1AC5654B0](v31, -1, -1);
      MEMORY[0x1AC5654B0](v28, -1, -1);
    }

    v32 = swift_allocObject();
    v33 = v49;
    *(v32 + 80) = v48;
    *(v32 + 96) = v33;
    v34 = v51;
    *(v32 + 112) = v50;
    *(v32 + 128) = v34;
    v35 = v45;
    *(v32 + 16) = v44;
    *(v32 + 32) = v35;
    v36 = v47;
    *(v32 + 48) = v46;
    *(v32 + 64) = v36;
    v37 = v55;
    *(v32 + 176) = v54;
    *(v32 + 192) = v37;
    v38 = v53;
    *(v32 + 144) = v52;
    *(v32 + 160) = v38;
    v39 = v59;
    *(v32 + 240) = v58;
    *(v32 + 256) = v39;
    v40 = v57;
    *(v32 + 208) = v56;
    *(v32 + 224) = v40;
    *(v32 + 272) = a2;
    *(v32 + 280) = a3;
    *(v32 + 288) = a4;
    *(v32 + 296) = a5;
    *(v32 + 304) = a6;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1A7DCEADC;
    *(v41 + 24) = v32;
    aBlock[4] = sub_1A7DCF320;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A7DBB524;
    aBlock[3] = &unk_1F1AB7F08;
    v42 = _Block_copy(aBlock);

    IDSTransportThreadAddBlock(v42);
    _Block_release(v42);
  }

  return result;
}

void sub_1A7DCCD68(__int128 *a1, unint64_t *a2, void *a3, unint64_t a4)
{
  v131 = a1;
  v161 = *MEMORY[0x1E69E9840];
  v8 = sub_1A7CC7FFC(&qword_1EB2B63F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v122[-v10];
  v13 = *a2;
  v12 = a2[1];
  v14 = *a2;
  v132 = a2[2];
  v15 = sub_1A7CE0528(v14, &v156);
  v17 = v156;
  v129 = a4;
  if (!v156)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  *&v156 = 13160;
  *(&v156 + 1) = 0xE200000000000000;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v156;
  v18 = sub_1A7DB1A5C(sub_1A7CF67EC, &v122[-32], v17);

  v127 = v4;
  v130 = a3;
  if (v18)
  {
    goto LABEL_7;
  }

  v19 = sub_1A7CE0528(v13, &v156);
  v21 = v156;
  if (!v156)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  *&v156 = 7365749;
  *(&v156 + 1) = 0xE300000000000000;
  MEMORY[0x1EEE9AC00](v19, v20);
  v121 = &v156;
  v22 = sub_1A7DB1A5C(sub_1A7CF680C, &v122[-32], v21);

  if (v22)
  {
LABEL_7:
    v23 = 4;
    v24 = 2;
  }

  else
  {
    v77 = sub_1A7CE0528(v13, &v156);
    v79 = v156;
    if (!v156)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    *&v156 = 12904;
    *(&v156 + 1) = 0xE200000000000000;
    MEMORY[0x1EEE9AC00](v77, v78);
    v121 = &v156;
    v80 = sub_1A7DB1A5C(sub_1A7CF680C, &v122[-32], v79);

    if (v80)
    {
      v23 = 768;
      v24 = 3;
    }

    else
    {
      v108 = sub_1A7CE0528(v13, &v156);
      v110 = v156;
      if (!v156)
      {
        v110 = MEMORY[0x1E69E7CC0];
      }

      *&v156 = 7365492;
      *(&v156 + 1) = 0xE300000000000000;
      MEMORY[0x1EEE9AC00](v108, v109);
      v121 = &v156;
      v111 = sub_1A7DB1A5C(sub_1A7CF680C, &v122[-32], v110);

      if (v111)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      if (v111)
      {
        v23 = 768;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  v25 = &v141;
  sub_1A7CE0318(v12, &v156);
  v128 = v13;
  if (*(&v157 + 1))
  {
    sub_1A7CC99E0(&v156, &v151);
    sub_1A7CE23DC(&v156);
    sub_1A7CC7FFC(&qword_1EB2B5048);
    v26 = sub_1A7E220D0();
    v27 = swift_dynamicCast();
    (*(*(v26 - 8) + 56))(v11, v27 ^ 1u, 1, v26);
  }

  else
  {
    sub_1A7CC9970(&v156, &qword_1EB2B5030);
    v26 = sub_1A7E220D0();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  }

  sub_1A7E220D0();
  v28 = (*(*(v26 - 8) + 48))(v11, 1, v26);
  sub_1A7CC9970(v11, &qword_1EB2B63F0);
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  v30 = v23 | v29;
  *&v156 = v12;
  v31 = LinkEndpoint.isCellular.getter();
  LocalMTU = GLUtilGetLocalMTU(v30 | 0x20u, v31 & 1);
  sub_1A7CE072C(v12, &v134);
  if (v135)
  {
    v33 = 0;
  }

  else
  {
    v33 = v134;
  }

  sub_1A7CE03D4(v12, &v151);
  v159 = v154;
  v160 = v155;
  v157 = v152;
  v158 = v153;
  v156 = v151;
  if (!*(&v155 + 1) || (v34 = v157, v35 = BYTE8(v157), sub_1A7CC9970(&v156, &qword_1EB2B5038), (v35 & 1) != 0))
  {
    v34 = -1;
    goto LABEL_22;
  }

  if (v34 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_133;
  }

  if (v34 > 0x7FFFFFFF)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_22:
  v36 = objc_allocWithZone(IDSStunCandidate);
  v11 = &selRef_hasAllocbindResponse;
  v37 = [v36 initWithType:3 transport:v24 radioAccessTechnology:v33 mtu:LocalMTU index:v34 address:v130 external:?];
  if (!v37)
  {
    __break(1u);
LABEL_139:
    __break(1u);
  }

  v35 = v37;
  sub_1A7CE03D4(v12, &v146);
  v151 = v146;
  v152 = v147;
  v153 = v148;
  v154 = v149;
  v155 = v150;
  if (*(&v150 + 1) && (v38 = *(&v151 + 1), , sub_1A7CC9970(&v151, &qword_1EB2B5038), v38))
  {
    v39 = sub_1A7E22260();
  }

  else
  {
    v39 = 0;
  }

  [v35 setInterfaceName_];

  sub_1A7CE03D4(v12, &v141);
  v149 = v144;
  v150 = v145;
  v147 = v142;
  v148 = v143;
  v146 = v141;
  if (*(&v145 + 1))
  {
    v40 = v149;
    v41 = BYTE8(v149);
    sub_1A7CC9970(&v146, &qword_1EB2B5038);
    if ((v41 & 1) == 0)
    {
      if (v40 >= 0xFFFFFFFF80000000)
      {
        if (v40 <= 0x7FFFFFFF)
        {
          goto LABEL_32;
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }
  }

  v40 = 0;
LABEL_32:
  [v35 setDelegatedIndex_];
  sub_1A7CE03D4(v12, &v136);
  v144 = v139;
  v145 = v140;
  v143 = v138;
  v141 = v136;
  v142 = v137;
  if (*(&v140 + 1) && (v42 = *(&v143 + 1), , sub_1A7CC9970(&v141, &qword_1EB2B5038), v42))
  {
    v43 = sub_1A7E22260();
  }

  else
  {
    v43 = 0;
  }

  [v35 setDelegatedInterfaceName_];

  sub_1A7CE0668(v12, &v136);
  [v35 setIsNAT64_];
  v44 = 1280 - GLUtilGetLinkOverhead(v23 | 0x1Au);
  if ((v44 & 0xFFFF0000) != 0)
  {
    goto LABEL_136;
  }

  v45 = objc_allocWithZone(IDSStunCandidate);
  v46 = [v45 initWithType:3 transport:v24 radioAccessTechnology:9 mtu:v44 index:0xFFFFFFFFLL address:0 external:v129];
  if (!v46)
  {
    goto LABEL_139;
  }

  v11 = v46;
  v47 = v132;
  sub_1A7CE0668(v132, &v136);
  v25 = v131;
  if (v136 != 2 && (v136 & 1) != 0)
  {
    [v11 setIsNAT64_];
  }

  sub_1A7CE0720(v47, &v136);
  if (v136 == 2 || (v136 & 1) == 0)
  {
    v50 = 0;
LABEL_50:
    v58 = 0;
    goto LABEL_51;
  }

  v48 = sub_1A7DCEB68(v25);
  if (!v48)
  {
    [v11 setIsRealloc_];
    v50 = 0;
    goto LABEL_126;
  }

  v50 = *(v48 + 16);
  v49 = *(v48 + 24);

  [v11 setIsRealloc_];
  if (!v49)
  {
LABEL_126:
    if (qword_1EB2B2C28 != -1)
    {
      swift_once();
    }

    v112 = sub_1A7E22060();
    sub_1A7B0CB00(v112, qword_1EB2B2C30);

    v113 = sub_1A7E22040();
    v114 = sub_1A7E228E0();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v126 = v11;
      v116 = v115;
      v117 = swift_slowAlloc();
      v125 = v50;
      v118 = v117;
      *&v136 = v117;
      *v116 = 136315138;
      *(v116 + 4) = sub_1A7B0CB38(*(v25 + 2), *(v25 + 3), &v136);
      _os_log_impl(&dword_1A7AD9000, v113, v114, "is realloc but no original link found for %s", v116, 0xCu);
      sub_1A7B0CD6C(v118);
      v119 = v118;
      v50 = v125;
      MEMORY[0x1AC5654B0](v119, -1, -1);
      v120 = v116;
      v11 = v126;
      MEMORY[0x1AC5654B0](v120, -1, -1);
    }

    goto LABEL_50;
  }

  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v51 = sub_1A7E22060();
  sub_1A7B0CB00(v51, qword_1EB2B2C30);

  v52 = sub_1A7E22040();
  v53 = sub_1A7E228F0();

  v129 = v49;

  v123 = v53;
  v124 = v52;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v126 = v11;
    v55 = v54;
    v56 = swift_slowAlloc();
    v125 = v50;
    v57 = v56;
    *&v136 = v56;
    *v55 = 136315394;
    v58 = v129;

    v59 = sub_1A7B0CB38(v125, v58, &v136);

    *(v55 + 4) = v59;
    v25 = v131;
    v47 = v132;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_1A7B0CB38(*(v25 + 2), *(v25 + 3), &v136);
    v60 = v124;
    _os_log_impl(&dword_1A7AD9000, v124, v123, "replacing link %s with %s", v55, 0x16u);
    swift_arrayDestroy();
    v61 = v57;
    v50 = v125;
    MEMORY[0x1AC5654B0](v61, -1, -1);
    v62 = v55;
    v11 = v126;
    MEMORY[0x1AC5654B0](v62, -1, -1);
  }

  else
  {

    v58 = v129;
  }

LABEL_51:
  sub_1A7CE0874(v12, &v136);
  if ((BYTE1(v137) & 1) == 0 && (v137 & 1) == 0)
  {
    [v35 setPrefix_];
  }

  sub_1A7CE07D8(v47, &v136);
  v63 = *(&v137 + 1);
  if (!*(&v137 + 1))
  {

    goto LABEL_103;
  }

  v64 = v128;
  v129 = v58;
  v130 = v35;
  v66 = *(&v136 + 1);
  v65 = v137;
  v67 = v136;

  v132 = v67;
  sub_1A7D25988(v67, v66, v65, v63);
  if (!v66)
  {

    v35 = v130;
    v25 = v131;
LABEL_103:
    if (qword_1EB2B2C28 == -1)
    {
LABEL_104:
      v81 = sub_1A7E22060();
      sub_1A7B0CB00(v81, qword_1EB2B2C30);

      v82 = sub_1A7E22040();
      v83 = sub_1A7E228E0();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = v11;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v136 = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_1A7B0CB38(*(v25 + 2), *(v25 + 3), &v136);
        _os_log_impl(&dword_1A7AD9000, v82, v83, "No relay session ID on relay link with id %s", v85, 0xCu);
        sub_1A7B0CD6C(v86);
        MEMORY[0x1AC5654B0](v86, -1, -1);
        MEMORY[0x1AC5654B0](v85, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_137:
    swift_once();
    goto LABEL_104;
  }

  v125 = v50;
  v126 = v11;
  sub_1A7CE0528(v64, &v136);
  v68 = v136;
  if (!v136)
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v68 + 16);
  v128 = v68;
  v70 = 0;
  if (v69)
  {
    v71 = (v68 + 40);
    v72 = v66;
    do
    {
      v74 = *(v71 - 1);
      v73 = *v71;
      v75 = v74 == 13160 && v73 == 0xE200000000000000;
      if (v75 || (sub_1A7E230D0() & 1) != 0)
      {
        v70 |= 0x11uLL;
      }

      else
      {
        v76 = v74 == 12904 && v73 == 0xE200000000000000;
        if (v76 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 0x22uLL;
        }

        else if (v74 == 7365749 && v73 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 1uLL;
        }

        else if (v74 == 7365492 && v73 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 2uLL;
        }

        else if (v74 == 0x736C742D656B6166 && v73 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 0x32uLL;
        }

        else if (v74 == 0x7032702D736469 && v73 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 0x300uLL;
        }

        else if (v74 == 0x72762D736469 && v73 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 0x200uLL;
        }

        else if (v74 == 0x616C65722D736469 && v73 == 0xE900000000000079 || (sub_1A7E230D0() & 1) != 0)
        {
          v70 |= 0x100uLL;
        }
      }

      v71 += 2;
      --v69;
    }

    while (v69);
  }

  else
  {
    v72 = v66;
  }

  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v87 = sub_1A7E22060();
  sub_1A7B0CB00(v87, qword_1EB2B2C30);
  v88 = v131;

  v89 = v130;
  v90 = v126;
  v91 = sub_1A7E22040();
  v92 = sub_1A7E228F0();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v136 = v128;
    *v93 = 136316162;
    *(v93 + 4) = sub_1A7B0CB38(*(v88 + 2), *(v88 + 3), &v136);
    *(v93 + 12) = 2080;
    v133 = v70;
    type metadata accessor for IDSGLLinkNetworkProtocol(0);
    v95 = sub_1A7E222F0();
    v97 = sub_1A7B0CB38(v95, v96, &v136);
    LODWORD(v124) = v92;
    v98 = v97;

    *(v93 + 14) = v98;
    v99 = v132;
    *(v93 + 22) = 2080;
    *(v93 + 24) = sub_1A7B0CB38(v99, v72, &v136);
    *(v93 + 32) = 2112;
    *(v93 + 34) = v89;
    *(v93 + 42) = 2112;
    *(v93 + 44) = v90;
    v100 = v126;
    *v94 = v130;
    v94[1] = v100;
    v101 = v89;
    v102 = v90;
    _os_log_impl(&dword_1A7AD9000, v91, v124, "... calling underlying connector to connect relay link %s over %s for relySessionID %s from %@ to %@", v93, 0x34u);
    sub_1A7CC7FFC(&qword_1EB2B57A0);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v94, -1, -1);
    v103 = v128;
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v103, -1, -1);
    MEMORY[0x1AC5654B0](v93, -1, -1);
  }

  v104 = *(v127 + 16);
  v105 = sub_1A7E22260();
  v106 = sub_1A7E22260();

  if (v129)
  {
    v107 = sub_1A7E22260();
  }

  else
  {
    v107 = 0;
  }

  [v104 connectRelayLinkFromCandidate:v89 toCandidate:v90 withUniqueID:v105 relaySessionID:v106 glLinkProtocol:v70 replacesLinkWithUniqueID:v107];
}

uint64_t IDSGLDefaultLinkConnector.startDisconnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  result = LinkEngineLink.definition.getter(&v11);
  v5 = v11;
  if (v11)
  {
    v7 = v12;
    v6 = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    LinkDefinition.idsLinkType.getter(&v17);
    if (!v17)
    {
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = a1;
      v8[4] = v5;
      v8[5] = v7;
      v8[6] = v6;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1A7DCE968;
      *(v9 + 24) = v8;
      v15 = sub_1A7DCE974;
      v16 = v9;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1A7DBB524;
      v14 = &unk_1F1AB7D00;
      v10 = _Block_copy(&v11);

      sub_1A7CDB7B8(v5);

      IDSTransportThreadAddBlock(v10);
      _Block_release(v10);
    }

    return sub_1A7CDB84C(v5);
  }

  return result;
}

uint64_t IDSGLDefaultLinkConnector.startReconnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  result = LinkEngineLink.definition.getter(&v11);
  v5 = v11;
  if (v11)
  {
    v7 = v12;
    v6 = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    LinkDefinition.idsLinkType.getter(&v17);
    if (!v17)
    {
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = a1;
      v8[4] = v5;
      v8[5] = v7;
      v8[6] = v6;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1A7DCE9EC;
      *(v9 + 24) = v8;
      v15 = sub_1A7DCF320;
      v16 = v9;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1A7DBB524;
      v14 = &unk_1F1AB7D78;
      v10 = _Block_copy(&v11);

      sub_1A7CDB7B8(v5);

      IDSTransportThreadAddBlock(v10);
      _Block_release(v10);
    }

    return sub_1A7CDB84C(v5);
  }

  return result;
}

void sub_1A7DCE314(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v15 = *(a1 + 16);
  v17 = sub_1A7E22260();
  sub_1A7CE0528(a3, &v18);
  if (v18)
  {
    v7 = v18;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = v11 == 13160 && v12 == 0xE200000000000000;
      if (v13 || (sub_1A7E230D0() & 1) != 0)
      {
        v9 |= 0x11uLL;
      }

      else
      {
        v14 = v11 == 12904 && v12 == 0xE200000000000000;
        if (v14 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x22uLL;
        }

        else if (v11 == 7365749 && v12 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 1uLL;
        }

        else if (v11 == 7365492 && v12 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 2uLL;
        }

        else if (v11 == 0x736C742D656B6166 && v12 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x32uLL;
        }

        else if (v11 == 0x7032702D736469 && v12 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x300uLL;
        }

        else if (v11 == 0x72762D736469 && v12 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x200uLL;
        }

        else if (v11 == 0x616C65722D736469 && v12 == 0xE900000000000079 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x100uLL;
        }
      }

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [v15 *a6];
}

uint64_t IDSGLDefaultLinkConnector.removeLink(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7DCEA20;
  *(v5 + 24) = v4;
  v8[4] = sub_1A7DCF320;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A7DBB524;
  v8[3] = &unk_1F1AB7DF0;
  v6 = _Block_copy(v8);

  IDSTransportThreadAddBlock(v6);
  _Block_release(v6);
}

void sub_1A7DCE760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1A7E22260();
  [v1 linkEngineDidRemoveLinkWithUniqueID_];
}

uint64_t IDSGLDefaultLinkConnector.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DCE820(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7DCF30C;
  *(v5 + 24) = v4;
  v8[4] = sub_1A7DCF320;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A7DBB524;
  v8[3] = &unk_1F1AB7E90;
  v6 = _Block_copy(v8);

  IDSTransportThreadAddBlock(v6);
  _Block_release(v6);
}

uint64_t sub_1A7DCE97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7DCE994()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A7DCEA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A7DCEADC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 304);
  v3 = *(v0 + 96);
  v14[4] = *(v0 + 80);
  v14[5] = v3;
  v4 = *(v0 + 128);
  v14[6] = *(v0 + 112);
  v14[7] = v4;
  v5 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v5;
  v6 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v6;
  v7 = *(v0 + 224);
  v13[4] = *(v0 + 208);
  v13[5] = v7;
  v8 = *(v0 + 256);
  v13[6] = *(v0 + 240);
  v13[7] = v8;
  v9 = *(v0 + 160);
  v13[0] = *(v0 + 144);
  v13[1] = v9;
  v10 = *(v0 + 192);
  v13[2] = *(v0 + 176);
  v13[3] = v10;
  v11 = *(v0 + 288);
  v12 = v2;
  sub_1A7DCCD68(v1, &v11, v14, v13);
}

uint64_t sub_1A7DCEB68(uint64_t a1)
{
  v2 = a1;
  sub_1A7DCF24C(a1 + 32, &v53);
  Strong = swift_weakLoadStrong();
  sub_1A7DCF2A8(&v53);
  if (!Strong)
  {
    return 0;
  }

  os_unfair_lock_lock((Strong + 16));
  v4 = *(Strong + 24);

  os_unfair_lock_unlock((Strong + 16));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_12:
    v1 = *(*(v4 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v1 + 40));
    v11 = *(v1 + 48);
    if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v13 & 1) != 0))
    {
      sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v53);
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v1 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      LOBYTE(v51) = 2;
      goto LABEL_6;
    }

    if (v51 == 2 || (v51 & 1) == 0)
    {
LABEL_6:
    }

    else
    {
      os_unfair_lock_lock((v2 + 40));
      v14 = *(v2 + 48);
      if (*(v14 + 16) && (v15 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v16 & 1) != 0))
      {
        sub_1A7B0CD10(*(v14 + 56) + 32 * v15, &v53);
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      os_unfair_lock_unlock((v2 + 40));
      if ((swift_dynamicCast() & 1) == 0)
      {
        v51 = 1uLL;
        v52 = 0;
LABEL_30:

        goto LABEL_31;
      }

      if (v51 == 1)
      {
        goto LABEL_30;
      }

      v48 = v2;
      v18 = *(&v51 + 1);
      v49 = v51;
      v17 = v52;
      sub_1A7CDB7B8(v51);
      v47 = v18;
      sub_1A7CDBC48(v49);
      if (v49)
      {
        v46 = v17;
        os_unfair_lock_lock((v1 + 40));
        v19 = *(v1 + 48);
        v2 = v48;
        if (*(v19 + 16) && (v20 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v21 & 1) != 0))
        {
          sub_1A7B0CD10(*(v19 + 56) + 32 * v20, &v53);
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        os_unfair_lock_unlock((v1 + 40));
        if ((swift_dynamicCast() & 1) == 0)
        {
          v51 = 1uLL;
          v52 = 0;
          goto LABEL_43;
        }

        if (v51 == 1)
        {
LABEL_43:

          sub_1A7CDB84C(v49);
LABEL_31:
          sub_1A7CDBC48(v51);
        }

        else
        {
          v22 = *(&v51 + 1);
          v23 = v52;
          v45 = v51;
          sub_1A7CDB7B8(v51);
          v43 = v22;
          v44 = v23;
          sub_1A7CDBC48(v45);
          if (v45)
          {
            if (*(v46 + 16) && (v24 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID), (v25 & 1) != 0) && (sub_1A7B0CD10(*(v46 + 56) + 32 * v24, &v51), sub_1A7B1503C(&v51, v50), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0) && (v26 = *(&v54 + 1)) != 0)
            {
              v27 = *(&v53 + 1);
              v38 = v54;
              v40 = v53;

              sub_1A7D25988(v40, v27, v38, v26);
            }

            else
            {
              v40 = 0;
              v27 = 0;
            }

            if (*(v44 + 16) && (v28 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID), (v29 & 1) != 0) && (sub_1A7B0CD10(*(v44 + 56) + 32 * v28, &v51), sub_1A7B1503C(&v51, v50), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0) && *(&v54 + 1))
            {
              v30 = *(&v53 + 1);
              v35 = *(&v54 + 1);
              v36 = v54;
              v39 = v53;

              sub_1A7D25988(v39, v30, v36, v35);
              if (!v27)
              {
                if (v30)
                {
                  sub_1A7CDB84C(v45);
                  sub_1A7CDB84C(v49);

                  goto LABEL_6;
                }

LABEL_60:
                *&v53 = v47;
                v31 = LinkEndpoint.uniqueID.getter();
                v42 = v32;
                *&v51 = v43;
                if (v31 == LinkEndpoint.uniqueID.getter() && v42 == v33)
                {
                  goto LABEL_69;
                }

                v37 = sub_1A7E230D0();

                sub_1A7CDB84C(v45);
                sub_1A7CDB84C(v49);

                if (v37)
                {

                  return v1;
                }

                goto LABEL_6;
              }

              if (v30)
              {
                if (v40 == v39 && v27 == v30)
                {
                }

                else
                {
                  v41 = sub_1A7E230D0();

                  if ((v41 & 1) == 0)
                  {
                    sub_1A7CDB84C(v45);
                    sub_1A7CDB84C(v49);
                    goto LABEL_6;
                  }
                }

                goto LABEL_60;
              }
            }

            else if (!v27)
            {
              goto LABEL_60;
            }

            sub_1A7CDB84C(v45);
            sub_1A7CDB84C(v49);
          }

          else
          {

            sub_1A7CDB84C(v49);
          }
        }
      }

      else
      {

        v2 = v48;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_69:

  sub_1A7CDB84C(v45);
  sub_1A7CDB84C(v49);

  return v1;
}

uint64_t type metadata accessor for IDSToolPacketLogDumpCommand()
{
  result = qword_1EB2B7828;
  if (!qword_1EB2B7828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7DCF398()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC328);
  sub_1A7B0CB00(v4, qword_1EB2DC328);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7DCF4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6944746C75736572 && a2 == 0xEF79726F74636572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DCF580(uint64_t a1)
{
  v2 = sub_1A7DD1008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DCF5BC(uint64_t a1)
{
  v2 = sub_1A7DD1008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DCF5F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1008();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v10 = sub_1A7E22EF0();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_1A7B0CD6C(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1A7DCF774(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7888);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1008();
  sub_1A7E23260();
  sub_1A7E22FF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A7DCF8B0()
{
  v1[12] = v0;
  sub_1A7CC7FFC(&qword_1EB2B6DF8);
  v1[13] = swift_task_alloc();
  v2 = sub_1A7E21850();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_1A7E21940();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  type metadata accessor for IDSToolRequest(0);
  v1[20] = swift_task_alloc();
  type metadata accessor for IDSToolOptions();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DCFA68, 0, 0);
}

uint64_t sub_1A7DCFA68()
{
  *(v0 + 184) = sub_1A7CC7FFC(&qword_1EB2B5A40);
  sub_1A7E21DC0();
  *(v0 + 192) = sub_1A7CC7FFC(&qword_1EB2B5A88);
  sub_1A7E21FC0();
  v1 = nullsub_15;
  if (!*(v0 + 73))
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4720 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*(v0 + 73) == 1)
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4728 != -1)
    {
LABEL_9:
      swift_once();
      v1 = sub_1A7D2B464;
    }
  }

LABEL_6:
  v2 = v1;
  sub_1A7DD0DB4(*(v0 + 176), type metadata accessor for IDSToolOptions);
  *(v0 + 40) = &type metadata for CLIDefaultPrinter;
  *(v0 + 48) = &protocol witness table for CLIDefaultPrinter;
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  sub_1A7CC9878((v0 + 16), &type metadata for CLIDefaultPrinter);
  v4._object = 0x80000001A7EB14D0;
  v4._countAndFlagsBits = 0xD000000000000021;
  CLIPrinter.print(_:)(v4);
  *v3 = 0;
  type metadata accessor for IDSToolRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1A7DCFC8C;
  v6 = *(v0 + 160);

  return idsToolInvoke(request:)(v0 + 56, v6);
}

uint64_t sub_1A7DCFC8C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  sub_1A7DD0DB4(*(v2 + 160), type metadata accessor for IDSToolRequest);
  if (v0)
  {
    v3 = sub_1A7DD046C;
  }

  else
  {
    v3 = sub_1A7DCFDD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DCFDD4()
{
  v1 = *(v0 + 64);
  *(v0 + 216) = *(v0 + 56);
  *(v0 + 224) = v1;
  if (*(v0 + 72))
  {
    if (v1)
    {
      sub_1A7CC9878((v0 + 16), *(v0 + 40));
      v2._object = 0x80000001A7EB1500;
      v2._countAndFlagsBits = 0xD00000000000002CLL;
      CLIPrinter.print(_:)(v2);
      if (qword_1EB2B2DB0 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 144);
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      v8 = *(v0 + 104);
      v9 = qword_1EB2DC088;
      *(v0 + 232) = qword_1EB2DC088;
      (*(v7 + 104))(v5, *MEMORY[0x1E6968F58], v6);
      (*(v3 + 56))(v8, 1, 1, v4);

      sub_1A7E21900();

      return MEMORY[0x1EEE6DFA0](sub_1A7DD001C, v9, 0);
    }
  }

  else
  {
    sub_1A7D3B848();
  }

  sub_1A7DD0CB8();
  swift_allocError();
  swift_willThrow();
  sub_1A7B0CD6C(v0 + 16);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A7DD001C()
{
  v1 = v0[26];
  sub_1A7D05EC0(v0[19], v0 + 2);
  v0[30] = v1;
  (*(v0[18] + 8))(v0[19], v0[17]);
  if (v1)
  {
    sub_1A7D3B848();
    v2 = sub_1A7DD0528;
  }

  else
  {
    v2 = sub_1A7DD00F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DD00F4()
{
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  MEMORY[0x1AC561C90](0x737365636F72702FLL, 0xEB000000002F6465);
  sub_1A7CC9878((v0 + 16), *(v0 + 40));
  sub_1A7E22B70();

  MEMORY[0x1AC561C90](v10, v11);
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001A7EB1530;
  CLIPrinter.print(_:)(v1);

  sub_1A7E21DC0();
  sub_1A7E21FC0();
  if (!*(v0 + 74))
  {

    v2 = qword_1EB2B4720;
    goto LABEL_5;
  }

  if (*(v0 + 74) == 1)
  {

    v2 = qword_1EB2B4728;
LABEL_5:
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1A7DD0DB4(*(v0 + 168), type metadata accessor for IDSToolOptions);
    goto LABEL_8;
  }

  v4 = *(v0 + 240);
  sub_1A7DD0DB4(*(v0 + 168), type metadata accessor for IDSToolOptions);
  sub_1A7CC7FFC(&qword_1EB2B5CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  sub_1A7E21600();
  swift_allocObject();
  sub_1A7E215F0();
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  sub_1A7DD0D0C();
  v6 = sub_1A7E215E0();
  v8 = v7;

  if (!v4)
  {
    *(v5 + 56) = MEMORY[0x1E6969080];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1A7E231D0();

LABEL_8:
    sub_1A7B0CD6C(v0 + 16);

    v3 = *(v0 + 8);
    goto LABEL_11;
  }

  *(v5 + 16) = 0;

  sub_1A7B0CD6C(v0 + 16);

  v3 = *(v0 + 8);
LABEL_11:

  return v3();
}

uint64_t sub_1A7DD046C()
{
  sub_1A7B0CD6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DD0528()
{
  sub_1A7B0CD6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DD05E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7858);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = type metadata accessor for IDSToolPacketLogDumpCommand();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7DD0C70(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD0D60();
  v17 = v24;
  sub_1A7E23250();
  if (!v17)
  {
    v18 = v22;
    sub_1A7DA2CD4();
    sub_1A7E22F30();
    (*(v23 + 8))(v10, v7);
    (*(v18 + 40))(v16, v6, v3);
    sub_1A7DD0E14(v16, v21);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7DD0DB4(v16, type metadata accessor for IDSToolPacketLogDumpCommand);
}

uint64_t sub_1A7DD0900(uint64_t a1)
{
  v2 = sub_1A7DD0D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD093C(uint64_t a1)
{
  v2 = sub_1A7DD0D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD0978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7DCF8B0();
}

uint64_t sub_1A7DD0A04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4880 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E21F80();
  v3 = sub_1A7B0CB00(v2, qword_1EB2DC328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A7DD0AAC()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7DD0C70(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7DD0C70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7DD0CB8()
{
  result = qword_1EB2B7848;
  if (!qword_1EB2B7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7848);
  }

  return result;
}

unint64_t sub_1A7DD0D0C()
{
  result = qword_1EB2B7850;
  if (!qword_1EB2B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7850);
  }

  return result;
}

unint64_t sub_1A7DD0D60()
{
  result = qword_1EB2B7860;
  if (!qword_1EB2B7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7860);
  }

  return result;
}

uint64_t sub_1A7DD0DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7DD0E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolPacketLogDumpCommand();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7DD0EAC()
{
  result = qword_1EB2B7868;
  if (!qword_1EB2B7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7868);
  }

  return result;
}

unint64_t sub_1A7DD0F04()
{
  result = qword_1EB2B7870;
  if (!qword_1EB2B7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7870);
  }

  return result;
}

unint64_t sub_1A7DD0F5C()
{
  result = qword_1EB2B7878;
  if (!qword_1EB2B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7878);
  }

  return result;
}

unint64_t sub_1A7DD0FB4()
{
  result = qword_1EB2B7880;
  if (!qword_1EB2B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7880);
  }

  return result;
}

unint64_t sub_1A7DD1008()
{
  result = qword_1EB2B7890;
  if (!qword_1EB2B7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7890);
  }

  return result;
}

unint64_t sub_1A7DD1070()
{
  result = qword_1EB2B78A0;
  if (!qword_1EB2B78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78A0);
  }

  return result;
}

unint64_t sub_1A7DD10C8()
{
  result = qword_1EB2B78A8;
  if (!qword_1EB2B78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78A8);
  }

  return result;
}

unint64_t sub_1A7DD1120()
{
  result = qword_1EB2B78B0;
  if (!qword_1EB2B78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78B0);
  }

  return result;
}

uint64_t sub_1A7DD1174(uint64_t a1)
{
  v2 = sub_1A7DD17E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD11B0(uint64_t a1)
{
  v2 = sub_1A7DD17E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD11EC()
{
  if (*v0)
  {
    return 0x64657261656C63;
  }

  else
  {
    return 1886221668;
  }
}

uint64_t sub_1A7DD1220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1886221668 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657261656C63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DD12FC(uint64_t a1)
{
  v2 = sub_1A7DD1790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD1338(uint64_t a1)
{
  v2 = sub_1A7DD1790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD1390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646C6F46706D74 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DD1420(uint64_t a1)
{
  v2 = sub_1A7DD1838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD145C(uint64_t a1)
{
  v2 = sub_1A7DD1838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolPacketLogResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B78B8);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v20 = &v19 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B78C0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B78C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = v1[1];
  v23 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1790();
  sub_1A7E23260();
  if (v15)
  {
    v26 = 0;
    sub_1A7DD1838();
    sub_1A7E22F80();
    v16 = v25;
    sub_1A7E22FF0();
    (*(v24 + 8))(v9, v16);
  }

  else
  {
    v27 = 1;
    sub_1A7DD17E4();
    v18 = v20;
    sub_1A7E22F80();
    (*(v21 + 8))(v18, v22);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1A7DD1790()
{
  result = qword_1EB2B78D0;
  if (!qword_1EB2B78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78D0);
  }

  return result;
}

unint64_t sub_1A7DD17E4()
{
  result = qword_1EB2B78D8;
  if (!qword_1EB2B78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78D8);
  }

  return result;
}

unint64_t sub_1A7DD1838()
{
  result = qword_1EB2B78E0;
  if (!qword_1EB2B78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78E0);
  }

  return result;
}

uint64_t IDSToolPacketLogResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B78E8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B78F0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B78F8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  v17 = a1[3];
  v38 = a1;
  sub_1A7CC9878(a1, v17);
  sub_1A7DD1790();
  v18 = v37;
  sub_1A7E23250();
  if (v18)
  {
    return sub_1A7B0CD6C(v38);
  }

  v37 = v13;
  v19 = sub_1A7E22F70();
  v20 = (2 * *(v19 + 16)) | 1;
  v39 = v19;
  v40 = v19 + 32;
  v41 = 0;
  v42 = v20;
  v21 = sub_1A7CDB538();
  v22 = v12;
  if (v21 == 2 || v41 != v42 >> 1)
  {
    v25 = sub_1A7E22BD0();
    swift_allocError();
    v27 = v26;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v27 = &type metadata for IDSToolPacketLogResponse;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v37 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v38);
  }

  if (v21)
  {
    v43 = 1;
    sub_1A7DD17E4();
    sub_1A7E22E70();
    v23 = 0;
    v24 = v37;
    (*(v34 + 8))(v7, v33);
    (*(v24 + 8))(v16, v12);
    swift_unknownObjectRelease();
    v30 = 0;
  }

  else
  {
    v43 = 0;
    sub_1A7DD1838();
    sub_1A7E22E70();
    v29 = v37;
    v23 = sub_1A7E22EF0();
    v30 = v31;
    (*(v35 + 8))(v11, v8);
    (*(v29 + 8))(v16, v22);
    swift_unknownObjectRelease();
  }

  v32 = v36;
  *v36 = v23;
  v32[1] = v30;
  return sub_1A7B0CD6C(v38);
}

uint64_t sub_1A7DD1DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DD1E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A7DD1E70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1A7DD1E88(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A7DD1EEC()
{
  result = qword_1EB2B7900;
  if (!qword_1EB2B7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7900);
  }

  return result;
}

unint64_t sub_1A7DD1F44()
{
  result = qword_1EB2B7908;
  if (!qword_1EB2B7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7908);
  }

  return result;
}

unint64_t sub_1A7DD1F9C()
{
  result = qword_1EB2B7910;
  if (!qword_1EB2B7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7910);
  }

  return result;
}

unint64_t sub_1A7DD1FF4()
{
  result = qword_1EB2B7918;
  if (!qword_1EB2B7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7918);
  }

  return result;
}

unint64_t sub_1A7DD204C()
{
  result = qword_1EB2B7920;
  if (!qword_1EB2B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7920);
  }

  return result;
}

unint64_t sub_1A7DD20A4()
{
  result = qword_1EB2B7928;
  if (!qword_1EB2B7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7928);
  }

  return result;
}

unint64_t sub_1A7DD20FC()
{
  result = qword_1EB2B7930;
  if (!qword_1EB2B7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7930);
  }

  return result;
}

unint64_t sub_1A7DD2154()
{
  result = qword_1EB2B7938;
  if (!qword_1EB2B7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7938);
  }

  return result;
}

void sub_1A7DD21BC(void *a1, char *a2)
{
  v29 = *a2;
  v28 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = *v2;
  sub_1A7CC9878(a1, a1[3]);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v11);
  if (*(v10 + 16))
  {
    if (v9)
    {
      v12 = 0x100000000000000;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0x1000000000000;
    if ((v8 & 1) == 0)
    {
      v13 = 0;
    }

    v14 = 0x10000000000;
    if ((v7 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x100000000;
    if ((v6 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if ((v5 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v4 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 256;
    if ((v28 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFFELL | v29 & 1 | v17 | v16 | v15 | v14 | v13;
    v20 = sub_1A7CF4CB8(v19 | v12);
    v21 = sub_1A7CF5100(v19 | v12, v10);
    v22 = a1[3];
    v23 = a1[4];
    sub_1A7CC9878(a1, v22);
    v30[3] = &type metadata for CLIIndented;
    v30[4] = sub_1A7CF7858();
    v24 = swift_allocObject();
    v30[0] = v24;
    *(v24 + 40) = &type metadata for CLITable;
    v25 = sub_1A7CF78AC();
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = 0;
    *(v24 + 36) = 0;
    *(v24 + 48) = v25;
    *(v24 + 56) = 538976288;
    *(v24 + 64) = 0xE400000000000000;
    CLIPrinter.print(_:)(v30, v22, v23);
    sub_1A7B0CD6C(v30);
  }

  else
  {
    sub_1A7CC9878(a1, a1[3]);
    v26._countAndFlagsBits = 0x6C206F4E20202020;
    v26._object = 0xED00002E736B6E69;
    CLIPrinter.print(_:)(v26);
  }

  sub_1A7CC9878(a1, a1[3]);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v27);
}

uint64_t LinkEngineLink.isPendingRemoval.getter()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBDDC((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  return swift_dynamicCast() & v3;
}

void sub_1A7DD246C(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 10);
  v5 = &type metadata for LinkIsPendingRemoval;
  v4[0] = v2;
  sub_1A7CC8D74(v4, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v3 + 10);
}

void LinkEngineLink.isPendingRemoval.setter(char a1)
{
  v2 = v1;
  os_unfair_lock_lock(v2 + 10);
  v5 = &type metadata for LinkIsPendingRemoval;
  v4[0] = a1;
  sub_1A7CC8D74(v4, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v2 + 10);
}

void (*LinkEngineLink.isPendingRemoval.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  *(a1 + 8) = LinkEngineLink.isPendingRemoval.getter() & 1;
  return sub_1A7DD2588;
}

void sub_1A7DD2588(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 10);
  v4 = &type metadata for LinkIsPendingRemoval;
  v3[0] = v2;
  sub_1A7CC8D74(v3, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v1 + 10);
}

uint64_t LinkDefinition.idsLinkType.getter@<X0>(char *a1@<X8>)
{
  sub_1A7CE0528(*v1, &v16);
  if (v16)
  {
    v3 = v16;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];

    if (v6)
    {
      if (v7 == 0x616C65722D736469 && v6 == 0xE900000000000079)
      {
      }

      else
      {
        v9 = sub_1A7E230D0();

        if ((v9 & 1) == 0)
        {
          if (v7 == 0x72762D736469 && v6 == 0xE600000000000000)
          {
          }

          else
          {
            v11 = sub_1A7E230D0();

            if ((v11 & 1) == 0)
            {
              if (v7 == 0x7032702D736469 && v6 == 0xE700000000000000)
              {

LABEL_31:
                v15 = 2;
                goto LABEL_27;
              }

              v13 = sub_1A7E230D0();

              if (v13)
              {
                goto LABEL_31;
              }

              goto LABEL_24;
            }
          }

          v15 = 1;
          goto LABEL_27;
        }
      }

      v15 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();

LABEL_24:
  v15 = 3;
LABEL_27:
  *a1 = v15;
  return result;
}

uint64_t IDSGLLinkType.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

unint64_t sub_1A7DD2878()
{
  result = qword_1EB2B7940;
  if (!qword_1EB2B7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7940);
  }

  return result;
}

__n128 LinkDefinition.toolRepresentation.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v13[2] = v1[1];
  LinkEndpoint.toolRepresentation.getter(v14);
  v13[1] = v4;
  LinkEndpoint.toolRepresentation.getter(v16);
  sub_1A7CE0528(v3, v13);
  v5 = v13[0];
  if (!v13[0])
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v14[5];
  *(a1 + 64) = v14[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v15;
  v7 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v7;
  v8 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v8;
  v9 = v16[1];
  *(a1 + 104) = v16[0];
  *(a1 + 120) = v9;
  v10 = v16[3];
  *(a1 + 136) = v16[2];
  result = v16[4];
  v12 = v16[5];
  *(a1 + 200) = v17;
  *(a1 + 184) = v12;
  *(a1 + 168) = result;
  *(a1 + 152) = v10;
  *(a1 + 208) = v5;
  return result;
}

uint64_t LinkState.cli.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = LinkState.description.getter();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v11 = 1;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *(a1 + 17) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 2;
        return result;
      }

      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v11 = 4;
    }

    *(a1 + 17) = v11;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v10 = 2;
        *(a1 + 40) = 2;
      }

      else
      {
        *(a1 + 40) = 2;
        v10 = 4;
      }
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v10 = 6;
    }

    *(a1 + 17) = v10;
    v12 = sub_1A7E22CF0();
    return (*(*(v12 - 8) + 8))(v6, v12);
  }

  return result;
}

uint64_t LinkState.cliSummary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      *a1 = 0x64656C696146;
      *(a1 + 8) = 0xE600000000000000;
      v10 = 256;
    }

    else
    {
      if (result == 4)
      {
        strcpy(a1, "Not Connected");
        *(a1 + 14) = -4864;
        *(a1 + 16) = 0;
LABEL_14:
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 2;
        return result;
      }

      strcpy(a1, "Disconnected");
      *(a1 + 13) = 0;
      *(a1 + 14) = -5120;
      v10 = 1024;
    }

    *(a1 + 16) = v10;
    goto LABEL_14;
  }

  if (result)
  {
    if (result == 1)
    {
      *a1 = 0x657463656E6E6F43;
      *(a1 + 8) = 0xE900000000000064;
      v9 = 512;
    }

    else
    {
      strcpy(a1, "Disconnecting");
      *(a1 + 14) = -4864;
      v9 = 1024;
    }
  }

  else
  {
    *a1 = 0x697463656E6E6F43;
    *(a1 + 8) = 0xEA0000000000676ELL;
    v9 = 1536;
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  v11 = sub_1A7E22CF0();
  return (*(*(v11 - 8) + 8))(v7, v11);
}

uint64_t IDSInterfaceType.description.getter()
{
  v1 = 0x6465726957;
  v2 = 0x72616C756C6C6543;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 1766222167;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t IDSRadioAccessTechnology.interfaceType.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == 9)
  {
    v2 = 0;
  }

  if (result == 10)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1A7DD2E14(uint64_t a1)
{
  v2 = sub_1A7DD35E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2E50(uint64_t a1)
{
  v2 = sub_1A7DD35E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD2E8C()
{
  v1 = 0x6465726977;
  v2 = 0x72616C756C6C6563;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 1768319351;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A7DD2EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DD4348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DD2F24(uint64_t a1)
{
  v2 = sub_1A7DD353C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2F60(uint64_t a1)
{
  v2 = sub_1A7DD353C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD2F9C(uint64_t a1)
{
  v2 = sub_1A7DD3590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2FD8(uint64_t a1)
{
  v2 = sub_1A7DD3590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD3014(uint64_t a1)
{
  v2 = sub_1A7DD3638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD3050(uint64_t a1)
{
  v2 = sub_1A7DD3638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD308C(uint64_t a1)
{
  v2 = sub_1A7DD368C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD30C8(uint64_t a1)
{
  v2 = sub_1A7DD368C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSInterfaceType.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7948);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v27 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7950);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v27 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7958);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v27 - v11;
  v12 = sub_1A7CC7FFC(&qword_1EB2B7960);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = sub_1A7CC7FFC(&qword_1EB2B7968);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD353C();
  sub_1A7E23260();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_1A7DD35E4();
      v23 = v32;
      sub_1A7E22F80();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_1A7DD3590();
      v23 = v35;
      sub_1A7E22F80();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_1A7DD3638();
    v23 = v29;
    sub_1A7E22F80();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_1A7DD368C();
  sub_1A7E22F80();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_1A7DD353C()
{
  result = qword_1EB2B7970;
  if (!qword_1EB2B7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7970);
  }

  return result;
}

unint64_t sub_1A7DD3590()
{
  result = qword_1EB2B7978;
  if (!qword_1EB2B7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7978);
  }

  return result;
}

unint64_t sub_1A7DD35E4()
{
  result = qword_1EB2B7980;
  if (!qword_1EB2B7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7980);
  }

  return result;
}

unint64_t sub_1A7DD3638()
{
  result = qword_1EB2B7988;
  if (!qword_1EB2B7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7988);
  }

  return result;
}

unint64_t sub_1A7DD368C()
{
  result = qword_1EB2B7990;
  if (!qword_1EB2B7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7990);
  }

  return result;
}

uint64_t IDSInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSInterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v46 = sub_1A7CC7FFC(&qword_1EB2B7998);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v49 = &v39 - v4;
  v47 = sub_1A7CC7FFC(&qword_1EB2B79A0);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v48 = &v39 - v6;
  v45 = sub_1A7CC7FFC(&qword_1EB2B79A8);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v39 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B79B0);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = sub_1A7CC7FFC(&qword_1EB2B79B8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  sub_1A7CC9878(a1, v19);
  sub_1A7DD353C();
  v20 = v51;
  sub_1A7E23250();
  if (!v20)
  {
    v21 = v13;
    v39 = v10;
    v40 = 0;
    v22 = v9;
    v23 = v48;
    v24 = v49;
    v51 = v15;
    v25 = v50;
    v26 = v18;
    v27 = sub_1A7E22F70();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_1A7CDB544();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_1A7E22BD0();
      swift_allocError();
      v33 = v32;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v33 = &type metadata for IDSInterfaceType;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
LABEL_9:
      (*(v51 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_1A7B0CD6C(v52);
    }

    v57 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        v58 = 1;
        sub_1A7DD3638();
        v37 = v40;
        sub_1A7E22E70();
        if (!v37)
        {
          (*(v41 + 8))(v22, v45);
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0;
        sub_1A7DD368C();
        v30 = v40;
        sub_1A7E22E70();
        if (!v30)
        {
          (*(v42 + 8))(v21, v39);
LABEL_17:
          (*(v51 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v25 = v57;
          return sub_1A7B0CD6C(v52);
        }
      }

      goto LABEL_9;
    }

    v35 = v51;
    if (v29 == 2)
    {
      v58 = 2;
      sub_1A7DD35E4();
      v36 = v40;
      sub_1A7E22E70();
      if (!v36)
      {
        (*(v43 + 8))(v23, v47);
LABEL_21:
        (*(v35 + 8))(v26, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v58 = 3;
      sub_1A7DD3590();
      v38 = v40;
      sub_1A7E22E70();
      if (!v38)
      {
        (*(v44 + 8))(v24, v46);
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v26, v14);
    goto LABEL_10;
  }

  return sub_1A7B0CD6C(v52);
}

unint64_t sub_1A7DD3DC4()
{
  result = qword_1EB2B79C0;
  if (!qword_1EB2B79C0)
  {
    sub_1A7CC9830(&qword_1EB2B79C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79C0);
  }

  return result;
}

unint64_t sub_1A7DD3E2C()
{
  result = qword_1EB2B2FA8;
  if (!qword_1EB2B2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2FA8);
  }

  return result;
}

uint64_t sub_1A7DD3EB0()
{
  v1 = 0x6465726957;
  v2 = 0x72616C756C6C6543;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 1766222167;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A7DD3F84()
{
  result = qword_1EB2B79D0;
  if (!qword_1EB2B79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79D0);
  }

  return result;
}

unint64_t sub_1A7DD3FDC()
{
  result = qword_1EB2B79D8;
  if (!qword_1EB2B79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79D8);
  }

  return result;
}

unint64_t sub_1A7DD4034()
{
  result = qword_1EB2B79E0;
  if (!qword_1EB2B79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79E0);
  }

  return result;
}

unint64_t sub_1A7DD408C()
{
  result = qword_1EB2B79E8;
  if (!qword_1EB2B79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79E8);
  }

  return result;
}

unint64_t sub_1A7DD40E4()
{
  result = qword_1EB2B79F0;
  if (!qword_1EB2B79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79F0);
  }

  return result;
}

unint64_t sub_1A7DD413C()
{
  result = qword_1EB2B79F8;
  if (!qword_1EB2B79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79F8);
  }

  return result;
}

unint64_t sub_1A7DD4194()
{
  result = qword_1EB2B7A00;
  if (!qword_1EB2B7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A00);
  }

  return result;
}

unint64_t sub_1A7DD41EC()
{
  result = qword_1EB2B7A08;
  if (!qword_1EB2B7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A08);
  }

  return result;
}

unint64_t sub_1A7DD4244()
{
  result = qword_1EB2B7A10;
  if (!qword_1EB2B7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A10);
  }

  return result;
}

unint64_t sub_1A7DD429C()
{
  result = qword_1EB2B7A18;
  if (!qword_1EB2B7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A18);
  }

  return result;
}

unint64_t sub_1A7DD42F4()
{
  result = qword_1EB2B7A20;
  if (!qword_1EB2B7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A20);
  }

  return result;
}

uint64_t sub_1A7DD4348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7DD44B0()
{
  v1 = 0x61746C6564;
  if (*v0 != 1)
  {
    v1 = 0x52746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F706572;
  }
}

uint64_t sub_1A7DD4510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DD5760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DD4538(uint64_t a1)
{
  v2 = sub_1A7DD4AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD4574(uint64_t a1)
{
  v2 = sub_1A7DD4AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD45B0(uint64_t a1)
{
  v2 = sub_1A7DD4B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD45EC(uint64_t a1)
{
  v2 = sub_1A7DD4B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD4628(uint64_t a1)
{
  v2 = sub_1A7DD4BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD4664(uint64_t a1)
{
  v2 = sub_1A7DD4BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD46A0(uint64_t a1)
{
  v2 = sub_1A7DD4BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD46DC(uint64_t a1)
{
  v2 = sub_1A7DD4BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolQualityMeasurerRequest.encode(to:)(void *a1)
{
  v28 = sub_1A7CC7FFC(&qword_1EB2B7A28);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v3);
  v24 = &v21 - v4;
  v27 = sub_1A7CC7FFC(&qword_1EB2B7A30);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v5);
  v23 = &v21 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7A38);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B7A40);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  v16 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD4AFC();
  sub_1A7E23260();
  if (v16 == 2)
  {
    v32 = 2;
    sub_1A7DD4B50();
    v17 = v24;
    sub_1A7E22F80();
    (*(v26 + 8))(v17, v28);
    return (*(v12 + 8))(v15, v11);
  }

  if (v16 == 1)
  {
    v30 = 0;
    sub_1A7DD4BF8();
    sub_1A7E22F80();
    (*(v21 + 8))(v10, v22);
    return (*(v12 + 8))(v15, v11);
  }

  v31 = 1;
  sub_1A7DD4BA4();
  v19 = v23;
  sub_1A7E22F80();
  v29 = v16;
  sub_1A7D563DC();
  v20 = v27;
  sub_1A7E22FD0();
  (*(v25 + 8))(v19, v20);
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_1A7DD4AFC()
{
  result = qword_1EB2B7A48;
  if (!qword_1EB2B7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A48);
  }

  return result;
}

unint64_t sub_1A7DD4B50()
{
  result = qword_1EB2B7A50;
  if (!qword_1EB2B7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A50);
  }

  return result;
}

unint64_t sub_1A7DD4BA4()
{
  result = qword_1EB2B7A58;
  if (!qword_1EB2B7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A58);
  }

  return result;
}

unint64_t sub_1A7DD4BF8()
{
  result = qword_1EB2B7A60;
  if (!qword_1EB2B7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A60);
  }

  return result;
}

uint64_t LEToolQualityMeasurerRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v43 = sub_1A7CC7FFC(&qword_1EB2B7A68);
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v47 = &v40 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7A70);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7A78);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v14 = sub_1A7CC7FFC(&qword_1EB2B7A80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40 - v17;
  v19 = a1[3];
  v51 = a1;
  sub_1A7CC9878(a1, v19);
  sub_1A7DD4AFC();
  v20 = v50;
  sub_1A7E23250();
  if (v20)
  {
    return sub_1A7B0CD6C(v51);
  }

  v41 = v10;
  v42 = 0;
  v22 = v47;
  v21 = v48;
  v50 = v15;
  v23 = v49;
  v24 = sub_1A7E22F70();
  v25 = (2 * *(v24 + 16)) | 1;
  v52 = v24;
  v53 = v24 + 32;
  v54 = 0;
  v55 = v25;
  v26 = sub_1A7CDB540();
  if (v26 == 3 || v54 != v55 >> 1)
  {
    v29 = sub_1A7E22BD0();
    swift_allocError();
    v31 = v30;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v31 = &type metadata for LEToolQualityMeasurerRequest;
    v32 = v18;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v26)
  {
    LOBYTE(v56) = 0;
    sub_1A7DD4BF8();
    v32 = v18;
    v34 = v42;
    sub_1A7E22E70();
    if (!v34)
    {
      (*(v44 + 8))(v13, v41);
      (*(v50 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v35 = 1;
      goto LABEL_17;
    }

LABEL_9:
    (*(v50 + 8))(v32, v14);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v51);
  }

  if (v26 != 1)
  {
    LOBYTE(v56) = 2;
    sub_1A7DD4B50();
    v32 = v18;
    v36 = v42;
    sub_1A7E22E70();
    v37 = v50;
    if (v36)
    {
      goto LABEL_9;
    }

    (*(v21 + 8))(v22, v43);
    (*(v37 + 8))(v18, v14);
    swift_unknownObjectRelease();
    v35 = 2;
LABEL_17:
    v38 = v23;
    goto LABEL_18;
  }

  LOBYTE(v56) = 1;
  sub_1A7DD4BA4();
  v27 = v42;
  sub_1A7E22E70();
  v28 = v50;
  if (v27)
  {
    (*(v50 + 8))(v18, v14);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v51);
  }

  v38 = v23;
  sub_1A7D165B8();
  v39 = v45;
  sub_1A7E22ED0();
  (*(v46 + 8))(v9, v39);
  (*(v28 + 8))(v18, v14);
  swift_unknownObjectRelease();
  v35 = v56;
LABEL_18:
  *v38 = v35;
  return sub_1A7B0CD6C(v51);
}

uint64_t sub_1A7DD529C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DD52C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DD5328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1A7DD5378(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_1A7DD53F4()
{
  result = qword_1EB2B7A88;
  if (!qword_1EB2B7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A88);
  }

  return result;
}

unint64_t sub_1A7DD544C()
{
  result = qword_1EB2B7A90;
  if (!qword_1EB2B7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A90);
  }

  return result;
}

unint64_t sub_1A7DD54A4()
{
  result = qword_1EB2B7A98;
  if (!qword_1EB2B7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A98);
  }

  return result;
}

unint64_t sub_1A7DD54FC()
{
  result = qword_1EB2B7AA0;
  if (!qword_1EB2B7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AA0);
  }

  return result;
}

unint64_t sub_1A7DD5554()
{
  result = qword_1EB2B7AA8;
  if (!qword_1EB2B7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AA8);
  }

  return result;
}

unint64_t sub_1A7DD55AC()
{
  result = qword_1EB2B7AB0;
  if (!qword_1EB2B7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AB0);
  }

  return result;
}

unint64_t sub_1A7DD5604()
{
  result = qword_1EB2B7AB8;
  if (!qword_1EB2B7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AB8);
  }

  return result;
}

unint64_t sub_1A7DD565C()
{
  result = qword_1EB2B7AC0;
  if (!qword_1EB2B7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AC0);
  }

  return result;
}

unint64_t sub_1A7DD56B4()
{
  result = qword_1EB2B7AC8;
  if (!qword_1EB2B7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AC8);
  }

  return result;
}

unint64_t sub_1A7DD570C()
{
  result = qword_1EB2B7AD0;
  if (!qword_1EB2B7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AD0);
  }

  return result;
}

uint64_t sub_1A7DD5760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52746361706D6F63 && a2 == 0xED000074726F7065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t IPAddress.withSockaddrStorage<A>(forPort:block:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v65 = a5;
  v68 = a3;
  v67 = a2;
  v66 = a1;
  v69 = a7;
  v80 = *MEMORY[0x1E69E9840];
  v8 = sub_1A7CC7FFC(&qword_1EB2B63F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v60 = &v59 - v10;
  v63 = sub_1A7E220D0();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v11);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A7CC7FFC(&qword_1EB2B6400);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v59 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v59 - v24;
  v26 = sub_1A7E220A0();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v17 + 16);
  v32(v25, v70, a4, v29);
  v33 = swift_dynamicCast();
  v34 = *(v27 + 56);
  if (v33)
  {
    v34(v16, 0, 1, v26);
    v35 = (*(v27 + 32))(v31, v16, v26);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    MEMORY[0x1EEE9AC00](v35, v36);
    v37 = v65;
    *(&v59 - 8) = a4;
    *(&v59 - 7) = v37;
    *(&v59 - 6) = v64;
    *(&v59 - 20) = v66;
    v38 = v67;
    *(&v59 - 4) = v31;
    *(&v59 - 3) = v38;
    v58 = v68;
    type metadata accessor for sockaddr_storage(0);
    v40 = v39;
    v41 = sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7DD5F20(&v72, sub_1A7DD6838, (&v59 - 10), v40, v41, v37, MEMORY[0x1E69E7288], &v71);
    return (*(v27 + 8))(v31, v26);
  }

  else
  {
    v42 = v64;
    v43 = v65;
    v34(v16, 1, 1, v26);
    sub_1A7CC9970(v16, &qword_1EB2B6400);
    (v32)(v21, v70, a4);
    v44 = v60;
    v45 = v63;
    v46 = swift_dynamicCast();
    v47 = v62;
    v48 = *(v62 + 56);
    if (v46)
    {
      v48(v44, 0, 1, v45);
      v49 = v61;
      v50 = (*(v47 + 32))(v61, v44, v45);
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      MEMORY[0x1EEE9AC00](v50, v51);
      *(&v59 - 8) = a4;
      *(&v59 - 7) = v43;
      *(&v59 - 6) = v42;
      v52 = v49;
      *(&v59 - 20) = v66;
      v53 = v67;
      *(&v59 - 4) = v49;
      *(&v59 - 3) = v53;
      v58 = v68;
      type metadata accessor for sockaddr_storage(0);
      v55 = v54;
      v56 = sub_1A7CC7FFC(&qword_1EB2B57A8);
      sub_1A7DD5F20(&v72, sub_1A7DD67B8, (&v59 - 10), v55, v56, v43, MEMORY[0x1E69E7288], &v71);
      return (*(v47 + 8))(v52, v45);
    }

    else
    {
      v48(v44, 1, 1, v45);
      sub_1A7CC9970(v44, &qword_1EB2B63F0);
      result = sub_1A7E22DD0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A7DD5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1A7DD5FFC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2CF0);
  sub_1A7B0CB00(v0, qword_1EB2B2CF0);
  return sub_1A7E22050();
}

void ipAddressFromSockaddrStorage(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7CC7FFC(&qword_1EB2B63F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v38 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B63F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v38 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B6400);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v38 - v14;
  v16 = *(a1 + 1);
  if (v16 == 30)
  {
    v25 = *(a1 + 16);
    v38[0] = *(a1 + 8);
    v38[1] = v25;
    v26 = sub_1A7DD6CD8(v38, 16);
    v28 = v27;
    v29 = sub_1A7E220F0();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    sub_1A7D5164C(v26, v28);
    sub_1A7E220E0();
    v30 = sub_1A7E220D0();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v7, 1, v30) == 1)
    {
      sub_1A7CC7E50(v26, v28);
      v23 = &qword_1EB2B63F0;
      v24 = v7;
      goto LABEL_7;
    }

    v36 = MEMORY[0x1E6977B30];
    *(a2 + 24) = v30;
    *(a2 + 32) = v36;
    v37 = sub_1A7CC98BC(a2);
    (*(v31 + 32))(v37, v7, v30);
    v35 = v26;
    v34 = v28;
  }

  else
  {
    if (v16 != 2)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    LODWORD(v38[0]) = *(a1 + 4);
    v17 = sub_1A7DF6EAC(v38, v38 + 4);
    v19 = v18;
    v20 = sub_1A7E220F0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_1A7D5164C(v17, v19 & 0xFFFFFFFFFFFFFFLL);
    sub_1A7E220B0();
    v21 = sub_1A7E220A0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15, 1, v21) == 1)
    {
      sub_1A7CC7E50(v17, v19 & 0xFFFFFFFFFFFFFFLL);
      v23 = &qword_1EB2B6400;
      v24 = v15;
LABEL_7:
      sub_1A7CC9970(v24, v23);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      return;
    }

    v32 = MEMORY[0x1E6977B28];
    *(a2 + 24) = v21;
    *(a2 + 32) = v32;
    v33 = sub_1A7CC98BC(a2);
    (*(v22 + 32))(v33, v15, v21);
    v34 = v19 & 0xFFFFFFFFFFFFFFLL;
    v35 = v17;
  }

  sub_1A7CC7E50(v35, v34);
}

void __swiftcall IPAddress.sockaddrStorage(forPort:)(sockaddr_storage *__return_ptr retstr, Swift::UInt16 forPort)
{
  v4 = v3;
  v5 = v2;
  v6 = forPort;
  type metadata accessor for sockaddr_storage(0);
  IPAddress.withSockaddrStorage<A>(forPort:block:)(v6, sub_1A7DD6510, 0, v5, v8, v4, v13);
  v9 = v13[5];
  *&retstr->__ss_pad2[48] = v13[4];
  *&retstr->__ss_pad2[64] = v9;
  v10 = v13[7];
  *&retstr->__ss_pad2[80] = v13[6];
  *&retstr->__ss_pad2[96] = v10;
  v11 = v13[1];
  *&retstr->ss_len = v13[0];
  *retstr->__ss_pad2 = v11;
  v12 = v13[3];
  *&retstr->__ss_pad2[16] = v13[2];
  *&retstr->__ss_pad2[32] = v12;
}

__n128 sub_1A7DD6510@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1A7DD6534(_WORD *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(_WORD *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *a1 = 528;
  a1[1] = bswap32(a2) >> 16;
  v12 = sub_1A7E22090();
  v14 = v13;
  sub_1A7DD65E0(v12, v13, (a1 + 2), (a1 + 4));
  sub_1A7CC7E50(v12, v14);
  result = a4(a1);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

void sub_1A7DD65E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B7AD8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v17[-v12];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v10, v11);
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  if ((sub_1A7DD6B40(sub_1A7DD6E30, &v17[-48], a1, a2) & 1) == 0)
  {
    return;
  }

  v14 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v14)
  {
    goto LABEL_8;
  }

  sub_1A7D5164C(v19, v20);
LABEL_8:
  sub_1A7E21A50();
  sub_1A7E21A40();
  sub_1A7DD6E50();
  sub_1A7E22A00();
  v15 = 0;
  if (v18)
  {
LABEL_12:
    *&v13[*(v8 + 36)] = v15;
    sub_1A7CC9970(v13, &qword_1EB2B7AD8);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      sub_1A7E22A00();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A7DD67B8(_WORD *a1, void *a2)
{
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  *a1 = 7708;
  a1[1] = bswap32(v6) >> 16;
  sub_1A7DD6874((a1 + 4), (a1 + 12), v7);
  result = v8(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1A7DD6874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v5 = sub_1A7E220D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2B2CE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1A7E22060();
  sub_1A7B0CB00(v10, qword_1EB2B2CF0);
  (*(v6 + 16))(v9, a3, v5);
  v11 = sub_1A7E22040();
  v12 = sub_1A7E228F0();
  if (!os_log_type_enabled(v11, v12))
  {
    (*(v6 + 8))(v9, v5);
LABEL_16:

    v23 = sub_1A7E220C0();
    v25 = v24;
    sub_1A7DD65E0(v23, v24, a1, v27);
    return sub_1A7CC7E50(v23, v25);
  }

  v13 = swift_slowAlloc();
  *v13 = 134217984;
  v14 = sub_1A7E220C0();
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      sub_1A7CC7E50(v14, v15);
      v18 = 0;
      goto LABEL_15;
    }

    v19 = *(v14 + 16);
    v26 = *(v14 + 24);
    v14 = sub_1A7CC7E50(v14, v15);
    v20 = __OFSUB__(v26, v19);
    v18 = v26 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
    sub_1A7CC7E50(v14, v15);
    v18 = v17;
LABEL_15:
    (*(v6 + 8))(v9, v5);
    *(v13 + 4) = v18;
    _os_log_impl(&dword_1A7AD9000, v11, v12, "withSockaddr: ipv6: copying %ld bytes...", v13, 0xCu);
    MEMORY[0x1AC5654B0](v13, -1, -1);
    goto LABEL_16;
  }

  v26 = HIDWORD(v14);
  v21 = v14;
  result = sub_1A7CC7E50(v14, v15);
  if (!__OFSUB__(v26, v21))
  {
    v18 = v26 - v21;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t IPAddress.withSockaddr<A>(forPort:block:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a2;
  v8[6] = a3;
  return IPAddress.withSockaddrStorage<A>(forPort:block:)(a1, sub_1A7DD6D88, v8, a4, a5, a6, a7);
}

uint64_t sub_1A7DD6B40(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1A7DD6EA8(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_1A7DD6C94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

unint64_t sub_1A7DD6CD8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1A7DF6EAC(a1, &a1[a2]);
  }

  sub_1A7E21680();
  swift_allocObject();
  sub_1A7E21620();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1A7E219A0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A7DD6D88(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = a1[5];
  v17 = a1[4];
  v18 = v5;
  v6 = a1[7];
  v19 = a1[6];
  v20 = v6;
  v7 = a1[1];
  v13 = *a1;
  v14 = v7;
  v8 = a1[3];
  v15 = a1[2];
  v16 = v8;
  v10[2] = v2;
  v11 = v3;
  v12 = v4;
  return sockaddr_storage.withSockaddr<A>(_:)(sub_1A7DD6E08, v10, v3);
}

void *sub_1A7DD6E30(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

unint64_t sub_1A7DD6E50()
{
  result = qword_1EB2B63D0;
  if (!qword_1EB2B63D0)
  {
    sub_1A7E21A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63D0);
  }

  return result;
}

uint64_t sub_1A7DD6EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1A7E21630();
  v8 = result;
  if (result)
  {
    result = sub_1A7E21660();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1A7E21650();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1A7DD6C94(v8, v14, a4) & 1;
}

uint64_t sub_1A7DD6F68(uint64_t a1)
{
  v2 = sub_1A7DD74DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD6FA4(uint64_t a1)
{
  v2 = sub_1A7DD74DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD6FE0()
{
  if (*v0)
  {
    return 0x7261656C63;
  }

  else
  {
    return 1886221668;
  }
}

uint64_t sub_1A7DD7010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1886221668 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DD70E8(uint64_t a1)
{
  v2 = sub_1A7DD7488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD7124(uint64_t a1)
{
  v2 = sub_1A7DD7488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD7160(uint64_t a1)
{
  v2 = sub_1A7DD7530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD719C(uint64_t a1)
{
  v2 = sub_1A7DD7530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolPacketLogRequest.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7AE0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7AE8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7AF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD7488();
  sub_1A7E23260();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1A7DD74DC();
    v17 = v21;
    sub_1A7E22F80();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1A7DD7530();
    sub_1A7E22F80();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1A7DD7488()
{
  result = qword_1EB2B7AF8;
  if (!qword_1EB2B7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AF8);
  }

  return result;
}

unint64_t sub_1A7DD74DC()
{
  result = qword_1EB2B7B00;
  if (!qword_1EB2B7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B00);
  }

  return result;
}

unint64_t sub_1A7DD7530()
{
  result = qword_1EB2B7B08;
  if (!qword_1EB2B7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B08);
  }

  return result;
}

uint64_t IDSToolPacketLogRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSToolPacketLogRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B7B10);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7B18);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B7B20);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD7488();
  v15 = v34;
  sub_1A7E23250();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1A7E22F70();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1A7CDB538();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1A7E22BD0();
      swift_allocError();
      v25 = v24;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v25 = &type metadata for IDSToolPacketLogRequest;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1A7DD74DC();
        sub_1A7E22E70();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1A7DD7530();
        sub_1A7E22E70();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return sub_1A7B0CD6C(v16);
}

unint64_t sub_1A7DD7AB8()
{
  result = qword_1EB2B7B28;
  if (!qword_1EB2B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B28);
  }

  return result;
}

unint64_t sub_1A7DD7B80()
{
  result = qword_1EB2B7B30;
  if (!qword_1EB2B7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B30);
  }

  return result;
}

unint64_t sub_1A7DD7BD8()
{
  result = qword_1EB2B7B38;
  if (!qword_1EB2B7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B38);
  }

  return result;
}

unint64_t sub_1A7DD7C30()
{
  result = qword_1EB2B7B40;
  if (!qword_1EB2B7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B40);
  }

  return result;
}

unint64_t sub_1A7DD7C88()
{
  result = qword_1EB2B7B48;
  if (!qword_1EB2B7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B48);
  }

  return result;
}

unint64_t sub_1A7DD7CE0()
{
  result = qword_1EB2B7B50;
  if (!qword_1EB2B7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B50);
  }

  return result;
}

unint64_t sub_1A7DD7D38()
{
  result = qword_1EB2B7B58;
  if (!qword_1EB2B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B58);
  }

  return result;
}

unint64_t sub_1A7DD7D90()
{
  result = qword_1EB2B7B60;
  if (!qword_1EB2B7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B60);
  }

  return result;
}

uint64_t LinkEngineEntity.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (*(a4 + 8))(a2, a4);
  if (*(v8 + 16) && (v9 = sub_1A7CD0DFC(a1), (v10 & 1) != 0))
  {
    sub_1A7B0CD10(*(v8 + 56) + 32 * v9, v14);

    sub_1A7B1503C(v14, v15);
    sub_1A7B1503C(v15, v14);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    v11 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a5, v11 ^ 1u, 1, a3);
  }

  else
  {

    v13 = *(*(a3 - 8) + 56);

    return v13(a5, 1, 1, a3);
  }
}

uint64_t LinkEngineEntity.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A7DD8484(a1, a2, a3, a4, a5);
  v6 = sub_1A7E229A0();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1A7DD7FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A7DD8484(a1, a2, a4, a3, a5);
  v6 = sub_1A7E229A0();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t (*sub_1A7DD804C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D9177C;
}

void (*LinkEngineEntity.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1A7E229A0();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  LinkEngineEntity.subscript.getter(a2, a3, a4, a5, v17);
  return sub_1A7DD8230;
}

void sub_1A7DD8230(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_1A7DD8484(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1A7DD8484((*a1)[8], v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*sub_1A7DD8344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D93198;
}

uint64_t (*sub_1A7DD83E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D93198;
}

uint64_t sub_1A7DD8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A7E229A0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v20[-v14];
  (*(v11 + 16))(&v20[-v14], a1, v10, v13);
  v16 = *(a4 - 8);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    (*(v11 + 8))(v15, v10);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = a4;
    v17 = sub_1A7CC98BC(&v21);
    (*(v16 + 32))(v17, v15, a4);
  }

  v18 = (*(a5 + 24))(v20, a3, a5);
  sub_1A7CC8D74(&v21, a2);
  return v18(v20, 0);
}

uint64_t IDSLinksQualityReport.links.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A7DD8734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DD877C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void LEToolQualityMeasurerResponse.print(to:style:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      sub_1A7CC9878(a1, a1[3]);
      v26 = v3;
      v27 = v4;
    }

    else
    {
      sub_1A7CC9878(a1, a1[3]);
      v26 = 0x6C75736572206F4ELL;
      v27 = 0xE900000000000074;
    }

    CLIPrinter.print(_:)(*&v26);
  }

  else
  {
    if (*(v1 + 16))
    {
      v28 = a1[3];
      v29 = a1[4];
      sub_1A7CC9878(a1, v28);
      *&v69 = 0x61746C6544;
      *(&v69 + 1) = 0xE500000000000000;
      LOWORD(v70) = 1;
      *(&v70 + 1) = 0;
      *&v71 = 0;
      BYTE8(v71) = 2;
      CLIPrinter.print(_:)(&v69, v28, v29);

      v30 = *(v4 + 64);
      v60 = v4 + 64;
      v31 = 1 << *(v4 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & v30;
      v34 = (v31 + 63) >> 6;
      v61 = v4;

      v35 = 0;
      while (v33)
      {
        v36 = v35;
        v37 = v61;
LABEL_24:
        v38 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v39 = v38 | (v36 << 6);
        v40 = *(v37 + 56);
        v41 = (*(v37 + 48) + 24 * v39);
        v43 = *v41;
        v42 = v41[1];
        v62 = v41[2];
        v44 = (v40 + 16 * v39);
        v45 = v44[1];
        *&v63 = *v44;
        sub_1A7CC9878(a1, a1[3]);

        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v46);
        sub_1A7CC9878(a1, a1[3]);
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v47);
        v48 = a1[3];
        v49 = a1[4];
        v50 = sub_1A7CC9878(a1, v48);
        MEMORY[0x1EEE9AC00](v50, v51);
        *&v58 = v43;
        *(&v58 + 1) = v42;
        v59 = v62;
        CLIPrinter.print(_:)(sub_1A7DDAE54, v57, v48, v49);

        sub_1A7CC9878(a1, a1[3]);
        v52._countAndFlagsBits = 0;
        v52._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v52);
        v53 = a1[3];
        v54 = a1[4];
        sub_1A7CC9878(a1, v53);
        v55 = sub_1A7DDA6AC();
        v56 = sub_1A7DDAB24(v63, v45);

        *(&v70 + 1) = &type metadata for CLITable;
        *&v71 = sub_1A7CF78AC();
        *&v69 = v55;
        *(&v69 + 1) = v56;
        LODWORD(v70) = 0;
        BYTE4(v70) = 0;
        CLIPrinter.print(_:)(&v69, v53, v54);
        sub_1A7B0CD6C(&v69);
      }

      v37 = v61;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v34)
        {
LABEL_28:

          return;
        }

        v33 = *(v60 + 8 * v36);
        ++v35;
        if (v33)
        {
          v35 = v36;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = v3 + 64;
      v6 = 1 << *(v3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v3 + 64);
      v9 = (v6 + 63) >> 6;
      v62 = *v1;

      v10 = 0;
      while (v8)
      {
        v11 = v10;
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(v62 + 56) + 104 * (v12 | (v11 << 6));
        v69 = *v13;
        v70 = *(v13 + 16);
        v72 = *(v13 + 48);
        v73 = *(v13 + 64);
        v74 = *(v13 + 80);
        v75 = *(v13 + 96);
        v71 = *(v13 + 32);
        v63 = v69;
        v14 = v70;
        sub_1A7CC9878(a1, a1[3]);
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v15);
        sub_1A7CC9878(a1, a1[3]);
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v16);
        v17 = a1[3];
        v18 = a1[4];
        v19 = sub_1A7CC9878(a1, v17);
        MEMORY[0x1EEE9AC00](v19, v20);
        v58 = v63;
        v59 = v14;
        CLIPrinter.print(_:)(sub_1A7DDACD4, v57, v17, v18);
        sub_1A7CC9878(a1, a1[3]);
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v21);
        v22 = a1[3];
        v23 = a1[4];
        sub_1A7CC9878(a1, v22);
        v24 = sub_1A7DDA6AC();
        v25 = sub_1A7DDA918(&v69);
        v67 = &type metadata for CLITable;
        v68 = sub_1A7CF78AC();
        v64[0] = v24;
        v64[1] = v25;
        v65 = 0;
        v66 = 0;
        CLIPrinter.print(_:)(v64, v22, v23);
        sub_1A7B0CD6C(v64);
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          goto LABEL_28;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1A7DD8DA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 20);
  v10 = v9 >> 13;
  if (v9 >> 13 <= 1)
  {
    if (v10)
    {
      sub_1A7CF6318(0x6552207374617453, 0xED00007473657571, 0, 4);
      v46 = v45;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1A7E418C0;
      *(v47 + 32) = 0;
      *(v47 + 40) = 0;
      *(v47 + 48) = 1;
      *(v47 + 56) = v46;
      *(v47 + 64) = 0;
      *(v47 + 68) = 0;
      sub_1A7DDA068();
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1A7E418C0;
      *(v50 + 32) = 0;
      *(v50 + 40) = 0;
      *(v50 + 48) = 1;
      *(v50 + 56) = v49;
      *(v50 + 64) = 0;
      *(v50 + 68) = 0;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_1A7E227A0();
      MEMORY[0x1AC561C90](0x73646E6F63657320, 0xE800000000000000);
      sub_1A7CC7FFC(&qword_1EB2B4D10);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A7E418C0;
      *(v51 + 32) = 0;
      *(v51 + 40) = 0xE000000000000000;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      *(v51 + 72) = 2;
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1A7E418C0;
      *(v52 + 32) = 0;
      *(v52 + 40) = 0;
      *(v52 + 48) = 1;
      *(v52 + 56) = v51;
      *(v52 + 64) = 0;
      *(v52 + 68) = 0;
      v63 = v47;
      v19 = &v63;
      sub_1A7DDF370(v50);
      v20 = v52;
    }

    else
    {
      v64 = *a1;
      v65 = v5;
      v66 = v7;
      v67 = v6;
      v68 = v8;
      v69 = v9 & 0x1FFF;
      sub_1A7CF6318(0x65736E65707845, 0xE700000000000000, 0, 4);
      v22 = v21;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A7E418C0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      *(v23 + 48) = 1;
      *(v23 + 56) = v22;
      *(v23 + 64) = 0;
      *(v23 + 68) = 0;
      sub_1A7DD94DC();
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A7E418C0;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 1;
      *(v26 + 56) = v25;
      *(v26 + 64) = 0;
      *(v26 + 68) = 0;
      v27 = sub_1A7DD956C(&v64);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1A7E418C0;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      *(v28 + 48) = 1;
      *(v28 + 56) = v27;
      *(v28 + 64) = 0;
      *(v28 + 68) = 0;
      v58 = v23;
      v19 = &v58;
      sub_1A7DDF370(v26);
      v20 = v28;
    }
  }

  else if (v10 == 2)
  {
    sub_1A7CF6318(0x53206C616E676953, 0xEF6874676E657274, 0, 4);
    v30 = v29;
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1A7E418C0;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    *(v31 + 48) = 1;
    *(v31 + 56) = v30;
    *(v31 + 64) = 0;
    *(v31 + 68) = 0;
    sub_1A7DD9F4C();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1A7E418C0;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0;
    *(v34 + 48) = 1;
    *(v34 + 56) = v33;
    *(v34 + 64) = 0;
    *(v34 + 68) = 0;
    sub_1A7DD9FD8();
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1A7E418C0;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + 48) = 1;
    *(v37 + 56) = v36;
    *(v37 + 64) = 0;
    *(v37 + 68) = 0;
    v61 = v31;
    v19 = &v61;
    sub_1A7DDF370(v34);
    v20 = v37;
  }

  else
  {
    v64 = *a1;
    v65 = v5;
    v66 = v7;
    v67 = v6;
    v68 = v8;
    if (v10 == 3)
    {
      sub_1A7CF6318(0x7374656B636150, 0xE700000000000000, 0, 4);
      v12 = v11;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A7E418C0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 1;
      *(v13 + 56) = v12;
      *(v13 + 64) = 0;
      *(v13 + 68) = 0;
      sub_1A7DD94DC();
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A7E418C0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      *(v16 + 48) = 1;
      *(v16 + 56) = v15;
      *(v16 + 64) = 0;
      *(v16 + 68) = 0;
      v17 = sub_1A7DD9BDC();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A7E418C0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 1;
      *(v18 + 56) = v17;
      *(v18 + 64) = 0;
      *(v18 + 68) = 0;
      v60 = v13;
      v19 = &v60;
      sub_1A7DDF370(v16);
    }

    else
    {
      sub_1A7CF6318(0x7473727542, 0xE500000000000000, 0, 4);
      v39 = v38;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1A7E418C0;
      *(v40 + 32) = 0;
      *(v40 + 40) = 0;
      *(v40 + 48) = 1;
      *(v40 + 56) = v39;
      *(v40 + 64) = 0;
      *(v40 + 68) = 0;
      sub_1A7DD9858();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1A7E418C0;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      *(v43 + 48) = 1;
      *(v43 + 56) = v42;
      *(v43 + 64) = 0;
      *(v43 + 68) = 0;
      v44 = sub_1A7DD9940();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A7E418C0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 1;
      *(v18 + 56) = v44;
      *(v18 + 64) = 0;
      *(v18 + 68) = 0;
      v59 = v40;
      v19 = &v59;
      sub_1A7DDF370(v43);
    }

    v20 = v18;
  }

  sub_1A7DDF370(v20);
  v53 = *v19;
  if (!a3)
  {
    sub_1A7CF6318(0x6C61636F4CLL, 0xE500000000000000, 0, 2);
LABEL_16:
    v56 = v55;
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1A7E418C0;
    *(v54 + 32) = 0;
    *(v54 + 40) = 0;
    *(v54 + 48) = 1;
    *(v54 + 56) = v56;
    *(v54 + 64) = 0;
    *(v54 + 68) = 0;
    goto LABEL_17;
  }

  if (a3 != 1)
  {
    v55 = sub_1A7DDA15C(a2, a3);
    goto LABEL_16;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v62 = v53;
  sub_1A7DDF370(v54);
  return v62;
}

double sub_1A7DD94DC()
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 1536;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

uint64_t sub_1A7DD956C(uint64_t a1)
{
  v2 = *(a1 + 41);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_1A7E418C0;
  v5 = 0x7274736E6F636E55;
  if (v2)
  {
    v5 = 0x69617274736E6F43;
  }

  v6 = 0xED000064656E6961;
  if (v2)
  {
    v6 = 0xEB0000000064656ELL;
  }

  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  *(v3 + 49) = v7;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 2;
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 32;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  if (*(a1 + 40))
  {
    v9 = 0x7669736E65707845;
  }

  else
  {
    v9 = 0x736E706578656E55;
  }

  if (*(a1 + 40))
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v10 = 0xEB00000000657669;
  }

  if (*(a1 + 40))
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 49) = v11;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 2;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A7E418C0;
  *(v13 + 32) = 32;
  *(v13 + 40) = 0xE100000000000000;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2;
  v23 = *(a1 + 8);
  v14 = v23;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1A7E418C0;
  *(v15 + 32) = v14;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 2;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1A7E418C0;
  *(v16 + 32) = 540945696;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 2;
  v22 = *(a1 + 24);
  v17 = v22;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1A7E418C0;
  *(v18 + 32) = v17;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 2;
  v21 = v4;
  sub_1A7DDACF4(&v23, v20);
  sub_1A7DDACF4(&v22, v20);
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v13);
  sub_1A7DDF090(v15);
  sub_1A7DDF090(v16);
  sub_1A7DDF090(v18);
  return v21;
}

double sub_1A7DD9858()
{
  MEMORY[0x1AC561C90](91, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 1536;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

uint64_t sub_1A7DD9940()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0x203A545452;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  sub_1A7E227A0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 8251;
  *(v2 + 40) = 0xE200000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  sub_1A7DDAD50();
  v3 = sub_1A7E22A90();
  v5 = v4;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1A7E418C0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = 768;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 2;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1A7E418C0;
  *(v7 + 32) = 2109216;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 2;
  v8 = sub_1A7E22A90();
  v10 = v9;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = 768;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  strcpy((v12 + 32), " packets acked");
  *(v12 + 47) = -18;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v2);
  sub_1A7DDF090(v6);
  sub_1A7DDF090(v7);
  sub_1A7DDF090(v11);
  sub_1A7DDF090(v12);
  return v0;
}

uint64_t sub_1A7DD9BDC()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A7E418C0;
  *(v21 + 32) = 0x20746E6573;
  *(v21 + 40) = 0xE500000000000000;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = 2;
  v0 = sub_1A7E23090();
  v2 = v1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v0;
  *(inited + 40) = v2;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = 0x7374656B63617020;
  *(v4 + 40) = 0xEA00000000002820;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  v5 = sub_1A7E23090();
  v7 = v6;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  *(v8 + 48) = 768;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 2;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  *(v9 + 32) = 0xD000000000000012;
  *(v9 + 40) = 0x80000001A7EB15B0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 2;
  v10 = sub_1A7E23090();
  v12 = v11;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A7E418C0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = 768;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1A7E418C0;
  *(v14 + 32) = 0x7374656B63617020;
  *(v14 + 40) = 0xEA00000000002820;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 2;
  v15 = sub_1A7E23090();
  v17 = v16;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1A7E418C0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = 768;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A7E418C0;
  *(v19 + 32) = 0x29736574796220;
  *(v19 + 40) = 0xE700000000000000;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v4);
  sub_1A7DDF090(v8);
  sub_1A7DDF090(v9);
  sub_1A7DDF090(v13);
  sub_1A7DDF090(v14);
  sub_1A7DDF090(v18);
  sub_1A7DDF090(v19);
  return v21;
}

double sub_1A7DD9F4C()
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 1536;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DD9FD8()
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 768;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DDA068()
{
  MEMORY[0x1AC561C90](91, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 1536;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

uint64_t sub_1A7DDA15C(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 1280;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;

  return v4;
}

uint64_t IDSLinksQualityReportBuilder.Report.print(to:style:)(void *a1)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v4 = v1[5];
  v28 = v1[4];
  v29 = v4;
  v30 = *(v1 + 12);
  v5 = v1[3];
  v26 = v1[2];
  v27 = v5;
  sub_1A7CC9878(a1, a1[3]);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v6);
  sub_1A7CC9878(a1, a1[3]);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_1A7CC9878(a1, v8);
  v17 = v24;
  v18 = v25;
  CLIPrinter.print(_:)(sub_1A7DDAE54, v16, v8, v9);
  sub_1A7CC9878(a1, a1[3]);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v10);
  v11 = a1[3];
  v12 = a1[4];
  sub_1A7CC9878(a1, v11);
  v13 = sub_1A7DDA6AC();
  v14 = sub_1A7DDA918(&v24);
  v22 = &type metadata for CLITable;
  v23 = sub_1A7CF78AC();
  v19[0] = v13;
  v19[1] = v14;
  v20 = 0;
  v21 = 0;
  CLIPrinter.print(_:)(v19, v11, v12);
  return sub_1A7B0CD6C(v19);
}

uint64_t sub_1A7DDA36C()
{
  sub_1A7CF6318(0x6D6572757361654DLL, 0xEB00000000746E65, 1, 4);
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B4AE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  sub_1A7CF6318(1701669204, 0xE400000000000000, 1, 6);
  v4 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 68) = 0;
  sub_1A7CF6318(1635017028, 0xE400000000000000, 1, 0);
  v7 = v6;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;
  *(v8 + 68) = 0;
  sub_1A7CF6318(0x656372756F53, 0xE600000000000000, 1, 0);
  v10 = v9;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = v10;
  *(v11 + 64) = 0;
  *(v11 + 68) = 0;
  sub_1A7DDF370(inited);
  sub_1A7DDF370(v8);
  sub_1A7DDF370(v11);
  return v2;
}

uint64_t sub_1A7DDA52C(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 769;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 10272;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  v6 = sub_1A7E23090();
  v8 = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = 256;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 2;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = 14889;
  *(v10 + 40) = 0xE200000000000000;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v9);
  sub_1A7DDF090(v10);
  return v4;
}

uint64_t sub_1A7DDA6AC()
{
  sub_1A7CC7FFC(&qword_1EB2B4AD0);
  v0 = swift_allocObject();
  v4 = vdupq_n_s64(1uLL);
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = v4;
  *(v0 + 48) = 2;
  *(v0 + 56) = 1;
  *(v0 + 64) = v4;
  *(v0 + 80) = 2304;
  *(v0 + 82) = 1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v4;
  *(inited + 48) = 2;
  *(inited + 56) = 1;
  *(inited + 64) = v4;
  *(inited + 80) = 1792;
  *(inited + 82) = 1;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = v4;
  *(v2 + 48) = 2;
  *(v2 + 56) = 1;
  *(v2 + 64) = v4;
  *(v2 + 80) = 0;
  *(v2 + 82) = 1;
  sub_1A7DDF27C(inited);
  sub_1A7DDF27C(v2);
  return v0;
}

uint64_t sub_1A7DDA7B8()
{
  sub_1A7CF6318(0x6D6572757361654DLL, 0xEB00000000746E65, 1, 4);
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B4AE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  sub_1A7CF6318(1701669204, 0xE400000000000000, 1, 6);
  v4 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 68) = 0;
  sub_1A7CF6318(1635017028, 0xE400000000000000, 1, 0);
  v7 = v6;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;
  *(v8 + 68) = 0;
  sub_1A7DDF370(inited);
  sub_1A7DDF370(v8);
  return v2;
}

uint64_t sub_1A7DDA918(uint64_t a1)
{
  v2 = sub_1A7DDA36C();
  sub_1A7CC7FFC(&qword_1EB2B4AD8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  *(v3 + 32) = v2;
  v22 = v3;
  *(v3 + 40) = 2304;
  v4 = *(a1 + 96);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v7;
      v24 = v5;
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      v11 = *(v6 + 8);
      v12 = *(v6 + 16);
      v13 = *(v6 + 24);
      v14 = *(v6 + 32);
      v25[0] = *v6;
      v10 = v25[0];
      v25[1] = v11;
      v25[2] = v12;
      v25[3] = v13;
      v25[4] = v14;
      v26 = *(v6 + 40);
      v15 = v26;

      sub_1A7D52320(v10, v11, v12, v13, v14, v15);
      v16 = sub_1A7DD8DA8(v25, v8, v9);

      sub_1A7D52368(v10, v11, v12, v13, v14, v15);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A7E418C0;
      *(v17 + 32) = v16;
      v7 = v23;
      *(v17 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A7CCD0AC(0, v23[2] + 1, 1, v23);
      }

      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1A7CCD0AC((v18 > 1), v19 + 1, 1, v7);
      }

      v6 += 64;
      v7[2] = v19 + 1;
      v7[v19 + 4] = v17;
      v5 = v24 - 1;
    }

    while (v24 != 1);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1A7CF37D0(v7);

  sub_1A7DDF188(v20);
  return v22;
}

uint64_t sub_1A7DDAB24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7DDA7B8();
  sub_1A7CC7FFC(&qword_1EB2B4AD8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 2304;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v6[1];
      v16 = *v6;
      v17[0] = v8;
      *(v17 + 10) = *(v6 + 26);
      sub_1A7DDADA4(&v16, v15);
      v9 = sub_1A7DD8DA8(&v16, 0, 1);
      sub_1A7DDAE00(&v16);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = v9;
      *(v10 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A7CCD0AC(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1A7CCD0AC((v11 > 1), v12 + 1, 1, v7);
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v10;
      v6 += 3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1A7CF37D0(v7);

  v15[0] = v4;
  sub_1A7DDF188(v13);
  return v15[0];
}

unint64_t sub_1A7DDAD50()
{
  result = qword_1EB2B7B68;
  if (!qword_1EB2B7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B68);
  }

  return result;
}

uint64_t sub_1A7DDAE58()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C78);
  sub_1A7B0CB00(v0, qword_1EB2B2C78);
  return sub_1A7E22050();
}

uint64_t _IDSRelayLinkProvider.localEndpoints.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_1A7DDAF1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 16));
  *(v3 + 24) = v2;

  os_unfair_lock_unlock((v3 + 16));
}

void _IDSRelayLinkProvider.localEndpoints.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 24) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

void (*_IDSRelayLinkProvider.localEndpoints.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7DDB020;
}

void sub_1A7DDB020(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 16));
    *(v3 + 24) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    *(v3 + 24) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t _IDSRelayLinkProvider.remoteEndpoints.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 32);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_1A7DDB0EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 16));
  *(v3 + 32) = v2;

  os_unfair_lock_unlock((v3 + 16));
}

void _IDSRelayLinkProvider.remoteEndpoints.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 32) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

void (*_IDSRelayLinkProvider.remoteEndpoints.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7DDB1F0;
}

void sub_1A7DDB1F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 16));
    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t _IDSRelayLinkProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *(result + 32) = v1;
  return result;
}

uint64_t _IDSRelayLinkProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v2;
  return result;
}

Swift::Void __swiftcall _IDSRelayLinkProvider.setLocalCandidates(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (!(a1._rawValue >> 62))
  {
    v5 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_1A7E22DA0();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC562480](v8, a1._rawValue);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1._rawValue + v8 + 4);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      LinkEndpoint.init(_:isRemote:relaySessionID:)(v9, 0, 0);
      v10 = v23;
      if (v23)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A7CCE450(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1A7CCE450((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    *&v7[8 * v12 + 32] = v10;
  }

  while (v6 != v5);
LABEL_24:
  os_unfair_lock_lock((v2 + 16));
  *(v2 + 24) = v7;

  os_unfair_lock_unlock((v2 + 16));
  if (qword_1EB2B2C70 != -1)
  {
    swift_once();
  }

  v13 = sub_1A7E22060();
  sub_1A7B0CB00(v13, qword_1EB2B2C78);

  oslog = sub_1A7E22040();
  v14 = sub_1A7E228F0();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    os_unfair_lock_lock((v2 + 16));
    v17 = *(v2 + 24);

    os_unfair_lock_unlock((v2 + 16));
    v18 = MEMORY[0x1AC561E20](v17, &type metadata for LinkEndpoint);
    v20 = v19;

    v21 = sub_1A7B0CB38(v18, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1A7AD9000, oslog, v14, "_IDSRelayLinkProvider: Local endpoints: %s", v15, 0xCu);
    sub_1A7B0CD6C(v16);
    MEMORY[0x1AC5654B0](v16, -1, -1);
    MEMORY[0x1AC5654B0](v15, -1, -1);
  }
}

Swift::Void __swiftcall _IDSRelayLinkProvider.setRemoteCandidates(_:withRelaySessionID:)(Swift::OpaquePointer _, Swift::String_optional withRelaySessionID)
{
  object = withRelaySessionID.value._object;
  countAndFlagsBits = withRelaySessionID.value._countAndFlagsBits;
  v6 = _._rawValue & 0xFFFFFFFFFFFFFF8;
  if (!(_._rawValue >> 62))
  {
    v7 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_1A7E22DA0();
  v27 = v2;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((_._rawValue & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC562480](v9, _._rawValue);
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(_._rawValue + v9 + 4);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12.value._countAndFlagsBits = countAndFlagsBits;
      v12.value._object = object;
      LinkEndpoint.init(_:isRemote:relaySessionID:)(v11, 1, v12);
      v13 = v29;
      if (v29)
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A7CCE450(0, *(v2 + 2) + 1, 1, v2);
    }

    v15 = *(v2 + 2);
    v14 = *(v2 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v17 = sub_1A7CCE450((v14 > 1), v15 + 1, 1, v2);
      v16 = v15 + 1;
      v2 = v17;
    }

    *(v2 + 2) = v16;
    *&v2[8 * v15 + 32] = v13;
  }

  while (v8 != v7);
LABEL_23:
  os_unfair_lock_lock(v27 + 4);
  *(v27 + 4) = v2;

  os_unfair_lock_unlock(v27 + 4);
  if (qword_1EB2B2C70 != -1)
  {
    swift_once();
  }

  v18 = sub_1A7E22060();
  sub_1A7B0CB00(v18, qword_1EB2B2C78);

  oslog = sub_1A7E22040();
  v19 = sub_1A7E228F0();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    os_unfair_lock_lock(v27 + 4);
    v22 = *(v27 + 4);

    os_unfair_lock_unlock(v27 + 4);
    v23 = MEMORY[0x1AC561E20](v22, &type metadata for LinkEndpoint);
    v25 = v24;

    v26 = sub_1A7B0CB38(v23, v25, &v29);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1A7AD9000, oslog, v19, "_IDSRelayLinkProvider: Remote endpoints: %s", v20, 0xCu);
    sub_1A7B0CD6C(v21);
    MEMORY[0x1AC5654B0](v21, -1, -1);
    MEMORY[0x1AC5654B0](v20, -1, -1);
  }
}

uint64_t _IDSRelayLinkProvider.__deallocating_deinit()
{
  sub_1A7DDBB78(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_1A7DDB93C()
{
  *(v0 + OBJC_IVAR___IDSRelayLinkProvider_provider) = 0;
  v5.super_class = IDSRelayLinkProvider;
  v1 = objc_msgSendSuper2(&v5, sel_init);
  type metadata accessor for _IDSRelayLinkProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v3;
  *&v1[OBJC_IVAR___IDSRelayLinkProvider_provider] = v2;

  return v1;
}

uint64_t sub_1A7DDBC1C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1AC5654B0);
  }

  return result;
}

uint64_t sub_1A7DDBC30(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    JUMPOUT(0x1AC5654B0);
  }

  return result;
}

__n128 sub_1A7DDBC48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1A7DDBC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A7DDBCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t LinkEndpoint.family.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1A7E220D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1A7E220A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *v1;
  sub_1A7CE0318(*v1, &v19);
  if (v21)
  {
    sub_1A7CC99E0(&v19, v18);
    sub_1A7CC7FFC(&qword_1EB2B5048);
    if (swift_dynamicCast())
    {
      (*(v9 + 8))(v12, v8);
      sub_1A7B0CD6C(v18);
      result = sub_1A7CE23DC(&v19);
      *a1 = 0;
      return result;
    }

    if (swift_dynamicCast())
    {
      (*(v4 + 8))(v7, v3);
      sub_1A7B0CD6C(v18);
      result = sub_1A7CE23DC(&v19);
      v16 = 1;
    }

    else
    {
      sub_1A7B0CD6C(v18);
      result = sub_1A7CE23DC(&v19);
      v16 = 2;
    }
  }

  else
  {
    sub_1A7CC9970(&v19, &qword_1EB2B5030);
    sub_1A7CE03B8(v13, &v19);
    result = v20;
    if (v20)
    {
      v15 = v19;

      *a1 = v15;
      return result;
    }

    v16 = 3;
  }

  *a1 = v16;
  return result;
}

uint64_t LinkEndpoint.port.setter(__int16 a1)
{
  sub_1A7CE0318(*v1, &v20);
  if (v21)
  {
    v22 = a1;
    sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030);
    if (*(&v17 + 1))
    {
      v3 = swift_allocObject();
      v4 = v17;
      v3[1] = v16;
      v3[2] = v4;
      v5 = v19;
      v3[3] = v18;
      v3[4] = v5;
      v6 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v16, &qword_1EB2B5030);
      v3 = 0;
      v6 = 0;
      *(&v16 + 1) = 0;
      *&v17 = 0;
    }

    *&v16 = v3;
    *(&v17 + 1) = v6;
    sub_1A7CC8D74(&v16, &type metadata for LinkEndpointIP);
  }

  else
  {
    sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030);
    sub_1A7CD1F00(&v16, &v12, &qword_1EB2B5030);
    if (*(&v13 + 1))
    {
      v7 = swift_allocObject();
      v8 = v13;
      v7[1] = v12;
      v7[2] = v8;
      v9 = v15;
      v7[3] = v14;
      v7[4] = v9;
      v10 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v12, &qword_1EB2B5030);
      v7 = 0;
      v10 = 0;
      *(&v12 + 1) = 0;
      *&v13 = 0;
    }

    *&v12 = v7;
    *(&v13 + 1) = v10;
    sub_1A7CC8D74(&v12, &type metadata for LinkEndpointIP);
    sub_1A7CC9970(&v16, &qword_1EB2B5030);
  }

  return sub_1A7CC9970(&v20, &qword_1EB2B5030);
}

uint64_t LinkEndpointIP.init(ip:port:)@<X0>(__int128 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1346976304;
  *(a3 + 56) = 0xE400000000000000;
  result = sub_1A7B14FF0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

double LinkEndpoint.ip.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v5 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v8);
    sub_1A7B1503C(v8, &v7);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1A7CC99E0(&v9, a1);
        sub_1A7CE23DC(&v9);
        return result;
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1A7CC9970(&v9, &qword_1EB2B5030);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t LinkEndpoint.port.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v3 & 1) != 0))
  {
    sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7);
    sub_1A7B1503C(v7, &v6);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        v4 = WORD4(v10);
        sub_1A7CE23DC(&v8);
        return v4;
      }
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1A7CC9970(&v8, &qword_1EB2B5030);
  return 0;
}

uint64_t LinkEndpointIP.ip.setter(__int128 *a1)
{
  sub_1A7B0CD6C(v1);

  return sub_1A7B14FF0(a1, v1);
}

uint64_t LinkEndpointIP.Family.description.getter()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 913723465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 880169033;
  }
}

IDSFoundation::LinkEndpointIP::Family_optional __swiftcall LinkEndpointIP.Family.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x1030003030302uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A7DDC480()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](qword_1A7E53D28[v1]);
  return sub_1A7E23240();
}

uint64_t sub_1A7DDC508()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](qword_1A7E53D28[v1]);
  return sub_1A7E23240();
}

uint64_t sub_1A7DDC624()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 913723465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 880169033;
  }
}

uint64_t LinkEndpointIP.family.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A7E220D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1A7E220A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A7CC99E0(v2, v16);
  sub_1A7CC7FFC(&qword_1EB2B5048);
  if (swift_dynamicCast())
  {
    *a1 = 0;
    (*(v10 + 8))(v13, v9);
  }

  else if (swift_dynamicCast())
  {
    *a1 = 1;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    *a1 = 2;
  }

  return sub_1A7B0CD6C(v16);
}

uint64_t LinkEndpointIP.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkEndpointIP.uniqueID.getter()
{
  v1 = sub_1A7E220A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC99E0(v0, v14);
  sub_1A7CC7FFC(&qword_1EB2B5048);
  v6 = swift_dynamicCast();
  v12 = 0;
  v13 = 0xE000000000000000;
  if (v6)
  {
    MEMORY[0x1AC561C90](4018249, 0xE300000000000000);
    sub_1A7CC9878(v0, *(v0 + 24));
    sub_1A7E230B0();
    MEMORY[0x1AC561C90](58, 0xE100000000000000);
    HIWORD(v11) = *(v0 + 40);
    v7 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v7);

    v8 = v12;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    MEMORY[0x1AC561C90](1530744905, 0xE400000000000000);
    sub_1A7CC9878(v0, *(v0 + 24));
    sub_1A7E230B0();
    MEMORY[0x1AC561C90](14941, 0xE200000000000000);
    HIWORD(v11) = *(v0 + 40);
    v9 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v9);

    v8 = v12;
  }

  sub_1A7B0CD6C(v14);
  return v8;
}

uint64_t sub_1A7DDCA88()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkEndpointIPFamily.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LinkEndpointIPFamily.uniqueID.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v2 = 913723465;
    v1 = 0xE400000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 880169033;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x796C696D61465049;
}

IDSFoundation::LinkEndpointIPFamily __swiftcall LinkEndpointIPFamily.init(family:)(IDSFoundation::LinkEndpointIPFamily family)
{
  v2 = **&family.family;
  *(v1 + 8) = 0x696D614650493A30;
  *(v1 + 16) = 0xEA0000000000796CLL;
  *v1 = v2;
  return family;
}

uint64_t sub_1A7DDCBEC()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v2 = 913723465;
    v1 = 0xE400000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 880169033;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x796C696D61465049;
}

double sub_1A7DDCC8C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A7CE0318(*a1, &v4);
  if (v5)
  {
    sub_1A7CC99E0(&v4, a2);
    sub_1A7CE23DC(&v4);
  }

  else
  {
    sub_1A7CC9970(&v4, &qword_1EB2B5030);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t LinkEndpoint.ip.setter(uint64_t a1)
{
  sub_1A7CD1F00(a1, &v24, &qword_1EB2B6E08);
  if (*(&v25 + 1))
  {
    sub_1A7B14FF0(&v24, v28);
    sub_1A7CE0318(*v1, &v24);
    if (*(&v25 + 1))
    {
      sub_1A7DB9778(&v24, v28);
      sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030);
      if (*(&v21 + 1))
      {
        v3 = swift_allocObject();
        v4 = v21;
        v3[1] = v20;
        v3[2] = v4;
        v5 = v23;
        v3[3] = v22;
        v3[4] = v5;
        v6 = &type metadata for LinkEndpointIP;
      }

      else
      {
        sub_1A7CC9970(&v20, &qword_1EB2B5030);
        v3 = 0;
        v6 = 0;
        *(&v20 + 1) = 0;
        *&v21 = 0;
      }

      *&v20 = v3;
      *(&v21 + 1) = v6;
      sub_1A7CC8D74(&v20, &type metadata for LinkEndpointIP);
      sub_1A7CC9970(a1, &qword_1EB2B6E08);
      sub_1A7B0CD6C(v28);
    }

    else
    {
      sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030);
      sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030);
      if (*(&v17 + 1))
      {
        v11 = swift_allocObject();
        v12 = v17;
        v11[1] = v16;
        v11[2] = v12;
        v13 = v19;
        v11[3] = v18;
        v11[4] = v13;
        v14 = &type metadata for LinkEndpointIP;
      }

      else
      {
        sub_1A7CC9970(&v16, &qword_1EB2B5030);
        v11 = 0;
        v14 = 0;
        *(&v16 + 1) = 0;
        *&v17 = 0;
      }

      *&v16 = v11;
      *(&v17 + 1) = v14;
      sub_1A7CC8D74(&v16, &type metadata for LinkEndpointIP);
      sub_1A7CC9970(a1, &qword_1EB2B6E08);
      sub_1A7CC9970(&v20, &qword_1EB2B5030);
      sub_1A7B0CD6C(v28);
    }
  }

  else
  {
    sub_1A7CC9970(&v24, &qword_1EB2B6E08);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030);
    if (*(&v21 + 1))
    {
      v7 = swift_allocObject();
      v8 = v21;
      v7[1] = v20;
      v7[2] = v8;
      v9 = v23;
      v7[3] = v22;
      v7[4] = v9;
      v10 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v20, &qword_1EB2B5030);
      v7 = 0;
      v10 = 0;
      *(&v20 + 1) = 0;
      *&v21 = 0;
    }

    *&v20 = v7;
    *(&v21 + 1) = v10;
    sub_1A7CC8D74(&v20, &type metadata for LinkEndpointIP);
    sub_1A7CC9970(a1, &qword_1EB2B6E08);
  }

  return sub_1A7CC9970(&v24, &qword_1EB2B5030);
}

void (*LinkEndpoint.ip.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  sub_1A7CE0318(*v1, v3);
  if (*(v4 + 24))
  {
    sub_1A7CC99E0(v4, v4 + 64);
    sub_1A7CE23DC(v4);
  }

  else
  {
    sub_1A7CC9970(v4, &qword_1EB2B5030);
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0;
  }

  return sub_1A7DDD0DC;
}

void sub_1A7DDD0DC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A7CD1F00(v2 + 64, v2, &qword_1EB2B6E08);
    LinkEndpoint.ip.setter(v2);
    sub_1A7CC9970(v2 + 64, &qword_1EB2B6E08);
  }

  else
  {
    LinkEndpoint.ip.setter(v2 + 64);
  }

  free(v2);
}

uint64_t sub_1A7DDD168@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  sub_1A7CE0318(*a1, &v5);
  if (v6)
  {
    v3 = v7;
    result = sub_1A7CE23DC(&v5);
  }

  else
  {
    result = sub_1A7CC9970(&v5, &qword_1EB2B5030);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void (*LinkEndpoint.port.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  sub_1A7CE0318(*v1, v3);
  if (*(v4 + 24))
  {
    v5 = *(v4 + 40);
    sub_1A7CE23DC(v4);
  }

  else
  {
    sub_1A7CC9970(v4, &qword_1EB2B5030);
    v5 = 0;
  }

  *(v4 + 72) = v5;
  return sub_1A7DDD288;
}

void sub_1A7DDD288(uint64_t a1)
{
  v1 = *a1;
  LinkEndpoint.port.setter(*(*a1 + 72));

  free(v1);
}

unint64_t sub_1A7DDD2CC()
{
  result = qword_1EB2B7B88;
  if (!qword_1EB2B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B88);
  }

  return result;
}

unint64_t sub_1A7DDD350()
{
  result = qword_1EB2B7B90;
  if (!qword_1EB2B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B90);
  }

  return result;
}

uint64_t sockaddr_storage.withSockaddr<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  v16 = a3;
  v17 = a1;
  v18 = a2;
  type metadata accessor for sockaddr_storage(0);
  v10 = v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B57A8);
  return sub_1A7DD5F20(v14, sub_1A7DDD654, v15, v10, v11, a3, MEMORY[0x1E69E7288], &v13);
}

uint64_t sub_1A7DDD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x1EEE9AC00](a5, a2);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_1A7DDD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for sockaddr(0);
  v12 = v11;
  v18 = a4;
  v19 = a2;
  v20 = a3;
  type metadata accessor for sockaddr_storage(0);
  v14 = v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B57A8);
  result = sub_1A7DDD498(v12, 1, sub_1A7DDD678, v17, a1, v14, v12, v15, a4, MEMORY[0x1E69E7288], &v21);
  if (v5)
  {
    *a5 = v21;
  }

  return result;
}

uint64_t sub_1A7DDD678(uint64_t a1, void *a2)
{
  result = (*(v2 + 24))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1A7DDD6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = a4;
  *(v4 + 152) = a1;
  v6 = sub_1A7E22CF0();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = sub_1A7E22D10();
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();
  sub_1A7E222E0();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = sub_1A7E215C0();
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 248) = v8;
  *(v4 + 256) = v9;
  *(v4 + 44) = *(a3 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1A7DDD848, 0, 0);
}

uint64_t sub_1A7DDD848()
{
  v1 = *(v0 + 256);
  if (v1 != 3)
  {
    v3 = *(v0 + 44);
    goto LABEL_13;
  }

  sub_1A7CC7FFC(&qword_1EB2B5A88);
  sub_1A7E21FC0();
  v1 = *(v0 + 42);
  if (!*(v0 + 42))
  {
    if (qword_1EB2B4720 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB2B53E8;
    goto LABEL_11;
  }

  if (v1 == 1)
  {
    if (qword_1EB2B4728 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB2B53F1;
LABEL_11:
    v1 = *v2;
    v3 = *(v2 + 8);
    goto LABEL_13;
  }

  v3 = 0;
LABEL_13:
  *(v0 + 45) = v3;
  *(v0 + 264) = v1;
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_1A7DDD9B4;
  v5 = *(v0 + 152);

  return idsToolInvoke(request:)(v0 + 16, v5);
}

uint64_t sub_1A7DDD9B4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1A7DDE21C;
  }

  else
  {
    v2 = sub_1A7DDDAC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DDDAC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 264) == 2)
  {
    v29 = *(v0 + 280);
    v4 = *(v0 + 168);
    sub_1A7E21600();
    swift_allocObject();
    sub_1A7E215F0();
    *(v0 + 144) = MEMORY[0x1E69E7CC0];
    sub_1A7DDEB78(&qword_1EB2B7BB8, MEMORY[0x1E6967F78]);
    sub_1A7CC7FFC(&qword_1EB2B7BC0);
    sub_1A7DDEBC0();
    sub_1A7E22AC0();
    sub_1A7E215D0();
    sub_1A7CC9878(v4, v4[3]);
    *(v0 + 96) = v2;
    *(v0 + 104) = v1;
    *(v0 + 112) = v3;
    sub_1A7D3B7F4();
    v5 = sub_1A7E215E0();
    if (v29)
    {

      sub_1A7D3B848();

      v7 = *(v0 + 8);
LABEL_16:

      return v7();
    }

    v10 = v5;
    v11 = v6;
    sub_1A7D3B848();
    sub_1A7E222D0();
    v12 = sub_1A7E222B0();
    v14 = v13;
    sub_1A7CC7E50(v10, v11);
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v14)
    {
      v14 = 0xE000000000000000;
    }

    v16 = v14;
    CLIPrinter.print(_:)(*&v15);
  }

  else
  {
    *(v0 + 33) = *(v0 + 264);
    v8 = *(v0 + 45);
    v9 = *(v0 + 168);
    *(v0 + 48) = v2;
    *(v0 + 56) = v1;
    *(v0 + 64) = v3;
    *(v0 + 41) = v8;
    IDSToolResponse.print(to:style:)(v9, v0 + 33);
    sub_1A7D3B848();
  }

  type metadata accessor for IDSToolOptions();
  sub_1A7CC7FFC(&qword_1EB2B5A48);
  sub_1A7E21FC0();
  if ((*(v0 + 43) & 1) == 0)
  {

    v7 = *(v0 + 8);
    goto LABEL_16;
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  sub_1A7CC7FFC(&qword_1EB2B66F0);
  sub_1A7E22010();
  v20 = sub_1A7E23290();
  v22 = v21;
  sub_1A7E23170();
  *(v0 + 120) = v20;
  *(v0 + 128) = v22;
  *(v0 + 80) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 1;
  v23 = sub_1A7DDEB78(&qword_1EB2B2880, MEMORY[0x1E69E8820]);
  sub_1A7E23150();
  sub_1A7DDEB78(&qword_1EB2B2888, MEMORY[0x1E69E87E8]);
  sub_1A7E22D20();
  v24 = *(v18 + 8);
  *(v0 + 288) = v24;
  *(v0 + 296) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v17, v19);
  v25 = swift_task_alloc();
  *(v0 + 304) = v25;
  *v25 = v0;
  v25[1] = sub_1A7DDDFAC;
  v27 = *(v0 + 200);
  v26 = *(v0 + 208);

  return MEMORY[0x1EEE6DE58](v27, v0 + 72, v26, v23);
}

uint64_t sub_1A7DDDFAC()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {
    (*(v2 + 288))(*(v2 + 200), *(v2 + 176));

    return MEMORY[0x1EEE6DFA0](sub_1A7DDE168, 0, 0);
  }

  else
  {
    v4 = *(v2 + 216);
    v3 = *(v2 + 224);
    v5 = *(v2 + 208);
    (*(v2 + 288))(*(v2 + 200), *(v2 + 176));
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    *(v2 + 272) = v6;
    *v6 = v2;
    v6[1] = sub_1A7DDD9B4;
    v7 = *(v2 + 152);

    return idsToolInvoke(request:)(v2 + 16, v7);
  }
}

uint64_t sub_1A7DDE168()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DDE21C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t idsToolInvoke(request:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DDE384, 0, 0);
}

uint64_t sub_1A7DDE384()
{
  sub_1A7E21750();
  swift_allocObject();
  sub_1A7E21740();
  type metadata accessor for IDSToolRequest(0);
  sub_1A7DDEB78(&qword_1EB2B7B98, type metadata accessor for IDSToolRequest);
  v1 = sub_1A7E21730();
  v3 = v2;
  v0[28] = 0;
  v0[29] = v1;
  v0[30] = v2;

  v6 = [objc_opt_self() shared];
  v7 = [v6 delegate];
  v0[31] = v7;

  if (v7)
  {
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[25];
    v11 = sub_1A7E219F0();
    v0[32] = v11;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1A7DDE6B0;
    swift_continuation_init();
    v0[17] = v10;
    v12 = sub_1A7CC98BC(v0 + 14);
    sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E22600();
    (*(v9 + 32))(v12, v8, v10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A7DDE990;
    v0[13] = &unk_1F1AB8D60;
    [v7 sendToolMessage:v11 completionHandler:?];
    (*(v9 + 8))(v12, v10);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1A7DDEABC();
    swift_allocError();
    swift_willThrow();
    sub_1A7CC7E50(v1, v3);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A7DDE6B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1A7DDE8F4;
  }

  else
  {
    v2 = sub_1A7DDE7C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DDE7C0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  swift_unknownObjectRelease();

  sub_1A7E21720();
  swift_allocObject();
  sub_1A7E21710();
  sub_1A7DDEA68();
  sub_1A7E21700();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  if (v2)
  {
    sub_1A7CC7E50(v5, v6);
    sub_1A7CC7E50(v3, v4);
  }

  else
  {
    v8 = *(v0 + 184);
    sub_1A7CC7E50(v5, v6);
    sub_1A7CC7E50(v3, v4);

    v9 = *(v0 + 160);
    *v8 = *(v0 + 144);
    *(v8 + 16) = v9;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A7DDE8F4()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[29];
  swift_willThrow();
  sub_1A7CC7E50(v3, v2);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

void sub_1A7DDE990(uint64_t a1, void *a2, void *a3)
{
  sub_1A7CC9878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1A7CC7FFC(&qword_1EB2B61D0);
    sub_1A7E22610();
  }

  else
  {
    v6 = a2;
    sub_1A7E21A10();

    sub_1A7CC7FFC(&qword_1EB2B61D0);
    sub_1A7E22620();
  }
}

unint64_t sub_1A7DDEA68()
{
  result = qword_1EB2B7BA0;
  if (!qword_1EB2B7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BA0);
  }

  return result;
}

unint64_t sub_1A7DDEABC()
{
  result = qword_1EB2B7BA8;
  if (!qword_1EB2B7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BA8);
  }

  return result;
}

unint64_t sub_1A7DDEB24()
{
  result = qword_1EB2B7BB0;
  if (!qword_1EB2B7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BB0);
  }

  return result;
}

uint64_t sub_1A7DDEB78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7DDEBC0()
{
  result = qword_1EB2B7BC8;
  if (!qword_1EB2B7BC8)
  {
    sub_1A7CC9830(&qword_1EB2B7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BC8);
  }

  return result;
}

uint64_t sub_1A7DDEC24(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1A7CCE918(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A7CCE918((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LinkEngineStateLog.log(_:indentation:)(IDSFoundation::LinkEngineStateLog _, Swift::String indentation)
{
  v2 = *_.loggedState._rawValue;
  v3 = *(*_.loggedState._rawValue + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    object = indentation._object;
    countAndFlagsBits = indentation._countAndFlagsBits;
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v3, 0);
    v4 = v13;
    v7 = (v2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x1AC561C90](v8, v9);

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A7CCE918((v10 > 1), v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = countAndFlagsBits;
      *(v12 + 40) = object;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  sub_1A7DDEE7C(v4);
}

uint64_t sub_1A7DDEE7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCCAA4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDEF70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCCCE0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF090(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC2B0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF188(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC75C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF27C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A7CCC644(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 56 * v7 + 32), (v6 + 32), 56 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF370(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC868(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}