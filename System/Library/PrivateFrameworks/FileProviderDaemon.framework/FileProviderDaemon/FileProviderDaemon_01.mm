uint64_t sub_1CEFE2F88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v251 = *MEMORY[0x1E69E9840];
  v4 = a1[11];
  v247 = a1[10];
  v248 = v4;
  v5 = a1[13];
  v249 = a1[12];
  v250 = v5;
  v6 = a1[7];
  v243 = a1[6];
  v244 = v6;
  v7 = a1[9];
  v245 = a1[8];
  v246 = v7;
  v8 = a1[3];
  v239 = a1[2];
  v240 = v8;
  v9 = a1[5];
  v241 = a1[4];
  v242 = v9;
  v10 = a1[1];
  v237 = *a1;
  v238 = v10;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v204 = &v169 - v17;
  v18 = type metadata accessor for ItemMetadata();
  v206 = *(v18 - 8);
  v19 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v215 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v209 = &v169 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v208 = &v169 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v169 - v31;
  v213 = a1;
  v33 = *a1;
  v205 = a2;
  v203 = v34;
  LODWORD(v207) = v33;
  switch(v33)
  {
    case 2:
      v35 = v213;
      v43 = *(v213 + 26);
      LODWORD(v197) = 0;
      HIDWORD(v197) = v43;
      v198 = 1;
      v212 = 1;
      goto LABEL_10;
    case 1:
      v35 = v213;
      v36 = v213[11];
      v233 = v213[10];
      v234 = v36;
      v37 = v213[13];
      v235 = v213[12];
      v236 = v37;
      v38 = v213[7];
      v229 = v213[6];
      v230 = v38;
      v39 = v213[9];
      v231 = v213[8];
      v232 = v39;
      v40 = v213[3];
      v225 = v213[2];
      v226 = v40;
      v41 = v213[5];
      v227 = v213[4];
      v228 = v41;
      v42 = v213[1];
      v223 = *v213;
      v224 = v42;
      if (sub_1CF1ADD54(&v223))
      {
        HIDWORD(v197) = 0;
        v212 = 3;
        v198 = 1;
      }

      else
      {
        HIDWORD(v197) = 0;
        LODWORD(v198) = 0;
        v212 = 0;
        HIDWORD(v198) = *(v35 + 26);
      }

      LODWORD(v197) = 1;
LABEL_10:
      v217 = v18;
      v45 = swift_allocObject();
      v46 = v45;
      *(v45 + 16) = 0;
      v200 = (v45 + 16);
      v47 = *(v35 + 11);
      if (v47 >= 1)
      {
        v48 = *(v35 + 12);
        v49 = *(v35 + 10);
        *(v45 + 16) = MEMORY[0x1E69E7CC0];
        v220 = v49;
        v221 = v47;
        *&v225 = sub_1CF1ADD4C;
        *(&v225 + 1) = v45;
        v222 = v48;
        *&v223 = MEMORY[0x1E69E9820];
        *(&v223 + 1) = 1107296256;
        *&v224 = sub_1CF1AD9FC;
        *(&v224 + 1) = &block_descriptor_1;
        v50 = _Block_copy(&v223);

        fpfs_deserialize_tags();
        _Block_release(v50);
      }

      v201 = v46;
      v202 = v25;
      v210 = v32;
      v211 = v11;
      v199 = v16;
      v214 = v12;
      v51 = *(v35 + 20);
      if (v51)
      {
        v52 = 0;
        while (1)
        {
          while (1)
          {
            v57 = *v51;
            v56 = v51[1];
            v58 = sub_1CF9E6A58();
            v60 = v51[2];
            if (v60 > 0x7FFFFFFFFFFFFFE7)
            {
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
            }

            v61 = v58;
            v62 = v59;
            if (v60)
            {
              if (v60 <= 14)
              {
                *(&v223 + 6) = 0;
                *&v223 = 0;
                BYTE14(v223) = v60;
                memcpy(&v223, v51 + 3, v60);
                v68 = v223;
                v69 = v216 & 0xF00000000000000 | DWORD2(v223) | ((WORD6(v223) | (BYTE14(v223) << 16)) << 32);
                v216 = v69;
              }

              else
              {
                v63 = sub_1CF9E54F8();
                v64 = *(v63 + 48);
                v65 = *(v63 + 52);
                swift_allocObject();
                v66 = sub_1CF9E5488();
                v67 = v66;
                if (v60 >= 0x7FFFFFFF)
                {
                  sub_1CF9E5AD8();
                  v68 = swift_allocObject();
                  *(v68 + 16) = 0;
                  *(v68 + 24) = v60;
                  v69 = v67 | 0x8000000000000000;
                }

                else
                {
                  v68 = v60 << 32;
                  v69 = v66 | 0x4000000000000000;
                }
              }
            }

            else
            {
              v68 = 0;
              v69 = 0xC000000000000000;
            }

            if (v52)
            {
              v70 = v52;
            }

            else
            {
              v70 = MEMORY[0x1E69E7CC8];
            }

            sub_1CEFE42D4(v68, v69);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v223 = v70;
            v73 = sub_1CEFE4328(v61, v62);
            v74 = v70[2];
            v75 = (v72 & 1) == 0;
            v76 = v74 + v75;
            if (__OFADD__(v74, v75))
            {
              goto LABEL_114;
            }

            v77 = v72;
            if (v70[3] < v76)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v72 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              sub_1CF7CF52C();
              if ((v77 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

LABEL_14:

            v52 = v223;
            v53 = (*(v223 + 56) + 16 * v73);
            v54 = *v53;
            v55 = v53[1];
            *v53 = v68;
            v53[1] = v69;
            sub_1CEFE4714(v54, v55);
            sub_1CEFE4714(v68, v69);
            v51 = v57;
            if (!v57)
            {
              goto LABEL_39;
            }
          }

          sub_1CEFE4458(v76, isUniquelyReferenced_nonNull_native);
          v78 = sub_1CEFE4328(v61, v62);
          if ((v77 & 1) != (v79 & 1))
          {
            result = sub_1CF9E8108();
            __break(1u);
            return result;
          }

          v73 = v78;
          if (v77)
          {
            goto LABEL_14;
          }

LABEL_33:
          v52 = v223;
          *(v223 + 8 * (v73 >> 6) + 64) |= 1 << v73;
          v80 = (v52[6] + 16 * v73);
          *v80 = v61;
          v80[1] = v62;
          v81 = (v52[7] + 16 * v73);
          *v81 = v68;
          v81[1] = v69;
          sub_1CEFE4714(v68, v69);
          v82 = v52[2];
          v83 = __OFADD__(v82, 1);
          v84 = v82 + 1;
          if (v83)
          {
            goto LABEL_115;
          }

          v52[2] = v84;
          v51 = v57;
          if (!v57)
          {
            goto LABEL_39;
          }
        }
      }

      v52 = 0;
LABEL_39:
      v85 = v213;
      if (*(v213 + 17))
      {
        *&v223 = sub_1CF9E6A58();
        *(&v223 + 1) = v86;
        v220 = 58;
        v221 = 0xE100000000000000;
        v218 = 47;
        v219 = 0xE100000000000000;
        sub_1CEFE4E68();
        v87 = sub_1CF9E7668();
        v195 = v88;
      }

      else
      {
        v87 = 0;
        v195 = 0;
      }

      v89 = v210;
      v90 = v211;
      v91 = v214;
      v92 = v208;
      v216 = *(v85 + 14);
      if (*(v85 + 22))
      {
        v93 = sub_1CF9E6878();
        v194 = v94;
        if (v94)
        {
          v95 = v93;
        }

        else
        {
          v95 = 0;
        }

        v171 = v95;
      }

      else
      {
        v171 = 0;
        v194 = 0;
      }

      if (*(v85 + 24) == 0)
      {
        v96 = 1;
      }

      else
      {
        sub_1CF9E5C88();
        v96 = 0;
      }

      v97 = *(v91 + 56);
      v98 = 1;
      (v97)(v89, v96, 1, v90);
      if (*(v85 + 40) != 0)
      {
        sub_1CF9E5C88();
        v98 = 0;
      }

      v99 = 1;
      (v97)(v92, v98, 1, v90);
      v233 = v247;
      v234 = v248;
      v235 = v249;
      v236 = v250;
      v229 = v243;
      v230 = v244;
      v231 = v245;
      v232 = v246;
      v225 = v239;
      v226 = v240;
      v227 = v241;
      v228 = v242;
      v223 = v237;
      v224 = v238;
      v100 = sub_1CEFE4774(&v223);
      v233 = v247;
      v234 = v248;
      v235 = v249;
      v236 = v250;
      v229 = v243;
      v230 = v244;
      v231 = v245;
      v232 = v246;
      v225 = v239;
      v226 = v240;
      v227 = v241;
      v228 = v242;
      v223 = v237;
      v224 = v238;
      v192 = sub_1CEFE4768(&v223);
      v233 = v247;
      v234 = v248;
      v235 = v249;
      v236 = v250;
      v229 = v243;
      v230 = v244;
      v231 = v245;
      v232 = v246;
      v225 = v239;
      v226 = v240;
      v227 = v241;
      v228 = v242;
      v223 = v237;
      v224 = v238;
      v191 = sub_1CEFE478C(&v223);
      v233 = v247;
      v234 = v248;
      v235 = v249;
      v236 = v250;
      v229 = v243;
      v230 = v244;
      v231 = v245;
      v232 = v246;
      v225 = v239;
      v226 = v240;
      v227 = v241;
      v228 = v242;
      v223 = v237;
      v224 = v238;
      if (sub_1CEFE4780(&v223))
      {
        v101 = *(v85 + 8) / 1000000000.0 + *(v85 + 7);
        sub_1CF9E5C88();
        v99 = 0;
      }

      (v97)(v209, v99, 1, v90);
      v102 = v200;
      swift_beginAccess();
      v103 = *v102;
      if (*v102)
      {
        if (*(v103 + 16))
        {
        }

        else
        {
          v103 = 0;
        }
      }

      v104 = *(v85 + 25);
      v196 = v87;
      v193 = v100;
      v200 = v103;
      if (v104 <= 1023)
      {
        if (!v104)
        {
          v189 = 0;
LABEL_74:
          v188 = *(v85 + 9);
          v182 = v207 == 3;
          ResidencyReason.init(onDiskValue:)(*(v85 + 212));
          v190 = v218;

          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v187 = sub_1CEFE47A4(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v186 = sub_1CEFE4798(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v185 = sub_1CEFE47B0(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v184 = sub_1CEFE47BC(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v172 = sub_1CEFE47F8(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v106 = sub_1CEFE47E0(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v183 = sub_1CEFE47D4(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v181 = sub_1CEFE47EC(&v223);
          v233 = v247;
          v234 = v248;
          v235 = v249;
          v236 = v250;
          v229 = v243;
          v230 = v244;
          v231 = v245;
          v232 = v246;
          v225 = v239;
          v226 = v240;
          v227 = v241;
          v228 = v242;
          v223 = v237;
          v224 = v238;
          v107 = sub_1CEFE47C8(&v223);
          v108 = *(v85 + 52);
          if (v108 >= 6)
          {
            v108 = 0;
          }

          v179 = v108;
          v180 = v107;
          v109 = *(v85 + 2);
          v110 = *(v85 + 4);
          v111 = *(v85 + 15);
          v112 = v217;
          v113 = v215;
          v114 = &v215[v217[14]];
          *v114 = 0;
          v114[1] = 0;
          v177 = v114;
          v113[v112[17]] = 2;
          v178 = v112[23];
          v113[v178] = 6;
          v115 = v112[30];
          v173 = v111;
          v174 = &v113[v115];
          v97();
          v116 = v112;
          v176 = &v113[v112[34]];
          v175 = xmmword_1CF9F4E20;
          *v176 = xmmword_1CF9F4E20;
          v117 = &v113[v112[38]];
          *v117 = 0;
          v117[1] = 0;
          v118 = v182 | (2u >> v212);
          v119 = fpfs_supports_vfs_ignore_permissions_iopolicy();
          v170 = v117;
          if (v119)
          {
            v120 = v110 & 0x1BF | 0x40;
            if ((v118 & 1) == 0)
            {
              v120 = v110 & 0x1FF;
            }
          }

          else
          {
            v121 = v110 & 0x1FF | (v110 >> 2) & 0x40 | 0x80;
            if ((v118 & 1) == 0)
            {
              LOWORD(v121) = v110 & 0x1FF;
            }

            v120 = (4 * v121) & 0x100 | v121;
          }

          v122 = v214;
          v124 = v198;
          v123 = HIDWORD(v198);
          v126 = v197;
          v125 = HIDWORD(v197);
          v127 = v207 == 3;
          v128 = *(v213 + 16);
          v129 = v215;
          *v215 = v212;
          v129[v112[20]] = v172;
          v129[v112[28]] = v127;
          v129[v112[29]] = v106;
          *&v129[v112[26]] = v109;
          *&v129[v112[27]] = v128;
          v130 = *v129;
          v131 = v130 == 1 || v127;
          if (!v131)
          {
            v125 = 0;
          }

          *(v129 + 1) = v125;
          v129[8] = v126 & 1 | ((v131 & 1) == 0);
          v132 = &v129[v112[37]];
          if (v130)
          {
            v127 = 1;
          }

          if (v127)
          {
            v133 = 0;
          }

          else
          {
            v133 = v123;
          }

          *v132 = v133;
          v132[4] = v127 | v124;
          *(v129 + 5) = v120;
          v134 = v203;
          sub_1CEFCCBDC(v210, v203, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v135 = *(v122 + 48);
          v136 = v211;
          if (v135(v134, 1, v211) == 1)
          {
            v137 = v204;
            sub_1CF9E5C88();
            if (v135(v134, 1, v136) != 1)
            {
              sub_1CEFCCC44(v134, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            v137 = v204;
            (*(v122 + 32))(v204, v134, v136);
          }

          v213 = __ROR8__(v216, 32);
          v138 = *(v122 + 32);
          v138(&v215[v116[7]], v137, v136);
          v139 = v208;
          v140 = v202;
          sub_1CEFCCBDC(v208, v202, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v141 = v135(v140, 1, v136);
          v214 = v122 + 32;
          v207 = v138;
          if (v141 == 1)
          {
            v142 = v135;
            v143 = v199;
            sub_1CF9E5C88();
            sub_1CEFCCC44(v139, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            if (v142(v140, 1, v136) != 1)
            {
              sub_1CEFCCC44(v140, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            sub_1CEFCCC44(v139, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v143 = v199;
            v138(v199, v140, v136);
          }

          v212 = 1u >> v212;
          v144 = v188;
          LODWORD(v211) = v188 == 0;
          v145 = v215;
          LODWORD(v216) = v216 == 0;
          v146 = v116[31];
          v147 = &v215[v116[32]];
          v148 = v217[33];
          v149 = &v215[v217[35]];
          v207(&v215[v217[8]], v143, v136);
          v150 = v192;
          v145[v217[9]] = v193;
          v145[v217[10]] = v150;
          v145[v217[13]] = v191;
          *&v145[v217[19]] = v173;
          v145[v217[21]] = v189;
          v151 = v186;
          v145[v217[15]] = v187;
          v145[v217[16]] = v151;
          v152 = v185;
          v145[v217[11]] = v184;
          v145[v217[12]] = 0;
          v145[v217[18]] = v152;
          sub_1CEFE4804(v209, v174);
          *&v145[v146] = v200;
          *v147 = v144;
          v147[8] = v211;
          v153 = v217;
          *&v145[v148] = v52;
          v154 = v177;
          v155 = v177[1];

          v156 = v195;
          *v154 = v196;
          v154[1] = v156;
          v157 = v176;
          sub_1CEFE48D8(*v176, *(v176 + 1));
          *v157 = v175;
          *v149 = v213;
          v149[8] = v216;
          v145[v153[36]] = v183;
          v158 = v205;
          v159 = v194;
          if (v194)
          {
            v160 = HIBYTE(v194) & 0xF;
            if ((v194 & 0x2000000000000000) == 0)
            {
              v160 = v171 & 0xFFFFFFFFFFFFLL;
            }

            if (v160)
            {
              v161 = v170;
              *v170 = v171;
              v161[1] = v159;
            }

            else
            {
            }
          }

          v162 = v215;
          v163 = v180;
          v215[v153[24]] = v181;
          *(v162 + v153[25]) = v163;
          *(v162 + v153[22]) = v179;
          if (v212)
          {
            v164 = v190;
          }

          else
          {
            v164 = 6;
          }

          *(v162 + v178) = v164;
          sub_1CEFE4874(v162, v158);

          result = (*(v206 + 56))(v158, 0, 1, v153);
          v166 = *MEMORY[0x1E69E9840];
          return result;
        }

        if (v104 == 512)
        {
          v105 = 2;
          goto LABEL_73;
        }
      }

      else
      {
        switch(v104)
        {
          case 0x400:
            v105 = 3;
            goto LABEL_73;
          case 0x800:
            v105 = 4;
            goto LABEL_73;
          case 0x8000:
            v105 = 5;
LABEL_73:
            v189 = v105;
            goto LABEL_74;
        }
      }

      v105 = 1;
      goto LABEL_73;
    case 3:
      v212 = 0;
      v35 = v213;
      v44 = *(v213 + 26);
      LODWORD(v197) = 0;
      HIDWORD(v197) = v44;
      v198 = 1;
      goto LABEL_10;
    case 4:
      v212 = 2;
      v198 = 1;
      v197 = 1;
      v35 = v213;
      goto LABEL_10;
  }

  v167 = *(v206 + 56);
  v168 = *MEMORY[0x1E69E9840];

  return v167(a2, 1, 1, v18);
}

uint64_t sub_1CEFE429C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CEFE42D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1CEFE4328(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v6 = sub_1CF9E8228();

  return sub_1CEFE43A0(a1, a2, v6);
}

unint64_t sub_1CEFE43A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CF9E8048())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CEFE4458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
  v36 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_1CEFE42D4(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CEFE4714(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CEFE4804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFE4874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFE48D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEFE4714(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEFE4900(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CF9E5CF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[14] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[30];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1CEFE4A4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[14] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[30];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1CEFE4B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEFE4E68()
{
  result = qword_1EDEAEDE0;
  if (!qword_1EDEAEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDE0);
  }

  return result;
}

uint64_t sub_1CEFE4EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE50C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CEFE510C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE516C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE51CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE522C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1CEFE528C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return result;
}

uint64_t sub_1CEFE52D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = a3[1];
  result = os_variant_has_internal_content();
  if (result)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1CF9E7948();

    v27 = a1;
    v28 = a2;
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3D450);
    v14 = sub_1CF9E6AE8();

    if (v14)
    {
      v27 = 45;
      v28 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](result);
      *(&v27 - 2) = &v27;

      v16 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF2A93F0, (&v27 - 4), v11, v12, v15);
      v17 = *(v16 + 16);
      if (v17 && (v18 = (v16 + 32 * v17), v19 = *v18, v20 = v18[1], v22 = v18[2], v21 = v18[3], , , (v20 ^ v19) >> 14))
      {
        v23 = sub_1CF2A8DE8(v19, v20, v22, v21, 10);
        if ((v23 & 0x10000000000) != 0)
        {
          v23 = sub_1CF4C4E64(v19, v20, v22, v21, 10);
        }

        v24 = v23;

        if ((v24 & 0x100000000) == 0)
        {
          v25 = sub_1CF9E6138();
          if ((v25 & 0x100000000) != 0)
          {
            v26 = 22;
          }

          else
          {
            v26 = v25;
          }

          LODWORD(v27) = v26;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v7 + 8))(v10, v6);
          return swift_willThrow();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1CEFE55D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CEFE5688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ItemMetadata();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CEFE57B8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate;
  v2 = sub_1CF9E5CF8();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_1CEFD9E84(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CEFE5888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEFE58F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B50, &unk_1CFA171B0);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FPFileTree()
{
  result = qword_1EDEAACD0;
  if (!qword_1EDEAACD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CEFE5A60(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t *a5, char a6)
{
  v78 = a3;
  v82 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v78 - v12;
  v13 = sub_1CF9E5FF8();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v18 = sub_1CEFE65E8(a4, a6);
  v20 = v19;
  v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v88 = v18;
  v89 = v20;

  v83 = v16;
  sub_1CEFE6798(&v88, v16);

  v22 = *a4;
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;
  if (v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_1CF9E8048();

    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (qword_1EDEA4368 != -1)
  {
    swift_once();
  }

  if (v18 == qword_1EDEBB698 && v20 == unk_1EDEBB6A0 || (sub_1CF9E8048() & 1) != 0)
  {

    if (qword_1EDEAEE10 != -1)
    {
      swift_once();
    }
  }

LABEL_15:
  v28 = objc_allocWithZone(MEMORY[0x1E6967388]);
  v29 = v22;
  v30 = sub_1CF9E6888();

  v31 = sub_1CF9E5F38();
  v32 = [v28 initWithProviderDomainID:a2 itemIdentifier:v82 parentItemIdentifier:v29 filename:v30 contentType:v31];

  if (v78)
  {
    v33 = [v78 nsDomain];
    v34 = [v33 spotlightDomainIdentifier];

    v35 = v79;
    if (!v34)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = sub_1CF9E6888();
    }
  }

  else
  {
    v34 = 0;
    v35 = v79;
  }

  [v32 setSpotlightDomainIdentifier_];

  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v37;
  if (v36 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_1CF9E8048();

    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;
  if (v41 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v43 == v44)
  {
  }

  else
  {
    v45 = sub_1CF9E8048();

    if ((v45 & 1) == 0)
    {
      [v32 setTrashed_];
    }
  }

LABEL_30:
  v46 = type metadata accessor for ItemMetadata();
  if (*&v21[v46[14] + 8])
  {
    v47 = a4[2];
    v88 = a4[1];
    v89 = v47;
    v86 = 47;
    v87 = 0xE100000000000000;
    v84 = 58;
    v85 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v48 = sub_1CF9E6888();

    [v32 setFileSystemFilename_];
  }

  if ((v17 & 0x400000000000) != 0)
  {
    v49 = &v21[v46[35]];
    if (v49[8])
    {
      v50 = 0;
    }

    else
    {
      v50 = *v49;
    }

    [v32 setTypeAndCreator_];
    if ((v17 & 2) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_56:
        if ((v17 & 0x20) != 0)
        {
          goto LABEL_64;
        }

        goto LABEL_57;
      }
    }

    else if ((v17 & 1) == 0)
    {
      if ((v17 & 0x20) == 0)
      {
        if ((v17 & 0x40) == 0)
        {
          if ((v17 & 0x80) == 0)
          {
            if ((v17 & 0x400) == 0)
            {
              if ((v17 & 0x800) == 0)
              {
                if ((v17 & 0x3004) != 0)
                {
                  goto LABEL_78;
                }

                if ((v17 & 0x100) != 0)
                {
                  goto LABEL_102;
                }

                goto LABEL_130;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

          goto LABEL_71;
        }

        goto LABEL_67;
      }

      goto LABEL_64;
    }

LABEL_63:
    if ((v17 & 0x20) != 0)
    {
LABEL_64:
      sub_1CEFCCBDC(&v21[v46[30]], v35, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v51 = sub_1CF9E5CF8();
      v52 = *(v51 - 8);
      v53 = 0;
      if ((*(v52 + 48))(v35, 1, v51) != 1)
      {
        v53 = sub_1CF9E5C48();
        (*(v52 + 8))(v35, v51);
      }

      [v32 setLastUsedDate_];

      if ((v17 & 0x40) != 0)
      {
        goto LABEL_67;
      }

LABEL_58:
      if ((v17 & 0x80) != 0)
      {
        goto LABEL_71;
      }

LABEL_59:
      if ((v17 & 0x400) != 0)
      {
        goto LABEL_75;
      }

      goto LABEL_60;
    }

LABEL_57:
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  if ((v17 & 2) != 0)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  if (v17)
  {
    goto LABEL_63;
  }

  if ((v17 & 0x20) != 0)
  {
    goto LABEL_64;
  }

  if ((v17 & 0x40) == 0)
  {
    if ((v17 & 0x80) == 0)
    {
      if ((v17 & 0x400) == 0)
      {
        if ((v17 & 0x800) == 0)
        {
          if ((v17 & 0x3004) != 0)
          {
            goto LABEL_78;
          }

          if ((v17 & 0x100) != 0)
          {
            goto LABEL_102;
          }

LABEL_130:
          if ((v17 & 8) != 0)
          {
            goto LABEL_108;
          }

          goto LABEL_106;
        }

        goto LABEL_76;
      }

LABEL_75:
      v59 = &v21[v46[7]];
      v60 = sub_1CF9E5C48();
      [v32 setCreationDate_];

      if ((v17 & 0x800) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_71;
  }

LABEL_67:
  v54 = *&v21[v46[31]];
  if (v54)
  {
    sub_1CF6601AC(v54);
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v55 = sub_1CF9E6D28();
  }

  else
  {
    v55 = 0;
  }

  [v32 setTags_];

  if ((v17 & 0x80) == 0)
  {
    goto LABEL_59;
  }

LABEL_71:
  v56 = &v21[v46[32]];
  if (v56[8])
  {
    v57 = 0;
  }

  else
  {
    v58 = *v56;
    v57 = sub_1CF9E8268();
  }

  [v32 setFavoriteRank_];

  if ((v17 & 0x400) != 0)
  {
    goto LABEL_75;
  }

LABEL_60:
  if ((v17 & 0x800) != 0)
  {
LABEL_76:
    v61 = &v21[v46[8]];
    v62 = sub_1CF9E5C48();
    [v32 setContentModificationDate_];
  }

LABEL_77:
  if ((v17 & 0x3004) == 0)
  {
    goto LABEL_99;
  }

LABEL_78:
  v63 = *(v21 + 5);
  if ((v63 & 0x100) != 0)
  {
    if ((v63 & 0x80) == 0)
    {
      if ((v63 & 0x40) == 0)
      {
        if ((v21[v46[10]] & 1) == 0)
        {
          v64 = 2;
          if ((v21[v46[13]] & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        v64 = 2;
        goto LABEL_95;
      }

      v64 = 2;
      goto LABEL_93;
    }

    v64 = 6;
    if ((v63 & 0x40) == 0)
    {
LABEL_94:
      if (v21[v46[10]] != 1)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

LABEL_93:
    v64 |= 1uLL;
    goto LABEL_94;
  }

  if ((v63 & 0x80) != 0)
  {
    v64 = 4;
    if ((v63 & 0x40) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if ((v63 & 0x40) != 0)
  {
    v64 = 0;
    goto LABEL_93;
  }

  if ((v21[v46[10]] & 1) == 0)
  {
    v64 = 0;
    if ((v21[v46[13]] & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v64 = 0;
LABEL_95:
  v64 |= 8uLL;
LABEL_96:
  if (v21[v46[13]] == 1)
  {
LABEL_97:
    v64 |= 0x10uLL;
  }

LABEL_98:
  [v32 setFileSystemFlags_];
LABEL_99:
  if ((v17 & 0x100) == 0)
  {
    if ((v17 & 8) != 0)
    {
      goto LABEL_108;
    }

LABEL_106:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

LABEL_102:
  v65 = v46[33];
  if (*&v21[v65])
  {
    v66 = *&v21[v65];
  }

  else
  {
    sub_1CF009068(MEMORY[0x1E69E7CC0]);
  }

  v67 = sub_1CF9E6618();

  [v32 setExtendedAttributes_];

  if ((v17 & 8) == 0)
  {
    goto LABEL_106;
  }

LABEL_108:
  v68 = *&v21[v46[26]];
  v69 = sub_1CF9E81A8();
  [v32 setDocumentSize_];

  if ((v17 & 0x4000) == 0)
  {
    goto LABEL_111;
  }

LABEL_109:
  if ((v21[8] & 1) == 0)
  {
    v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    [v32 setChildItemCount_];
  }

LABEL_111:
  v71 = v21[v46[20]];
  [v32 setDownloaded_];
  [v32 setMostRecentVersionDownloaded_];
  v72 = v21[v46[16]];
  [v32 setIgnoreRoot_];
  v73 = v21[v46[17]];
  if (v73 != 2)
  {
    v72 |= v73;
  }

  [v32 setExcludedFromSync_];
  [v32 setUbiquitous_];
  v74 = &v21[v46[38]];
  if (*(v74 + 1))
  {
    v75 = *v74;
    v76 = sub_1CF9E6888();
  }

  else
  {
    v76 = 0;
  }

  [v32 setCollaborationIdentifier_];

  (*(v80 + 8))(v83, v81);
  return v32;
}

uint64_t sub_1CEFE65E8(uint64_t a1, char a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v5 = (a1 + *(type metadata accessor for ItemMetadata() + 56) + v4);
  v6 = v5[1];
  if (!v6)
  {
    v7 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!v6)
    {
      v7 = *(a1 + 8);
      v10 = *(a1 + 16);
    }

    goto LABEL_14;
  }

  v7 = *v5;
  v8 = v5[1];
  swift_bridgeObjectRetain_n();
  v9 = sub_1CF9E69D8();

  if (v9 < 1)
  {

    v7 = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v6)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
  }

  sub_1CEFE4E68();
  v7 = sub_1CF9E7668();
LABEL_14:

  v11 = sub_1CF9E69D8();

  if (v11 <= 0)
  {

    v7 = 0x6E776F6E6B6E7528;
  }

  return v7;
}

uint64_t sub_1CEFE6798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v116 = a2;
  v5 = sub_1CF9E5EE8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = (&v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CF9E5FF8();
  v9 = *(v8 - 8);
  v113 = v8;
  v114 = v9;
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v110 = &v97 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v97 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v97 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v109 = &v97 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v115 = &v97 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v97 - v31;
  v33 = type metadata accessor for ItemMetadata();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CF9E6118();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v97 - v43;
  v45 = *a1;
  v46 = a1[1];
  v47 = *v3;
  v48 = v3[*(v33 + 112)];
  if (*v3)
  {
    if (!v3[*(v33 + 112)])
    {
      if (v47 == 1)
      {

        return sub_1CF9E5F98();
      }

      else if (v47 == 2)
      {

        return sub_1CF9E5F18();
      }

      else
      {

        return sub_1CF9E5FC8();
      }
    }

    v102 = v42;
    v103 = v41;
    v104 = v40;
    if (v47 <= 2)
    {
      v49 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      sub_1CEFF4408(v3, v36);
      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E72B8();
      if (os_log_type_enabled(v50, v51))
      {
        LODWORD(v100) = v51;
        v52 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v117[0] = v99;
        v101 = v52;
        *v52 = 136315138;
        v53 = 6516580;
        v54 = 0xE700000000000000;
        v55 = 0x6B6E696C6D7973;
        if (*v36 != 2)
        {
          v55 = 0x7361696C61;
          v54 = 0xE500000000000000;
        }

        if (*v36)
        {
          v53 = 7498084;
        }

        v56 = *v36 <= 1u;
        if (*v36 <= 1u)
        {
          v57 = v53;
        }

        else
        {
          v57 = v55;
        }

        v98 = v57;
        if (v56)
        {
          v58 = 0xE300000000000000;
        }

        else
        {
          v58 = v54;
        }

        sub_1CF06DA00(v36);
        v59 = sub_1CEFD0DF0(v98, v58, v117);

        v60 = v101;
        *(v101 + 1) = v59;
        _os_log_impl(&dword_1CEFC7000, v50, v100, "Inconsistent kind %s for package", v60, 0xCu);
        v61 = v99;
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1D386CDC0](v61, -1, -1);
        MEMORY[0x1D386CDC0](v60, -1, -1);
      }

      else
      {

        sub_1CF06DA00(v36);
      }

      (*(v103 + 8))(v44, v104);
    }

    v48 = 1;
  }

  else
  {
    v102 = v42;
    v103 = v41;
    v104 = v40;
  }

  v63 = sub_1CF9E6888();
  v64 = [v63 pathExtension];

  v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v67 = v66;

  if (!v48)
  {
    v100 = v65;
    v101 = v67;
    v71 = v114;
    v72 = v114[7];
    v73 = v113;
    v72(v115, 1, 1, v113);
    v74 = &v3[*(v33 + 140)];
    if ((v74[8] & 1) == 0)
    {
      sub_1CF67B3C0(*v74);
      if (v75)
      {
        sub_1CF9E5ED8();
        sub_1CF9E5F68();
        v72(v26, 0, 1, v73);
        v76 = v109;
        sub_1CF9E5F58();
        v77 = v115;
        sub_1CEFCCC44(v115, &unk_1EC4C50C0, &unk_1CFA084A0);
        sub_1CF67A774(v76, v77);
        v78 = v107;
        sub_1CEFCCBDC(v77, v107, &unk_1EC4C50C0, &unk_1CFA084A0);
        if ((v71[6])(v78, 1, v73) == 1)
        {
          sub_1CEFCCC44(v78, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v79 = v106;
          (v71[4])(v106, v78, v73);
          if (sub_1CF9E5FE8())
          {
            v80 = fpfs_current_or_default_log();
            v81 = v102;
            sub_1CF9E6128();
            v82 = v105;
            (v71[2])(v105, v79, v73);
            v102 = v81;
            v83 = sub_1CF9E6108();
            v84 = sub_1CF9E7288();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v117[0] = v108;
              *v85 = 136315138;
              sub_1CF67B770(&qword_1EC4C11B8, MEMORY[0x1E69E8450]);
              v86 = sub_1CF9E7F98();
              v88 = v87;
              v89 = v114[1];
              v89(v82, v73);
              v90 = sub_1CEFD0DF0(v86, v88, v117);
              v71 = v114;

              *(v85 + 4) = v90;
              _os_log_impl(&dword_1CEFC7000, v83, v84, "Dynamic type %s was found for item - denying", v85, 0xCu);
              v91 = v108;
              __swift_destroy_boxed_opaque_existential_1(v108);
              MEMORY[0x1D386CDC0](v91, -1, -1);
              MEMORY[0x1D386CDC0](v85, -1, -1);

              (*(v103 + 8))(v102, v104);
              v89(v106, v73);
              v77 = v115;
            }

            else
            {

              v92 = v71[1];
              v92(v82, v73);
              (*(v103 + 8))(v102, v104);
              v92(v79, v73);
            }

            sub_1CEFCCC44(v77, &unk_1EC4C50C0, &unk_1CFA084A0);
            v72(v77, 1, 1, v73);
          }

          else
          {
            (v71[1])(v79, v73);
          }
        }
      }
    }

    v93 = v115;
    v94 = v110;
    sub_1CEFCCBDC(v115, v110, &unk_1EC4C50C0, &unk_1CFA084A0);
    v95 = v71[6];
    if (v95(v94, 1, v73) == 1)
    {
      sub_1CEFCCC44(v94, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF9E5F68();
      v96 = v109;
      sub_1CF9E5F28();
      sub_1CEFCCC44(v93, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF67A774(v96, v93);
    }

    else
    {

      sub_1CEFCCC44(v94, &unk_1EC4C50C0, &unk_1CFA084A0);
    }

    v32 = v111;
    sub_1CEFCCBDC(v93, v111, &unk_1EC4C50C0, &unk_1CFA084A0);
    if (v95(v32, 1, v73) != 1)
    {
      sub_1CEFCCC44(v93, &unk_1EC4C50C0, &unk_1CFA084A0);
      return (v71[4])(v116, v32, v73);
    }

    sub_1CF9E5F68();
    sub_1CEFCCC44(v93, &unk_1EC4C50C0, &unk_1CFA084A0);
    result = (v95)(v32, 1, v73);
    if (result == 1)
    {
      return result;
    }

    return sub_1CEFCCC44(v32, &unk_1EC4C50C0, &unk_1CFA084A0);
  }

  sub_1CF9E5FA8();
  sub_1CF9E5F28();
  v68 = v113;
  v69 = v114;
  v70 = v114[6];
  if (v70(v32, 1, v113) != 1)
  {
    return (v69[4])(v116, v32, v68);
  }

  sub_1CF9E5FA8();
  result = (v70)(v32, 1, v68);
  if (result != 1)
  {
    return sub_1CEFCCC44(v32, &unk_1EC4C50C0, &unk_1CFA084A0);
  }

  return result;
}

uint64_t sub_1CEFE7394(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1CF9E6B38();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1CEFE73DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      v7 = v6;
      result = sub_1CEFE863C();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CEFE74D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CEFE7548(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();

  v5 = sub_1CF9E6888();

  return v5;
}

uint64_t sub_1CEFE75C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t NSFileProviderItemIdentifier.encode(_:)(void *a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v7 = sub_1CF9E68C8();
  v9 = v8;

  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1CF9E5B48();
    sub_1CEFE48D8(v7, v9);
    v12 = [a1 bindObjectParameter_];

    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v13;
  }

  return result;
}

uint64_t sub_1CEFE7794(uint64_t a1)
{
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v4 = sub_1CF9E5688();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  v7 = [v1 dataAtIndex_];
  v8 = sub_1CF9E5B88();
  v10 = v9;

  sub_1CEFE78D8();
  sub_1CF9E5668();
  sub_1CEFE4714(v8, v10);

  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_1CEFE78D8()
{
  result = qword_1EDEAB9A8;
  if (!qword_1EDEAB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9A8);
  }

  return result;
}

uint64_t sub_1CEFE792C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2270, &qword_1CFA107B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEFE7B7C();
  sub_1CF9E8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v11 = 0;
  sub_1CEFE7C14(&qword_1EDEAB660);
  sub_1CF9E7D88();
  v9 = v12;
  v11 = 1;
  sub_1CF9E7D88();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1CEFE7B50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CEFE792C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1CEFE7B7C()
{
  result = qword_1EDEAB9C0[0];
  if (!qword_1EDEAB9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAB9C0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CEFE7C14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEFE7C8C()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 1937335659;
  }

  *v0;
  return result;
}

uint64_t storeEnumTagSinglePayload for CodableClassCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableClassCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1CEFE7E00(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 stringAtIndex_];
  if (!v5)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v5 = sub_1CF9E6888();
  }

  *a3 = v5;
}

uint64_t sub_1CEFE7E98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

void sub_1CEFE7F20(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

const char *sub_1CEFE7FA8(void *a1, void *a2, uint64_t a3)
{
  v66 = a1;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 1);
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 executionTime];
  v11 = v10;
  [a2 preparationTime];
  v13 = v12;
  v65 = [a2 stmt];
  result = sqlite3_sql(v65);
  if (!result)
  {
    goto LABEL_26;
  }

  v15 = v11 + v13;
  v16 = sub_1CF9E6A58();
  v18 = v17;
  v19 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v20 = *(a3 + v19);
  if (v20)
  {
    if (*(v20 + 16))
    {
      v21 = *(a3 + v19);

      v22 = sub_1CEFE4328(v16, v18);
      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v22);

        result = [v24 count];
        if (!__OFADD__(result, 1))
        {
          [v24 setCount_];
          [v24 cumulatedTime];
          [v24 setCumulatedTime_];
          [v24 minTime];
          if (v15 < v26)
          {
            [v24 setMinTime_];
          }

          [v24 maxTime];
          if (v27 < v15)
          {
            [v24 setMaxTime_];
          }

          [v24 cumulatedTime];
          v29 = v28;
          v30 = [v24 count];
          v31 = (v15 - v29 / v30) * (v15 - v29 / v30);
          [v24 cumulatedSquareDiffFromMean];
          [v24 setCumulatedSquareDiffFromMean_];
LABEL_15:

          goto LABEL_16;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }
    }

    v64 = v9;
    v33 = v6;
    v24 = [objc_allocWithZone(MEMORY[0x1E6967400]) initWithMinTime:1 maxTime:0 cumulatedTime:v11 + v13 cumulatedSquareDiffFromMean:v11 + v13 count:v11 + v13 queryPlan:0.0];
    v35 = sub_1CF32A48C();
    if (*v34)
    {
      v36 = v34;

      v24 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *v36;
      *v36 = 0x8000000000000000;
      sub_1CF1D25D4(v24, v16, v18, isUniquelyReferenced_nonNull_native);

      *v36 = v67;
    }

    (v35)(v68, 0);
    v6 = v33;
    v9 = v64;
    goto LABEL_15;
  }

LABEL_16:
  if (*(a3 + OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_maxQueryExecutionTime) / 1000.0 >= v15 * 1000.0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0)
  {
  }

  v64 = v6;
  v63 = [a2 returnedRows];
  v38 = v65;
  v62 = sqlite3_column_count(v65);
  v61 = sqlite3_bind_parameter_count(v38);
  v39 = sqlite3_stmt_status(v38, 4, 0);
  v66 = [v66 changes];
  v40 = sqlite3_stmt_status(v38, 1, 0);
  v41 = sqlite3_stmt_status(v38, 2, 0);
  v42 = sqlite3_stmt_status(v38, 3, 0);
  v43 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v44 = sub_1CF9E6108();
  v45 = v9;
  v46 = sub_1CF9E7298();

  if (os_log_type_enabled(v44, v46))
  {
    v59 = v41;
    v60 = v42;
    v58 = v40;
    v65 = v5;
    v47 = v39;
    v48 = v61;
    v49 = v62;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v68[0] = v51;
    *v50 = 136448514;
    v52 = sub_1CEFD0DF0(v16, v18, v68);
    v53 = v45;
    v54 = v52;

    *(v50 + 4) = v54;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v48;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v49;
    *(v50 + 32) = 2048;
    *(v50 + 34) = v63;
    *(v50 + 42) = 2048;
    *(v50 + 44) = v66;
    *(v50 + 52) = 2048;
    *(v50 + 54) = v47;
    *(v50 + 62) = 2048;
    *(v50 + 64) = v11;
    *(v50 + 72) = 2048;
    *(v50 + 74) = v13;
    *(v50 + 82) = 2048;
    *(v50 + 84) = v15;
    *(v50 + 92) = 2082;
    v55 = sub_1CF0457B0(v58, v59, v60);
    v57 = sub_1CEFD0DF0(v55, v56, v68);

    *(v50 + 94) = v57;
    _os_log_impl(&dword_1CEFC7000, v44, v46, "🐢 Possible slow statement on %{public}s:\n  binds:    %ld\n  columns:  %ld\n  rows:     %ld\n  changes:  %ld\n  vm steps: %ld\n  execution time: %fs preparation time: %fs total time: %fs\n  warning: %{public}s", v50, 0x66u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v50, -1, -1);

    return (*(v64 + 1))(v53, v65);
  }

  else
  {

    return (*(v64 + 1))(v45, v5);
  }
}

id sub_1CEFE8644(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CEFE8944(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D26A8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_1CEFE87B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v4 = sub_1CF9E8228();

  return sub_1CEFE8840(a1, v4);
}

unint64_t sub_1CEFE8840(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v9 = v8;
      if (v7 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1CF9E8048();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1CEFE8944(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
  v37 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {

        v24 = v22;
      }

      v25 = *(v8 + 40);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v26 = sub_1CF9E8228();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CEFE8C10(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_52:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v41 = sub_1CF9E82E8();
  v43 = v3;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v4 = off_1EDEAE210;
  if (!*(off_1EDEAE210 + 2))
  {

    goto LABEL_8;
  }

  v5 = sub_1CEFE4328(v41, v43);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    v11 = sub_1CEFE9C6C();
    v12 = *(v11 + 16);
    if (!v12)
    {
LABEL_49:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
      v9 = sub_1CF9E67D8();
      v32 = v31;

      v42 = sub_1CF9E82E8();
      v44 = v33;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](a1, a2);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = off_1EDEAE210;
      off_1EDEAE210 = 0x8000000000000000;
      sub_1CF1D19D0(v9, v32, v42, v44, isUniquelyReferenced_nonNull_native);

      off_1EDEAE210 = v38;
      swift_endAccess();
      swift_beginAccess();
      goto LABEL_50;
    }

    v40 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v12, 0);
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v14 = *(v11 + v13 + 32);
      v15 = (v14 >> 4) & 3;
      if (v15 > 1)
      {
        if (v15 != 2)
        {

          v22 = 0xD000000000000015;
          if (v14 != 53)
          {
            v22 = 0xD000000000000013;
          }

          v23 = 0x80000001CFA36880;
          if (v14 == 53)
          {
            v23 = 0x80000001CFA368A0;
          }

          v24 = 0xEB0000000065676ELL;
          v25 = 0xD000000000000020;
          if (v14 == 51)
          {
            v25 = 0x6168635F7473616CLL;
          }

          else
          {
            v24 = 0x80000001CFA368C0;
          }

          if (v14 <= 52)
          {
            v22 = v25;
            v23 = v24;
          }

          v26 = 0x6E6964696C6C6F63;
          if (v14 != 49)
          {
            v26 = 0x5F73695F6D657469;
          }

          v27 = 0xEC00000064695F67;
          if (v14 != 49)
          {
            v27 = 0xEF64656B636F6C66;
          }

          if (v14 == 48)
          {
            v26 = 1684957547;
            v27 = 0xE400000000000000;
          }

          if (v14 <= 50)
          {
            v20 = v26;
          }

          else
          {
            v20 = v22;
          }

          if (v14 <= 50)
          {
            v21 = v27;
          }

          else
          {
            v21 = v23;
          }

          goto LABEL_46;
        }

        v37 = 0x696C756465686373;
        v39 = 0xEB000000005F676ELL;
        if (v14)
        {
          v17 = 0x6D617473656D6974;
        }

        else
        {
          v17 = 0x797469726F697270;
        }

        if (v14)
        {
          v18 = 0xE900000000000070;
        }

        else
        {
          v18 = 0xE800000000000000;
        }

        MEMORY[0x1D3868CC0](v17, v18);
      }

      else
      {
        if (v15)
        {
          v37 = 6254694;
          v39 = 0xE300000000000000;

          v16 = v14 & 0xCF;
        }

        else
        {
          v37 = 6255462;
          v39 = 0xE300000000000000;

          v16 = v14;
        }

        v19 = sub_1CF3575E8(v16);
        MEMORY[0x1D3868CC0](v19);
      }

      v20 = v37;
      v21 = v39;
LABEL_46:
      MEMORY[0x1D3868CC0](v20, v21);

      v29 = *(v40 + 16);
      v28 = *(v40 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1CEFE95CC((v28 > 1), v29 + 1, 1);
      }

      ++v13;
      *(v40 + 16) = v29 + 1;
      v30 = v40 + 16 * v29;
      *(v30 + 32) = a1;
      *(v30 + 40) = a2;
      if (v12 == v13)
      {
        goto LABEL_49;
      }
    }
  }

  v8 = (v4[7] + 16 * v5);
  v9 = *v8;
  v10 = v8[1];
  swift_endAccess();
  swift_beginAccess();

LABEL_50:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v9;
}

uint64_t sub_1CEFE91F8(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v3 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v4 = sub_1CEFE4328(0xD00000000000001ALL, 0x80000001CFA36860);
      v6 = v5;

      if (v6)
      {
        v7 = (v3[7] + 16 * v4);
        v8 = *v7;
        v9 = v7[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_15;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = sub_1CEFF12E8();
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v24 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    while (v12 < v10[2])
    {
      v13 = sub_1CEFF1E08(*(v10 + v12 + 32));
      v15 = v14;

      MEMORY[0x1D3868CC0](v13, v15);

      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CEFE95CC((v16 > 1), v17 + 1, 1);
      }

      ++v12;
      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_14:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v8 = sub_1CF9E67D8();
  v20 = v19;

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v8, v20, 0xD00000000000001ALL, 0x80000001CFA36860, isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v25;
  swift_endAccess();
  swift_beginAccess();
LABEL_15:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

char *sub_1CEFE95CC(char *a1, int64_t a2, char a3)
{
  result = sub_1CEFE95EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CEFE95EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CEFE96F8(unint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) == 0)
  {
    v10 = a2;
    v26 = a3;
    v27 = a4;

    a4 = &v26;
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
    if (a2)
    {
      if (a2 == 1)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        a1 = (a1 != 0) << 63;
      }
    }

    else
    {
      a1 = -a1;
    }

    v24 = [a5 bindLongParameter_];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v25;

    goto LABEL_11;
  }

LABEL_6:
  v26 = a3;
  v27 = a4;

  MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v15 = sub_1CF9E68C8();
  v17 = v16;

  result = (*(v11 + 8))(v14, v10);
  if (v17 >> 60 != 15)
  {
    v19 = sub_1CF9E5B48();
    sub_1CEFE48D8(v15, v17);
    v20 = [a5 bindObjectParameter_];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

LABEL_11:
    MEMORY[0x1D3868CC0](v21, v23);

    return v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CEFE9968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B60, &qword_1CFA170F0);
    v3 = sub_1CF9E7BE8();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, 0x388uLL);
      v6 = __dst[0];
      v7 = LOBYTE(__dst[1]);
      v8 = BYTE1(__dst[1]);
      sub_1CEFCCBDC(__dst, v15, &qword_1EC4C0B68, &unk_1CFA07A00);
      result = sub_1CEFF4768(v6, v7 | (v8 << 8));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 9) = v8;
      result = memcpy((v3[7] + 888 * result), &__dst[2], 0x378uLL);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 904;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CEFE9AC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 0x8000000000000000)
    {
      LOBYTE(v12) = 2;
      a1 = 1;
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      a1 = -a1;
      v12 = HIDWORD(a1);
      if (HIDWORD(a1))
      {
        v13 = result;
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v7 + 8))(v11, v13);
        return swift_willThrow();
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 2;
  }

  *a2 = a1;
  *(a2 + 8) = v12;
  return result;
}

uint64_t sub_1CEFE9C6C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v3 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {

    goto LABEL_9;
  }

  v4 = sub_1CEFE4328(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v7 = sub_1CF1CD93C();
    v8 = sub_1CF9E82E8();
    v10 = v9;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
    *&v14 = v7;
    swift_beginAccess();

    sub_1CF1C8750(&v14, v8, v10);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v3[7] + 32 * v4, &v14);
  swift_endAccess();
  sub_1CEFE9EB8(&v14, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  swift_dynamicCast();
  v7 = v12;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v7;
}

_OWORD *sub_1CEFE9EB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CEFE9EC8@<X0>(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CEFEA134();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      sub_1CEFEC2AC(v8, a4);
    }

    if (__OFADD__(a3, v9))
    {
      break;
    }

    v12 = *(v11 + v9);
    sub_1CEFEA188(*(v11 + v9), a1, (a3 + v9), &v30);
    if (v4)
    {
    }

    if (v31)
    {
      sub_1CEFE9EB8(&v30, v32);
      sub_1CEFD1104(v32, &v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v8;
      v15 = sub_1CEFEAD20(v12);
      v16 = v8[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (v8[3] >= v18)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v33;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1CF7CF9F4();
          v8 = v33;
          if (v19)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1CF7C4798(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_1CEFEAD20(v12);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_25;
        }

        v15 = v20;
        v8 = v33;
        if (v19)
        {
LABEL_15:
          v22 = (v8[7] + 32 * v15);
          __swift_destroy_boxed_opaque_existential_1(v22);
          sub_1CEFE9EB8(&v30, v22);
          __swift_destroy_boxed_opaque_existential_1(v32);
          goto LABEL_3;
        }
      }

      v8[(v15 >> 6) + 8] |= 1 << v15;
      *(v8[6] + v15) = v12;
      sub_1CEFE9EB8(&v30, (v8[7] + 32 * v15));
      __swift_destroy_boxed_opaque_existential_1(v32);
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      v8[2] = v25;
    }

    else
    {
      sub_1CEFCCC44(&v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

LABEL_3:
    if (++v9 == 0x80000000)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t sub_1CEFEA134()
{
  result = qword_1EDEAC2C0[0];
  if (!qword_1EDEAC2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAC2C0);
  }

  return result;
}

void sub_1CEFEA188(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E79E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 >> 4) & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      sub_1CEFEBB94(a2, a1 & 0xCF, a3, a4);
    }

    else
    {
      sub_1CEFEA6F0(a2, a1, a3, a4);
    }

    return;
  }

  if (v15 == 2)
  {
    if (a1)
    {
      *(a4 + 24) = &type metadata for NSecTimestamp;
      v16 = [a2 longAtIndex_];
    }

    else
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      v16 = [a2 unsignedLongAtIndex_];
    }

    *a4 = v16;
    return;
  }

  if (a1 > 0x32u)
  {
    if (a1 <= 0x34u)
    {
      if (a1 != 51)
      {
        v17 = [a2 BOOLAtIndex_];
        *(a4 + 24) = MEMORY[0x1E69E6370];
        *a4 = v17;
        return;
      }

      goto LABEL_21;
    }

    if (a1 != 53)
    {
LABEL_21:
      v21 = [a2 longAtIndex_];
      v22 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v21 = [a2 longAtIndex_];
      v22 = &type metadata for PolicyContentStatus;
LABEL_22:
      *(a4 + 24) = v22;
      *a4 = v21;
      return;
    }

LABEL_36:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 == 48)
  {
    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      sub_1CEFEC210(a3, &v37);
      if (v4)
      {
        return;
      }

      v23 = v37;
      if (v37 != 4)
      {
        *(a4 + 24) = &type metadata for FileItemKind;
        *a4 = v23;
        return;
      }
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 != 49)
  {
    if ([a2 isNullAtIndex_])
    {
      *(a4 + 24) = &type metadata for SyncPausedStatus;
      *a4 = 0;
      return;
    }

    if (![a2 isNullAtIndex_])
    {
      v21 = [a2 longAtIndex_];
      v22 = &type metadata for SyncPausedStatus;
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  v18 = v12;
  v19 = [a2 isNullAtIndex_];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
  *(a4 + 24) = v20;
  if (v19)
  {
    *a4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = v20;
    v24 = sub_1CF1E071C(a3);
    if (v4)
    {
      __swift_deallocate_boxed_opaque_existential_0(a4);
      v38 = v4;
      v25 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1CF9FA450;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
        if ([a2 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCastMetatype())
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 262);
        }

        v26 = sub_1CF9E5688();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v29 = [a2 dataAtIndex_];
        v30 = sub_1CF9E5B88();
        v32 = v31;

        sub_1CEFCCCEC(&qword_1EC4BE528, &unk_1EC4BFC10, &qword_1CF9FE510);
        v33 = v35;
        sub_1CF9E5668();
        sub_1CEFE4714(v30, v32);

        *(a4 + 24) = v36;
        *a4 = v33;
        (*(v10 + 8))(v14, v18);
      }

      else
      {
      }
    }

    else
    {
      *a4 = v24;
    }
  }
}

void sub_1CEFEA6F0(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      v8 = a3;
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      if (a2 <= 2u)
      {
        v9 = v8;
        if (a2)
        {
          if (a2 == 1)
          {
            if ([a1 isNullAtIndex_])
            {
              goto LABEL_73;
            }

LABEL_50:
            v29 = [a1 unsignedIntAtIndex_];
            *(a4 + 24) = MEMORY[0x1E69E7668];
            *a4 = v29;
            return;
          }

          if (([a1 isNullAtIndex_] & 1) == 0)
          {
            v45 = [a1 dataAtIndex_];
            v12 = sub_1CF9E5B88();
            v14 = v46;

            v15 = MEMORY[0x1E6969080];
            goto LABEL_71;
          }

          goto LABEL_73;
        }

        goto LABEL_67;
      }

      if (a2 != 3 && a2 != 4)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_73;
        }

        v18 = [a1 unsignedIntegerAtIndex_];
        v19 = MEMORY[0x1E69E6810];
        goto LABEL_76;
      }

      goto LABEL_42;
    }

    if ((a2 & 0x3F) == 0)
    {
      v18 = [a1 longAtIndex_];
      v19 = MEMORY[0x1E69E6530];
LABEL_76:
      *(a4 + 24) = v19;
      goto LABEL_77;
    }

    if ((a2 & 0x3F) == 1)
    {
      v16 = &type metadata for JobWaitCondition;
LABEL_45:
      *(a4 + 24) = v16;
      v18 = [a1 longAtIndex_];
LABEL_77:
      *a4 = v18;
      return;
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    v21 = sub_1CF1DFFC4(a3);
    if (v4)
    {
      return;
    }

    v22 = v21;
    v23 = type metadata accessor for Continuation();
LABEL_57:
    *(a4 + 24) = v23;
    *a4 = v22;
    return;
  }

  if (a2 >> 6 != 3)
  {
    if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 != 134)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_73;
          }

          v18 = [a1 longLongAtIndex_];
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          __break(1u);
LABEL_67:
          v18 = [a1 unsignedLongLongAtIndex_];
LABEL_68:
          v19 = MEMORY[0x1E69E76D8];
          goto LABEL_76;
        }

        v27 = [a1 BOOLAtIndex_];
        v28 = MEMORY[0x1E69E6370];
      }

      else
      {
        if (a2 == 132)
        {
          *(a4 + 24) = &type metadata for ContentStatus;
          v17 = sub_1CEFEBAE8(a3);
          if (v4)
          {
            __swift_deallocate_boxed_opaque_existential_0(a4);
          }

          else
          {
            *a4 = v17;
          }

          return;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_73;
        }

        v27 = sub_1CF1E0758(a3);
        if (v4)
        {
          return;
        }

        v28 = &type metadata for DiskImportStatus;
      }
    }

    else
    {
      if (a2 <= 0x81u)
      {
        if (a2 != 128)
        {
          v16 = &type metadata for DeletionStatus;
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (a2 == 130)
      {
        v16 = &type metadata for Fields;
        goto LABEL_45;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      v27 = sub_1CEFEBAE8(a3);
      if (v4)
      {
        return;
      }

      v28 = &type metadata for MaterializationStatus;
    }

    *(a4 + 24) = v28;
    *a4 = v27;
    return;
  }

  if (a2 <= 0xC2u)
  {
    if (a2 == 192)
    {
      v8 = a3;
      if (([a1 isNullAtIndex_] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    }

    if (a2 == 193)
    {
      v8 = a3;
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

LABEL_42:
      v18 = [a1 longLongAtIndex_];
      v19 = MEMORY[0x1E69E7360];
      goto LABEL_76;
    }

LABEL_37:
    v24 = a3;
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    sub_1CEFE9AC4([a1 longAtIndex_], &v49);
    if (!v4)
    {
      v25 = v49;
      v26 = v50;
      *(a4 + 24) = &type metadata for VFSItemID;
      *a4 = v25;
      *(a4 + 8) = v26;
    }

    return;
  }

  if (a2 > 0xC4u)
  {
    if (a2 != 197)
    {
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      v41 = [a1 integerAtIndex_];
      if (!v41)
      {
        goto LABEL_73;
      }

      v22 = [objc_opt_self() domainVersionWithVersion_];
      v23 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_57;
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    LODWORD(v48) = 0;
    v47 = 69;
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_37;
  }

  if (a2 == 195)
  {
    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v11 = [a1 stringAtIndex_];
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;

      v15 = &type metadata for Filename;
LABEL_71:
      *(a4 + 24) = v15;
      *a4 = v12;
      *(a4 + 8) = v14;
      return;
    }

LABEL_73:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if ([a1 isNullAtIndex_])
  {
    goto LABEL_73;
  }

  v31 = sub_1CF1DFE74(a3);
  if (!v4)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    *(a4 + 24) = &type metadata for VFSVersion;
    v39 = swift_allocObject();
    *a4 = v39;
    *(v39 + 16) = v35;
    *(v39 + 24) = v36;
    *(v39 + 32) = v37;
    *(v39 + 40) = v38 & 1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1CEFEAD4C(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1CF9E81D8();
  a2(v10, a1);
  v7 = sub_1CF9E8228();

  return a3(a1, v7);
}

uint64_t sub_1CEFEADCC(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = (a2 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D386A470](4);
      sub_1CF9E69C8();
    }

    else
    {
      if (a2 <= 0x32u)
      {
        if (a2 == 48)
        {
          v8 = 2;
        }

        else if (a2 == 49)
        {
          v8 = 3;
        }

        else
        {
          v8 = 5;
        }
      }

      else if (a2 > 0x34u)
      {
        if (a2 == 53)
        {
          v8 = 8;
        }

        else
        {
          v8 = 9;
        }
      }

      else if (a2 == 51)
      {
        v8 = 6;
      }

      else
      {
        v8 = 7;
      }

      return MEMORY[0x1D386A470](v8);
    }
  }

  else
  {
    if (v4)
    {
      MEMORY[0x1D386A470](1);
      v6 = v2 & 0xCF;
      v5 = a1;
    }

    else
    {
      MEMORY[0x1D386A470](0);
      v5 = a1;
      v6 = v2;
    }

    return sub_1CEFEAF20(v5, v6);
  }
}

uint64_t sub_1CEFEAF20(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 3)
    {
      if (a2 <= 0xC2u)
      {
        if (a2 == 192)
        {
          v2 = 10;
        }

        else if (a2 == 193)
        {
          v2 = 11;
        }

        else
        {
          v2 = 12;
        }
      }

      else if (a2 > 0xC4u)
      {
        if (a2 == 197)
        {
          v2 = 15;
        }

        else
        {
          v2 = 16;
        }
      }

      else if (a2 == 195)
      {
        v2 = 13;
      }

      else
      {
        v2 = 14;
      }
    }

    else if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 == 134)
        {
          v2 = 6;
        }

        else
        {
          v2 = 9;
        }
      }

      else if (a2 == 132)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }
    }

    else if (a2 > 0x81u)
    {
      if (a2 == 130)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = a2 != 128;
    }

    return MEMORY[0x1D386A470](v2);
  }

  else
  {
    if (a2 >> 6)
    {
      MEMORY[0x1D386A470](8);
    }

    else
    {
      MEMORY[0x1D386A470](7);
    }

    sub_1CF9E69C8();
  }
}

unint64_t sub_1CEFEB194(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = 0x797469726F697270;
    v8 = a1 & 0x30;
    if (a1)
    {
      v7 = 0x6D617473656D6974;
    }

    v61 = v7;
    if (a1)
    {
      v9 = 0xE900000000000070;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    v10 = a1 & 0xCF;
    v59 = a1 & 0xCF;
    v11 = v10 == 198 && a1 > 0xBFu;
    v12 = v10 == 197 && a1 > 0xBFu;
    v56 = v12;
    v57 = v11;
    v13 = v10 == 196 && a1 > 0xBFu;
    v14 = v10 == 195 && a1 > 0xBFu;
    v54 = v14;
    v55 = v13;
    v15 = v10 == 194 && a1 > 0xBFu;
    v16 = v10 == 193 && a1 > 0xBFu;
    v52 = v16;
    v53 = v15;
    v17 = v10 == 192 && a1 > 0xBFu;
    v51 = v17;
    v60 = a1 & 0xC0;
    v58 = a1 & 0xF;
    while (1)
    {
      v18 = *(*(v2 + 48) + v4);
      v19 = (v18 >> 4) & 3;
      if (v19 <= 1)
      {
        break;
      }

      if (v19 == 2)
      {
        if (v8 == 32)
        {
          if (v18)
          {
            v25 = 0x6D617473656D6974;
          }

          else
          {
            v25 = 0x797469726F697270;
          }

          if (v18)
          {
            v26 = 0xE900000000000070;
          }

          else
          {
            v26 = 0xE800000000000000;
          }

          if (v25 == v61 && v26 == v9)
          {
LABEL_240:

            return v4;
          }

          v28 = sub_1CF9E8048();

          if (v28)
          {
            return v4;
          }
        }
      }

      else if (*(*(v2 + 48) + v4) <= 0x32u)
      {
        if (v18 == 48)
        {
          if (a1 == 48)
          {
            return v4;
          }
        }

        else if (v18 == 49)
        {
          if (a1 == 49)
          {
            return v4;
          }
        }

        else if (a1 == 50)
        {
          return v4;
        }
      }

      else if (*(*(v2 + 48) + v4) > 0x34u)
      {
        if (v18 == 53)
        {
          if (a1 == 53)
          {
            return v4;
          }
        }

        else if (a1 == 54)
        {
          return v4;
        }
      }

      else if (v18 == 51)
      {
        if (a1 == 51)
        {
          return v4;
        }
      }

      else if (a1 == 52)
      {
        return v4;
      }

LABEL_30:
      v4 = (v4 + 1) & v6;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (v19)
    {
      if (v8 != 16)
      {
        goto LABEL_30;
      }

      v20 = v18 & 0xFFFFFFCF;
      v21 = v18 >> 6;
      if (v18 >> 6 > 1)
      {
        if (v21 != 2)
        {
          v36 = v18 & 0xCF;
          if (v20 <= 0xC2u)
          {
            if (v36 == 192)
            {
              if (v51)
              {
                return v4;
              }
            }

            else if (v36 == 193)
            {
              if (v52)
              {
                return v4;
              }
            }

            else if (v53)
            {
              return v4;
            }
          }

          else if (v20 > 0xC4u)
          {
            if (v36 == 197)
            {
              if (v56)
              {
                return v4;
              }
            }

            else if (v57)
            {
              return v4;
            }
          }

          else if (v36 == 195)
          {
            if (v54)
            {
              return v4;
            }
          }

          else if (v55)
          {
            return v4;
          }

          goto LABEL_30;
        }

        if (v20 <= 131)
        {
          if (v20 <= 129)
          {
            if (v20 == 128)
            {
              v30 = v59;
              goto LABEL_119;
            }

            v40 = v59;
LABEL_184:
            if (v40 == 129)
            {
              return v4;
            }

            goto LABEL_30;
          }

          if (v20 == 130)
          {
            v38 = v59;
            goto LABEL_157;
          }

          v42 = v59;
LABEL_190:
          if (v42 == 131)
          {
            return v4;
          }

          goto LABEL_30;
        }

        if (v20 <= 133)
        {
          if (v20 == 132)
          {
            v37 = v59;
            goto LABEL_131;
          }

          v41 = v59;
LABEL_187:
          if (v41 == 133)
          {
            return v4;
          }

          goto LABEL_30;
        }

        if (v20 == 134)
        {
          v39 = v59;
          goto LABEL_161;
        }

        v43 = v59;
LABEL_193:
        if (v43 == 135)
        {
          return v4;
        }

        goto LABEL_30;
      }

      if (!v21)
      {
        if (a1 >= 0x40u)
        {
          goto LABEL_30;
        }

        v22 = v18 & 0xCF;
        if (v20 > 2u)
        {
          if (v22 == 3)
          {
            v24 = 0xE800000000000000;
            v23 = 0x6E6F697461636F6CLL;
          }

          else if (v22 == 4)
          {
            v24 = 0xE600000000000000;
            v23 = 0x6874676E656CLL;
          }

          else
          {
            v24 = 0xE500000000000000;
            v23 = 0x7367616C66;
          }
        }

        else if (v22)
        {
          if (v22 == 1)
          {
            v23 = 0x6E756F635F6E6567;
            v24 = 0xE900000000000074;
          }

          else
          {
            v23 = 0x6E6F635F74736574;
            v24 = 0xEC000000746E6574;
          }
        }

        else
        {
          v24 = 0xE700000000000000;
          v23 = 0x64695F656C6966;
        }

        v44 = v59;
        if (v59 > 2u)
        {
          if (v59 == 3)
          {
            v35 = 0xE800000000000000;
            if (v23 == 0x6E6F697461636F6CLL)
            {
              goto LABEL_236;
            }
          }

          else
          {
            if (v59 == 4)
            {
              v45 = 0x6874676E656CLL;
            }

            else
            {
              v45 = 0x7367616C66;
            }

            if (v59 == 4)
            {
              v35 = 0xE600000000000000;
            }

            else
            {
              v35 = 0xE500000000000000;
            }

            if (v23 == v45)
            {
              goto LABEL_236;
            }
          }

          goto LABEL_237;
        }

        if (v59)
        {
          goto LABEL_201;
        }

        goto LABEL_223;
      }

      if (v60 != 64)
      {
        goto LABEL_30;
      }

      v31 = v18 & 0xF;
      if (v31)
      {
LABEL_95:
        if (v31 == 1)
        {
          v32 = 0xD000000000000010;
          v24 = 0x80000001CFA2C3F0;
          v33 = v58;
          if (v58)
          {
            goto LABEL_97;
          }

LABEL_113:
          v35 = 0xE500000000000000;
          if (v32 != 0x6574617473)
          {
            goto LABEL_237;
          }

          goto LABEL_236;
        }

        v32 = 0xD000000000000012;
        v24 = 0x80000001CFA2C410;
        v33 = v58;
        if (!v58)
        {
          goto LABEL_113;
        }

LABEL_97:
        if (v33 == 1)
        {
          v34 = 0xD000000000000010;
        }

        else
        {
          v34 = 0xD000000000000012;
        }

        if (v33 == 1)
        {
          v35 = 0x80000001CFA2C3F0;
        }

        else
        {
          v35 = 0x80000001CFA2C410;
        }

        if (v32 == v34)
        {
          goto LABEL_236;
        }

        goto LABEL_237;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_30;
      }

      v29 = v18 >> 6;
      if (v18 >> 6 > 1)
      {
        if (v29 == 3)
        {
          if (*(*(v2 + 48) + v4) <= 0xC2u)
          {
            if (v18 == 192)
            {
              if (a1 == 192)
              {
                return v4;
              }
            }

            else if (v18 == 193)
            {
              if (a1 == 193)
              {
                return v4;
              }
            }

            else if (a1 == 194)
            {
              return v4;
            }
          }

          else if (*(*(v2 + 48) + v4) > 0xC4u)
          {
            if (v18 == 197)
            {
              if (a1 == 197)
              {
                return v4;
              }
            }

            else if (a1 == 198)
            {
              return v4;
            }
          }

          else if (v18 == 195)
          {
            if (a1 == 195)
            {
              return v4;
            }
          }

          else if (a1 == 196)
          {
            return v4;
          }

          goto LABEL_30;
        }

        if (*(*(v2 + 48) + v4) <= 0x83u)
        {
          if (*(*(v2 + 48) + v4) <= 0x81u)
          {
            if (v18 == 128)
            {
              v30 = a1;
LABEL_119:
              if (v30 == 128)
              {
                return v4;
              }

              goto LABEL_30;
            }

            v40 = a1;
            goto LABEL_184;
          }

          if (v18 == 130)
          {
            v38 = a1;
LABEL_157:
            if (v38 == 130)
            {
              return v4;
            }

            goto LABEL_30;
          }

          v42 = a1;
          goto LABEL_190;
        }

        if (*(*(v2 + 48) + v4) <= 0x85u)
        {
          if (v18 == 132)
          {
            v37 = a1;
LABEL_131:
            if (v37 == 132)
            {
              return v4;
            }

            goto LABEL_30;
          }

          v41 = a1;
          goto LABEL_187;
        }

        if (v18 == 134)
        {
          v39 = a1;
LABEL_161:
          if (v39 == 134)
          {
            return v4;
          }

          goto LABEL_30;
        }

        v43 = a1;
        goto LABEL_193;
      }

      if (!v29)
      {
        if (a1 >= 0x40u)
        {
          goto LABEL_30;
        }

        if (*(*(v2 + 48) + v4) > 2u)
        {
          if (v18 == 3)
          {
            v24 = 0xE800000000000000;
            v23 = 0x6E6F697461636F6CLL;
          }

          else if (v18 == 4)
          {
            v24 = 0xE600000000000000;
            v23 = 0x6874676E656CLL;
          }

          else
          {
            v24 = 0xE500000000000000;
            v23 = 0x7367616C66;
          }
        }

        else if (*(*(v2 + 48) + v4))
        {
          if (v18 == 1)
          {
            v23 = 0x6E756F635F6E6567;
            v24 = 0xE900000000000074;
          }

          else
          {
            v23 = 0x6E6F635F74736574;
            v24 = 0xEC000000746E6574;
          }
        }

        else
        {
          v24 = 0xE700000000000000;
          v23 = 0x64695F656C6966;
        }

        v44 = a1;
        if (a1 > 2u)
        {
          v46 = 0x6874676E656CLL;
          if (a1 != 4)
          {
            v46 = 0x7367616C66;
          }

          v47 = 0xE600000000000000;
          if (a1 != 4)
          {
            v47 = 0xE500000000000000;
          }

          if (a1 == 3)
          {
            v48 = 0x6E6F697461636F6CLL;
          }

          else
          {
            v48 = v46;
          }

          if (a1 == 3)
          {
            v35 = 0xE800000000000000;
          }

          else
          {
            v35 = v47;
          }

          if (v23 == v48)
          {
            goto LABEL_236;
          }

          goto LABEL_237;
        }

        if (a1)
        {
LABEL_201:
          if (v44 == 1)
          {
            v35 = 0xE900000000000074;
            if (v23 != 0x6E756F635F6E6567)
            {
              goto LABEL_237;
            }

LABEL_236:
            if (v24 == v35)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          v35 = 0xEC000000746E6574;
          if (v23 == 0x6E6F635F74736574)
          {
            goto LABEL_236;
          }

LABEL_237:
          v49 = sub_1CF9E8048();

          if (v49)
          {
            return v4;
          }

          goto LABEL_30;
        }

LABEL_223:
        v35 = 0xE700000000000000;
        if (v23 == 0x64695F656C6966)
        {
          goto LABEL_236;
        }

        goto LABEL_237;
      }

      if (v60 != 64)
      {
        goto LABEL_30;
      }

      v31 = v18 & 0x3F;
      if (v31)
      {
        goto LABEL_95;
      }
    }

    v24 = 0xE500000000000000;
    v32 = 0x6574617473;
    v33 = v58;
    if (!v58)
    {
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  return v4;
}

unint64_t sub_1CEFEBB18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id sub_1CEFEBB28(uint64_t a1)
{
  result = [v1 longAtIndex_];
  if (result > 4)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1CEFEBB94(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 3)
    {
      if (a2 > 0xC2u)
      {
        if (a2 <= 0xC4u)
        {
          if (a2 == 195)
          {
            if ([a1 isNullAtIndex_])
            {
              goto LABEL_72;
            }

            v9 = [a1 stringAtIndex_];
            v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v12 = v11;

            v13 = &type metadata for Filename;
LABEL_70:
            *(a4 + 24) = v13;
            *a4 = v10;
            *(a4 + 8) = v12;
            return;
          }

          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

LABEL_51:
          v24 = [a1 dataAtIndex_];
          v10 = sub_1CF9E5B88();
          v12 = v25;

          v13 = &type metadata for FPItemVersionData;
          goto LABEL_70;
        }

        if (a2 == 197)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

          goto LABEL_51;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

        v26 = [a1 integerAtIndex_];
        if (!v26)
        {
          goto LABEL_72;
        }

        v20 = [objc_opt_self() domainVersionWithVersion_];
        v21 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
LABEL_76:
        *(a4 + 24) = v21;
        *a4 = v20;
        return;
      }

      if (a2 == 192)
      {
        goto LABEL_46;
      }

      if (a2 == 193)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

LABEL_39:
        v17 = [a1 longLongAtIndex_];
        v18 = MEMORY[0x1E69E7360];
        goto LABEL_78;
      }

      v15 = a1;
      if ([v15 isNullAtIndex_])
      {
LABEL_49:

        goto LABEL_72;
      }

LABEL_73:
      v20 = [v15 stringAtIndex_];
      if (!v20)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = sub_1CF9E6888();
      }

      type metadata accessor for NSFileProviderItemIdentifier(0);
      goto LABEL_76;
    }

    if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 != 134)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

          v17 = [a1 longLongAtIndex_];
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
LABEL_66:
          v17 = [a1 unsignedLongLongAtIndex_];
LABEL_67:
          v18 = MEMORY[0x1E69E76D8];
          goto LABEL_78;
        }

        v16 = [a1 BOOLAtIndex_];
        v22 = MEMORY[0x1E69E6370];
      }

      else
      {
        if (a2 == 132)
        {
          *(a4 + 24) = &type metadata for ContentStatus;
          v16 = sub_1CEFEBAE8(a3);
          if (v4)
          {
            __swift_deallocate_boxed_opaque_existential_0(a4);
            return;
          }

          goto LABEL_45;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

        v16 = sub_1CF1E0758(a3);
        if (v4)
        {
          return;
        }

        v22 = &type metadata for DiskImportStatus;
      }
    }

    else
    {
      if (a2 <= 0x81u)
      {
        if (a2 != 128)
        {
          v14 = &type metadata for DeletionStatus;
          goto LABEL_56;
        }

        v15 = a1;
        if ([v15 isNullAtIndex_])
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }

      if (a2 == 130)
      {
        v14 = &type metadata for Fields;
        goto LABEL_56;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_72;
      }

      v16 = sub_1CEFEBAE8(a3);
      if (v4)
      {
        return;
      }

      v22 = &type metadata for MaterializationStatus;
    }

    *(a4 + 24) = v22;
LABEL_45:
    *a4 = v16;
    return;
  }

  if (!(a2 >> 6))
  {
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_72;
    }

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
LABEL_46:
          if (([a1 isNullAtIndex_] & 1) == 0)
          {
            v23 = [a1 unsignedIntAtIndex_];
            *(a4 + 24) = MEMORY[0x1E69E7668];
            *a4 = v23;
            return;
          }

          goto LABEL_72;
        }

        if (([a1 isNullAtIndex_] & 1) == 0)
        {
          v27 = [a1 dataAtIndex_];
          v10 = sub_1CF9E5B88();
          v12 = v28;

          v13 = MEMORY[0x1E6969080];
          goto LABEL_70;
        }

LABEL_72:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return;
      }

      goto LABEL_66;
    }

    if (a2 != 3 && a2 != 4)
    {
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_72;
      }

      v17 = [a1 unsignedIntegerAtIndex_];
      v18 = MEMORY[0x1E69E6810];
      goto LABEL_78;
    }

    goto LABEL_39;
  }

  if ((a2 & 0x3F) == 0)
  {
    v17 = [a1 longAtIndex_];
    v18 = MEMORY[0x1E69E6530];
LABEL_78:
    *(a4 + 24) = v18;
    goto LABEL_79;
  }

  if ((a2 & 0x3F) != 1)
  {
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_72;
    }

    v19 = sub_1CF1DFFC4(a3);
    if (v4)
    {
      return;
    }

    v20 = v19;
    v21 = type metadata accessor for Continuation();
    goto LABEL_76;
  }

  v14 = &type metadata for JobWaitCondition;
LABEL_56:
  *(a4 + 24) = v14;
  v17 = [a1 longAtIndex_];
LABEL_79:
  *a4 = v17;
}

void sub_1CEFEC1A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1CEFEC210@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = [v3 longAtIndex_];
  if (result < 5 && ((0x17u >> result) & 1) != 0)
  {
    *a2 = 0x300020100uLL >> (8 * result);
  }

  else
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1CEFEC2AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CEFEC988(a1, sub_1CEFED334, 0, &v50);
  if (!v2)
  {
    v65 = sub_1CEFEF490(50, a1);
    v46 = v62;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v38 = v54;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    sub_1CEFCCBDC(&v34, v31, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFEF998(a1, sub_1CEFF0598, 0, v33);
    sub_1CEFF0814(48, a1, &v30);
    v5 = v30;
    v6 = sub_1CEFF0AD0(49, a1);
    v7 = sub_1CEFF0CDC(32, a1, sub_1CEFEAD20, sub_1CF357F60);
    v8 = sub_1CEFF0EE4(33, a1, sub_1CEFEAD20, sub_1CF357F60);
    v9 = sub_1CEFEF02C(51, a1, sub_1CEFEAD20, sub_1CF357F60);
    v29 = v5;
    v66 = sub_1CEFEF02C(54, a1, sub_1CEFEAD20, sub_1CF357F60);
    v10 = sub_1CEFEEA08(52, a1, sub_1CEFEAD20, sub_1CF357F60);
    v11 = sub_1CEFF10EC(53, a1);
    v31[12] = v62;
    v31[13] = v63;
    v31[14] = v64;
    v32 = v65;
    v31[8] = v58;
    v31[9] = v59;
    v31[10] = v60;
    v31[11] = v61;
    v31[4] = v54;
    v31[5] = v55;
    v31[6] = v56;
    v31[7] = v57;
    v31[0] = v50;
    v31[1] = v51;
    v31[2] = v52;
    v31[3] = v53;
    sub_1CEFCCC44(v31, &unk_1EC4BFE00, &unk_1CF9FEF00);
    v12 = v47;
    *(a2 + 192) = v46;
    *(a2 + 208) = v12;
    *(a2 + 224) = v48;
    v13 = v43;
    *(a2 + 128) = v42;
    *(a2 + 144) = v13;
    v14 = v45;
    *(a2 + 160) = v44;
    *(a2 + 176) = v14;
    v15 = v39;
    *(a2 + 64) = v38;
    *(a2 + 80) = v15;
    v16 = v41;
    *(a2 + 96) = v40;
    *(a2 + 112) = v16;
    v17 = v35;
    *a2 = v34;
    *(a2 + 16) = v17;
    v18 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v18;
    v19 = v33[10];
    v20 = v33[11];
    v21 = v33[8];
    *(a2 + 392) = v33[9];
    *(a2 + 408) = v19;
    v22 = v33[12];
    *(a2 + 424) = v20;
    *(a2 + 440) = v22;
    v23 = v33[6];
    v24 = v33[7];
    v25 = v33[4];
    *(a2 + 328) = v33[5];
    *(a2 + 344) = v23;
    *(a2 + 360) = v24;
    *(a2 + 376) = v21;
    v26 = v33[2];
    v27 = v33[3];
    v28 = v33[0];
    *(a2 + 264) = v33[1];
    *(a2 + 280) = v26;
    *(a2 + 296) = v27;
    *(a2 + 312) = v25;
    *(a2 + 240) = v49;
    *(a2 + 248) = v28;
    *(a2 + 456) = v29;
    *(a2 + 464) = v6;
    *(a2 + 472) = v7;
    *(a2 + 480) = v8;
    *(a2 + 488) = v9;
    *(a2 + 496) = v66;
    *(a2 + 504) = v10 & 1;
    *(a2 + 512) = v11;
  }
}

double sub_1CEFEC988@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v71) = -121;
  a2(&v65, &v71);
  v9 = sub_1CEFED344(v65, a1);
  if (!v4)
  {
    v12 = v10;
    if (v10)
    {
      v13 = 0;
      v14 = 0;
      v78 = 0;
      v15 = 0;
    }

    else
    {
      v13 = v9;
      LOBYTE(v71) = -64;
      a2(&v65, &v71);
      v14 = sub_1CEFED4EC(v65, a1, sub_1CEFEAD20, sub_1CF357F60);
      LOBYTE(v71) = -63;
      a2(&v65, &v71);
      v19 = sub_1CEFED6F4(v65, a1);
      v15 = v20;
      v78 = v19;
    }

    LOBYTE(v65) = -62;
    a2(&v61, &v65);
    sub_1CEFED908(v61, a1, &v71);
    v59 = a4;
    v16 = BYTE8(v71);
    if (BYTE8(v71) == 255 || (v56 = v71, LOBYTE(v65) = -61, a2(&v61, &v65), sub_1CEFEDAC0(v61, a1, sub_1CEFEAD20, sub_1CF357F60, &v71), v17 = *(&v71 + 1), (v12 & 1) != 0) || !*(&v71 + 1))
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v71 = 0u;
    }

    else
    {
      v18 = v71;
      *&v71 = v13;
      DWORD2(v71) = v14;
      *&v72 = v78;
      BYTE8(v72) = v15 & 1;
      *&v73 = 0;
      *(&v73 + 1) = v56;
      LOBYTE(v74) = v16;
      *(&v74 + 1) = v18;
      v75 = v17;
      v76 = 0uLL;
    }

    v70 = 0;
    a2(&v69, &v70);
    sub_1CEFED344(v69, a1);
    if (v21)
    {
      v65 = 0uLL;
      *&v66 = 0;
      *(&v66 + 1) = 0xB000000000000000;
      v67 = 0u;
      v68 = 0u;
    }

    else
    {
      v62 = 2;
      a2(&v60, &v62);
      sub_1CF23D77C(v60, a1, sub_1CEFEAD20, sub_1CF357F60, &v61);
      v25 = *(&v61 + 1);
      v24 = v61;
      LOBYTE(v61) = 3;
      a2(&v62, &v61);
      v26 = sub_1CEFED6F4(v62, a1);
      if (v27)
      {
        v28 = 0;
        v78 = 0;
        v29 = 1;
      }

      else
      {
        v28 = v26;
        LOBYTE(v61) = 4;
        a2(&v62, &v61);
        v30 = sub_1CEFED6F4(v62, a1);
        if (v31)
        {
          v28 = 0;
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v78 = v32;
        v29 = (v31 & 1) != 0;
      }

      LOBYTE(v61) = 5;
      a2(&v62, &v61);
      v33 = sub_1CF23D568(v62, a1);
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      v57 = v35;
      LOBYTE(v61) = 1;
      a2(&v62, &v61);
      v36 = sub_1CF23D344(v62, a1, sub_1CEFEAD20, sub_1CF357F60);
      v54 = v36;
      if ((v36 & 0x100000000) != 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }

      v53 = v37;
      if (v25 >> 60 == 15)
      {
        LOBYTE(v61) = 0;
        a2(&v62, &v61);
        v38 = sub_1CF23D13C(v62, a1, sub_1CEFEAD20, sub_1CF357F60);
        v24 = 0;
        v39 = HIDWORD(v54) & 1;
        v25 = 0xF000000000000000;
        v40 = v53;
      }

      else
      {
        v38 = 0;
        v40 = 0;
        LOBYTE(v39) = 1;
      }

      LOBYTE(v63) = v39;
      LOBYTE(v64) = v29;
      *&v65 = v38;
      DWORD2(v65) = v40;
      BYTE12(v65) = v39;
      *&v66 = v24;
      *(&v66 + 1) = v25;
      *&v67 = v28;
      *(&v67 + 1) = v78;
      LOBYTE(v68) = v29;
      *(&v68 + 1) = v57;
    }

    LOBYTE(v63) = 0x80;
    a2(&v64, &v63);
    sub_1CEFEDCE0(v64, a1, &v61);
    LOBYTE(v63) = -127;
    a2(&v64, &v63);
    v22 = sub_1CEFEDF38(v64, a1);
    LOBYTE(v64) = -126;
    a2(&v62, &v64);
    sub_1CEFEE134(v62, a1, sub_1CEFEAD20, sub_1CF357F60, &v63);
    v23 = v63;
    LOBYTE(v64) = -125;
    a2(&v62, &v64);
    LODWORD(v78) = sub_1CEFEE33C(v62, a1);
    LOBYTE(v64) = -124;
    a2(&v62, &v64);
    v41 = sub_1CEFEE600(v62, a1);
    LOBYTE(v64) = -123;
    a2(&v62, &v64);
    v58 = sub_1CEFEE7FC(v62, a1);
    LOBYTE(v64) = -122;
    a2(&v62, &v64);
    v55 = sub_1CEFEEA08(v62, a1, sub_1CEFEAD20, sub_1CF357F60);
    v77[0] = a1;
    v77[1] = a2;
    v77[2] = a3;
    v77[3] = sub_1CEFEF01C;
    v77[4] = 0;
    v51 = sub_1CEFEECC4(v77);
    v52 = v42;
    v44 = v43;
    LOBYTE(v64) = -58;
    a2(&v62, &v64);
    v45 = sub_1CEFEF234(v62, a1, sub_1CEFEAD20, sub_1CF357F60);

    v46 = v72;
    *(v59 + 72) = v73;
    v47 = v75;
    *(v59 + 88) = v74;
    *(v59 + 104) = v47;
    *(v59 + 120) = v76;
    *(v59 + 40) = v71;
    *(v59 + 56) = v46;
    v48 = v66;
    *(v59 + 168) = v65;
    *(v59 + 184) = v48;
    result = *&v67;
    v49 = v68;
    *(v59 + 200) = v67;
    v50 = BYTE8(v61);
    *v59 = v61;
    *(v59 + 8) = v50;
    *(v59 + 16) = v22;
    *(v59 + 24) = v23;
    *(v59 + 32) = v78;
    *(v59 + 136) = v41;
    *(v59 + 137) = v58;
    *(v59 + 138) = v55 & 1;
    *(v59 + 144) = v51;
    *(v59 + 152) = v52;
    *(v59 + 160) = v44;
    *(v59 + 216) = v49;
    *(v59 + 232) = v45;
    *(v59 + 240) = 0;
  }

  return result;
}

uint64_t sub_1CEFED344(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_1CEFEAD20(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1CEFD1104(*(a2 + 56) + 32 * v4, v12);
  sub_1CEFE9EB8(v12, v13);
  sub_1CEFD1104(v13, v12);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFD1104(v13, v7);
    *&v12[0] = 0;
    *(&v12[0] + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFD1104(v13, v12);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v3);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000001DLL;
    *(v8 + 40) = 0x80000001CFA361C0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1CEFED4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x80000001CFA364D0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFED6F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA36240;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFED908@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = result, result = sub_1CEFEAD20(result), (v6 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * result, v13);
    sub_1CEFE9EB8(v13, v14);
    sub_1CEFD1104(v14, v13);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      *a3 = v11;
      *(a3 + 8) = v12;
    }

    else
    {
      sub_1CF24CD3C();
      swift_allocError();
      v8 = v7;
      sub_1CEFD1104(v14, v7);
      *&v13[0] = 0;
      *(&v13[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      sub_1CEFD1104(v14, v13);
      v9 = sub_1CF9E6948();
      MEMORY[0x1D3868CC0](v9);

      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v10 = sub_1CF357F60(v5);
      MEMORY[0x1D3868CC0](v10);

      *(v8 + 32) = 0xD000000000000020;
      *(v8 + 40) = 0x80000001CFA36540;
      *(v8 + 48) = 4;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_1CEFEDAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v16;
    a5[1] = v17;
  }

  else
  {

    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v19, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v15 = a4(a1);
    MEMORY[0x1D3868CC0](v15);

    *(v13 + 32) = 0xD00000000000001FLL;
    *(v13 + 40) = 0x80000001CFA364F0;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CEFEDCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v13;
    *(a3 + 8) = v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v16, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v12 = sub_1CF357F60(v3);
    MEMORY[0x1D3868CC0](v12);

    *(v10 + 32) = 0xD00000000000002ALL;
    *(v10 + 40) = 0x80000001CFA36510;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for VFSItemID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CEFEDF38(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA363F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v16;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v18, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v15 = a4(a1);
    MEMORY[0x1D3868CC0](v15);

    *(v13 + 32) = 0xD00000000000001DLL;
    *(v13 + 40) = 0x80000001CFA363D0;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFEE33C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B0, &unk_1CFA03A00);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000036;
    *(v8 + 40) = 0x80000001CFA36390;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t storeEnumTagSinglePayload for ExtentMap.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEFEE600(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA36360;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEE7FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000031;
    *(v8 + 40) = 0x80000001CFA36320;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEEA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = v15;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v17, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000001BLL;
    *(v11 + 40) = 0x80000001CFA36020;
    *(v11 + 48) = 4;
    swift_willThrow();
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return v9 & 1;
}

uint64_t storeEnumTagSinglePayload for EvictionUrgency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEFEECC4(uint64_t *a1)
{
  HIBYTE(v11) = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v5((&v11 + 6), &v11 + 7);
  v3((&v11 + 5), &v11 + 6);
  result = sub_1CEFEF02C(BYTE5(v11), v2, sub_1CEFEAD20, sub_1CF357F60);
  if (!v1)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        sub_1CF1DA62C();
        return swift_allocError();
      }

      if (result != 4)
      {
        if (result == 5)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    else
    {
      if (!result)
      {
        BYTE5(v10) = 1;
        v5((&v10 + 4), &v10 + 5);
        v3((&v10 + 3), &v10 + 4);
        v8 = sub_1CF23E024(BYTE3(v10), v2, sub_1CEFEAD20, sub_1CF357F60);
        BYTE2(v10) = 2;
        v5((&v10 + 1), &v10 + 2);
        v3(&v10, &v10 + 1);
        sub_1CF23DE0C(v10, v2, sub_1CEFEAD20, sub_1CF357F60);
        return v8;
      }

      if (result != 1)
      {
        if (result == 2)
        {
          BYTE4(v11) = 2;
          v5((&v11 + 3), &v11 + 4);
          v3((&v11 + 2), &v11 + 3);
          return sub_1CF23DE0C(BYTE2(v11), v2, sub_1CEFEAD20, sub_1CF357F60);
        }

LABEL_13:
        sub_1CF1DA5D8();
        swift_allocError();
        *v9 = 0;
        return swift_willThrow();
      }

      BYTE1(v11) = 2;
      v5(&v11, &v11 + 1);
      v3((&v10 + 6), &v11);
      return sub_1CF23DE0C(BYTE6(v10), v2, sub_1CEFEAD20, sub_1CF357F60);
    }
  }

  return result;
}

uint64_t sub_1CEFEF02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000001ALL;
    *(v11 + 40) = 0x80000001CFA360B0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEF234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v15;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v17, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v12 = sub_1CF9E82E8();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v13);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v14 = a4(a1);
    MEMORY[0x1D3868CC0](v14);

    *(v11 + 32) = 0xD000000000000012;
    *(v11 + 40) = 0x80000001CFA362A0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEF490(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA364A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

unsigned int *sub_1CEFEF68C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if (v5 == v10)
      {
        v19 = *(v4 + 56);

        return v19();
      }

      else
      {
        v20 = ((result + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v9 > 0x7FFFFFFE)
        {
          v21 = *(v6 + 56);

          return v21((v20 + v8 + 8) & ~v8);
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *v20 = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v20 = a2;
        }
      }

      return result;
    }
  }

  if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    v18 = result;
    bzero(result, v11);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon18JobSchedulingStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1CEFEF93C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 64))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 24) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_1CEFEF998@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v64) = -60;
  a2(&v76, &v64);
  sub_1CEFF0360(v76, a1, &v70);
  if (!v4)
  {
    v10 = v70;
    v75 = -59;
    a2(&v74, &v75);
    sub_1CEFF0360(v74, a1, &v76);
    v11 = 0;
    v12 = *(&v76 + 1);
    v78 = v76;
    v13 = xmmword_1CF9FD920;
    v14 = 0uLL;
    if (*(&v10 + 1) >> 60 != 15 && *(&v76 + 1) >> 60 != 15)
    {
      sub_1CEFF05F4(v10, *(&v10 + 1));
      v15 = v12;
      v16 = v78;
      sub_1CEFF05F4(v78, v15);
      *&v13 = 0;
      *(&v13 + 1) = v16;
      v12 = v15;
      v14 = v10;
      v11 = v15;
    }

    v70 = v14;
    v71 = v13;
    v72 = v11;
    v73 = 0uLL;
    v69 = 0;
    a2(&v68, &v69);
    sub_1CEFED344(v68, a1);
    if (v17)
    {
      v64 = 0uLL;
      *&v65 = 0;
      *(&v65 + 1) = 0xB000000000000000;
      v66 = 0u;
      v67 = 0u;
    }

    else
    {
      v61 = 2;
      a2(&v60, &v61);
      sub_1CF23D77C(v60, a1, sub_1CEFEAD20, sub_1CF357F60, &v62);
      v19 = *(&v62 + 1);
      v58 = v62;
      LOBYTE(v62) = 3;
      a2(&v61, &v62);
      v20 = sub_1CEFED6F4(v61, a1);
      v55 = v19;
      if (v21)
      {
        v51 = 0uLL;
        v22 = 1;
      }

      else
      {
        v23 = v20;
        LOBYTE(v62) = 4;
        a2(&v61, &v62);
        v24 = sub_1CEFED6F4(v61, a1);
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23;
        }

        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24;
        }

        *&v51 = v26;
        *(&v51 + 1) = v27;
        v22 = (v25 & 1) != 0;
      }

      v49 = v22;
      LOBYTE(v62) = 5;
      a2(&v61, &v62);
      v28 = sub_1CF23D568(v61, a1);
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      LOBYTE(v62) = 1;
      a2(&v61, &v62);
      v31 = sub_1CF23D344(v61, a1, sub_1CEFEAD20, sub_1CF357F60);
      v56 = v30;
      if ((v31 & 0x100000000) != 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      v33 = v55;
      if (v55 >> 60 == 15)
      {
        v59 = v31;
        LOBYTE(v62) = 0;
        a2(&v61, &v62);
        v34 = sub_1CF23D13C(v61, a1, sub_1CEFEAD20, sub_1CF357F60);
        v35 = 0;
        v36 = HIDWORD(v59) & 1;
        v33 = 0xF000000000000000;
        v37 = v32;
      }

      else
      {
        v34 = 0;
        v37 = 0;
        LOBYTE(v36) = 1;
        v35 = v58;
      }

      BYTE4(v63) = v36;
      LOBYTE(v63) = v49;
      *&v64 = v34;
      DWORD2(v64) = v37;
      BYTE12(v64) = v36;
      *&v65 = v35;
      *(&v65 + 1) = v33;
      v66 = v51;
      LOBYTE(v67) = v49;
      *(&v67 + 1) = v56;
    }

    LOBYTE(v62) = 0x80;
    a2((&v63 + 4), &v62);
    v57 = sub_1CEFF0608(BYTE4(v63), a1);
    LOBYTE(v62) = -127;
    a2((&v63 + 4), &v62);
    v54 = sub_1CEFEDF38(BYTE4(v63), a1);
    BYTE4(v63) = -126;
    a2(&v63, (&v63 + 4));
    sub_1CEFEE134(v63, a1, sub_1CEFEAD20, sub_1CF357F60, &v62);
    v18 = v62;
    BYTE4(v63) = -125;
    a2(&v63, (&v63 + 4));
    v53 = sub_1CEFEE33C(v63, a1);
    BYTE4(v63) = -124;
    a2(&v63, (&v63 + 4));
    v52 = sub_1CEFEE600(v63, a1);
    BYTE4(v63) = -123;
    a2(&v63, (&v63 + 4));
    v50 = sub_1CEFEE7FC(v63, a1);
    BYTE4(v63) = -122;
    a2(&v63, (&v63 + 4));
    v48 = sub_1CEFEEA08(v63, a1, sub_1CEFEAD20, sub_1CF357F60);
    v77[0] = a1;
    v77[1] = a2;
    v77[2] = a3;
    v77[3] = sub_1CEFEF01C;
    v77[4] = 0;
    v46 = sub_1CEFEECC4(v77);
    v47 = v38;
    v40 = v39;
    BYTE4(v63) = -58;
    a2(&v63, (&v63 + 4));
    v41 = sub_1CEFEF234(v63, a1, sub_1CEFEAD20, sub_1CF357F60);
    sub_1CEFE48D8(v78, v12);
    sub_1CEFE48D8(v10, *(&v10 + 1));
    v42 = v71;
    *(a4 + 32) = v70;
    *(a4 + 48) = v42;
    v43 = v73;
    *(a4 + 64) = v72;
    *(a4 + 80) = v43;
    *a4 = v57;
    *(a4 + 8) = v54;
    *(a4 + 16) = v18;
    *(a4 + 24) = v53;
    *(a4 + 96) = v52;
    *(a4 + 97) = v50;
    *(a4 + 98) = v48 & 1;
    *(a4 + 104) = v46;
    *(a4 + 112) = v47;
    *(a4 + 120) = v40;
    v44 = v65;
    *(a4 + 128) = v64;
    *(a4 + 144) = v44;
    result = *&v66;
    v45 = v67;
    *(a4 + 160) = v66;
    *(a4 + 176) = v45;
    *(a4 + 192) = v41;
    *(a4 + 200) = 0;
  }

  return result;
}

uint64_t sub_1CEFF0360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C0, &qword_1CF9FEF78);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v13;
  }

  else
  {
    sub_1CEFF0584(0, 0xB000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v15, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v12 = sub_1CF357F60(v3);
    MEMORY[0x1D3868CC0](v12);

    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x80000001CFA36460;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFF0584(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1CEFE48D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEFF05A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1CEFF05F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEFE42D4(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEFF0608(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA36420;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE998, &qword_1CF9FEF18);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v13;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v15, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v12 = sub_1CF357F60(v3);
    MEMORY[0x1D3868CC0](v12);

    *(v10 + 32) = 0xD00000000000002DLL;
    *(v10 + 40) = 0x80000001CFA36190;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DocumentContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEFF0AD0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000057;
    *(v8 + 40) = 0x80000001CFA36130;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000002CLL;
    *(v11 + 40) = 0x80000001CFA36100;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD000000000000024;
    *(v11 + 40) = 0x80000001CFA360D0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF10EC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000002ALL;
    *(v8 + 40) = 0x80000001CFA36080;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

void *sub_1CEFF12E8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA2ECA0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEAFC8;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    *&v7 = &unk_1F4BEAFC8;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000019, 0x80000001CFA2ECA0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

uint64_t sub_1CEFF14E0@<X0>(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CEFF1D18();
  v8 = MEMORY[0x1D38688F0](v6, &_s9SQLFieldsON_3, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v76 = *(a2 + 16);
  v74 = a2 + 32;
  v10 = 0x1FC859000;
  v11 = MEMORY[0x1E69E6158];
  while (2)
  {
    if (v76 == v9)
    {
      sub_1CEFF2A34(v8, a4);
    }

    v13 = (a3 + v9);
    if (__OFADD__(a3, v9))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      sub_1CF9E8108();
      __break(1u);
LABEL_59:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v14 = *(v74 + v9++);
    switch(v14)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 13:
      case 14:
      case 19:
        v15 = [a1 BOOLAtIndex_];
        *(&v80 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v79) = v15;
        goto LABEL_38;
      case 3:
      case 4:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v22 = [a1 dataAtIndex_];
        v23 = sub_1CF9E5B88();
        v25 = v24;

        sub_1CF4C2898(v23, v25);
        if (!v73)
        {
          v27 = v26;
          sub_1CEFE4714(v23, v25);
          if (v27)
          {
            swift_getErrorValue();
            *(&v80 + 1) = v77;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v79);
            (*(*(v77 - 8) + 16))(boxed_opaque_existential_0);

LABEL_38:
            sub_1CEFE9EB8(&v79, v81);
            sub_1CEFD1104(v81, &v79);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v78 = v8;
            v58 = sub_1CEFF1D80(v14);
            v60 = v8[2];
            v61 = (v59 & 1) == 0;
            v62 = __OFADD__(v60, v61);
            v63 = v60 + v61;
            if (v62)
            {
              goto LABEL_56;
            }

            v64 = v59;
            if (v8[3] >= v63)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v70 = v58;
                sub_1CF7CF9E0();
                v58 = v70;
              }
            }

            else
            {
              sub_1CF7C44E8(v63, isUniquelyReferenced_nonNull_native);
              v58 = sub_1CEFF1D80(v14);
              if ((v64 & 1) != (v65 & 1))
              {
                goto LABEL_58;
              }
            }

            v10 = 0x1FC859000uLL;
            if (v64)
            {
              v12 = (v8[7] + 32 * v58);
              __swift_destroy_boxed_opaque_existential_1(v12);
              sub_1CEFE9EB8(&v79, v12);
              __swift_destroy_boxed_opaque_existential_1(v81);
            }

            else
            {
              v8[(v58 >> 6) + 8] |= 1 << v58;
              *(v8[6] + v58) = v14;
              sub_1CEFE9EB8(&v79, (v8[7] + 32 * v58));
              __swift_destroy_boxed_opaque_existential_1(v81);
              v66 = v8[2];
              v62 = __OFADD__(v66, 1);
              v67 = v66 + 1;
              if (v62)
              {
                goto LABEL_57;
              }

              v8[2] = v67;
            }

            v11 = MEMORY[0x1E69E6158];
          }

          else
          {
            v10 = 0x1FC859000;
LABEL_50:
            v79 = 0u;
            v80 = 0u;
            sub_1CEFCCC44(&v79, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          }

          if (v9 == 0x80000000)
          {
            goto LABEL_55;
          }

          continue;
        }

        sub_1CEFE4714(v23, v25);

      case 9:
      case 10:
      case 12:
      case 15:
      case 16:
      case 17:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v16 = [a1 stringAtIndex_];
        v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v19 = v18;

        *(&v80 + 1) = v11;
        goto LABEL_11;
      case 18:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v68 = [a1 stringAtIndex_];
        v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v19 = v69;

        *(&v80 + 1) = &type metadata for Filename;
LABEL_11:
        *&v79 = v17;
        *(&v79 + 1) = v19;
        goto LABEL_38;
      case 20:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        v43 = sub_1CF9E5688();
        v44 = *(v43 + 48);
        v45 = *(v43 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v46 = [a1 dataAtIndex_];
        v39 = sub_1CF9E5B88();
        v41 = v47;

        sub_1CF1E11C8();
        goto LABEL_31;
      case 21:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        if ([a1 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        v50 = sub_1CF9E5688();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v53 = [a1 dataAtIndex_];
        v54 = sub_1CF9E5B88();
        v56 = v55;

        sub_1CEFE78D8();
        sub_1CF9E5668();
        v48 = v54;
        v49 = v56;
        if (v73)
        {
          goto LABEL_52;
        }

        sub_1CEFE4714(v54, v56);

        *(&v80 + 1) = &type metadata for UserInfo;
        v79 = v78;
        goto LABEL_38;
      case 22:
      case 23:
        type metadata accessor for NSFileProviderContentPolicy(0);
        *(&v80 + 1) = v20;
        v21 = [a1 longAtIndex_];
        goto LABEL_26;
      case 24:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        v35 = sub_1CF9E5688();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v38 = [a1 dataAtIndex_];
        v39 = sub_1CF9E5B88();
        v41 = v40;

        sub_1CF1E1118();
LABEL_31:
        sub_1CF9E5668();
        v48 = v39;
        v49 = v41;
        if (v73)
        {
LABEL_52:
          sub_1CEFE4714(v48, v49);
        }

        sub_1CEFE4714(v39, v41);

        *(&v80 + 1) = v34;
        *&v79 = v78;
        goto LABEL_38;
      case 25:
        if ([a1 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        if ([a1 (v10 + 3104)])
        {
LABEL_60:
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        v29 = v11;
        v30 = [a1 stringAtIndex_];
        v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v33 = v32;

        *(&v80 + 1) = v29;
        *&v79 = v31;
        *(&v79 + 1) = v33;
        goto LABEL_38;
      default:
        type metadata accessor for NSFileProviderItemCapabilities(0);
        *(&v80 + 1) = v42;
        v21 = [a1 unsignedLongAtIndex_];
LABEL_26:
        *&v79 = v21;
        goto LABEL_38;
    }
  }
}

unint64_t sub_1CEFF1D18()
{
  result = qword_1EDEAC5A8;
  if (!qword_1EDEAC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5A8);
  }

  return result;
}

unint64_t sub_1CEFF1D80(char a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CEFF1E08(a1);
  sub_1CF9E69C8();

  v4 = sub_1CF9E8228();

  return sub_1CEFF218C(a1, v4);
}

unint64_t sub_1CEFF1E08(char a1)
{
  result = 0x696C696261706163;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x616F6C70755F7369;
      break;
    case 3:
      result = 0x6E6964616F6C7075;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 14:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x65726168735F7369;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 25:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000024;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x61746E6F635F7369;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x5F79616C70736964;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x6365645F6D657469;
      break;
    case 21:
      result = 0x666E695F72657375;
      break;
    case 22:
      result = 0x5F746E65746E6F63;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CEFF218C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000073656974;
      v8 = 0x696C696261706163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xEC000000676E6964;
          goto LABEL_14;
        case 2:
          v7 = 0xEB00000000646564;
LABEL_14:
          v8 = 0x616F6C70755F7369;
          break;
        case 3:
          v8 = 0x6E6964616F6C7075;
          v7 = 0xEF726F7272655F67;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x80000001CFA2C4F0;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x80000001CFA2C510;
          break;
        case 6:
          v8 = 0x65726168735F7369;
          v7 = 0xE900000000000064;
          break;
        case 7:
          v8 = 0xD000000000000018;
          v7 = 0x80000001CFA2C530;
          break;
        case 8:
          v8 = 0xD000000000000019;
          v7 = 0x80000001CFA2C550;
          break;
        case 9:
          v8 = 0xD000000000000017;
          v7 = 0x80000001CFA2C570;
          break;
        case 0xA:
          v8 = 0xD000000000000024;
          v7 = 0x80000001CFA2C590;
          break;
        case 0xB:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001CFA2C5C0;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x80000001CFA2C5E0;
          break;
        case 0xD:
          v8 = 0x61746E6F635F7369;
          v7 = 0xEC00000072656E69;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x80000001CFA2C610;
          break;
        case 0xF:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001CFA2C630;
          break;
        case 0x10:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001CFA2C650;
          break;
        case 0x11:
          v8 = 0xD000000000000016;
          v7 = 0x80000001CFA2C670;
          break;
        case 0x12:
          v8 = 0x5F79616C70736964;
          v7 = 0xEC000000656D616ELL;
          break;
        case 0x13:
          v8 = 0xD000000000000018;
          v7 = 0x80000001CFA2C6A0;
          break;
        case 0x14:
          v8 = 0x6365645F6D657469;
          v7 = 0xEF6E6F697461726FLL;
          break;
        case 0x15:
          v8 = 0x666E695F72657375;
          v7 = 0xE90000000000006FLL;
          break;
        case 0x16:
          v8 = 0x5F746E65746E6F63;
          v7 = 0xEE007963696C6F70;
          break;
        case 0x17:
          v8 = 0xD000000000000018;
          v7 = 0x80000001CFA2C6F0;
          break;
        case 0x18:
          v8 = 0xD000000000000014;
          v7 = 0x80000001CFA2C710;
          break;
        case 0x19:
          v8 = 0xD000000000000017;
          v7 = 0x80000001CFA2C730;
          break;
        default:
          break;
      }

      v9 = 0x696C696261706163;
      v10 = 0xEC00000073656974;
      switch(a1)
      {
        case 1:
          v10 = 0xEC000000676E6964;
          goto LABEL_49;
        case 2:
          v10 = 0xEB00000000646564;
LABEL_49:
          if (v8 != 0x616F6C70755F7369)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 3:
          v10 = 0xEF726F7272655F67;
          if (v8 != 0x6E6964616F6C7075)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 4:
          v10 = 0x80000001CFA2C4F0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 5:
          v10 = 0x80000001CFA2C510;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 6:
          v10 = 0xE900000000000064;
          if (v8 != 0x65726168735F7369)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 7:
          v10 = 0x80000001CFA2C530;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 8:
          v10 = 0x80000001CFA2C550;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 9:
          v10 = 0x80000001CFA2C570;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 10:
          v10 = 0x80000001CFA2C590;
          if (v8 != 0xD000000000000024)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 11:
          v10 = 0x80000001CFA2C5C0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 12:
          v10 = 0x80000001CFA2C5E0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 13:
          v11 = 0x61746E6F635F7369;
          v12 = 1919250025;
          goto LABEL_69;
        case 14:
          v10 = 0x80000001CFA2C610;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 15:
          v10 = 0x80000001CFA2C630;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 16:
          v10 = 0x80000001CFA2C650;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 17:
          v10 = 0x80000001CFA2C670;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 18:
          v11 = 0x5F79616C70736964;
          v12 = 1701667182;
LABEL_69:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v11)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 19:
          v9 = 0xD000000000000018;
          v10 = 0x80000001CFA2C6A0;
          goto LABEL_78;
        case 20:
          v10 = 0xEF6E6F697461726FLL;
          if (v8 != 0x6365645F6D657469)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 21:
          v10 = 0xE90000000000006FLL;
          if (v8 != 0x666E695F72657375)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 22:
          v10 = 0xEE007963696C6F70;
          if (v8 != 0x5F746E65746E6F63)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 23:
          v10 = 0x80000001CFA2C6F0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 24:
          v10 = 0x80000001CFA2C710;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 25:
          v10 = 0x80000001CFA2C730;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (v8 != v9)
          {
            goto LABEL_80;
          }

LABEL_79:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_80:
          v13 = sub_1CF9E8048();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

void sub_1CEFF2A34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CEFF3314(0, a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CEFEEA08(1, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v8 = sub_1CEFEEA08(2, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v9 = sub_1CEFF3514(3, a1);
    v10 = sub_1CEFF3514(4, a1);
    v11 = sub_1CEFEEA08(6, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v46 = sub_1CEFEEA08(7, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v45 = sub_1CEFEEA08(8, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v41 = sub_1CEFF3720(9, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v43 = v12;
    v40 = sub_1CEFF3720(10, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v42 = v13;
    v14 = sub_1CEFEEA08(11, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v38 = sub_1CEFF3720(12, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v39 = v15;
    v37 = sub_1CEFEEA08(13, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v36 = sub_1CEFEEA08(14, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v34 = sub_1CEFF3720(15, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v35 = v16;
    v32 = sub_1CEFF3720(16, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v33 = v17;
    v30 = sub_1CEFF3720(17, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v31 = v18;
    sub_1CEFF3938(18, a1, sub_1CEFF1D80, sub_1CEFF1E08, &v44);
    v19 = v44;
    v29 = sub_1CEFEEA08(19, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v28 = sub_1CEFF3BA4(20, a1);
    v26 = sub_1CEFF3DB0(21, a1);
    v27 = v20;
    v25 = sub_1CEFF3FF8(22, a1);
    v24 = sub_1CEFF3FF8(23, a1);
    v23 = sub_1CEFF41F8(24, a1);
    v21 = sub_1CEFF3720(25, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    *a2 = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 40) = v41;
    *(a2 + 48) = v43;
    *(a2 + 8) = v7 & 1;
    *(a2 + 9) = v8 & 1;
    *(a2 + 32) = v11 & 1;
    *(a2 + 33) = v46 & 1;
    *(a2 + 34) = v45 & 1;
    *(a2 + 56) = v40;
    *(a2 + 64) = v42;
    *(a2 + 72) = v14 & 1;
    *(a2 + 80) = v38;
    *(a2 + 88) = v39;
    *(a2 + 96) = 0;
    *(a2 + 104) = v37 & 1;
    *(a2 + 105) = v36 & 1;
    *(a2 + 112) = v34;
    *(a2 + 120) = v35;
    *(a2 + 128) = v32;
    *(a2 + 136) = v33;
    *(a2 + 144) = v30;
    *(a2 + 152) = v31;
    *(a2 + 160) = v19;
    *(a2 + 176) = v29 & 1;
    *(a2 + 184) = v28;
    *(a2 + 192) = v26;
    *(a2 + 200) = v27;
    *(a2 + 208) = v25;
    *(a2 + 216) = v24;
    *(a2 + 224) = v23;
    *(a2 + 232) = v21;
    *(a2 + 240) = v22;
  }
}

uint64_t sub_1CEFF3314(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderItemCapabilities(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000035;
    *(v8 + 40) = 0x80000001CFA36040;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3514(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA35FF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3720(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA35FC0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v16;
  }

  else
  {
    sub_1CF0BA850(0, 1);
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v18, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v15 = a4(a1);
    MEMORY[0x1D3868CC0](v15);

    *(v13 + 32) = 0xD000000000000029;
    *(v13 + 40) = 0x80000001CFA35F90;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFF3B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CEFF3BA4(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000002ELL;
    *(v8 + 40) = 0x80000001CFA35F60;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3DB0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000029;
    *(v8 + 40) = 0x80000001CFA35F30;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CEFF3FF8(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderContentPolicy(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000032;
    *(v8 + 40) = 0x80000001CFA35EF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF41F8(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CEFF1E08(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000005DLL;
    *(v8 + 40) = 0x80000001CFA35E90;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF4408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon8UserInfoVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CEFF4484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 248) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 248) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon18ItemReconciliationVyAA7VFSItemVSo6FPItemCGSg(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon0A11ItemVersionVyAA10VFSVersionVAA0d5StateE0VyAA9VFSItemIDOGGSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon15CapturedContentVSg(uint64_t a1)
{
  v1 = *(a1 + 24) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}