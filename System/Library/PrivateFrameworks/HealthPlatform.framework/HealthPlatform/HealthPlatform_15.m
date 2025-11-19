uint64_t CloudSyncStatusInputSignal.Anchor.activeSyncState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);

  return sub_22853D724(a1, v3);
}

uint64_t CloudSyncStatusInputSignal.Anchor.hasDifference(from:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v314 = a1;
  v307 = sub_22855C16C();
  v309 = *(v307 - 8);
  v3 = *(v309 + 64);
  MEMORY[0x28223BE20](v307);
  v286 = &v264 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9578];
  sub_2283F11A8(0, &qword_280DECD80, &qword_280DEE380, MEMORY[0x277CC9578]);
  v300 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v272 = &v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v281 = &v264 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v293 = &v264 - v13;
  MEMORY[0x28223BE20](v12);
  v297 = &v264 - v14;
  sub_2283F1134(0, &qword_280DEE380, v5);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v267 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v266 = &v264 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v274 = &v264 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v269 = &v264 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v276 = &v264 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v273 = &v264 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v270 = &v264 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v284 = &v264 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v275 = &v264 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v287 = &v264 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v282 = &v264 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v277 = &v264 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v292 = &v264 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v283 = &v264 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v294 = &v264 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v285 = &v264 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v280 = &v264 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v296 = &v264 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v288 = &v264 - v54;
  MEMORY[0x28223BE20](v53);
  v291 = &v264 - v55;
  active = type metadata accessor for ActiveSyncState(0);
  v57 = *(active - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](active);
  v305 = &v264 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F11A8(0, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v311 = v60;
  v61 = *(*(v60 - 1) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v264 - v62;
  sub_2283F1134(0, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v279 = (&v264 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = MEMORY[0x28223BE20](v66);
  v268 = (&v264 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v271 = (&v264 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v278 = (&v264 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v298 = (&v264 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v290 = (&v264 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v302 = (&v264 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v301 = (&v264 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v304 = (&v264 - v83);
  MEMORY[0x28223BE20](v82);
  v85 = &v264 - v84;
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v87 = *(*(v86 - 8) + 64);
  v88 = MEMORY[0x28223BE20](v86 - 8);
  v312 = (&v264 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = MEMORY[0x28223BE20](v88);
  v92 = &v264 - v91;
  MEMORY[0x28223BE20](v90);
  v94 = &v264 - v93;
  v306 = *a2;
  v299 = a2[1];
  v295 = a2[2];
  v289 = a2[3];
  v303 = a2[4];
  v95 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  sub_2283F120C(v313 + *(v95 + 20), v94, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(v314, v85, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v96 = *(v95 - 8);
  v97 = *(v96 + 48);
  v310 = v96 + 48;
  v98 = v97(v85, 1, v95);
  v308 = v95;
  if (v98 == 1)
  {
    sub_2283F0474(v85, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    (*(v57 + 56))(v92, 1, 1, active);
  }

  else
  {
    sub_2283F120C(&v85[*(v95 + 20)], v92, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_22853D6C4(v85, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  v99 = v311[12];
  sub_2283F120C(v94, v63, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(v92, &v63[v99], qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v100 = *(v57 + 48);
  v101 = v100(v63, 1, active);
  v102 = v312;
  if (v101 == 1)
  {
    sub_2283F0474(v92, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_2283F0474(v94, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v100(&v63[v99], 1, active) == 1)
    {
      sub_2283F0474(v63, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
      goto LABEL_13;
    }

LABEL_9:
    v103 = &qword_280DEBFA0;
    v104 = qword_280DEBFA8;
    v105 = type metadata accessor for ActiveSyncState;
    v106 = v63;
    goto LABEL_10;
  }

  sub_2283F120C(v63, v312, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if (v100(&v63[v99], 1, active) == 1)
  {
    sub_2283F0474(v92, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_2283F0474(v94, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_22853D6C4(v102, type metadata accessor for ActiveSyncState);
    goto LABEL_9;
  }

  v108 = v305;
  sub_22853FAF0(&v63[v99], v305, type metadata accessor for ActiveSyncState);
  v109 = _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(v102, v108);
  sub_22853D6C4(v108, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v92, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v94, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_22853D6C4(v102, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v63, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if ((v109 & 1) == 0)
  {
    return 1;
  }

LABEL_13:
  v110 = *v313;
  if (!*v313)
  {
    v114 = v307;
    v112 = v308;
    v115 = v309;
    if ((v306 & 1) == 0)
    {
      v123 = v302;
      if ((v303 & 1) == 0)
      {
        v128 = v298;
        if ((v299 & 1) == 0)
        {
          if ((v295 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_85;
        }

        goto LABEL_63;
      }

      v124 = 2;
      goto LABEL_49;
    }

    v116 = 2;
LABEL_25:
    v121 = v301;
    sub_2283F120C(v314, v301, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    if (v97(v121, 1, v112) == 1)
    {
      sub_2283F0474(v121, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
      v122 = 2;
      if (v116 != 2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v125 = v97;
      v126 = *v121;
      v127 = *v121;
      sub_22853D6C4(v121, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
      if (v126)
      {
        v122 = [v127 syncEnabled];
      }

      else
      {
        v122 = 2;
      }

      v97 = v125;
      if (v116 != 2)
      {
LABEL_27:
        if (v122 == 2 || ((v116 ^ v122) & 1) != 0)
        {
          return 1;
        }

LABEL_45:
        if ((v303 & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v110)
        {
          v123 = v302;
LABEL_48:
          v124 = [v110 accountSupportsSecureContainer];
          goto LABEL_49;
        }

        v124 = 2;
        v123 = v302;
LABEL_49:
        sub_2283F120C(v314, v123, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        if (v97(v123, 1, v112) == 1)
        {
          sub_2283F0474(v123, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          v129 = 2;
          if (v124 != 2)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v130 = v97;
          v131 = *v123;
          v132 = *v123;
          sub_22853D6C4(v123, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          if (v131)
          {
            v129 = [v132 accountSupportsSecureContainer];
          }

          else
          {
            v129 = 2;
          }

          v97 = v130;
          if (v124 != 2)
          {
LABEL_51:
            if (v129 == 2 || ((v124 ^ v129) & 1) != 0)
            {
              return 1;
            }

            goto LABEL_59;
          }
        }

        if (v129 != 2)
        {
          return 1;
        }

LABEL_59:
        if ((v299 & 1) == 0)
        {
          goto LABEL_81;
        }

        if (v110)
        {
          goto LABEL_61;
        }

LABEL_63:
        v265 = v97;
        v313 = v110;
        v138 = *(v115 + 56);
        v137 = v291;
        v138(v291, 1, 1, v114);
        goto LABEL_66;
      }
    }

    if (v122 != 2)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v111 = v304;
  sub_2283F120C(v314, v304, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v112 = v308;
  v113 = v97(v111, 1, v308);
  v114 = v307;
  v115 = v309;
  if (v113 == 1)
  {
    sub_2283F0474(v111, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  else
  {
    v117 = *v111;
    v118 = *v111;
    sub_22853D6C4(v111, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    if (v117)
    {
      v316 = v118;
      sub_2283EF310(0, &qword_280DE92C0, 0x277CCD138);
      v119 = sub_22855E14C();

      goto LABEL_21;
    }
  }

  v119 = 0;
LABEL_21:
  v120 = [v110 isEqual_];
  swift_unknownObjectRelease();
  if ((v120 & 1) == 0)
  {
    if (!v306)
    {
      v123 = v302;
      if ((v303 & 1) == 0)
      {
        if ((v299 & 1) == 0)
        {
          if ((v295 & 1) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_83;
        }

LABEL_61:
        v313 = v110;
        v133 = [v110 restoreCompletionDate];
        v265 = v97;
        if (v133)
        {
          v134 = v288;
          v135 = v133;
          sub_22855C13C();

          v136 = 0;
          v137 = v291;
        }

        else
        {
          v136 = 1;
          v137 = v291;
          v134 = v288;
        }

        v138 = *(v115 + 56);
        v138(v134, v136, 1, v114);
        sub_22853EA90(v134, v137);
LABEL_66:
        v139 = v290;
        sub_2283F120C(v314, v290, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        if (v265(v139, 1, v112) == 1)
        {
          sub_2283F0474(v139, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        }

        else
        {
          v140 = *v139;
          v141 = *v139;
          v142 = v139;
          v143 = v141;
          sub_22853D6C4(v142, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          if (v140)
          {
            v144 = [v143 restoreCompletionDate];

            if (v144)
            {
              v145 = v280;
              sub_22855C13C();

              v146 = 0;
              v147 = v296;
            }

            else
            {
              v146 = 1;
              v147 = v296;
              v145 = v280;
            }

            v138(v145, v146, 1, v114);
            sub_22853EA90(v145, v147);
LABEL_75:
            v148 = *(v300 + 48);
            v149 = MEMORY[0x277CC9578];
            v150 = v297;
            sub_2283F120C(v137, v297, &qword_280DEE380, MEMORY[0x277CC9578]);
            sub_2283F120C(v147, v150 + v148, &qword_280DEE380, v149);
            v151 = *(v115 + 48);
            if (v151(v150, 1, v114) == 1)
            {
              v152 = MEMORY[0x277CC9578];
              sub_2283F0474(v147, &qword_280DEE380, MEMORY[0x277CC9578]);
              v153 = v297;
              sub_2283F0474(v137, &qword_280DEE380, v152);
              if (v151(v153 + v148, 1, v114) != 1)
              {
                goto LABEL_101;
              }

              sub_2283F0474(v153, &qword_280DEE380, MEMORY[0x277CC9578]);
              v97 = v265;
              v110 = v313;
            }

            else
            {
              v154 = v285;
              sub_2283F120C(v150, v285, &qword_280DEE380, MEMORY[0x277CC9578]);
              if (v151(v150 + v148, 1, v114) == 1)
              {
                v155 = MEMORY[0x277CC9578];
                sub_2283F0474(v296, &qword_280DEE380, MEMORY[0x277CC9578]);
                v153 = v297;
                sub_2283F0474(v137, &qword_280DEE380, v155);
                (*(v115 + 8))(v154, v114);
                goto LABEL_101;
              }

              v156 = v150 + v148;
              v157 = v286;
              (*(v115 + 32))(v286, v156, v114);
              sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578]);
              LODWORD(v312) = sub_22855D16C();
              v158 = *(v115 + 8);
              v158(v157, v114);
              v159 = MEMORY[0x277CC9578];
              sub_2283F0474(v296, &qword_280DEE380, MEMORY[0x277CC9578]);
              sub_2283F0474(v137, &qword_280DEE380, v159);
              v158(v154, v114);
              sub_2283F0474(v150, &qword_280DEE380, v159);
              v97 = v265;
              v110 = v313;
              if ((v312 & 1) == 0)
              {
                return 1;
              }
            }

LABEL_81:
            v128 = v298;
            if ((v295 & 1) == 0)
            {
              goto LABEL_147;
            }

            if (v110)
            {
LABEL_83:
              v160 = [v110 lastPullDate];
              if (v160)
              {
                v161 = v283;
                v162 = v160;
                sub_22855C13C();

                v163 = v161;
                v164 = 0;
              }

              else
              {
                v164 = 1;
                v163 = v283;
              }

              v165 = *(v115 + 56);
              v165(v163, v164, 1, v114);
              sub_22853EA90(v163, v294);
              v128 = v298;
LABEL_88:
              sub_2283F120C(v314, v128, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
              v166 = v97(v128, 1, v112);
              v265 = v97;
              if (v166 == 1)
              {
                sub_2283F0474(v128, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
              }

              else
              {
                v167 = *v128;
                v168 = *v128;
                v169 = v128;
                v170 = v168;
                sub_22853D6C4(v169, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                if (v167)
                {
                  v171 = [v170 lastPullDate];

                  if (v171)
                  {
                    v172 = v277;
                    sub_22855C13C();

                    v173 = 0;
                    v174 = v292;
                  }

                  else
                  {
                    v173 = 1;
                    v174 = v292;
                    v172 = v277;
                  }

                  v165(v172, v173, 1, v114);
                  sub_22853EA90(v172, v174);
LABEL_96:
                  v175 = v294;
                  v176 = *(v300 + 48);
                  v177 = MEMORY[0x277CC9578];
                  v178 = v293;
                  sub_2283F120C(v294, v293, &qword_280DEE380, MEMORY[0x277CC9578]);
                  v179 = v178;
                  sub_2283F120C(v174, v178 + v176, &qword_280DEE380, v177);
                  v180 = *(v115 + 48);
                  v181 = v180(v179, 1, v114);
                  v311 = v180;
                  if (v181 == 1)
                  {
                    v312 = v165;
                    v182 = v115 + 48;
                    v183 = MEMORY[0x277CC9578];
                    sub_2283F0474(v174, &qword_280DEE380, MEMORY[0x277CC9578]);
                    v153 = v293;
                    sub_2283F0474(v175, &qword_280DEE380, v183);
                    if (v180(v153 + v176, 1, v114) == 1)
                    {
                      sub_2283F0474(v153, &qword_280DEE380, MEMORY[0x277CC9578]);
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v184 = v180;
                    v185 = v282;
                    sub_2283F120C(v179, v282, &qword_280DEE380, MEMORY[0x277CC9578]);
                    if (v184(v179 + v176, 1, v114) != 1)
                    {
                      v312 = v165;
                      v182 = v115 + 48;
                      v187 = v179 + v176;
                      v188 = v286;
                      (*(v115 + 32))(v286, v187, v114);
                      sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578]);
                      LODWORD(v307) = sub_22855D16C();
                      v189 = *(v115 + 8);
                      v189(v188, v114);
                      v190 = MEMORY[0x277CC9578];
                      sub_2283F0474(v292, &qword_280DEE380, MEMORY[0x277CC9578]);
                      sub_2283F0474(v175, &qword_280DEE380, v190);
                      v189(v185, v114);
                      sub_2283F0474(v179, &qword_280DEE380, v190);
                      if ((v307 & 1) == 0)
                      {
                        return 1;
                      }

LABEL_103:
                      if (v110)
                      {
                        v191 = [v110 lastPushDate];
                        v192 = v309;
                        v193 = v265;
                        v194 = v281;
                        v195 = v278;
                        if (v191)
                        {
                          v196 = v275;
                          v197 = v191;
                          sub_22855C13C();

                          v198 = 0;
                        }

                        else
                        {
                          v198 = 1;
                          v196 = v275;
                        }

                        v312(v196, v198, 1, v114);
                        sub_22853EA90(v196, v287);
                      }

                      else
                      {
                        v192 = v309;
                        v312(v287, 1, 1, v114);
                        v193 = v265;
                        v194 = v281;
                        v195 = v278;
                      }

                      sub_2283F120C(v314, v195, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                      v199 = v193(v195, 1, v308);
                      v313 = v110;
                      if (v199 == 1)
                      {
                        sub_2283F0474(v195, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                      }

                      else
                      {
                        v200 = *v195;
                        v201 = *v195;
                        sub_22853D6C4(v195, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                        if (v200)
                        {
                          v202 = [v201 lastPushDate];

                          if (v202)
                          {
                            v203 = v270;
                            sub_22855C13C();

                            v204 = 0;
                            v205 = v284;
                          }

                          else
                          {
                            v204 = 1;
                            v205 = v284;
                            v203 = v270;
                          }

                          v312(v203, v204, 1, v114);
                          sub_22853EA90(v203, v205);
LABEL_117:
                          v206 = v287;
                          v207 = *(v300 + 48);
                          v208 = MEMORY[0x277CC9578];
                          sub_2283F120C(v287, v194, &qword_280DEE380, MEMORY[0x277CC9578]);
                          sub_2283F120C(v205, v194 + v207, &qword_280DEE380, v208);
                          v209 = v311;
                          if ((v311)(v194, 1, v114) == 1)
                          {
                            v307 = v182;
                            v210 = MEMORY[0x277CC9578];
                            sub_2283F0474(v205, &qword_280DEE380, MEMORY[0x277CC9578]);
                            sub_2283F0474(v206, &qword_280DEE380, v210);
                            if (v209(v194 + v207, 1, v114) == 1)
                            {
                              sub_2283F0474(v194, &qword_280DEE380, MEMORY[0x277CC9578]);
                              v110 = v313;
                              v211 = v276;
                              goto LABEL_124;
                            }
                          }

                          else
                          {
                            v212 = v273;
                            sub_2283F120C(v194, v273, &qword_280DEE380, MEMORY[0x277CC9578]);
                            v213 = v209(v194 + v207, 1, v114);
                            v110 = v313;
                            if (v213 != 1)
                            {
                              v307 = v182;
                              v215 = v194 + v207;
                              v216 = v286;
                              (*(v192 + 32))(v286, v215, v114);
                              sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578]);
                              v217 = sub_22855D16C();
                              v218 = *(v192 + 8);
                              v218(v216, v114);
                              v219 = MEMORY[0x277CC9578];
                              sub_2283F0474(v284, &qword_280DEE380, MEMORY[0x277CC9578]);
                              sub_2283F0474(v206, &qword_280DEE380, v219);
                              v218(v212, v114);
                              v211 = v276;
                              sub_2283F0474(v281, &qword_280DEE380, v219);
                              if ((v217 & 1) == 0)
                              {
                                return 1;
                              }

LABEL_124:
                              if (v110)
                              {
                                v220 = [v110 lastPulledUpdateDate];
                                v221 = v265;
                                v222 = v271;
                                v223 = v312;
                                if (v220)
                                {
                                  v224 = v269;
                                  v225 = v220;
                                  sub_22855C13C();

                                  v226 = 0;
                                }

                                else
                                {
                                  v226 = 1;
                                  v224 = v269;
                                }

                                v223(v224, v226, 1, v114);
                                sub_22853EA90(v224, v211);
                              }

                              else
                              {
                                v223 = v312;
                                v312(v211, 1, 1, v114);
                                v221 = v265;
                                v222 = v271;
                              }

                              sub_2283F120C(v314, v222, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                              if (v221(v222, 1, v308) == 1)
                              {
                                sub_2283F0474(v222, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                              }

                              else
                              {
                                v227 = *v222;
                                v228 = *v222;
                                sub_22853D6C4(v222, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                if (v227)
                                {
                                  v229 = [v228 lastPulledUpdateDate];

                                  if (v229)
                                  {
                                    v230 = v266;
                                    sub_22855C13C();

                                    v231 = 0;
                                    v232 = v274;
                                  }

                                  else
                                  {
                                    v231 = 1;
                                    v232 = v274;
                                    v230 = v266;
                                  }

                                  v223(v230, v231, 1, v114);
                                  sub_22853EA90(v230, v232);
                                  goto LABEL_138;
                                }
                              }

                              v232 = v274;
                              v223(v274, 1, 1, v114);
LABEL_138:
                              v233 = *(v300 + 48);
                              v234 = MEMORY[0x277CC9578];
                              v235 = v272;
                              sub_2283F120C(v211, v272, &qword_280DEE380, MEMORY[0x277CC9578]);
                              sub_2283F120C(v232, v235 + v233, &qword_280DEE380, v234);
                              v236 = v311;
                              if ((v311)(v235, 1, v114) == 1)
                              {
                                v237 = MEMORY[0x277CC9578];
                                sub_2283F0474(v232, &qword_280DEE380, MEMORY[0x277CC9578]);
                                sub_2283F0474(v211, &qword_280DEE380, v237);
                                if (v236(v235 + v233, 1, v114) == 1)
                                {
                                  sub_2283F0474(v235, &qword_280DEE380, MEMORY[0x277CC9578]);
LABEL_145:
                                  if (v110)
                                  {
                                    v249 = [v110 dataUploadRequestStatus];
                                    v250 = [v110 dataUploadRequestStatus];
                                    v112 = v308;
                                    v97 = v265;
                                    if (v249 != v250)
                                    {
                                      return 1;
                                    }

LABEL_147:
                                    if ((v289 & 1) == 0)
                                    {
                                      return 0;
                                    }

                                    if (v110)
                                    {
                                      v251 = [v110 errorRequiringUserAction];
                                      if (v251)
                                      {
                                        v316 = v251;
                                        sub_2283F9B94(0, &qword_280DECFE0);
                                        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
                                        if (swift_dynamicCast())
                                        {
                                          v252 = v315;
                                          v253 = v268;
                                          sub_2283F120C(v314, v268, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                          if (v97(v253, 1, v112) == 1)
                                          {

                                            sub_2283F0474(v253, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                          }

                                          else
                                          {
                                            v259 = *v253;
                                            v260 = *v253;
                                            sub_22853D6C4(v253, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                            if (v259 && (v261 = [v260 errorRequiringUserAction], v260, v261) && (v316 = v261, (swift_dynamicCast() & 1) != 0))
                                            {
                                              v262 = v315;
                                              v263 = [v252 isEqual_];

                                              if (v263)
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                            }
                                          }

                                          return 1;
                                        }
                                      }
                                    }

LABEL_153:
                                    v254 = v97;
                                    v255 = v279;
                                    sub_2283F120C(v314, v279, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                    if (v254(v255, 1, v112) == 1)
                                    {
                                      sub_2283F0474(v255, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                      return 0;
                                    }

                                    v256 = *v255;
                                    v257 = *v255;
                                    sub_22853D6C4(v255, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                    if (!v256)
                                    {
                                      return 0;
                                    }

                                    v258 = [v257 errorRequiringUserAction];

                                    if (!v258)
                                    {
                                      return 0;
                                    }

                                    return 1;
                                  }

                                  v112 = v308;
                                  v97 = v265;
LABEL_40:
                                  if ((v289 & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_153;
                                }
                              }

                              else
                              {
                                v238 = v267;
                                sub_2283F120C(v235, v267, &qword_280DEE380, MEMORY[0x277CC9578]);
                                if (v236(v235 + v233, 1, v114) != 1)
                                {
                                  v240 = v309;
                                  v241 = v235 + v233;
                                  v242 = v286;
                                  (*(v309 + 32))(v286, v241, v114);
                                  sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578]);
                                  v243 = v110;
                                  v244 = v238;
                                  v245 = sub_22855D16C();
                                  v246 = *(v240 + 8);
                                  v246(v242, v114);
                                  v247 = MEMORY[0x277CC9578];
                                  sub_2283F0474(v274, &qword_280DEE380, MEMORY[0x277CC9578]);
                                  sub_2283F0474(v276, &qword_280DEE380, v247);
                                  v248 = v244;
                                  v110 = v243;
                                  v246(v248, v114);
                                  sub_2283F0474(v235, &qword_280DEE380, v247);
                                  if ((v245 & 1) == 0)
                                  {
                                    return 1;
                                  }

                                  goto LABEL_145;
                                }

                                v239 = MEMORY[0x277CC9578];
                                sub_2283F0474(v274, &qword_280DEE380, MEMORY[0x277CC9578]);
                                sub_2283F0474(v276, &qword_280DEE380, v239);
                                (*(v309 + 8))(v238, v114);
                              }

                              v103 = &qword_280DECD80;
                              v104 = &qword_280DEE380;
                              v105 = MEMORY[0x277CC9578];
                              v106 = v235;
LABEL_10:
                              sub_22853EA34(v106, v103, v104, v105);
                              return 1;
                            }

                            v214 = MEMORY[0x277CC9578];
                            sub_2283F0474(v284, &qword_280DEE380, MEMORY[0x277CC9578]);
                            sub_2283F0474(v206, &qword_280DEE380, v214);
                            (*(v192 + 8))(v212, v114);
                          }

                          v103 = &qword_280DECD80;
                          v104 = &qword_280DEE380;
                          v105 = MEMORY[0x277CC9578];
                          v106 = v194;
                          goto LABEL_10;
                        }
                      }

                      v205 = v284;
                      v312(v284, 1, 1, v114);
                      goto LABEL_117;
                    }

                    v186 = MEMORY[0x277CC9578];
                    sub_2283F0474(v292, &qword_280DEE380, MEMORY[0x277CC9578]);
                    v153 = v293;
                    sub_2283F0474(v175, &qword_280DEE380, v186);
                    (*(v115 + 8))(v185, v114);
                  }

LABEL_101:
                  v103 = &qword_280DECD80;
                  v104 = &qword_280DEE380;
                  v105 = MEMORY[0x277CC9578];
                  v106 = v153;
                  goto LABEL_10;
                }
              }

              v174 = v292;
              v165(v292, 1, 1, v114);
              goto LABEL_96;
            }

LABEL_85:
            v165 = *(v115 + 56);
            v165(v294, 1, 1, v114);
            goto LABEL_88;
          }
        }

        v147 = v296;
        v138(v296, 1, 1, v114);
        goto LABEL_75;
      }

      goto LABEL_48;
    }

    v116 = [v110 syncEnabled];
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_22853BB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22853BBBC(uint64_t a1)
{
  v2 = sub_22853EB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22853BBF8(uint64_t a1)
{
  v2 = sub_22853EB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSyncStatusInputSignal.Anchor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_22853EC2C(0, &qword_280DE9038, sub_22853EB10, &type metadata for CloudSyncStatusInputSignal.Anchor.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v25 = *(v4 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v14 = *(v11 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(v13 + v14, 1, 1, active);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853EB10();
  sub_22855E30C();
  if (!v2)
  {
    v17 = v25;
    v18 = v28;
    sub_22853EB64();
    sub_22853EBB4();
    sub_22855E03C();
    v19 = v27;
    if (v27 >> 60 == 15)
    {
      (*(v17 + 8))(v8, v5);
      v20 = 0;
    }

    else
    {
      v21 = v26;
      v23[1] = sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
      sub_2283EF310(0, &qword_280DE92C0, 0x277CCD138);
      v24 = v21;
      v20 = sub_22855D78C();
      (*(v17 + 8))(v8, v5);
      sub_22842B378(v24, v19);
    }

    *v13 = v20;
    sub_22853FA88(v13, v18, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_22853D6C4(v13, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t CloudSyncStatusInputSignal.Anchor.encode(to:)(void *a1)
{
  v2 = v1;
  v23[2] = *MEMORY[0x277D85DE8];
  sub_22853EC2C(0, &unk_280DE8FE8, sub_22853EB10, &type metadata for CloudSyncStatusInputSignal.Anchor.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v23[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853EB10();
  sub_22855E31C();
  v11 = *v2;
  if (!v11)
  {
    sub_22855E0DC();
LABEL_6:
    result = (*(v6 + 8))(v9, v5);
    goto LABEL_7;
  }

  v12 = objc_opt_self();
  v23[0] = 0;
  v13 = v11;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v23];
  v15 = v23[0];
  if (!v14)
  {
    v20 = v15;
    sub_22855BF3C();

    swift_willThrow();
    goto LABEL_6;
  }

  v16 = sub_22855C09C();
  v18 = v17;

  v23[0] = v16;
  v23[1] = v18;
  sub_22844AF8C();
  sub_22855E0CC();
  (*(v6 + 8))(v9, v5);

  result = sub_22842B38C(v16, v18);
LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

HealthPlatform::CloudSyncStatusInputSignal::Configuration __swiftcall CloudSyncStatusInputSignal.Configuration.init(observeSyncEnabled:observeFirstRestore:observeSyncDates:observeErrorRequiringUserAction:observeAccountSupportsSecureContainer:)(Swift::Bool observeSyncEnabled, Swift::Bool observeFirstRestore, Swift::Bool observeSyncDates, Swift::Bool observeErrorRequiringUserAction, Swift::Bool observeAccountSupportsSecureContainer)
{
  *v5 = observeSyncEnabled;
  v5[1] = observeFirstRestore;
  v5[2] = observeSyncDates;
  v5[3] = observeErrorRequiringUserAction;
  v5[4] = observeAccountSupportsSecureContainer;
  result.observeSyncEnabled = observeSyncEnabled;
  return result;
}

uint64_t CloudSyncStatusInputSignal.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E24C();
}

uint64_t CloudSyncStatusInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22855E22C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E27C();
}

uint64_t sub_22853C498()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22855E22C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E27C();
}

uint64_t CloudSyncStatusInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

void CloudSyncStatusInputSignal.beginObservation(from:configurations:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22853EC94(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_22853C61C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  return (*(v7 + 8))(a2, v6, v7);
}

Swift::Void __swiftcall CloudSyncStatusInputSignal.stopObservation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = (v1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24) + v2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);

  os_unfair_lock_unlock((v1 + v3));
}

id CloudSyncStatusInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncStatusInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22853C8BC()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

void sub_22853C8F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22853FBC4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_22853C998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = (v1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24) + v2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  v10 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FB58();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_22853FA88(a1, v17, type metadata accessor for ActiveSyncState);
  sub_22853FA88(a2, &v17[v18], type metadata accessor for ActiveSyncState);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_22853FA88(v17, v12, type metadata accessor for ActiveSyncState);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_22853FAF0(&v17[v18], v8, type metadata accessor for SyncError);
      sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
      sub_2285362F0(&qword_27D840928);
      v24 = sub_22855D09C();
      sub_22853D6C4(v8, type metadata accessor for SyncError);
      sub_22853D6C4(v12, type metadata accessor for SyncError);
      v22 = type metadata accessor for ActiveSyncState;
      goto LABEL_10;
    }

    sub_22853D6C4(v12, type metadata accessor for SyncError);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    v21 = v19(&v17[v18], 2, v4);
    v22 = type metadata accessor for ActiveSyncState;
    if (v21 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v24 = 0;
    v22 = sub_22853FB58;
    goto LABEL_10;
  }

  v23 = v19(&v17[v18], 2, v4);
  v22 = type metadata accessor for ActiveSyncState;
  if (v23 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v24 = 1;
LABEL_10:
  sub_22853D6C4(v17, v22);
  return v24 & 1;
}

unint64_t sub_22853CDBC()
{
  result = qword_27D840978;
  if (!qword_27D840978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840978);
  }

  return result;
}

unint64_t sub_22853CE10()
{
  result = qword_27D840988;
  if (!qword_27D840988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840988);
  }

  return result;
}

unint64_t sub_22853CE64()
{
  result = qword_27D840998;
  if (!qword_27D840998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840998);
  }

  return result;
}

unint64_t sub_22853CEB8()
{
  result = qword_27D8409A8;
  if (!qword_27D8409A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8409A8);
  }

  return result;
}

uint64_t sub_22853CF88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

id sub_22853D0AC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v28[3] = type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
  v28[4] = &off_283B8C358;
  v28[0] = a3;
  v17 = &a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = *(v10 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&v16[v18], 1, 1, active);
  sub_2283F9B10(v28, &v16[*(v10 + 32)]);
  *v16 = 0;
  sub_22853FA20();
  v21 = *(v20 + 52);
  v22 = (*(v20 + 48) + 3) & 0x1FFFFFFFCLL;
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22853FA88(v16, v14, type metadata accessor for CloudSyncStatusInputSignal.State);
  swift_unknownObjectRetain();
  sub_22853D6C4(v16, type metadata accessor for CloudSyncStatusInputSignal.State);
  sub_22853FAF0(v14, v23 + *(*v23 + *MEMORY[0x277D841D0] + 16), type metadata accessor for CloudSyncStatusInputSignal.State);
  *&a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState] = v23;
  v27.receiver = a4;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v24;
}

id sub_22853D310(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v33[3] = a5;
  v33[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v22 = &a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = *(v14 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&v20[v23], 1, 1, active);
  sub_2283F9B10(v33, &v20[*(v14 + 32)]);
  *v20 = 0;
  sub_22853FA20();
  v26 = *(v25 + 52);
  v27 = (*(v25 + 48) + 3) & 0x1FFFFFFFCLL;
  v28 = swift_allocObject();
  *(v28 + ((*(*v28 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22853FA88(v20, v18, type metadata accessor for CloudSyncStatusInputSignal.State);
  swift_unknownObjectRetain();
  sub_22853D6C4(v20, type metadata accessor for CloudSyncStatusInputSignal.State);
  sub_22853FAF0(v18, v28 + *(*v28 + *MEMORY[0x277D841D0] + 16), type metadata accessor for CloudSyncStatusInputSignal.State);
  *&a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState] = v28;
  v32.receiver = a4;
  v32.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v29;
}

id sub_22853D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v15);
  (*(v11 + 16))(v14, a3, a5);
  return sub_22853D310(a1, a2, v14, v16, a5, a6);
}

uint64_t sub_22853D6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22853D724(uint64_t a1, uint64_t a2)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22853D7C0(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v3 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DE9DF8);
  v7 = a1;
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    v12 = sub_22855E34C();
    v14 = sub_2283F8938(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = v7;
    v16 = [v15 description];
    v17 = sub_22855D1AC();
    v19 = v18;

    v20 = sub_2283F8938(v17, v19, &v24);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_2283ED000, v8, v9, "[%s] cloudSyncObserver syncDidStartWith progress:%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v21 = type metadata accessor for SyncError(0);
  (*(*(v21 - 8) + 56))(v5, 1, 2, v21);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v5);
  return sub_22853D6C4(v5, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853DA50(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v3 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DE9DF8);
  v7 = a1;
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    v12 = sub_22855E34C();
    v14 = sub_2283F8938(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v23 = a1;
    v15 = a1;
    sub_2284B3E4C();
    v16 = sub_22855D1BC();
    v18 = sub_2283F8938(v16, v17, &v24);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_2283ED000, v8, v9, "[%s] cloudSyncObserver syncFailed with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v19 = a1;
  if (!a1)
  {
    v19 = [objc_opt_self() hk:0 error:0 userInfo:?];
  }

  v20 = a1;
  sub_22855BF2C();
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_22855D0BC();
  v21 = type metadata accessor for SyncError(0);
  (*(*(v21 - 8) + 56))(v5, 0, 2, v21);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v5);

  return sub_22853D6C4(v5, type metadata accessor for ActiveSyncState);
}

uint64_t _s14HealthPlatform26CloudSyncStatusInputSignalC05cloudd8ObserverD9CompletedyySo07HKClouddI0CF_0()
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v1 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DE9DF8);
  v5 = sub_22855CA8C();
  v6 = sub_22855D6AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = sub_22855E34C();
    v11 = sub_2283F8938(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] cloudSyncObserverSyncCompleted", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = type metadata accessor for SyncError(0);
  (*(*(v12 - 8) + 56))(v3, 2, 2, v12);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v3);
  return sub_22853D6C4(v3, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853DF48(void *a1)
{
  swift_getObjectType();
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = a1;
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = v3;
    v12 = [v11 description];
    v13 = sub_22855D1AC();
    v15 = v14;

    v16 = sub_2283F8938(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] cloudSyncObserverStatusUpdated with status: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  return CloudSyncStatusInputSignal.didUpdate(status:)(v3);
}

uint64_t sub_22853E140(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v7 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DE9DF8);
  v11 = a1;
  v12 = a2;
  v13 = sub_22855CA8C();
  v14 = sub_22855D6AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315650;
    v18 = sub_22855E34C();
    v20 = sub_2283F8938(v18, v19, &v37);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = [v11 description];
    v22 = sub_22855D1AC();
    v24 = v23;

    v25 = sub_2283F8938(v22, v24, &v37);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2080;
    v26 = v12;
    v27 = [v26 description];
    v28 = sub_22855D1AC();
    v30 = v29;

    v31 = sub_2283F8938(v28, v30, &v37);

    *(v16 + 24) = v31;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v17, -1, -1);
    MEMORY[0x22AABAD40](v16, -1, -1);
  }

  v32 = [v12 isFinished];
  v33 = type metadata accessor for SyncError(0);
  if (v32)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  (*(*(v33 - 8) + 56))(v9, v34, 2, v33);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v9);
  return sub_22853D6C4(v9, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853E454(void *a1, void *a2)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v5 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DE9DF8);
  v9 = a1;
  v10 = a2;
  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315650;
    v15 = sub_22855E34C();
    v17 = sub_2283F8938(v15, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v9 description];
    v19 = sub_22855D1AC();
    v21 = v20;

    v22 = sub_2283F8938(v19, v21, &v32);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    v31 = a2;
    v23 = a2;
    sub_2284B3E4C();
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, &v32);

    *(v13 + 24) = v26;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v14, -1, -1);
    MEMORY[0x22AABAD40](v13, -1, -1);
  }

  v27 = a2;
  if (!a2)
  {
    v27 = [objc_opt_self() hk:0 error:0 userInfo:?];
  }

  v28 = a2;
  sub_22855BF2C();
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_22855D0BC();
  v29 = type metadata accessor for SyncError(0);
  (*(*(v29 - 8) + 56))(v7, 0, 2, v29);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v7);

  return sub_22853D6C4(v7, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853E7AC(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  v3 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DE9DF8);
  v7 = a1;
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v12 = sub_22855E34C();
    v14 = sub_2283F8938(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v7 description];
    v16 = sub_22855D1AC();
    v18 = v17;

    v19 = sub_2283F8938(v16, v18, &v23);

    *(v10 + 14) = v19;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v20 = type metadata accessor for SyncError(0);
  (*(*(v20 - 8) + 56))(v5, 2, 2, v20);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v5);
  return sub_22853D6C4(v5, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853EA34(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2283F11A8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22853EA90(uint64_t a1, uint64_t a2)
{
  sub_2283F1134(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22853EB10()
{
  result = qword_280DEB040[0];
  if (!qword_280DEB040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEB040);
  }

  return result;
}

void sub_22853EB64()
{
  if (!qword_280DEE388)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE388);
    }
  }
}

unint64_t sub_22853EBB4()
{
  result = qword_280DECDA0;
  if (!qword_280DECDA0)
  {
    sub_22853EB64();
    sub_22844AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DECDA0);
  }

  return result;
}

void sub_22853EC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_22853EE50()
{
  result = qword_27D840A30;
  if (!qword_27D840A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840A30);
  }

  return result;
}

unint64_t sub_22853EEA8()
{
  result = qword_280DEB0F8[0];
  if (!qword_280DEB0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEB0F8);
  }

  return result;
}

unint64_t sub_22853EF00()
{
  result = qword_280DEB0F0;
  if (!qword_280DEB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB0F0);
  }

  return result;
}

uint64_t sub_22853EF9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22853F06C()
{
  sub_2283EFE3C(319, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22853F118()
{
  v0 = type metadata accessor for SyncError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_22853F1B0()
{
  sub_2283EFE3C(319, &qword_280DE92B8, &qword_280DE92C0, 0x277CCD138, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2283F1134(319, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudSyncStatusInputSignal.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSyncStatusInputSignal.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_22853F34C()
{
  sub_2283EFE3C(319, &qword_280DE92B8, &qword_280DE92C0, 0x277CCD138, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2283F1134(319, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v1 <= 0x3F)
    {
      sub_2283F9B94(319, &qword_280DEAF40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22853F4A4()
{
  result = qword_27D840AA8;
  if (!qword_27D840AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AA8);
  }

  return result;
}

unint64_t sub_22853F4FC()
{
  result = qword_27D840AB0;
  if (!qword_27D840AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AB0);
  }

  return result;
}

unint64_t sub_22853F554()
{
  result = qword_27D840AB8;
  if (!qword_27D840AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AB8);
  }

  return result;
}

unint64_t sub_22853F5AC()
{
  result = qword_27D840AC0;
  if (!qword_27D840AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AC0);
  }

  return result;
}

unint64_t sub_22853F604()
{
  result = qword_280DEB028;
  if (!qword_280DEB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB028);
  }

  return result;
}

unint64_t sub_22853F65C()
{
  result = qword_280DEB030;
  if (!qword_280DEB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB030);
  }

  return result;
}

unint64_t sub_22853F6B4()
{
  result = qword_27D840AC8;
  if (!qword_27D840AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AC8);
  }

  return result;
}

unint64_t sub_22853F70C()
{
  result = qword_27D840AD0;
  if (!qword_27D840AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AD0);
  }

  return result;
}

unint64_t sub_22853F764()
{
  result = qword_27D840AD8;
  if (!qword_27D840AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AD8);
  }

  return result;
}

unint64_t sub_22853F7BC()
{
  result = qword_27D840AE0;
  if (!qword_27D840AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AE0);
  }

  return result;
}

unint64_t sub_22853F814()
{
  result = qword_27D840AE8;
  if (!qword_27D840AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AE8);
  }

  return result;
}

unint64_t sub_22853F86C()
{
  result = qword_27D840AF0;
  if (!qword_27D840AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AF0);
  }

  return result;
}

unint64_t sub_22853F8C4()
{
  result = qword_27D840AF8;
  if (!qword_27D840AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AF8);
  }

  return result;
}

unint64_t sub_22853F91C()
{
  result = qword_27D840B00;
  if (!qword_27D840B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B00);
  }

  return result;
}

unint64_t sub_22853F974()
{
  result = qword_27D840B08;
  if (!qword_27D840B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B08);
  }

  return result;
}

unint64_t sub_22853F9CC()
{
  result = qword_27D840B10;
  if (!qword_27D840B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B10);
  }

  return result;
}

void sub_22853FA20()
{
  if (!qword_280DE9150)
  {
    type metadata accessor for CloudSyncStatusInputSignal.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9150);
    }
  }
}

uint64_t sub_22853FA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22853FAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22853FB58()
{
  if (!qword_27D840B18)
  {
    type metadata accessor for ActiveSyncState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D840B18);
    }
  }
}

uint64_t SearchMode.hashValue.getter(char a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1 & 1);
  return sub_22855E27C();
}

uint64_t sub_22853FC70@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22853FCA0()
{
  result = qword_27D840B20;
  if (!qword_27D840B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B20);
  }

  return result;
}

unint64_t sub_22853FCF8()
{
  result = qword_27D840B28;
  if (!qword_27D840B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AddSharedSummariesExecutor.run(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a3;
  v9 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v24 - v13;
  (*(a5 + 16))(a4, a5);
  v24 = v15;
  ObjectType = swift_getObjectType();
  (*(v11 + 16))(v14, a1, AssociatedTypeWitness);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = v5;
  (*(v11 + 32))(&v18[v16], v14, AssociatedTypeWitness);
  v19 = &v18[v17];
  v20 = v27;
  *v19 = v26;
  *(v19 + 1) = v20;
  v21 = v24;
  v22 = *(v24 + 40);
  swift_unknownObjectRetain();

  v22(sub_22854037C, v18, ObjectType, v21);

  return swift_unknownObjectRelease();
}

void sub_2285400E0(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DE9DF8);
    v13 = a1;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();
    sub_22853103C(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446466;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, &v31);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = a1;
      sub_228418D44();
      v22 = sub_22855D1BC();
      v24 = sub_2283F8938(v22, v23, &v31);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2283ED000, v14, v15, "[%{public}s] Failed to create shared summary transaction builder: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    v25 = sub_22855BF2C();
    a5(v25, v26);
  }

  else
  {
    v29 = swift_allocObject();
    v29[2] = a7;
    v29[3] = a8;
    v29[4] = a1;
    v29[5] = a5;
    v29[6] = a6;
    v30 = *(a8 + 24);
    sub_228476E50(a1, 0);

    v30(a4, sub_2285408D0, v29, a7, a8);
  }
}

void sub_22854037C(void *a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 1);

  sub_2285400E0(a1, a2 & 1, v10, v2 + v9, v12, v13, v5, v6);
}

void sub_2285404D4(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v18 = sub_22855BF2C();
    a4();
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a4;
    v13[5] = a5;
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a1;
    v14[4] = sub_2285408E4;
    v14[5] = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2285408E4;
    *(v15 + 24) = v13;
    v16 = *(a3 + 40);
    MEMORY[0x28223BE20](v15);
    swift_retain_n();

    sub_2284A6588(a1, 0);
    os_unfair_lock_lock(v16 + 16);
    sub_228434624(&v16[4], &v19);
    os_unfair_lock_unlock(v16 + 16);
    v17 = v19;
    if (v19)
    {
      v19();
      sub_228416CF8(v17);
    }
  }
}

void sub_2285406C4(id a1, void (*a2)(id))
{
  v3 = a1;
  if (a1)
  {
    v4 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v5 = sub_22855CABC();
    __swift_project_value_buffer(v5, qword_280DEEBF0);
    v6 = v3;
    v7 = sub_22855CA8C();
    v8 = sub_22855D68C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = sub_22855E34C();
      v13 = sub_2283F8938(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v14 = v3;
      sub_228418D44();
      v15 = sub_22855D1BC();
      v17 = sub_2283F8938(v15, v16, &v18);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%{public}s] Failed to add shared summaries: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    else
    {
    }

    v3 = sub_22855BF2C();
  }

  a2(v3);
}

void sub_2285408E4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_2285406C4(a1, *(v1 + 32));
}

id static FeedItem.predicateForFavoritableFeedItems(domain:sourceProfiles:favoriteStatusFilter:)(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v7 = (a3 + 32);
    sub_22840A70C();
    v8 = MEMORY[0x277D837D0];
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_228560570;
      *(v11 + 56) = v8;
      v12 = sub_22840A7C8();
      *(v11 + 64) = v12;
      *(v11 + 32) = 0xD000000000000016;
      *(v11 + 40) = 0x800000022856E390;
      v13 = 0x726F766146746F6ELL;
      if (v10 != 1)
      {
        v13 = 0x626967696C656E69;
      }

      v14 = 0xEC00000064657469;
      if (v9 != 1)
      {
        v14 = 0xEA0000000000656CLL;
      }

      if (!v9)
      {
        v13 = 0x657469726F766166;
        v14 = 0xE900000000000064;
      }

      *(v11 + 96) = v8;
      *(v11 + 104) = v12;
      *(v11 + 72) = v13;
      *(v11 + 80) = v14;
      sub_22855D62C();
      sub_22855DD1C();
      v15 = *(v28 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      --v5;
    }

    while (v5);
    v3 = a2;
    v4 = a1;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v16 = sub_22855D39C();

  v17 = objc_opt_self();
  v18 = [v17 orPredicateWithSubpredicates_];

  v19 = sub_22840CCD8(v4 & 1);
  sub_2284661F0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22856BF30;
  *(v20 + 32) = _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v3);
  *(v20 + 40) = v18;
  *(v20 + 48) = v19;
  v21 = v18;
  v22 = v19;
  v23 = sub_22855D39C();

  v24 = [v17 andPredicateWithSubpredicates_];

  return v24;
}

id static FeedItem.predicateForEligibleForFavoriting(domain:)(char a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22840A7C8();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022856E390;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 64) = v4;
  *(v2 + 72) = 0x626967696C656E69;
  *(v2 + 80) = 0xEA0000000000656CLL;
  v5 = sub_22855D62C();
  v6 = sub_22840CCD8(a1 & 1);
  sub_2284661F0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228563E50;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_22855D39C();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

uint64_t Planner.fetchAnchors(for:anchorStorage:signals:context:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a8;
  v34 = a7;
  v38 = a6;
  v39 = a1;
  v35 = a5;
  v36 = a4;
  v30 = a3;
  v12 = sub_22855C7DC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22855CABC();
  v31 = *(v15 - 8);
  v32 = v15;
  v16 = *(v31 + 64);
  MEMORY[0x28223BE20](v15);
  v37 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v40, v10, a9, v18, v19);
  v20 = v41;
  v21 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v22 = swift_allocObject();
  v23 = v34;
  v22[2] = v33;
  v22[3] = a9;
  v24 = v38;
  v22[4] = v39;
  v22[5] = v24;
  v25 = v35;
  v26 = v36;
  v22[6] = v23;
  v22[7] = v26;
  v22[8] = v25;
  v22[9] = v10;
  v27 = *(v21 + 8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27(v30, sub_228541A7C, v22, v20, v21);

  return __swift_destroy_boxed_opaque_existential_0(v40);
}

size_t sub_2285412EC(void *a1, char a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v69 = a7;
  v70 = a8;
  v67 = a5;
  v75 = a1;
  v11 = sub_22855CABC();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22855C5CC();
  v65 = *(v73 - 1);
  v15 = *(v65 + 64);
  v16 = MEMORY[0x28223BE20](v73);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v65 - v19;
  v76 = sub_22855C7DC();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v76);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v25);
  v74 = &v65 - v28;
  v72 = a3;
  if (a2)
  {
    v66 = a4;
    swift_getObjectType();
    sub_22855C59C();
    v29 = v70;
    swift_unknownObjectRetain();
    v30 = v75;
    sub_2284A6588(v75, 1);
    v31 = sub_22855CA8C();
    v32 = sub_22855D68C();
    swift_unknownObjectRelease();
    sub_2284A6534(v30, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v74 = v11;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v77 = v29;
      v78 = v73;
      *v33 = 136315394;
      swift_unknownObjectRetain();
      v35 = sub_22855D1BC();
      v37 = v24;
      v38 = sub_2283F8938(v35, v36, &v78);

      *(v33 + 4) = v38;
      v24 = v37;
      *(v33 + 12) = 2112;
      v39 = v75;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v40;
      *v34 = v40;
      _os_log_impl(&dword_2283ED000, v31, v32, "%s: Failed to load previously stored anchors: %@", v33, 0x16u);
      sub_22841DC98(v34);
      v41 = v34;
      a3 = v72;
      MEMORY[0x22AABAD40](v41, -1, -1);
      v42 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);

      (*(v71 + 8))(v14, v74);
    }

    else
    {

      (*(v71 + 8))(v14, v11);
    }

    if (a3 >> 62)
    {
      v57 = sub_22855DB4C();
    }

    else
    {
      v57 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = MEMORY[0x277D84F90];
    if (!v57)
    {
LABEL_35:
      a4 = v66;
LABEL_36:
      a4(v44);
    }

    v78 = MEMORY[0x277D84F90];
    result = sub_2284277C0(0, v57 & ~(v57 >> 63), 0);
    if ((v57 & 0x8000000000000000) == 0)
    {
      v44 = v78;
      if ((a3 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v57; ++i)
        {
          MEMORY[0x22AAB9D20](i, v72);
          sub_22855C7CC();
          v78 = v44;
          v60 = *(v44 + 16);
          v59 = *(v44 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_2284277C0(v59 > 1, v60 + 1, 1);
            v44 = v78;
          }

          *(v44 + 16) = v60 + 1;
          (*(v20 + 32))(v44 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v60, v27, v76);
        }
      }

      else
      {
        v61 = (a3 + 32);
        do
        {
          v62 = *v61;

          sub_22855C7CC();
          v78 = v44;
          v64 = *(v44 + 16);
          v63 = *(v44 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2284277C0(v63 > 1, v64 + 1, 1);
            v44 = v78;
          }

          *(v44 + 16) = v64 + 1;
          (*(v20 + 32))(v44 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v64, v24, v76);
          ++v61;
          --v57;
        }

        while (v57);
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a3 >> 62)
    {
      v43 = sub_22855DB4C();
    }

    else
    {
      v43 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = MEMORY[0x277D84F90];
    if (!v43)
    {
      goto LABEL_36;
    }

    v78 = MEMORY[0x277D84F90];
    result = sub_2284277C0(0, v43 & ~(v43 >> 63), 0);
    if ((v43 & 0x8000000000000000) == 0)
    {
      v66 = a4;
      v46 = 0;
      v44 = v78;
      v47 = (v65 + 8);
      v69 = v20 + 32;
      v70 = a3 & 0xC000000000000001;
      v71 = v43;
      do
      {
        if (v70)
        {
          MEMORY[0x22AAB9D20](v46, a3);
        }

        else
        {
          v48 = *(a3 + 8 * v46 + 32);
        }

        sub_22855C5EC();
        sub_22855C5FC();
        sub_22855C5EC();
        v49 = v75;
        if (*(v75 + 2) && (v50 = sub_228443DF4(v18), (v51 & 1) != 0))
        {
          v52 = *(v49[7] + 8 * v50);
          v53 = *v47;

          v53(v18, v73);
          a3 = v72;
        }

        else
        {
          (*v47)(v18, v73);
        }

        v54 = v74;
        sub_22855C7BC();

        v78 = v44;
        v56 = *(v44 + 16);
        v55 = *(v44 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_2284277C0(v55 > 1, v56 + 1, 1);
          v54 = v74;
          v44 = v78;
        }

        ++v46;
        *(v44 + 16) = v56 + 1;
        (*(v20 + 32))(v44 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v56, v54, v76);
      }

      while (v71 != v46);
      goto LABEL_35;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_228541A7C(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_2285412EC(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
}

uint64_t static SharableModelPredicate.modelWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_2284F13B0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t SharableModelReadableStorage.fetch(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_228541B48, 0, 0);
}

uint64_t sub_228541B48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_228541F48();
  *v5 = v0;
  v5[1] = sub_228541C50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000228570AD0, sub_228541F3C, v3, v6);
}

uint64_t sub_228541C50()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_228541D6C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22849E610;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228541D6C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_228541DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2285429C0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_228542AC0, v14, a4, a5);
}

void sub_228541F48()
{
  if (!qword_280DE9628)
  {
    type metadata accessor for PluginSharableModel();
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9628);
    }
  }
}

uint64_t sub_228541FA0(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2285429C0();
    return sub_22855D4AC();
  }

  else
  {
    sub_2285429C0();

    return sub_22855D4BC();
  }
}

uint64_t SharableModelWritableStorage.updateOrCreate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228542040, 0, 0);
}

uint64_t sub_228542040()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22849D9D8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000012, 0x8000000228570A70, sub_2285422AC, v3, v6);
}

uint64_t sub_228542140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_2284A6AC8, v14, a4, a5);
}

uint64_t SharableModelWritableStorage.delete(sharableModelIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2285422DC, 0, 0);
}

uint64_t sub_2285422DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22849DE00;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000021, 0x8000000228574700, sub_228542548, v3, v6);
}

uint64_t sub_2285423DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 16))(a3, sub_2284A6B0C, v14, a4, a5);
}

uint64_t SharableModelWritableStorage.deleteAll()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_228542578, 0, 0);
}

uint64_t sub_228542578()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_228542670;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x6C416574656C6564, 0xEB0000000029286CLL, sub_228542954, v2, v5);
}

uint64_t sub_228542670()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22854278C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2284A6AEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22854278C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2285427F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284A6958();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  (*(a4 + 24))(sub_2284A6B0C, v12, a3, a4);
}

void sub_2285429C0()
{
  if (!qword_27D840B30)
  {
    sub_228541F48();
    sub_228418D44();
    v0 = sub_22855D4CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840B30);
    }
  }
}

uint64_t objectdestroyTm_3(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_228542AC0(void *a1, char a2)
{
  sub_2285429C0();
  v5 = *(*(v4 - 8) + 80);

  return sub_228541FA0(a1, a2 & 1);
}

uint64_t AnchorStorage.allStoredAnchors(availableSignals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_228542B64, 0, 0);
}

uint64_t sub_228542B64()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_228542DE4();
  *v5 = v0;
  v5[1] = sub_228541C50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000228574730, sub_228542DD8, v3, v6);
}

uint64_t sub_228542C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2285451A8();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_2285452B8, v14, a4, a5);
}

void sub_228542DE4()
{
  if (!qword_280DE96E8)
  {
    sub_22855C5CC();
    sub_22855C80C();
    sub_228544D28(&qword_280DE9F38, MEMORY[0x277D11BA8]);
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96E8);
    }
  }
}

uint64_t sub_228542E90(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2285451A8();
    return sub_22855D4AC();
  }

  else
  {
    sub_2285451A8();

    return sub_22855D4BC();
  }
}

uint64_t AnchorStorage.store(anchor:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_228542F34, 0, 0);
}

uint64_t sub_228542F34()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_228543034;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000012, 0x8000000228574760, sub_2285432C8, v2, v6);
}

uint64_t sub_228543034()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_228541D6C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22849DAF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228543150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  sub_2284A6958();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(a6 + 16))(a3, a4, sub_228545138, v15, v18, a6);
}

uint64_t sub_228543300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_228543348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2285433A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v57 = a2;
  v5 = sub_22855CFBC();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855C62C();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = v13;
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855C1DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_228439BBC();
  sub_22840A70C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228560670;
  v21 = a1[2];
  v20 = a1[3];
  v22 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v23 = sub_22840A7C8();
  *(v19 + 64) = v23;
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  v24 = a1[1];

  v25 = [v24 identifier];
  sub_22855C1BC();

  v26 = sub_22855C17C();
  v28 = v27;
  (*(v15 + 8))(v18, v14);
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v26;
  *(v19 + 80) = v28;
  v30 = a1[4];
  v29 = a1[5];
  *(v19 + 136) = v22;
  *(v19 + 144) = v23;
  *(v19 + 112) = v30;
  *(v19 + 120) = v29;

  v31 = sub_22855D62C();
  v32 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v33 = sub_22855D17C();
  v34 = [v32 initWithEntityName_];

  [v34 setPredicate_];
  v35 = *a1;
  type metadata accessor for OrchestrationAnchor();
  v36 = sub_22855D97C();
  v37 = sub_228544ED0(v36);

  v38 = a1[6];
  v40 = v54;
  v39 = v55;
  v41 = v56;
  (*(v55 + 16))(v54, v57, v56);
  v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v43 = (v53 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  (*(v39 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  v46 = v60;
  *v45 = v59;
  v45[1] = v46;
  aBlock[4] = sub_228545088;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_37;
  v47 = _Block_copy(aBlock);

  v48 = v61;
  sub_22855CFDC();
  v67 = MEMORY[0x277D84F90];
  sub_228544D28(&qword_280DED2D0, MEMORY[0x277D85198]);
  sub_228544D70();
  sub_228544D28(&qword_280DED260, sub_228544D70);
  v49 = v62;
  v50 = v66;
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v48, v49, v47);
  _Block_release(v47);

  (*(v65 + 8))(v49, v50);
  (*(v63 + 8))(v48, v64);
}

uint64_t sub_228543B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5[2] = a2;
  sub_2284930D4(MEMORY[0x277D84F98], sub_22854511C, v5, a1);
  a3();
}

uint64_t sub_228543BD0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v25 = a3;
  v24 = a1;
  v4 = sub_22855C62C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22855C5CC();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v16 = a2[3];

  sub_22842B3E0(v15, v16);
  sub_22842B38C(v15, v16);
  sub_22855C5DC();
  sub_22855C80C();

  sub_22842B3E0(v15, v16);

  (*(v5 + 16))(v8, v25, v4);
  v17 = v26;
  v18 = sub_22855C7EC();
  if (!v17)
  {
    v19 = v24;
    v20 = *v24;
    v21 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v19;
    sub_22845B988(v21, v12, isUniquelyReferenced_nonNull_native);
    *v19 = v28;
  }

  return (*(v9 + 8))(v12, v27);
}

id sub_228543E08()
{
  v1 = v0;
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrchestrationAnchor();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = sub_22855D17C();
  [v7 setPluginPackage_];

  v11 = [*(v1 + 8) identifier];
  sub_22855C1BC();

  sub_22855C17C();
  (*(v3 + 8))(v6, v2);
  v12 = sub_22855D17C();

  [v7 setProfileIdentifier_];

  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = sub_22855D17C();
  [v7 setPlanner_];

  sub_22855C5BC();
  v16 = sub_22855D17C();

  [v7 setCriteria_];

  return v7;
}

uint64_t sub_228543FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v11 = *(v4 + 16);
  *(v10 + 16) = *v4;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v4 + 32);
  *(v10 + 64) = *(v4 + 48);
  *(v10 + 72) = sub_2284BACAC;
  *(v10 + 80) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_228544CC4;
  *(v12 + 24) = v10;

  sub_228544CDC(v4, v22);
  v13 = sub_22855C7FC();
  v15 = v14;

  v16 = *v5;
  v17 = swift_allocObject();
  v18 = *(v5 + 16);
  *(v17 + 24) = *v5;
  *(v17 + 16) = a2;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(v5 + 32);
  *(v17 + 72) = *(v5 + 48);
  *(v17 + 80) = v13;
  *(v17 + 88) = v15;
  *(v17 + 96) = sub_228544CD4;
  *(v17 + 104) = v12;
  v21[4] = sub_228544D14;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_228401F54;
  v21[3] = &block_descriptor_30;
  v19 = _Block_copy(v21);
  sub_228544CDC(v5, v22);

  sub_22842B3E0(v13, v15);

  [v16 performBlock_];

  _Block_release(v19);
  return sub_22842B38C(v13, v15);
}

void sub_228544260(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v53[1] = a6;
  v54 = a5;
  v64 = a3;
  v65 = a4;
  v68 = a2;
  v71[2] = *MEMORY[0x277D85DE8];
  v67 = sub_22855C1DC();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855C5CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v70 = 0;
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v61 = "store(anchor:for:)";
    v62 = v17;
    v59 = "cate. Something is wrong!";
    v60 = (v7 + 8);
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v63 = v16;
    v55 = *(v16 + 56);
    v56 = (v16 - 8);
    v58 = xmmword_228561250;
    v57 = v10;
    v19 = v68;
    do
    {
      v69 = v15;
      v62(v14, v18, v10);
      sub_228439BBC();
      sub_22840A70C();
      v22 = swift_allocObject();
      *(v22 + 16) = v58;
      v24 = v19[2];
      v23 = v19[3];
      v25 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      v26 = sub_22840A7C8();
      *(v22 + 64) = v26;
      *(v22 + 32) = v24;
      *(v22 + 40) = v23;
      v27 = v19[1];

      v28 = [v27 identifier];
      v29 = v66;
      sub_22855C1BC();

      v30 = sub_22855C17C();
      v32 = v31;
      (*v60)(v29, v67);
      *(v22 + 96) = v25;
      *(v22 + 104) = v26;
      *(v22 + 72) = v30;
      *(v22 + 80) = v32;
      v34 = v19[4];
      v33 = v19[5];
      *(v22 + 136) = v25;
      *(v22 + 144) = v26;
      *(v22 + 112) = v34;
      *(v22 + 120) = v33;

      v35 = sub_22855C5BC();
      *(v22 + 176) = v25;
      *(v22 + 184) = v26;
      *(v22 + 152) = v35;
      *(v22 + 160) = v36;
      v37 = sub_22855D62C();
      v38 = objc_allocWithZone(MEMORY[0x277CBE428]);
      v39 = sub_22855D17C();
      v40 = [v38 initWithEntityName_];

      [v40 setPredicate_];
      v41 = *v19;
      type metadata accessor for OrchestrationAnchor();
      v42 = v70;
      v43 = sub_22855D97C();
      v70 = v42;
      if (v42)
      {
        (*v56)(v14, v57);

LABEL_19:
        v50 = v70;
        v51 = v70;
        v54(v50);

        goto LABEL_20;
      }

      if (v43 >> 62)
      {
        v45 = v43;
        v46 = sub_22855DB4C();
        v43 = v45;
        if (v46)
        {
LABEL_8:
          if ((v43 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x22AAB9D20](0, v43);
          }

          else
          {
            if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v44 = *(v43 + 32);
          }

          v20 = v44;

          goto LABEL_4;
        }
      }

      else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      v20 = sub_228543E08();
LABEL_4:
      v21 = sub_22855C08C();
      [v20 setEncodedAnchorSet_];

      v10 = v57;
      (*v56)(v14, v57);
      v18 += v55;
      v15 = v69 - 1;
    }

    while (v69 != 1);
  }

  v47 = *v68;
  v71[0] = 0;
  if (([v47 save_] & 1) == 0)
  {
    v49 = v71[0];
    v70 = sub_22855BF3C();

    swift_willThrow();
    goto LABEL_19;
  }

  v48 = v71[0];
  v54(0);
LABEL_20:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_228544790(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22855CFBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855CFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 48);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  aBlock[4] = sub_2284A67E8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_19;
  v20 = _Block_copy(aBlock);

  v21 = a1;
  sub_22855CFDC();
  v23[1] = MEMORY[0x277D84F90];
  sub_228544D28(&qword_280DED2D0, MEMORY[0x277D85198]);
  sub_228544D70();
  sub_228544D28(&qword_280DED260, sub_228544D70);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v17, v12, v20);
  _Block_release(v20);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

void sub_228544A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22855C62C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v3[1];
  v20 = *v3;
  v21 = v10;
  v22 = v3[2];
  v23 = *(v3 + 6);
  v11 = v20;
  (*(v8 + 16))(&v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v7);
  v12 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  *(v13 + 48) = v22;
  *(v13 + 64) = v23;
  (*(v8 + 32))(v13 + v12, &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v7);
  v15 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  aBlock[4] = sub_228544DC8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_25;
  v16 = _Block_copy(aBlock);
  sub_228544CDC(&v20, v18);

  [v11 performBlock_];
  _Block_release(v16);
}

uint64_t sub_228544C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 6);
  return sub_228543FE4(a1, a2, a3, a4);
}

uint64_t sub_228544D28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228544D70()
{
  if (!qword_280DED270)
  {
    sub_22855CFBC();
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED270);
    }
  }
}

uint64_t sub_228544DC8()
{
  v1 = *(sub_22855C62C() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_2285433A4((v0 + 16), v0 + v2, v4, v5);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_228544ED0(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = result;
  v24 = MEMORY[0x277D84F90];
  result = sub_228427810(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v2 = v24;
    v5 = v3;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    v23 = v3 & 0xC000000000000001;
    v6 = v3;
    v7 = v1;
    while (1)
    {
      if (v23)
      {
        v8 = MEMORY[0x22AAB9D20](v4, v5);
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v21 = result;
          v1 = sub_22855DB4C();
          result = v21;
          goto LABEL_3;
        }

        if (v4 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 criteria];
      v11 = sub_22855D1AC();
      v13 = v12;

      v14 = [v9 encodedAnchorSet];
      v15 = sub_22855C09C();
      v17 = v16;

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_228427810((v18 > 1), v19 + 1, 1);
      }

      ++v4;
      *(v24 + 16) = v19 + 1;
      v20 = (v24 + 32 * v19);
      v20[4] = v11;
      v20[5] = v13;
      v20[6] = v15;
      v20[7] = v17;
      v5 = v6;
      if (v7 == v4)
      {
        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228545088()
{
  v1 = *(sub_22855C62C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_228543B24(v3, v0 + v2, v5);
}

uint64_t sub_228545138(void *a1)
{
  sub_2284A6958();
  v3 = *(*(v2 - 8) + 80);

  return sub_22849E318(a1);
}

void sub_2285451A8()
{
  if (!qword_280DE9578)
  {
    sub_228542DE4();
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855D4CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9578);
    }
  }
}

uint64_t objectdestroy_39Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2285452B8(void *a1, char a2)
{
  sub_2285451A8();
  v5 = *(*(v4 - 8) + 80);

  return sub_228542E90(a1, a2 & 1);
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

id PluginData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PluginData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PluginData();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PluginData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PluginData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UNUserNotificationCenter.scheduleNotification(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2285459D0();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228546614(0, &qword_27D840B40, MEMORY[0x277CBCE88]);
  v12 = v11;
  v32 = *(v11 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = [a1 content];
  v17 = [v16 badge];

  if (v17)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v18 = sub_22855CABC();
    __swift_project_value_buffer(v18, qword_280DEEC98);
    v19 = sub_22855CA8C();
    v20 = sub_22855D69C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = sub_22855E34C();
      v25 = sub_2283F8938(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2283ED000, v19, v20, "[%s] The Health app does not currently support app badging among all Health processes and clients.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AABAD40](v22, -1, -1);
      MEMORY[0x22AABAD40](v21, -1, -1);
    }

    sub_228545A84();
    sub_228418D44();
    sub_22855CDDC();
    sub_2283FECF0(&qword_27D840B50, &qword_27D840B40, MEMORY[0x277CBCE88]);
    v26 = sub_22855CE6C();
    (*(v32 + 8))(v15, v12);
  }

  else
  {
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = a1;
    v27[4] = ObjectType;
    v28 = MEMORY[0x277CBCD88];
    sub_228546614(0, &qword_280DE9898, MEMORY[0x277CBCD88]);
    sub_2283FECF0(&qword_280DE98A0, &qword_280DE9898, v28);
    v29 = v2;
    v30 = a1;
    sub_22855CE2C();
    sub_228545FB0();
    v26 = sub_22855CE6C();
    (*(v7 + 8))(v10, v6);
  }

  return v26;
}

void sub_2285459D0()
{
  if (!qword_27D840B38)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_228546614(255, &qword_280DE9898, MEMORY[0x277CBCD88]);
    sub_2283FECF0(&qword_280DE98A0, &qword_280DE9898, v0);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840B38);
    }
  }
}

unint64_t sub_228545A84()
{
  result = qword_280DE92E8;
  if (!qword_280DE92E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE92E8);
  }

  return result;
}

uint64_t UNNotification.requestContentURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2283F6B58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 request];
  v8 = [v7 content];

  v9 = [v8 userInfo];
  v10 = sub_22855D0EC();

  v11 = *MEMORY[0x277CCE4E0];
  *&v23 = sub_22855D1AC();
  *(&v23 + 1) = v12;
  sub_22855DBEC();
  if (*(v10 + 16) && (v13 = sub_228443C14(&v21), (v14 & 1) != 0))
  {
    sub_2283F6E48(*(v10 + 56) + 32 * v13, &v23);
    sub_22842D0B4(&v21);
  }

  else
  {

    sub_22842D0B4(&v21);
    v23 = 0u;
    v24 = 0u;
  }

  sub_2285465A4(&v23, &v21);
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_22855C03C();

      return sub_2283F48B8(&v23, sub_228400E48);
    }
  }

  else
  {
    sub_2283F48B8(&v21, sub_228400E48);
  }

  v21 = v23;
  v22 = v24;
  if (!*(&v24 + 1))
  {
    sub_2283F48B8(&v21, sub_228400E48);
    v16 = sub_22855C06C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
LABEL_13:
    sub_2283F48B8(v6, sub_2283F6B58);
    sub_22855C06C();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  v16 = sub_22855C06C();
  v17 = swift_dynamicCast();
  v18 = *(v16 - 8);
  v19 = *(v18 + 56);
  v19(v6, v17 ^ 1u, 1, v16);
  if ((*(v18 + 48))(v6, 1, v16) == 1)
  {
    goto LABEL_13;
  }

  (*(v18 + 32))(a1, v6, v16);
  return (v19)(a1, 0, 1, v16);
}

uint64_t sub_228545E84@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_228546614(0, &qword_27D840B58, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = a1;
  v14 = a2;
  sub_22855CE0C();
  sub_2283FECF0(&qword_27D840B60, &qword_27D840B58, v9);
  v15 = sub_22855CE6C();

  *a4 = v15;
  return result;
}

unint64_t sub_228545FB0()
{
  result = qword_27D840B48;
  if (!qword_27D840B48)
  {
    sub_2285459D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B48);
  }

  return result;
}

void sub_228546008(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = sub_228476D24;
  v11[4] = v10;
  v11[5] = a5;
  v14[4] = sub_22854668C;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228546538;
  v14[3] = &block_descriptor_31;
  v12 = _Block_copy(v14);

  v13 = a4;

  [a3 addNotificationRequest:v13 withCompletionHandler:v12];
  _Block_release(v12);
}

void sub_228546138(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DEEC98);
    v8 = a1;
    v9 = a2;
    v10 = sub_22855CA8C();
    v11 = sub_22855D68C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315650;
      v14 = sub_22855E34C();
      v16 = sub_2283F8938(v14, v15, &v41);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = [v9 identifier];
      v18 = sub_22855D1AC();
      v20 = v19;

      v21 = sub_2283F8938(v18, v20, &v41);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2080;
      v22 = a1;
      sub_228418D44();
      v23 = sub_22855D1CC();
      v25 = sub_2283F8938(v23, v24, &v41);

      *(v12 + 24) = v25;
      _os_log_impl(&dword_2283ED000, v10, v11, "[%s] Notification %s Error: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    v26 = a1;
    a3(a1, 1);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v27 = sub_22855CABC();
    __swift_project_value_buffer(v27, qword_280DEEC98);
    v28 = a2;
    v29 = sub_22855CA8C();
    v30 = sub_22855D6AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315394;
      v33 = sub_22855E34C();
      v35 = sub_2283F8938(v33, v34, &v41);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v28 identifier];
      v37 = sub_22855D1AC();
      v39 = v38;

      v40 = sub_2283F8938(v37, v39, &v41);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_2283ED000, v29, v30, "[%s] Notification Request Added %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v32, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    a3(v28, 0);
  }
}

void sub_228546538(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2285465A4(uint64_t a1, uint64_t a2)
{
  sub_228400E48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228546614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228545A84();
    v7 = sub_228418D44();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22854668C(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_228546138(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t Publishers.CombineLatest.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_22855CB5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_22855CB4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CBCBD0], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CBCBE8], v4);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t Publishers.CombineLatest3.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_22855CB5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_22855CB4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CBCBD0], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CBCBE8], v4);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t Publishers.CombineLatest4.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_22855CB5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_22855CB4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CBCBD0], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CBCBE8], v4);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t HKTypesFeatureTag.value.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_228546DC8()
{
  result = swift_getKeyPath();
  qword_280DEBD80 = result;
  return result;
}

uint64_t static HKTypesFeatureTag.keyPath.getter()
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static HKTypesFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD80 = a1;
}

uint64_t (*static HKTypesFeatureTag.keyPath.modify())()
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228546F70()
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t HealthPluginPlanner.workPlan(_:didFail:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = sub_22855CABC();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 + 16);
  v46 = a3;
  v22(a3, a4);
  v23 = *(v12 + 16);
  v23(v17, a1, AssociatedTypeWitness);
  swift_unknownObjectRetain();
  v24 = a2;
  v25 = sub_22855CA8C();
  v26 = sub_22855D68C();
  swift_unknownObjectRelease();
  v47 = a2;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = v23;
    v28 = v27;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v5;
    v51 = v44;
    *v28 = 136315650;
    swift_unknownObjectRetain();
    v29 = sub_22855D1BC();
    v31 = sub_2283F8938(v29, v30, &v51);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v42(v45, v17, AssociatedTypeWitness);
    v32 = sub_22855D1BC();
    v33 = v26;
    v35 = v34;
    (*(v12 + 8))(v17, AssociatedTypeWitness);
    v36 = sub_2283F8938(v32, v35, &v51);

    *(v28 + 14) = v36;
    *(v28 + 22) = 2112;
    v37 = v47;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 24) = v38;
    v39 = v43;
    *v43 = v38;
    _os_log_impl(&dword_2283ED000, v25, v33, "%s: Work plan %s failed: %@", v28, 0x20u);
    sub_22841DC98(v39);
    MEMORY[0x22AABAD40](v39, -1, -1);
    v40 = v44;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v40, -1, -1);
    MEMORY[0x22AABAD40](v28, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v17, AssociatedTypeWitness);
  }

  return (*(v48 + 8))(v21, v49);
}

uint64_t HealthPluginPlanner.store(anchor:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22855CABC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(a4 + 24))(v18, a3, a4);
  v12 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v11 + 8))(v21, v4, *(a4 + 8), v12, v11);
  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = v22;
  v14 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v4;
  v16 = *(v14 + 16);
  swift_unknownObjectRetain();
  v16(a1, a2, sub_228548208, v15, v13, v14);

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_228547728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2285481A4(0, &qword_280DE8F68, MEMORY[0x277D11BA8], MEMORY[0x277D84560]);
  v7 = *(sub_22855C5CC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228560580;
  sub_22855C5EC();
  HealthPluginPlanner.store(anchor:for:)(a1, v10, a3, a4);
}

uint64_t sub_228547854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22855CABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(a4 + 16);
    v15 = a1;
    v14(a3, a4);
    v16 = a1;
    swift_unknownObjectRetain();
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v8;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = a2;
      v31 = v22;
      *v19 = 136315394;
      swift_unknownObjectRetain();
      v23 = sub_22855D1BC();
      v25 = sub_2283F8938(v23, v24, &v31);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v21 = v27;
      _os_log_impl(&dword_2283ED000, v17, v18, "%s: Failed to update anchor: %@", v19, 0x16u);
      sub_22841DC98(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AABAD40](v22, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);

      return (*(v9 + 8))(v13, v29);
    }

    else
    {

      return (*(v9 + 8))(v13, v8);
    }
  }

  return result;
}

uint64_t HealthPluginPlanner.allStoredAnchors(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v7 = sub_22855CABC();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22855C62C();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(v25, a3, a4);
  v13 = v26;
  v14 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v14 + 8))(v28, v4, *(a4 + 8), v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v25);
  v15 = v29;
  v16 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(a4 + 32))(a3, a4);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v23;
  v17[5] = v24;
  v17[6] = v4;
  v18 = *(v16 + 8);

  swift_unknownObjectRetain();
  v18(v12, sub_228548214, v17, v15, v16);

  (*(v20 + 8))(v12, v9);
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_228547F00(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_22855CABC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return (a3)(a1);
  }

  v35 = a4;
  (*(a7 + 16))(a6, a7);
  swift_unknownObjectRetain();
  sub_2284A6588(a1, 1);
  v19 = sub_22855CA8C();
  v20 = sub_22855D68C();
  swift_unknownObjectRelease();
  sub_2284A6534(a1, 1);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = a5;
    v37 = v33;
    *v22 = 136315394;
    swift_unknownObjectRetain();
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, &v37);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2112;
    v27 = a1;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v28;
    *v23 = v28;
    _os_log_impl(&dword_2283ED000, v19, v20, "%s: Failed to retrieve stored anchors; starting criteria from nil anchors: %@", v22, 0x16u);
    sub_22841DC98(v23);
    MEMORY[0x22AABAD40](v23, -1, -1);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AABAD40](v29, -1, -1);
    v30 = v22;
    a3 = v34;
    MEMORY[0x22AABAD40](v30, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_22847D43C(MEMORY[0x277D84F90]);
  a3();
}

void sub_2285481A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

HealthPlatform::FeedItemProminence_optional __swiftcall FeedItemProminence.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_2285482AC()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](5 * v1);
  return sub_22855E27C();
}

uint64_t sub_228548324()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](5 * v1);
  return sub_22855E27C();
}

unint64_t sub_228548440()
{
  result = qword_27D840B68;
  if (!qword_27D840B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B68);
  }

  return result;
}

unint64_t sub_2285484B4()
{
  result = qword_280DEE990;
  if (!qword_280DEE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE990);
  }

  return result;
}

id static DataType.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_228548584(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22855D59C();
  if (!v26)
  {
    return sub_22855D3FC();
  }

  v48 = v26;
  v52 = sub_22855DD8C();
  v39 = sub_22855DD9C();
  sub_22855DD3C();
  result = sub_22855D58C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22855D5DC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22855DD7C();
      result = sub_22855D5BC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.asProfiles(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a1;
  v5 = type metadata accessor for Profile();
  v7 = sub_228548584(sub_228548EA8, v10, a2, v5, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v6);
  v8 = sub_228429908(v7);

  return v8;
}

uint64_t SourceProfile.userProfiles.getter(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84FA0];
  }

  sub_228548F14(0, &qword_280DED028, MEMORY[0x277D84560]);
  v2 = (type metadata accessor for UserProfile() - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228560580;
  v6 = v5 + v4;
  v7 = a1;
  v8 = [v7 identifier];
  sub_22855C1BC();

  *(v6 + v2[7]) = v7;
  v9 = sub_22845F998(v5);
  swift_setDeallocating();
  sub_22845FC38(v6);
  swift_deallocClassInstance();
  return v9;
}

uint64_t Collection<>.sourceProfile.getter()
{
  sub_228548F14(0, qword_280DEDB30, MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  if (sub_22855D59C() > 1)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    sub_22855D5CC();
    v4 = type metadata accessor for UserProfile();
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
    {
      sub_2284C38C8(v3);
      return 0;
    }

    else
    {
      v6 = *&v3[*(v4 + 20)];
      sub_22845FC38(v3);
      return v6;
    }
  }

  return result;
}

void SourceProfile.fetchProfiles(in:)(void *a1, void *a2)
{
  if (a2)
  {
    sub_228548F14(0, &qword_280DED028, MEMORY[0x277D84560]);
    v5 = (type metadata accessor for UserProfile() - 8);
    v6 = *(*v5 + 72);
    v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228560580;
    v9 = v8 + v7;
    v10 = a2;
    v11 = [v10 identifier];
    sub_22855C1BC();

    *(v9 + v5[7]) = v10;
    v12 = sub_22845F998(v8);
    swift_setDeallocating();
    sub_22845FC38(v9);
    swift_deallocClassInstance();
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v13 = a2;
  v14 = a1;
  v15 = sub_2284A534C(v12, v14, a2);

  if (!v2)
  {
    sub_228429908(v15);
  }
}

id sub_228548EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for Profile();
  v6 = type metadata accessor for UserProfile();
  result = static Profile.findOrCreate(_:in:)(*(a1 + *(v6 + 20)), v5);
  *a2 = result;
  return result;
}

void sub_228548F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UserProfile();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id DataType.hkObjectType.getter()
{
  v1 = [objc_opt_self() dataTypeWithCode_];

  return v1;
}

id sub_2285490C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() dataTypeWithCode_];
  *a2 = result;
  return result;
}

void sub_22854911C(id *a1, void **a2)
{
  if (*a1)
  {
    v2 = *a2;
    v3 = *a1;
    [v2 setCodeRaw_];
  }
}

void DataType.hkObjectType.setter(void *a1)
{
  if (a1)
  {
    [v1 setCodeRaw_];
  }
}

void (*DataType.hkObjectType.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = [objc_opt_self() dataTypeWithCode_];
  return sub_22854926C;
}

void sub_22854926C(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (!v3)
    {
      v4 = 0;

LABEL_5:

      return;
    }

LABEL_7:
    v5 = *(a1 + 8);
    v6 = v3;
    [v5 setCodeRaw_];

    v4 = v6;

    goto LABEL_5;
  }

  if (v3)
  {
    goto LABEL_7;
  }
}

void *sub_228549318(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = [a1 code];
  sub_228439BBC();
  sub_22840A70C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560570;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = v7;
  *(v8 + 96) = MEMORY[0x277D837D0];
  *(v8 + 104) = sub_22840A7C8();
  *(v8 + 72) = 0x77615265646F63;
  *(v8 + 80) = 0xE700000000000000;
  v10 = sub_22855D62C();
  v11 = sub_22843A288(a2, v10, a3);
  if (v3)
  {
  }

  else
  {
    v4 = v11;
    if (v11)
    {
    }

    else
    {
      v12 = objc_opt_self();
      v13 = sub_22855D17C();
      v14 = [v12 insertNewObjectForEntityForName:v13 inManagedObjectContext:a2];

      type metadata accessor for DataType();
      v4 = swift_dynamicCastClassUnconditional();
    }

    [v4 setCodeRaw_];
  }

  return v4;
}

uint64_t static DataType.predicate(for:)(uint64_t a1, uint64_t a2)
{
  sub_228439BBC();
  sub_22840A70C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560570;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_22840A7C8();
  *(v4 + 32) = 0x6D65744964656566;
  *(v4 + 40) = 0xE900000000000073;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_22855D62C();
}

uint64_t static DataType.predicate(for:)(char *a1)
{
  v1 = *a1;
  sub_228439BBC();
  sub_22840A70C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22840A7C8();
  *(v2 + 64) = v4;
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000002285749A0;
  v5 = ContentKind.rawValue.getter();
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = v5;
  *(v2 + 80) = v6;
  return sub_22855D62C();
}

char *static DataType.predicate(isOneOfDataType:)(unint64_t a1)
{
  sub_22840A70C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22840A7C8();
  *(v2 + 32) = 0x77615265646F63;
  *(v2 + 40) = 0xE700000000000000;
  if (a1 >> 62)
  {
    v3 = sub_22855DB4C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
LABEL_13:
    sub_228439BBC();
    sub_228549850();
    *(v2 + 96) = v12;
    *(v2 + 104) = sub_2285498A0();
    *(v2 + 72) = v4;
    return sub_22855D62C();
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_228427830(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v13 = v2;
    v6 = 0;
    v4 = v14;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 code];

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_228427830((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v9;
    }

    while (v3 != v6);
    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_228549850()
{
  if (!qword_27D840B70)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840B70);
    }
  }
}

unint64_t sub_2285498A0()
{
  result = qword_27D840B78;
  if (!qword_27D840B78)
  {
    sub_228549850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B78);
  }

  return result;
}

id Keyword.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Keyword.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Keyword();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Keyword.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Keyword();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228549AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  result = a3(a1, a2, 1);
  if (!result)
  {
    v9 = objc_opt_self();
    v10 = sub_22855D17C();
    [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:a1];

    a6(0);

    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

unint64_t sub_228549CC4(unint64_t a1, uint64_t a2)
{
  result = sub_22843C2B8(a1, a2, 1u);
  if (!result)
  {
    v4 = objc_opt_self();
    v5 = sub_22855D17C();
    [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

    type metadata accessor for FeedSection();

    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

void *static Keyword.findOrCreate(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228439BBC();
  sub_22840A70C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22840A7C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22855D62C();
  v8 = sub_228549AA0(a3, v7, sub_22843ABBC, 0x64726F7779654BLL, 0xE700000000000000, type metadata accessor for Keyword);

  v9 = sub_22855D17C();
  [v8 setIdentifier_];

  return v8;
}

uint64_t Keyword.__allocating_init(context:identifier:)(void *a1)
{
  v3 = objc_opt_self();
  v4 = sub_22855D17C();
  v5 = [v3 entityForName:v4 inManagedObjectContext:a1];

  if (v5)
  {
    v6 = [objc_allocWithZone(v1) initWithEntity:v5 insertIntoManagedObjectContext:a1];
    v7 = sub_22855D17C();

    [v6 setIdentifier_];

    return v6;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22854A170(void *a1, void (*a2)(void))
{
  sub_2283F6E48(a1, v7);
  a2(0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000038, 0x800000022856EB40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v5 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v5);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t Feed.addSection(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228560570;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_22840A7C8();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 96) = type metadata accessor for Feed();
    *(v7 + 104) = sub_22854C360(&qword_27D840B80, type metadata accessor for Feed);
    *(v7 + 72) = v2;

    v8 = v2;
    v9 = sub_22855D62C();
    v10 = sub_228549CC4(v6, v9);
    v11 = sub_22855D17C();
    [v10 setIdentifier_];

    [v10 setFeed_];
    return v10;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t Feed.__allocating_init(context:kind:associatedProfileIdentifier:dateUpdated:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = sub_22855D17C();
  v10 = [v8 entityForName:v9 inManagedObjectContext:a1];

  if (v10)
  {
    v11 = [objc_allocWithZone(v4) initWithEntity:v10 insertIntoManagedObjectContext:a1];
    v12 = sub_22855D17C();

    [v11 setKindRawValue_];

    if (a3)
    {
      type metadata accessor for Profile();
      v13 = a3;
      v14 = static Profile.findOrCreate(_:in:)(v13, a1);
      [v11 setAssociatedProfile_];
    }

    v15 = sub_22855C10C();
    [v11 setDateUpdated_];

    v16 = sub_22855C16C();
    (*(*(v16 - 8) + 8))(a4, v16);
    return v11;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void Feed.kind.setter()
{
  v1 = sub_22855D17C();

  [v0 setKindRawValue_];
}

uint64_t static Feed.feedKeyPathString(feedPrefixKeyPath:feedPropertyKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;

  MEMORY[0x22AAB92A0](a3, a4);

  return v9;
}

void *Feed.Kind.contentKinds.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (qword_280DEE748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
    }

    else if (a1 == 4)
    {
      return &unk_283B7EAE0;
    }

    else
    {
      return &unk_283B7EB30;
    }
  }

  else
  {
    v1 = &unk_283B7EA90;
    if (a1 == 1)
    {
      v1 = &unk_283B7EAB8;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return &unk_283B7EB08;
    }
  }
}

uint64_t Feed.Kind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x48726F4673707061;
  v2 = 0x73656369746F6ELL;
  v3 = 0x73656C6369747261;
  if (a1 != 4)
  {
    v3 = 0x73646E657274;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (a1 != 1)
  {
    v4 = 0x6867696C68676968;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t Feed.Kind.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xED000068746C6165;
  v3 = 0x48726F4673707061;
  v4 = 0xE700000000000000;
  v5 = 0x73656369746F6ELL;
  v6 = 0xE800000000000000;
  v7 = 0x73656C6369747261;
  if (a1 != 4)
  {
    v7 = 0x73646E657274;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x800000022856D770;
  v9 = 0xD000000000000011;
  if (a1 != 1)
  {
    v9 = 0x6867696C68676968;
    v8 = 0xEA00000000007374;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x22AAB92A0](v10, v11);

  return 0x2E646E694BLL;
}

uint64_t sub_22854AC18(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED000068746C6165;
  v3 = 0x48726F4673707061;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x73656369746F6ELL;
  v7 = 0xE800000000000000;
  v8 = 0x73656C6369747261;
  if (v4 != 4)
  {
    v8 = 0x73646E657274;
    v7 = 0xE600000000000000;
  }

  if (v4 == 3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000011;
  v10 = 0x800000022856D770;
  if (v4 != 1)
  {
    v9 = 0x6867696C68676968;
    v10 = 0xEA00000000007374;
  }

  if (!*a1)
  {
    v9 = 0x48726F4673707061;
    v10 = 0xED000068746C6165;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (*a2 > 2u)
  {
    if (v5 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x73656369746F6ELL)
      {
        goto LABEL_32;
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x73656C6369747261)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x73646E657274)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (*a2)
    {
      if (v5 == 1)
      {
        v2 = 0x800000022856D770;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x6867696C68676968;
      v2 = 0xEA00000000007374;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_22855E15C();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_22854ADF4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22854AF08()
{
  *v0;
  *v0;
  *v0;
  sub_22855D20C();
}

uint64_t sub_22854B008()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22854B118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_22854B148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000068746C6165;
  v4 = 0x48726F4673707061;
  v5 = 0xE700000000000000;
  v6 = 0x73656369746F6ELL;
  v7 = 0xE800000000000000;
  v8 = 0x73656C6369747261;
  if (v2 != 4)
  {
    v8 = 0x73646E657274;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000022856D770;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6867696C68676968;
    v9 = 0xEA00000000007374;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t Feed.kind.getter()
{
  v1 = [v0 kindRawValue];
  sub_22855D1AC();

  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  if (result == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22854B39C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 kindRawValue];
  sub_22855D1AC();

  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  if (result == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void sub_22854B460(_BYTE *a1, void **a2)
{
  v2 = *a2;
  *a1;
  *a1;
  v3 = sub_22855D17C();

  [v2 setKindRawValue_];
}

void (*Feed.kind.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 kindRawValue];
  sub_22855D1AC();

  v5 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  if (v5 == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v5;
    return sub_22854B680;
  }

  return result;
}

void sub_22854B680(uint64_t a1)
{
  *(a1 + 8);
  v1 = *a1;
  v2 = sub_22855D17C();

  [v1 setKindRawValue_];
}

void *Feed.allFeedItems.getter()
{
  v1 = [v0 sections];
  v2 = sub_22851F98C(v1, sub_22854C26C, 0);

  if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    goto LABEL_4;
  }

  while (2)
  {

    v6 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (!v13)
    {
      goto LABEL_57;
    }

LABEL_13:
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v40 = v6 + 32;
    v37 = v13;
    v38 = v6;
    while (v14 < *(v6 + 16))
    {
      v16 = *(v40 + 8 * v14);
      v17 = v16 >> 62;
      if (v16 >> 62)
      {
        if (v16 < 0)
        {
          v35 = *(v40 + 8 * v14);
        }

        v18 = sub_22855DB4C();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v15 >> 62;
      if (v15 >> 62)
      {
        v36 = sub_22855DB4C();
        v20 = v36 + v18;
        if (__OFADD__(v36, v18))
        {
LABEL_49:
          __break(1u);
          break;
        }
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          goto LABEL_49;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v2)
        {
          goto LABEL_28;
        }

        v21 = v15 & 0xFFFFFFFFFFFFFF8;
        v42 = v15;
        if (v20 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v2)
        {
LABEL_28:
          sub_22855DB4C();
          goto LABEL_29;
        }

        v21 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = *(v21 + 16);
LABEL_29:
      v42 = sub_22855DCBC();
      v21 = v42 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v23 = *(v21 + 16);
      v2 = *(v21 + 24);
      if (v17)
      {
        v25 = v21;
        v26 = sub_22855DB4C();
        v21 = v25;
        v24 = v26;
        if (v26)
        {
LABEL_34:
          if (((v2 >> 1) - v23) < v18)
          {
            goto LABEL_52;
          }

          v41 = v14;
          v27 = v21 + 8 * v23 + 32;
          v39 = v21;
          if (v17)
          {
            if (v24 < 1)
            {
              goto LABEL_54;
            }

            sub_22840CBD4(0, &qword_27D83F410, type metadata accessor for FeedItem, MEMORY[0x277D83940]);
            v2 = sub_22854C2F4(&qword_27D840B88, &qword_27D83F410, type metadata accessor for FeedItem, sub_22840CBD4);
            for (i = 0; i != v24; ++i)
            {
              v29 = sub_2284A523C(v43, i, v16);
              v31 = *v30;
              (v29)(v43, 0);
              *(v27 + 8 * i) = v31;
            }

            v13 = v37;
            v6 = v38;
          }

          else
          {
            type metadata accessor for FeedItem();
            swift_arrayInitWithCopy();
          }

          v14 = v41;
          if (v18 > 0)
          {
            v32 = *(v39 + 16);
            v33 = __OFADD__(v32, v18);
            v34 = v32 + v18;
            if (v33)
            {
              goto LABEL_53;
            }

            *(v39 + 16) = v34;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_34;
        }
      }

      if (v18 > 0)
      {
        goto LABEL_51;
      }

LABEL_15:
      ++v14;
      v15 = v42;
      if (v14 == v13)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v3 = sub_22855DB4C();
    if (!v3)
    {
      continue;
    }

    break;
  }

LABEL_4:
  v43[0] = MEMORY[0x277D84F90];
  result = sub_228427850(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v43[0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 feedItems];
      v10 = sub_22851F96C(v9, sub_22851FE10, 0);

      v43[0] = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_228427850((v11 > 1), v12 + 1, 1);
        v6 = v43[0];
      }

      ++v5;
      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
    }

    while (v3 != v5);

    v13 = *(v6 + 16);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_57:
    v15 = MEMORY[0x277D84F90];
LABEL_58:

    return v15;
  }

  return result;
}

uint64_t Feed.diagnosticDescription.getter()
{
  v1 = v0;
  v2 = sub_22855C16C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855C06C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0x2064656546, 0xE500000000000000);
  v12 = [v0 objectID];
  v13 = [v12 URIRepresentation];

  sub_22855C00C();
  v14 = sub_22855BF7C();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AAB92A0](v14, v16);

  MEMORY[0x22AAB92A0](0x646E696B20666F20, 0xE900000000000020);
  v17 = [v1 kindRawValue];
  sub_22855D1AC();

  v18 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  if (v18 == 6)
  {
    goto LABEL_19;
  }

  v19 = Feed.Kind.description.getter(v18);
  MEMORY[0x22AAB92A0](v19);

  MEMORY[0x22AAB92A0](0xD000000000000012, 0x8000000228574B30);
  v20 = [v1 dateUpdated];
  sub_22855C13C();

  sub_22854C360(&qword_280DECD88, MEMORY[0x277CC9578]);
  v21 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v21);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AAB92A0](0x20646565460A2ELL, 0xE700000000000000);
  v22 = [v1 kindRawValue];
  sub_22855D1AC();

  v23 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0();
  if (v23 == 6)
  {
LABEL_19:
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    v24 = Feed.Kind.description.getter(v23);
    MEMORY[0x22AAB92A0](v24);

    MEMORY[0x22AAB92A0](0x6E6961746E6F6320, 0xEA00000000002073);
    v25 = [v1 sections];
    v26 = [v25 count];

    v40[0] = v26;
    v27 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v27);

    MEMORY[0x22AAB92A0](0x6E6F697463657320, 0xEB000000000A3A73);
    v28 = v41[0];
    v29 = [v1 sections];
    v30 = sub_22851F98C(v29, sub_22854C26C, 0);

    if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_17;
    }

    for (i = *(v30 + 16); i; i = sub_22855DB4C())
    {
      v32 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x22AAB9D20](v32, v30);
        }

        else
        {
          if (v32 >= *(v30 + 16))
          {
            goto LABEL_16;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v40[0] = 0;
        v40[1] = 0xE000000000000000;
        sub_22855DC6C();

        v39[1] = v32;
        strcpy(v40, "FeedSection ");
        BYTE5(v40[1]) = 0;
        HIWORD(v40[1]) = -5120;
        v36 = sub_22855E11C();
        MEMORY[0x22AAB92A0](v36);

        MEMORY[0x22AAB92A0](2618, 0xE200000000000000);
        MEMORY[0x22AAB92A0](v40[0], v40[1]);

        v37 = FeedSection.diagnosticDescription.getter();
        v28 = v41;
        MEMORY[0x22AAB92A0](v37);

        ++v32;
        if (v35 == i)
        {
          v28 = v41[0];
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_14:

    return v28;
  }

  return result;
}

uint64_t sub_22854C26C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22854A170(a1, type metadata accessor for FeedSection);
  *a2 = result;
  return result;
}

uint64_t _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_22855DFBC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22854C2F4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    a4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22854C360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22854C3AC()
{
  result = qword_280DE9FD0;
  if (!qword_280DE9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9FD0);
  }

  return result;
}

unint64_t sub_22854C454()
{
  result = qword_27D840BA0;
  if (!qword_27D840BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BA0);
  }

  return result;
}

uint64_t Publisher.firstIfNecessary(for:)(uint64_t a1)
{
  v2 = sub_22855CBAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = (a1 + *(type metadata accessor for GeneratorContext() + 28));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  if ((*(v9 + 16))(v8, v9))
  {

    return sub_22855CE6C();
  }

  else
  {
    sub_22855CEDC();
    swift_getWitnessTable();
    v11 = sub_22855CE6C();
    (*(v3 + 8))(v6, v2);
    return v11;
  }
}

uint64_t sub_22854C648()
{
  v1 = v0;
  sub_22854E3B0();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GeneratorContext();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v43 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22854E444();
  v50 = v13;
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E540();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E650(v1, v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_22854ED30(v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  sub_22854E4D8(0);
  v23 = v22;
  v44 = sub_22854E4F8(&qword_280DE9920, sub_22854E4D8);
  sub_22855CE2C();
  v24 = *(v10 + 28);
  v46 = v1;
  v25 = v1 + v24;
  v26 = v43;
  sub_22854E650(v25, v43, type metadata accessor for GeneratorContext);
  v27 = (v26 + *(v6 + 36));
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v6) = (*(v29 + 16))(v28, v29);
  sub_22854E4F8(&qword_280DE9768, sub_22854E444);
  if (v6)
  {
    v30 = sub_22855CE6C();
  }

  else
  {
    v39[1] = v23;
    v31 = v40;
    sub_22855CEDC();
    sub_22854E4F8(&qword_280DE9B08, sub_22854E3B0);
    v32 = v42;
    v30 = sub_22855CE6C();
    (*(v41 + 8))(v31, v32);
  }

  (*(v45 + 8))(v16, v50);
  sub_22854D190(v26);
  v51 = v30;
  sub_22854E650(v46, v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v33 = swift_allocObject();
  sub_22854ED30(v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v20, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22854E86C;
  *(v34 + 24) = v33;
  sub_22847FFA8();
  v35 = v47;
  sub_22855CE8C();

  sub_22854E4F8(&qword_280DE9BE0, sub_22854E540);
  v36 = v49;
  v37 = sub_22855CE6C();
  (*(v48 + 8))(v35, v36);
  return v37;
}

uint64_t ChangePublisherFeedItemGeneratorPipeline.publisher.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GeneratorContext();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v53 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = v11;
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = sub_22855CE3C();
  v48 = *(v46 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = v39 - v14;
  swift_getAssociatedTypeWitness();
  v51 = sub_22855CCCC();
  v50 = sub_22847FFA8();
  WitnessTable = swift_getWitnessTable();
  v52 = sub_22855CB6C();
  v54 = *(v52 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v47 = v39 - v16;
  v42 = *(v9 + 16);
  v39[0] = v12;
  v42(v12, v2, a1);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v45;
  *(v18 + 16) = a1;
  *(v18 + 24) = v19;
  v20 = *(v9 + 32);
  v39[1] = v9 + 32;
  v40 = v20;
  v21 = v12;
  v22 = a1;
  v20(v18 + v17, v21, a1);
  v23 = v44;
  sub_22855CE2C();
  v24 = v19;
  v25 = *(v19 + 48);
  v26 = v53;
  v27 = v2;
  v28 = v22;
  v25(v22, v24);
  v29 = v46;
  swift_getWitnessTable();
  v30 = v23;
  v31 = Publisher.firstIfNecessary(for:)(v26);
  sub_22854D190(v26);
  (*(v48 + 8))(v30, v29);
  v55 = v31;
  v32 = v39[0];
  v42(v39[0], v27, v28);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  *(v33 + 24) = v24;
  v40(v33 + v17, v32, v28);
  v34 = swift_allocObject();
  v34[2] = v28;
  v34[3] = v24;
  v34[4] = sub_22854DE88;
  v34[5] = v33;
  v35 = v47;
  sub_22855CE8C();

  v36 = v52;
  swift_getWitnessTable();
  v37 = sub_22855CE6C();
  (*(v54 + 8))(v35, v36);
  return v37;
}

uint64_t sub_22854D128()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 64))();
}

uint64_t sub_22854D190(uint64_t a1)
{
  v2 = type metadata accessor for GeneratorContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22854D1EC@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a2;
  v62 = a1;
  v75 = a3;
  sub_22854E958();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854EB04();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GeneratorContext();
  v65 = *(v12 - 8);
  v64 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v60 - v15;
  v16 = sub_22855C37C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E9EC();
  v73 = v25;
  v76 = *(v25 - 8);
  v26 = *(v76 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v72 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v60 - v29;
  sub_22854E650(a2, v24, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v17 + 16))(v19, v62, v16);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = (v23 + *(v17 + 80) + v30) & ~*(v17 + 80);
  v32 = swift_allocObject();
  sub_22854ED30(v24, v32 + v30, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v17 + 32))(v32 + v31, v19, v16);
  sub_22854EA80(0);
  sub_22854E4F8(&qword_280DE98F0, sub_22854EA80);
  v33 = v74;
  sub_22855CE2C();
  v34 = *(v21 + 28);
  v62 = type metadata accessor for GeneratorContext;
  v35 = v61;
  sub_22854E650(v61 + v34, v77, type metadata accessor for GeneratorContext);
  v36 = v35;
  v37 = *v35;
  v38 = v36[1];
  v39 = v36[2];
  LOBYTE(v31) = *(v36 + 24);
  v40 = v36 + *(v21 + 32);
  v41 = *v40;
  v42 = *(v40 + 1);
  v43 = *(v40 + 2);
  LOBYTE(v24) = v40[24];
  (*(v76 + 16))(v72, v33, v73);
  v44 = v75;
  *v75 = v37;
  v44[1] = v38;
  v44[2] = v39;
  *(v44 + 24) = v31;
  v44[5] = v41;
  v44[6] = v42;
  v44[7] = v43;
  *(v44 + 64) = v24;
  v45 = v37;

  sub_22845063C(v41, v42, v43, v24);
  sub_22854E4F8(&qword_280DE9758, sub_22854E9EC);
  v46 = v66;
  sub_22855CEDC();
  v48 = v62;
  v47 = v63;
  sub_22854E650(v77, v63, v62);
  v49 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v50 = (v64 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_22854ED30(v47, v51 + v49, v48);
  v52 = v51 + v50;
  *v52 = v41;
  *(v52 + 8) = v42;
  *(v52 + 16) = v43;
  *(v52 + 24) = v24;
  sub_22845063C(v41, v42, v43, v24);
  sub_2284773B4();
  sub_22854E4F8(&qword_280DE9AF8, sub_22854E958);
  v54 = v67;
  v53 = v68;
  sub_22855CE8C();

  (*(v69 + 8))(v46, v53);
  sub_22854E4F8(&qword_280DE9B68, sub_22854EB04);
  v55 = v70;
  v56 = sub_22855CE6C();
  (*(v71 + 8))(v54, v55);
  v57 = *(v76 + 8);
  v58 = v73;
  v57(v72, v73);
  sub_22854D190(v77);
  result = (v57)(v74, v58);
  v75[4] = v56;
  return result;
}

uint64_t sub_22854D934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v49 = a1;
  v52 = a5;
  v8 = type metadata accessor for GeneratorContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v46 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v40 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = sub_22855CE3C();
  v50 = *(v48 - 8);
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v41 = &v40 - v21;
  (*(v15 + 16))(v17, a2, a3);
  v22 = v14;
  v23 = v14;
  v24 = AssociatedTypeWitness;
  (*(v11 + 16))(v22, v49, AssociatedTypeWitness);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = (v16 + v25 + *(v11 + 80)) & ~*(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  (*(v15 + 32))(v27 + v25, v17, a3);
  (*(v11 + 32))(v27 + v26, v23, v24);
  v28 = v41;
  sub_22855CE2C();
  v29 = v51;
  (*(a4 + 48))(a3, a4);
  (*(*(a4 + 8) + 16))(&v56, a3);
  v53 = v56;
  v54 = v57;
  v55 = v58;
  v30 = (*(a4 + 56))(a3, a4);
  v32 = v31;
  v34 = v33;
  LODWORD(a4) = v35;
  v36 = v50;
  v38 = v47;
  v37 = v48;
  (*(v50 + 16))(v47, v28, v48);
  swift_getWitnessTable();
  FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)(v29, &v53, v30, v32, v34, a4, v38, v37, v52);
  return (*(v36 + 8))(v28, v37);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22854DEC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  a2[3] = &type metadata for FeedItemGenerator;
  a2[4] = &protocol witness table for FeedItemGenerator;
  *a2 = swift_allocObject();
  return v5(a1);
}

uint64_t SynchronousChangePublisherFeedItemGeneratorPipeline.makeFeedItemsPublisher(change:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23[0] = a3;
  v23[1] = a4;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v23 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v5, a2);
  (*(v10 + 16))(v14, a1, AssociatedTypeWitness);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + *(v10 + 80)) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v23[0];
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v15 + 32))(v20 + v18, v17, a2);
  (*(v10 + 32))(v20 + v19, v14, AssociatedTypeWitness);
  sub_228504C5C(0);
  sub_22854E4F8(&qword_280DE9840, sub_228504C5C);
  return sub_22855CE2C();
}

uint64_t sub_22854E1E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  v4 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  (*(v2 + 16))(v0 + ((v3 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
  sub_2285030FC(0);
  return sub_22855CDCC();
}

void sub_22854E3B0()
{
  if (!qword_280DE9B00)
  {
    sub_22854E444();
    sub_22854E4F8(&qword_280DE9768, sub_22854E444);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B00);
    }
  }
}

void sub_22854E444()
{
  if (!qword_280DE9760)
  {
    sub_22854E4D8(255);
    sub_22854E4F8(&qword_280DE9920, sub_22854E4D8);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9760);
    }
  }
}

uint64_t sub_22854E4F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22854E540()
{
  if (!qword_280DE9BD8)
  {
    sub_22854E4D8(255);
    sub_22847FFA8();
    sub_22854E4F8(&qword_280DE9920, sub_22854E4D8);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9BD8);
    }
  }
}

uint64_t sub_22854E5EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  result = sub_2284506B8();
  *a1 = result;
  return result;
}

uint64_t sub_22854E650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = (v0 + v3 + v1[5]);

  v9 = type metadata accessor for GeneratorContext();
  v10 = v8 + v9[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11 = *(v10 + 1);

    v12 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v13 = sub_22855C16C();
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
  }

  __swift_destroy_boxed_opaque_existential_0((v8 + v9[7]));
  __swift_destroy_boxed_opaque_existential_0((v8 + v9[8]));
  sub_228451F14(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), *(v5 + v1[6] + 24));
  v14 = *(v5 + v1[7]);

  v15 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22854E86C@<X0>(uint64_t (*a1)()@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22854D1EC(a1, v6, a2);
}

uint64_t sub_22854E8EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  a2[3] = &type metadata for FeedItemGenerator;
  a2[4] = &protocol witness table for FeedItemGenerator;
  *a2 = swift_allocObject();
  return v5(a1);
}

void sub_22854E958()
{
  if (!qword_280DE9AF0)
  {
    sub_22854E9EC();
    sub_22854E4F8(&qword_280DE9758, sub_22854E9EC);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AF0);
    }
  }
}

void sub_22854E9EC()
{
  if (!qword_280DE9750)
  {
    sub_22854EA80(255);
    sub_22854E4F8(&qword_280DE98F0, sub_22854EA80);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9750);
    }
  }
}

void sub_22854EAA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CCCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22854EB04()
{
  if (!qword_280DE9B60)
  {
    sub_22854E958();
    sub_2284773B4();
    sub_22854E4F8(&qword_280DE9AF8, sub_22854E958);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B60);
    }
  }
}

void *sub_22854EBB0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_22854E4F8(&qword_280DEA1E0, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v5 = *(v4 + 72);
  v6 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  result = v5(&v8, a1, v6, v4);
  *a2 = v8;
  return result;
}

void *sub_22854EC5C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22855C37C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22854EBB0(v7, a1);
}

uint64_t sub_22854ED30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22854ED98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(v2 + 72))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)), v1, v2);
}

void sub_22854EEE0()
{
  v1 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-v8];
  v10 = [v0 URL];
  if (v10)
  {
    v11 = v10;
    sub_22855C00C();

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);
    v13 = sub_22855CA8C();
    v14 = sub_22855D66C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2283ED000, v13, v14, "Destroying Core Data persistent store", v15, 2u);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CBE450]) init];
    v17 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];

    v18 = sub_22855BFBC();
    v19 = [v1 type];
    if (!v19)
    {
      sub_22855D1AC();
      v19 = sub_22855D17C();
    }

    v53[0] = 0;
    v20 = [v17 destroyPersistentStoreAtURL:v18 withType:v19 options:0 error:v53];

    if (v20)
    {
      v21 = *(v3 + 8);
      v22 = v53[0];
      v21(v9, v2);
    }

    else
    {
      v31 = v53[0];
      v32 = sub_22855BF3C();

      swift_willThrow();
      (*(v3 + 16))(v7, v9, v2);
      v33 = v32;
      v34 = sub_22855CA8C();
      v35 = sub_22855D68C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53[0] = v51;
        *v36 = 136315394;
        v50 = v35;
        v37 = sub_22855BF7C();
        v39 = v38;
        v40 = *(v3 + 8);
        v40(v7, v2);
        v41 = sub_2283F8938(v37, v39, v53);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        v52 = v32;
        v42 = v32;
        sub_228418D44();
        v43 = sub_22855D1BC();
        v45 = sub_2283F8938(v43, v44, v53);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_2283ED000, v34, v50, "Could not destroy Core Data persistent store at %s Error: %s", v36, 0x16u);
        v46 = v51;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v46, -1, -1);
        MEMORY[0x22AABAD40](v36, -1, -1);

        v40(v9, v2);
      }

      else
      {

        v47 = *(v3 + 8);
        v47(v7, v2);
        v47(v9, v2);
      }
    }

    v48 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v23 = sub_22855CABC();
    __swift_project_value_buffer(v23, qword_280DEEC98);
    v24 = v0;
    v51 = sub_22855CA8C();
    v25 = sub_22855D68C();

    if (os_log_type_enabled(v51, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&dword_2283ED000, v51, v25, "Can't destroy store at description because description has no URL: %@", v26, 0xCu);
      sub_22841DC98(v27);
      MEMORY[0x22AABAD40](v27, -1, -1);
      MEMORY[0x22AABAD40](v26, -1, -1);
    }

    v29 = *MEMORY[0x277D85DE8];
    v30 = v51;
  }
}

uint64_t SharableModelContext.sharableModelChangePublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v3 = a3;
    v4 = a2;

    a2 = v4;
    a3 = v3;
  }

  else
  {
    v5 = 0;
  }

  v8[0] = v5;
  v8[1] = 0;
  v6 = (*(a3 + 48))(v8, a2);

  return v6;
}

{
  v5 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  v8[0] = 0;
  v8[1] = v5;
  v6 = (*(a3 + 48))(v8, a2, a3);

  return v6;
}

uint64_t PluginSharableModelQueryPredicate.init(identifiers:objectTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static PluginSharableModelQueryPredicate.unspecified.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DEA768 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_280DEA778;
  *a1 = qword_280DEA770;
  a1[1] = v1;
}

uint64_t dispatch thunk of SharableModelContext.previousSharableModelPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

uint64_t HealthKitProvider.environmentalStateComponents(observer:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855CFAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22840CB74(0, &qword_280DE8F48, &qword_280DE9E48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560580;
  *v7 = 1;
  (*(v4 + 104))(v7, *MEMORY[0x277D85188], v3);
  v9 = type metadata accessor for SummaryPinnedContentStateComponent();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = swift_unknownObjectRetain();
  v13 = sub_2284B1700(v12, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v7);
  v14 = sub_228550884(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent);
  *(v8 + 32) = v13;
  *(v8 + 40) = v14;
  return v8;
}

uint64_t sub_22854F938(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855CFAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22840CB74(0, &qword_280DE8F48, &qword_280DE9E48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560580;
  *v7 = 1;
  (*(v4 + 104))(v7, *MEMORY[0x277D85188], v3);
  v9 = type metadata accessor for SummaryPinnedContentStateComponent();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = swift_unknownObjectRetain();
  v13 = sub_2284B1700(v12, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v7);
  v14 = sub_228550884(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent);
  *(v8 + 32) = v13;
  *(v8 + 40) = v14;
  return v8;
}

void _s14HealthPlatform0A11KitProviderC12inputSignals3for8observerSay0A13Orchestration11InputSignal_pGAG11WorkContext_p_AG0jK8Observer_ptF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (!v12 || !a1)
  {
    return;
  }

  v13 = v12;
  v126 = MEMORY[0x277D84F90];
  ObjectType = swift_getObjectType();
  v120 = a1;
  v15 = ObjectType;
  v118 = v11;
  v16 = v7;
  v17 = v8;
  v18 = *(v13 + 16);
  swift_unknownObjectRetain();
  v121 = v15;
  v119 = v13;
  v19 = v18(v15, v13);
  v20 = a4;
  v21 = v17;
  v22 = v16;
  v23 = a3;
  if (v19)
  {
    v24 = v19;
    v115 = v21;
    v112[1] = v22;
    sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60);
    v116 = v25;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22856C680;
    type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = 0;
    v28 = type metadata accessor for CloudSyncStatusInputSignal();
    v29 = a4;
    v30 = objc_allocWithZone(v28);
    v31 = v24;
    v32 = swift_unknownObjectRetain();
    v33 = sub_22853D0AC(v32, a4, v27, v30);
    swift_unknownObjectRelease();
    *(inited + 56) = v28;
    *(inited + 64) = sub_228550884(qword_280DEAF50, type metadata accessor for CloudSyncStatusInputSignal);
    *(inited + 32) = v33;
    InputSignal = type metadata accessor for DatabaseChangesQueryInputSignal();
    v35 = v120;
    v36 = *(v119 + 8);
    v37 = v121;
    v38 = sub_22844AA9C(v120, v23, v29, v31, InputSignal, v121, v36);
    *(inited + 96) = InputSignal;
    *(inited + 104) = sub_228550884(&qword_280DEAA08, type metadata accessor for DatabaseChangesQueryInputSignal);
    *(inited + 72) = v38;
    v39 = type metadata accessor for FeatureStatusInputSignal();
    swift_unknownObjectRetain_n();
    v40 = v31;
    swift_unknownObjectRetain_n();
    v41 = v40;
    v42 = sub_22844F228(v35, v23, v29, v41, v39, v37, v36);
    *(inited + 136) = v39;
    *(inited + 144) = sub_228550884(&unk_280DEB9D0, type metadata accessor for FeatureStatusInputSignal);
    *(inited + 112) = v42;
    v43 = type metadata accessor for HealthKitUnitPreferencesInputSignal();
    v44 = sub_2284C5B20(v35, v23, v29, v41, v43, v37, v36);
    *(inited + 176) = v43;
    *(inited + 184) = sub_228550884(&qword_280DEC680, type metadata accessor for HealthKitUnitPreferencesInputSignal);
    *(inited + 152) = v44;
    v45 = type metadata accessor for MedicalIDChangesInputSignal();
    swift_unknownObjectRetain_n();
    v46 = v41;
    swift_unknownObjectRetain();
    v47 = sub_2284F0C40(v35, v23, v29, v46, 0, v45, v37, v36);
    *(inited + 216) = v45;
    *(inited + 224) = sub_228550884(&qword_280DEAE78, type metadata accessor for MedicalIDChangesInputSignal);
    *(inited + 192) = v47;
    v48 = type metadata accessor for ObjectTypeAnchorQueryInputSignal();
    v117 = v29;
    v114 = v36;
    v49 = sub_228534EA0(v35, v23, v29, v46, v48, v37, v36);
    *(inited + 256) = v48;
    *(inited + 264) = sub_228550884(&qword_280DEA848, type metadata accessor for ObjectTypeAnchorQueryInputSignal);
    *(inited + 232) = v49;
    v50 = qword_280DED1C0;
    v51 = v46;
    swift_unknownObjectRetain();
    v52 = v51;
    swift_unknownObjectRetain();
    if (v50 != -1)
    {
      swift_once();
    }

    v53 = qword_280DED1C8;
    v54 = type metadata accessor for DefaultProfileNotificationSettingsSource();
    v55 = objc_allocWithZone(v54);
    *&v55[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = v52;
    sub_2284BF424();
    v56 = swift_allocObject();
    *(v56 + 40) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v53;
    *&v55[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v56;
    v122.receiver = v55;
    v122.super_class = v54;
    v57 = v53;
    v58 = objc_msgSendSuper2(&v122, sel_init);

    v59 = type metadata accessor for ProfileNotificationSettingsInputSignal();
    v60 = swift_allocObject();
    v60[7] = v54;
    v60[8] = &protocol witness table for DefaultProfileNotificationSettingsSource;
    v60[2] = v23;
    v60[3] = v117;
    v60[4] = v58;
    *(inited + 296) = v59;
    *(inited + 304) = sub_228550884(qword_280DEA138, type metadata accessor for ProfileNotificationSettingsInputSignal);
    *(inited + 272) = v60;
    v61 = type metadata accessor for SummarySharingInputSignal();
    v62 = v119;
    v63 = *(v119 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v113 = v52;
    v64 = v121;
    v65 = v63(v121, v62);
    swift_unknownObjectRetain();
    v66 = v117;
    v67 = v114;
    v68 = sub_22846EE9C(v35, v23, v117, v65, v61, v64, v114);
    *(inited + 336) = v61;
    *(inited + 344) = sub_228550884(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal);
    *(inited + 312) = v68;
    v69 = type metadata accessor for SummaryTransactionInputSignal();
    swift_unknownObjectRetain();
    v70 = v113;
    swift_unknownObjectRetain();
    v71 = v35;
    v20 = v66;
    v72 = sub_22850D89C(v71, v23, v66, v70, v69, v64, v67);
    *(inited + 376) = v69;
    *(inited + 384) = sub_228550884(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal);
    *(inited + 352) = v72;
    sub_2284A7E3C(inited);
    v73 = [v70 profileIdentifier];
    v74 = [v73 type];

    if (v74 == 2)
    {
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_228560570;
      v76 = type metadata accessor for PreferredSummaryTransactionInputSignal();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = swift_allocObject();
      v80 = swift_unknownObjectRetain();
      v81 = sub_2284E153C(v80, v66, sub_2284EEB70, 0, v79);
      *(v75 + 56) = v76;
      *(v75 + 64) = sub_228550884(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal);
      *(v75 + 32) = v81;
      v82 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal();
      swift_allocObject();
      v83 = v67;
      v84 = v70;
      v85 = swift_unknownObjectRetain();
      v86 = v84;
      v67 = v83;
      v64 = v121;
      SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(v85, v66, v86);
      v88 = v87;
      *(v75 + 96) = v82;
      *(v75 + 104) = sub_228550884(&qword_27D8406D8, type metadata accessor for SummarySharingProfileDisplayNameInputSignal);
      *(v75 + 72) = v88;
      sub_2284A7E3C(v75);
    }

    v89 = [v70 profileIdentifier];
    v90 = [v89 type];

    if (v90 == 1)
    {
      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_228560580;
      v92 = type metadata accessor for PregnancyStateInputSignal();
      v93 = v67;
      v94 = v120;
      swift_unknownObjectRetain();
      v95 = v70;
      swift_unknownObjectRetain();
      v96 = sub_22848EFC4(v94, v23, v20, v95, v92, v64, v93);
      *(v91 + 56) = v92;
      *(v91 + 64) = sub_228550884(&unk_280DEB2D0, type metadata accessor for PregnancyStateInputSignal);
      *(v91 + 32) = v96;
      sub_2284A7E3C(v91);
    }

    v97 = [objc_opt_self() sharedBehavior];
    if (v97)
    {
      v98 = v97;
      v99 = [v97 features];

      if (v99)
      {
        v100 = [v99 simplifiedLogging];

        if (v100)
        {
          v101 = swift_initStackObject();
          *(v101 + 16) = xmmword_228560580;
          v70 = v70;
          v102 = swift_unknownObjectRetain();
          v103 = sub_22841D408(v102, v20, v70);
          *(v101 + 56) = type metadata accessor for LoggingPinnedContentEmptyInputSignal();
          *(v101 + 64) = sub_228550884(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal);
          *(v101 + 32) = v103;
          sub_2284A7E3C(v101);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_15:
  v104 = type metadata accessor for HealthAppBuddyCompleteInputSignal();
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  swift_allocObject();
  v107 = swift_unknownObjectRetain();
  v108 = HealthAppBuddyCompleteInputSignal.init(observer:)(v107, v20);
  v109 = v126;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v109 = sub_228427160(0, v109[2] + 1, 1, v109);
  }

  v111 = v109[2];
  v110 = v109[3];
  if (v111 >= v110 >> 1)
  {
    v109 = sub_228427160((v110 > 1), v111 + 1, 1, v109);
  }

  swift_unknownObjectRelease();
  v124 = v104;
  v125 = sub_228550884(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal);
  *&v123 = v108;
  v109[2] = v111 + 1;
  sub_2283FAB3C(&v123, &v109[5 * v111 + 4]);
}

uint64_t sub_228550884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2285508CC(uint64_t a1)
{
  v3 = type metadata accessor for UserProfile();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22855DB4C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v41 = v6;
  v50 = MEMORY[0x277D84F90];
  sub_228427360(0, v7 & ~(v7 >> 63), 0);
  v8 = v50;
  if (v44)
  {
    result = sub_22855DAEC();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_22855DAAC();
    v10 = *(a1 + 36);
  }

  v47 = result;
  v48 = v10;
  v49 = v44 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v38 = a1 + 56;
    v39 = v13;
    v36[1] = v1;
    v37 = a1 + 64;
    v40 = v7;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_37;
      }

      v16 = v47;
      v17 = v49;
      v45 = v48;
      v18 = a1;
      sub_22845F898(v47, v48, v49, a1);
      v20 = v19;
      v21 = Profile.hkProfileIdentifier.getter();
      v22 = [v21 identifier];
      v23 = v41;
      sub_22855C1BC();

      *(v23 + *(v43 + 20)) = v21;
      v50 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_228427360(v24 > 1, v25 + 1, 1);
        v23 = v41;
        v8 = v50;
      }

      *(v8 + 16) = v25 + 1;
      result = sub_2284602F8(v23, v8 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25);
      if (v44)
      {
        if (!v17)
        {
          goto LABEL_42;
        }

        a1 = v18;
        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v40;
        sub_22842C0E0();
        v14 = sub_22855D54C();
        sub_22855DBBC();
        result = v14(v46, 0);
        if (v12 == v7)
        {
LABEL_34:
          sub_228416CB8(v47, v48, v49);
          return v8;
        }
      }

      else
      {
        if (v17)
        {
          goto LABEL_43;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        a1 = v18;
        v26 = 1 << *(v18 + 32);
        if (v16 >= v26)
        {
          goto LABEL_38;
        }

        v27 = v16 >> 6;
        v28 = *(v38 + 8 * (v16 >> 6));
        if (((v28 >> v16) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v18 + 36) != v45)
        {
          goto LABEL_40;
        }

        v29 = v28 & (-2 << (v16 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v37 + 8 * v27);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_228416CB8(v16, v45, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v16, v45, 0);
        }

LABEL_33:
        v35 = *(v18 + 36);
        v47 = v26;
        v48 = v35;
        v49 = 0;
        v7 = v40;
        if (v12 == v40)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t UserProfile.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Profile.hkProfileIdentifier.getter();
  v5 = [v4 identifier];
  sub_22855C1BC();

  result = type metadata accessor for UserProfile();
  *(a2 + *(result + 20)) = v4;
  return result;
}

void PluginStorage.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  v5 = sub_22855D1AC();
  v7 = v6;

  v8 = [a1 profiles];
  type metadata accessor for Profile();
  sub_2284D7530();
  v9 = sub_22855D51C();

  v10 = sub_2285508CC(v9);

  v11 = sub_2284C2CD4(v10);

  v12 = [a1 data];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22855C09C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  sub_22842B378(0, 0xF000000000000000);
  v17 = [a1 plugin];
  v18 = [v17 package];

  v19 = sub_22855D1AC();
  v21 = v20;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v11;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v21;
}

uint64_t sub_228550EC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7954788;
    }

    else
    {
      v4 = 1920298856;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1801807223;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1918985593;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7954788;
    }

    else
    {
      v9 = 1920298856;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x68746E6F6DLL;
    if (a2 != 3)
    {
      v6 = 1918985593;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1801807223;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_22855E15C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

HealthPlatform::FeedItemTimeScope_optional __swiftcall FeedItemTimeScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedItemTimeScope.rawValue.getter()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 1801807223;
  v4 = 0x68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 1918985593;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7954788;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2285510F4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2285511B4()
{
  *v0;
  *v0;
  *v0;
  sub_22855D20C();
}

uint64_t sub_228551260()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

void sub_228551328(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1920298856;
  v5 = 0xE400000000000000;
  v6 = 1801807223;
  v7 = 0xE500000000000000;
  v8 = 0x68746E6F6DLL;
  if (v2 != 3)
  {
    v8 = 1918985593;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7954788;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22855148C()
{
  result = qword_27D840BA8;
  if (!qword_27D840BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BA8);
  }

  return result;
}

unint64_t sub_2285514E4()
{
  result = qword_27D840BB0;
  if (!qword_27D840BB0)
  {
    sub_22855153C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BB0);
  }

  return result;
}

void sub_22855153C()
{
  if (!qword_27D840BB8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840BB8);
    }
  }
}

unint64_t sub_2285515AC()
{
  result = qword_280DEE5B8;
  if (!qword_280DEE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE5B8);
  }

  return result;
}

uint64_t RelevantDateInterval.init(interval:rampUpTime:rampDownTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_22855BE1C();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for RelevantDateInterval();
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t RelevantDateInterval.init(interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22855BE1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelevantDateInterval();
  v17 = *(v9 - 8);
  v10 = *(v17 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_228552958(a1, sub_228501D8C);
    v13 = *(v17 + 56);

    return v13(a2, 1, 1, v9);
  }

  else
  {
    v15 = *(v5 + 32);
    v15(v8, a1, v4);
    v15(v12, v8, v4);
    *&v12[*(v9 + 20)] = 0;
    *&v12[*(v9 + 24)] = 0;
    sub_22845CCB4(v12, a2);
    return (*(v17 + 56))(a2, 0, 1, v9);
  }
}

uint64_t RelevantDateInterval.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22855BE1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RelevantDateInterval.interval.setter(uint64_t a1)
{
  v3 = sub_22855BE1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RelevantDateInterval.rampUpTime.setter(double a1)
{
  result = type metadata accessor for RelevantDateInterval();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RelevantDateInterval.rampDownTime.setter(double a1)
{
  result = type metadata accessor for RelevantDateInterval();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RelevantDateInterval.dateOfInitialRelevance.getter()
{
  v1 = sub_22855C16C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BE0C();
  v6 = -*(v0 + *(type metadata accessor for RelevantDateInterval() + 20));
  sub_22855C0FC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t RelevantDateInterval.dateOfFinalRelevance.getter()
{
  v1 = sub_22855C16C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BDEC();
  v6 = *(v0 + *(type metadata accessor for RelevantDateInterval() + 24));
  sub_22855C0FC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t RelevantDateInterval.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = *(v5 + 16);
  v10(&v13 - v11, a1, v4);
  v10(v9, a1, v4);
  sub_22855BDFC();
  (*(v5 + 8))(a1, v4);
  result = type metadata accessor for RelevantDateInterval();
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

BOOL static RelevantDateInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22855BDDC() & 1) != 0 && (v4 = type metadata accessor for RelevantDateInterval(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228551E78()
{
  v1 = 0x69547055706D6172;
  if (*v0 != 1)
  {
    v1 = 0x6E776F44706D6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_228551EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228552B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228551F08(uint64_t a1)
{
  v2 = sub_228552178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228551F44(uint64_t a1)
{
  v2 = sub_228552178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelevantDateInterval.encode(to:)(void *a1)
{
  v3 = v1;
  sub_228552890(0, &qword_280DE9010, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228552178();
  sub_22855E31C();
  v16[15] = 0;
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD8, MEMORY[0x277CC88A8]);
  sub_22855E0CC();
  if (!v2)
  {
    v12 = type metadata accessor for RelevantDateInterval();
    v13 = *(v3 + *(v12 + 20));
    v16[14] = 1;
    sub_22855E0AC();
    v14 = *(v3 + *(v12 + 24));
    v16[13] = 2;
    sub_22855E0AC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_228552178()
{
  result = qword_280DED708[0];
  if (!qword_280DED708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DED708);
  }

  return result;
}

uint64_t RelevantDateInterval.hash(into:)()
{
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8]);
  sub_22855D14C();
  v1 = type metadata accessor for RelevantDateInterval();
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x22AABA2E0](*&v3);
}

uint64_t RelevantDateInterval.hashValue.getter()
{
  sub_22855E22C();
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8]);
  sub_22855D14C();
  v1 = type metadata accessor for RelevantDateInterval();
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v3);
  return sub_22855E27C();
}

uint64_t RelevantDateInterval.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_22855BE1C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228552890(0, &qword_280DE9048, MEMORY[0x277D844C8]);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RelevantDateInterval();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228552178();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v26;
  v32 = 0;
  sub_228552A00(&qword_280DECDC8, MEMORY[0x277CC88A8]);
  v18 = v28;
  sub_22855E03C();
  v19 = *(v17 + 32);
  v20 = v29;
  v29 = v4;
  v19(v16, v20, v4);
  v31 = 1;
  sub_22855E01C();
  *(v16 + *(v11 + 20)) = v21;
  v30 = 2;
  sub_22855E01C();
  v23 = v22;
  (*(v27 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v23;
  sub_2285528F4(v16, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_228552958(v16, type metadata accessor for RelevantDateInterval);
}

uint64_t sub_2285527B8(uint64_t a1, uint64_t a2)
{
  sub_22855E22C();
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8]);
  sub_22855D14C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v4);
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v5);
  return sub_22855E27C();
}

void sub_228552890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228552178();
    v7 = a3(a1, &type metadata for RelevantDateInterval.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2285528F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228552958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228552A00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228552A70()
{
  result = qword_27D840BC8;
  if (!qword_27D840BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BC8);
  }

  return result;
}

unint64_t sub_228552AC8()
{
  result = qword_280DED6F8;
  if (!qword_280DED6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED6F8);
  }

  return result;
}

unint64_t sub_228552B20()
{
  result = qword_280DED700;
  if (!qword_280DED700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED700);
  }

  return result;
}

uint64_t sub_228552B74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69547055706D6172 && a2 == 0xEA0000000000656DLL || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F44706D6172 && a2 == 0xEC000000656D6954)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t HealthAppBuddyCompleteInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  HealthAppBuddyCompleteInputSignal.init(observer:)(a1, a2);
  return v7;
}

uint64_t static InputSignalSet.LookupKey.healthAppBuddyComplete.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for HealthAppBuddyCompleteInputSignal();
  return sub_22855C61C();
}

uint64_t sub_228552DAC(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE358]);

  return v2 & 1;
}

uint64_t sub_228552DE8(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE350]);

  return v2 & 1;
}

id sub_228552E24(void *a1)
{
  if ([v1 valueForKey_])
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v2 = [v4 BOOLValue];

      return v2;
    }
  }

  else
  {
    sub_22843D15C(v7);
  }

  return 0;
}

uint64_t sub_228552F04(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE368]);

  return v2 & 1;
}

uint64_t HealthAppBuddyCompleteInputSignal.observer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t HealthAppBuddyCompleteInputSignal.Errors.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t *HealthAppBuddyCompleteInputSignal.init(observer:)(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  v19 = *v2;
  sub_22855327C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2285532E4();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v2[4] = v9;
  v10 = *MEMORY[0x277CCE378];
  sub_22855D1AC();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_22855D17C();

  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = v20;
    v2[2] = v21;
    v2[3] = v14;
    v22 = v13;
    sub_2283EF310(0, &qword_280DED1B8, 0x277CBEBD0);
    sub_22855C6AC();
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults, v8, v4);
  }

  else
  {
    sub_228553344();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    v15 = v2[4];

    v16 = *(*v2 + 48);
    v17 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t type metadata accessor for HealthAppBuddyCompleteInputSignal()
{
  result = qword_280DEC990;
  if (!qword_280DEC990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22855327C()
{
  if (!qword_280DE9F20)
  {
    sub_2283EF310(255, &qword_280DED1B8, 0x277CBEBD0);
    v0 = sub_22855C69C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9F20);
    }
  }
}

void sub_2285532E4()
{
  if (!qword_280DE91A0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91A0);
    }
  }
}

unint64_t sub_228553344()
{
  result = qword_27D840BD0;
  if (!qword_27D840BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BD0);
  }

  return result;
}

Swift::Void __swiftcall HealthAppBuddyCompleteInputSignal.stopObservation()()
{
  v1 = v0[4];
  v2 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_2285540FC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_228553414(id *a1)
{
  v2 = type metadata accessor for HealthAppBuddyCompleteInputSignal.Observer();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  v16.receiver = v3;
  v16.super_class = v2;
  v4 = objc_msgSendSuper2(&v16, sel_init);
  *a1 = v4;
  v5 = *MEMORY[0x277CCE358];
  sub_22855D1AC();
  v6 = *MEMORY[0x277CCE350];
  sub_22855D1AC();
  v7 = *MEMORY[0x277CCE368];
  sub_22855D1AC();
  sub_22855327C();
  v8 = v4;

  sub_22855C68C();
  v9 = v17;
  v10 = sub_22855D17C();

  [v9 addObserver:v8 forKeyPath:v10 options:0 context:0];

  sub_22855C68C();
  v11 = v17;
  v12 = sub_22855D17C();

  [v11 addObserver:v8 forKeyPath:v12 options:0 context:0];

  sub_22855C68C();
  v13 = v17;
  v14 = sub_22855D17C();

  [v13 addObserver:v8 forKeyPath:v14 options:0 context:0];

  return swift_arrayDestroy();
}

void sub_228553658(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    v2 = *MEMORY[0x277CCE358];
    sub_22855D1AC();
    v3 = *MEMORY[0x277CCE350];
    sub_22855D1AC();
    v4 = *MEMORY[0x277CCE368];
    sub_22855D1AC();
    sub_22855327C();

    sub_22855C68C();
    v5 = sub_22855D17C();

    [v8 removeObserver:v1 forKeyPath:v5];

    sub_22855C68C();
    v6 = sub_22855D17C();

    [v8 removeObserver:v1 forKeyPath:v6];

    swift_arrayDestroy();
    sub_22855C68C();
    v7 = sub_22855D17C();

    [v8 removeObserver:v1 forKeyPath:v7];
  }
}

uint64_t sub_228553830()
{
  v1 = *v0;
  v2 = sub_22855C85C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22841D9D4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[2];
  v10 = v0[3];
  swift_getObjectType();
  sub_22855C84C();
  v14 = [objc_opt_self() hasCompletedBuddyWithVersion_];
  sub_22855C57C();
  v13 = v0;
  sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal);
  sub_22855C78C();
  return (*(v6 + 8))(v9, v5);
}

void *HealthAppBuddyCompleteInputSignal.deinit()
{
  v1 = v0;
  v2 = v0[4];
  v7 = *v0;
  os_unfair_lock_lock((v2 + 24));
  sub_228554540((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[2];

  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults;
  sub_22855327C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t HealthAppBuddyCompleteInputSignal.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0[4];
  v9 = *v0;
  os_unfair_lock_lock((v2 + 24));
  sub_228554540((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[2];

  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults;
  sub_22855327C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

id sub_228553D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppBuddyCompleteInputSignal.Observer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228553E20(uint64_t a1)
{
  v2 = sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t _s14HealthPlatform0A27AppBuddyCompleteInputSignalC16beginObservation4from14configurationsy0A13Orchestration11ValueAnchorVySbGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22855C85C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22841D9D4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0[4];
  v18 = v0;
  v19 = v2;
  os_unfair_lock_lock((v11 + 24));
  sub_228554540((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  v16 = v0;
  v17 = v2;
  os_unfair_lock_lock((v11 + 24));
  sub_228554524((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  v12 = v0[2];
  v13 = v1[3];
  swift_getObjectType();
  sub_22855C84C();
  LOBYTE(v20) = [objc_opt_self() hasCompletedBuddyWithVersion_];
  sub_22855C57C();
  v20 = v1;
  sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal);
  sub_22855C78C();
  return (*(v7 + 8))(v10, v6);
}

void sub_2285540FC(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_228553658(a1);
}

unint64_t sub_22855411C()
{
  result = qword_27D840BD8;
  if (!qword_27D840BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BD8);
  }

  return result;
}

void sub_228554208()
{
  sub_22855327C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_228554334()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22841D9D4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22855C84C();
    v9[15] = [objc_opt_self() hasCompletedBuddyWithVersion_];
    sub_22855C57C();
    sub_228553830();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2285544DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228554524(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_228553414(a1);
}

void sub_228554618()
{
  if (!qword_280DEEC28)
  {
    type metadata accessor for RelevantDateInterval();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEEC28);
    }
  }
}

uint64_t sub_228554678(uint64_t a1, uint64_t a2)
{
  sub_228554618();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2285546F0()
{
  result = swift_getKeyPath();
  qword_280DEBD08 = result;
  return result;
}

uint64_t static DateRangeFeatureTag.keyPath.getter()
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DateRangeFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD08 = a1;
}

uint64_t (*static DateRangeFeatureTag.keyPath.modify())()
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228554898()
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t type metadata accessor for DateRangeFeatureTag()
{
  result = qword_280DEE978;
  if (!qword_280DEE978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228554984()
{
  sub_228554618();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2285549F0()
{
  sub_22842D108();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x800000022856F950;
  *(inited + 72) = sub_22855C16C();
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_22855C15C();
  *(inited + 80) = 0xD000000000000038;
  *(inited + 88) = 0x800000022856FA10;
  v1 = objc_opt_self();
  v2 = [v1 hasPairedWatch];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v2;
  v3 = sub_22847C614(inited);
  swift_setDeallocating();
  sub_22842D160();
  swift_arrayDestroy();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 infoDictionary];

  if (v5)
  {
    v6 = sub_22855D0EC();

    result = *MEMORY[0x277CBED58];
    if (!*MEMORY[0x277CBED58])
    {
      __break(1u);
      return result;
    }

    v8 = sub_22855D1AC();
    if (*(v6 + 16))
    {
      v10 = sub_2283F6D18(v8, v9);
      v12 = v11;

      if (v12)
      {
        sub_2283F6E48(*(v6 + 56) + 32 * v10, &v34);

        v13 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v14 = v33[0];
          if (v33[0] == __PAIR128__(0xE400000000000000, 960051513) || (sub_22855E15C() & 1) != 0)
          {
            if (qword_280DEEBE8 != -1)
            {
              swift_once();
            }

            v15 = sub_22855CABC();
            __swift_project_value_buffer(v15, qword_280DEEBF0);

            v16 = sub_22855CA8C();
            v17 = sub_22855D6AC();

            if (os_log_type_enabled(v16, v17))
            {
              log = v16;
              v18 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *&v34 = v32;
              *v18 = 136315394;
              v19 = sub_22855E34C();
              v21 = sub_2283F8938(v19, v20, &v34);

              *(v18 + 4) = v21;
              *(v18 + 12) = 2080;
              v22 = sub_2283F8938(v14, *(&v14 + 1), &v34);

              *(v18 + 14) = v22;
              _os_log_impl(&dword_2283ED000, log, v17, "[%s] Skipping adding bundle version because it doesn't seem sane: %s", v18, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AABAD40](v32, -1, -1);
              MEMORY[0x22AABAD40](v18, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v35 = v13;
            v34 = v33[0];
            sub_228400400(&v34, v33);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_22845AC64(v33, 0xD000000000000032, 0x800000022856F990, isUniquelyReferenced_nonNull_native);
          }
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

LABEL_14:
  v23 = [v1 currentOSBuild];
  if (v23)
  {
    v24 = MEMORY[0x277D837D0];
    v25 = v23;
    v26 = sub_22855D1AC();
    v28 = v27;

    v35 = v24;
    *&v34 = v26;
    *(&v34 + 1) = v28;
    sub_228400400(&v34, v33);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_22845AC64(v33, 0xD000000000000031, 0x800000022856F9D0, v29);
  }

  return v3;
}

uint64_t sub_228554E94(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 0xC)
  {
    if (v2 == 13)
    {
      return 3;
    }

    if (v2 == 20)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 4)
    {
      if (sub_228409270(0xD000000000000028, 0x800000022856D500, a2))
      {
        return 5;
      }

      if (sub_228409270(0xD00000000000002CLL, 0x800000022856D350, a2))
      {
        return 5;
      }

      return 4;
    }

    if (v2 == 5)
    {
      v4 = sub_228409270(0xD000000000000028, 0x800000022856D500, a2);
      result = 2;
      if ((v4 & 1) == 0)
      {
        if (sub_228409270(0xD00000000000002CLL, 0x800000022856D350, a2))
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }
  }

  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_280DEEC78;

  v7 = sub_228425D94(v2, v6);

  if (v7)
  {
    return 3;
  }

  if (v2 == 3)
  {
    v8 = 11;
  }

  else
  {
    v8 = 12;
  }

  if (v2 == 15)
  {
    return 9;
  }

  else
  {
    return v8;
  }
}

void *HealthAppPluginNotificationManager.__allocating_init(healthStore:bundleIdentifier:notificationManager:primaryHealthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = a1;

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](a2, a3);

  v12 = type metadata accessor for HealthAppNotificationContentStateManager();
  v13 = v11;
  v14 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v13, 0, 0xE000000000000000);
  v10[10] = v12;
  v10[11] = sub_22855BB24(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager);

  v10[7] = v14;

  return v10;
}

uint64_t HealthAppPluginNotificationManager.init(healthStore:bundleIdentifier:notificationManager:primaryHealthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  v10 = a1;

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](a2, a3);

  v11 = type metadata accessor for HealthAppNotificationContentStateManager();
  v12 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(*(v5 + 24), 0, 0xE000000000000000);
  v15 = v11;
  v16 = sub_22855BB24(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager);

  *&v14 = v12;

  sub_2283FAB3C(&v14, v6 + 56);
  return v6;
}

uint64_t sub_22855535C(__int128 *a1)
{
  v2 = v1;
  v72 = *v1;
  sub_22855B870(0, &qword_27D83FC90, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCE78]);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - v7;
  sub_22855B508(0, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  sub_228555BE8();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228555E00();
  v69 = v17;
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228556054();
  v70 = v20;
  v68 = *(v20 - 8);
  v21 = *(v68 + 64);
  MEMORY[0x28223BE20](v20);
  v66 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[1];
  v75 = *a1;
  v76 = v23;
  v24 = a1[3];
  v77 = a1[2];
  v78 = v24;
  v25 = v23;
  v26 = v2[2];

  v27 = [v26 profileIdentifier];
  v28 = v2[4];
  v29 = v2[5];
  v83 = *a1;
  v80 = v83;
  v79[0] = v27;
  v79[1] = v28;
  v79[2] = v29;
  v81 = v25;
  v82 = a1[3];
  v30 = *(&v82 + 1);
  v58 = v25;
  if (*(&v82 + 1))
  {
    if (*(&v82 + 1) == 1)
    {
      v30 = 0xEB00000000796C6ELL;
      v31 = 0x4F656D6954656E6FLL;
    }

    else
    {
      v31 = v82;
    }
  }

  else
  {
    v30 = 0xE400000000000000;
    v31 = 1701736302;
  }

  v57 = v31;
  v32 = a1[1];
  v74[0] = *a1;
  v74[1] = v32;
  v33 = a1[3];
  v74[2] = a1[2];
  v74[3] = v33;

  sub_228556154(&v82, v73);

  sub_2284AE2B0(&v83, v73);
  sub_2284B89A0(&v75, v73);
  v34 = sub_22855CDCC();
  MEMORY[0x28223BE20](v34);
  *(&v55 - 4) = v2;
  *(&v55 - 3) = v79;
  *(&v55 - 2) = v72;
  v56 = *(&v25 + 1);
  v35 = v59;
  sub_22855CDAC();
  (*(v60 + 8))(v8, v35);
  v36 = swift_allocObject();
  v37 = v57;
  v36[2] = v2;
  v36[3] = v37;
  v36[4] = v30;

  sub_22855CCBC();
  sub_228555CC8();
  sub_228555D84();
  sub_22855BB24(&qword_27D840BF8, sub_228555CC8);
  v38 = v61;
  sub_22855CF2C();

  (*(v62 + 8))(v13, v38);
  v39 = swift_allocObject();
  v40 = v76;
  *(v39 + 16) = v75;
  *(v39 + 32) = v40;
  v41 = v78;
  *(v39 + 48) = v77;
  *(v39 + 64) = v41;
  v42 = v56;
  *(v39 + 80) = v58;
  *(v39 + 88) = v42;
  *(v39 + 96) = v37;
  *(v39 + 104) = v30;
  v43 = v72;
  *(v39 + 112) = v2;
  *(v39 + 120) = v43;
  sub_2284B89A0(&v75, v74);

  sub_22855CCBC();
  sub_228555F88();
  sub_228555F0C(0, &qword_27D840C08, sub_228555F88, MEMORY[0x277CBCD88]);
  v62 = MEMORY[0x277CBCCE0];
  sub_22855BB24(&qword_27D840C20, sub_228555BE8);
  sub_228555FF0(&qword_27D840C18, &qword_27D840C08, sub_228555F88);
  v45 = v64;
  v44 = v65;
  v46 = v71;
  sub_22855CF2C();

  (*(v63 + 8))(v46, v45);
  v47 = swift_allocObject();
  v48 = v72;
  *(v47 + 16) = v2;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_228558140;
  *(v49 + 24) = v47;

  sub_22855CCBC();
  sub_22855B508(0, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCD88]);
  sub_22855BB24(&qword_27D840C40, sub_228555E00);
  sub_2283FEF68(&qword_27D840C38, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest);
  v50 = v66;
  v51 = v69;
  sub_22855CF2C();

  (*(v67 + 8))(v44, v51);
  sub_22855BB24(&qword_27D840C48, sub_228556054);
  v52 = v70;
  v53 = sub_22855CE6C();
  sub_22848CF64(v79);
  (*(v68 + 8))(v50, v52);
  return v53;
}

void sub_228555BE8()
{
  if (!qword_27D840BE8)
  {
    sub_228555CC8();
    sub_22855B508(255, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
    sub_22855BB24(&qword_27D840BF8, sub_228555CC8);
    sub_228555D84();
    v0 = sub_22855CBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840BE8);
    }
  }
}

void sub_228555CC8()
{
  if (!qword_27D840BF0)
  {
    sub_228555F0C(255, &qword_280DE9938, sub_2284B7804, MEMORY[0x277CBCD88]);
    sub_228555FF0(&qword_280DE9940, &qword_280DE9938, sub_2284B7804);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840BF0);
    }
  }
}

unint64_t sub_228555D84()
{
  result = qword_27D83FCA8;
  if (!qword_27D83FCA8)
  {
    sub_22855B508(255, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCA8);
  }

  return result;
}

void sub_228555E00()
{
  if (!qword_27D840C00)
  {
    sub_228555F0C(255, &qword_27D840C08, sub_228555F88, MEMORY[0x277CBCD88]);
    sub_228555BE8();
    sub_228555FF0(&qword_27D840C18, &qword_27D840C08, sub_228555F88);
    sub_22855BB24(&qword_27D840C20, sub_228555BE8);
    v0 = sub_22855CBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840C00);
    }
  }
}

void sub_228555F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_228418D44();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228555F88()
{
  if (!qword_27D840C10)
  {
    type metadata accessor for NotificationContentState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D840C10);
    }
  }
}

uint64_t sub_228555FF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228555F0C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228556054()
{
  if (!qword_27D840C28)
  {
    sub_22855B508(255, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCD88]);
    sub_228555E00();
    sub_2283FEF68(&qword_27D840C38, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest);
    sub_22855BB24(&qword_27D840C40, sub_228555E00);
    v0 = sub_22855CBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840C28);
    }
  }
}

uint64_t sub_2285561B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v47 = a4;
  v11 = sub_22855CABC();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v57 = a1[2];
  v58 = v15;
  v16 = a1[1];
  v55 = *a1;
  v56 = v16;
  v17 = *(a2 + 48);
  v18 = v17[4];
  v20 = v17[5];
  v19 = v17[6];
  v21 = v17[7];
  v52[0] = v17[3];
  v52[1] = v18;
  v52[2] = v20;
  v53 = v19;
  v54 = v21;
  v22 = *(a3 + 16);
  v48 = *a3;
  v23 = *(a3 + 32);
  v49 = v22;
  v50 = v23;
  v51 = *(a3 + 48);

  v24 = v19;
  v25 = v21;
  FeedItemNotificationManagerStore.addOrUpdate(_:)(&v48);
  v26 = v53;

  if (!v6)
  {
    v46 = v11;
    sub_22855CA7C();
    sub_22842B9BC(a3, &v48);
    v28 = sub_22855CA8C();
    v29 = sub_22855D66C();
    sub_22848CF64(a3);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = a5;
      v31 = v30;
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136446467;
      v33 = sub_22855E34C();
      v35 = sub_2283F8938(v33, v34, v52);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2081;
      v36 = *(a3 + 16);
      v48 = *a3;
      v37 = *(a3 + 32);
      v49 = v36;
      v50 = v37;
      v51 = *(a3 + 48);
      v38 = PluginFeedItem.NotificationIdentifier.description.getter();
      v40 = sub_2283F8938(v38, v39, v52);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_2283ED000, v28, v29, "%{public}s Updated plugin notification request metadata: %{private}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v32, -1, -1);
      v41 = v31;
      a5 = v45;
      MEMORY[0x22AABAD40](v41, -1, -1);
    }

    (*(v59 + 8))(v14, v46);
    v42 = v56;
    *a5 = v55;
    a5[1] = v42;
    v43 = v58;
    a5[2] = v57;
    a5[3] = v43;
    return sub_2284B89A0(&v55, &v48);
  }

  return result;
}

uint64_t sub_2285564F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228559F08(a1);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_228555F0C(0, &qword_280DE9938, sub_2284B7804, MEMORY[0x277CBCD88]);
  sub_228555FF0(&qword_280DE9940, &qword_280DE9938, sub_2284B7804);

  sub_22855CE8C();
}

uint64_t sub_228556618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_2284B7804(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B578(a1, v11, sub_2284B7804);
  v12 = type metadata accessor for NotificationContentState(0);
  if ((*(*(v12 - 1) + 48))(v11, 1, v12) == 1)
  {
    result = sub_22855BB74(v11, sub_2284B7804);
    v14 = 1;
  }

  else
  {
    v15 = &v11[v12[6]];
    v16 = *v15 == a2 && *(v15 + 1) == a3;
    if (v16 || (sub_22855E15C() & 1) != 0)
    {
      if (v11[v12[8]])
      {
        v17 = 0;
      }

      else
      {
        v17 = v11[v12[7]] ^ 1;
      }
    }

    else
    {
      v17 = 1;
    }

    result = sub_22855BB74(v11, type metadata accessor for NotificationContentState);
    v14 = v17 & 1;
  }

  *a4 = v14;
  return result;
}

uint64_t sub_2285567A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v179 = a8;
  v178 = a7;
  v174 = a6;
  v173 = a5;
  v180 = a3;
  sub_22855B5E0();
  v166 = v13;
  v164 = *(v13 - 8);
  v14 = *(v164 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B648();
  v181 = v17;
  v165 = *(v17 - 8);
  v18 = *(v165 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B704();
  v22 = v21;
  v163 = *(v21 - 8);
  v23 = *(v163 + 64);
  MEMORY[0x28223BE20](v21);
  v162 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B7C4();
  v170 = v25;
  v169 = *(v25 - 8);
  v26 = *(v169 + 64);
  MEMORY[0x28223BE20](v25);
  v168 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NotificationContentState(0);
  v175 = *(v28 - 1);
  v29 = *(v175 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v177 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v31;
  MEMORY[0x28223BE20](v30);
  v182 = (&v160 - v32);
  v33 = sub_22855CABC();
  v34 = *(v33 - 8);
  v183 = v33;
  v184 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v161 = &v160 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v171 = &v160 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v172 = &v160 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v160 - v45;
  if ((*a1 & 1) == 0)
  {
    v47 = *(a2 + 48);
    v48 = *(a2 + 56);
    if (v48)
    {
      v49 = *(a2 + 48);
      sub_2284C7554(v47, *(a2 + 56));
      sub_2284C776C(v49, v48);
      sub_2284C776C(0, 0);
      sub_22855CA7C();

      v50 = sub_22855CA8C();
      v51 = sub_22855D6AC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v186[0] = v182;
        *v52 = 136446466;
        v53 = sub_22855E34C();
        v55 = a9;
        v56 = sub_2283F8938(v53, v54, v186);

        *(v52 + 4) = v56;
        a9 = v55;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_2283F8938(v180, a4, v186);
        _os_log_impl(&dword_2283ED000, v50, v51, "%{public}s Not proceeding with %s", v52, 0x16u);
        v57 = v182;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v57, -1, -1);
        MEMORY[0x22AABAD40](v52, -1, -1);
      }

      (*(v184 + 8))(v38, v183);
      sub_228555F88();
      sub_22855CDDC();
      sub_228418D44();
      sub_22855BB24(&qword_27D840C78, sub_22855B5E0);
      v58 = v166;
      sub_22855CF7C();
      (*(v164 + 8))(v16, v58);
      sub_22855BB24(&qword_27D840C90, sub_22855B648);
      v59 = v181;
      v60 = sub_22855CE6C();
      result = (*(v165 + 8))(v20, v59);
      goto LABEL_28;
    }

    sub_2284C776C(v47, 0);
    sub_2284C776C(0, 0);
  }

  v166 = v22;
  v181 = a2;
  sub_22855CA7C();

  v62 = sub_22855CA8C();
  v63 = sub_22855D6AC();

  v64 = os_log_type_enabled(v62, v63);
  v167 = a9;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v186[0] = v66;
    *v65 = 136446466;
    v67 = sub_22855E34C();
    v69 = sub_2283F8938(v67, v68, v186);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    v70 = v180;
    *(v65 + 14) = sub_2283F8938(v180, a4, v186);
    _os_log_impl(&dword_2283ED000, v62, v63, "%{public}s Proceeding with %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v66, -1, -1);
    MEMORY[0x22AABAD40](v65, -1, -1);

    v71 = v183;
    v72 = *(v184 + 8);
    v72(v46, v183);
    v73 = v182;
  }

  else
  {

    v71 = v183;
    v72 = *(v184 + 8);
    v72(v46, v183);
    v73 = v182;
    v70 = v180;
  }

  v74 = v28[5];
  sub_22855C1CC();
  *v73 = v70;
  v73[1] = a4;
  v75 = (v73 + v28[6]);
  v76 = v174;
  *v75 = v173;
  v75[1] = v76;
  *(v73 + v28[7]) = 1;
  *(v73 + v28[8]) = 0;
  v77 = *(v181 + 32);
  v78 = *(v181 + 40);

  v80 = v77(v79);
  if (v80)
  {
    v81 = v80;
    v82 = v172;
    sub_22855CA7C();

    v83 = sub_22855CA8C();
    v84 = sub_22855D6AC();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v180 = v74;
      v87 = v72;
      v88 = v70;
      v89 = v86;
      v186[0] = v86;
      *v85 = 136446466;
      v90 = sub_22855E34C();
      v92 = sub_2283F8938(v90, v91, v186);
      v71 = v183;

      *(v85 + 4) = v92;
      v73 = v182;
      *(v85 + 12) = 2080;
      v93 = v88;
      v72 = v87;
      *(v85 + 14) = sub_2283F8938(v93, a4, v186);
      _os_log_impl(&dword_2283ED000, v83, v84, "%{public}s Scheduling %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v89, -1, -1);
      MEMORY[0x22AABAD40](v85, -1, -1);

      v94 = v172;
    }

    else
    {

      v94 = v82;
    }

    v72(v94, v71);
    v106 = v171;
    v107 = v81;
    v108 = [v107 content];
    [v108 mutableCopy];

    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_2283EF310(0, &qword_27D840CA0, 0x277CE1F60);
    if (swift_dynamicCast())
    {
      v109 = v188;
      v110 = *MEMORY[0x277CCE4E8];
      *&v188 = sub_22855D1AC();
      *(&v188 + 1) = v111;
      v112 = MEMORY[0x277D837D0];
      sub_22855DBEC();
      v113 = sub_22855C17C();
      v189 = v112;
      *&v188 = v113;
      *(&v188 + 1) = v114;
      v115 = [v109 userInfo];
      v116 = sub_22855D0EC();

      sub_228400400(&v188, v185);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187 = v116;
      sub_22845BB54(v185, v186, isUniquelyReferenced_nonNull_native);
      sub_22842D0B4(v186);
      v118 = sub_22855D0DC();

      [v109 setUserInfo_];

      v119 = [v107 identifier];
      if (!v119)
      {
        sub_22855D1AC();
        v119 = sub_22855D17C();
      }

      v120 = v109;
      v121 = [v107 trigger];
      v122 = [objc_opt_self() requestWithIdentifier:v119 content:v120 trigger:v121];

      v123 = v181;
    }

    else
    {
      v180 = v72;
      sub_22855CA7C();
      v123 = v181;
      sub_2284B89A0(v181, v186);
      v124 = sub_22855CA8C();
      v125 = sub_22855D69C();
      sub_22855B9A8(v123);
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v186[0] = v127;
        *v126 = 136446466;
        v128 = sub_22855E34C();
        v130 = sub_2283F8938(v128, v129, v186);

        *(v126 + 4) = v130;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_2283F8938(*(v123 + 16), *(v123 + 24), v186);
        _os_log_impl(&dword_2283ED000, v124, v125, "%{public}s Unable to create mutable content copy of notification %s", v126, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v127, -1, -1);
        MEMORY[0x22AABAD40](v126, -1, -1);

        v131 = v183;
        v132 = v171;
      }

      else
      {

        v132 = v106;
        v131 = v71;
      }

      v180(v132, v131);
      v122 = v107;
    }

    v152 = *(*(v178 + 48) + 16);
    *&v188 = UNUserNotificationCenter.scheduleNotification(_:)(v122);
    v153 = v177;
    sub_22855B578(v73, v177, type metadata accessor for NotificationContentState);
    v154 = (*(v175 + 80) + 80) & ~*(v175 + 80);
    v155 = swift_allocObject();
    v156 = *(v123 + 16);
    v155[1] = *v123;
    v155[2] = v156;
    v157 = *(v123 + 48);
    v155[3] = *(v123 + 32);
    v155[4] = v157;
    sub_22855B8C0(v153, v155 + v154);
    sub_2284B89A0(v123, v186);
    sub_2283FEE20();
    sub_228555F88();
    sub_22855BB24(&qword_280DE98A0, sub_2283FEE20);
    v158 = v168;
    sub_22855CE8C();

    sub_22855BB24(&qword_27D840CA8, sub_22855B7C4);
    v159 = v170;
    v60 = sub_22855CE6C();

    (*(v169 + 8))(v158, v159);
    v151 = v73;
  }

  else
  {
    v95 = v72;
    v96 = v161;
    sub_22855CA7C();

    v97 = sub_22855CA8C();
    v98 = sub_22855D6AC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = v96;
      v101 = swift_slowAlloc();
      v186[0] = v101;
      *v99 = 136446466;
      v102 = sub_22855E34C();
      v104 = sub_2283F8938(v102, v103, v186);

      *(v99 + 4) = v104;
      v70 = v180;
      *(v99 + 12) = 2080;
      *(v99 + 14) = sub_2283F8938(v70, a4, v186);
      _os_log_impl(&dword_2283ED000, v97, v98, "%{public}s Removing %s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v101, -1, -1);
      MEMORY[0x22AABAD40](v99, -1, -1);

      v105 = v100;
    }

    else
    {

      v105 = v96;
    }

    v95(v105, v71);
    v133 = v181;
    v134 = v178;
    v135 = *(v178 + 48);
    sub_22855B870(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_228560580;
    *(v136 + 32) = v70;
    *(v136 + 40) = a4;
    v137 = v70;
    v138 = off_283B84840[0];
    v139 = type metadata accessor for HealthAppNotificationManager();

    v138(v136, v139, &protocol witness table for HealthAppNotificationManager);
    (off_283B84848[0])(v136, v139, &protocol witness table for HealthAppNotificationManager);

    swift_beginAccess();
    sub_2283F9B10(v134 + 56, &v188);
    v140 = v189;
    v141 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, v189);
    v187 = (*(*(v141 + 8) + 72))(v137, a4, v140);
    v142 = v182;
    v143 = v177;
    sub_22855B578(v182, v177, type metadata accessor for NotificationContentState);
    v144 = (*(v175 + 80) + 80) & ~*(v175 + 80);
    v145 = swift_allocObject();
    v146 = v133[1];
    v145[1] = *v133;
    v145[2] = v146;
    v147 = v133[3];
    v145[3] = v133[2];
    v145[4] = v147;
    sub_22855B8C0(v143, v145 + v144);
    sub_2284B89A0(v133, v186);
    v148 = MEMORY[0x277D84F78];
    sub_22855B508(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_228555F88();
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v148 + 8);
    v149 = v162;
    sub_22855CE8C();

    __swift_destroy_boxed_opaque_existential_0(&v188);
    sub_22855BB24(&qword_27D840C98, sub_22855B704);
    v150 = v166;
    v60 = sub_22855CE6C();
    (*(v163 + 8))(v149, v150);
    v151 = v142;
  }

  result = sub_22855BB74(v151, type metadata accessor for NotificationContentState);
  a9 = v167;
LABEL_28:
  *a9 = v60;
  return result;
}

uint64_t sub_228557BAC@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  sub_228555F88();
  v7 = *(v6 + 48);
  v8 = a1[1];
  *a3 = *a1;
  a3[1] = v8;
  v9 = a1[3];
  a3[2] = a1[2];
  a3[3] = v9;
  sub_22855B578(a2, a3 + v7, type metadata accessor for NotificationContentState);
  return sub_2284B89A0(a1, &v11);
}

uint64_t sub_228557C2C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  sub_22855B458();
  v7 = v6;
  v52 = *(v6 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NotificationContentState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855CABC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v57 = *a1;
  v58 = v19;
  v20 = a1[3];
  v59 = a1[2];
  v60 = v20;
  sub_22855CA7C();
  sub_22855B578(a2, v13, type metadata accessor for NotificationContentState);
  v21 = sub_22855CA8C();
  v22 = sub_22855D6AC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v47 = a2;
    v26 = v25;
    v53[0] = v25;
    *v24 = 136446466;
    v27 = sub_22855E34C();
    v29 = sub_2283F8938(v27, v28, v53);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = NotificationContentState.description.getter();
    v32 = v31;
    sub_22855BB74(v13, type metadata accessor for NotificationContentState);
    v33 = sub_2283F8938(v30, v32, v53);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_2283ED000, v21, v22, "%{public}s Updating content state %s", v24, 0x16u);
    swift_arrayDestroy();
    v34 = v26;
    a2 = v47;
    MEMORY[0x22AABAD40](v34, -1, -1);
    v35 = v24;
    v7 = v48;
    MEMORY[0x22AABAD40](v35, -1, -1);
  }

  else
  {

    sub_22855BB74(v13, type metadata accessor for NotificationContentState);
  }

  (*(v15 + 8))(v18, v14);
  v36 = v50;
  swift_beginAccess();
  sub_2283F9B10(v36 + 56, v54);
  v37 = v55;
  v38 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v53[8] = (*(*(v38 + 8) + 64))(a2, v37);
  v39 = swift_allocObject();
  v40 = v58;
  v39[1] = v57;
  v39[2] = v40;
  v41 = v60;
  v39[3] = v59;
  v39[4] = v41;
  sub_2284B89A0(&v57, v53);
  v42 = MEMORY[0x277D84F78];
  sub_22855B508(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v42 + 8);
  v43 = v51;
  sub_22855CE8C();

  __swift_destroy_boxed_opaque_existential_0(v54);
  sub_22855BB24(&qword_27D840C60, sub_22855B458);
  v44 = sub_22855CE6C();
  (*(v52 + 8))(v43, v7);
  return v44;
}

uint64_t sub_228558148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_228555F88();
  result = v6(a1, a1 + *(v7 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_228558198(uint64_t a1)
{
  sub_2284ACE50();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AD0DC;
  v11[3] = v9;
  v11[4] = sub_2284AD0E4;
  v11[5] = v10;
  sub_2284ACEE4();
  sub_22855BB24(&qword_27D83FB98, sub_2284ACEE4);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBA0, sub_2284ACE50);
  v12 = sub_22855CE6C();

  (*(v5 + 8))(v8, v4);
  return v12;
}

uint64_t sub_2285583B0(uint64_t a1)
{
  sub_2284AD0F8();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AD2C0;
  v11[3] = v9;
  v11[4] = sub_2284AD2C8;
  v11[5] = v10;
  sub_2284AD18C();
  sub_22855BB24(&qword_27D83FBD0, sub_2284AD18C);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBD8, sub_2284AD0F8);
  v12 = sub_22855CE6C();

  (*(v5 + 8))(v8, v4);
  return v12;
}

void sub_2285585E0(uint64_t a1, SEL *a2)
{
  v4 = *(*(v2 + 48) + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t sub_228558644()
{
  v84 = *v0;
  sub_2284ADB00();
  v78 = v1;
  v75 = *(v1 - 8);
  v2 = *(v75 + 64);
  MEMORY[0x28223BE20](v1);
  v72 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C();
  v79 = v4;
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48();
  v80 = v7;
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228558F10();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[2];
  v16 = v0[4];
  v92 = 0;
  v93 = 0xE000000000000000;
  v85 = v0;

  sub_22855DC6C();

  v92 = 0xD00000000000002FLL;
  v93 = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v16, v14);
  v69 = v92;
  v68 = v93;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  v88 = v14;
  v89 = v16;
  MEMORY[0x22AAB92A0](v16, v14);
  v67 = v92;
  v66 = v93;
  v17 = v13[3];
  v18 = v13[4];
  v20 = v13[5];
  v19 = v13[6];
  v71 = v13;
  v21 = v13[7];
  v92 = v17;
  v93 = v18;
  v94 = v20;
  v95 = v19;
  v96 = v21;

  v22 = v19;
  v23 = v21;
  v70 = v15;
  v24 = [v15 profileIdentifier];
  v25 = sub_2284816C0(v24);

  v26 = v95;

  v28 = 0;
  v29 = v25 + 80;
  v90 = -*(v25 + 16);
  v91 = v25;
  v86 = v25 + 80;
  v87 = MEMORY[0x277D84F90];
LABEL_2:
  v30 = v28 + 1;
  v31 = (v29 + 56 * v28);
  while (1)
  {
    if (v90 + v30 == 1)
    {

      v46 = v87;
      v47 = v71;
      sub_2284ABA00(v87);
      v92 = v46;
      sub_22855B870(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
      v48 = v72;
      sub_22855CDCC();
      v49 = swift_allocObject();
      v50 = v68;
      v49[2] = v69;
      v49[3] = v50;
      v51 = v70;
      v52 = v67;
      v49[4] = v70;
      v49[5] = v52;
      v49[6] = v66;
      v49[7] = v47;
      v53 = v51;

      sub_22855CCBC();
      sub_22855B508(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
      sub_22855BB24(&qword_280DE9850, sub_2284ADB00);
      sub_2283FEF68(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
      v54 = v73;
      v55 = v78;
      sub_22855CF9C();

      (*(v75 + 8))(v48, v55);
      sub_22855BB24(&qword_280DE9A58, sub_2284ADB7C);
      v56 = v74;
      v57 = v79;
      sub_22855CF1C();
      (*(v76 + 8))(v54, v57);
      sub_22855BB24(&qword_280DE9A88, sub_2284ADD48);
      v58 = v80;
      v59 = sub_22855CE6C();
      v60 = v85;

      (*(v77 + 8))(v56, v58);
      v92 = v59;
      v61 = swift_allocObject();
      v62 = v84;
      *(v61 + 16) = v60;
      *(v61 + 24) = v62;
      sub_2284AD530();
      sub_22855BB24(&qword_280DE9900, sub_2284AD530);

      v63 = v81;
      sub_22855CE8C();

      sub_22855BB24(&qword_280DE9BD0, sub_228558F10);
      v64 = v83;
      v65 = sub_22855CE6C();
      (*(v82 + 8))(v63, v64);
      return v65;
    }

    v28 = v30;
    if ((v30 - 1) >= *(v91 + 16))
    {
      break;
    }

    v32 = *(v31 - 6);
    v33 = *(v31 - 5);
    v35 = *(v31 - 4);
    v34 = *(v31 - 3);
    v36 = *(v31 - 2);
    v37 = *(v31 - 1);
    v38 = *v31;
    if (v33 == v89 && v35 == v88)
    {
      v33 = v89;
LABEL_12:
      v40 = v32;

      v41 = v87;
      result = swift_isUniquelyReferenced_nonNull_native();
      v92 = v41;
      if ((result & 1) == 0)
      {
        result = sub_2284276B0(0, *(v41 + 16) + 1, 1);
        v41 = v92;
      }

      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v87 = v43 + 1;
        result = sub_2284276B0((v42 > 1), v43 + 1, 1);
        v44 = v87;
        v41 = v92;
      }

      *(v41 + 16) = v44;
      v87 = v41;
      v45 = (v41 + 56 * v43);
      v45[4] = v32;
      v45[5] = v33;
      v45[6] = v35;
      v45[7] = v34;
      v45[8] = v36;
      v45[9] = v37;
      v45[10] = v38;
      v29 = v86;
      goto LABEL_2;
    }

    ++v30;
    v31 += 7;
    result = sub_22855E15C();
    if (result)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_228558F10()
{
  if (!qword_280DE9BC8)
  {
    sub_2284AD530();
    sub_22855BB24(&qword_280DE9900, sub_2284AD530);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9BC8);
    }
  }
}

void sub_228558FB0(uint64_t a1)
{
  v88 = *v1;
  sub_2284ADB00();
  v81 = v3;
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C();
  v82 = v6;
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48();
  v84 = v9;
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v9);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228558F10();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[2];
  v18 = v1[4];
  v89 = v1;
  v99 = 0;
  v100 = 0xE000000000000000;
  v96 = a1;

  sub_22855DC6C();

  v99 = 0xD00000000000002FLL;
  v100 = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v18, v15);
  v73 = v99;
  v72 = v100;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](v18, v15);
  v71 = v99;
  v70 = v100;
  v19 = v16[3];
  v20 = v16[4];
  v21 = v16[5];
  v22 = v16[6];
  v75 = v16;
  v23 = v16[7];
  v99 = v19;
  v100 = v20;
  v101 = v21;
  v102 = v22;
  v103 = v23;

  v24 = v22;
  v25 = v23;
  v74 = v17;
  v26 = [v17 profileIdentifier];
  v27 = sub_2284816C0(v26);

  v28 = v102;

  v30 = *(v27 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = v27 + 80;
    v91 = *(v27 + 16);
    v68 = v30 - 1;
    v33 = MEMORY[0x277D84F90];
    v95 = v27;
    v69 = v27 + 80;
    do
    {
      v90 = v33;
      v34 = (v32 + 56 * v31);
      v35 = v31;
      while (1)
      {
        if (v35 >= *(v27 + 16))
        {
          __break(1u);
          return;
        }

        v97 = &v68;
        v37 = *(v34 - 6);
        v36 = *(v34 - 5);
        v39 = *(v34 - 4);
        v38 = *(v34 - 3);
        v40 = *(v34 - 2);
        v93 = *(v34 - 1);
        v94 = v36;
        v41 = *v34;
        v31 = v35 + 1;
        v99 = v38;
        v100 = v40;
        v92 = v35;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v68 - 2) = &v99;
        v42 = v37;

        if (sub_2284C6D9C(sub_228434EDC, (&v68 - 4), v96))
        {
          break;
        }

        v34 += 7;
        v35 = v31;
        v27 = v95;
        if (v91 == v31)
        {
          v33 = v90;
          goto LABEL_15;
        }
      }

      v97 = v40;
      v33 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0(0, *(v33 + 16) + 1, 1);
        v33 = v98;
      }

      v43 = v37;
      v45 = v93;
      v44 = v94;
      v46 = v38;
      v47 = v97;
      v49 = *(v33 + 16);
      v48 = *(v33 + 24);
      if (v49 >= v48 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0((v48 > 1), v49 + 1, 1);
        v45 = v93;
        v44 = v94;
        v47 = v97;
        v46 = v38;
        v43 = v37;
        v33 = v98;
      }

      *(v33 + 16) = v49 + 1;
      v50 = (v33 + 56 * v49);
      v50[4] = v43;
      v50[5] = v44;
      v50[6] = v39;
      v50[7] = v46;
      v50[8] = v47;
      v50[9] = v45;
      v50[10] = v41;
      v27 = v95;
      v32 = v69;
    }

    while (v68 != v92);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v51 = v75;
  sub_2284ABA00(v33);
  v99 = v33;
  sub_22855B870(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  v52 = v76;
  sub_22855CDCC();
  v53 = swift_allocObject();
  v54 = v72;
  v53[2] = v73;
  v53[3] = v54;
  v55 = v74;
  v56 = v71;
  v53[4] = v74;
  v53[5] = v56;
  v53[6] = v70;
  v53[7] = v51;
  v57 = v55;

  sub_22855CCBC();
  sub_22855B508(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  sub_22855BB24(&qword_280DE9850, sub_2284ADB00);
  sub_2283FEF68(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
  v58 = v77;
  v59 = v81;
  sub_22855CF9C();

  (*(v79 + 8))(v52, v59);
  sub_22855BB24(&qword_280DE9A58, sub_2284ADB7C);
  v60 = v78;
  v61 = v82;
  sub_22855CF1C();
  (*(v80 + 8))(v58, v61);
  sub_22855BB24(&qword_280DE9A88, sub_2284ADD48);
  v62 = v84;
  v63 = sub_22855CE6C();

  (*(v83 + 8))(v60, v62);
  v99 = v63;
  v64 = swift_allocObject();
  v65 = v88;
  *(v64 + 16) = v89;
  *(v64 + 24) = v65;
  sub_2284AD530();
  sub_22855BB24(&qword_280DE9900, sub_2284AD530);

  v66 = v85;
  sub_22855CE8C();

  sub_22855BB24(&qword_280DE9BD0, sub_228558F10);
  v67 = v87;
  sub_22855CE6C();
  (*(v86 + 8))(v66, v67);
}

uint64_t sub_228559958(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v40 = a3;
  v7 = sub_22855C1DC();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_22855CA7C();

  v17 = sub_22855CA8C();
  v18 = sub_22855D6AC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a4;
    v20 = v19;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v20 = 136315906;
    v21 = sub_22855E34C();
    v23 = sub_2283F8938(v21, v22, &v43);
    LODWORD(v40) = v18;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = [*(a2 + 16) profileIdentifier];
    v26 = [v25 identifier];
    sub_22855C1BC();

    v27 = sub_22855C17C();
    v37 = v11;
    v29 = v28;

    (*(v41 + 8))(v10, v42);
    v30 = sub_2283F8938(v27, v29, &v43);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_2283F8938(*(a2 + 32), *(a2 + 40), &v43);
    *(v20 + 32) = 2080;
    v31 = MEMORY[0x22AAB9430](v16, &type metadata for PluginFeedItem.NotificationIdentifier);
    v33 = sub_2283F8938(v31, v32, &v43);

    *(v20 + 34) = v33;
    _os_log_impl(&dword_2283ED000, v17, v40, v38, v20, 0x2Au);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v34, -1, -1);
    MEMORY[0x22AABAD40](v20, -1, -1);

    return (*(v12 + 8))(v15, v37);
  }

  else
  {

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_228559CB8(uint64_t a1, uint64_t *a2)
{
  sub_2283F9B10(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  sub_2283FAB3C(v5, v3 + 56);
  return swift_endAccess();
}

uint64_t sub_228559D64(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  sub_2283FAB3C(a1, v1 + 56);
  return swift_endAccess();
}

unint64_t sub_228559E0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_22855DC6C();

  MEMORY[0x22AAB92A0](v1, v2);
  return 0xD00000000000002FLL;
}

uint64_t sub_228559E88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](v1, v2);
  return 0;
}

uint64_t sub_228559F08(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v1[4];
  v6 = v1[5];
  sub_22855DC6C();

  v15[0] = 0xD00000000000002FLL;
  v15[1] = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v5, v6);
  v7 = v1[2];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_22855D17C();

  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];

  swift_beginAccess();
  sub_2283F9B10((v2 + 7), v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v13 = NotificationContentStateManager.getContentState(for:legacyStringIdentifier:legacyKeyValueDomain:)(v3, v4, v3, v4, v10, v11, v12);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_22855A058(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  *(v3 + 96) = *v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return MEMORY[0x2822009F8](sub_22855A0B0, 0, 0);
}

uint64_t sub_22855A0B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  sub_2284B7804(0);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_22855A1BC;
  v8 = v0[10];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000015, 0x8000000228574CD0, sub_22855AF44, v3, v7);
}

uint64_t sub_22855A1BC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22855A2F8, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22855A2F8()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_22855A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v22 = sub_2284B7804;
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v23 = sub_228559F08(a3);
  v24 = v23;
  v19 = *(v8 + 16);
  v19(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, v7);
  v15 = v20;
  *(v13 + ((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v19(v11, v15, v7);
  v16 = swift_allocObject();
  v14(v16 + v12, v11, v7);
  v17 = v22;
  sub_228555F0C(0, &qword_280DE9938, v22, MEMORY[0x277CBCD88]);
  sub_228555FF0(&qword_280DE9940, &qword_280DE9938, v17);
  sub_22855CE5C();
}

uint64_t sub_22855A5D8(void **a1, uint64_t a2)
{
  v4 = sub_22855CABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10)
  {
    sub_22855CA7C();
    v11 = v10;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25[1] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315650;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2283F8938(0xD000000000000015, 0x8000000228574CD0, &v26);
      *(v15 + 22) = 2080;
      v25[2] = v10;
      v20 = v10;
      sub_228418D44();
      v21 = sub_22855D1CC();
      v23 = sub_2283F8938(v21, v22, &v26);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%s] %s finished with error: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v26 = v10;
    v24 = v10;
    sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
    return sub_22855D4AC();
  }

  return result;
}

uint64_t sub_22855A878(uint64_t a1)
{
  sub_2284B7804(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22855B578(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2284B7804);
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  return sub_22855D4BC();
}

uint64_t HealthAppPluginNotificationManager.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t HealthAppPluginNotificationManager.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22855A9E8(uint64_t a1)
{
  sub_2284ACE50();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AEB84;
  v11[3] = v9;
  v11[4] = sub_2284AEB90;
  v11[5] = v10;
  sub_2284ACEE4();
  sub_22855BB24(&qword_27D83FB98, sub_2284ACEE4);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBA0, sub_2284ACE50);
  v12 = sub_22855CE6C();

  (*(v5 + 8))(v8, v4);
  return v12;
}

uint64_t sub_22855AC00(uint64_t a1)
{
  sub_2284AD0F8();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AEB80;
  v11[3] = v9;
  v11[4] = sub_2284AEB8C;
  v11[5] = v10;
  sub_2284AD18C();
  sub_22855BB24(&qword_27D83FBD0, sub_2284AD18C);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBD8, sub_2284AD0F8);
  v12 = sub_22855CE6C();

  (*(v5 + 8))(v8, v4);
  return v12;
}

void sub_22855AE30(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(*(v4 + 48) + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t dispatch thunk of HealthAppPluginNotificationManager.getContentState(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_228468A14;

  return v10(a1, a2);
}

uint64_t sub_22855B2EC(void **a1)
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22855A5D8(a1, v1 + v5);
}

uint64_t sub_22855B3B8(uint64_t a1)
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v3 = *(*(v2 - 8) + 80);

  return sub_22855A878(a1);
}

void sub_22855B458()
{
  if (!qword_27D840C58)
  {
    v0 = MEMORY[0x277D84F78];
    sub_22855B508(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v0 + 8);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C58);
    }
  }
}

void sub_22855B508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_228418D44();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22855B578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22855B5E0()
{
  if (!qword_27D840C68)
  {
    sub_228555F88();
    v0 = sub_22855CDEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840C68);
    }
  }
}

void sub_22855B648()
{
  if (!qword_27D840C70)
  {
    sub_22855B5E0();
    sub_228418D44();
    sub_22855BB24(&qword_27D840C78, sub_22855B5E0);
    v0 = sub_22855CB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840C70);
    }
  }
}

void sub_22855B704()
{
  if (!qword_27D840C80)
  {
    v0 = MEMORY[0x277D84F78];
    sub_22855B508(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_228555F88();
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v0 + 8);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C80);
    }
  }
}

void sub_22855B7C4()
{
  if (!qword_27D840C88)
  {
    sub_2283FEE20();
    sub_228555F88();
    sub_22855BB24(&qword_280DE98A0, sub_2283FEE20);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840C88);
    }
  }
}

void sub_22855B870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22855B8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationContentState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22855B924@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationContentState(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));

  return sub_228557BAC((v1 + 16), v4, a1);
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for NotificationContentState(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 3);

  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  if (*(v0 + 9) >= 2uLL)
  {
  }

  v7 = (v2 + 80) & ~v2;
  v8 = *&v0[v7 + 8];

  v9 = *(v1 + 20);
  v10 = sub_22855C1DC();
  (*(*(v10 - 8) + 8))(&v0[v7 + v9], v10);
  v11 = *&v0[v7 + 8 + *(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v7 + v3, v2 | 7);
}

uint64_t sub_22855BB24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22855BB74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void NoveltyFeatureTag.init(for:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  v5 = sub_22855D1AC();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t NoveltyFeatureTag.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22855BC74@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_22855BC80@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}