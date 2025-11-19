uint64_t TaggedValue_8.encode(to:)(uint64_t a1, uint64_t a2)
{
  v251 = *(*(a2 + 72) - 8);
  v3 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v250 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = *(*(v5 + 64) - 8);
  v6 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v247 = &v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = *(*(v9 + 56) - 8);
  v10 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v244 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = *(*(v13 + 48) - 8);
  v14 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v241 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 40);
  v239 = *(v18 - 8);
  v19 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v238 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 32);
  v237 = *(v23 - 8);
  v24 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v236 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = *(*(v26 + 24) - 8);
  v27 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v233 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 16);
  v232 = *(v31 - 8);
  v32 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v231 = &v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v35[10];
  v37 = v35[11];
  v39 = v35[12];
  v38 = v35[13];
  v40 = v35[14];
  v41 = v35[15];
  v42 = v35[16];
  v43 = v35[17];
  *&v44 = v31;
  v235 = v45;
  *(&v44 + 1) = v45;
  v230 = v46;
  *&v47 = v46;
  v240 = v18;
  *(&v47 + 1) = v18;
  v253 = v47;
  v264 = v47;
  v255 = v44;
  v263 = v44;
  v243 = v48;
  *&v44 = v48;
  v246 = v49;
  *(&v44 + 1) = v49;
  v249 = v50;
  *&v47 = v50;
  v252 = v51;
  *(&v47 + 1) = v51;
  v254 = v47;
  v266 = v47;
  v256 = v44;
  v265 = v44;
  v259 = v36;
  v267 = v36;
  v268 = v37;
  v257 = v37;
  v258 = v39;
  v269 = v39;
  v270 = v38;
  v260 = v38;
  v271 = v40;
  v272 = v41;
  v273 = v42;
  v274 = v43;
  v52 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = (&v223 - v55);
  v57 = v275;
  result = sub_1ADE71C08();
  if (v57)
  {
    return result;
  }

  v224 = v31;
  v59 = v260;
  v225 = v40;
  v226 = v41;
  v227 = v42;
  v228 = v43;
  v275 = result;
  v60 = a1;
  v229 = 0;
  (*(v53 + 16))(v56, v261, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v66 = v59;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v71 = v230;
        (*(v237 + 32))(v236, v56, v230);
        v72 = v275;
        swift_beginAccess();
        v73 = *(*(v72 + 24) + 16);
        if ((~v73 & 0xF000000000000007) != 0 && ((v73 >> 59) & 0x1E | (v73 >> 2) & 1) == 0xB)
        {
          inited = *((v73 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v118 = v228;
        v119 = v227;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 2;
        sub_1AE1B7530(inited);
        v120 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v120);
        v121 = v253;
        *(&v223 - 9) = v255;
        *(&v223 - 8) = v121;
        v122 = v254;
        *(&v223 - 7) = v256;
        *(&v223 - 6) = v122;
        v123 = v257;
        *(&v223 - 10) = v259;
        *(&v223 - 9) = v123;
        *(&v223 - 8) = v258;
        *(&v223 - 7) = v66;
        v124 = v226;
        *(&v223 - 6) = v225;
        *(&v223 - 5) = v124;
        *(&v223 - 4) = v119;
        *(&v223 - 3) = v118;
        v125 = v236;
        *(&v223 - 2) = v236;
        *(&v223 - 1) = a1;
        v126 = v229;
        v127 = sub_1ADE6B938(sub_1ADFFB058);
        if (v126)
        {
        }

        else
        {
          swift_beginAccess();
          v188 = *(*(v72 + 24) + 16);
          if ((~v188 & 0xF000000000000007) != 0 && ((v188 >> 59) & 0x1E | (v188 >> 2) & 1) == 0xB)
          {
            v189 = *((v188 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v189 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v189 = sub_1ADDE5178(v189);
          }

          swift_beginAccess();
          v210 = *(v189 + 24);
          *(v189 + 24) = v127;

          sub_1AE1B7530(v189);
          swift_endAccess();
        }

        return (*(v237 + 8))(v125, v71);
      }

      else
      {
        (*(v239 + 32))(v238, v56, v240);
        v85 = v275;
        swift_beginAccess();
        v86 = *(*(v85 + 24) + 16);
        if ((~v86 & 0xF000000000000007) != 0 && ((v86 >> 59) & 0x1E | (v86 >> 2) & 1) == 0xB)
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v87 = swift_initStaticObject();
        }

        v139 = v228;
        v140 = v227;
        v141 = v226;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v87 = sub_1ADDE5178(v87);
        }

        swift_beginAccess();
        *(v87 + 16) = 3;
        sub_1AE1B7530(v87);
        v142 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v142);
        v143 = v253;
        *(&v223 - 9) = v255;
        *(&v223 - 8) = v143;
        v144 = v254;
        *(&v223 - 7) = v256;
        *(&v223 - 6) = v144;
        v145 = v257;
        *(&v223 - 10) = v259;
        *(&v223 - 9) = v145;
        *(&v223 - 8) = v258;
        *(&v223 - 7) = v66;
        *(&v223 - 6) = v225;
        *(&v223 - 5) = v141;
        *(&v223 - 4) = v140;
        *(&v223 - 3) = v139;
        v146 = v238;
        *(&v223 - 2) = v238;
        *(&v223 - 1) = a1;
        v147 = v229;
        v148 = sub_1ADE6B938(sub_1ADFFB010);
        if (v147)
        {
        }

        else
        {
          v193 = v148;
          swift_beginAccess();
          v194 = *(*(v85 + 24) + 16);
          if ((~v194 & 0xF000000000000007) != 0 && ((v194 >> 59) & 0x1E | (v194 >> 2) & 1) == 0xB)
          {
            v195 = *((v194 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v195 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v195 = sub_1ADDE5178(v195);
          }

          swift_beginAccess();
          v212 = *(v195 + 24);
          *(v195 + 24) = v193;

          sub_1AE1B7530(v195);
          swift_endAccess();
        }

        return (*(v239 + 8))(v146, v240);
      }
    }

    else
    {
      v67 = v259;
      if (!EnumCaseMultiPayload)
      {
        (*(v232 + 32))(v231, v56, v224);
        v68 = v275;
        swift_beginAccess();
        v69 = *(*(v68 + 24) + 16);
        if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 0xB)
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v70 = swift_initStaticObject();
        }

        v106 = v228;
        v107 = v275;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v258;
        v110 = v257;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v70 = sub_1ADDE5178(v70);
        }

        swift_beginAccess();
        *(v70 + 16) = 0;
        sub_1AE1B7530(v70);
        v111 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v111);
        v112 = v253;
        *(&v223 - 9) = v255;
        *(&v223 - 8) = v112;
        v113 = v254;
        *(&v223 - 7) = v256;
        *(&v223 - 6) = v113;
        *(&v223 - 10) = v259;
        *(&v223 - 9) = v110;
        *(&v223 - 8) = v109;
        *(&v223 - 7) = v66;
        v114 = v226;
        *(&v223 - 6) = v225;
        *(&v223 - 5) = v114;
        *(&v223 - 4) = v227;
        *(&v223 - 3) = v106;
        v115 = v231;
        *(&v223 - 2) = v231;
        *(&v223 - 1) = a1;
        v116 = v229;
        v117 = sub_1ADE6B938(sub_1ADFFB0E8);
        if (v116)
        {
        }

        else
        {
          swift_beginAccess();
          v186 = *(*(v107 + 24) + 16);
          if ((~v186 & 0xF000000000000007) != 0 && ((v186 >> 59) & 0x1E | (v186 >> 2) & 1) == 0xB)
          {
            v187 = *((v186 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v187 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v187 = sub_1ADDE5178(v187);
          }

          swift_beginAccess();
          v206 = *(v187 + 24);
          *(v187 + 24) = v117;

          sub_1AE1B7530(v187);
          swift_endAccess();
        }

        v207 = *(v232 + 8);
        v208 = v115;
        v209 = &v254 + 8;
        return v207(v208, *(v209 - 32));
      }

      (*(v234 + 32))(v233, v56, v235);
      v82 = v275;
      swift_beginAccess();
      v83 = *(*(v82 + 24) + 16);
      if ((~v83 & 0xF000000000000007) != 0 && ((v83 >> 59) & 0x1E | (v83 >> 2) & 1) == 0xB)
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v84 = swift_initStaticObject();
      }

      v128 = v228;
      v129 = v227;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v84 = sub_1ADDE5178(v84);
      }

      swift_beginAccess();
      *(v84 + 16) = 1;
      v130 = v275;
      sub_1AE1B7530(v84);
      v131 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v131);
      v132 = v253;
      *(&v223 - 9) = v255;
      *(&v223 - 8) = v132;
      v133 = v254;
      *(&v223 - 7) = v256;
      *(&v223 - 6) = v133;
      v134 = v257;
      *(&v223 - 10) = v67;
      *(&v223 - 9) = v134;
      *(&v223 - 8) = v258;
      *(&v223 - 7) = v66;
      v135 = v226;
      *(&v223 - 6) = v225;
      *(&v223 - 5) = v135;
      *(&v223 - 4) = v129;
      *(&v223 - 3) = v128;
      v136 = v233;
      *(&v223 - 2) = v233;
      *(&v223 - 1) = a1;
      v137 = v229;
      v138 = sub_1ADE6B938(sub_1ADFFB0A0);
      if (v137)
      {
      }

      else
      {
        v190 = v138;
        swift_beginAccess();
        v191 = *(*(v130 + 24) + 16);
        if ((~v191 & 0xF000000000000007) != 0 && ((v191 >> 59) & 0x1E | (v191 >> 2) & 1) == 0xB)
        {
          v192 = *((v191 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v192 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v192 = sub_1ADDE5178(v192);
        }

        swift_beginAccess();
        v211 = *(v192 + 24);
        *(v192 + 24) = v190;

        sub_1AE1B7530(v192);
        swift_endAccess();
      }

      return (*(v234 + 8))(v136, v235);
    }
  }

  else
  {
    v62 = v59;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v248 + 32))(v247, v56, v249);
        v79 = v275;
        swift_beginAccess();
        v80 = *(*(v79 + 24) + 16);
        if ((~v80 & 0xF000000000000007) != 0 && ((v80 >> 59) & 0x1E | (v80 >> 2) & 1) == 0xB)
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v81 = swift_initStaticObject();
        }

        v96 = v228;
        v97 = v227;
        v98 = v226;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v81 = sub_1ADDE5178(v81);
        }

        swift_beginAccess();
        *(v81 + 16) = 6;
        sub_1AE1B7530(v81);
        v99 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v99);
        v100 = v253;
        *(&v223 - 9) = v255;
        *(&v223 - 8) = v100;
        v101 = v254;
        *(&v223 - 7) = v256;
        *(&v223 - 6) = v101;
        v102 = v257;
        *(&v223 - 10) = v259;
        *(&v223 - 9) = v102;
        *(&v223 - 8) = v258;
        *(&v223 - 7) = v62;
        *(&v223 - 6) = v225;
        *(&v223 - 5) = v98;
        *(&v223 - 4) = v97;
        *(&v223 - 3) = v96;
        v103 = v247;
        *(&v223 - 2) = v247;
        *(&v223 - 1) = a1;
        v104 = v229;
        v105 = sub_1ADE6B938(sub_1ADFFAF38);
        if (v104)
        {
        }

        else
        {
          v183 = v105;
          swift_beginAccess();
          v184 = *(*(v79 + 24) + 16);
          if ((~v184 & 0xF000000000000007) != 0 && ((v184 >> 59) & 0x1E | (v184 >> 2) & 1) == 0xB)
          {
            v185 = *((v184 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v185 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v185 = sub_1ADDE5178(v185);
          }

          swift_beginAccess();
          v205 = *(v185 + 24);
          *(v185 + 24) = v183;

          sub_1AE1B7530(v185);
          swift_endAccess();
        }

        return (*(v248 + 8))(v103, v249);
      }

      else
      {
        v63 = v275;
        if (EnumCaseMultiPayload == 7)
        {
          (*(v251 + 32))(v250, v56, v252);
          swift_beginAccess();
          v64 = *(*(v63 + 24) + 16);
          if ((~v64 & 0xF000000000000007) != 0 && ((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
          {
            v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v65 = swift_initStaticObject();
          }

          v149 = v228;
          v150 = v227;
          v151 = v226;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v65 = sub_1ADDE5178(v65);
          }

          swift_beginAccess();
          *(v65 + 16) = 7;
          sub_1AE1B7530(v65);
          v152 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v152);
          v153 = v253;
          *(&v223 - 9) = v255;
          *(&v223 - 8) = v153;
          v154 = v254;
          *(&v223 - 7) = v256;
          *(&v223 - 6) = v154;
          v155 = v257;
          *(&v223 - 10) = v259;
          *(&v223 - 9) = v155;
          *(&v223 - 8) = v258;
          *(&v223 - 7) = v62;
          *(&v223 - 6) = v225;
          *(&v223 - 5) = v151;
          *(&v223 - 4) = v150;
          *(&v223 - 3) = v149;
          v156 = v250;
          *(&v223 - 2) = v250;
          *(&v223 - 1) = a1;
          v157 = v229;
          v158 = sub_1ADE6B938(sub_1ADFFAEF0);
          if (v157)
          {
          }

          else
          {
            v196 = v158;
            swift_beginAccess();
            v197 = *(*(v63 + 24) + 16);
            if ((~v197 & 0xF000000000000007) != 0 && ((v197 >> 59) & 0x1E | (v197 >> 2) & 1) == 0xB)
            {
              v198 = *((v197 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v198 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v198 = sub_1ADDE5178(v198);
            }

            swift_beginAccess();
            v213 = *(v198 + 24);
            *(v198 + 24) = v196;

            sub_1AE1B7530(v198);
            swift_endAccess();
          }

          return (*(v251 + 8))(v156, v252);
        }

        else
        {
          v89 = *v56;
          v88 = v56[1];
          swift_beginAccess();
          v90 = *(*(v63 + 24) + 16);
          if ((~v90 & 0xF000000000000007) != 0 && ((v90 >> 59) & 0x1E | (v90 >> 2) & 1) == 0xB)
          {
            v91 = *((v90 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v91 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v91 = sub_1ADDE5178(v91);
          }

          swift_beginAccess();
          *(v91 + 16) = v89;
          sub_1AE1B7530(v91);
          swift_endAccess();
          v159 = v63;
          v161 = *(a1 + 112);
          v160 = *(a1 + 120);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          v162 = v229;
          (*(*v88 + 152))(a1);
          if (v162)
          {
          }

          else
          {
            v216 = sub_1ADE71C08();
            swift_beginAccess();
            v217 = *(v216 + 24);
            v218 = *(v60 + 112);
            *(v60 + 112) = v161;

            v219 = *(v60 + 120);
            *(v60 + 120) = v160;

            swift_beginAccess();
            v220 = *(*(v159 + 24) + 16);
            if ((~v220 & 0xF000000000000007) != 0 && ((v220 >> 59) & 0x1E | (v220 >> 2) & 1) == 0xB)
            {
              v221 = *((v220 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v221 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v221 = sub_1ADDE5178(v221);
            }

            swift_beginAccess();
            v222 = *(v221 + 24);
            *(v221 + 24) = v217;

            sub_1AE1B7530(v221);
            swift_endAccess();
          }
        }
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v242 + 32))(v241, v56, v243);
      v75 = v275;
      swift_beginAccess();
      v76 = *(*(v75 + 24) + 16);
      v77 = v225;
      if ((~v76 & 0xF000000000000007) != 0 && ((v76 >> 59) & 0x1E | (v76 >> 2) & 1) == 0xB)
      {
        v78 = *((v76 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v78 = swift_initStaticObject();
      }

      v163 = v228;
      v164 = v227;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v78 = sub_1ADDE5178(v78);
      }

      swift_beginAccess();
      *(v78 + 16) = 4;
      sub_1AE1B7530(v78);
      v165 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v165);
      v166 = v253;
      *(&v223 - 9) = v255;
      *(&v223 - 8) = v166;
      v167 = v254;
      *(&v223 - 7) = v256;
      *(&v223 - 6) = v167;
      v168 = v257;
      *(&v223 - 10) = v259;
      *(&v223 - 9) = v168;
      *(&v223 - 8) = v258;
      *(&v223 - 7) = v62;
      v169 = v226;
      *(&v223 - 6) = v77;
      *(&v223 - 5) = v169;
      *(&v223 - 4) = v164;
      *(&v223 - 3) = v163;
      v170 = v241;
      *(&v223 - 2) = v241;
      *(&v223 - 1) = a1;
      v171 = v229;
      v172 = sub_1ADE6B938(sub_1ADFFAFC8);
      if (v171)
      {
      }

      else
      {
        v199 = v172;
        swift_beginAccess();
        v200 = *(*(v75 + 24) + 16);
        if ((~v200 & 0xF000000000000007) != 0 && ((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0xB)
        {
          v201 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v201 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v201 = sub_1ADDE5178(v201);
        }

        swift_beginAccess();
        v214 = *(v201 + 24);
        *(v201 + 24) = v199;

        sub_1AE1B7530(v201);
        swift_endAccess();
      }

      v207 = *(v242 + 8);
      v208 = v170;
      v209 = &v262;
      return v207(v208, *(v209 - 32));
    }

    (*(v245 + 32))(v244, v56, v246);
    v92 = v275;
    swift_beginAccess();
    v93 = *(*(v92 + 24) + 16);
    v94 = v225;
    if ((~v93 & 0xF000000000000007) != 0 && ((v93 >> 59) & 0x1E | (v93 >> 2) & 1) == 0xB)
    {
      v95 = *((v93 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      v95 = swift_initStaticObject();
    }

    v173 = v228;
    v174 = v227;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      v95 = sub_1ADDE5178(v95);
    }

    swift_beginAccess();
    *(v95 + 16) = 5;
    sub_1AE1B7530(v95);
    v175 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v175);
    v176 = v253;
    *(&v223 - 9) = v255;
    *(&v223 - 8) = v176;
    v177 = v254;
    *(&v223 - 7) = v256;
    *(&v223 - 6) = v177;
    v178 = v257;
    *(&v223 - 10) = v259;
    *(&v223 - 9) = v178;
    *(&v223 - 8) = v258;
    *(&v223 - 7) = v62;
    v179 = v226;
    *(&v223 - 6) = v94;
    *(&v223 - 5) = v179;
    *(&v223 - 4) = v174;
    *(&v223 - 3) = v173;
    v180 = v244;
    *(&v223 - 2) = v244;
    *(&v223 - 1) = a1;
    v181 = v229;
    v182 = sub_1ADE6B938(sub_1ADFFAF80);
    if (v181)
    {
    }

    else
    {
      v202 = v182;
      swift_beginAccess();
      v203 = *(*(v92 + 24) + 16);
      if ((~v203 & 0xF000000000000007) != 0 && ((v203 >> 59) & 0x1E | (v203 >> 2) & 1) == 0xB)
      {
        v204 = *((v203 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v204 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v204 = sub_1ADDE5178(v204);
      }

      swift_beginAccess();
      v215 = *(v204 + 24);
      *(v204 + 24) = v202;

      sub_1AE1B7530(v204);
      swift_endAccess();
    }

    return (*(v245 + 8))(v180, v246);
  }
}

uint64_t TaggedValue_8<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v93 = a7;
  v103 = a6;
  v91 = a5;
  v102 = a4;
  v90 = a3;
  v105 = a1;
  v95 = *(*(a2 + 72) - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(*(v10 + 64) - 8);
  v11 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(*(v14 + 56) - 8);
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(*(v18 + 48) - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 40);
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v100 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 32);
  v99 = *(v28 - 8);
  v29 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 + 24);
  v98 = *(v34 - 8);
  v35 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 16);
  v97 = *(v40 - 8);
  v41 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = v40;
  *(&v45 + 1) = v34;
  *&v46 = v28;
  *(&v46 + 1) = v23;
  v108 = v46;
  v107 = v45;
  v81 = v47;
  *&v45 = v47;
  v86 = v48;
  *(&v45 + 1) = v48;
  v89 = v49;
  *&v46 = v49;
  v96 = v50;
  *(&v46 + 1) = v50;
  v110 = v46;
  v109 = v45;
  v52 = v51[6];
  v111 = v51[5];
  v112[0] = v52;
  v53 = v51[8];
  v112[1] = v51[7];
  v113 = v53;
  v54 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v81 - v57;
  (*(v59 + 16))(&v81 - v57, v104, v54, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v67 = v38;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v70 = v99;
        (*(v99 + 32))(v32, v58, v28);
        sub_1AE23CBAC();
        return (*(v70 + 8))(v32, v28);
      }

      else
      {
        v78 = v101;
        v79 = v100;
        (*(v101 + 32))(v100, v58, v23);
        sub_1AE23CBAC();
        return (*(v78 + 8))(v79, v23);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v76 = v98;
      v77 = v67;
      (*(v98 + 32))(v67, v58, v34);
      sub_1AE23CBAC();
      return (*(v76 + 8))(v77, v34);
    }

    else
    {
      v68 = v97;
      (*(v97 + 32))(v44, v58, v40);
      sub_1AE23CBAC();
      return (*(v68 + 8))(v44, v40);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v71 = v83;
      v72 = v82;
      v73 = v81;
      (*(v83 + 32))(v82, v58, v81);
      v74 = &v113 + 8;
    }

    else
    {
      v71 = v85;
      v72 = v84;
      v73 = v86;
      (*(v85 + 32))(v84, v58, v86);
      v74 = &v114;
    }

    v80 = *(v74 - 32);
    sub_1AE23CBAC();
    return (*(v71 + 8))(v72, v73);
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v61 = v88;
      v62 = *(v88 + 32);
      v63 = v87;
      v64 = v87;
      v65 = v58;
      v66 = v112 + 8;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v61 = v95;
      v62 = *(v95 + 32);
      v63 = v92;
      v64 = v92;
      v65 = v58;
      v66 = &v115;
LABEL_14:
      v75 = *(v66 - 32);
      v62(v64, v65, v75);
      sub_1AE23CBAC();
      return (*(v61 + 8))(v63, v75);
    }

    (*(**(v58 + 1) + 80))(v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v107);
  }
}

uint64_t sub_1ADFF64B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 56);
  v5 = *(a3 - 64);
  return TaggedValue_8<>.encode(to:)(a1, a2, *(a3 - 8), *(a3 - 16), *(a3 - 24), *(a3 - 32), *(a3 - 40), *(a3 - 48));
}

uint64_t TaggedValue_9.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v169 = a2;
  v179 = a2;
  v180 = a3;
  v172 = a3;
  v170 = a4;
  v181 = a4;
  v182 = a5;
  v174 = a5;
  v171 = a6;
  v183 = a6;
  v184 = a7;
  v175 = a7;
  v173 = a8;
  v185 = a8;
  v186 = a10;
  v165 = a10;
  v167 = a11;
  v187 = a11;
  v188 = a12;
  v158 = a12;
  v160 = a13;
  v189 = a13;
  v190 = a14;
  v159 = a14;
  v163 = a15;
  v191 = a15;
  v192 = a16;
  v161 = a16;
  v164 = a17;
  v193 = a17;
  v194 = a18;
  v162 = a18;
  v166 = a19;
  v195 = a19;
  v196 = a20;
  v168 = a20;
  v22 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v150 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v150 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v150 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v51 = &v150 - v50;
  v52 = *(a1 + 72);
  if (!v52)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v62 = 0xD000000000000017;
    *(v62 + 8) = 0x80000001AE25FB70;
    *(v62 + 16) = 0;
    swift_willThrow();
  }

  v152 = v46;
  v153 = v27;
  v154 = v49;
  v151 = v48;
  v156 = v45;
  v157 = v47;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v177 = a1;
  v155 = inited;
  *(inited + 16) = a1;
  v54 = *(v52 + 16);
  v176 = a9;
  if ((~v54 & 0xF000000000000007) != 0 && ((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v55 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v56 = v55[2];
  if (v56 <= 3)
  {
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        v85 = *(v52 + 16);
        if ((~v85 & 0xF000000000000007) != 0)
        {
          v87 = v176;
          v88 = v177;
          v89 = v178;
          v90 = v170;
          v91 = v159;
          if (((v85 >> 59) & 0x1E | (v85 >> 2) & 1) == 0xB)
          {
            v86 = *((v85 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v86 = &unk_1EB5B9140;
          }
        }

        else
        {
          v86 = &unk_1EB5B9140;
          v87 = v176;
          v88 = v177;
          v89 = v178;
          v90 = v170;
          v91 = v159;
        }

        swift_beginAccess();
        v132 = v86[3];
        if (v132)
        {
          v133 = v132;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v133 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v134 = sub_1ADE0262C(v133, v88);
        (*(*(*(v91 + 8) + 8) + 8))(v134, v90);
        if (!v89)
        {

          v135 = v156;
          swift_storeEnumTagMultiPayload();
          return (*(v157 + 32))(v87, v40, v135);
        }
      }

      else
      {
        v68 = *(v52 + 16);
        if ((~v68 & 0xF000000000000007) != 0)
        {
          v70 = v176;
          v71 = v177;
          v72 = v178;
          if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
          {
            v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v69 = &unk_1EB5B9140;
          }
        }

        else
        {
          v69 = &unk_1EB5B9140;
          v70 = v176;
          v71 = v177;
          v72 = v178;
        }

        swift_beginAccess();
        v120 = v69[3];
        if (v120)
        {
          v121 = v120;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v121 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v122 = sub_1ADE0262C(v121, v71);
        (*(*(*(v163 + 8) + 8) + 8))(v122);
        if (!v72)
        {

          v123 = v156;
          swift_storeEnumTagMultiPayload();
          return (*(v157 + 32))(v70, v37, v123);
        }
      }
    }

    if (v56)
    {
      if (v56 != 1)
      {
        goto LABEL_36;
      }

      v63 = *(v52 + 16);
      if ((~v63 & 0xF000000000000007) != 0)
      {
        v65 = v176;
        v66 = v177;
        v67 = v178;
        if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v64 = &unk_1EB5B9140;
        }
      }

      else
      {
        v64 = &unk_1EB5B9140;
        v65 = v176;
        v66 = v177;
        v67 = v178;
      }

      swift_beginAccess();
      v116 = v64[3];
      if (v116)
      {
        v117 = v116;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v117 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v118 = sub_1ADE0262C(v117, v66);
      (*(*(*(v160 + 8) + 8) + 8))(v118);

      if (!v67)
      {

        v113 = v156;
        swift_storeEnumTagMultiPayload();
        v114 = *(v157 + 32);
        v115 = v65;
        goto LABEL_77;
      }
    }

    else
    {
      v78 = *(v52 + 16);
      if ((~v78 & 0xF000000000000007) != 0)
      {
        v80 = v176;
        v81 = v177;
        v82 = v178;
        v83 = v169;
        v84 = v158;
        if (((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v79 = &unk_1EB5B9140;
        }
      }

      else
      {
        v79 = &unk_1EB5B9140;
        v80 = v176;
        v81 = v177;
        v82 = v178;
        v83 = v169;
        v84 = v158;
      }

      swift_beginAccess();
      v128 = v79[3];
      if (v128)
      {
        v129 = v128;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v129 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v130 = sub_1ADE0262C(v129, v81);
      (*(*(*(v84 + 8) + 8) + 8))(v130, v83);

      if (!v82)
      {

        v131 = v156;
        swift_storeEnumTagMultiPayload();
        return (*(v157 + 32))(v80, v51, v131);
      }
    }
  }

  if (v56 <= 5)
  {
    if (v56 == 4)
    {
      v97 = *(v52 + 16);
      if ((~v97 & 0xF000000000000007) != 0)
      {
        v59 = v176;
        v99 = v177;
        v100 = v178;
        if (((v97 >> 59) & 0x1E | (v97 >> 2) & 1) == 0xB)
        {
          v98 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v98 = &unk_1EB5B9140;
        }
      }

      else
      {
        v98 = &unk_1EB5B9140;
        v59 = v176;
        v99 = v177;
        v100 = v178;
      }

      swift_beginAccess();
      v141 = v98[3];
      if (v141)
      {
        v142 = v141;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v142 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v143 = sub_1ADE0262C(v142, v99);
      (*(*(*(v161 + 8) + 8) + 8))(v143);
      if (!v100)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v73 = *(v52 + 16);
      if ((~v73 & 0xF000000000000007) != 0)
      {
        v75 = v176;
        v76 = v177;
        v77 = v178;
        if (((v73 >> 59) & 0x1E | (v73 >> 2) & 1) == 0xB)
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v74 = &unk_1EB5B9140;
        }
      }

      else
      {
        v74 = &unk_1EB5B9140;
        v75 = v176;
        v76 = v177;
        v77 = v178;
      }

      swift_beginAccess();
      if (v74[3])
      {
        v125 = v74[3];
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v125 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v126 = sub_1ADE0262C(v125, v76);
      (*(*(*(v164 + 8) + 8) + 8))(v126);
      if (!v77)
      {

        v127 = v156;
        swift_storeEnumTagMultiPayload();
        return (*(v157 + 32))(v75, v31, v127);
      }
    }
  }

  switch(v56)
  {
    case 6:
      v92 = *(v52 + 16);
      if ((~v92 & 0xF000000000000007) != 0)
      {
        v94 = v176;
        v95 = v177;
        v96 = v178;
        if (((v92 >> 59) & 0x1E | (v92 >> 2) & 1) == 0xB)
        {
          v93 = *((v92 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v93 = &unk_1EB5B9140;
        }
      }

      else
      {
        v93 = &unk_1EB5B9140;
        v94 = v176;
        v95 = v177;
        v96 = v178;
      }

      swift_beginAccess();
      v136 = v93[3];
      if (v136)
      {
        v137 = v136;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v137 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v138 = sub_1ADE0262C(v137, v95);
      v139 = v152;
      (*(*(*(v162 + 8) + 8) + 8))(v138);
      if (!v96)
      {

        v140 = v156;
        swift_storeEnumTagMultiPayload();
        return (*(v157 + 32))(v94, v139, v140);
      }

    case 7:
      v101 = *(v52 + 16);
      if ((~v101 & 0xF000000000000007) != 0)
      {
        v59 = v176;
        v103 = v177;
        v104 = v178;
        if (((v101 >> 59) & 0x1E | (v101 >> 2) & 1) == 0xB)
        {
          v102 = *((v101 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v102 = &unk_1EB5B9140;
        }
      }

      else
      {
        v102 = &unk_1EB5B9140;
        v59 = v176;
        v103 = v177;
        v104 = v178;
      }

      swift_beginAccess();
      v147 = v102[3];
      if (v147)
      {
        v148 = v147;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v148 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v149 = sub_1ADE0262C(v148, v103);
      v34 = v153;
      (*(*(*(v166 + 8) + 8) + 8))(v149);
      if (!v104)
      {
        goto LABEL_119;
      }

    case 8:
      v57 = *(v52 + 16);
      if ((~v57 & 0xF000000000000007) != 0)
      {
        v59 = v176;
        v60 = v177;
        v61 = v178;
        if (((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xB)
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v58 = &unk_1EB5B9140;
        }
      }

      else
      {
        v58 = &unk_1EB5B9140;
        v59 = v176;
        v60 = v177;
        v61 = v178;
      }

      swift_beginAccess();
      v144 = v58[3];
      if (v144)
      {
        v145 = v144;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v145 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v146 = sub_1ADE0262C(v145, v60);
      v34 = v154;
      (*(*(*(v168 + 8) + 8) + 8))(v146);
      if (!v61)
      {
LABEL_119:

        v113 = v156;
        swift_storeEnumTagMultiPayload();
        v114 = *(v157 + 32);
        v115 = v59;
        v119 = v34;
        return v114(v115, v119, v113);
      }
  }

LABEL_36:
  v105 = *(v52 + 16);
  if ((~v105 & 0xF000000000000007) != 0 && ((v105 >> 59) & 0x1E | (v105 >> 2) & 1) == 0xB)
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v106 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v107 = v106[3];
  if (v107)
  {
    v108 = v107;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v108 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v109 = v177;

  v110 = sub_1ADE0262C(v108, v109);
  v111 = v178;
  AnyCRValue.init(from:)(v110, &v197);

  if (v111)
  {
  }

  v112 = v197;
  v43 = v151;
  *v151 = v56;
  v43[1] = v112;
  v113 = v156;
  swift_storeEnumTagMultiPayload();
  v114 = *(v157 + 32);
  v115 = v176;
LABEL_77:
  v119 = v43;
  return v114(v115, v119, v113);
}

uint64_t TaggedValue_9.encode(to:)(uint64_t a1, uint64_t a2)
{
  v284 = *(*(a2 + 80) - 8);
  v3 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v283 = &v255 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = *(*(v5 + 72) - 8);
  v6 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v280 = &v255 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = *(*(v9 + 64) - 8);
  v10 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v277 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = *(*(v13 + 56) - 8);
  v14 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v273 = &v255 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 48);
  v272 = *(v18 - 8);
  v19 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v271 = &v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 40);
  v269 = *(v23 - 8);
  v24 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v268 = &v255 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = *(*(v26 + 32) - 8);
  v27 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v265 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = *(*(v30 + 24) - 8);
  v31 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v262 = &v255 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 16);
  v261 = *(v35 - 8);
  v36 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v260 = &v255 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 88);
  v41 = *(v39 + 96);
  v43 = *(v39 + 112);
  v42 = *(v39 + 120);
  v44 = *(v39 + 128);
  v45 = *(v39 + 136);
  v47 = *(v39 + 144);
  v46 = *(v39 + 152);
  *&v48 = v35;
  v264 = v49;
  *(&v48 + 1) = v49;
  v267 = v50;
  *&v51 = v50;
  v270 = v52;
  *(&v51 + 1) = v52;
  v274 = v18;
  *&v53 = v18;
  v276 = v54;
  *(&v53 + 1) = v54;
  v279 = v55;
  *&v56 = v55;
  v282 = v57;
  *(&v56 + 1) = v57;
  v285 = v51;
  v296 = v51;
  v287 = v48;
  v295 = v48;
  v286 = v56;
  v298 = v56;
  v288 = v53;
  v297 = v53;
  v293 = v58;
  v299 = v58;
  v300 = v40;
  v289 = v40;
  v290 = v41;
  v301 = v41;
  v291 = v43;
  v302 = v43;
  v303 = v42;
  v292 = v42;
  v304 = v44;
  v305 = v45;
  v306 = v47;
  v307 = v46;
  v59 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = (&v255 - v62);
  v64 = v308;
  result = sub_1ADE71C08();
  if (!v64)
  {
    v255 = v35;
    v259 = result;
    v256 = v44;
    v257 = v47;
    v258 = v46;
    v66 = v293;
    v308 = 0;
    (*(v60 + 16))(v63, v294, v59);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          (*(v275 + 32))(v273, v63, v276);
          v79 = v259;
          swift_beginAccess();
          v80 = *(*(v79 + 24) + 16);
          if ((~v80 & 0xF000000000000007) != 0 && ((v80 >> 59) & 0x1E | (v80 >> 2) & 1) == 0xB)
          {
            inited = *((v80 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            inited = swift_initStaticObject();
          }

          v174 = v66;
          v175 = v256;
          v176 = v292;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            inited = sub_1ADDE5178(inited);
          }

          swift_beginAccess();
          *(inited + 16) = 5;
          sub_1AE1B7530(inited);
          v177 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v177);
          v178 = v285;
          *(&v255 - 10) = v287;
          *(&v255 - 9) = v178;
          v179 = v286;
          *(&v255 - 8) = v288;
          *(&v255 - 7) = v179;
          v180 = v289;
          *(&v255 - 12) = v174;
          *(&v255 - 11) = v180;
          *(&v255 - 5) = v290;
          *(&v255 - 8) = v291;
          *(&v255 - 7) = v176;
          *(&v255 - 6) = v175;
          *(&v255 - 5) = v45;
          v181 = v258;
          *(&v255 - 4) = v257;
          *(&v255 - 3) = v181;
          v182 = v273;
          *(&v255 - 2) = v273;
          *(&v255 - 1) = a1;
          v183 = v308;
          v184 = sub_1ADE6B938(sub_1ADFFB208);
          if (v183)
          {
          }

          else
          {
            v229 = v184;
            swift_beginAccess();
            v230 = *(*(v79 + 24) + 16);
            if ((~v230 & 0xF000000000000007) != 0 && ((v230 >> 59) & 0x1E | (v230 >> 2) & 1) == 0xB)
            {
              v231 = *((v230 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v231 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v231 = sub_1ADDE5178(v231);
            }

            swift_beginAccess();
            v245 = *(v231 + 24);
            *(v231 + 24) = v229;

            sub_1AE1B7530(v231);
            swift_endAccess();
          }

          return (*(v275 + 8))(v182, v276);
        }

        else
        {
          (*(v278 + 32))(v277, v63, v279);
          v99 = v259;
          swift_beginAccess();
          v100 = *(*(v99 + 24) + 16);
          if ((~v100 & 0xF000000000000007) != 0 && ((v100 >> 59) & 0x1E | (v100 >> 2) & 1) == 0xB)
          {
            v101 = *((v100 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v101 = swift_initStaticObject();
          }

          v196 = v66;
          v197 = v256;
          v198 = v292;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v101 = sub_1ADDE5178(v101);
          }

          swift_beginAccess();
          *(v101 + 16) = 6;
          sub_1AE1B7530(v101);
          v199 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v199);
          v200 = v285;
          *(&v255 - 10) = v287;
          *(&v255 - 9) = v200;
          v201 = v286;
          *(&v255 - 8) = v288;
          *(&v255 - 7) = v201;
          v202 = v289;
          *(&v255 - 12) = v196;
          *(&v255 - 11) = v202;
          *(&v255 - 5) = v290;
          *(&v255 - 8) = v291;
          *(&v255 - 7) = v198;
          *(&v255 - 6) = v197;
          *(&v255 - 5) = v45;
          v203 = v258;
          *(&v255 - 4) = v257;
          *(&v255 - 3) = v203;
          v204 = v277;
          *(&v255 - 2) = v277;
          *(&v255 - 1) = a1;
          v205 = v308;
          v206 = sub_1ADE6B938(sub_1ADFFB1C0);
          if (v205)
          {
          }

          else
          {
            v235 = v206;
            swift_beginAccess();
            v236 = *(*(v99 + 24) + 16);
            if ((~v236 & 0xF000000000000007) != 0 && ((v236 >> 59) & 0x1E | (v236 >> 2) & 1) == 0xB)
            {
              v237 = *((v236 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v237 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v237 = sub_1ADDE5178(v237);
            }

            swift_beginAccess();
            v247 = *(v237 + 24);
            *(v237 + 24) = v235;

            sub_1AE1B7530(v237);
            swift_endAccess();
          }

          return (*(v278 + 8))(v204, v279);
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        (*(v281 + 32))(v280, v63, v282);
        v85 = v259;
        swift_beginAccess();
        v86 = *(*(v85 + 24) + 16);
        if ((~v86 & 0xF000000000000007) != 0 && ((v86 >> 59) & 0x1E | (v86 >> 2) & 1) == 0xB)
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v87 = swift_initStaticObject();
        }

        v114 = v66;
        v115 = v256;
        v116 = v292;
        v117 = v291;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v87 = sub_1ADDE5178(v87);
        }

        swift_beginAccess();
        *(v87 + 16) = 7;
        sub_1AE1B7530(v87);
        v118 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v118);
        v119 = v285;
        *(&v255 - 10) = v287;
        *(&v255 - 9) = v119;
        v120 = v286;
        *(&v255 - 8) = v288;
        *(&v255 - 7) = v120;
        v121 = v289;
        *(&v255 - 12) = v114;
        *(&v255 - 11) = v121;
        *(&v255 - 5) = v290;
        *(&v255 - 8) = v117;
        *(&v255 - 7) = v116;
        *(&v255 - 6) = v115;
        *(&v255 - 5) = v45;
        v122 = v258;
        *(&v255 - 4) = v257;
        *(&v255 - 3) = v122;
        v123 = v280;
        *(&v255 - 2) = v280;
        *(&v255 - 1) = a1;
        v124 = v308;
        v125 = sub_1ADE6B938(sub_1ADFFB178);
        if (v124)
        {

          return (*(v281 + 8))(v123, v282);
        }

        else
        {
          v212 = v125;
          swift_beginAccess();
          v213 = *(*(v85 + 24) + 16);
          v214 = v282;
          v215 = v281;
          if ((~v213 & 0xF000000000000007) != 0 && ((v213 >> 59) & 0x1E | (v213 >> 2) & 1) == 0xB)
          {
            v216 = *((v213 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v216 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v216 = sub_1ADDE5178(v216);
          }

          swift_beginAccess();
          v239 = *(v216 + 24);
          *(v216 + 24) = v212;

          sub_1AE1B7530(v216);
          swift_endAccess();

          return (*(v215 + 8))(v123, v214);
        }
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v71 = v66;
        (*(v284 + 32))(v283, v63, v66);
        v72 = v259;
        swift_beginAccess();
        v73 = v72;
        v74 = *(*(v72 + 24) + 16);
        if ((~v74 & 0xF000000000000007) != 0 && ((v74 >> 59) & 0x1E | (v74 >> 2) & 1) == 0xB)
        {
          v75 = *((v74 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v75 = swift_initStaticObject();
        }

        v137 = v258;
        v138 = v257;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v75 = sub_1ADDE5178(v75);
        }

        swift_beginAccess();
        *(v75 + 16) = 8;
        sub_1AE1B7530(v75);
        v139 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v139);
        v140 = v285;
        *(&v255 - 10) = v287;
        *(&v255 - 9) = v140;
        v141 = v286;
        *(&v255 - 8) = v288;
        *(&v255 - 7) = v141;
        v142 = v289;
        *(&v255 - 12) = v71;
        *(&v255 - 11) = v142;
        *(&v255 - 5) = v290;
        v143 = v292;
        *(&v255 - 8) = v291;
        *(&v255 - 7) = v143;
        *(&v255 - 6) = v256;
        *(&v255 - 5) = v45;
        *(&v255 - 4) = v138;
        *(&v255 - 3) = v137;
        v144 = v283;
        *(&v255 - 2) = v283;
        *(&v255 - 1) = a1;
        v145 = v308;
        v146 = sub_1ADE6B938(sub_1ADFFB130);
        if (v145)
        {

          return (*(v284 + 8))(v144, v71);
        }

        else
        {
          v220 = v146;
          swift_beginAccess();
          v221 = *(*(v73 + 24) + 16);
          if ((~v221 & 0xF000000000000007) != 0 && ((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0xB)
          {
            v222 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v222 = swift_initStaticObject();
          }

          v241 = v284;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v222 = sub_1ADDE5178(v222);
          }

          swift_beginAccess();
          v242 = *(v222 + 24);
          *(v222 + 24) = v220;

          sub_1AE1B7530(v222);
          swift_endAccess();

          return (*(v241 + 8))(v144, v71);
        }
      }

      else
      {
        v92 = *v63;
        v91 = v63[1];
        v93 = v259;
        swift_beginAccess();
        v94 = *(*(v93 + 24) + 16);
        if ((~v94 & 0xF000000000000007) != 0 && ((v94 >> 59) & 0x1E | (v94 >> 2) & 1) == 0xB)
        {
          v95 = *((v94 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v95 = swift_initStaticObject();
        }

        v158 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v95 = sub_1ADDE5178(v95);
        }

        swift_beginAccess();
        *(v95 + 16) = v92;
        sub_1AE1B7530(v95);
        swift_endAccess();
        v160 = *(a1 + 112);
        v159 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v161 = v308;
        (*(*v91 + 152))(a1);
        if (v161)
        {
        }

        else
        {
          v248 = sub_1ADE71C08();
          swift_beginAccess();
          v249 = *(v248 + 24);
          v250 = *(v158 + 112);
          *(v158 + 112) = v160;

          v251 = *(v158 + 120);
          *(v158 + 120) = v159;

          swift_beginAccess();
          v252 = *(*(v93 + 24) + 16);
          if ((~v252 & 0xF000000000000007) != 0 && ((v252 >> 59) & 0x1E | (v252 >> 2) & 1) == 0xB)
          {
            v253 = *((v252 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v253 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v253 = sub_1ADDE5178(v253);
          }

          swift_beginAccess();
          v254 = *(v253 + 24);
          *(v253 + 24) = v249;

          sub_1AE1B7530(v253);
          swift_endAccess();
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v263 + 32))(v262, v63, v264);
        v96 = v259;
        swift_beginAccess();
        v97 = *(*(v96 + 24) + 16);
        if ((~v97 & 0xF000000000000007) != 0 && ((v97 >> 59) & 0x1E | (v97 >> 2) & 1) == 0xB)
        {
          v98 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v98 = swift_initStaticObject();
        }

        v185 = v66;
        v186 = v256;
        v187 = v292;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v98 = sub_1ADDE5178(v98);
        }

        swift_beginAccess();
        *(v98 + 16) = 1;
        sub_1AE1B7530(v98);
        v188 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v188);
        v189 = v285;
        *(&v255 - 10) = v287;
        *(&v255 - 9) = v189;
        v190 = v286;
        *(&v255 - 8) = v288;
        *(&v255 - 7) = v190;
        v191 = v289;
        *(&v255 - 12) = v185;
        *(&v255 - 11) = v191;
        *(&v255 - 5) = v290;
        *(&v255 - 8) = v291;
        *(&v255 - 7) = v187;
        *(&v255 - 6) = v186;
        *(&v255 - 5) = v45;
        v192 = v258;
        *(&v255 - 4) = v257;
        *(&v255 - 3) = v192;
        v193 = v262;
        *(&v255 - 2) = v262;
        *(&v255 - 1) = a1;
        v194 = v308;
        v195 = sub_1ADE6B938(sub_1ADFFB328);
        if (v194)
        {
        }

        else
        {
          v232 = v195;
          swift_beginAccess();
          v233 = *(*(v96 + 24) + 16);
          if ((~v233 & 0xF000000000000007) != 0 && ((v233 >> 59) & 0x1E | (v233 >> 2) & 1) == 0xB)
          {
            v234 = *((v233 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v234 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v234 = sub_1ADDE5178(v234);
          }

          swift_beginAccess();
          v246 = *(v234 + 24);
          *(v234 + 24) = v232;

          sub_1AE1B7530(v234);
          swift_endAccess();
        }

        return (*(v263 + 8))(v193, v264);
      }

      else
      {
        (*(v261 + 32))(v260, v63, v255);
        v76 = v259;
        swift_beginAccess();
        v77 = *(*(v76 + 24) + 16);
        if ((~v77 & 0xF000000000000007) != 0 && ((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0xB)
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v78 = swift_initStaticObject();
        }

        v162 = v66;
        v163 = v256;
        v164 = v292;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v78 = sub_1ADDE5178(v78);
        }

        swift_beginAccess();
        *(v78 + 16) = 0;
        sub_1AE1B7530(v78);
        v165 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v165);
        v166 = v285;
        *(&v255 - 10) = v287;
        *(&v255 - 9) = v166;
        v167 = v286;
        *(&v255 - 8) = v288;
        *(&v255 - 7) = v167;
        *&v168 = v162;
        *(&v168 + 1) = v289;
        v169 = v290;
        *(&v255 - 6) = v168;
        *(&v255 - 5) = v169;
        *(&v255 - 8) = v291;
        *(&v255 - 7) = v164;
        *(&v255 - 6) = v163;
        *(&v255 - 5) = v45;
        v170 = v258;
        *(&v255 - 4) = v257;
        *(&v255 - 3) = v170;
        v171 = v260;
        *(&v255 - 2) = v260;
        *(&v255 - 1) = a1;
        v172 = v308;
        v173 = sub_1ADE6B938(sub_1ADFFB370);
        if (v172)
        {
        }

        else
        {
          v226 = v173;
          swift_beginAccess();
          v227 = *(*(v76 + 24) + 16);
          if ((~v227 & 0xF000000000000007) != 0 && ((v227 >> 59) & 0x1E | (v227 >> 2) & 1) == 0xB)
          {
            v228 = *((v227 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v228 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v228 = sub_1ADDE5178(v228);
          }

          swift_beginAccess();
          v244 = *(v228 + 24);
          *(v228 + 24) = v226;

          sub_1AE1B7530(v228);
          swift_endAccess();
        }

        return (*(v261 + 8))(v171, v255);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      (*(v266 + 32))(v265, v63, v267);
      v82 = v259;
      swift_beginAccess();
      v83 = *(*(v82 + 24) + 16);
      if ((~v83 & 0xF000000000000007) != 0 && ((v83 >> 59) & 0x1E | (v83 >> 2) & 1) == 0xB)
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v84 = swift_initStaticObject();
      }

      v102 = v66;
      v103 = v256;
      v104 = v292;
      v105 = v291;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v84 = sub_1ADDE5178(v84);
      }

      swift_beginAccess();
      *(v84 + 16) = 2;
      sub_1AE1B7530(v84);
      v106 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v106);
      v107 = v285;
      *(&v255 - 10) = v287;
      *(&v255 - 9) = v107;
      v108 = v286;
      *(&v255 - 8) = v288;
      *(&v255 - 7) = v108;
      v109 = v289;
      *(&v255 - 12) = v102;
      *(&v255 - 11) = v109;
      *(&v255 - 5) = v290;
      *(&v255 - 8) = v105;
      *(&v255 - 7) = v104;
      *(&v255 - 6) = v103;
      *(&v255 - 5) = v45;
      v110 = v258;
      *(&v255 - 4) = v257;
      *(&v255 - 3) = v110;
      v111 = v265;
      *(&v255 - 2) = v265;
      *(&v255 - 1) = a1;
      v112 = v308;
      v113 = sub_1ADE6B938(sub_1ADFFB2E0);
      if (v112)
      {

        return (*(v266 + 8))(v111, v267);
      }

      else
      {
        v207 = v113;
        swift_beginAccess();
        v208 = *(*(v82 + 24) + 16);
        v209 = v267;
        v210 = v266;
        if ((~v208 & 0xF000000000000007) != 0 && ((v208 >> 59) & 0x1E | (v208 >> 2) & 1) == 0xB)
        {
          v211 = *((v208 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v211 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v211 = sub_1ADDE5178(v211);
        }

        swift_beginAccess();
        v238 = *(v211 + 24);
        *(v211 + 24) = v207;

        sub_1AE1B7530(v211);
        swift_endAccess();

        return (*(v210 + 8))(v111, v209);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      (*(v269 + 32))(v268, v63, v270);
      v68 = v259;
      swift_beginAccess();
      v69 = *(*(v68 + 24) + 16);
      if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 0xB)
      {
        v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v70 = swift_initStaticObject();
      }

      v126 = v66;
      v127 = v256;
      v128 = v292;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v70 = sub_1ADDE5178(v70);
      }

      swift_beginAccess();
      *(v70 + 16) = 3;
      sub_1AE1B7530(v70);
      v129 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v129);
      v130 = v285;
      *(&v255 - 10) = v287;
      *(&v255 - 9) = v130;
      v131 = v286;
      *(&v255 - 8) = v288;
      *(&v255 - 7) = v131;
      v132 = v289;
      *(&v255 - 12) = v126;
      *(&v255 - 11) = v132;
      *(&v255 - 5) = v290;
      *(&v255 - 8) = v291;
      *(&v255 - 7) = v128;
      *(&v255 - 6) = v127;
      *(&v255 - 5) = v45;
      v133 = v258;
      *(&v255 - 4) = v257;
      *(&v255 - 3) = v133;
      v134 = v268;
      *(&v255 - 2) = v268;
      *(&v255 - 1) = a1;
      v135 = v308;
      v136 = sub_1ADE6B938(sub_1ADFFB298);
      if (v135)
      {
      }

      else
      {
        v217 = v136;
        swift_beginAccess();
        v218 = *(*(v68 + 24) + 16);
        if ((~v218 & 0xF000000000000007) != 0 && ((v218 >> 59) & 0x1E | (v218 >> 2) & 1) == 0xB)
        {
          v219 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v219 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v219 = sub_1ADDE5178(v219);
        }

        swift_beginAccess();
        v240 = *(v219 + 24);
        *(v219 + 24) = v217;

        sub_1AE1B7530(v219);
        swift_endAccess();
      }

      return (*(v269 + 8))(v134, v270);
    }

    else
    {
      (*(v272 + 32))(v271, v63, v274);
      v88 = v259;
      swift_beginAccess();
      v89 = *(*(v88 + 24) + 16);
      if ((~v89 & 0xF000000000000007) != 0 && ((v89 >> 59) & 0x1E | (v89 >> 2) & 1) == 0xB)
      {
        v90 = *((v89 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v90 = swift_initStaticObject();
      }

      v147 = v66;
      v148 = v256;
      v149 = v292;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v90 = sub_1ADDE5178(v90);
      }

      swift_beginAccess();
      *(v90 + 16) = 4;
      sub_1AE1B7530(v90);
      v150 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v150);
      v151 = v285;
      *(&v255 - 10) = v287;
      *(&v255 - 9) = v151;
      v152 = v286;
      *(&v255 - 8) = v288;
      *(&v255 - 7) = v152;
      v153 = v289;
      *(&v255 - 12) = v147;
      *(&v255 - 11) = v153;
      *(&v255 - 5) = v290;
      *(&v255 - 8) = v291;
      *(&v255 - 7) = v149;
      *(&v255 - 6) = v148;
      *(&v255 - 5) = v45;
      v154 = v258;
      *(&v255 - 4) = v257;
      *(&v255 - 3) = v154;
      v155 = v271;
      *(&v255 - 2) = v271;
      *(&v255 - 1) = a1;
      v156 = v308;
      v157 = sub_1ADE6B938(sub_1ADFFB250);
      if (v156)
      {
      }

      else
      {
        v223 = v157;
        swift_beginAccess();
        v224 = *(*(v88 + 24) + 16);
        if ((~v224 & 0xF000000000000007) != 0 && ((v224 >> 59) & 0x1E | (v224 >> 2) & 1) == 0xB)
        {
          v225 = *((v224 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v225 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v225 = sub_1ADDE5178(v225);
        }

        swift_beginAccess();
        v243 = *(v225 + 24);
        *(v225 + 24) = v223;

        sub_1AE1B7530(v225);
        swift_endAccess();
      }

      return (*(v272 + 8))(v155, v274);
    }
  }

  return result;
}

uint64_t TaggedValue_9<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a8;
  v110 = a7;
  v109 = a6;
  v106 = a5;
  v105 = a4;
  v104 = a3;
  v113 = a1;
  v108 = *(*(a2 + 80) - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v103 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(*(v10 + 72) - 8);
  v11 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(*(v14 + 64) - 8);
  v15 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  v95 = *(v19 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 48);
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 40);
  v91 = *(v29 - 8);
  v30 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v90 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 + 32);
  v89 = *(v34 - 8);
  v35 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v88 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v38 + 24);
  v87 = *(v39 - 8);
  v40 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v44 + 16);
  v86 = *(v45 - 8);
  v46 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v85 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = v45;
  *(&v50 + 1) = v39;
  v52 = *(v51 + 152);
  *&v53 = v34;
  *(&v53 + 1) = v29;
  v116 = v53;
  v115 = v50;
  *&v50 = v24;
  v96 = v19;
  *(&v50 + 1) = v19;
  v99 = v54;
  *&v53 = v54;
  v102 = v55;
  *(&v53 + 1) = v55;
  v118 = v53;
  v117 = v50;
  v111 = v56;
  v119 = v56;
  v57 = *(v51 + 104);
  v120 = *(v51 + 88);
  v121 = v57;
  *(v58 + 104) = *(v51 + 120);
  *(v58 + 120) = *(v51 + 136);
  v124 = v52;
  v59 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v85 - v62;
  (*(v64 + 16))(&v85 - v62, v112, v59, v61);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v76 = v95;
        v77 = v94;
        v78 = v96;
        (*(v95 + 32))(v94, v63, v96);
        sub_1AE23CBAC();
        return (*(v76 + 8))(v77, v78);
      }

      v69 = v98;
      v70 = *(v98 + 32);
      v71 = v97;
      v72 = v97;
      v73 = v63;
      v74 = &v122;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v69 = v101;
      v70 = *(v101 + 32);
      v71 = v100;
      v72 = v100;
      v73 = v63;
      v74 = &v123;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        (*(**(v63 + 1) + 80))(v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        sub_1AE23CBAC();
        __swift_destroy_boxed_opaque_existential_1(&v115);
      }

      v69 = v108;
      v70 = *(v108 + 32);
      v71 = v103;
      v72 = v103;
      v73 = v63;
      v74 = &v125;
    }

    v84 = *(v74 - 32);
    v70(v72, v73, v84);
    sub_1AE23CBAC();
    return (*(v69 + 8))(v71, v84);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v83 = v87;
      (*(v87 + 32))(v43, v63, v39);
      sub_1AE23CBAC();
      return (*(v83 + 8))(v43, v39);
    }

    else
    {
      v75 = v86;
      (*(v86 + 32))(v49, v63, v45);
      sub_1AE23CBAC();
      return (*(v75 + 8))(v49, v45);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v79 = v89;
    v80 = v88;
    (*(v89 + 32))(v88, v63, v34);
    sub_1AE23CBAC();
    return (*(v79 + 8))(v80, v34);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v66 = v91;
    v67 = v90;
    (*(v91 + 32))(v90, v63, v29);
    sub_1AE23CBAC();
    return (*(v66 + 8))(v67, v29);
  }

  else
  {
    v81 = v93;
    v82 = v92;
    (*(v93 + 32))(v92, v63, v24);
    sub_1AE23CBAC();
    return (*(v81 + 8))(v82, v24);
  }
}

uint64_t sub_1ADFFA5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 64);
  v6 = *(a3 - 72);
  v4 = *(a3 - 56);
  return TaggedValue_9<>.encode(to:)(a1, a2, *(a3 - 8), *(a3 - 16), *(a3 - 24), *(a3 - 32), *(a3 - 40), *(a3 - 48));
}

uint64_t sub_1ADFFB3B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB430(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB46C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB4A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB4E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB55C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB598(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for TaggedValue_1.TaggedEnum();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFB644(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1ADFFB75C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1ADFFB92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1ADFFB9A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1ADFFB9A4()
{
  if (!qword_1EB5B95D0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EB5B95D0);
    }
  }
}

uint64_t sub_1ADFFBA04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFBA84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 < 2)
    {
LABEL_23:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_12:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1ADFFBBCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_37:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v9] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_22;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1ADFFBD9C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = type metadata accessor for TaggedValue_2.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFBE14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 16;
  if (v3 > 0x10)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_1ADFFBF48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_1ADFFC134(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1ADFFB9A4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ADFFC1C4(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[5] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFFC278(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[4] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[5] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      v19 = *(a1 + v12);
      if (v19 >= 4)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 253;
}

void sub_1ADFFC418(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[4] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[5] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 252) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADFFC638(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  result = type metadata accessor for TaggedValue_3.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFC6B8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = 16;
  if (v3 > 0x10)
  {
    v6 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 252) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_29:
      v13 = *(a1 + v6);
      if (v13 >= 4)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 253;
}

void sub_1ADFFC80C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v7 = v5 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_43:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v5] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_28;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

void sub_1ADFFCA18(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        sub_1ADFFB9A4();
        if (v8 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1ADFFCAC0(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[6] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[7] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFCBA4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[5] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[6] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[7] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_28;
  }

  v16 = v15 + 1;
  v17 = 8 * (v15 + 1);
  if ((v15 + 1) <= 3)
  {
    v20 = ((a2 + ~(-1 << v17) - 251) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_28:
      v22 = *(a1 + v15);
      if (v22 >= 5)
      {
        return (v22 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v16) = *a1;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v16) = *a1;
    }

    else
    {
      LODWORD(v16) = *a1;
    }
  }

  return (v16 | v21) + 252;
}

void sub_1ADFFCD7C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[5] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[6] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[7] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 <= v10)
  {
    v16 = v10;
  }

  v17 = v16 + 1;
  if (a3 < 0xFC)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 + ~(-1 << (8 * v17)) - 251) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (a2 > 0xFB)
  {
    v19 = a2 - 252;
    if (v17 >= 4)
    {
      bzero(a1, v16 + 1);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v20 = (v19 >> (8 * v17)) + 1;
    if (v16 != -1)
    {
      v23 = v19 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v23;
          if (v18 > 1)
          {
LABEL_41:
            if (v18 == 2)
            {
              *&a1[v17] = v20;
            }

            else
            {
              *&a1[v17] = v20;
            }

            return;
          }
        }

        else
        {
          *a1 = v19;
          if (v18 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v18)
        {
          a1[v17] = v20;
        }

        return;
      }

      *a1 = v23;
      a1[2] = BYTE2(v23);
    }

    if (v18 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v18 <= 1)
  {
    if (v18)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v16] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v18 == 2)
  {
    *&a1[v17] = 0;
    goto LABEL_26;
  }

  *&a1[v17] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1ADFFCFD4(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = type metadata accessor for TaggedValue_4.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFD054(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = 16;
  if (v3 > 0x10)
  {
    v7 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 251) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v12 < 2)
    {
LABEL_31:
      v14 = *(a1 + v7);
      if (v14 >= 5)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_31;
  }

LABEL_20:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 252;
}

void sub_1ADFFD1C8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v8 = v5 + 1;
  if (a3 < 0xFC)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 251) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFB)
  {
    v10 = a2 - 252;
    if (v8 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v5 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_45:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v5] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_30;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

void sub_1ADFFD3F4(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          sub_1ADFFB9A4();
          if (v10 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFD4B4(void *a1)
{
  v2 = *(a1[6] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[7] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[8] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[9] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFD5C8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[6] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[7] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[8] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[9] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_30;
  }

  v19 = v18 + 1;
  v20 = 8 * (v18 + 1);
  if ((v18 + 1) <= 3)
  {
    v23 = ((a2 + ~(-1 << v20) - 250) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v23 < 2)
    {
LABEL_30:
      v25 = *(a1 + v18);
      if (v25 >= 6)
      {
        return (v25 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_19:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v19) = *a1;
      }
    }

    else if (v19 == 1)
    {
      LODWORD(v19) = *a1;
    }

    else
    {
      LODWORD(v19) = *a1;
    }
  }

  return (v19 | v24) + 251;
}

void sub_1ADFFD7D8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[6] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[7] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[8] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[9] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 <= v10)
  {
    v19 = v10;
  }

  v20 = v19 + 1;
  if (a3 < 0xFB)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 + ~(-1 << (8 * v20)) - 250) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (a2 > 0xFA)
  {
    v22 = a2 - 251;
    if (v20 >= 4)
    {
      bzero(a1, v19 + 1);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v23 = (v22 >> (8 * v20)) + 1;
    if (v19 != -1)
    {
      v26 = v22 & ~(-1 << (8 * v20));
      bzero(a1, v20);
      if (v20 != 3)
      {
        if (v20 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
LABEL_43:
            if (v21 == 2)
            {
              *&a1[v20] = v23;
            }

            else
            {
              *&a1[v20] = v23;
            }

            return;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v21)
        {
          a1[v20] = v23;
        }

        return;
      }

      *a1 = v26;
      a1[2] = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v19] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v21 == 2)
  {
    *&a1[v20] = 0;
    goto LABEL_28;
  }

  *&a1[v20] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1ADFFDA68(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = type metadata accessor for TaggedValue_5.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFDAF0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[6] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = 16;
  if (v3 > 0x10)
  {
    v8 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_33;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 250) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 < 2)
    {
LABEL_33:
      v15 = *(a1 + v8);
      if (v15 >= 6)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_33;
  }

LABEL_22:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 251;
}

void sub_1ADFFDC84(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  v6 = *(a4[4] - 8);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[6] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v9 = v5 + 1;
  if (a3 < 0xFB)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 250) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFA)
  {
    v11 = a2 - 251;
    if (v9 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v5 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_47:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_44:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      a1[v5] = -a2;
      return;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_32;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_33;
  }
}

void sub_1ADFFDED0(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            sub_1ADFFB9A4();
            if (v12 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFDFA8(void *a1)
{
  v2 = *(a1[7] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[8] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[9] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[10] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          v15 = *(a1[11] + 8);
          v16 = a1[6];
          result = swift_getAssociatedTypeWitness();
          if (v17 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFE0EC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[7] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[8] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[9] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[10] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 > v8)
  {
    v8 = v17;
  }

  v18 = *(a3[11] + 8);
  v19 = a3[6];
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 <= v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_32;
  }

  v22 = v21 + 1;
  v23 = 8 * (v21 + 1);
  if ((v21 + 1) <= 3)
  {
    v26 = ((a2 + ~(-1 << v23) - 249) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_32:
      v28 = *(a1 + v21);
      if (v28 >= 7)
      {
        return (v28 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_32;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 > 3)
    {
      LODWORD(v22) = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v22) = *a1;
      }
    }

    else if (v22 == 1)
    {
      LODWORD(v22) = *a1;
    }

    else
    {
      LODWORD(v22) = *a1;
    }
  }

  return (v22 | v27) + 250;
}

void sub_1ADFFE334(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[7] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[8] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[9] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[10] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 > v10)
  {
    v10 = v19;
  }

  v20 = *(a4[11] + 8);
  v21 = a4[6];
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 <= v10)
  {
    v22 = v10;
  }

  v23 = v22 + 1;
  if (a3 < 0xFA)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 + ~(-1 << (8 * v23)) - 249) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (a2 > 0xF9)
  {
    v25 = a2 - 250;
    if (v23 >= 4)
    {
      bzero(a1, v22 + 1);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v26 = (v25 >> (8 * v23)) + 1;
    if (v22 != -1)
    {
      v29 = v25 & ~(-1 << (8 * v23));
      bzero(a1, v23);
      if (v23 != 3)
      {
        if (v23 == 2)
        {
          *a1 = v29;
          if (v24 > 1)
          {
LABEL_45:
            if (v24 == 2)
            {
              *&a1[v23] = v26;
            }

            else
            {
              *&a1[v23] = v26;
            }

            return;
          }
        }

        else
        {
          *a1 = v25;
          if (v24 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v24)
        {
          a1[v23] = v26;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v24 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v22] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_30;
  }

  *&a1[v23] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_1ADFFE5FC(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  result = type metadata accessor for TaggedValue_6.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFE684(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[6] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[7] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = 16;
  if (v3 > 0x10)
  {
    v9 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_35;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 249) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v14 < 2)
    {
LABEL_35:
      v16 = *(a1 + v9);
      if (v16 >= 7)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_35;
  }

LABEL_24:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 250;
}

void sub_1ADFFE838(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[5] - 8);
  if (*(*(a4[4] - 8) + 64) > v5)
  {
    v5 = *(*(a4[4] - 8) + 64);
  }

  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[6] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v9 = v5 + 1;
  if (a3 < 0xFA)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 249) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xF9)
  {
    v11 = a2 - 250;
    if (v9 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v5 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_49:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v5] = -a2;
      return;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_34;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_35;
  }
}

void sub_1ADFFEAA0(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            v12 = a1[7];
            swift_checkMetadataState();
            if (v13 <= 0x3F)
            {
              sub_1ADFFB9A4();
              if (v14 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFEB90(void *a1)
{
  v2 = *(a1[8] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[9] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[10] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[11] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          v15 = *(a1[12] + 8);
          v16 = a1[6];
          result = swift_getAssociatedTypeWitness();
          if (v17 <= 0x3F)
          {
            v18 = *(a1[13] + 8);
            v19 = a1[7];
            result = swift_getAssociatedTypeWitness();
            if (v20 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFED04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[8] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[9] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[10] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[11] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 > v8)
  {
    v8 = v17;
  }

  v18 = *(a3[12] + 8);
  v19 = a3[6];
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 > v8)
  {
    v8 = v20;
  }

  v21 = *(a3[13] + 8);
  v22 = a3[7];
  v23 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v23 <= v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = v23;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_34;
  }

  v25 = v24 + 1;
  v26 = 8 * (v24 + 1);
  if ((v24 + 1) <= 3)
  {
    v29 = ((a2 + ~(-1 << v26) - 248) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v29 < 2)
    {
LABEL_34:
      v31 = *(a1 + v24);
      if (v31 >= 8)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_34;
  }

LABEL_23:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return (v25 | v30) + 249;
}

void sub_1ADFFEF84(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[8] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[9] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[10] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[11] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 > v10)
  {
    v10 = v19;
  }

  v20 = *(a4[12] + 8);
  v21 = a4[6];
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 > v10)
  {
    v10 = v22;
  }

  v23 = *(a4[13] + 8);
  v24 = a4[7];
  v25 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v25 <= v10)
  {
    v25 = v10;
  }

  v26 = v25 + 1;
  if (a3 < 0xF9)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 + ~(-1 << (8 * v26)) - 248) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (a2 > 0xF8)
  {
    v28 = a2 - 249;
    if (v26 >= 4)
    {
      bzero(a1, v25 + 1);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v29 = (v28 >> (8 * v26)) + 1;
    if (v25 != -1)
    {
      v32 = v28 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v32;
          if (v27 > 1)
          {
LABEL_47:
            if (v27 == 2)
            {
              *&a1[v26] = v29;
            }

            else
            {
              *&a1[v26] = v29;
            }

            return;
          }
        }

        else
        {
          *a1 = v28;
          if (v27 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_44:
        if (v27)
        {
          a1[v26] = v29;
        }

        return;
      }

      *a1 = v32;
      a1[2] = BYTE2(v32);
    }

    if (v27 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      a1[v25] = -a2;
      return;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v27 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_32;
  }

  *&a1[v26] = 0;
  if (a2)
  {
    goto LABEL_33;
  }
}

uint64_t sub_1ADFFF284(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  result = type metadata accessor for TaggedValue_7.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFF314(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[4] - 8);
  if (*(*(a3[3] - 8) + 64) > v3)
  {
    v3 = *(*(a3[3] - 8) + 64);
  }

  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[5] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = 16;
  if (v3 > 0x10)
  {
    v9 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_37;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 248) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 < 2)
    {
LABEL_37:
      v16 = *(a1 + v9);
      if (v16 >= 8)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_37;
  }

LABEL_26:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 249;
}

void sub_1ADFFF4E8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[6] - 8);
  if (*(*(a4[5] - 8) + 64) > v5)
  {
    v5 = *(*(a4[5] - 8) + 64);
  }

  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v10 = v5 + 1;
  if (a3 < 0xF9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 248) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xF8)
  {
    v12 = a2 - 249;
    if (v10 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v5 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_51:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_51;
          }
        }

LABEL_48:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      a1[v5] = -a2;
      return;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_36;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_37;
  }
}

void sub_1ADFFF770(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            v12 = a1[7];
            swift_checkMetadataState();
            if (v13 <= 0x3F)
            {
              v14 = a1[8];
              swift_checkMetadataState();
              if (v15 <= 0x3F)
              {
                sub_1ADFFB9A4();
                if (v16 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFF878(void *a1)
{
  v2 = *(a1[9] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[10] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[11] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[12] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          v15 = *(a1[13] + 8);
          v16 = a1[6];
          result = swift_getAssociatedTypeWitness();
          if (v17 <= 0x3F)
          {
            v18 = *(a1[14] + 8);
            v19 = a1[7];
            result = swift_getAssociatedTypeWitness();
            if (v20 <= 0x3F)
            {
              v21 = *(a1[15] + 8);
              v22 = a1[8];
              result = swift_getAssociatedTypeWitness();
              if (v23 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFFA1C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[9] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[10] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[11] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[12] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 > v8)
  {
    v8 = v17;
  }

  v18 = *(a3[13] + 8);
  v19 = a3[6];
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 > v8)
  {
    v8 = v20;
  }

  v21 = *(a3[14] + 8);
  v22 = a3[7];
  v23 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v23 > v8)
  {
    v8 = v23;
  }

  v24 = *(a3[15] + 8);
  v25 = a3[8];
  v26 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v26 <= v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = v26;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_36;
  }

  v28 = v27 + 1;
  v29 = 8 * (v27 + 1);
  if ((v27 + 1) <= 3)
  {
    v32 = ((a2 + ~(-1 << v29) - 247) >> v29) + 1;
    if (HIWORD(v32))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v32 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v32 < 2)
    {
LABEL_36:
      v34 = *(a1 + v27);
      if (v34 >= 9)
      {
        return (v34 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_36;
  }

LABEL_25:
  v33 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v33 = 0;
  }

  if (v28)
  {
    if (v28 > 3)
    {
      LODWORD(v28) = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        LODWORD(v28) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v28) = *a1;
      }
    }

    else if (v28 == 1)
    {
      LODWORD(v28) = *a1;
    }

    else
    {
      LODWORD(v28) = *a1;
    }
  }

  return (v28 | v33) + 248;
}

void sub_1ADFFFCD4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[9] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[10] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[11] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[12] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 > v10)
  {
    v10 = v19;
  }

  v20 = *(a4[13] + 8);
  v21 = a4[6];
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 > v10)
  {
    v10 = v22;
  }

  v23 = *(a4[14] + 8);
  v24 = a4[7];
  v25 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v25 > v10)
  {
    v10 = v25;
  }

  v26 = *(a4[15] + 8);
  v27 = a4[8];
  v28 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v28 <= v10)
  {
    v28 = v10;
  }

  v29 = v28 + 1;
  if (a3 < 0xF8)
  {
    v30 = 0;
  }

  else if (v29 <= 3)
  {
    v33 = ((a3 + ~(-1 << (8 * v29)) - 247) >> (8 * v29)) + 1;
    if (HIWORD(v33))
    {
      v30 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  if (a2 > 0xF7)
  {
    v31 = a2 - 248;
    if (v29 >= 4)
    {
      bzero(a1, v28 + 1);
      *a1 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v32 = (v31 >> (8 * v29)) + 1;
    if (v28 != -1)
    {
      v35 = v31 & ~(-1 << (8 * v29));
      bzero(a1, v29);
      if (v29 != 3)
      {
        if (v29 == 2)
        {
          *a1 = v35;
          if (v30 > 1)
          {
LABEL_49:
            if (v30 == 2)
            {
              *&a1[v29] = v32;
            }

            else
            {
              *&a1[v29] = v32;
            }

            return;
          }
        }

        else
        {
          *a1 = v31;
          if (v30 > 1)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        if (v30)
        {
          a1[v29] = v32;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v30 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v30 <= 1)
  {
    if (v30)
    {
      a1[v29] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v28] = -a2;
      return;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v30 == 2)
  {
    *&a1[v29] = 0;
    goto LABEL_34;
  }

  *&a1[v29] = 0;
  if (a2)
  {
    goto LABEL_35;
  }
}

uint64_t sub_1AE00000C(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  result = type metadata accessor for TaggedValue_8.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE00009C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[5] - 8);
  if (*(*(a3[4] - 8) + 64) > v3)
  {
    v3 = *(*(a3[4] - 8) + 64);
  }

  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = *(a3[9] - 8);
  if (*(v9 + 64) > v3)
  {
    v3 = *(v9 + 64);
  }

  v10 = 16;
  if (v3 > 0x10)
  {
    v10 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_39;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 247) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v15 < 2)
    {
LABEL_39:
      v17 = *(a1 + v10);
      if (v17 >= 9)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_39;
  }

LABEL_28:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 248;
}

void sub_1AE00028C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(*(a4[6] - 8) + 64) > v5)
  {
    v5 = *(*(a4[6] - 8) + 64);
  }

  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  v10 = *(a4[9] - 8);
  if (*(v10 + 64) > v5)
  {
    v5 = *(v10 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v11 = v5 + 1;
  if (a3 < 0xF8)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 247) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xF7)
  {
    v13 = a2 - 248;
    if (v11 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v5 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_53:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v5] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_38;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1AE000534(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            v12 = a1[7];
            swift_checkMetadataState();
            if (v13 <= 0x3F)
            {
              v14 = a1[8];
              swift_checkMetadataState();
              if (v15 <= 0x3F)
              {
                v16 = a1[9];
                swift_checkMetadataState();
                if (v17 <= 0x3F)
                {
                  sub_1ADFFB9A4();
                  if (v18 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AE000654(void *a1)
{
  v2 = *(a1[10] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[11] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[12] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[13] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          v15 = *(a1[14] + 8);
          v16 = a1[6];
          result = swift_getAssociatedTypeWitness();
          if (v17 <= 0x3F)
          {
            v18 = *(a1[15] + 8);
            v19 = a1[7];
            result = swift_getAssociatedTypeWitness();
            if (v20 <= 0x3F)
            {
              v21 = *(a1[16] + 8);
              v22 = a1[8];
              result = swift_getAssociatedTypeWitness();
              if (v23 <= 0x3F)
              {
                v24 = *(a1[17] + 8);
                v25 = a1[9];
                result = swift_getAssociatedTypeWitness();
                if (v26 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE000828(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[10] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[11] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[12] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[13] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 > v8)
  {
    v8 = v17;
  }

  v18 = *(a3[14] + 8);
  v19 = a3[6];
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 > v8)
  {
    v8 = v20;
  }

  v21 = *(a3[15] + 8);
  v22 = a3[7];
  v23 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v23 > v8)
  {
    v8 = v23;
  }

  v24 = *(a3[16] + 8);
  v25 = a3[8];
  v26 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v26 > v8)
  {
    v8 = v26;
  }

  v27 = *(a3[17] + 8);
  v28 = a3[9];
  v29 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v29 <= v8)
  {
    v30 = v8;
  }

  else
  {
    v30 = v29;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_38;
  }

  v31 = v30 + 1;
  v32 = 8 * (v30 + 1);
  if ((v30 + 1) <= 3)
  {
    v35 = ((a2 + ~(-1 << v32) - 246) >> v32) + 1;
    if (HIWORD(v35))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v35 > 0xFF)
    {
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v35 < 2)
    {
LABEL_38:
      v37 = *(a1 + v30);
      if (v37 >= 0xA)
      {
        return (v37 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v33 = *(a1 + v31);
  if (!*(a1 + v31))
  {
    goto LABEL_38;
  }

LABEL_27:
  v36 = (v33 - 1) << v32;
  if (v31 > 3)
  {
    v36 = 0;
  }

  if (v31)
  {
    if (v31 > 3)
    {
      LODWORD(v31) = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        LODWORD(v31) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v31) = *a1;
      }
    }

    else if (v31 == 1)
    {
      LODWORD(v31) = *a1;
    }

    else
    {
      LODWORD(v31) = *a1;
    }
  }

  return (v31 | v36) + 247;
}

void sub_1AE000B18(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[10] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[11] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[12] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[13] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 > v10)
  {
    v10 = v19;
  }

  v20 = *(a4[14] + 8);
  v21 = a4[6];
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 > v10)
  {
    v10 = v22;
  }

  v23 = *(a4[15] + 8);
  v24 = a4[7];
  v25 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v25 > v10)
  {
    v10 = v25;
  }

  v26 = *(a4[16] + 8);
  v27 = a4[8];
  v28 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v28 > v10)
  {
    v10 = v28;
  }

  v29 = *(a4[17] + 8);
  v30 = a4[9];
  v31 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v31 <= v10)
  {
    v31 = v10;
  }

  v32 = v31 + 1;
  if (a3 < 0xF7)
  {
    v33 = 0;
  }

  else if (v32 <= 3)
  {
    v36 = ((a3 + ~(-1 << (8 * v32)) - 246) >> (8 * v32)) + 1;
    if (HIWORD(v36))
    {
      v33 = 4;
    }

    else
    {
      if (v36 < 0x100)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v36 >= 2)
      {
        v33 = v37;
      }

      else
      {
        v33 = 0;
      }
    }
  }

  else
  {
    v33 = 1;
  }

  if (a2 > 0xF6)
  {
    v34 = a2 - 247;
    if (v32 >= 4)
    {
      bzero(a1, v31 + 1);
      *a1 = v34;
      v35 = 1;
      if (v33 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v35 = (v34 >> (8 * v32)) + 1;
    if (v31 != -1)
    {
      v38 = v34 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v38;
          if (v33 > 1)
          {
LABEL_51:
            if (v33 == 2)
            {
              *&a1[v32] = v35;
            }

            else
            {
              *&a1[v32] = v35;
            }

            return;
          }
        }

        else
        {
          *a1 = v34;
          if (v33 > 1)
          {
            goto LABEL_51;
          }
        }

LABEL_48:
        if (v33)
        {
          a1[v32] = v35;
        }

        return;
      }

      *a1 = v38;
      a1[2] = BYTE2(v38);
    }

    if (v33 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v33 <= 1)
  {
    if (v33)
    {
      a1[v32] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      a1[v31] = -a2;
      return;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v33 == 2)
  {
    *&a1[v32] = 0;
    goto LABEL_36;
  }

  *&a1[v32] = 0;
  if (a2)
  {
    goto LABEL_37;
  }
}

uint64_t sub_1AE000E88(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  result = type metadata accessor for TaggedValue_9.TaggedEnum();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE000F20(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(*(a3[5] - 8) + 64) > v3)
  {
    v3 = *(*(a3[5] - 8) + 64);
  }

  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = *(a3[9] - 8);
  if (*(v9 + 64) > v3)
  {
    v3 = *(v9 + 64);
  }

  v10 = *(a3[10] - 8);
  if (*(v10 + 64) > v3)
  {
    v3 = *(v10 + 64);
  }

  v11 = 16;
  if (v3 > 0x10)
  {
    v11 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_41;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 246) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (v16 < 2)
    {
LABEL_41:
      v18 = *(a1 + v11);
      if (v18 >= 0xA)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_41;
  }

LABEL_30:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 247;
}

void sub_1AE001130(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[6] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(*(a4[7] - 8) + 64) > v5)
  {
    v5 = *(*(a4[7] - 8) + 64);
  }

  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  v10 = *(a4[9] - 8);
  if (*(v10 + 64) > v5)
  {
    v5 = *(v10 + 64);
  }

  v11 = *(a4[10] - 8);
  if (*(v11 + 64) > v5)
  {
    v5 = *(v11 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v12 = v5 + 1;
  if (a3 < 0xF7)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 246) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xF6)
  {
    v14 = a2 - 247;
    if (v12 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v5 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_55:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_55;
          }
        }

LABEL_52:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      a1[v5] = -a2;
      return;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_40;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_41;
  }
}

void sub_1AE0013F8(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[5];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            v12 = a1[7];
            swift_checkMetadataState();
            if (v13 <= 0x3F)
            {
              v14 = a1[8];
              swift_checkMetadataState();
              if (v15 <= 0x3F)
              {
                v16 = a1[9];
                swift_checkMetadataState();
                if (v17 <= 0x3F)
                {
                  v18 = a1[10];
                  swift_checkMetadataState();
                  if (v19 <= 0x3F)
                  {
                    sub_1ADFFB9A4();
                    if (v20 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AE001530(void *a1)
{
  v2 = *(a1[11] + 8);
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = *(a1[12] + 8);
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v9 = *(a1[13] + 8);
      v10 = a1[4];
      result = swift_getAssociatedTypeWitness();
      if (v11 <= 0x3F)
      {
        v12 = *(a1[14] + 8);
        v13 = a1[5];
        result = swift_getAssociatedTypeWitness();
        if (v14 <= 0x3F)
        {
          v15 = *(a1[15] + 8);
          v16 = a1[6];
          result = swift_getAssociatedTypeWitness();
          if (v17 <= 0x3F)
          {
            v18 = *(a1[16] + 8);
            v19 = a1[7];
            result = swift_getAssociatedTypeWitness();
            if (v20 <= 0x3F)
            {
              v21 = *(a1[17] + 8);
              v22 = a1[8];
              result = swift_getAssociatedTypeWitness();
              if (v23 <= 0x3F)
              {
                v24 = *(a1[18] + 8);
                v25 = a1[9];
                result = swift_getAssociatedTypeWitness();
                if (v26 <= 0x3F)
                {
                  v27 = *(a1[19] + 8);
                  v28 = a1[10];
                  result = swift_getAssociatedTypeWitness();
                  if (v29 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE001734(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(a3[11] + 8);
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(a3[12] + 8);
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a3[13] + 8);
  v13 = a3[4];
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v8)
  {
    v8 = v14;
  }

  v15 = *(a3[14] + 8);
  v16 = a3[5];
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v17 > v8)
  {
    v8 = v17;
  }

  v18 = *(a3[15] + 8);
  v19 = a3[6];
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 > v8)
  {
    v8 = v20;
  }

  v21 = *(a3[16] + 8);
  v22 = a3[7];
  v23 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v23 > v8)
  {
    v8 = v23;
  }

  v24 = *(a3[17] + 8);
  v25 = a3[8];
  v26 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v26 > v8)
  {
    v8 = v26;
  }

  v27 = *(a3[18] + 8);
  v28 = a3[9];
  v29 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v29 > v8)
  {
    v8 = v29;
  }

  v30 = *(a3[19] + 8);
  v31 = a3[10];
  v32 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v32 <= v8)
  {
    v33 = v8;
  }

  else
  {
    v33 = v32;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_40;
  }

  v34 = v33 + 1;
  v35 = 8 * (v33 + 1);
  if ((v33 + 1) <= 3)
  {
    v38 = ((a2 + ~(-1 << v35) - 245) >> v35) + 1;
    if (HIWORD(v38))
    {
      v36 = *(a1 + v34);
      if (!v36)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v38 > 0xFF)
    {
      v36 = *(a1 + v34);
      if (!*(a1 + v34))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v38 < 2)
    {
LABEL_40:
      v40 = *(a1 + v33);
      if (v40 >= 0xB)
      {
        return (v40 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v36 = *(a1 + v34);
  if (!*(a1 + v34))
  {
    goto LABEL_40;
  }

LABEL_29:
  v39 = (v36 - 1) << v35;
  if (v34 > 3)
  {
    v39 = 0;
  }

  if (v34)
  {
    if (v34 > 3)
    {
      LODWORD(v34) = 4;
    }

    if (v34 > 2)
    {
      if (v34 == 3)
      {
        LODWORD(v34) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v34) = *a1;
      }
    }

    else if (v34 == 1)
    {
      LODWORD(v34) = *a1;
    }

    else
    {
      LODWORD(v34) = *a1;
    }
  }

  return (v34 | v39) + 246;
}

void sub_1AE001A5C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(a4[11] + 8);
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(a4[12] + 8);
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v10)
  {
    v10 = v13;
  }

  v14 = *(a4[13] + 8);
  v15 = a4[4];
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v16 > v10)
  {
    v10 = v16;
  }

  v17 = *(a4[14] + 8);
  v18 = a4[5];
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v19 > v10)
  {
    v10 = v19;
  }

  v20 = *(a4[15] + 8);
  v21 = a4[6];
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 > v10)
  {
    v10 = v22;
  }

  v23 = *(a4[16] + 8);
  v24 = a4[7];
  v25 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v25 > v10)
  {
    v10 = v25;
  }

  v26 = *(a4[17] + 8);
  v27 = a4[8];
  v28 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v28 > v10)
  {
    v10 = v28;
  }

  v29 = *(a4[18] + 8);
  v30 = a4[9];
  v31 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v31 > v10)
  {
    v10 = v31;
  }

  v32 = *(a4[19] + 8);
  v33 = a4[10];
  v34 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v34 <= v10)
  {
    v34 = v10;
  }

  v35 = v34 + 1;
  if (a3 < 0xF6)
  {
    v36 = 0;
  }

  else if (v35 <= 3)
  {
    v39 = ((a3 + ~(-1 << (8 * v35)) - 245) >> (8 * v35)) + 1;
    if (HIWORD(v39))
    {
      v36 = 4;
    }

    else
    {
      if (v39 < 0x100)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      if (v39 >= 2)
      {
        v36 = v40;
      }

      else
      {
        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 1;
  }

  if (a2 > 0xF5)
  {
    v37 = a2 - 246;
    if (v35 >= 4)
    {
      bzero(a1, v34 + 1);
      *a1 = v37;
      v38 = 1;
      if (v36 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v38 = (v37 >> (8 * v35)) + 1;
    if (v34 != -1)
    {
      v41 = v37 & ~(-1 << (8 * v35));
      bzero(a1, v35);
      if (v35 != 3)
      {
        if (v35 == 2)
        {
          *a1 = v41;
          if (v36 > 1)
          {
LABEL_53:
            if (v36 == 2)
            {
              *&a1[v35] = v38;
            }

            else
            {
              *&a1[v35] = v38;
            }

            return;
          }
        }

        else
        {
          *a1 = v37;
          if (v36 > 1)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        if (v36)
        {
          a1[v35] = v38;
        }

        return;
      }

      *a1 = v41;
      a1[2] = BYTE2(v41);
    }

    if (v36 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v36 <= 1)
  {
    if (v36)
    {
      a1[v35] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v34] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v36 == 2)
  {
    *&a1[v35] = 0;
    goto LABEL_38;
  }

  *&a1[v35] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}