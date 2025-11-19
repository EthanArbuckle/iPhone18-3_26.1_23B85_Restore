id sub_1C3F1AFD8()
{
  v1 = sub_1C4030980();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v225 - v7;
  *&v231 = sub_1C40309F0();
  v9 = *(v231 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v12 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  switch(*v0 >> 60)
  {
    case 1uLL:
      v102 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v103 = swift_allocObject();
      v16 = v103;
      *(v103 + 16) = xmmword_1C4038040;
      *(v103 + 56) = MEMORY[0x1E69E6158];
      *(v103 + 32) = 0xD000000000000014;
      *(v103 + 40) = 0x80000001C4056FB0;
      v104 = v102[2];
      v18 = MEMORY[0x1E69E7CC0];
      if (!v104)
      {
        goto LABEL_110;
      }

      v227 = v103;
      v233 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v104, 0);
      v18 = v233;
      v106 = *(v9 + 16);
      v105 = v9 + 16;
      v107 = *(v105 + 64);
      v226 = v102;
      v108 = v102 + ((v107 + 32) & ~v107);
      v228 = *(v105 + 56);
      *&v229 = v106;
      v230 = v105;
      v109 = (v105 - 8);
      do
      {
        v110 = v231;
        (v229)(v12, v108, v231);
        v111 = sub_1C40309A0();
        v113 = v112;
        (*v109)(v12, v110);
        v233 = v18;
        v115 = *(v18 + 16);
        v114 = *(v18 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1C3EF0270((v114 > 1), v115 + 1, 1);
          v18 = v233;
        }

        *(v18 + 16) = v115 + 1;
        v116 = v18 + 16 * v115;
        *(v116 + 32) = v111;
        *(v116 + 40) = v113;
        v108 += v228;
        --v104;
      }

      while (v104);
      goto LABEL_38;
    case 2uLL:
      v61 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v62 = swift_allocObject();
      v16 = v62;
      *(v62 + 16) = xmmword_1C4038040;
      *(v62 + 56) = MEMORY[0x1E69E6158];
      strcpy((v62 + 32), "conversationID");
      *(v62 + 47) = -18;
      v63 = v61[2];
      v18 = MEMORY[0x1E69E7CC0];
      if (!v63)
      {
        goto LABEL_110;
      }

      v227 = v62;
      v233 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v63, 0);
      v18 = v233;
      v65 = *(v9 + 16);
      v64 = v9 + 16;
      v66 = *(v64 + 64);
      v226 = v61;
      v67 = v61 + ((v66 + 32) & ~v66);
      v228 = *(v64 + 56);
      *&v229 = v65;
      v230 = v64;
      v68 = (v64 - 8);
      do
      {
        v69 = v231;
        (v229)(v12, v67, v231);
        v70 = sub_1C40309A0();
        v72 = v71;
        (*v68)(v12, v69);
        v233 = v18;
        v74 = *(v18 + 16);
        v73 = *(v18 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1C3EF0270((v73 > 1), v74 + 1, 1);
          v18 = v233;
        }

        *(v18 + 16) = v74 + 1;
        v75 = v18 + 16 * v74;
        *(v75 + 32) = v70;
        *(v75 + 40) = v72;
        v67 += v228;
        --v63;
      }

      while (v63);
      goto LABEL_38;
    case 3uLL:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v79 = swift_projectBox();
      v80 = *(v78 + 48);
      v81 = v2[2];
      (v81)(v8, v79, v1);
      (v81)(v6, v79 + v80, v1);
      v230 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1C4038660;
      *&v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v83 = swift_allocObject();
      v229 = xmmword_1C40385D0;
      *(v83 + 16) = xmmword_1C40385D0;
      *(v83 + 56) = v1;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v83 + 32));
      (v81)(boxed_opaque_existential_1, v8, v1);
      v85 = sub_1C4031190();
      v86 = sub_1C40313E0();

      v87 = objc_opt_self();
      v88 = [v87 predicateWithFormat:v85 argumentArray:v86];

      *(v82 + 32) = v88;
      v89 = swift_allocObject();
      *(v89 + 16) = v229;
      *(v89 + 56) = v1;
      v90 = __swift_allocate_boxed_opaque_existential_1((v89 + 32));
      (v230)(v90, v6, v1);
      v91 = sub_1C4031190();
      v92 = sub_1C40313E0();

      v93 = [v87 predicateWithFormat:v91 argumentArray:v92];

      *(v82 + 40) = v93;
      sub_1C3F2AE94();
      v94 = sub_1C40313E0();

      v46 = [objc_opt_self() andPredicateWithSubpredicates_];

      v95 = v2[1];
      v95(v6, v1);
      v95(v8, v1);
      return v46;
    case 4uLL:
    case 5uLL:
      v117 = swift_projectBox();
      v118 = v2[2];
      v118(v8, v117, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1C40385D0;
      *(v119 + 56) = v1;
      v120 = __swift_allocate_boxed_opaque_existential_1((v119 + 32));
      v118(v120, v8, v1);
      v121 = sub_1C4031190();
      v122 = sub_1C40313E0();

      v123 = [objc_opt_self() predicateWithFormat:v121 argumentArray:v122];

      (v2[1])(v8, v1);
      return v123;
    case 6uLL:
      v129 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v130 = MEMORY[0x1E69E7CD0];
      v233 = MEMORY[0x1E69E7CD0];
      v131 = *(v129 + 16);
      if (v131)
      {

        v132 = 32;
        do
        {
          if (*(v129 + v132))
          {
            if (*(v129 + v132) == 1)
            {
              v133 = 1;
            }

            else
            {
              v133 = 2;
            }

            sub_1C4025E80(&v236, v133);
          }

          ++v132;
          --v131;
        }

        while (v131);

        v130 = v233;
      }

      v182 = *(v130 + 16);
      if (!v182)
      {
        goto LABEL_141;
      }

      v236 = MEMORY[0x1E69E7CC0];
      sub_1C4031950();
      v183 = v130 + 56;
      v184 = -1 << *(v130 + 32);
      v161 = sub_1C4031770();
      LODWORD(v227) = *(v130 + 36);
      v185 = objc_opt_self();
      v163 = 0;
      v230 = "ipantHandles.value IN %@";
      *&v231 = v185;
      v186 = *(v130 + 32);
      v225 = v130 + 64;
      v229 = xmmword_1C4038040;
      v228 = 0xD000000000000019;
      v226 = v182;
      while (2)
      {
        if (v161 < 0 || v161 >= 1 << v186)
        {
          goto LABEL_151;
        }

        v189 = v161 >> 6;
        if ((*(v183 + 8 * (v161 >> 6)) & (1 << v161)) == 0)
        {
          goto LABEL_153;
        }

        v190 = *(*(v130 + 48) + 4 * v161);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v191 = swift_allocObject();
        *(v191 + 16) = v229;
        v192 = MEMORY[0x1E69E7668];
        *(v191 + 56) = MEMORY[0x1E69E7668];
        *(v191 + 32) = v190;
        *(v191 + 88) = v192;
        *(v191 + 64) = v190;
        v2 = sub_1C4031190();
        v193 = sub_1C40313E0();

        v194 = [v231 predicateWithFormat:v2 argumentArray:v193];

        sub_1C4031920();
        v195 = *(v236 + 16);
        sub_1C4031960();
        sub_1C4031970();
        sub_1C4031930();
        v186 = *(v130 + 32);
        v187 = 1 << v186;
        if (v161 >= 1 << v186)
        {
          goto LABEL_155;
        }

        v196 = *(v183 + 8 * v189);
        if ((v196 & (1 << v161)) == 0)
        {
          goto LABEL_157;
        }

        if (v227 == *(v130 + 36))
        {
          v197 = v196 & (-2 << (v161 & 0x3F));
          if (v197)
          {
            v187 = __clz(__rbit64(v197)) | v161 & 0x7FFFFFFFFFFFFFC0;
            v188 = v226;
          }

          else
          {
            v198 = v189 << 6;
            v199 = v189 + 1;
            v188 = v226;
            v200 = (v225 + 8 * v189);
            while (v199 < (v187 + 63) >> 6)
            {
              v202 = *v200++;
              v201 = v202;
              v198 += 64;
              ++v199;
              if (v202)
              {
                v187 = __clz(__rbit64(v201)) + v198;
                break;
              }
            }
          }

          ++v163;
          v161 = v187;
          if (v163 == v188)
          {
            goto LABEL_141;
          }

          continue;
        }

        goto LABEL_159;
      }

    case 7uLL:
      v97 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v98 = MEMORY[0x1E69E7CD0];
      v233 = MEMORY[0x1E69E7CD0];
      v99 = *(v97 + 16);
      if (v99)
      {

        v100 = 32;
        do
        {
          if (*(v97 + v100))
          {
            if (*(v97 + v100) == 1)
            {
              v101 = 4;
            }

            else
            {
              v101 = 8;
            }

            sub_1C4025E80(&v236, v101);
          }

          ++v100;
          --v99;
        }

        while (v99);

        v98 = v233;
      }

      v158 = *(v98 + 16);
      if (!v158)
      {
        goto LABEL_141;
      }

      v236 = MEMORY[0x1E69E7CC0];
      sub_1C4031950();
      v159 = v98 + 56;
      v160 = -1 << *(v98 + 32);
      v161 = sub_1C4031770();
      LODWORD(v227) = *(v98 + 36);
      v162 = objc_opt_self();
      v163 = 0;
      v230 = "ipantHandles.value IN %@";
      *&v231 = v162;
      v164 = *(v98 + 32);
      v225 = v98 + 64;
      v229 = xmmword_1C4038040;
      v228 = 0xD000000000000019;
      v226 = v158;
      while (2)
      {
        if (v161 < 0 || v161 >= 1 << v164)
        {
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v167 = v161 >> 6;
        if ((*(v159 + 8 * (v161 >> 6)) & (1 << v161)) == 0)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v168 = *(*(v98 + 48) + 4 * v161);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v169 = swift_allocObject();
        *(v169 + 16) = v229;
        v170 = MEMORY[0x1E69E7668];
        *(v169 + 56) = MEMORY[0x1E69E7668];
        *(v169 + 32) = v168;
        *(v169 + 88) = v170;
        *(v169 + 64) = v168;
        v2 = sub_1C4031190();
        v171 = sub_1C40313E0();

        v172 = [v231 predicateWithFormat:v2 argumentArray:v171];

        sub_1C4031920();
        v173 = *(v236 + 16);
        sub_1C4031960();
        sub_1C4031970();
        sub_1C4031930();
        v164 = *(v98 + 32);
        v165 = 1 << v164;
        if (v161 >= 1 << v164)
        {
          goto LABEL_154;
        }

        v174 = *(v159 + 8 * v167);
        if ((v174 & (1 << v161)) == 0)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          break;
        }

        if (v227 == *(v98 + 36))
        {
          v175 = v174 & (-2 << (v161 & 0x3F));
          if (v175)
          {
            v165 = __clz(__rbit64(v175)) | v161 & 0x7FFFFFFFFFFFFFC0;
            v166 = v226;
          }

          else
          {
            v176 = v167 << 6;
            v177 = v167 + 1;
            v166 = v226;
            v178 = (v225 + 8 * v167);
            while (v177 < (v165 + 63) >> 6)
            {
              v180 = *v178++;
              v179 = v180;
              v176 += 64;
              ++v177;
              if (v180)
              {
                v165 = __clz(__rbit64(v179)) + v176;
                break;
              }
            }
          }

          ++v163;
          v161 = v165;
          if (v163 == v166)
          {
LABEL_141:

            sub_1C3F2AE94();
            v212 = sub_1C40313E0();

            v213 = [objc_opt_self() orPredicateWithSubpredicates_];

            return v213;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      sub_1C4031400();
LABEL_132:
      sub_1C4031430();
      v232 = v2;
      v207 = v234;
      if (*(v234 + 16))
      {
        v208 = swift_allocObject();
        *(v208 + 16) = v231;
        *(v208 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD10, &qword_1C403C1E8);
        *(v208 + 32) = v207;
        v209 = sub_1C4031190();
        v210 = sub_1C40313E0();

        v211 = [v163 *(v161 + 1800)];

        MEMORY[0x1C6933090]();
        if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v224 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C4031400();
        }

        sub_1C4031430();
      }

      else
      {
      }

      v214 = swift_allocObject();
      *(v214 + 16) = v231;
      v215 = v235;
      *(v214 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD10, &qword_1C403C1E8);
      *(v214 + 32) = v215;
      v216 = sub_1C4031190();
      v217 = sub_1C40313E0();

      v218 = [v163 *(v161 + 1800)];

      MEMORY[0x1C6933090]();
      if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v222 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C4031400();
      }

      sub_1C4031430();
      sub_1C3F2AE94();
      v219 = sub_1C40313E0();

      v220 = objc_opt_self();
      v221 = [v220 orPredicateWithSubpredicates_];

      MEMORY[0x1C6933090]();
      if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v223 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C4031400();
      }

      sub_1C4031430();
      v36 = sub_1C40313E0();

      v37 = [v220 andPredicateWithSubpredicates_];
LABEL_148:
      v123 = v37;

      return v123;
    case 8uLL:
      v149 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v150 = MEMORY[0x1E69E7CD0];
      v235 = MEMORY[0x1E69E7CD0];
      v236 = MEMORY[0x1E69E7CD0];
      v234 = MEMORY[0x1E69E7CD0];
      v151 = *(v149 + 16);
      if (v151)
      {

        v152 = (v149 + 64);
        do
        {
          v153 = *(v152 - 32);
          v155 = *(v152 - 3);
          v154 = *(v152 - 2);
          v157 = *(v152 - 1);
          v156 = *v152;

          sub_1C4025D98(&v233, v153);

          sub_1C4025C48(&v233, v155, v154);

          if (v156)
          {
            sub_1C4025C48(&v233, v157, v156);
          }

          v152 += 5;
          --v151;
        }

        while (v151);

        v150 = v236;
      }

      v2 = MEMORY[0x1E69E7CC0];
      v233 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v203 = swift_allocObject();
      v231 = xmmword_1C40385D0;
      *(v203 + 16) = xmmword_1C40385D0;
      *(v203 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD08, &qword_1C403C1E0);
      *(v203 + 32) = v150;
      v204 = sub_1C4031190();
      v205 = sub_1C40313E0();

      v163 = objc_opt_self();
      v161 = CHAppProtectionReadEntitlement;
      v206 = [v163 predicateWithFormat:v204 argumentArray:v205];

      MEMORY[0x1C6933090]();
      if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_132;
      }

      goto LABEL_160;
    case 9uLL:
      v47 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v48 = swift_allocObject();
      v49 = v48;
      *(v48 + 16) = xmmword_1C40385D0;
      v50 = *(v47 + 16);
      v51 = MEMORY[0x1E69E7CC0];
      if (v50)
      {
        v230 = v48;
        v233 = MEMORY[0x1E69E7CC0];

        sub_1C3EF0270(0, v50, 0);
        v51 = v233;
        *&v231 = 0x80000001C4056D20;
        *&v229 = v47;
        v52 = (v47 + 40);
        do
        {
          v53 = *v52;
          if (*v52)
          {
            v54 = *(v52 - 1);
          }

          else
          {
            v54 = 0xD000000000000013;
          }

          if (*v52)
          {
            v55 = *v52;
          }

          else
          {
            v55 = 0x80000001C4056D00;
          }

          if (v53 == 1)
          {
            v56 = 0xD000000000000012;
          }

          else
          {
            v56 = v54;
          }

          if (v53 == 1)
          {
            v57 = v231;
          }

          else
          {
            v57 = v55;
          }

          sub_1C3F16304(*(v52 - 1), v53);
          v233 = v51;
          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1C3EF0270((v58 > 1), v59 + 1, 1);
            v51 = v233;
          }

          v52 += 2;
          *(v51 + 16) = v59 + 1;
          v60 = v51 + 16 * v59;
          *(v60 + 32) = v56;
          *(v60 + 40) = v57;
          --v50;
        }

        while (v50);

        v49 = v230;
      }

      *(v49 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
      *(v49 + 32) = v51;
      v40 = sub_1C4031190();
      v41 = sub_1C40313E0();

      v42 = [objc_opt_self() predicateWithFormat:v40 argumentArray:v41];
      goto LABEL_111;
    case 0xAuLL:
      v134 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v135 = *(v134 + 16);
      if (!v135)
      {
        goto LABEL_12;
      }

      v233 = MEMORY[0x1E69E7CC0];

      sub_1C4031950();
      v136 = 32;
      v137 = MEMORY[0x1E69E6370];
      v231 = xmmword_1C4038040;
      break;
    case 0xBuLL:
      v38 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1C40385D0;
      *(v39 + 56) = MEMORY[0x1E69E6370];
      *(v39 + 32) = v38;
      v40 = sub_1C4031190();
      v41 = sub_1C40313E0();

      v42 = [objc_opt_self() predicateWithFormat:v40 argumentArray:v41];
      goto LABEL_111;
    case 0xCuLL:
      v43 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v233 = v43;
      v44 = sub_1C3EE61B4(v43);
      v45 = sub_1C3F1AFD8(v44);
      v46 = [objc_opt_self() notPredicateWithSubpredicate_];

      sub_1C3EE6238(v43);
      return v46;
    case 0xDuLL:
      v124 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v125 = *(v124 + 16);
      if (v125)
      {
        v233 = MEMORY[0x1E69E7CC0];

        v126 = sub_1C4031950();
        v127 = 32;
        do
        {
          v236 = *(v124 + v127);
          sub_1C3F1AFD8(v126);
          sub_1C4031920();
          v128 = *(v233 + 16);
          sub_1C4031960();
          sub_1C4031970();
          v126 = sub_1C4031930();
          v127 += 8;
          --v125;
        }

        while (v125);
      }

      sub_1C3F2AE94();
      v36 = sub_1C40313E0();

      v37 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_148;
    case 0xEuLL:
      v31 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *(v31 + 16);
      if (v32)
      {
        v233 = MEMORY[0x1E69E7CC0];

        v33 = sub_1C4031950();
        v34 = 32;
        do
        {
          v236 = *(v31 + v34);
          sub_1C3F1AFD8(v33);
          sub_1C4031920();
          v35 = *(v233 + 16);
          sub_1C4031960();
          sub_1C4031970();
          v33 = sub_1C4031930();
          v34 += 8;
          --v32;
        }

        while (v32);
      }

      goto LABEL_12;
    case 0xFuLL:
      v76 = objc_opt_self();
      if (v13 == 0xF000000000000000)
      {
        v77 = [v76 predicateWithValue_];
      }

      else
      {
        v77 = [v76 predicateWithValue_];
      }

      return v77;
    default:
      v14 = *(v13 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v15 = swift_allocObject();
      v16 = v15;
      *(v15 + 16) = xmmword_1C4038040;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 32) = 0x695F657571696E75;
      *(v15 + 40) = 0xE900000000000064;
      v17 = v14[2];
      v18 = MEMORY[0x1E69E7CC0];
      if (!v17)
      {
        goto LABEL_110;
      }

      v227 = v15;
      v233 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v17, 0);
      v18 = v233;
      v20 = *(v9 + 16);
      v19 = v9 + 16;
      v21 = *(v19 + 64);
      v226 = v14;
      v22 = v14 + ((v21 + 32) & ~v21);
      v228 = *(v19 + 56);
      *&v229 = v20;
      v230 = v19;
      v23 = (v19 - 8);
      do
      {
        v24 = v231;
        (v229)(v12, v22, v231);
        v25 = sub_1C40309A0();
        v27 = v26;
        (*v23)(v12, v24);
        v233 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1C3EF0270((v28 > 1), v29 + 1, 1);
          v18 = v233;
        }

        *(v18 + 16) = v29 + 1;
        v30 = v18 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v22 += v228;
        --v17;
      }

      while (v17);
LABEL_38:

      v16 = v227;
LABEL_110:
      *(v16 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
      *(v16 + 64) = v18;
      v40 = sub_1C4031190();
      v41 = sub_1C40313E0();

      v42 = [objc_opt_self() predicateWithFormat:v40 argumentArray:v41];
LABEL_111:
      v181 = v42;

      return v181;
  }

  while (1)
  {
    v144 = *(v134 + v136);
    if (v144 > 2)
    {
      if (v144 != 3)
      {
        if (v144 == 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
          v146 = swift_allocObject();
          *(v146 + 16) = v231;
          *(v146 + 56) = v137;
          *(v146 + 32) = 0;
          *(v146 + 88) = v137;
          *(v146 + 64) = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
          v148 = swift_allocObject();
          *(v148 + 16) = v231;
          *(v148 + 56) = v137;
          *(v148 + 32) = 0;
          *(v148 + 88) = v137;
          *(v148 + 64) = 1;
        }

        v139 = sub_1C4031190();
        v140 = sub_1C40313E0();

        v141 = [objc_opt_self() predicateWithFormat:v139 argumentArray:v140];
        goto LABEL_74;
      }
    }

    else
    {
      if (!*(v134 + v136))
      {
        v147 = [objc_opt_self() predicateWithValue_];
        goto LABEL_75;
      }

      if (v144 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v145 = swift_allocObject();
        *(v145 + 16) = v231;
        *(v145 + 56) = v137;
        *(v145 + 32) = 1;
        *(v145 + 88) = v137;
        *(v145 + 64) = 1;
        v139 = sub_1C4031190();
        v140 = sub_1C40313E0();

        v141 = [objc_opt_self() predicateWithFormat:v139 argumentArray:v140];
        goto LABEL_74;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
    v138 = swift_allocObject();
    *(v138 + 16) = v231;
    *(v138 + 56) = v137;
    *(v138 + 32) = 1;
    *(v138 + 88) = v137;
    *(v138 + 64) = 0;
    v139 = sub_1C4031190();
    v140 = sub_1C40313E0();

    v141 = [objc_opt_self() predicateWithFormat:v139 argumentArray:v140];
LABEL_74:
    v142 = v141;

LABEL_75:
    sub_1C4031920();
    v143 = *(v233 + 16);
    sub_1C4031960();
    sub_1C4031970();
    sub_1C4031930();
    ++v136;
    if (!--v135)
    {

LABEL_12:
      sub_1C3F2AE94();
      v36 = sub_1C40313E0();

      v37 = [objc_opt_self() orPredicateWithSubpredicates_];
      goto LABEL_148;
    }
  }
}

uint64_t sub_1C3F1CF34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F078, &qword_1C40383D0);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD18, &qword_1C403C210);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD20, &unk_1C403C240);
  a3[4] = sub_1C3F2B09C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC08FD38, &qword_1EC08FD18, &qword_1C403C210);
  sub_1C3EF7BF0(&qword_1EC08F0C0, &qword_1EC08F078, &qword_1C40383D0);
  sub_1C3EF7BF0(&qword_1EC08FD40, &qword_1EC08FA40, &qword_1C403AAB8);
  sub_1C3F2B8E4(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1C40307E0();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1C3F1D318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v36 = a5;
  v31 = a3;
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F120, &unk_1C4038440);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD48, &qword_1C403C250);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD50, &qword_1C403C258);
  v20 = *(v33 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v23 = &v31 - v22;
  v24 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v11 + 8))(v14, v10);
  v39 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD58, &qword_1C403C288);
  sub_1C40309F0();
  sub_1C3EF7BF0(&qword_1EC08FD60, &qword_1EC08FD48, &qword_1C403C250);
  sub_1C3EF7BF0(&qword_1EC08FD68, &qword_1EC08FD58, &qword_1C403C288);
  sub_1C40307B0();
  (*(v16 + 8))(v19, v15);
  v40 = 0;
  v25 = v34;
  sub_1C4030870();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD70, &qword_1C403C290);
  v27 = v36;
  v36[3] = v26;
  v27[4] = sub_1C3F2B2F0();
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1C3EF7BF0(&qword_1EC08FDA8, &qword_1EC08FD50, &qword_1C403C258);
  sub_1C3EF7BF0(&qword_1EC08FDB0, &qword_1EC08F120, &unk_1C4038440);
  v28 = v33;
  v29 = v37;
  sub_1C4030820();
  (*(v38 + 8))(v25, v29);
  return (*(v20 + 8))(v23, v28);
}

uint64_t sub_1C3F1D7E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDA0, &qword_1C403C298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD18, &qword_1C403C210);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - v11;
  v14[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08FDB8, &qword_1EC08FDA0, &qword_1C403C298);
  sub_1C4030880();
  sub_1C3EF7BF0(&qword_1EC08FD38, &qword_1EC08FD18, &qword_1C403C210);
  sub_1C3EF7BF0(&qword_1EC08FD40, &qword_1EC08FA40, &qword_1C403AAB8);
  sub_1C3F2B8E4(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  sub_1C40307E0();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1C3F1DA94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a3;
  v72 = a4;
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDC0, &qword_1C403C2C8);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v51 - v8;
  v9 = sub_1C4030830();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDC8, &qword_1C403C2D0);
  v79 = *(v67 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v21 = &v51 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDD0, &qword_1C403C2D8);
  v78 = *(v75 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDD8, &qword_1C403C2E0);
  v26 = *(v25 - 8);
  v68 = v25;
  v69 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v63 = *a1;
  v64 = &v51 - v28;
  v65 = sub_1C4030980();
  sub_1C4030870();
  v59 = sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  v29 = v21;
  v57 = v18;
  v58 = v14;
  sub_1C40307A0();

  v30 = *(v15 + 8);
  v60 = v15 + 8;
  v61 = v30;
  v30(v18, v14);
  LODWORD(v66) = *MEMORY[0x1E6968C30];
  v32 = v76;
  v31 = v77;
  v62 = *(v77 + 104);
  v62(v13);
  v56 = sub_1C3EF7BF0(&qword_1EC08FDE0, &qword_1EC08FDD0, &qword_1C403C2D8);
  v54 = sub_1C3EF7BF0(&qword_1EC08FDE8, &qword_1EC08FDC8, &qword_1C403C2D0);
  v55 = sub_1C3F2B8E4(&qword_1EC08FDF0, MEMORY[0x1E6969530]);
  v52 = v13;
  v33 = v75;
  v34 = v67;
  sub_1C4030800();
  v35 = *(v31 + 8);
  v77 = v31 + 8;
  v53 = v35;
  v35(v13, v32);
  v36 = *(v79 + 8);
  v79 += 8;
  v36(v21, v34);
  v37 = *(v78 + 8);
  v78 += 8;
  v38 = v24;
  v37(v24, v33);
  v39 = v57;
  v40 = v58;
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  v61(v39, v40);
  sub_1C4030870();
  v41 = v52;
  v42 = v76;
  (v62)(v52, v66, v76);
  v43 = v70;
  v44 = v75;
  sub_1C4030800();
  v53(v41, v42);
  v37(v38, v44);
  v36(v29, v34);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDF8, &qword_1C403C310);
  v46 = v72;
  v72[3] = v45;
  v46[4] = sub_1C3F2B4D8();
  __swift_allocate_boxed_opaque_existential_1(v46);
  sub_1C3EF7BF0(&qword_1EC08FE28, &qword_1EC08FDD8, &qword_1C403C2E0);
  sub_1C3EF7BF0(&qword_1EC08FE30, &qword_1EC08FDC0, &qword_1C403C2C8);
  v47 = v64;
  v48 = v68;
  v49 = v73;
  sub_1C4030810();
  (*(v74 + 8))(v43, v49);
  return (*(v69 + 8))(v47, v48);
}

uint64_t sub_1C3F1E25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v5 = sub_1C4030830();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDD0, &qword_1C403C2D8);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDC8, &qword_1C403C2D0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  v24 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v15 + 8))(v18, v14);
  sub_1C4030980();
  sub_1C4030870();
  v26 = v32;
  v25 = v33;
  (*(v32 + 104))(v8, *v35, v33);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FDC0, &qword_1C403C2C8);
  v28 = v36;
  v36[3] = v27;
  v28[4] = sub_1C3F2B6F0();
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1C3EF7BF0(&qword_1EC08FDE8, &qword_1EC08FDC8, &qword_1C403C2D0);
  sub_1C3EF7BF0(&qword_1EC08FDE0, &qword_1EC08FDD0, &qword_1C403C2D8);
  sub_1C3F2B8E4(&qword_1EC08FDF0, MEMORY[0x1E6969530]);
  v29 = v37;
  sub_1C4030800();
  (*(v26 + 8))(v8, v25);
  (*(v38 + 8))(v13, v29);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1C3F1E6B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE38, &qword_1C403C318);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE40, &qword_1C403C320);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F688, &qword_1C403AAB0);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE48, &qword_1C403C350);
  a3[4] = sub_1C3F2B794();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC08FE68, &qword_1EC08FE40, &qword_1C403C320);
  sub_1C3EF7BF0(&qword_1EC08FE70, &qword_1EC08FE38, &qword_1C403C318);
  sub_1C3EF7BF0(&qword_1EC08FE78, &qword_1EC08F688, &qword_1C403AAB0);
  sub_1C3F131E0();
  v22 = v25;
  sub_1C40307E0();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1C3F1EA6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE80, &qword_1C403C380);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE88, &qword_1C403C388);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F858, &qword_1C403A5B8);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FE90, &qword_1C403C3B8);
  a3[4] = sub_1C3F2B92C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC08FEB0, &qword_1EC08FE88, &qword_1C403C388);
  sub_1C3EF7BF0(&qword_1EC08FEB8, &qword_1EC08FE80, &qword_1C403C380);
  sub_1C3EF7BF0(&qword_1EC08FEC0, &qword_1EC08F858, &qword_1C403A5B8);
  sub_1C3F180F0();
  v22 = v25;
  sub_1C40307E0();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1C3F1EE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FEC8, &qword_1C403C3C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v6 + 8))(v9, v5);
  v19 = v18;
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FED0, &qword_1C403C3F0);
  a3[4] = sub_1C3F2BA64();
  __swift_allocate_boxed_opaque_existential_1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FEF0, &qword_1C403C3F8);
  sub_1C3EF7BF0(&qword_1EC08FFB8, &qword_1EC08FEC8, &qword_1C403C3C0);
  sub_1C3EF7BF0(&qword_1EC08FFC0, &qword_1EC08FEF0, &qword_1C403C3F8);
  sub_1C3EF7BF0(&qword_1EC08FFC8, &qword_1EC08FFD0, &qword_1C403C460);
  sub_1C40307D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C3F1F138@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v105 = a1;
  v95 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFB0, &qword_1C403C458);
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v69 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFA0, &qword_1C403C450);
  v90 = *(v89 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF90, &qword_1C403C448);
  v10 = *(v9 - 8);
  v91 = v9;
  v92 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v69 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF80, &qword_1C403C440);
  v84 = *(v83 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v69 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF70, &qword_1C403C438);
  v79 = *(v78 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v69 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF60, &qword_1C403C430);
  v81 = *(v80 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v69 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF50, &qword_1C403C428);
  v106 = *(v104 - 8);
  v19 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v21 = &v69 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF40, &qword_1C403C420);
  v72 = *(v71 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF30, &qword_1C403C418);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF20, &qword_1C403C410);
  v70 = *(v30 - 8);
  v31 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v69 - v32;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF10, &qword_1C403C408);
  v74 = *(v73 - 8);
  v34 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v101 = &v69 - v35;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FF00, &qword_1C403C400);
  v85 = *(v82 - 8);
  v36 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v103 = &v69 - v37;
  v97 = sub_1C3EF7BF0(&qword_1EC08FFD8, &qword_1EC08FF30, &qword_1C403C418);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  v98 = *(v26 + 8);
  v100 = v26 + 8;
  v98(v29, v25);
  v38 = v102[1];
  v107 = *v102;
  v108 = v38;
  v109 = *(v102 + 4);
  v96 = v21;
  sub_1C4030870();
  swift_getKeyPath();
  v99 = sub_1C3EF7BF0(&qword_1EC08FFE0, &qword_1EC08FF50, &qword_1C403C428);
  v39 = v104;
  sub_1C40307A0();

  v40 = *(v106 + 8);
  v106 += 8;
  v40(v21, v39);
  v69 = v40;
  sub_1C3EF7BF0(&qword_1EC08FFE8, &qword_1EC08FF20, &qword_1C403C410);
  sub_1C3EF7BF0(&qword_1EC08FFF0, &qword_1EC08FF40, &qword_1C403C420);
  sub_1C3F11B40();
  v41 = v24;
  v42 = v71;
  sub_1C4030790();
  (*(v72 + 8))(v41, v42);
  (*(v70 + 8))(v33, v30);
  sub_1C4030880();
  swift_getKeyPath();
  v43 = v75;
  sub_1C40307A0();

  v98(v29, v25);
  v44 = v102;
  v45 = v102[1];
  v107 = *v102;
  v108 = v45;
  v109 = *(v102 + 4);
  v46 = v96;
  sub_1C4030870();
  swift_getKeyPath();
  v47 = v77;
  v48 = v104;
  sub_1C40307A0();

  v40(v46, v48);
  sub_1C3EF7BF0(&qword_1EC08FFF8, &qword_1EC08FF70, &qword_1C403C438);
  sub_1C3EF7BF0(&qword_1EC090000, &qword_1EC08FF80, &qword_1C403C440);
  v49 = v76;
  v50 = v43;
  v51 = v78;
  v52 = v83;
  sub_1C4030790();
  (*(v84 + 8))(v47, v52);
  (*(v79 + 8))(v50, v51);
  v84 = MEMORY[0x1E6968D08];
  sub_1C3EF7BF0(&qword_1EC090008, &qword_1EC08FF10, &qword_1C403C408);
  sub_1C3EF7BF0(&qword_1EC090010, &qword_1EC08FF60, &qword_1C403C430);
  v53 = v101;
  v54 = v73;
  v55 = v80;
  sub_1C4030810();
  (*(v81 + 8))(v49, v55);
  (*(v74 + 8))(v53, v54);
  sub_1C4030880();
  swift_getKeyPath();
  v56 = v86;
  sub_1C40307A0();

  v98(v29, v25);
  v57 = v44[1];
  v107 = *v44;
  v108 = v57;
  v109 = *(v44 + 4);
  v58 = v96;
  sub_1C4030870();
  swift_getKeyPath();
  v59 = v88;
  v60 = v104;
  sub_1C40307A0();

  v69(v58, v60);
  sub_1C3EF7BF0(&qword_1EC090018, &qword_1EC08FFA0, &qword_1C403C450);
  sub_1C3EF7BF0(&qword_1EC090020, &qword_1EC08FFB0, &qword_1C403C458);
  sub_1C3F2C1EC();
  v61 = v87;
  v62 = v59;
  v63 = v89;
  v64 = v93;
  sub_1C4030790();
  (*(v94 + 8))(v62, v64);
  (*(v90 + 8))(v56, v63);
  sub_1C3EF7BF0(&qword_1EC090030, &qword_1EC08FF00, &qword_1C403C400);
  sub_1C3EF7BF0(&qword_1EC090038, &qword_1EC08FF90, &qword_1C403C448);
  v65 = v103;
  v66 = v82;
  v67 = v91;
  sub_1C4030810();
  (*(v92 + 8))(v61, v67);
  return (*(v85 + 8))(v65, v66);
}

uint64_t sub_1C3F1FF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090040, &qword_1C403C548);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090048, &qword_1C403C550);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F9C0, &qword_1C403AA98);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090050, &qword_1C403C580);
  a3[4] = sub_1C3F2C268();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC090070, &qword_1EC090048, &qword_1C403C550);
  sub_1C3EF7BF0(&qword_1EC090078, &qword_1EC090040, &qword_1C403C548);
  sub_1C3EF7BF0(&qword_1EC090080, &qword_1EC08F9C0, &qword_1C403AA98);
  sub_1C3F17740();
  v22 = v25;
  sub_1C40307E0();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1C3F202D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090088, &qword_1C403C588);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090090, &qword_1C403C590);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F5E0, &qword_1C403AA90);
  sub_1C4030870();
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090098, &qword_1C403C5C0);
  a3[4] = sub_1C3F2C398();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC0900B8, &qword_1EC090090, &qword_1C403C590);
  sub_1C3EF7BF0(&qword_1EC0900C0, &qword_1EC090088, &qword_1C403C588);
  sub_1C3EF7BF0(&qword_1EC0900C8, &qword_1EC08F5E0, &qword_1C403AA90);
  sub_1C3F0FCD0();
  v22 = v25;
  sub_1C40307E0();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1C3F20688(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F2B8E4(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C3F20750@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F120, &unk_1C4038440);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0900D0, &qword_1C403C5F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-v18];
  v20 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v11 + 8))(v14, v10);
  v27 = v24;
  sub_1C4030870();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0900D8, &qword_1C403C620);
  a3[4] = sub_1C3F2C4E8();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC0900F0, &qword_1EC0900D0, &qword_1C403C5F0);
  sub_1C3EF7BF0(&qword_1EC08FDB0, &qword_1EC08F120, &unk_1C4038440);
  v21 = v25;
  sub_1C4030790();
  (*(v26 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1C3F20ABC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v33 = *(v30 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0900F8, &qword_1C403C628);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090100, &qword_1C403C630);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090108, &qword_1C403C638);
  v19 = *(v18 - 8);
  v31 = v18;
  v32 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  v23 = *a1;
  v37 = a2;
  sub_1C4030870();
  swift_getKeyPath();
  sub_1C3EF7BF0(&qword_1EC090110, &qword_1EC0900F8, &qword_1C403C628);
  sub_1C40307A0();

  (*(v9 + 8))(v12, v8);
  v24 = sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  v25 = v30;
  sub_1C4030880();
  v36 = v25;
  v37 = v7;
  sub_1C3EF7BF0(&qword_1EC090118, &qword_1EC090100, &qword_1C403C630);
  v35 = v24;
  sub_1C40307F0();
  (*(v14 + 8))(v17, v13);
  (*(v33 + 8))(v7, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090120, &qword_1C403C668);
  v27 = v34;
  v34[3] = v26;
  v27[4] = sub_1C3F2C58C();
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1C3EF7BF0(&qword_1EC090148, &qword_1EC090108, &qword_1C403C638);
  v28 = v31;
  sub_1C40307C0();
  return (*(v32 + 8))(v22, v28);
}

uint64_t CallPredicate.description.getter()
{
  v11 = sub_1C4031CF0();
  v10 = *(v11 - 8);
  v1 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  *(&v19 + 1) = &type metadata for CallPredicate;
  *&v18 = v4;
  sub_1C3EE61B4(v4);
  sub_1C4031CD0();
  v21 = 0;
  v22 = 0xE000000000000000;
  v9 = v3;
  sub_1C4031CE0();
  sub_1C40319B0();

  sub_1C4031A20();
  while (v20)
  {
    v15 = v18;
    sub_1C3EED3E8(&v19, &v16);
    sub_1C3EF1A60(&v15, &v12, &qword_1EC08F8D0, &unk_1C403A9E0);
    v5 = v13;
    if (v13)
    {
      v6 = v12;
      __swift_destroy_boxed_opaque_existential_1(v14);
      v12 = 0;
      v13 = 0xE000000000000000;
      MEMORY[0x1C6932F70](46, 0xE100000000000000);
      MEMORY[0x1C6932F70](v6, v5);

      MEMORY[0x1C6932F70](40, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      sub_1C4031BC0();
      MEMORY[0x1C6932F70](41, 0xE100000000000000);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      v12 = 0;
      v13 = 0xE000000000000000;
      MEMORY[0x1C6932F70](46, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      sub_1C4031BC0();
    }

    MEMORY[0x1C6932F70](v12, v13);

    sub_1C3EED388(&v15, &qword_1EC08F8D0, &unk_1C403A9E0);
    sub_1C4031A20();
  }

  (*(v10 + 8))(v9, v11);

  return v21;
}

unint64_t static CallPredicate.&& infix(_:_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF50, &qword_1C4038080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4038040;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v6 + 16) = v7;
  *a3 = v6 | 0xD000000000000000;
  sub_1C3EE61B4(v4);

  return sub_1C3EE61B4(v5);
}

unint64_t static CallPredicate.|| infix(_:_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF50, &qword_1C4038080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4038040;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v6 + 16) = v7;
  *a3 = v6 | 0xE000000000000000;
  sub_1C3EE61B4(v4);

  return sub_1C3EE61B4(v5);
}

unint64_t static CallPredicate.! prefix(_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4 | 0xC000000000000000;

  return sub_1C3EE61B4(v3);
}

uint64_t static CallPredicate.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_1C4030980();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v77 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v77 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v77 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v77 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v30 = &v77 - v29;
  v31 = *a1;
  v32 = *a2;
  switch(v31 >> 60)
  {
    case 1uLL:
      if (v32 >> 60 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    case 2uLL:
      if (v32 >> 60 != 2)
      {
        goto LABEL_43;
      }

LABEL_25:
      v33 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v34 = v32;
      v35 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_26;
    case 3uLL:
      if (v32 >> 60 != 3)
      {
        goto LABEL_43;
      }

      v53 = v27;
      v54 = v28;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v80 = v32;
      v56 = v55;
      v57 = swift_projectBox();
      v58 = *(v56 + 48);
      v77 = v57;
      v78 = v58;
      v59 = swift_projectBox();
      v79 = v54;
      v60 = *(v54 + 16);
      v60(v30, v57, v53);
      v60(v26, v59, v53);
      v61 = v78;
      v60(v23, v77 + v78, v53);
      v60(v20, v59 + v61, v53);
      sub_1C3EE61B4(v80);
      sub_1C3EE61B4(v31);
      if (sub_1C4030950())
      {
        v39 = sub_1C4030950();
        v62 = *(v79 + 8);
        v62(v20, v53);
        v62(v23, v53);
        v62(v26, v53);
        v62(v30, v53);
        sub_1C3EE6238(v31);
        sub_1C3EE6238(v80);
        return v39 & 1;
      }

      v76 = *(v79 + 8);
      v76(v20, v53);
      v76(v23, v53);
      v76(v26, v53);
      v76(v30, v53);
      sub_1C3EE6238(v31);
      v75 = v80;
      goto LABEL_44;
    case 4uLL:
      if (v32 >> 60 != 4)
      {
        goto LABEL_43;
      }

      v40 = v27;
      v41 = v28;
      v42 = v32;
      v43 = swift_projectBox();
      v44 = swift_projectBox();
      v45 = *(v41 + 16);
      v45(v17, v43, v40);
      v45(v14, v44, v40);
      sub_1C3EE61B4(v42);
      sub_1C3EE61B4(v31);
      v39 = sub_1C4030950();
      v46 = *(v41 + 8);
      v46(v14, v40);
      v46(v17, v40);
      sub_1C3EE6238(v31);
      sub_1C3EE6238(v42);
      return v39 & 1;
    case 5uLL:
      if (v32 >> 60 != 5)
      {
        goto LABEL_43;
      }

      v63 = v27;
      v64 = v28;
      v65 = v32;
      v66 = swift_projectBox();
      v67 = swift_projectBox();
      v68 = *(v64 + 16);
      v68(v11, v66, v63);
      v68(v8, v67, v63);
      sub_1C3EE61B4(v65);
      sub_1C3EE61B4(v31);
      v39 = sub_1C4030950();
      v69 = *(v64 + 8);
      v69(v8, v63);
      v69(v11, v63);
      sub_1C3EE6238(v31);
      sub_1C3EE6238(v65);
      return v39 & 1;
    case 6uLL:
      if (v32 >> 60 != 6)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    case 7uLL:
      if (v32 >> 60 != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    case 8uLL:
      if (v32 >> 60 != 8)
      {
        goto LABEL_43;
      }

      v72 = sub_1C3F21D8C(*((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10));
      sub_1C3EE61B4(v32);
      sub_1C3EE61B4(v31);
      sub_1C3EE6238(v31);
      v73 = v32;
      goto LABEL_32;
    case 9uLL:
      if (v32 >> 60 != 9)
      {
        goto LABEL_43;
      }

      v49 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v34 = v32;
      v50 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C3EE61B4(v34);
      sub_1C3EE61B4(v31);

      v51 = sub_1C3F21E7C(v49, v50);
      goto LABEL_31;
    case 0xAuLL:
      if (v32 >> 60 != 10)
      {
        goto LABEL_43;
      }

LABEL_36:
      v48 = v32;
      v39 = sub_1C3F2203C(*((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10));
      sub_1C3EE61B4(v48);
      sub_1C3EE61B4(v31);
      goto LABEL_37;
    case 0xBuLL:
      if (v32 >> 60 != 11)
      {
        goto LABEL_43;
      }

      v36 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v32;
      v38 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C3EE61B4(v37);
      sub_1C3EE61B4(v31);
      sub_1C3EE6238(v31);
      sub_1C3EE6238(v37);
      v39 = v36 ^ v38 ^ 1;
      return v39 & 1;
    case 0xCuLL:
      if (v32 >> 60 != 12)
      {
        goto LABEL_43;
      }

      v47 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v82 = v47;
      sub_1C3EE61B4(v32);
      sub_1C3EE61B4(v31);
      v48 = v32;
      v39 = static CallPredicate.== infix(_:_:)(&v82, &v81);
LABEL_37:
      sub_1C3EE6238(v31);
      sub_1C3EE6238(v48);
      return v39 & 1;
    case 0xDuLL:
      if (v32 >> 60 == 13)
      {
        goto LABEL_30;
      }

      goto LABEL_43;
    case 0xEuLL:
      if (v32 >> 60 != 14)
      {
        goto LABEL_43;
      }

LABEL_30:
      v70 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v34 = v32;
      v71 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C3EE61B4(v34);
      sub_1C3EE61B4(v31);

      v51 = sub_1C3F22098(v70, v71);
      goto LABEL_31;
    case 0xFuLL:
      if (v31 == 0xF000000000000000)
      {
        if (v32 == 0xF000000000000000)
        {
          sub_1C3EE6238(0xF000000000000000);
          v52 = 0xF000000000000000;
LABEL_42:
          sub_1C3EE6238(v52);
          v39 = 1;
          return v39 & 1;
        }
      }

      else if (v32 == 0xF000000000000008)
      {
        sub_1C3EE6238(0xF000000000000008);
        v52 = 0xF000000000000008;
        goto LABEL_42;
      }

LABEL_43:
      sub_1C3EE61B4(v32);
      sub_1C3EE61B4(v31);
      sub_1C3EE6238(v31);
      v75 = v32;
LABEL_44:
      sub_1C3EE6238(v75);
      v39 = 0;
      return v39 & 1;
    default:
      if (v32 >> 60)
      {
        goto LABEL_43;
      }

      v33 = *(v31 + 16);
      v34 = v32;
      v35 = *(v32 + 16);
LABEL_26:
      sub_1C3EE61B4(v34);
      sub_1C3EE61B4(v31);

      v51 = sub_1C3F21B78(v33, v35);
LABEL_31:
      v72 = v51;

      sub_1C3EE6238(v31);
      v73 = v34;
LABEL_32:
      sub_1C3EE6238(v73);
      return v72 & 1;
  }
}

uint64_t sub_1C3F21B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1C3F2B8E4(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
    v22 = sub_1C4031180();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F21D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 32) == *(i - 32); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v8 = *(i - 1);
      v7 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C4031BF0() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_1C4031BF0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C3F21E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(i - 1);
    v8 = *i;
    if (!*v3)
    {
      sub_1C3F16304(*(i - 1), *i);
      sub_1C3F17D70(v5, 0);
      sub_1C3F17D70(v7, v8);
      if (v8)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (v6 == 1)
    {
      break;
    }

    if (v8 < 2)
    {
      sub_1C3F16304(*(i - 1), *i);
      sub_1C3F16304(v5, v6);
      goto LABEL_21;
    }

    if (v5 == v7 && v6 == v8)
    {
      sub_1C3F16304(*(v3 - 1), *v3);
      sub_1C3F16304(v5, v6);
      sub_1C3F17D70(v5, v6);
      v9 = v5;
      v10 = v6;
      goto LABEL_15;
    }

    v11 = *(v3 - 1);
    v12 = *v3;
    v13 = *(i - 1);
    v14 = *i;
    v15 = sub_1C4031BF0();
    sub_1C3F16304(v7, v8);
    sub_1C3F16304(v5, v6);
    sub_1C3F17D70(v5, v6);
    sub_1C3F17D70(v7, v8);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v8 == 1)
  {
    sub_1C3F17D70(*(v3 - 1), 1uLL);
    v9 = v7;
    v10 = 1;
LABEL_15:
    sub_1C3F17D70(v9, v10);
    goto LABEL_6;
  }

  sub_1C3F16304(*(i - 1), *i);
  v6 = 1;
LABEL_21:
  sub_1C3F17D70(v5, v6);
  sub_1C3F17D70(v7, v8);
  return 0;
}

uint64_t sub_1C3F2203C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F22098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_1C3EE61B4(v5);
        sub_1C3EE61B4(v7);
        v8 = static CallPredicate.== infix(_:_:)(&v11, &v10);
        sub_1C3EE6238(v7);
        sub_1C3EE6238(v5);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C3F22158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1C3EF033C(v14, v11);
        sub_1C3EF033C(v15, v8);
        v17 = static RecentCall.== infix(_:_:)(v11, v8);
        sub_1C3F2AE38(v8);
        sub_1C3F2AE38(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_1C3F222CC(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      result = 0x4449657571696E75;
      break;
    case 3:
      result = 0x49555570756F7267;
      break;
    case 4:
      result = 0x61737265766E6F63;
      break;
    case 5:
      result = 0x6E656577746562;
      break;
    case 6:
      result = 0x65726F666562;
      break;
    case 7:
      result = 0x7265746661;
      break;
    case 8:
      result = 0x707954616964656DLL;
      break;
    case 9:
      result = 0x7365707954797474;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x746174536C6C6163;
      break;
    case 13:
      result = 0x646165527369;
      break;
    case 14:
      result = 7630702;
      break;
    case 15:
      result = 6581857;
      break;
    case 16:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C3F2247C(uint64_t a1)
{
  v2 = sub_1C3F24E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F224B8(uint64_t a1)
{
  v2 = sub_1C3F24E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F224F4(uint64_t a1)
{
  v2 = sub_1C3F250E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22530(uint64_t a1)
{
  v2 = sub_1C3F250E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F2256C(uint64_t a1)
{
  v2 = sub_1C3F24824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F225A8(uint64_t a1)
{
  v2 = sub_1C3F24824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F225E4(uint64_t a1)
{
  v2 = sub_1C3F24E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22620(uint64_t a1)
{
  v2 = sub_1C3F24E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F2265C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C3F22678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C4031BF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C4031BF0();

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

uint64_t sub_1C3F22750(uint64_t a1)
{
  v2 = sub_1C3F24EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F2278C(uint64_t a1)
{
  v2 = sub_1C3F24EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F227C8(uint64_t a1)
{
  v2 = sub_1C3F24920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22804(uint64_t a1)
{
  v2 = sub_1C3F24920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F2A8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C3F2287C(uint64_t a1)
{
  v2 = sub_1C3F246F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F228B8(uint64_t a1)
{
  v2 = sub_1C3F246F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F228F4(uint64_t a1)
{
  v2 = sub_1C3F24EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22930(uint64_t a1)
{
  v2 = sub_1C3F24EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F2296C(uint64_t a1)
{
  v2 = sub_1C3F24FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F229A8(uint64_t a1)
{
  v2 = sub_1C3F24FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F229E4(uint64_t a1)
{
  v2 = sub_1C3F248CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22A20(uint64_t a1)
{
  v2 = sub_1C3F248CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22A5C(uint64_t a1)
{
  v2 = sub_1C3F24D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22A98(uint64_t a1)
{
  v2 = sub_1C3F24D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22AD4(uint64_t a1)
{
  v2 = sub_1C3F25094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22B10(uint64_t a1)
{
  v2 = sub_1C3F25094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22B4C(uint64_t a1)
{
  v2 = sub_1C3F24878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22B88(uint64_t a1)
{
  v2 = sub_1C3F24878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22BC4(uint64_t a1)
{
  v2 = sub_1C3F2474C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22C00(uint64_t a1)
{
  v2 = sub_1C3F2474C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22C3C(uint64_t a1)
{
  v2 = sub_1C3F24B24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22C78(uint64_t a1)
{
  v2 = sub_1C3F24B24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22CB4(uint64_t a1)
{
  v2 = sub_1C3F249F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22CF0(uint64_t a1)
{
  v2 = sub_1C3F249F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22D2C(uint64_t a1)
{
  v2 = sub_1C3F24C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22D68(uint64_t a1)
{
  v2 = sub_1C3F24C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F22DA4(uint64_t a1)
{
  v2 = sub_1C3F25040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F22DE0(uint64_t a1)
{
  v2 = sub_1C3F25040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t CallPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8E0, &qword_1C403A9F8);
  v163 = *(v3 - 8);
  v164 = v3;
  v4 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v162 = &v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8E8, &qword_1C403AA00);
  v160 = *(v6 - 8);
  v161 = v6;
  v7 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8F0, &qword_1C403AA08);
  v157 = *(v9 - 8);
  v158 = v9;
  v10 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8F8, &qword_1C403AA10);
  v154 = *(v12 - 8);
  v155 = v12;
  v13 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F900, &qword_1C403AA18);
  v152 = *(v15 - 8);
  v153 = v15;
  v16 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v116 - v17;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F908, &qword_1C403AA20);
  v148 = *(v149 - 8);
  v18 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v116 - v19;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F910, &qword_1C403AA28);
  v145 = *(v146 - 8);
  v20 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v116 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F918, &qword_1C403AA30);
  v142 = *(v143 - 8);
  v22 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v116 - v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F920, &qword_1C403AA38);
  v139 = *(v140 - 8);
  v24 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v116 - v25;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F928, &qword_1C403AA40);
  v136 = *(v137 - 8);
  v26 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v133 = &v116 - v27;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F930, &qword_1C403AA48);
  v130 = *(v132 - 8);
  v28 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v116 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F938, &qword_1C403AA50);
  v134 = *(v135 - 8);
  v30 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v131 = &v116 - v31;
  v32 = sub_1C4030980();
  v167 = *(v32 - 8);
  v168 = v32;
  v33 = *(v167 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v128 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v127 = &v116 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v165 = &v116 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v166 = &v116 - v40;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F940, &qword_1C403AA58);
  v125 = *(v126 - 8);
  v41 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v116 - v42;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F948, &qword_1C403AA60);
  v122 = *(v123 - 8);
  v43 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v116 - v44;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F950, &qword_1C403AA68);
  v119 = *(v120 - 8);
  v45 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v116 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F958, &qword_1C403AA70);
  v117 = *(v47 - 8);
  v48 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v116 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F960, &qword_1C403AA78);
  v116 = *(v51 - 8);
  v52 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v116 - v53;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F968, &qword_1C403AA80);
  v170 = *(v172 - 8);
  v55 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v57 = &v116 - v56;
  v58 = *v1;
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F246F8();
  v169 = v57;
  sub_1C4031D10();
  switch(v58 >> 60)
  {
    case 1uLL:
      v104 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 3;
      sub_1C3F24FEC();

      v105 = v121;
      v106 = v172;
      v107 = v169;
      sub_1C4031B00();
      v174 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
      sub_1C3F24F50(&qword_1EC08FA48, &qword_1EC08F0B8);
      v108 = v123;
      sub_1C4031B70();
      (*(v122 + 8))(v105, v108);
      (*(v170 + 8))(v107, v106);
      goto LABEL_25;
    case 2uLL:
      v89 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 4;
      sub_1C3F24EFC();

      v61 = v124;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
      sub_1C3F24F50(&qword_1EC08FA48, &qword_1EC08F0B8);
      v64 = v126;
      sub_1C4031B70();
      v65 = &v157;
      goto LABEL_23;
    case 3uLL:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v94 = swift_projectBox();
      v95 = *(v93 + 48);
      v96 = v167;
      v97 = *(v167 + 16);
      v98 = v168;
      v97(v166, v94, v168);
      v97(v165, v94 + v95, v98);
      LOBYTE(v174) = 5;
      sub_1C3F24EA8();
      v99 = v131;
      v70 = v172;
      v71 = v169;
      sub_1C4031B00();
      LOBYTE(v174) = 0;
      sub_1C3F2B8E4(&qword_1EC08FA20, MEMORY[0x1E6969530]);
      v100 = v135;
      v101 = v171;
      sub_1C4031B70();
      if (v101)
      {
        (*(v134 + 8))(v99, v100);
        v102 = *(v96 + 8);
        v102(v165, v98);
        v102(v166, v98);
LABEL_13:
        result = (*(v170 + 8))(v71, v70);
      }

      else
      {
        LOBYTE(v174) = 1;
        v114 = v165;
        sub_1C4031B70();
        (*(v134 + 8))(v99, v100);
        v115 = *(v96 + 8);
        v115(v114, v98);
        v115(v166, v98);
        result = (*(v170 + 8))(v71, v172);
      }

      break;
    case 4uLL:
      v73 = swift_projectBox();
      v75 = v167;
      v74 = v168;
      v76 = v127;
      (*(v167 + 16))(v127, v73, v168);
      LOBYTE(v174) = 6;
      sub_1C3F24E54();
      v77 = v129;
      v78 = v172;
      v79 = v169;
      sub_1C4031B00();
      sub_1C3F2B8E4(&qword_1EC08FA20, MEMORY[0x1E6969530]);
      v80 = v132;
      sub_1C4031B70();
      v81 = &v162;
      goto LABEL_17;
    case 5uLL:
      v109 = swift_projectBox();
      v75 = v167;
      v74 = v168;
      v76 = v128;
      (*(v167 + 16))(v128, v109, v168);
      LOBYTE(v174) = 7;
      sub_1C3F24E00();
      v77 = v133;
      v78 = v172;
      v79 = v169;
      sub_1C4031B00();
      sub_1C3F2B8E4(&qword_1EC08FA20, MEMORY[0x1E6969530]);
      v80 = v137;
      sub_1C4031B70();
      v81 = &v168;
LABEL_17:
      (*(*(v81 - 32) + 8))(v77, v80);
      (*(v75 + 8))(v76, v74);
      return (*(v170 + 8))(v79, v78);
    case 6uLL:
      v111 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 8;
      sub_1C3F24D28();

      v61 = v138;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F688, &qword_1C403AAB0);
      sub_1C3F24D7C();
      v64 = v140;
      sub_1C4031B70();
      v65 = &v171;
      goto LABEL_23;
    case 7uLL:
      v103 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 9;
      sub_1C3F24C50();

      v61 = v141;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F858, &qword_1C403A5B8);
      sub_1C3F24CA4();
      v64 = v143;
      sub_1C4031B70();
      v65 = &v173;
      goto LABEL_23;
    case 8uLL:
      v113 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 10;
      sub_1C3F24B24();

      v61 = v144;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F9E0, &unk_1C403AAA0);
      sub_1C3F24B78();
      v64 = v146;
      sub_1C4031B70();
      v65 = &v175;
      goto LABEL_23;
    case 9uLL:
      v88 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 11;
      sub_1C3F249F8();

      v61 = v147;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F9C0, &qword_1C403AA98);
      sub_1C3F24A4C();
      v64 = v149;
      sub_1C4031B70();
      v65 = &v176;
      goto LABEL_23;
    case 0xAuLL:
      v112 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 12;
      sub_1C3F24920();

      v61 = v150;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F5E0, &qword_1C403AA90);
      sub_1C3F24974();
      v64 = v153;
      sub_1C4031B70();
      v67 = v152;
      goto LABEL_24;
    case 0xBuLL:
      v68 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 13;
      sub_1C3F248CC();
      v69 = v151;
      v70 = v172;
      v71 = v169;
      sub_1C4031B00();
      v72 = v155;
      sub_1C4031B40();
      (*(v154 + 8))(v69, v72);
      goto LABEL_13;
    case 0xCuLL:
      v82 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 14;
      sub_1C3EE61B4(v82);
      sub_1C3F24878();
      v83 = v156;
      v84 = v172;
      v85 = v169;
      sub_1C4031B00();
      v174 = v82;
      sub_1C3EE979C();
      v86 = v158;
      sub_1C4031B70();
      (*(v157 + 8))(v83, v86);
      (*(v170 + 8))(v85, v84);
      return sub_1C3EE6238(v82);
    case 0xDuLL:
      v110 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 15;
      sub_1C3F24824();

      v61 = v159;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F980, &qword_1C403AA88);
      sub_1C3F247A0();
      v64 = v161;
      sub_1C4031B70();
      v67 = v160;
      goto LABEL_24;
    case 0xEuLL:
      v66 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 16;
      sub_1C3F2474C();

      v61 = v162;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F980, &qword_1C403AA88);
      sub_1C3F247A0();
      v64 = v164;
      sub_1C4031B70();
      v67 = v163;
      goto LABEL_24;
    case 0xFuLL:
      v90 = (v170 + 8);
      if (v58 == 0xF000000000000000)
      {
        LOBYTE(v174) = 0;
        sub_1C3F250E8();
        v91 = v172;
        v92 = v169;
        sub_1C4031B00();
        (*(v116 + 8))(v54, v51);
      }

      else
      {
        LOBYTE(v174) = 1;
        sub_1C3F25094();
        v91 = v172;
        v92 = v169;
        sub_1C4031B00();
        (*(v117 + 8))(v50, v47);
      }

      return (*v90)(v92, v91);
    default:
      v60 = *(v58 + 16);
      LOBYTE(v174) = 2;
      sub_1C3F25040();

      v61 = v118;
      v62 = v172;
      v63 = v169;
      sub_1C4031B00();
      v174 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
      sub_1C3F24F50(&qword_1EC08FA48, &qword_1EC08F0B8);
      v64 = v120;
      sub_1C4031B70();
      v65 = &v151;
LABEL_23:
      v67 = *(v65 - 32);
LABEL_24:
      (*(v67 + 8))(v61, v64);
      (*(v170 + 8))(v63, v62);
LABEL_25:

      break;
  }

  return result;
}

unint64_t sub_1C3F246F8()
{
  result = qword_1EC08F970;
  if (!qword_1EC08F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F970);
  }

  return result;
}

unint64_t sub_1C3F2474C()
{
  result = qword_1EC08F978;
  if (!qword_1EC08F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F978);
  }

  return result;
}

unint64_t sub_1C3F247A0()
{
  result = qword_1EC08F988;
  if (!qword_1EC08F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F980, &qword_1C403AA88);
    sub_1C3EE979C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F988);
  }

  return result;
}

unint64_t sub_1C3F24824()
{
  result = qword_1EC08F990;
  if (!qword_1EC08F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F990);
  }

  return result;
}

unint64_t sub_1C3F24878()
{
  result = qword_1EC08F998;
  if (!qword_1EC08F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F998);
  }

  return result;
}

unint64_t sub_1C3F248CC()
{
  result = qword_1EC08F9A0;
  if (!qword_1EC08F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9A0);
  }

  return result;
}

unint64_t sub_1C3F24920()
{
  result = qword_1EC08F9A8;
  if (!qword_1EC08F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9A8);
  }

  return result;
}

unint64_t sub_1C3F24974()
{
  result = qword_1EC08F9B0;
  if (!qword_1EC08F9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5E0, &qword_1C403AA90);
    sub_1C3F09D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9B0);
  }

  return result;
}

unint64_t sub_1C3F249F8()
{
  result = qword_1EC08F9B8;
  if (!qword_1EC08F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9B8);
  }

  return result;
}

unint64_t sub_1C3F24A4C()
{
  result = qword_1EC08F9C8;
  if (!qword_1EC08F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F9C0, &qword_1C403AA98);
    sub_1C3F24AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9C8);
  }

  return result;
}

unint64_t sub_1C3F24AD0()
{
  result = qword_1EC08F9D0;
  if (!qword_1EC08F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9D0);
  }

  return result;
}

unint64_t sub_1C3F24B24()
{
  result = qword_1EC08F9D8;
  if (!qword_1EC08F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9D8);
  }

  return result;
}

unint64_t sub_1C3F24B78()
{
  result = qword_1EC08F9E8;
  if (!qword_1EC08F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F9E0, &unk_1C403AAA0);
    sub_1C3F24BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9E8);
  }

  return result;
}

unint64_t sub_1C3F24BFC()
{
  result = qword_1EC08F9F0;
  if (!qword_1EC08F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9F0);
  }

  return result;
}

unint64_t sub_1C3F24C50()
{
  result = qword_1EC08F9F8;
  if (!qword_1EC08F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F9F8);
  }

  return result;
}

unint64_t sub_1C3F24CA4()
{
  result = qword_1EC08FA00;
  if (!qword_1EC08FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F858, &qword_1C403A5B8);
    sub_1C3F0A6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA00);
  }

  return result;
}

unint64_t sub_1C3F24D28()
{
  result = qword_1EC08FA08;
  if (!qword_1EC08FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA08);
  }

  return result;
}

unint64_t sub_1C3F24D7C()
{
  result = qword_1EC08FA10;
  if (!qword_1EC08FA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F688, &qword_1C403AAB0);
    sub_1C3F0A470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA10);
  }

  return result;
}

unint64_t sub_1C3F24E00()
{
  result = qword_1EC08FA18;
  if (!qword_1EC08FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA18);
  }

  return result;
}

unint64_t sub_1C3F24E54()
{
  result = qword_1EC08FA28;
  if (!qword_1EC08FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA28);
  }

  return result;
}

unint64_t sub_1C3F24EA8()
{
  result = qword_1EC08FA30;
  if (!qword_1EC08FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA30);
  }

  return result;
}

unint64_t sub_1C3F24EFC()
{
  result = qword_1EC08FA38;
  if (!qword_1EC08FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA38);
  }

  return result;
}

uint64_t sub_1C3F24F50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FA40, &qword_1C403AAB8);
    sub_1C3F2B8E4(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F24FEC()
{
  result = qword_1EC08FA50;
  if (!qword_1EC08FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA50);
  }

  return result;
}

unint64_t sub_1C3F25040()
{
  result = qword_1EC08FA58;
  if (!qword_1EC08FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA58);
  }

  return result;
}

unint64_t sub_1C3F25094()
{
  result = qword_1EC08FA60;
  if (!qword_1EC08FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA60);
  }

  return result;
}

unint64_t sub_1C3F250E8()
{
  result = qword_1EC08FA68;
  if (!qword_1EC08FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FA68);
  }

  return result;
}

uint64_t CallPredicate.hash(into:)(uint64_t a1)
{
  v3 = sub_1C4030980();
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v81 - v8;
  v10 = sub_1C40309F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v81 - v19;
  v21 = *v1;
  switch(v21 >> 60)
  {
    case 1uLL:
      v59 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](3);
      result = MEMORY[0x1C6933940](*(v59 + 16));
      v60 = *(v59 + 16);
      if (v60)
      {
        v63 = *(v11 + 16);
        v62 = v11 + 16;
        v61 = v63;
        v64 = v59 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
        v65 = v59;
        v66 = *(v62 + 56);
        v81 = v65;

        do
        {
          v61(v18, v64, v10);
          sub_1C3F2B8E4(&qword_1EC08F290, MEMORY[0x1E69695A8]);
          sub_1C4031140();
          (*(v62 - 8))(v18, v10);
          v64 += v66;
          --v60;
        }

        while (v60);
      }

      return result;
    case 2uLL:
      v41 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](4);
      result = MEMORY[0x1C6933940](*(v41 + 16));
      v42 = *(v41 + 16);
      if (v42)
      {
        v45 = *(v11 + 16);
        v44 = v11 + 16;
        v43 = v45;
        v46 = v41 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
        v47 = v41;
        v48 = *(v44 + 56);
        v81 = v47;

        do
        {
          v43(v15, v46, v10);
          sub_1C3F2B8E4(&qword_1EC08F290, MEMORY[0x1E69695A8]);
          sub_1C4031140();
          (*(v44 - 8))(v15, v10);
          v46 += v48;
          --v42;
        }

        while (v42);
      }

      return result;
    case 3uLL:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v50 = swift_projectBox();
      v51 = *(v49 + 48);
      v52 = v81;
      v53 = *(v81 + 16);
      v53(v9, v50, v3);
      v53(v7, v50 + v51, v3);
      MEMORY[0x1C6933940](5);
      sub_1C3F2B8E4(&qword_1EC08FA70, MEMORY[0x1E6969530]);
      sub_1C4031140();
      sub_1C4031140();
      v54 = *(v52 + 8);
      v54(v7, v3);
      return (v54)(v9, v3);
    case 4uLL:
      v36 = swift_projectBox();
      v37 = v81;
      (*(v81 + 16))(v9, v36, v3);
      v38 = 6;
      goto LABEL_28;
    case 5uLL:
      v67 = swift_projectBox();
      v37 = v81;
      (*(v81 + 16))(v9, v67, v3);
      v38 = 7;
LABEL_28:
      MEMORY[0x1C6933940](v38);
      sub_1C3F2B8E4(&qword_1EC08FA70, MEMORY[0x1E6969530]);
      sub_1C4031140();
      return (*(v37 + 8))(v9, v3);
    case 6uLL:
      v72 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](8);
      result = MEMORY[0x1C6933940](*(v72 + 16));
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (v72 + 32);
        do
        {
          v75 = *v74++;
          result = sub_1C4031CA0();
          --v73;
        }

        while (v73);
      }

      return result;
    case 7uLL:
      v55 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](9);
      result = MEMORY[0x1C6933940](*(v55 + 16));
      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = (v55 + 32);
        do
        {
          v58 = *v57++;
          result = sub_1C4031CA0();
          --v56;
        }

        while (v56);
      }

      return result;
    case 8uLL:
      v80 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](10);

      sub_1C3F28E98(a1, v80);
      goto LABEL_42;
    case 9uLL:
      v40 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](11);

      sub_1C3F28DE8(a1, v40);
LABEL_42:

    case 0xAuLL:
      v76 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](12);
      result = MEMORY[0x1C6933940](*(v76 + 16));
      v77 = *(v76 + 16);
      if (v77)
      {
        v78 = (v76 + 32);
        do
        {
          v79 = *v78++;
          result = sub_1C4031CA0();
          --v77;
        }

        while (v77);
      }

      return result;
    case 0xBuLL:
      v35 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](13);
      return sub_1C4031C90();
    case 0xCuLL:
      v39 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](14);
      v82 = v39;
      return CallPredicate.hash(into:)(a1);
    case 0xDuLL:
      v68 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](15);
      result = MEMORY[0x1C6933940](*(v68 + 16));
      v69 = *(v68 + 16);
      if (!v69)
      {
        return result;
      }

      v70 = 32;
      do
      {
        v71 = *(v68 + v70);
        v82 = v71;
        sub_1C3EE61B4(v71);
        CallPredicate.hash(into:)(a1);
        sub_1C3EE6238(v71);
        v70 += 8;
        --v69;
      }

      while (v69);
      break;
    case 0xEuLL:
      v31 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1C6933940](16);
      result = MEMORY[0x1C6933940](*(v31 + 16));
      v32 = *(v31 + 16);
      if (!v32)
      {
        return result;
      }

      v33 = 32;
      do
      {
        v34 = *(v31 + v33);
        v82 = v34;
        sub_1C3EE61B4(v34);
        CallPredicate.hash(into:)(a1);
        sub_1C3EE6238(v34);
        v33 += 8;
        --v32;
      }

      while (v32);
      break;
    case 0xFuLL:
      return MEMORY[0x1C6933940](v21 != 0xF000000000000000);
    default:
      v22 = *(v21 + 16);
      MEMORY[0x1C6933940](2);
      result = MEMORY[0x1C6933940](*(v22 + 16));
      v24 = *(v22 + 16);
      if (!v24)
      {
        return result;
      }

      v27 = *(v11 + 16);
      v26 = v11 + 16;
      v25 = v27;
      v28 = v22 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v29 = v22;
      v30 = *(v26 + 56);
      v81 = v29;

      do
      {
        v25(v20, v28, v10);
        sub_1C3F2B8E4(&qword_1EC08F290, MEMORY[0x1E69695A8]);
        sub_1C4031140();
        (*(v26 - 8))(v20, v10);
        v28 += v30;
        --v24;
      }

      while (v24);
      break;
  }
}

uint64_t CallPredicate.hashValue.getter()
{
  v2[9] = *v0;
  sub_1C4031C70();
  CallPredicate.hash(into:)(v2);
  return sub_1C4031CC0();
}

uint64_t CallPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v203 = a2;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA78, &qword_1C403AAC0);
  v173 = *(v189 - 8);
  v3 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v200 = &v156 - v4;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA80, &qword_1C403AAC8);
  v172 = *(v190 - 8);
  v5 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v208 = &v156 - v6;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA88, &qword_1C403AAD0);
  v171 = *(v188 - 8);
  v7 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v202 = &v156 - v8;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA90, &qword_1C403AAD8);
  v207 = *(v187 - 8);
  v9 = *(v207 + 8);
  MEMORY[0x1EEE9AC00](v187);
  v201 = &v156 - v10;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA98, &qword_1C403AAE0);
  v170 = *(v186 - 8);
  v11 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v199 = &v156 - v12;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAA0, &qword_1C403AAE8);
  v169 = *(v185 - 8);
  v13 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v198 = &v156 - v14;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAA8, &qword_1C403AAF0);
  v168 = *(v184 - 8);
  v15 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v197 = &v156 - v16;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAB0, &qword_1C403AAF8);
  v167 = *(v183 - 8);
  v17 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v196 = &v156 - v18;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAB8, &qword_1C403AB00);
  v166 = *(v182 - 8);
  v19 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v195 = &v156 - v20;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAC0, &qword_1C403AB08);
  v165 = *(v181 - 8);
  v21 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v194 = &v156 - v22;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAC8, &qword_1C403AB10);
  v163 = *(v180 - 8);
  v23 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v193 = &v156 - v24;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAD0, &qword_1C403AB18);
  v164 = *(v179 - 8);
  v25 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v191 = &v156 - v26;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAD8, &qword_1C403AB20);
  v162 = *(v178 - 8);
  v27 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v206 = &v156 - v28;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAE0, &qword_1C403AB28);
  v161 = *(v177 - 8);
  v29 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v205 = &v156 - v30;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAE8, &qword_1C403AB30);
  v160 = *(v176 - 8);
  v31 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v192 = &v156 - v32;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAF0, &qword_1C403AB38);
  v175 = *(v204 - 8);
  v33 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v35 = &v156 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FAF8, &qword_1C403AB40);
  v174 = *(v36 - 8);
  v37 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v156 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FB00, &unk_1C403AB48);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v156 - v43;
  v46 = a1[3];
  v45 = a1[4];
  v209 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1C3F246F8();
  v47 = v210;
  sub_1C4031D00();
  if (!v47)
  {
    v157 = v39;
    v156 = v36;
    v158 = v35;
    v48 = v204;
    v49 = v205;
    v51 = v206;
    v50 = v207;
    v52 = v208;
    v159 = 0;
    v210 = v41;
    v53 = sub_1C4031AE0();
    v54 = (2 * *(v53 + 16)) | 1;
    v211 = v53;
    v212 = v53 + 32;
    v213 = 0;
    v214 = v54;
    v55 = sub_1C3F172A8();
    if (v213 == v214 >> 1)
    {
      switch(v55)
      {
        case 0:
          v215 = 0;
          sub_1C3F250E8();
          v56 = v157;
          v57 = v159;
          sub_1C4031A40();
          if (v57)
          {
            goto LABEL_41;
          }

          (*(v174 + 8))(v56, v156);
          (*(v210 + 8))(v44, v40);
          swift_unknownObjectRelease();
          v58 = 0xF000000000000000;
          v59 = v209;
          goto LABEL_46;
        case 1:
          v215 = 1;
          sub_1C3F25094();
          v117 = v158;
          v118 = v159;
          sub_1C4031A40();
          if (v118)
          {
            goto LABEL_41;
          }

          (*(v175 + 8))(v117, v48);
          (*(v210 + 8))(v44, v40);
          swift_unknownObjectRelease();
          v58 = 0xF000000000000008;
          v59 = v209;
          goto LABEL_46;
        case 2:
          v215 = 2;
          sub_1C3F25040();
          v98 = v192;
          v99 = v159;
          sub_1C4031A40();
          if (v99)
          {
            goto LABEL_41;
          }

          v58 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
          sub_1C3F24F50(&qword_1EC08FB50, &qword_1EC08F0B0);
          v100 = v176;
          sub_1C4031AC0();
          (*(v160 + 8))(v98, v100);
          (*(v210 + 8))(v44, v40);
          swift_unknownObjectRelease();
          v59 = v209;
          goto LABEL_46;
        case 3:
          v215 = 3;
          sub_1C3F24FEC();
          v106 = v159;
          sub_1C4031A40();
          if (v106)
          {
            goto LABEL_41;
          }

          v107 = v40;
          v108 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
          sub_1C3F24F50(&qword_1EC08FB50, &qword_1EC08F0B0);
          v109 = v177;
          sub_1C4031AC0();
          v110 = v210;
          (*(v161 + 8))(v49, v109);
          (*(v110 + 8))(v44, v107);
          swift_unknownObjectRelease();
          v58 = v108 | 0x1000000000000000;
          goto LABEL_45;
        case 4:
          v215 = 4;
          sub_1C3F24EFC();
          v82 = v159;
          sub_1C4031A40();
          if (v82)
          {
            goto LABEL_41;
          }

          v83 = v40;
          v84 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FA40, &qword_1C403AAB8);
          sub_1C3F24F50(&qword_1EC08FB50, &qword_1EC08F0B0);
          v85 = v178;
          sub_1C4031AC0();
          v86 = v210;
          (*(v162 + 8))(v51, v85);
          (*(v86 + 8))(v44, v83);
          swift_unknownObjectRelease();
          v58 = v84 | 0x2000000000000000;
          goto LABEL_45;
        case 5:
          v215 = 5;
          sub_1C3F24EA8();
          v119 = v191;
          v120 = v159;
          sub_1C4031A40();
          if (v120)
          {
            goto LABEL_41;
          }

          v207 = v44;
          v208 = v40;
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
          v122 = swift_allocBox();
          sub_1C4030980();
          v215 = 0;
          sub_1C3F2B8E4(&qword_1EC08FB48, MEMORY[0x1E6969530]);
          v123 = v119;
          v124 = v179;
          sub_1C4031AC0();
          v154 = *(v121 + 48);
          v215 = 1;
          sub_1C4031AC0();
          (*(v164 + 8))(v123, v124);
          (*(v210 + 8))(v207, v208);
          swift_unknownObjectRelease();
          v58 = v122 | 0x3000000000000000;
          v59 = v209;
          goto LABEL_46;
        case 6:
          v215 = 6;
          sub_1C3F24E54();
          v132 = v193;
          v133 = v159;
          sub_1C4031A40();
          if (v133)
          {
            goto LABEL_41;
          }

          v134 = v44;
          v135 = v40;
          sub_1C4030980();
          v136 = swift_allocBox();
          sub_1C3F2B8E4(&qword_1EC08FB48, MEMORY[0x1E6969530]);
          v137 = v180;
          sub_1C4031AC0();
          (*(v163 + 8))(v132, v137);
          (*(v210 + 8))(v134, v135);
          swift_unknownObjectRelease();
          v58 = v136 | 0x4000000000000000;
          v59 = v209;
          goto LABEL_46;
        case 7:
          v215 = 7;
          sub_1C3F24E00();
          v111 = v194;
          v112 = v159;
          sub_1C4031A40();
          if (v112)
          {
            goto LABEL_41;
          }

          v113 = v44;
          v114 = v40;
          sub_1C4030980();
          v115 = swift_allocBox();
          sub_1C3F2B8E4(&qword_1EC08FB48, MEMORY[0x1E6969530]);
          v116 = v181;
          sub_1C4031AC0();
          (*(v165 + 8))(v111, v116);
          (*(v210 + 8))(v113, v114);
          swift_unknownObjectRelease();
          v58 = v115 | 0x5000000000000000;
          v59 = v209;
          goto LABEL_46;
        case 8:
          v215 = 8;
          sub_1C3F24D28();
          v144 = v195;
          v145 = v159;
          sub_1C4031A40();
          if (v145)
          {
            goto LABEL_41;
          }

          v150 = v40;
          v151 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F688, &qword_1C403AAB0);
          sub_1C3F2929C();
          v152 = v182;
          sub_1C4031AC0();
          v153 = v210;
          (*(v166 + 8))(v144, v152);
          (*(v153 + 8))(v44, v150);
          swift_unknownObjectRelease();
          v58 = v151 | 0x6000000000000000;
          goto LABEL_45;
        case 9:
          v215 = 9;
          sub_1C3F24C50();
          v92 = v196;
          v93 = v159;
          sub_1C4031A40();
          if (v93)
          {
            goto LABEL_41;
          }

          v94 = v40;
          v95 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F858, &qword_1C403A5B8);
          sub_1C3F29218();
          v96 = v183;
          sub_1C4031AC0();
          v97 = v210;
          (*(v167 + 8))(v92, v96);
          (*(v97 + 8))(v44, v94);
          swift_unknownObjectRelease();
          v58 = v95 | 0x7000000000000000;
          goto LABEL_45;
        case 10:
          v215 = 10;
          sub_1C3F24B24();
          v138 = v197;
          v139 = v159;
          sub_1C4031A40();
          if (v139)
          {
            goto LABEL_41;
          }

          v140 = v40;
          v141 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F9E0, &unk_1C403AAA0);
          sub_1C3F29140();
          v142 = v184;
          sub_1C4031AC0();
          v143 = v210;
          (*(v168 + 8))(v138, v142);
          (*(v143 + 8))(v44, v140);
          swift_unknownObjectRelease();
          v58 = v141 | 0x8000000000000000;
          goto LABEL_45;
        case 11:
          v215 = 11;
          sub_1C3F249F8();
          v75 = v198;
          v76 = v159;
          sub_1C4031A40();
          if (v76)
          {
            goto LABEL_41;
          }

          v77 = v40;
          v78 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F9C0, &qword_1C403AA98);
          sub_1C3F29068();
          v79 = v185;
          sub_1C4031AC0();
          v80 = v210;
          (*(v169 + 8))(v75, v79);
          (*(v80 + 8))(v44, v77);
          swift_unknownObjectRelease();
          v81 = 0x9000000000000000;
          goto LABEL_44;
        case 12:
          v215 = 12;
          sub_1C3F24920();
          v87 = v199;
          v88 = v159;
          sub_1C4031A40();
          if (v88)
          {
            goto LABEL_41;
          }

          v89 = v40;
          v78 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F5E0, &qword_1C403AA90);
          sub_1C3F28FE4();
          v90 = v186;
          sub_1C4031AC0();
          v91 = v210;
          (*(v170 + 8))(v87, v90);
          (*(v91 + 8))(v44, v89);
          swift_unknownObjectRelease();
          v81 = 0xA000000000000000;
          goto LABEL_44;
        case 13:
          v215 = 13;
          sub_1C3F248CC();
          v125 = v201;
          v126 = v159;
          sub_1C4031A40();
          if (v126)
          {
            goto LABEL_41;
          }

          v127 = v44;
          v128 = v40;
          v78 = swift_allocObject();
          v129 = v187;
          v130 = sub_1C4031A90();
          v131 = (v210 + 8);
          v155 = v130;
          (*(v50 + 1))(v125, v129);
          (*v131)(v127, v128);
          swift_unknownObjectRelease();
          *(v78 + 16) = v155 & 1;
          v81 = 0xB000000000000000;
LABEL_44:
          v58 = v78 | v81;
          goto LABEL_45;
        case 14:
          v215 = 14;
          sub_1C3F24878();
          v69 = v202;
          v70 = v159;
          sub_1C4031A40();
          if (v70)
          {
            goto LABEL_41;
          }

          v71 = v40;
          v72 = swift_allocObject();
          sub_1C3EE9748();
          v73 = v188;
          sub_1C4031AC0();
          v74 = v210;
          (*(v171 + 8))(v69, v73);
          (*(v74 + 8))(v44, v71);
          swift_unknownObjectRelease();
          v58 = v72 | 0xC000000000000000;
          goto LABEL_45;
        case 15:
          v215 = 15;
          sub_1C3F24824();
          v101 = v159;
          sub_1C4031A40();
          if (!v101)
          {
            v102 = v40;
            v103 = swift_allocObject();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F980, &qword_1C403AA88);
            sub_1C3F28F60();
            v104 = v190;
            sub_1C4031AC0();
            v105 = v210;
            (*(v172 + 8))(v52, v104);
            (*(v105 + 8))(v44, v102);
            swift_unknownObjectRelease();
            v58 = v103 | 0xD000000000000000;
            v59 = v209;
            goto LABEL_46;
          }

LABEL_41:
          (*(v210 + 8))(v44, v40);
          goto LABEL_7;
        case 16:
          v215 = 16;
          sub_1C3F2474C();
          v67 = v200;
          v68 = v159;
          sub_1C4031A40();
          if (v68)
          {
            (*(v210 + 8))(v44, v40);
            swift_unknownObjectRelease();
            v59 = v209;
          }

          else
          {
            v146 = v40;
            v147 = swift_allocObject();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F980, &qword_1C403AA88);
            sub_1C3F28F60();
            v148 = v189;
            sub_1C4031AC0();
            v149 = v210;
            (*(v173 + 8))(v67, v148);
            (*(v149 + 8))(v44, v146);
            swift_unknownObjectRelease();
            v58 = v147 | 0xE000000000000000;
LABEL_45:
            v59 = v209;
LABEL_46:
            *v203 = v58;
          }

          return __swift_destroy_boxed_opaque_existential_1(v59);
        default:
          break;
      }
    }

    v60 = v44;
    v61 = v40;
    v62 = sub_1C4031900();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7E8, &qword_1C4039FB0) + 48);
    *v64 = &type metadata for CallPredicate;
    sub_1C4031A50();
    sub_1C40318F0();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    (*(v210 + 8))(v60, v61);
LABEL_7:
    swift_unknownObjectRelease();
  }

  v59 = v209;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1C3F27A5C()
{
  v2[9] = *v0;
  sub_1C4031C70();
  CallPredicate.hash(into:)(v2);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F27AAC()
{
  v2[9] = *v0;
  sub_1C4031C70();
  CallPredicate.hash(into:)(v2);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F27AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1C4030860();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = sub_1C4030750();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v15 = *(v6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3;
  v20 = v3 + *(a2 + 28);
  v30 = a1;
  v21 = v33;
  sub_1C4030850();
  if (!v21)
  {
    v27 = v15;
    v33 = v11;
    v35[7] = v10;
    v22 = v31;
    v35[5] = v31;
    sub_1C4030A70();
    sub_1C4030A60();
    v23 = v29;
    sub_1C4030740();
    (*(v28 + 8))(v10, v7);
    sub_1C4030A30();
    v24 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v25 = *(v24 + 8);
    sub_1C4030780();
    (*(v32 + 8))(v23, v33);
    (*(v27 + 8))(v18, v22);
    v19 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return v19 & 1;
}

uint64_t sub_1C3F27E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626169726176 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C3F27F24(char a1)
{
  sub_1C4031C70();
  MEMORY[0x1C6933940](a1 & 1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F27F6C(char a1)
{
  if (a1)
  {
    return 0x656C626169726176;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_1C3F27FA8(void *a1, uint64_t a2)
{
  v13[0] = a2;
  v3 = *(a2 + 16);
  type metadata accessor for WrappingExpression.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1C4031B90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C4031D10();
  v15 = 0;
  v13[3] = v3;
  sub_1C4030A70();
  swift_getWitnessTable();
  v10 = v13[2];
  sub_1C4031B70();
  if (!v10)
  {
    v11 = *(v13[0] + 28);
    v14 = 1;
    sub_1C4030860();
    swift_getWitnessTable();
    sub_1C4031B70();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C3F281B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v36 = sub_1C4030860();
  v31 = *(v36 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v28 - v6;
  v43 = a2;
  v38 = sub_1C4030A70();
  v34 = *(v38 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - v8;
  type metadata accessor for WrappingExpression.CodingKeys();
  swift_getWitnessTable();
  v39 = sub_1C4031AF0();
  v33 = *(v39 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v28 - v10;
  v12 = type metadata accessor for WrappingExpression();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v40;
  sub_1C4031D00();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v40 = v12;
  v20 = v33;
  v19 = v34;
  v21 = v35;
  v22 = v36;
  v42 = 0;
  swift_getWitnessTable();
  sub_1C4031AC0();
  v23 = *(v19 + 32);
  v29 = v18;
  v23(v18, v37, v38);
  v41 = 1;
  swift_getWitnessTable();
  sub_1C4031AC0();
  (*(v20 + 8))(v11, v39);
  v24 = v40;
  v25 = v29;
  (*(v31 + 32))(&v29[*(v40 + 28)], v21, v22);
  v26 = v30;
  (*(v30 + 16))(v32, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v25, v24);
}

uint64_t sub_1C3F28658(uint64_t a1, uint64_t a2)
{
  sub_1C4031C70();
  v4 = *(a2 + 16);
  sub_1C3F27EFC(v6, *v2);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F286B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1C3F27E18(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C3F286DC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1C3F2CA3C();
  *a2 = result;
  return result;
}

uint64_t sub_1C3F28708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C3F2875C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C3F287B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F27AF8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1C3F28814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, __int128 *, uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EFF0, &qword_1C40381E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v29 = *a1;
  v13 = sub_1C3F31918(sub_1C3F2C7E0, v28, a2);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v27 = a4;
    v25 = v9;
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1C3EF1A60(v13 + v16, v12, &qword_1EC08EFF0, &qword_1C40381E0);
    v33[3] = v8;
    v17 = sub_1C3EF7BF0(qword_1EC090150, &qword_1EC08EFF0, &qword_1C40381E0);
    v33[4] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v26 = v12;
    sub_1C3EF1A60(v12, boxed_opaque_existential_1, &qword_1EC08EFF0, &qword_1C40381E0);
    sub_1C3F2C800(v33, v32);
    v19 = v15 - 1;
    if (v19)
    {
      v20 = *(v25 + 72);
      v21 = v14 + v20 + v16;
      do
      {
        v30[3] = v8;
        v30[4] = v17;
        v22 = __swift_allocate_boxed_opaque_existential_1(v30);
        sub_1C3EF1A60(v21, v22, &qword_1EC08EFF0, &qword_1C40381E0);
        a3(v31, v32, v30);
        __swift_destroy_boxed_opaque_existential_1(v30);
        __swift_destroy_boxed_opaque_existential_1(v32);
        sub_1C3EAE504(v31, v32);
        v21 += v20;
        --v19;
      }

      while (v19);
    }

    sub_1C3EED388(v26, &qword_1EC08EFF0, &qword_1C40381E0);
    sub_1C3EAE504(v32, v27);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {

    LOBYTE(v33[0]) = 1;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F120, &unk_1C4038440);
    a4[4] = sub_1C3EF7C38();
    __swift_allocate_boxed_opaque_existential_1(a4);
    return sub_1C4030840();
  }
}

uint64_t sub_1C3F28B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, void *)@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t (*a10)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a7;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v30 = a10;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  (*(v16 + 16))(v20, a2, a4);
  v26 = *(a5 + 8);
  v27 = *(a6 + 8);
  v33[0] = a3;
  v33[1] = a4;
  v33[2] = v26;
  v33[3] = v27;
  a8[3] = v29(0, v33);
  v31 = a5;
  v32 = a6;
  a8[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a8);
  return v30(v24, v20, a3, a4, v26, v27);
}

uint64_t sub_1C3F28D38@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void *)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_project_boxed_opaque_existential_1(a2, v14);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  return sub_1C3F28B10(v13, v16, v11, v14, v12, v15, a3, a6, a4, a5);
}

uint64_t sub_1C3F28DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C6933940](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    v6 = (a2 + 40);
    do
    {
      v9 = *v6;
      v6 += 2;
      v8 = v9;
      if (v9)
      {
        if (v8 != 1)
        {
          v10 = *(v5 - 1);
          MEMORY[0x1C6933940](2);

          sub_1C4031280();
          result = sub_1C3F17D70(v10, v8);
          goto LABEL_5;
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      result = MEMORY[0x1C6933940](v7);
LABEL_5:
      v5 = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C3F28E98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C6933940](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 32);
      v8 = *(v5 - 3);
      v7 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;
      sub_1C4031CA0();

      sub_1C4031280();
      sub_1C4031C90();
      if (v9)
      {
        sub_1C4031280();
      }

      v5 += 5;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1C3F28F60()
{
  result = qword_1EC08FB08;
  if (!qword_1EC08FB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F980, &qword_1C403AA88);
    sub_1C3EE9748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB08);
  }

  return result;
}

unint64_t sub_1C3F28FE4()
{
  result = qword_1EC08FB10;
  if (!qword_1EC08FB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5E0, &qword_1C403AA90);
    sub_1C3F09D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB10);
  }

  return result;
}

unint64_t sub_1C3F29068()
{
  result = qword_1EC08FB18;
  if (!qword_1EC08FB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F9C0, &qword_1C403AA98);
    sub_1C3F290EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB18);
  }

  return result;
}

unint64_t sub_1C3F290EC()
{
  result = qword_1EC08FB20;
  if (!qword_1EC08FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB20);
  }

  return result;
}

unint64_t sub_1C3F29140()
{
  result = qword_1EC08FB28;
  if (!qword_1EC08FB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F9E0, &unk_1C403AAA0);
    sub_1C3F291C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB28);
  }

  return result;
}

unint64_t sub_1C3F291C4()
{
  result = qword_1EC08FB30;
  if (!qword_1EC08FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB30);
  }

  return result;
}

unint64_t sub_1C3F29218()
{
  result = qword_1EC08FB38;
  if (!qword_1EC08FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F858, &qword_1C403A5B8);
    sub_1C3F0A664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB38);
  }

  return result;
}

unint64_t sub_1C3F2929C()
{
  result = qword_1EC08FB40;
  if (!qword_1EC08FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F688, &qword_1C403AAB0);
    sub_1C3F0A41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB40);
  }

  return result;
}

unint64_t sub_1C3F29324()
{
  result = qword_1EC08FB58;
  if (!qword_1EC08FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB58);
  }

  return result;
}

void *sub_1C3F29388(void *result, uint64_t a2)
{
  if (a2 < 0xF)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 15)) | 0xF000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallPredicate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallPredicate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3F29628()
{
  result = qword_1EC08FB60;
  if (!qword_1EC08FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB60);
  }

  return result;
}

unint64_t sub_1C3F29680()
{
  result = qword_1EC08FB68;
  if (!qword_1EC08FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB68);
  }

  return result;
}

unint64_t sub_1C3F296D8()
{
  result = qword_1EC08FB70;
  if (!qword_1EC08FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB70);
  }

  return result;
}

unint64_t sub_1C3F29730()
{
  result = qword_1EC08FB78;
  if (!qword_1EC08FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB78);
  }

  return result;
}

unint64_t sub_1C3F29788()
{
  result = qword_1EC08FB80;
  if (!qword_1EC08FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB80);
  }

  return result;
}

unint64_t sub_1C3F297E0()
{
  result = qword_1EC08FB88;
  if (!qword_1EC08FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB88);
  }

  return result;
}

unint64_t sub_1C3F29838()
{
  result = qword_1EC08FB90;
  if (!qword_1EC08FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB90);
  }

  return result;
}

unint64_t sub_1C3F29890()
{
  result = qword_1EC08FB98;
  if (!qword_1EC08FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FB98);
  }

  return result;
}

unint64_t sub_1C3F298E8()
{
  result = qword_1EC08FBA0;
  if (!qword_1EC08FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBA0);
  }

  return result;
}

unint64_t sub_1C3F29940()
{
  result = qword_1EC08FBA8;
  if (!qword_1EC08FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBA8);
  }

  return result;
}

unint64_t sub_1C3F29998()
{
  result = qword_1EC08FBB0;
  if (!qword_1EC08FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBB0);
  }

  return result;
}

unint64_t sub_1C3F299F0()
{
  result = qword_1EC08FBB8;
  if (!qword_1EC08FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBB8);
  }

  return result;
}

unint64_t sub_1C3F29A48()
{
  result = qword_1EC08FBC0;
  if (!qword_1EC08FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBC0);
  }

  return result;
}

unint64_t sub_1C3F29AA0()
{
  result = qword_1EC08FBC8;
  if (!qword_1EC08FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBC8);
  }

  return result;
}

unint64_t sub_1C3F29AF8()
{
  result = qword_1EC08FBD0;
  if (!qword_1EC08FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBD0);
  }

  return result;
}

unint64_t sub_1C3F29B50()
{
  result = qword_1EC08FBD8;
  if (!qword_1EC08FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBD8);
  }

  return result;
}

unint64_t sub_1C3F29BA8()
{
  result = qword_1EC08FBE0;
  if (!qword_1EC08FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBE0);
  }

  return result;
}

unint64_t sub_1C3F29C00()
{
  result = qword_1EC08FBE8;
  if (!qword_1EC08FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBE8);
  }

  return result;
}

unint64_t sub_1C3F29C58()
{
  result = qword_1EC08FBF0;
  if (!qword_1EC08FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBF0);
  }

  return result;
}

unint64_t sub_1C3F29CB0()
{
  result = qword_1EC08FBF8;
  if (!qword_1EC08FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FBF8);
  }

  return result;
}

unint64_t sub_1C3F29D08()
{
  result = qword_1EC08FC00;
  if (!qword_1EC08FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC00);
  }

  return result;
}

unint64_t sub_1C3F29D60()
{
  result = qword_1EC08FC08;
  if (!qword_1EC08FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC08);
  }

  return result;
}

unint64_t sub_1C3F29DB8()
{
  result = qword_1EC08FC10;
  if (!qword_1EC08FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC10);
  }

  return result;
}

unint64_t sub_1C3F29E10()
{
  result = qword_1EC08FC18;
  if (!qword_1EC08FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC18);
  }

  return result;
}

unint64_t sub_1C3F29E68()
{
  result = qword_1EC08FC20;
  if (!qword_1EC08FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC20);
  }

  return result;
}

unint64_t sub_1C3F29EC0()
{
  result = qword_1EC08FC28;
  if (!qword_1EC08FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC28);
  }

  return result;
}

unint64_t sub_1C3F29F18()
{
  result = qword_1EC08FC30;
  if (!qword_1EC08FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC30);
  }

  return result;
}

unint64_t sub_1C3F29F70()
{
  result = qword_1EC08FC38;
  if (!qword_1EC08FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC38);
  }

  return result;
}

unint64_t sub_1C3F29FC8()
{
  result = qword_1EC08FC40;
  if (!qword_1EC08FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC40);
  }

  return result;
}

unint64_t sub_1C3F2A020()
{
  result = qword_1EC08FC48;
  if (!qword_1EC08FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC48);
  }

  return result;
}

unint64_t sub_1C3F2A078()
{
  result = qword_1EC08FC50;
  if (!qword_1EC08FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC50);
  }

  return result;
}

unint64_t sub_1C3F2A0D0()
{
  result = qword_1EC08FC58;
  if (!qword_1EC08FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC58);
  }

  return result;
}

unint64_t sub_1C3F2A128()
{
  result = qword_1EC08FC60;
  if (!qword_1EC08FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC60);
  }

  return result;
}

unint64_t sub_1C3F2A180()
{
  result = qword_1EC08FC68;
  if (!qword_1EC08FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC68);
  }

  return result;
}

unint64_t sub_1C3F2A1D8()
{
  result = qword_1EC08FC70;
  if (!qword_1EC08FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC70);
  }

  return result;
}

unint64_t sub_1C3F2A230()
{
  result = qword_1EC08FC78;
  if (!qword_1EC08FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC78);
  }

  return result;
}

unint64_t sub_1C3F2A288()
{
  result = qword_1EC08FC80;
  if (!qword_1EC08FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC80);
  }

  return result;
}

unint64_t sub_1C3F2A2E0()
{
  result = qword_1EC08FC88;
  if (!qword_1EC08FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC88);
  }

  return result;
}

unint64_t sub_1C3F2A338()
{
  result = qword_1EC08FC90;
  if (!qword_1EC08FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC90);
  }

  return result;
}

unint64_t sub_1C3F2A390()
{
  result = qword_1EC08FC98;
  if (!qword_1EC08FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FC98);
  }

  return result;
}

unint64_t sub_1C3F2A3E8()
{
  result = qword_1EC08FCA0;
  if (!qword_1EC08FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCA0);
  }

  return result;
}

unint64_t sub_1C3F2A440()
{
  result = qword_1EC08FCA8;
  if (!qword_1EC08FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCA8);
  }

  return result;
}

unint64_t sub_1C3F2A498()
{
  result = qword_1EC08FCB0;
  if (!qword_1EC08FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCB0);
  }

  return result;
}

unint64_t sub_1C3F2A4F0()
{
  result = qword_1EC08FCB8;
  if (!qword_1EC08FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCB8);
  }

  return result;
}

unint64_t sub_1C3F2A548()
{
  result = qword_1EC08FCC0;
  if (!qword_1EC08FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCC0);
  }

  return result;
}

unint64_t sub_1C3F2A5A0()
{
  result = qword_1EC08FCC8;
  if (!qword_1EC08FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCC8);
  }

  return result;
}

unint64_t sub_1C3F2A5F8()
{
  result = qword_1EC08FCD0;
  if (!qword_1EC08FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCD0);
  }

  return result;
}

unint64_t sub_1C3F2A650()
{
  result = qword_1EC08FCD8;
  if (!qword_1EC08FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCD8);
  }

  return result;
}

unint64_t sub_1C3F2A6A8()
{
  result = qword_1EC08FCE0;
  if (!qword_1EC08FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCE0);
  }

  return result;
}

unint64_t sub_1C3F2A700()
{
  result = qword_1EC08FCE8;
  if (!qword_1EC08FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCE8);
  }

  return result;
}

unint64_t sub_1C3F2A758()
{
  result = qword_1EC08FCF0;
  if (!qword_1EC08FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCF0);
  }

  return result;
}

unint64_t sub_1C3F2A7B0()
{
  result = qword_1EC08FCF8;
  if (!qword_1EC08FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FCF8);
  }

  return result;
}

uint64_t sub_1C3F2A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EFF0, &qword_1C40381E0) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  return (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
}

uint64_t sub_1C3F2A8E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE900000000000073 || (sub_1C4031BF0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xEA00000000007344 || (sub_1C4031BF0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEF7344496E6F6974 || (sub_1C4031BF0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656577746562 && a2 == 0xE700000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65726F666562 && a2 == 0xE600000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xEA00000000007365 || (sub_1C4031BF0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365707954797474 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C4056E60 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4056E80 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746174536C6C6163 && a2 == 0xEC00000073657375 || (sub_1C4031BF0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000)
  {

    return 16;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1C3F2AE38(uint64_t a1)
{
  v2 = type metadata accessor for RecentCall();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3F2AE94()
{
  result = qword_1EC08F2B0;
  if (!qword_1EC08F2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC08F2B0);
  }

  return result;
}

unint64_t sub_1C3F2B09C()
{
  result = qword_1EC08FD28;
  if (!qword_1EC08FD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FD20, &unk_1C403C240);
    sub_1C3F2B140();
    sub_1C3F2B23C(&qword_1EC08F098, &qword_1EC08F078, &qword_1C40383D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FD28);
  }

  return result;
}

unint64_t sub_1C3F2B140()
{
  result = qword_1EC08FD30;
  if (!qword_1EC08FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FD18, &qword_1C403C210);
    sub_1C3F24F50(&qword_1EC08FB50, &qword_1EC08F0B0);
    sub_1C3F24F50(&qword_1EC08FA48, &qword_1EC08F0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FD30);
  }

  return result;
}

uint64_t sub_1C3F2B23C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1C3EF7BF0(&qword_1EC08F0A0, &qword_1EC08F070, &unk_1C403C200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F2B2F0()
{
  result = qword_1EC08FD78;
  if (!qword_1EC08FD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FD70, &qword_1C403C290);
    sub_1C3F2B37C();
    sub_1C3EF7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FD78);
  }

  return result;
}

unint64_t sub_1C3F2B37C()
{
  result = qword_1EC08FD80;
  if (!qword_1EC08FD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FD50, &qword_1C403C258);
    sub_1C3F2B23C(&qword_1EC08FD88, &qword_1EC08FD48, &qword_1C403C250);
    sub_1C3F2B420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FD80);
  }

  return result;
}

unint64_t sub_1C3F2B420()
{
  result = qword_1EC08FD90;
  if (!qword_1EC08FD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FD58, &qword_1C403C288);
    sub_1C3F2B140();
    sub_1C3EF7BF0(&qword_1EC08FD98, &qword_1EC08FDA0, &qword_1C403C298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FD90);
  }

  return result;
}

unint64_t sub_1C3F2B4D8()
{
  result = qword_1EC08FE00;
  if (!qword_1EC08FE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FDF8, &qword_1C403C310);
    sub_1C3F2B564();
    sub_1C3F2B6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE00);
  }

  return result;
}

unint64_t sub_1C3F2B564()
{
  result = qword_1EC08FE08;
  if (!qword_1EC08FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FDD8, &qword_1C403C2E0);
    sub_1C3F2B608();
    sub_1C3F2B23C(&qword_1EC08FE18, &qword_1EC08FDC8, &qword_1C403C2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE08);
  }

  return result;
}

unint64_t sub_1C3F2B608()
{
  result = qword_1EC08FE10;
  if (!qword_1EC08FE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FDD0, &qword_1C403C2D8);
    v1 = MEMORY[0x1E6969530];
    sub_1C3F2B8E4(&qword_1EC08FB48, MEMORY[0x1E6969530]);
    sub_1C3F2B8E4(&qword_1EC08FA20, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE10);
  }

  return result;
}

unint64_t sub_1C3F2B6F0()
{
  result = qword_1EC08FE20;
  if (!qword_1EC08FE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FDC0, &qword_1C403C2C8);
    sub_1C3F2B23C(&qword_1EC08FE18, &qword_1EC08FDC8, &qword_1C403C2D0);
    sub_1C3F2B608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE20);
  }

  return result;
}

unint64_t sub_1C3F2B794()
{
  result = qword_1EC08FE50;
  if (!qword_1EC08FE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FE48, &qword_1C403C350);
    sub_1C3F2B838();
    sub_1C3F2B23C(&qword_1EC08FE60, &qword_1EC08FE38, &qword_1C403C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE50);
  }

  return result;
}

unint64_t sub_1C3F2B838()
{
  result = qword_1EC08FE58;
  if (!qword_1EC08FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FE40, &qword_1C403C320);
    sub_1C3F2929C();
    sub_1C3F24D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE58);
  }

  return result;
}

uint64_t sub_1C3F2B8C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C401463C();
}

uint64_t sub_1C3F2B8E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3F2B92C()
{
  result = qword_1EC08FE98;
  if (!qword_1EC08FE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FE90, &qword_1C403C3B8);
    sub_1C3F2B9D0();
    sub_1C3F2B23C(&qword_1EC08FEA8, &qword_1EC08FE80, &qword_1C403C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FE98);
  }

  return result;
}

unint64_t sub_1C3F2B9D0()
{
  result = qword_1EC08FEA0;
  if (!qword_1EC08FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FE88, &qword_1C403C388);
    sub_1C3F29218();
    sub_1C3F24CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FEA0);
  }

  return result;
}

unint64_t sub_1C3F2BA64()
{
  result = qword_1EC08FED8;
  if (!qword_1EC08FED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FED0, &qword_1C403C3F0);
    sub_1C3F2B23C(&qword_1EC08FEE0, &qword_1EC08FEC8, &qword_1C403C3C0);
    sub_1C3F2BB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FED8);
  }

  return result;
}

unint64_t sub_1C3F2BB08()
{
  result = qword_1EC08FEE8;
  if (!qword_1EC08FEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FEF0, &qword_1C403C3F8);
    sub_1C3F2BB94();
    sub_1C3F2C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FEE8);
  }

  return result;
}

unint64_t sub_1C3F2BB94()
{
  result = qword_1EC08FEF8;
  if (!qword_1EC08FEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF00, &qword_1C403C400);
    sub_1C3F2BC20();
    sub_1C3F2BE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FEF8);
  }

  return result;
}

unint64_t sub_1C3F2BC20()
{
  result = qword_1EC08FF08;
  if (!qword_1EC08FF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF10, &qword_1C403C408);
    sub_1C3F2BCAC();
    sub_1C3F2BD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF08);
  }

  return result;
}

unint64_t sub_1C3F2BCAC()
{
  result = qword_1EC08FF18;
  if (!qword_1EC08FF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF20, &qword_1C403C410);
    sub_1C3EF7BF0(&qword_1EC08FF28, &qword_1EC08FF30, &qword_1C403C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF18);
  }

  return result;
}

unint64_t sub_1C3F2BD5C()
{
  result = qword_1EC08FF38;
  if (!qword_1EC08FF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF40, &qword_1C403C420);
    sub_1C3F2BDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF38);
  }

  return result;
}

unint64_t sub_1C3F2BDE0()
{
  result = qword_1EC08FF48;
  if (!qword_1EC08FF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF50, &qword_1C403C428);
    sub_1C3F291C4();
    sub_1C3F24BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF48);
  }

  return result;
}

unint64_t sub_1C3F2BE6C()
{
  result = qword_1EC08FF58;
  if (!qword_1EC08FF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF60, &qword_1C403C430);
    sub_1C3F2BEF8();
    sub_1C3F2BFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF58);
  }

  return result;
}

unint64_t sub_1C3F2BEF8()
{
  result = qword_1EC08FF68;
  if (!qword_1EC08FF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF70, &qword_1C403C438);
    sub_1C3EF7BF0(&qword_1EC08FF28, &qword_1EC08FF30, &qword_1C403C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF68);
  }

  return result;
}

unint64_t sub_1C3F2BFA8()
{
  result = qword_1EC08FF78;
  if (!qword_1EC08FF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF80, &qword_1C403C440);
    sub_1C3F2BDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF78);
  }

  return result;
}

unint64_t sub_1C3F2C02C()
{
  result = qword_1EC08FF88;
  if (!qword_1EC08FF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FF90, &qword_1C403C448);
    sub_1C3F2C0B8();
    sub_1C3F2C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF88);
  }

  return result;
}

unint64_t sub_1C3F2C0B8()
{
  result = qword_1EC08FF98;
  if (!qword_1EC08FF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FFA0, &qword_1C403C450);
    sub_1C3EF7BF0(&qword_1EC08FF28, &qword_1EC08FF30, &qword_1C403C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FF98);
  }

  return result;
}

unint64_t sub_1C3F2C168()
{
  result = qword_1EC08FFA8;
  if (!qword_1EC08FFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FFB0, &qword_1C403C458);
    sub_1C3F2BDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08FFA8);
  }

  return result;
}

unint64_t sub_1C3F2C1EC()
{
  result = qword_1EC090028;
  if (!qword_1EC090028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F878, &qword_1C403A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090028);
  }

  return result;
}

unint64_t sub_1C3F2C268()
{
  result = qword_1EC090058;
  if (!qword_1EC090058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090050, &qword_1C403C580);
    sub_1C3F2C30C();
    sub_1C3F2B23C(&qword_1EC090068, &qword_1EC090040, &qword_1C403C548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090058);
  }

  return result;
}

unint64_t sub_1C3F2C30C()
{
  result = qword_1EC090060;
  if (!qword_1EC090060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090048, &qword_1C403C550);
    sub_1C3F29068();
    sub_1C3F24A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090060);
  }

  return result;
}

unint64_t sub_1C3F2C398()
{
  result = qword_1EC0900A0;
  if (!qword_1EC0900A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090098, &qword_1C403C5C0);
    sub_1C3F2C43C();
    sub_1C3F2B23C(&qword_1EC0900B0, &qword_1EC090088, &qword_1C403C588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0900A0);
  }

  return result;
}

unint64_t sub_1C3F2C43C()
{
  result = qword_1EC0900A8;
  if (!qword_1EC0900A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090090, &qword_1C403C590);
    sub_1C3F28FE4();
    sub_1C3F24974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0900A8);
  }

  return result;
}

uint64_t sub_1C3F2C4C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4014960();
}

unint64_t sub_1C3F2C4E8()
{
  result = qword_1EC0900E0;
  if (!qword_1EC0900E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0900D8, &qword_1C403C620);
    sub_1C3F2B23C(&qword_1EC0900E8, &qword_1EC0900D0, &qword_1C403C5F0);
    sub_1C3EF7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0900E0);
  }

  return result;
}

unint64_t sub_1C3F2C58C()
{
  result = qword_1EC090128;
  if (!qword_1EC090128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090120, &qword_1C403C668);
    sub_1C3F2C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090128);
  }

  return result;
}

unint64_t sub_1C3F2C610()
{
  result = qword_1EC090130;
  if (!qword_1EC090130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090108, &qword_1C403C638);
    sub_1C3F2C6D0();
    sub_1C3EF7BF0(&qword_1EC08F0A0, &qword_1EC08F070, &unk_1C403C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090130);
  }

  return result;
}

unint64_t sub_1C3F2C6D0()
{
  result = qword_1EC090138;
  if (!qword_1EC090138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090100, &qword_1C403C630);
    sub_1C3F2C754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090138);
  }

  return result;
}

unint64_t sub_1C3F2C754()
{
  result = qword_1EC090140;
  if (!qword_1EC090140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0900F8, &qword_1C403C628);
    sub_1C3EE9748();
    sub_1C3EE979C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090140);
  }

  return result;
}

uint64_t sub_1C3F2C800(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C3F2C86C(uint64_t a1)
{
  v4 = *(a1 + 16);
  result = sub_1C4030A70();
  if (v2 <= 0x3F)
  {
    result = sub_1C4030860();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3F2CA60@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAF0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F368;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 3;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 2)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F2CE18@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAF8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F370;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 5;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 4)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F2D1D0@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAB8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = off_1EC08F330;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v37 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v38 = v2;
  v39 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v38 + 8))(v37, v39);

      LOBYTE(v27) = 2;
      goto LABEL_23;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = (*(v38 + 8))(v37, v39);
LABEL_23:
  *v40 = v27;
  return result;
}

uint64_t sub_1C3F2D57C@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAC0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F338;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 3;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 2)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F2D934@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAC8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F340;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 3;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 2)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

char sub_1C3F2DCEC@<W0>(unint64_t a1@<X1>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1C4030720();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  if (qword_1EC08EAD0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v10 = off_1EC08F348;
    sub_1C4030700();
    v36 = a1;
    v11 = sub_1C4031220();
    a1 = v12;
    v13 = *(v4 + 2);
    v33 = v9;
    v13(v7, v9, v3);
    v14 = (v4[80] + 16) & ~v4[80];
    v15 = swift_allocObject();
    v34 = v4;
    v35 = v3;
    (*(v4 + 4))(v15 + v14, v7, v3);
    v16 = sub_1C3F0BC0C(v11, a1, sub_1C3F2FED8, v15);
    v18 = v17;

    v4 = v10 + 64;
    v19 = 1 << v10[32];
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 8);
    v3 = (v19 + 63) >> 6;
    v38 = v10;

    v22 = 0;
    if (v21)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v9 >= v3)
      {
        goto LABEL_20;
      }

      v21 = *&v4[8 * v9];
      ++v22;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  while (1)
  {
    v9 = v22;
LABEL_9:
    v23 = __clz(__rbit64(v21)) | (v9 << 6);
    v24 = (*(v38 + 6) + 16 * v23);
    v25 = *v24;
    v7 = v24[1];
    a1 = *(*(v38 + 7) + v23);

    if (!v7)
    {
      break;
    }

    if (sub_1C4031220() == v16 && v26 == v18)
    {
      goto LABEL_21;
    }

    v28 = sub_1C4031BF0();

    if (v28)
    {
      goto LABEL_22;
    }

    v40 = a1;
    if (sub_1C4031BB0() == v16 && v29 == v18)
    {
LABEL_21:

LABEL_22:
      result = CallStatus.init(rawValue:)(a1).value;
      if (v39 != 6)
      {
        v34[1](v33, v35);

        v32 = v39;
        goto LABEL_24;
      }

      __break(1u);
      return result;
    }

    v30 = sub_1C4031BF0();

    if (v30)
    {
      goto LABEL_22;
    }

    v21 &= v21 - 1;

    v22 = v9;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

LABEL_20:
  v34[1](v33, v35);

  v32 = 6;
LABEL_24:
  *v37 = v32;
  return result;
}

uint64_t sub_1C3F2E0C0@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAD8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = off_1EC08F350;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v37 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v38 = v2;
  v39 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v38 + 8))(v37, v39);

      LOBYTE(v27) = 2;
      goto LABEL_23;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = (*(v38 + 8))(v37, v39);
LABEL_23:
  *v40 = v27;
  return result;
}

uint64_t sub_1C3F2E46C@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAE0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F358;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 4;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 3)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F2E824@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EC08EAE8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v8 = off_1EC08F360;
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v38 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v39 = v2;
  v40 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FED8, v14);
  v17 = v16;

  v7 = v8 + 64;
  v18 = 1 << v8[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v2 = v19 & *(v8 + 8);
  v20 = (v18 + 63) >> 6;
  v41 = v8;

  v1 = 0;
  do
  {
    if (!v2)
    {
      while (1)
      {
        v22 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_20;
        }

        v2 = *&v7[8 * v22];
        ++v1;
        if (v2)
        {
          v1 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_11:
    v23 = __clz(__rbit64(v2)) | (v1 << 6);
    v24 = (*(v41 + 6) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v41 + 7) + v23);

    if (!v26)
    {
LABEL_20:
      (*(v39 + 8))(v38, v40);

      LOBYTE(v27) = 3;
LABEL_24:
      *v37 = v27;
      return result;
    }

    v28 = sub_1C4031220();
    v30 = v29;

    if (v28 == v15 && v30 == v17)
    {
LABEL_19:

      goto LABEL_22;
    }

    v32 = sub_1C4031BF0();

    if (v32)
    {
      break;
    }

    v42 = v27;
    v33 = sub_1C4031BB0();
    v5 = v34;
    if (v33 == v15 && v34 == v17)
    {
      goto LABEL_19;
    }

    v2 &= v2 - 1;
    v21 = sub_1C4031BF0();
  }

  while ((v21 & 1) == 0);

LABEL_22:

  result = v38;
  if (v27 <= 2)
  {
    result = (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F2EBDC@<X0>(_BYTE *a1@<X8>)
{
  v43 = a1;
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v8 = sub_1C3F158C4(&unk_1F4387A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  swift_arrayDestroy();
  sub_1C4030700();
  v9 = sub_1C4031220();
  v11 = v10;

  v12 = *(v2 + 16);
  v40 = v7;
  v12(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v41 = v2;
  v42 = v1;
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = sub_1C3F0BC0C(v9, v11, sub_1C3F2FDDC, v14);
  v17 = v16;

  v19 = 0;
  v21 = v8 + 64;
  v20 = *(v8 + 64);
  v44 = v8;
  v22 = 1 << *(v8 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  do
  {
    if (!v24)
    {
      while (1)
      {
        v27 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v27 >= v25)
        {
          goto LABEL_19;
        }

        v24 = *(v21 + 8 * v27);
        ++v19;
        if (v24)
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_10:
    v28 = __clz(__rbit64(v24)) | (v19 << 6);
    v29 = (*(v44 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(*(v44 + 56) + v28);

    if (!v31)
    {
LABEL_19:
      (*(v41 + 8))(v40, v42);

      LOBYTE(v32) = 3;
LABEL_23:
      *v43 = v32;
      return result;
    }

    v33 = sub_1C4031220();
    v35 = v34;

    if (v33 == v15 && v35 == v17)
    {
LABEL_18:

      goto LABEL_21;
    }

    v37 = sub_1C4031BF0();

    if (v37)
    {
      break;
    }

    v45 = v32;
    if (sub_1C4031BB0() == v15 && v38 == v17)
    {
      goto LABEL_18;
    }

    v24 &= v24 - 1;
    v26 = sub_1C4031BF0();
  }

  while ((v26 & 1) == 0);

LABEL_21:

  if (v32 <= 2)
  {
    result = (*(v41 + 8))(v40, v42);
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t EmergencyMediaItem.assetID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1C3F2EFD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 assetId];
  v5 = sub_1C40311C0();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  [a1 emergencyMediaType];
  if (qword_1EC08EB28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC0B0C78;
  if (*(qword_1EC0B0C78 + 16) && (v9 = sub_1C3F4129C(), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 0;
  }

  *(a2 + 16) = v11;
}

uint64_t static EmergencyMediaItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1C4031BF0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1C3F2F114()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x44497465737361;
  }

  *v0;
  return result;
}

uint64_t sub_1C3F2F154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C4031BF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C4031BF0();

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

uint64_t sub_1C3F2F238(uint64_t a1)
{
  v2 = sub_1C3F2F444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F2F274(uint64_t a1)
{
  v2 = sub_1C3F2F444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmergencyMediaItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090258, &qword_1C403C870);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F2F444();
  sub_1C4031D10();
  v17 = 0;
  sub_1C4031B30();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1C3F09FE0();
    sub_1C4031B70();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_1C3F2F444()
{
  result = qword_1EC090260;
  if (!qword_1EC090260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090260);
  }

  return result;
}

uint64_t EmergencyMediaItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4031280();
  return sub_1C4031CA0();
}

uint64_t EmergencyMediaItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4031C70();
  sub_1C4031280();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t EmergencyMediaItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090268, &qword_1C403C878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F2F444();
  sub_1C4031D00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1C4031A80();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1C3F09F8C();
  sub_1C4031AC0();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C3F2F758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4031C70();
  sub_1C4031280();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F2F7BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4031280();
  return sub_1C4031CA0();
}

uint64_t sub_1C3F2F7F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4031C70();
  sub_1C4031280();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F2F854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1C4031BF0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

CallHistory::EmergencyMediaItem __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EmergencyMediaItem.init(argument:)(Swift::String argument)
{
  v3 = v1;
  v30[0] = 58;
  v29 = v30;
  v4 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F15878, v28, argument._countAndFlagsBits, argument._object, v30);
  v31 = v2;
  v5 = *(v4 + 16);
  if (v5)
  {
    v27 = v3;
    v30[0] = MEMORY[0x1E69E7CC0];
    v6 = sub_1C3EF0270(0, v5, 0);
    v9 = 0;
    v10 = v30[0];
    v11 = (v4 + 56);
    while (v9 < *(v4 + 16))
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      v16 = MEMORY[0x1C6932F10](v12, v13, v14, v15);
      v18 = v17;

      v30[0] = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1C3EF0270((v19 > 1), v20 + 1, 1);
        v10 = v30[0];
      }

      ++v9;
      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v11 += 4;
      if (v5 == v9)
      {

        v3 = v27;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_9:
    if ((v10[2] & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v23 = v10[4];
      v22 = v10[5];
      v24 = v10[6];
      v25 = v10[7];

      sub_1C3F2E0C0(v30);
      v26 = v30[0];
      if (LOBYTE(v30[0]) != 2)
      {

        *v3 = v24;
        *(v3 + 8) = v25;
        *(v3 + 16) = v26 & 1;
        goto LABEL_16;
      }

      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_1C40318C0();
      MEMORY[0x1C6932F70](0xD000000000000013, 0x80000001C4056FD0);
      MEMORY[0x1C6932F70](v23, v22);

      MEMORY[0x1C6932F70](0xD000000000000028, 0x80000001C4056FF0);
      sub_1C4030C20();
      sub_1C3F11A00();
      swift_allocError();
    }

    else
    {

      sub_1C4030C20();
      sub_1C3F11A00();
      swift_allocError();
    }

    sub_1C4030C30();
    v6 = swift_willThrow();
  }

LABEL_16:
  result.assetID._object = v7;
  result.assetID._countAndFlagsBits = v6;
  result.mediaType = v8;
  return result;
}

unint64_t sub_1C3F2FBC4()
{
  result = qword_1EC090270;
  if (!qword_1EC090270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090270);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C3F2FC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C3F2FC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C3F2FCD8()
{
  result = qword_1EC090278;
  if (!qword_1EC090278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090278);
  }

  return result;
}

unint64_t sub_1C3F2FD30()
{
  result = qword_1EC090280;
  if (!qword_1EC090280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090280);
  }

  return result;
}

unint64_t sub_1C3F2FD88()
{
  result = qword_1EC090288;
  if (!qword_1EC090288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090288);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C3F2FE68()
{
  v0 = *(*(sub_1C4030720() - 8) + 80);

  return sub_1C3F0B8A8();
}

uint64_t Handle.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Handle.normalizedValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

double sub_1C3F2FF5C@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v5) = LOBYTE(a1);
  swift_getKeyPath();
  sub_1C3F31854(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F31854(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C3F0A1D4();
  sub_1C4030F90();

  *a2 = v5;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(a2 + 8) = a1;
  *(a2 + 16) = *(&v5 + 1);
  *&v5 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3189C();
  sub_1C4030F90();

  result = a1;
  *(a2 + 24) = v5;
  return result;
}

void __swiftcall Handle.init(_:)(CallHistory::Handle *__return_ptr retstr, CHHandle a2)
{
  isa = a2.super.isa;
  [(objc_class *)a2.super.isa type:a2._value];
  if (qword_1EC08EB30 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC0B0C80;
  if (*(qword_1EC0B0C80 + 16) && (v5 = sub_1C3F4129C(), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = CallHistory_HandleType_unknown;
  }

  v8 = [(objc_class *)isa value];
  v9 = sub_1C40311C0();
  v11 = v10;

  v12 = [(objc_class *)isa normalizedValue];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C40311C0();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  retstr->type = v7;
  retstr->value._countAndFlagsBits = v9;
  retstr->value._object = v11;
  retstr->normalizedValue.value._countAndFlagsBits = v14;
  retstr->normalizedValue.value._object = v16;
}

id Handle.chHandle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v10 = *v0;
  v5 = sub_1C3F121C0(&v10);
  v6 = sub_1C4031190();
  if (v4)
  {
    v7 = sub_1C4031190();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(CHHandle) initWithType:v5 value:v6 normalizedValue:v7];

  return v8;
}

unint64_t Handle.description.getter()
{
  v1 = sub_1C4031200();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C40306B0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v0;
  v19 = *(v0 + 8);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = sub_1C40306F0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1C40306E0();
  sub_1C40306A0();
  sub_1C40306C0();
  sub_1C3F24BFC();
  v11 = sub_1C40306D0();
  v13 = v12;
  sub_1C40311F0();
  v14 = sub_1C40311E0();
  v16 = v15;
  sub_1C3F31480(v11, v13);

  if (v16)
  {
    return v14;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C3F305FC()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C3F30658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F31738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C3F30680(uint64_t a1)
{
  v2 = sub_1C3F314D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F306BC(uint64_t a1)
{
  v2 = sub_1C3F314D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Handle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090298, &qword_1C403CAA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[2] = *(v1 + 2);
  v14[3] = v10;
  v11 = *(v1 + 3);
  v14[0] = *(v1 + 4);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F314D4();
  sub_1C4031D10();
  v18 = v9;
  v17 = 0;
  sub_1C3F0A228();
  sub_1C4031B70();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_1C4031B30();
  v15 = 2;
  sub_1C4031B10();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Handle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C4031CA0();
  sub_1C4031280();
  if (!v5)
  {
    return sub_1C4031C90();
  }

  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t Handle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C4031C70();
  sub_1C4031CA0();
  sub_1C4031280();
  sub_1C4031C90();
  if (v5)
  {
    sub_1C4031280();
  }

  return sub_1C4031CC0();
}

uint64_t Handle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0902A8, &qword_1C403CAB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F314D4();
  sub_1C4031D00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1C3F0A1D4();
  sub_1C4031AC0();
  v11 = v26;
  v24 = 1;
  v12 = sub_1C4031A80();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = sub_1C4031A60();
  v17 = v16;
  v18 = *(v6 + 8);
  v21 = v15;
  v18(v9, v5);
  *a2 = v11;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C3F30C7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C4031C70();
  sub_1C4031CA0();
  sub_1C4031280();
  sub_1C4031C90();
  if (v5)
  {
    sub_1C4031280();
  }

  return sub_1C4031CC0();
}

uint64_t sub_1C3F30D18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C4031CA0();
  sub_1C4031280();
  if (!v5)
  {
    return sub_1C4031C90();
  }

  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t sub_1C3F30DB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C4031C70();
  sub_1C4031CA0();
  sub_1C4031280();
  sub_1C4031C90();
  if (v5)
  {
    sub_1C4031280();
  }

  return sub_1C4031CC0();
}

void __swiftcall Handle.init(argument:)(CallHistory::Handle_optional *__return_ptr retstr, Swift::String argument)
{
  Handle.init(inputString:)(&v15, argument);
  if (v3)
  {
    if (qword_1EC08EB68 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4030D10();
    __swift_project_value_buffer(v4, qword_1EC0B0CB0);
    v5 = v3;
    v6 = sub_1C4030CF0();
    v7 = sub_1C40315C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C3E90000, v6, v7, "%{public}@", v8, 0xCu);
      sub_1C3F31418(v9);
      MEMORY[0x1C6934650](v9, -1, -1);
      MEMORY[0x1C6934650](v8, -1, -1);
    }

    else
    {
    }

    retstr->value.normalizedValue.value._object = 0;
    *&retstr->value.type = 0u;
    *&retstr->value.value._object = 0u;
  }

  else
  {
    countAndFlagsBits = v15.value._countAndFlagsBits;
    object = v15.value._object;
    normalizedValue = v15.normalizedValue;
    *&retstr->value.type = v15.type;
    retstr->value.value._countAndFlagsBits = countAndFlagsBits;
    retstr->value.value._object = object;
    retstr->value.normalizedValue = normalizedValue;
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Handle.init(inputString:)(CallHistory::Handle *__return_ptr retstr, Swift::String inputString)
{
  v30 = 58;
  v29 = &v30;
  v3 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F15878, v28, inputString._countAndFlagsBits, inputString._object, &v30);
  v31 = v2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C3EF0270(0, v4, 0);
    v5 = 0;
    v6 = v30;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = MEMORY[0x1C6932F10](v8, v9, v10, v11);
      v14 = v13;

      v30 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_1C3EF0270((v15 > 1), v16 + 1, 1);
        v6 = v30;
      }

      ++v5;
      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v7 += 4;
      if (v4 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v18 = v6[2];
    if ((v18 & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v19 = v6[4];
      v20 = v6[5];
      v21 = v6[6];
      v22 = v6[7];
      if (v18 == 3)
      {
        v24 = v6[8];
        v23 = v6[9];
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      v25._countAndFlagsBits = v19;
      v25._object = v20;
      HandleType.init(from:)(v25);
      if (v26)
      {
      }

      else
      {
        retstr->type = v30;
        retstr->value._countAndFlagsBits = v21;
        retstr->value._object = v22;
        retstr->normalizedValue.value._countAndFlagsBits = v24;
        retstr->normalizedValue.value._object = v23;
      }
    }

    else
    {

      sub_1C4030C20();
      sub_1C3F31854(&qword_1EC08F630, MEMORY[0x1E698CF48]);
      swift_allocError();
      sub_1C4030C30();
      swift_willThrow();
    }
  }
}

uint64_t sub_1C3F3128C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1C3F312EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t _s11CallHistory6HandleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (v6 || (sub_1C4031BF0() & 1) != 0)
  {
    if (v3)
    {
      if (v4 && (v2 == v5 && v3 == v4 || (sub_1C4031BF0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C3F31418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EED8, &qword_1C4037F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F31480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C3F314D4()
{
  result = qword_1EC0902A0;
  if (!qword_1EC0902A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902A0);
  }

  return result;
}

unint64_t sub_1C3F3152C()
{
  result = qword_1EC0902B0;
  if (!qword_1EC0902B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902B0);
  }

  return result;
}

uint64_t sub_1C3F31580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C3F315C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C3F31634()
{
  result = qword_1EC0902B8;
  if (!qword_1EC0902B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902B8);
  }

  return result;
}

unint64_t sub_1C3F3168C()
{
  result = qword_1EC0902C0;
  if (!qword_1EC0902C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902C0);
  }

  return result;
}

unint64_t sub_1C3F316E4()
{
  result = qword_1EC0902C8;
  if (!qword_1EC0902C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902C8);
  }

  return result;
}

uint64_t sub_1C3F31738(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C4031BF0();

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

uint64_t sub_1C3F31854(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3F3189C()
{
  result = qword_1EC0902D8;
  if (!qword_1EC0902D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F878, &qword_1C403A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0902D8);
  }

  return result;
}

uint64_t sub_1C3F31918(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EFF0, &qword_1C40381E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C3EF01AC(0, v11, 0);
  v12 = v22;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1C3EF01AC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1C3F41178(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F31B14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = sub_1C4031770();
    v7 = 0;
    v8 = *(v1 + 36);
    v33 = v1 + 64;
    v34 = v2;
    v36 = v1 + 56;
    v37 = v1;
    v35 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_34;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_35;
      }

      v39 = v7;
      v11 = *(v1 + 48) + 40 * v6;
      v12 = *v11;
      v13 = *(v11 + 16);
      v40 = *(v11 + 8);
      v14 = *(v11 + 32);
      v38 = *(v11 + 24);
      v15 = qword_1EC08EB30;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1C3F11440(qword_1EC0B0C80);
      if (*(v16 + 16))
      {
        v17 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2C8, &qword_1C4038748);
        v18 = sub_1C4031A10();
        v16 = v17;
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC8];
      }

      v42 = v18;
      sub_1C3F11E68(v16, 1, &v42);
      if (v41)
      {
        goto LABEL_39;
      }

      v41 = 0;
      v19 = v42;
      if (*(v42 + 16) && (v20 = sub_1C3F3C8D8(v12), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
      }

      else
      {
        v22 = 0;
      }

      v23 = sub_1C4031190();
      if (v14)
      {
        v24 = sub_1C4031190();
      }

      else
      {
        v24 = 0;
      }

      [objc_allocWithZone(CHHandle) initWithType:v22 value:v23 normalizedValue:v24];

      sub_1C4031920();
      v25 = *(v43 + 16);
      sub_1C4031960();
      sub_1C4031970();
      sub_1C4031930();
      v1 = v37;
      v9 = 1 << *(v37 + 32);
      if (v6 >= v9)
      {
        goto LABEL_36;
      }

      v4 = v36;
      v26 = *(v36 + 8 * v10);
      if ((v26 & (1 << v6)) == 0)
      {
        goto LABEL_37;
      }

      v8 = v35;
      if (v35 != *(v37 + 36))
      {
        goto LABEL_38;
      }

      v27 = v26 & (-2 << (v6 & 0x3F));
      if (v27)
      {
        v9 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v10 << 6;
        v29 = v10 + 1;
        v30 = (v33 + 8 * v10);
        while (v29 < (v9 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1C3E97CDC(v6, v35, 0);
            v9 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_1C3E97CDC(v6, v35, 0);
      }

LABEL_4:
      v7 = v39 + 1;
      v6 = v9;
      if (v39 + 1 == v34)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F31EA8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v6 = v3 + 56;
    v7 = -1 << *(v3 + 32);
    v8 = sub_1C4031770();
    v9 = 0;
    v39 = *(v3 + 36);
    v34 = v3 + 64;
    v35 = v4;
    v36 = v3 + 56;
    v37 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_31;
      }

      if (v39 != *(v3 + 36))
      {
        goto LABEL_32;
      }

      v12 = *(v3 + 48) + 24 * v8;
      v13 = *(v12 + 8);
      v38 = *v12;
      v14 = *(v12 + 16);
      v15 = qword_1EC08EB28;
      swift_bridgeObjectRetain_n();
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = v2;
      v17 = sub_1C3F32AC0(qword_1EC0B0C78);
      if (*(v17 + 16))
      {
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2D8, &qword_1C4038750);
        v19 = sub_1C4031A10();
        v17 = v18;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC8];
      }

      v40 = v19;
      sub_1C3F3D064(v17, 1, &v40);
      v2 = v16;
      if (v16)
      {
        goto LABEL_36;
      }

      v20 = v40;
      if (*(v40 + 16) && (v21 = sub_1C3F3C9A8(v14), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
      }

      else
      {
        v23 = 0;
      }

      v24 = objc_allocWithZone(CHEmergencyMediaItem);
      v25 = sub_1C4031190();
      [v24 initWithAssetId:v25 mediaType:v23];
      swift_bridgeObjectRelease_n();

      sub_1C4031920();
      v26 = *(v41 + 16);
      sub_1C4031960();
      sub_1C4031970();
      sub_1C4031930();
      v3 = v37;
      v10 = 1 << *(v37 + 32);
      if (v8 >= v10)
      {
        goto LABEL_33;
      }

      v6 = v36;
      v27 = *(v36 + 8 * v11);
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_34;
      }

      if (v39 != *(v37 + 36))
      {
        goto LABEL_35;
      }

      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v10 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v11 << 6;
        v30 = v11 + 1;
        v31 = (v34 + 8 * v11);
        while (v30 < (v10 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1C3E97CDC(v8, v39, 0);
            v10 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_1C3E97CDC(v8, v39, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v35)
      {
        return v41;
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
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1C3F32220(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = a3;
  v44 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = sub_1C40317E0();
  }

  else
  {
    v9 = *(a3 + 16);
  }

  if (v9)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C3EF03F8(0, v9 & ~(v9 >> 63), 0);
    v10 = v54;
    if (v44)
    {
      v11 = sub_1C4031790();
    }

    else
    {
      v13 = -1 << *(v8 + 32);
      v11 = sub_1C4031770();
      v12 = *(v8 + 36);
    }

    v51 = v11;
    v52 = v12;
    v53 = v44 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v41 = v8 + 56;
      v40 = v8 + 64;
      v42 = v9;
      while (v14 < v9)
      {
        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          goto LABEL_38;
        }

        v45 = v17;
        v6 = v51;
        LODWORD(v4) = v53;
        v5 = v52;
        v18 = v8;
        sub_1C3F3D71C(v51, v52, v53, v8, &qword_1EC0902E0, off_1E81DB4E8);
        v8 = v19;
        v46 = v19;
        a1(&v47, &v46);
        if (v7)
        {
          goto LABEL_43;
        }

        v7 = 0;

        v20 = v47;
        v21 = v48;
        v22 = v49;
        v23 = v50;
        v24 = v10;
        v54 = v10;
        v25 = *(v10 + 16);
        v26 = *(v24 + 24);
        v8 = v25 + 1;
        if (v25 >= v26 >> 1)
        {
          v39 = v50;
          v37 = v49;
          v38 = v48;
          sub_1C3EF03F8((v26 > 1), v25 + 1, 1);
          v22 = v37;
          v21 = v38;
          v23 = v39;
          v24 = v54;
        }

        *(v24 + 16) = v8;
        v27 = v24 + 40 * v25;
        *(v27 + 32) = v20;
        *(v27 + 40) = v21;
        *(v27 + 48) = v22;
        *(v27 + 56) = v23;
        if (v44)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v10 = v24;
          v8 = v18;
          if (sub_1C40317B0())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090430, &qword_1C403D118);
          v15 = sub_1C4031530();
          sub_1C4031820();
          v15(&v47, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v8 = v18;
          v28 = 1 << *(v18 + 32);
          if (v6 >= v28)
          {
            goto LABEL_39;
          }

          v10 = v24;
          v29 = v6 >> 6;
          v30 = *(v41 + 8 * (v6 >> 6));
          if (((v30 >> v6) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v18 + 36) != v5)
          {
            goto LABEL_41;
          }

          v31 = v30 & (-2 << (v6 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v29 << 6;
            v32 = v29 + 1;
            v33 = (v40 + 8 * v29);
            while (v32 < (v28 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v4 += 64;
              ++v32;
              if (v35)
              {
                sub_1C3E97CDC(v6, v5, 0);
                v28 = __clz(__rbit64(v34)) + v4;
                goto LABEL_34;
              }
            }

            sub_1C3E97CDC(v6, v5, 0);
          }

LABEL_34:
          v36 = *(v8 + 36);
          v51 = v28;
          v52 = v36;
          v53 = 0;
        }

        v9 = v42;
        v14 = v45;
        if (v45 == v42)
        {
          sub_1C3E97CDC(v51, v52, v53);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_1C3E97CDC(v6, v5, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void sub_1C3F325DC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = a3;
  v42 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = sub_1C40317E0();
  }

  else
  {
    v9 = *(a3 + 16);
  }

  if (v9)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C3EF03D8(0, v9 & ~(v9 >> 63), 0);
    v10 = v51;
    if (v42)
    {
      v11 = sub_1C4031790();
    }

    else
    {
      v13 = -1 << *(v8 + 32);
      v11 = sub_1C4031770();
      v12 = *(v8 + 36);
    }

    v48 = v11;
    v49 = v12;
    v50 = v42 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v39 = v8 + 56;
      v38 = v8 + 64;
      v40 = v9;
      while (v14 < v9)
      {
        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          goto LABEL_38;
        }

        v43 = v17;
        v6 = v48;
        LODWORD(v4) = v50;
        v5 = v49;
        v18 = v8;
        sub_1C3F3D71C(v48, v49, v50, v8, &qword_1EC0902F0, off_1E81DB4D8);
        v8 = v19;
        v47 = v19;
        a1(&v44, &v47);
        if (v7)
        {
          goto LABEL_43;
        }

        v7 = 0;

        v21 = v44;
        v20 = v45;
        v22 = v46;
        v23 = v10;
        v51 = v10;
        v24 = *(v10 + 16);
        v25 = *(v23 + 24);
        v8 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v37 = v45;
          v36 = v46;
          sub_1C3EF03D8((v25 > 1), v24 + 1, 1);
          v22 = v36;
          v20 = v37;
          v23 = v51;
        }

        *(v23 + 16) = v8;
        v26 = v23 + 24 * v24;
        *(v26 + 32) = v21;
        *(v26 + 40) = v20;
        *(v26 + 48) = v22;
        if (v42)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v10 = v23;
          v8 = v18;
          if (sub_1C40317B0())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090438, &qword_1C403D120);
          v15 = sub_1C4031530();
          sub_1C4031820();
          v15(&v44, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v8 = v18;
          v27 = 1 << *(v18 + 32);
          if (v6 >= v27)
          {
            goto LABEL_39;
          }

          v10 = v23;
          v28 = v6 >> 6;
          v29 = *(v39 + 8 * (v6 >> 6));
          if (((v29 >> v6) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v18 + 36) != v5)
          {
            goto LABEL_41;
          }

          v30 = v29 & (-2 << (v6 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v28 << 6;
            v31 = v28 + 1;
            v32 = (v38 + 8 * v28);
            while (v31 < (v27 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v4 += 64;
              ++v31;
              if (v34)
              {
                sub_1C3E97CDC(v6, v5, 0);
                v27 = __clz(__rbit64(v33)) + v4;
                goto LABEL_34;
              }
            }

            sub_1C3E97CDC(v6, v5, 0);
          }

LABEL_34:
          v35 = *(v8 + 36);
          v48 = v27;
          v49 = v35;
          v50 = 0;
        }

        v9 = v40;
        v14 = v43;
        if (v43 == v40)
        {
          sub_1C3E97CDC(v48, v49, v50);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_1C3E97CDC(v6, v5, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}