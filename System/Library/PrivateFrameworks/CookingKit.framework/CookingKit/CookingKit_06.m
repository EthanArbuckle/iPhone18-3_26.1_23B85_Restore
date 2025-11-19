uint64_t sub_21A1C20C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v266 = a2;
  v260 = sub_21A176C98(&qword_27CCFFFF8);
  MEMORY[0x28223BE20](v260, v8);
  v256 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v254 = &v240 - v12;
  v257 = sub_21A2F5294();
  v255 = *(v257 - 1);
  MEMORY[0x28223BE20](v257, v13);
  v249 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v250 = &v240 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v247 = &v240 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v248 = &v240 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v253 = &v240 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v259 = &v240 - v29;
  v263 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v263, v30);
  v251 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v258 = &v240 - v34;
  v35 = type metadata accessor for CountdownTimer();
  v264 = *(v35 - 8);
  v265 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v246 = &v240 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v252 = &v240 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v262 = &v240 - v43;
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D84F90];
  v44[2] = MEMORY[0x277D84F90];
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 1;
  v50 = *(a1 + 16);
  if (!v50)
  {
    goto LABEL_5;
  }

  v261 = a4;
  v269 = v46;
  v270 = v47;
  v267 = v49;
  v268 = v44;
  v51 = (a1 + 56);
  v52 = v48;
  v53 = a3;
  v54 = v266;
  do
  {
    v55 = *(v51 - 3);
    v56 = *(v51 - 2);
    v57 = *(v51 - 1);
    v58 = *v51;
    sub_21A2F5434();
    sub_21A1C40F0(v55, v56, v57, v58, 0, 0, 0, 0, v4, v52, v267, v270, v269, v268, v54, v53);

    v51 += 4;
    --v50;
  }

  while (v50);
  v59 = v268;
  v60 = v269;
  v61 = v270;
  a4 = v261;
  v62 = v53;
  v63 = v52;
  if (*(v267 + 32))
  {
    goto LABEL_5;
  }

  v65 = *(v267 + 16);
  v66 = *(v267 + 24);
  v245 = v62;
  v67 = sub_21A2F7A94();
  v244 = MEMORY[0x21CED6410](v67);
  v69 = v68;

  v70 = *(v52 + 16);
  result = sub_21A1A1344(v70, &unk_282B2C4B0);
  if (result & 1) != 0 || (result = sub_21A1A1344(v70, &unk_282B2C4D8), (result))
  {
    v72 = *(v59 + 2);
    if (*(v72 + 16))
    {
      v73 = *(v60 + 16);
      if (*(v73 + 16))
      {
        v74 = *(v72 + 32) * dbl_21A2FEDD0[*(v73 + 32)];
        if (COERCE__INT64(fabs(v74)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v74 > -9.22337204e18)
        {
          if (v74 < 9.22337204e18)
          {
            v75 = v69;
            v76 = v65;
            v77 = v66;
            v78 = v265;
            v79 = v262;
            sub_21A2F5274();
            swift_storeEnumTagMultiPayload();
            *v79 = v244;
            v79[1] = v75;
            v273 = v76;
            v274 = v77;
            v271 = v266;
            v272 = v245;
            sub_21A2F5434();
            sub_21A176C98(&qword_27CD00000);
            sub_21A1C7290();
            sub_21A1834FC();
            v80 = sub_21A2F7E94();
            v82 = v81;
            v83 = type metadata accessor for InTextCountdownTimer();
            v84 = *(v83 + 20);
            sub_21A1C734C(v79, a4 + v84, type metadata accessor for CountdownTimer);
            (*(v264 + 56))(a4 + v84, 0, 1, v78);
            *a4 = v80;
            a4[1] = v82;
            (*(*(v83 - 8) + 56))(a4, 0, 1, v83);

LABEL_128:
          }

          goto LABEL_163;
        }

        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }
    }
  }

  if ((sub_21A1A1344(v70, &unk_282B2C500) & 1) != 0 && *(*(v60 + 16) + 16))
  {
    goto LABEL_127;
  }

  result = sub_21A1A1344(v70, &unk_282B2C528);
  if (result & 1) != 0 || (result = sub_21A1A1344(v70, &unk_282B2C550), (result))
  {
    v85 = *(v61 + 16);
    if (*(v85 + 16))
    {
      v86 = *(v60 + 16);
      if (*(v86 + 16))
      {
        v87 = dbl_21A2FEDA8[*(v85 + 32)] * dbl_21A2FEDD0[*(v86 + 32)];
        if (v87 == INFINITY)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v87 <= -9.22337204e18)
        {
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v259 = v52;
        if (v87 < 9.22337204e18)
        {
          goto LABEL_127;
        }

        __break(1u);
      }
    }
  }

  result = sub_21A1A1344(v70, &unk_282B2C578);
  if ((result & 1) == 0 && (result = sub_21A1A1344(v70, &unk_282B2C5A0), (result & 1) == 0) && (result = sub_21A1A1344(v70, &unk_282B2C5C8), (result & 1) == 0) && (result = sub_21A1A1344(v70, &unk_282B2C5F0), (result & 1) == 0) || (v88 = *(v61 + 16), !*(v88 + 16)) || (v89 = *(v60 + 16), !*(v89 + 16)))
  {
    result = sub_21A1A1344(v70, &unk_282B2C618);
    if (result)
    {
      v94 = *(v59 + 2);
      if (*(v94 + 16))
      {
        v95 = *(v61 + 16);
        if (*(v95 + 16))
        {
          v96 = *(v60 + 16);
          if (*(v96 + 16))
          {
            v97 = *(v94 + 32) * dbl_21A2FEDD0[*(v96 + 32)] + dbl_21A2FEDA8[*(v95 + 32)] * dbl_21A2FEDD0[*(v96 + 32)];
            if (COERCE_UNSIGNED_INT64(fabs(v97)) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            if (v97 <= -9.22337204e18)
            {
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v259 = v52;
            if (v97 < 9.22337204e18)
            {
              goto LABEL_127;
            }

            __break(1u);
          }
        }
      }
    }

    result = sub_21A1A1344(v70, &unk_282B2C640);
    if (result & 1) != 0 || (result = sub_21A1A1344(v70, &unk_282B2C668), (result))
    {
      v98 = *(v61 + 16);
      if (*(v98 + 16))
      {
        v99 = *(v60 + 16);
        if (*(v99 + 16))
        {
          v100 = *(v98 + 32);
          v101 = *(v99 + 32);
          v102 = *(v59 + 2);
          if (*(v102 + 16))
          {
            v103 = *(v102 + 32);
          }

          else
          {
            v103 = 1.0;
          }

          v214 = v103 * dbl_21A2FEDA8[v100] * dbl_21A2FEDD0[v101];
          if ((*&v214 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_168;
          }

          if (v214 <= -9.22337204e18)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v259 = v52;
          if (v214 >= 9.22337204e18)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          goto LABEL_127;
        }
      }
    }

    result = sub_21A1A1344(v70, &unk_282B2C690);
    if ((result & 1) != 0 || (result = sub_21A1A1344(v70, &unk_282B2C6B8), (result) || (result = sub_21A1A1344(v70, &unk_282B2C6E0), (result)) && (v104 = *(v59 + 2), (v105 = *(v104 + 16)) != 0) && (v106 = *(v60 + 16), *(v106 + 16)))
    {
      v243 = v69;
      v107 = *(v106 + 32);
      v109 = *(v104 + 32);
      v108 = v104 + 32;
      v110 = v109 * dbl_21A2FEDD0[v107];
      if (COERCE__INT64(fabs(v110)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v111 = v257;
      if (v110 <= -9.22337204e18)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if (v110 >= 9.22337204e18)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      v112 = *(v108 + 8 * v105 - 8);
      result = sub_21A2F5274();
      v113 = v112 * dbl_21A2FEDD0[v107];
      if (COERCE__INT64(fabs(v113)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      if (v113 <= -9.22337204e18)
      {
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      if (v113 >= 9.22337204e18)
      {
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v241 = v65;
      v242 = v66;
      v114 = v253;
      sub_21A2F5274();
      sub_21A1C72F4();
      v115 = v259;
      result = sub_21A2F7854();
      if ((result & 1) == 0)
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v116 = v255;
      v117 = *(v255 + 32);
      v118 = v254;
      (v117)(v254, v115, v111);
      v119 = v117;
      v120 = v260;
      (v119)(v118 + *(v260 + 48), v114, v111);
      v262 = v119;
      v121 = v256;
      sub_21A183960(v118, v256, &qword_27CCFFFF8);
      v259 = *(v120 + 48);
      (v119)(v258, v121, v111);
      v122 = *(v116 + 8);
      v122(v121 + v259, v111);
      sub_21A149B18(v118, v121, &qword_27CCFFFF8);
      v123 = *(v260 + 48);
      v124 = sub_21A176C98(&qword_27CCFF388);
      v125 = v258;
      (v262)(&v258[*(v124 + 36)], v121 + v123, v111);
      v122(v121, v111);
      swift_storeEnumTagMultiPayload();
      v126 = v244;
      v127 = &v276;
    }

    else
    {
      if ((sub_21A1A1344(v70, &unk_282B2C708) & 1) == 0 || (v128 = *(v59 + 2), (v129 = *(v128 + 16)) == 0) || (v130 = *(v60 + 16), !*(v130 + 16)))
      {
        result = sub_21A1A1344(v70, &unk_282B2C730);
        if (result & 1) != 0 || (result = sub_21A1A1344(v70, &unk_282B2C758), (result))
        {
          v155 = *(v60 + 16);
          if (*(v155 + 16))
          {
            v156 = *(v61 + 16);
            if (*(v156 + 16))
            {
              v157 = *(v155 + 32);
              v158 = *(v59 + 2);
              if (*(v158 + 16))
              {
                v159 = *(v158 + 32);
              }

              else
              {
                v159 = 1.0;
              }

              v227 = v159 * dbl_21A2FEDD0[v157];
              if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_180;
              }

              if (v227 <= -9.22337204e18)
              {
LABEL_181:
                __break(1u);
                goto LABEL_182;
              }

              if (v227 >= 9.22337204e18)
              {
LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

              v228 = dbl_21A2FEDD0[v157] * dbl_21A2FEDA8[*(v156 + 32)];
              if (v228 == INFINITY)
              {
LABEL_183:
                __break(1u);
                goto LABEL_184;
              }

              if (v228 <= -9.22337204e18)
              {
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

              if (v228 >= 9.22337204e18)
              {
LABEL_185:
                __break(1u);
                goto LABEL_186;
              }

              v259 = v52;
              if (__OFADD__(v227, v228))
              {
LABEL_186:
                __break(1u);
                goto LABEL_187;
              }

              goto LABEL_127;
            }
          }
        }

        result = sub_21A1A1344(v70, &unk_282B2C780);
        if ((result & 1) == 0)
        {
          goto LABEL_92;
        }

        v160 = *(v59 + 2);
        v161 = *(v160 + 16);
        if (!v161)
        {
          goto LABEL_92;
        }

        v162 = *(v60 + 16);
        v163 = *(v162 + 16);
        if (!v163)
        {
          goto LABEL_92;
        }

        v165 = *(v160 + 32);
        v164 = v160 + 32;
        v166 = v165;
        v168 = *(v162 + 32);
        v167 = v162 + 32;
        v169 = v166 * dbl_21A2FEDD0[v168];
        if ((*&v169 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        a4 = v257;
        if (v169 <= -9.22337204e18)
        {
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        if (v169 >= 9.22337204e18)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v170 = *(v164 + 8 * v161 - 8) * dbl_21A2FEDD0[*(v167 + v163 - 1)];
        if (COERCE__INT64(fabs(v170)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        if (v170 <= -9.22337204e18)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v243 = v69;
        if (v170 >= 9.22337204e18)
        {
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        v241 = v65;
        v242 = v66;
        v259 = v52;
        v171 = *(v265 + 20);
        v69 = v250;
        sub_21A2F5274();
        v59 = v249;
        sub_21A2F5274();
        sub_21A1C72F4();
        v70 = a4;
        result = sub_21A2F7854();
        if (result)
        {
          goto LABEL_106;
        }

        __break(1u);
        goto LABEL_87;
      }

      v131 = *(v128 + 8 * v129 + 24);
      v132 = dbl_21A2FEDD0[*(v130 + 32)];
      v133 = v248;
      result = sub_21A2F5274();
      v134 = v131 * v132;
      if (COERCE__INT64(fabs(v131 * v132)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v135 = v257;
      if (v134 <= -9.22337204e18)
      {
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      if (v134 >= 9.22337204e18)
      {
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      v243 = v69;
      v241 = v65;
      v242 = v66;
      v136 = v247;
      sub_21A2F5274();
      sub_21A1C72F4();
      v137 = v133;
      result = sub_21A2F7854();
      if ((result & 1) == 0)
      {
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v138 = v255;
      v139 = *(v255 + 32);
      v140 = v254;
      (v139)(v254, v137, v135);
      v141 = v139;
      v142 = v260;
      (v141)(v140 + *(v260 + 48), v136, v135);
      v262 = v141;
      v143 = v256;
      sub_21A183960(v140, v256, &qword_27CCFFFF8);
      v259 = *(v142 + 48);
      (v141)(v251, v143, v135);
      v144 = *(v138 + 8);
      v144(v143 + v259, v135);
      sub_21A149B18(v140, v143, &qword_27CCFFFF8);
      v145 = *(v260 + 48);
      v146 = sub_21A176C98(&qword_27CCFF388);
      v125 = v251;
      (v262)(&v251[*(v146 + 36)], v143 + v145, v135);
      v144(v143, v135);
      swift_storeEnumTagMultiPayload();
      v126 = v244;
      v127 = &v275;
    }

    v147 = *(v127 - 32);
    *v147 = v126;
    v147[1] = v243;
    v148 = v265;
    sub_21A1C734C(v125, v147 + *(v265 + 20), type metadata accessor for Duration);
    v273 = v241;
    v274 = v242;
    v271 = v266;
    v272 = v245;
    sub_21A2F5434();
    sub_21A176C98(&qword_27CD00000);
    sub_21A1C7290();
    sub_21A1834FC();
    v149 = sub_21A2F7E94();
    v151 = v150;
    v152 = type metadata accessor for InTextCountdownTimer();
    v153 = *(v152 + 20);
    v154 = v261;
    sub_21A1C734C(v147, v261 + v153, type metadata accessor for CountdownTimer);
    (*(v264 + 56))(v154 + v153, 0, 1, v148);
    *v154 = v149;
    v154[1] = v151;
    (*(*(v152 - 8) + 56))(v154, 0, 1, v152);

    goto LABEL_128;
  }

  v90 = *(v88 + 32);
  v91 = *(v89 + 32);
  v92 = *(v59 + 2);
  if (!*(v92 + 16))
  {
LABEL_87:
    v93 = 1.0;
    goto LABEL_88;
  }

  v93 = *(v92 + 32);
LABEL_88:
  v172 = v93 * dbl_21A2FEDA8[v90] * dbl_21A2FEDD0[v91];
  if ((*&v172 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v172 <= -9.22337204e18)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v259 = v63;
  if (v172 < 9.22337204e18)
  {
    goto LABEL_127;
  }

  __break(1u);
LABEL_92:
  result = sub_21A1A1344(v70, &unk_282B2C7A8);
  if (result)
  {
    v173 = *(v59 + 2);
    v174 = *(v173 + 16);
    if (v174)
    {
      v175 = *(v60 + 16);
      v176 = *(v175 + 16);
      if (v176)
      {
        v177 = *(v173 + 32) * dbl_21A2FEDD0[*(v175 + 32)] + *(v173 + 32 + 8 * v174 - 8) * dbl_21A2FEDD0[*(v175 + 32 + v176 - 1)];
        if (COERCE_UNSIGNED_INT64(fabs(v177)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        if (v177 <= -9.22337204e18)
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        v259 = v63;
        if (v177 < 9.22337204e18)
        {
          goto LABEL_127;
        }

        __break(1u);
      }
    }
  }

  result = sub_21A1A1344(v70, &unk_282B2C7D0);
  if (result)
  {
    v178 = *(v59 + 2);
    if (*(v178 + 16))
    {
      v179 = *(v60 + 16);
      if (*(v179 + 16))
      {
        v180 = *(v178 + 32) * dbl_21A2FEDD0[*(v179 + 32)];
        if (COERCE__INT64(fabs(v180)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        a4 = v257;
        if (v180 <= -9.22337204e18)
        {
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        v243 = v69;
        if (v180 >= 9.22337204e18)
        {
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        v241 = v65;
        v242 = v66;
        v259 = v63;
        v171 = *(v265 + 20);
        v69 = v250;
        sub_21A2F5274();
        v59 = v249;
        sub_21A2F5274();
        sub_21A1C72F4();
        result = sub_21A2F7854();
        if ((result & 1) == 0)
        {
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

LABEL_106:
        v258 = (v262 + v171);
        v181 = v255;
        v182 = *(v255 + 32);
        v183 = v254;
        v182(v254, v69, a4);
        v184 = v260;
        v182((v183 + *(v260 + 48)), v59, a4);
        v185 = v256;
        sub_21A183960(v183, v256, &qword_27CCFFFF8);
        v253 = *(v184 + 48);
        v182(v258, v185, a4);
        v255 = *(v181 + 8);
        (v255)(&v253[v185], a4);
        sub_21A149B18(v183, v185, &qword_27CCFFFF8);
        v186 = *(v184 + 48);
        v187 = sub_21A176C98(&qword_27CCFF388);
        v182(&v258[*(v187 + 36)], (v185 + v186), a4);
        (v255)(v185, a4);
LABEL_107:
        swift_storeEnumTagMultiPayload();
        v188 = v262;
        v189 = v243;
        *v262 = v244;
        *(v188 + 8) = v189;
        v273 = v241;
        v274 = v242;
        v271 = v266;
        v272 = v245;
        sub_21A2F5434();
        sub_21A176C98(&qword_27CD00000);
        sub_21A1C7290();
        sub_21A1834FC();
        v190 = sub_21A2F7E94();
        v192 = v191;
        v193 = type metadata accessor for InTextCountdownTimer();
        v194 = *(v193 + 20);
        v195 = v261;
        sub_21A1C734C(v188, v261 + v194, type metadata accessor for CountdownTimer);
        (*(v264 + 56))(v195 + v194, 0, 1, v265);
        *v195 = v190;
        v195[1] = v192;
        (*(*(v193 - 8) + 56))(v195, 0, 1, v193);

        goto LABEL_128;
      }
    }
  }

  result = sub_21A1A1344(v70, &unk_282B2C7F8);
  if (result)
  {
    v196 = *(v59 + 2);
    if (*(v196 + 16))
    {
      v197 = *(v61 + 16);
      if (*(v197 + 16))
      {
        v198 = *(v60 + 16);
        if (*(v198 + 16))
        {
          v199 = *(v196 + 32) * dbl_21A2FEDD0[*(v198 + 32)] + dbl_21A2FEDA8[*(v197 + 32)] * dbl_21A2FEDD0[*(v198 + 32)];
          if (COERCE_UNSIGNED_INT64(fabs(v199)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v199 <= -9.22337204e18)
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          v259 = v63;
          if (v199 < 9.22337204e18)
          {
            goto LABEL_127;
          }

          __break(1u);
        }
      }
    }
  }

  result = sub_21A1A1344(v70, &unk_282B2C820);
  if ((result & 1) == 0 || (v200 = *(v59 + 2), *(v200 + 16) != 2) || (v201 = *(v61 + 16), (v202 = *(v201 + 16)) == 0) || (v203 = *(v60 + 16), !*(v203 + 16)))
  {
    result = sub_21A1A1344(v70, &unk_282B2C850);
    if ((result & 1) == 0)
    {
      result = sub_21A1A1344(v70, &unk_282B2C878);
      if ((result & 1) == 0)
      {
        goto LABEL_139;
      }
    }

    v222 = *(v59 + 2);
    v223 = *(v222 + 16);
    if (!v223)
    {
      goto LABEL_139;
    }

    v224 = *(v61 + 16);
    if (!*(v224 + 16))
    {
      goto LABEL_139;
    }

    v225 = *(v60 + 16);
    if (!*(v225 + 16))
    {
      goto LABEL_139;
    }

    v226 = (*(v222 + 32) + *(v222 + 32 + 8 * v223 - 8) * dbl_21A2FEDA8[*(v224 + 32)]) * dbl_21A2FEDD0[*(v225 + 32)];
    if (COERCE__INT64(fabs(v226)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    if (v226 <= -9.22337204e18)
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v259 = v63;
    if (v226 >= 9.22337204e18)
    {
      __break(1u);
LABEL_139:

LABEL_5:
      v64 = type metadata accessor for InTextCountdownTimer();
      (*(*(v64 - 8) + 56))(a4, 1, 1, v64);
    }

LABEL_127:
    v215 = v265;
    v216 = v262;
    sub_21A2F5274();
    swift_storeEnumTagMultiPayload();
    *v216 = v244;
    v216[1] = v69;
    v273 = v65;
    v274 = v66;
    v271 = v266;
    v272 = v245;
    sub_21A2F5434();
    sub_21A176C98(&qword_27CD00000);
    sub_21A1C7290();
    sub_21A1834FC();
    v217 = sub_21A2F7E94();
    v219 = v218;
    v220 = type metadata accessor for InTextCountdownTimer();
    v221 = *(v220 + 20);
    sub_21A1C734C(v216, a4 + v221, type metadata accessor for CountdownTimer);
    (*(v264 + 56))(a4 + v221, 0, 1, v215);
    *a4 = v217;
    a4[1] = v219;
    (*(*(v220 - 8) + 56))(a4, 0, 1, v220);

    goto LABEL_128;
  }

  v204 = (v201 + 32);
  v205 = *(v203 + 32);
  v206 = v205;
  v207 = dbl_21A2FEDA8[*v204];
  v208 = *(v200 + 32) * dbl_21A2FEDD0[v205];
  if (v205 > 1)
  {
    v210 = v265;
    v211 = v257;
    v212 = v250;
    if (v205 == 2)
    {
      v213 = 900.0;
    }

    else
    {
      v213 = 3600.0;
    }
  }

  else
  {
    v209 = 1.0;
    v210 = v265;
    v211 = v257;
    v212 = v250;
    if (!v205)
    {
      goto LABEL_153;
    }

    v213 = 60.0;
  }

  v209 = v213;
  v207 = v207 * v213;
LABEL_153:
  v229 = v208 + v207;
  if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  if (v229 <= -9.22337204e18)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  v243 = v69;
  if (v229 >= 9.22337204e18)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  v230 = *(v200 + 40) * v209 + dbl_21A2FEDA8[v204[v202 - 1]] * dbl_21A2FEDD0[v206];
  v231 = *(v210 + 20);
  result = sub_21A2F5274();
  if ((*&v230 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v230 <= -9.22337204e18)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  v258 = v231;
  if (v230 >= 9.22337204e18)
  {
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v241 = v65;
  v242 = v66;
  v259 = v63;
  v232 = v249;
  sub_21A2F5274();
  sub_21A1C72F4();
  result = sub_21A2F7854();
  if (result)
  {
    v258 += v262;
    v233 = v255;
    v234 = *(v255 + 32);
    v235 = v254;
    v234(v254, v212, v211);
    v236 = v260;
    v234((v235 + *(v260 + 48)), v232, v211);
    v237 = v256;
    sub_21A183960(v235, v256, &qword_27CCFFFF8);
    v253 = *(v236 + 48);
    v234(v258, v237, v211);
    v257 = *(v233 + 8);
    (v257)(&v253[v237], v211);
    sub_21A149B18(v235, v237, &qword_27CCFFFF8);
    v238 = *(v236 + 48);
    v239 = sub_21A176C98(&qword_27CCFF388);
    v234(&v258[*(v239 + 36)], (v237 + v238), v211);
    (v257)(v237, v211);
    goto LABEL_107;
  }

LABEL_213:
  __break(1u);
  return result;
}

void sub_21A1C40F0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = a10;
  v130 = a9;
  v131 = a6;
  v21 = a9 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack;
  v22 = type metadata accessor for LanguagePack();
  v23 = *(v21 + *(v22 + 28));
  v138 = a1;
  v139 = a2;
  v24 = &v138;
  v133 = &v138;
  sub_21A2F5434();
  v25 = v23;
  v26 = 0;
  isUniquelyReferenced_nonNull_native = sub_21A1A2DC4(sub_21A1A3150, v132, v25);
  if (isUniquelyReferenced_nonNull_native)
  {

    a1 = *(a10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a10 + 16) = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_21A1B7A3C(0, *(a1 + 16) + 1, 1, a1);
      a1 = isUniquelyReferenced_nonNull_native;
      *(a10 + 16) = isUniquelyReferenced_nonNull_native;
    }

    v21 = *(a1 + 16);
    v29 = *(a1 + 24);
    v26 = (v21 + 1);
    if (v21 >= v29 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_21A1B7A3C((v29 > 1), v21 + 1, 1, a1);
      a1 = isUniquelyReferenced_nonNull_native;
    }

    *(a1 + 16) = v26;
    *(a1 + v21 + 32) = 3;
    *(a10 + 16) = a1;
    v30 = *(a11 + 16);
    v31 = *(a11 + 24);
    if (*(a11 + 32))
    {
      v30 = a3;
      v31 = a4;
    }

    if (a3 >> 14 < v30 >> 14)
    {
      v30 = a3;
    }

    if (a4 >> 14 >= v31 >> 14)
    {
      v31 = a4;
    }

    if (v31 >> 14 >= v30 >> 14)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v128 = a10;
  v129 = a3;
  v32 = a4;
  v138 = a1;
  v139 = a2;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v28);
  v115 = &v138;
  v34 = sub_21A1A2DC4(sub_21A1A3A34, &v113, v33);
  if (v34)
  {

    v24 = v128;
    v36 = *(v128 + 16);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v24[2] = v36;
    if ((v37 & 1) == 0)
    {
      v36 = sub_21A1B7A3C(0, *(v36 + 2) + 1, 1, v36);
      v24[2] = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_21A1B7A3C((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = v39 + 1;
    v36[v39 + 32] = 4;
    v24[2] = v36;
    v30 = *(a11 + 16);
    v31 = *(a11 + 24);
    if (*(a11 + 32))
    {
      v30 = v129;
      v31 = a4;
    }

    if (v129 >> 14 < v30 >> 14)
    {
      v30 = v129;
    }

    if (a4 >> 14 >= v31 >> 14)
    {
      v31 = a4;
    }

    if (v31 >> 14 >= v30 >> 14)
    {
LABEL_26:
      *(a11 + 16) = v30;
      *(a11 + 24) = v31;
      *(a11 + 32) = 0;
      return;
    }

    __break(1u);
LABEL_121:
    v41 = sub_21A1B7A3C(0, *(v36 + 2) + 1, 1, v36);
    v36 = v41;
    v24[2] = v41;
    goto LABEL_30;
  }

  v127 = a1;
  v138 = a1;
  v139 = a2;
  MEMORY[0x28223BE20](v34, v35);
  v115 = &v138;
  v41 = sub_21A1A2DC4(sub_21A1A3A34, &v113, v40);
  v20 = a11;
  if ((v41 & 1) == 0 || v131)
  {
    goto LABEL_40;
  }

  v24 = v128;
  v36 = *(v128 + 16);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v24[2] = v36;
  if ((v41 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_30:
  v21 = *(v36 + 2);
  v43 = *(v36 + 3);
  v26 = (v21 + 1);
  if (v21 >= v43 >> 1)
  {
    v41 = sub_21A1B7A3C((v43 > 1), v21 + 1, 1, v36);
    v36 = v41;
  }

  *(v36 + 2) = v26;
  v36[v21 + 32] = 0;
  v24[2] = v36;
  v44 = *(v20 + 16);
  v45 = *(v20 + 24);
  if (*(v20 + 32))
  {
    v44 = v129;
    v45 = a4;
  }

  if (v129 >> 14 < v44 >> 14)
  {
    v44 = v129;
  }

  if (a4 >> 14 >= v45 >> 14)
  {
    v45 = a4;
  }

  if (v45 >> 14 >= v44 >> 14)
  {
    goto LABEL_106;
  }

  __break(1u);
LABEL_40:
  v46 = v127;
  v138 = v127;
  v139 = a2;
  MEMORY[0x28223BE20](v41, v42);
  v115 = v24;
  if (sub_21A1A2DC4(sub_21A1A3A34, &v113, v47))
  {

    a2 = v128;
    v48 = *(v128 + 16);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v48;
    v50 = v129;
    if ((v49 & 1) == 0)
    {
      v48 = sub_21A1B7A3C(0, *(v48 + 2) + 1, 1, v48);
      *(a2 + 16) = v48;
    }

    v21 = *(v48 + 2);
    v51 = *(v48 + 3);
    v26 = (v21 + 1);
    if (v21 >= v51 >> 1)
    {
      v48 = sub_21A1B7A3C((v51 > 1), v21 + 1, 1, v48);
    }

    *(v48 + 2) = v26;
    v48[v21 + 32] = 6;
    *(a2 + 16) = v48;
    v44 = *(v20 + 16);
    v45 = *(v20 + 24);
    if (*(v20 + 32))
    {
      v44 = v50;
      v45 = v32;
    }

    if (v50 >> 14 < v44 >> 14)
    {
      v44 = v50;
    }

    if (v32 >> 14 >= v45 >> 14)
    {
      v45 = v32;
    }

    if (v45 >> 14 >= v44 >> 14)
    {
      goto LABEL_106;
    }

    __break(1u);
  }

  v126 = v32;
  v52 = a12;
  v53 = sub_21A1C4D4C(v46, a2);
  v54 = v129;
  if (v53 != 5)
  {
    v66 = v53;

    v67 = *(a12 + 16);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(a12 + 16) = v67;
    if ((v68 & 1) == 0)
    {
      v67 = sub_21A1B7A28(0, *(v67 + 2) + 1, 1, v67);
      *(a12 + 16) = v67;
    }

    v69 = v128;
    v71 = *(v67 + 2);
    v70 = *(v67 + 3);
    if (v71 >= v70 >> 1)
    {
      v67 = sub_21A1B7A28((v70 > 1), v71 + 1, 1, v67);
    }

    *(v67 + 2) = v71 + 1;
    v67[v71 + 32] = v66;
    *(a12 + 16) = v67;
    v72 = *(v69 + 16);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v69 + 16) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_21A1B7A3C(0, *(v72 + 2) + 1, 1, v72);
      *(v69 + 16) = v72;
    }

    v75 = *(v72 + 2);
    v74 = *(v72 + 3);
    if (v75 >= v74 >> 1)
    {
      v72 = sub_21A1B7A3C((v74 > 1), v75 + 1, 1, v72);
    }

    *(v72 + 2) = v75 + 1;
    v72[v75 + 32] = 5;
    *(v69 + 16) = v72;
    v44 = *(v20 + 16);
    v45 = *(v20 + 24);
    if (*(v20 + 32))
    {
      v44 = v54;
      v45 = v126;
    }

    if (v54 >> 14 < v44 >> 14)
    {
      v44 = v54;
    }

    if (v126 >> 14 >= v45 >> 14)
    {
      v45 = v126;
    }

    if (v45 >> 14 >= v44 >> 14)
    {
      goto LABEL_106;
    }

    __break(1u);
LABEL_75:
    v76 = *(v52 + 16);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 16) = v76;
    if ((v77 & 1) == 0)
    {
      v76 = sub_21A1B7A14(0, *(v76 + 2) + 1, 1, v76);
      *(v52 + 16) = v76;
    }

    v58 = v128;
    v79 = *(v76 + 2);
    v78 = *(v76 + 3);
    if (v79 >= v78 >> 1)
    {
      v76 = sub_21A1B7A14((v78 > 1), v79 + 1, 1, v76);
    }

    *(v76 + 2) = v79 + 1;
    v76[v79 + 32] = v54;
    *(v52 + 16) = v76;
    v80 = *(v58 + 16);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 16) = v80;
    if ((v59 & 1) == 0)
    {
      v59 = sub_21A1B7A3C(0, *(v80 + 16) + 1, 1, v80);
      v80 = v59;
      *(v58 + 16) = v59;
    }

    v81 = v129;
    v82 = v126;
    v84 = *(v80 + 16);
    v83 = *(v80 + 24);
    if (v84 >= v83 >> 1)
    {
      v59 = sub_21A1B7A3C((v83 > 1), v84 + 1, 1, v80);
      v80 = v59;
    }

    *(v80 + 16) = v84 + 1;
    *(v80 + v84 + 32) = 2;
    *(v58 + 16) = v80;
    v44 = *(v20 + 16);
    v45 = *(v20 + 24);
    if (*(v20 + 32))
    {
      v44 = v81;
      v45 = v82;
    }

    if (v81 >> 14 < v44 >> 14)
    {
      v44 = v81;
    }

    if (v82 >> 14 >= v45 >> 14)
    {
      v45 = v82;
    }

    if (v45 >> 14 < v44 >> 14)
    {
      __break(1u);
LABEL_91:
      v85 = v59;
      v86 = *(v58 + 16);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *(v58 + 16) = v86;
      v88 = v126;
      v89 = v58;
      if ((v87 & 1) == 0)
      {
        v86 = sub_21A1B7910(0, *(v86 + 2) + 1, 1, v86);
        *(v58 + 16) = v86;
      }

      v90 = v128;
      v91 = v129;
      v93 = *(v86 + 2);
      v92 = *(v86 + 3);
      if (v93 >= v92 >> 1)
      {
        v86 = sub_21A1B7910((v92 > 1), v93 + 1, 1, v86);
      }

      *(v86 + 2) = v93 + 1;
      *&v86[8 * v93 + 32] = v85;
      *(v89 + 16) = v86;
      v94 = *(v90 + 16);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *(v90 + 16) = v94;
      if ((v95 & 1) == 0)
      {
        v94 = sub_21A1B7A3C(0, *(v94 + 2) + 1, 1, v94);
        *(v90 + 16) = v94;
      }

      v97 = *(v94 + 2);
      v96 = *(v94 + 3);
      if (v97 >= v96 >> 1)
      {
        v94 = sub_21A1B7A3C((v96 > 1), v97 + 1, 1, v94);
      }

      *(v94 + 2) = v97 + 1;
      v94[v97 + 32] = 1;
      *(v90 + 16) = v94;
      v44 = *(v20 + 16);
      v45 = *(v20 + 24);
      if (*(v20 + 32))
      {
        v44 = v91;
        v45 = v88;
      }

      if (v91 >> 14 < v44 >> 14)
      {
        v44 = v91;
      }

      if (v88 >> 14 >= v45 >> 14)
      {
        v45 = v88;
      }

      if (v45 >> 14 < v44 >> 14)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        return;
      }
    }

LABEL_106:
    *(v20 + 16) = v44;
    *(v20 + 24) = v45;
    *(v20 + 32) = 0;
    return;
  }

  v125 = v26;
  v131 = a12;
  v52 = a13;
  v138 = v46;
  v139 = a2;
  v136 = 46;
  v137 = 0xE100000000000000;
  v134 = 0;
  v135 = 0xE000000000000000;
  v115 = sub_21A1834FC();
  v116 = v115;
  v113 = MEMORY[0x277D837D0];
  v114 = v115;
  v55 = sub_21A2F7F04();
  v57 = v56;

  LOBYTE(v54) = sub_21A1C4EC4(v55, v57);

  if (v54 != 4)
  {
    goto LABEL_75;
  }

  v58 = a14;
  v59 = sub_21A1C503C(v46, a2);
  if ((v60 & 1) == 0)
  {
    goto LABEL_91;
  }

  v124 = a14;
  v61 = (v21 + *(v22 + 48));
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;
    v64 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    sub_21A2F5434();
    v65 = v125;
    v118 = sub_21A1C5D90(v63, v62, 1);
    if (v65)
    {

      return;
    }

    if (v118)
    {
      v117 = a13;
      v98 = sub_21A2F78A4();
      v99 = [v118 firstMatchInString:v98 options:0 range:{0, sub_21A2F79B4()}];

      v120 = v99;
      if (!v99)
      {
LABEL_114:

        return;
      }

      v100 = [v120 numberOfRanges];
      v119 = v100;
      if (v100 >= 1)
      {
        if (v100 != 1)
        {
          for (i = 1; v119 != i; ++i)
          {
            [v120 rangeAtIndex_];
            if (v102 >= 1)
            {
              v125 = i;
              v103 = sub_21A2F79D4();
              if (sub_21A2F79D4() >> 14 < v103 >> 14)
              {
                goto LABEL_123;
              }

              v104 = sub_21A2F7A94();
              v122 = v106;
              v123 = v105;
              v108 = v107;
              sub_21A2F7A44();
              v121 = sub_21A2F79D4();
              sub_21A2F7A44();
              v109 = sub_21A2F79D4();
              v110 = MEMORY[0x21CED6410](v104, v123, v122, v108);
              v112 = v111;

              if (v109 >> 14 < v121 >> 14)
              {
                goto LABEL_124;
              }

              v115 = a15;
              v116 = a16;
              v114 = v124;
              v113 = v117;
              sub_21A1C40F0(v110, v112);

              i = v125;
            }
          }
        }

        goto LABEL_114;
      }

      goto LABEL_125;
    }
  }
}

uint64_t sub_21A1C4D4C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = v2 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack;
  v4 = *(v3 + *(type metadata accessor for LanguagePack() + 24));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = sub_21A2F5434();
  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = *(*(v4 + 48) + v13);
    v15 = *(*(v4 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v20[0] = v18;
    v20[1] = v19;
    MEMORY[0x28223BE20](result, v10);
    v17[2] = v20;
    sub_21A2F5434();
    v16 = sub_21A1A2DC4(sub_21A1A3A34, v17, v15);

    if (v16)
    {
LABEL_13:

      return v14;
    }
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
      v14 = 5;
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1C4EC4(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = v2 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack;
  v4 = *(v3 + *(type metadata accessor for LanguagePack() + 20));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = sub_21A2F5434();
  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = *(*(v4 + 48) + v13);
    v15 = *(*(v4 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v20[0] = v18;
    v20[1] = v19;
    MEMORY[0x28223BE20](result, v10);
    v17[2] = v20;
    sub_21A2F5434();
    v16 = sub_21A1A2DC4(sub_21A1A3A34, v17, v15);

    if (v16)
    {
LABEL_13:

      return v14;
    }
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
      v14 = 4;
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1C503C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10CookingKit11TimerTagger_formatter);
  v6 = sub_21A2F78A4();
  v7 = [v5 numberFromString_];

  if (v7 || (v8 = *(v2 + OBJC_IVAR____TtC10CookingKit11TimerTagger_spellOutFormatter), v9 = sub_21A2F78A4(), v7 = [v8 numberFromString_], v9, v7))
  {
    sub_21A2F7CD4();
    v11 = v10;

    return v11;
  }

  else
  {
    v13 = v2 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack;
    v14 = *(v13 + *(type metadata accessor for LanguagePack() + 44));
    if (*(v14 + 16) && (v15 = sub_21A25A4C4(a1, a2), (v16 & 1) != 0))
    {
      return *(*(v14 + 56) + 8 * v15);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21A1C515C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit11TimerTagger_tokenizer);
  v2 = sub_21A2F78A4();
  [v1 setString_];

  v3 = sub_21A2F7DA4();
  sub_21A176C98(&qword_27CCFFC10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21A2FC020;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = sub_21A2F7A94();
      v10 = MEMORY[0x21CED6410](v9);
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21A1B6DC4(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_21A1B6DC4((v13 > 1), v14 + 1, 1, v6);
      }

      v5 += 2;
      *(v6 + 2) = v14 + 1;
      v15 = &v6[32 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      *(v15 + 6) = v7;
      *(v15 + 7) = v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  result = v17;
  *(v17 + 32) = v6;
  return result;
}

void *sub_21A1C5318()
{
  v113[1] = *MEMORY[0x277D85DE8];
  v1 = v0 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack;
  v2 = *(v1 + *(type metadata accessor for LanguagePack() + 52));
  v3 = MEMORY[0x277D84F90];
  v98 = *(v2 + 16);
  if (!v98)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v95 = 0;
  v5 = &unk_278252000;
  v6 = MEMORY[0x277D84F90];
  v97 = v2;
  do
  {
    if (v4 >= *(v2 + 16))
    {
      goto LABEL_89;
    }

    v101 = v4;
    v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    sub_21A2F5434();
    v8 = sub_21A2F78A4();

    v113[0] = 0;
    v9 = [v7 initWithPattern:v8 options:1 error:{v113, v95}];

    if (v9)
    {
      v10 = v113[0];
      v11 = sub_21A2F78A4();
      v96 = v9;
      v12 = [v9 matchesInString:v11 options:0 range:{0, sub_21A2F79B4()}];

      sub_21A1C73F0();
      v13 = sub_21A2F7B24();

      v14 = v13;
      if (v13 >> 62)
      {
        v15 = sub_21A2F8164();
        v14 = v13;
        if (v15)
        {
LABEL_7:
          v16 = 0;
          v103 = v14 & 0xC000000000000001;
          v99 = v14 + 32;
          v100 = v14 & 0xFFFFFFFFFFFFFF8;
          v102 = v15;
          while (1)
          {
            if (v103)
            {
              v17 = v16;
              v18 = MEMORY[0x21CED6AE0](v16);
            }

            else
            {
              if (v16 >= *(v100 + 16))
              {
                goto LABEL_88;
              }

              v17 = v16;
              v18 = *(v99 + 8 * v16);
            }

            v19 = v18;
            v20 = __OFADD__(v17, 1);
            v21 = v17 + 1;
            if (v20)
            {
              goto LABEL_86;
            }

            v104 = v21;
            v22 = [v18 numberOfRanges];
            if ((v22 & 0x8000000000000000) != 0)
            {
              break;
            }

            v23 = v22;
            if (v22)
            {
              v24 = 0;
              v105 = v22;
              v106 = v19;
              do
              {
                [v19 v5[132]];
                if (v25 >= 1)
                {
                  v110 = sub_21A2F7D94();
                  if ((v27 & 1) == 0)
                  {
                    v109 = v24;
                    v28 = *(v3 + 2);
                    if (v28)
                    {
                      v29 = v110 >> 14;
                      v30 = v26 >> 14;
                      v31 = v3 + 40;
                      v32 = *(v3 + 2);
                      v33 = v3 + 40;
                      while (1)
                      {
                        v34 = *v33;
                        v33 += 16;
                        v35 = v34 >> 14;
                        if (v29 < v34 >> 14)
                        {
                          v36 = *(v31 - 1) >> 14;
                          v37 = v36 >= v30 || v29 == v30;
                          if (!v37 && v36 != v35)
                          {
                            break;
                          }
                        }

                        v31 = v33;
                        if (!--v32)
                        {
                          goto LABEL_34;
                        }
                      }
                    }

                    else
                    {
LABEL_34:
                      v39 = v26;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v3 = sub_21A1B7110(0, v28 + 1, 1, v3);
                      }

                      v41 = *(v3 + 2);
                      v40 = *(v3 + 3);
                      if (v41 >= v40 >> 1)
                      {
                        v91 = sub_21A1B7110((v40 > 1), v41 + 1, 1, v3);
                        v42 = v39;
                        v3 = v91;
                      }

                      else
                      {
                        v42 = v39;
                      }

                      v107 = v3;
                      v108 = v6;
                      *(v3 + 2) = v41 + 1;
                      v43 = &v3[16 * v41];
                      *(v43 + 4) = v110;
                      *(v43 + 5) = v42;
                      v44 = sub_21A2F7A94();
                      v45 = MEMORY[0x21CED6410](v44);
                      v47 = v46;

                      v48 = HIBYTE(v47) & 0xF;
                      if ((v47 & 0x2000000000000000) == 0)
                      {
                        v48 = v45 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v48)
                      {
                        v49 = 4 * v48;
                        sub_21A2F5434();
                        v50 = 0;
                        v51 = 15;
                        v52 = MEMORY[0x277D84F90];
                        do
                        {
                          sub_21A2F7A74();
                          v54 = sub_21A2F7814();

                          if (v54)
                          {
                            if (v51 >> 14 != v50)
                            {
                              if (v50 < v51 >> 14)
                              {
                                goto LABEL_84;
                              }

                              v55 = sub_21A2F7A94();
                              v57 = v56;
                              v59 = v58;
                              v61 = v60;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v52 = sub_21A1B7004(0, *(v52 + 2) + 1, 1, v52);
                              }

                              v63 = *(v52 + 2);
                              v62 = *(v52 + 3);
                              if (v63 >= v62 >> 1)
                              {
                                v52 = sub_21A1B7004((v62 > 1), v63 + 1, 1, v52);
                              }

                              *(v52 + 2) = v63 + 1;
                              v64 = &v52[32 * v63];
                              *(v64 + 4) = v55;
                              *(v64 + 5) = v57;
                              *(v64 + 6) = v59;
                              *(v64 + 7) = v61;
                            }

                            v53 = sub_21A2F79C4();
                            v51 = v53;
                          }

                          else
                          {
                            v53 = sub_21A2F79C4();
                          }

                          v50 = v53 >> 14;
                        }

                        while (v53 >> 14 != v49);
                        if (v51 >> 14 != v49)
                        {
                          if (v49 >= v51 >> 14)
                          {
                            v67 = sub_21A2F7A94();
                            v69 = v68;
                            v71 = v70;
                            v73 = v72;

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v52 = sub_21A1B7004(0, *(v52 + 2) + 1, 1, v52);
                            }

                            v75 = *(v52 + 2);
                            v74 = *(v52 + 3);
                            v65 = v75 + 1;
                            if (v75 >= v74 >> 1)
                            {
                              v52 = sub_21A1B7004((v74 > 1), v75 + 1, 1, v52);
                            }

                            *(v52 + 2) = v65;
                            v76 = &v52[32 * v75];
                            *(v76 + 4) = v67;
                            *(v76 + 5) = v69;
                            *(v76 + 6) = v71;
                            *(v76 + 7) = v73;
                            v66 = MEMORY[0x277D84F90];
LABEL_64:
                            v113[0] = v66;
                            sub_21A25D63C(0, v65, 0);
                            v66 = v113[0];
                            v77 = (v52 + 56);
                            while (1)
                            {
                              v78 = *(v77 - 3);
                              v79 = *(v77 - 2);
                              if (v79 >> 14 < v78 >> 14)
                              {
                                break;
                              }

                              v111 = v65;
                              v80 = *v77;
                              v112 = *(v77 - 1);
                              sub_21A2F5434();
                              sub_21A2F7A44();
                              v81 = sub_21A2F79D4();
                              sub_21A2F7A44();
                              v82 = sub_21A2F79D4();
                              v83 = MEMORY[0x21CED6410](v78, v79, v112, v80);
                              v85 = v84;

                              if (v82 >> 14 < v81 >> 14)
                              {
                                goto LABEL_83;
                              }

                              v113[0] = v66;
                              v87 = v66[2];
                              v86 = v66[3];
                              if (v87 >= v86 >> 1)
                              {
                                sub_21A25D63C((v86 > 1), v87 + 1, 1);
                                v66 = v113[0];
                              }

                              v66[2] = v87 + 1;
                              v88 = &v66[4 * v87];
                              v88[4] = v83;
                              v88[5] = v85;
                              v88[6] = v81;
                              v88[7] = v82;
                              v77 += 4;
                              v65 = v111 - 1;
                              if (v111 == 1)
                              {
                                goto LABEL_70;
                              }
                            }

                            __break(1u);
LABEL_83:
                            __break(1u);
LABEL_84:
                            __break(1u);
                          }

                          __break(1u);
LABEL_86:
                          __break(1u);
                          goto LABEL_87;
                        }

                        v65 = *(v52 + 2);
                        v66 = MEMORY[0x277D84F90];
                        if (v65)
                        {
                          goto LABEL_64;
                        }
                      }

                      else
                      {
                        v66 = MEMORY[0x277D84F90];
                        v65 = *(MEMORY[0x277D84F90] + 16);
                        v52 = MEMORY[0x277D84F90];
                        if (v65)
                        {
                          goto LABEL_64;
                        }
                      }

LABEL_70:

                      v6 = v108;
                      v5 = &unk_278252000;
                      v3 = v107;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v6 = sub_21A1B6ED0(0, v108[2] + 1, 1, v108);
                      }

                      v90 = v6[2];
                      v89 = v6[3];
                      if (v90 >= v89 >> 1)
                      {
                        v6 = sub_21A1B6ED0((v89 > 1), v90 + 1, 1, v6);
                      }

                      v6[2] = v90 + 1;
                      v6[v90 + 4] = v66;
                      v23 = v105;
                      v19 = v106;
                    }

                    v24 = v109;
                  }
                }

                ++v24;
              }

              while (v24 != v23);
            }

            v16 = v104;
            if (v104 == v102)
            {
              goto LABEL_77;
            }
          }

LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
        }
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_7;
        }
      }

LABEL_77:
    }

    else
    {
      v92 = v113[0];
      v93 = sub_21A2F4654();

      swift_willThrow();
      v95 = 0;
    }

    v4 = v101 + 1;
    v2 = v97;
  }

  while (v101 + 1 != v98);

  return v6;
}

uint64_t sub_21A1C5B80()
{
  sub_21A1C74A4(v0 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack, type metadata accessor for LanguagePack);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimerTagger()
{
  result = qword_27CCFFFD8;
  if (!qword_27CCFFFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A1C5C7C()
{
  result = type metadata accessor for LanguagePack();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21A1C5D3C()
{
  result = qword_27CCFFFE8;
  if (!qword_27CCFFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFFE8);
  }

  return result;
}

id sub_21A1C5D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21A2F78A4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21A2F4654();

    swift_willThrow();
  }

  return v6;
}

void sub_21A1C5E6C(void **a1)
{
  v2 = *(type metadata accessor for InTextCountdownTimer() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21A1C727C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21A1C5F14(v5);
  *a1 = v3;
}

void sub_21A1C5F14(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21A2F8344();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InTextCountdownTimer();
        v6 = sub_21A2F7B74();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InTextCountdownTimer() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21A1C6294(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21A1C6040(0, v2, 1, a1);
  }
}

void sub_21A1C6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for InTextCountdownTimer();
  MEMORY[0x28223BE20](v38, v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v29 - v12);
  MEMORY[0x28223BE20](v14, v15);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_21A1C743C(v24, v18, type metadata accessor for InTextCountdownTimer);
      sub_21A1C743C(v21, v13, type metadata accessor for InTextCountdownTimer);
      v25 = *v18;
      v26 = *v13;
      sub_21A1C74A4(v13, type metadata accessor for InTextCountdownTimer);
      sub_21A1C74A4(v18, type metadata accessor for InTextCountdownTimer);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_21A1C734C(v24, v37, type metadata accessor for InTextCountdownTimer);
      swift_arrayInitWithTakeFrontToBack();
      sub_21A1C734C(v27, v21, type metadata accessor for InTextCountdownTimer);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21A1C6294(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v124 = type metadata accessor for InTextCountdownTimer();
  v9 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v10);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v123 = &v107 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v126 = (&v107 - v17);
  MEMORY[0x28223BE20](v18, v19);
  v125 = (&v107 - v20);
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_21A1C7168(a4);
    }

    v127 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      v103 = v9;
      while (*a3)
      {
        v104 = *&v102[16 * a4];
        v105 = v102;
        v9 = *&v102[16 * a4 + 24];
        sub_21A1C6BCC(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_21A1C7168(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v105[16 * a4];
        *v106 = v104;
        *(v106 + 1) = v9;
        v127 = v105;
        sub_21A1C70DC(a4 - 1);
        v102 = v127;
        a4 = *(v127 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v113 = a3;
  v111 = a4;
  v109 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v116 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *a3;
      v27 = *(v9 + 72);
      v5 = v26 + v27 * v25;
      v28 = v125;
      sub_21A1C743C(v5, v125, type metadata accessor for InTextCountdownTimer);
      v29 = v126;
      sub_21A1C743C(v26 + v27 * v24, v126, type metadata accessor for InTextCountdownTimer);
      v30 = *v28;
      v118 = *v29;
      v119 = v30;
      sub_21A1C74A4(v29, type metadata accessor for InTextCountdownTimer);
      sub_21A1C74A4(v28, type metadata accessor for InTextCountdownTimer);
      v110 = v24;
      v31 = v24 + 2;
      v120 = v27;
      v121 = v21;
      v32 = v26 + v27 * v31;
      while (v21 != v31)
      {
        LODWORD(v122) = v119 < v118;
        v33 = v125;
        sub_21A1C743C(v32, v125, type metadata accessor for InTextCountdownTimer);
        v34 = v6;
        v35 = v126;
        sub_21A1C743C(v5, v126, type metadata accessor for InTextCountdownTimer);
        v36 = *v33;
        v37 = *v35;
        v38 = v35;
        v6 = v34;
        sub_21A1C74A4(v38, type metadata accessor for InTextCountdownTimer);
        v21 = v121;
        sub_21A1C74A4(v33, type metadata accessor for InTextCountdownTimer);
        ++v31;
        v32 += v120;
        v5 += v120;
        if (((v122 ^ (v36 >= v37)) & 1) == 0)
        {
          v21 = v31 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v109;
      v24 = v110;
      a4 = v111;
      if (v119 < v118)
      {
        if (v21 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v21)
        {
          v39 = v120 * (v21 - 1);
          v40 = v21 * v120;
          v121 = v21;
          v41 = v21;
          v42 = v110;
          v43 = v110 * v120;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_21A1C734C(v44 + v43, v115, type metadata accessor for InTextCountdownTimer);
              if (v43 < v39 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21A1C734C(v115, v44 + v39, type metadata accessor for InTextCountdownTimer);
              a3 = v113;
            }

            ++v42;
            v39 -= v120;
            v40 -= v120;
            v43 += v120;
          }

          while (v42 < v41);
          v9 = v109;
          v24 = v110;
          a4 = v111;
          v21 = v121;
        }
      }
    }

    v45 = a3[1];
    if (v21 < v45)
    {
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_125;
      }

      if (v21 - v24 < a4)
      {
        if (__OFADD__(v24, a4))
        {
          goto LABEL_127;
        }

        if ((v24 + a4) >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v24 + a4;
        }

        if (v46 < v24)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v21 != v46)
        {
          break;
        }
      }
    }

    v47 = v21;
    if (v21 < v24)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v116;
    }

    else
    {
      v23 = sub_21A1B7214(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v23 + 2);
    v48 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v23 = sub_21A1B7214((v48 > 1), a4 + 1, 1, v23);
    }

    *(v23 + 2) = v5;
    v49 = &v23[16 * a4];
    *(v49 + 4) = v24;
    *(v49 + 5) = v47;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    v117 = v47;
    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v23 + 4);
          v53 = *(v23 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v23[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v23[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v23[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v23[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v89 = v23;
        v90 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v51 + 40];
        sub_21A1C6BCC(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v23[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_21A1C7168(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v89[16 * a4];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v127 = v89;
        sub_21A1C70DC(v51);
        v23 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v23[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v23[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v23[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = a3[1];
    v22 = v117;
    a4 = v111;
    if (v117 >= v21)
    {
      goto LABEL_95;
    }
  }

  v108 = v6;
  v92 = *a3;
  v93 = *(v9 + 72);
  v94 = *a3 + v93 * (v21 - 1);
  v95 = -v93;
  v110 = v24;
  v96 = v24 - v21;
  v114 = v93;
  v122 = v92;
  v5 = v92 + v21 * v93;
  v117 = v46;
LABEL_85:
  v120 = v94;
  v121 = v21;
  v118 = v5;
  v119 = v96;
  v97 = v94;
  while (1)
  {
    v98 = v125;
    sub_21A1C743C(v5, v125, type metadata accessor for InTextCountdownTimer);
    v99 = v126;
    sub_21A1C743C(v97, v126, type metadata accessor for InTextCountdownTimer);
    a4 = *v98;
    v100 = *v99;
    sub_21A1C74A4(v99, type metadata accessor for InTextCountdownTimer);
    sub_21A1C74A4(v98, type metadata accessor for InTextCountdownTimer);
    if (a4 >= v100)
    {
LABEL_84:
      v21 = v121 + 1;
      v94 = v120 + v114;
      v96 = v119 - 1;
      v5 = v118 + v114;
      v47 = v117;
      if (v121 + 1 != v117)
      {
        goto LABEL_85;
      }

      v6 = v108;
      v9 = v109;
      a3 = v113;
      v24 = v110;
      if (v117 < v110)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    a4 = v123;
    sub_21A1C734C(v5, v123, type metadata accessor for InTextCountdownTimer);
    swift_arrayInitWithTakeFrontToBack();
    sub_21A1C734C(a4, v97, type metadata accessor for InTextCountdownTimer);
    v97 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_21A1C6BCC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for InTextCountdownTimer();
  MEMORY[0x28223BE20](v46, v8);
  v48 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v47 = (&v38 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v42 = a1;
      v43 = a4;
      v41 = v27;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v39;
            goto LABEL_58;
          }

          v31 = a3;
          v40 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v47;
          sub_21A1C743C(v33, v47, type metadata accessor for InTextCountdownTimer);
          v35 = v48;
          sub_21A1C743C(v30, v48, type metadata accessor for InTextCountdownTimer);
          v36 = *v34;
          v37 = *v35;
          sub_21A1C74A4(v35, type metadata accessor for InTextCountdownTimer);
          sub_21A1C74A4(v34, type metadata accessor for InTextCountdownTimer);
          if (v36 < v37)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            v27 = v41;
            a1 = v42;
          }

          else
          {
            v30 = v45;
            v27 = v41;
            a1 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v44;
          if (v32 <= v43)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          a2 = v45;
          v27 = v41;
          a1 = v42;
          v26 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v43);
    }

LABEL_57:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v20 = v47;
        sub_21A1C743C(a2, v47, type metadata accessor for InTextCountdownTimer);
        v21 = a2;
        v22 = v48;
        sub_21A1C743C(a4, v48, type metadata accessor for InTextCountdownTimer);
        v23 = *v20;
        v24 = *v22;
        sub_21A1C74A4(v22, type metadata accessor for InTextCountdownTimer);
        sub_21A1C74A4(v20, type metadata accessor for InTextCountdownTimer);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
            a2 = v21;
          }

          else
          {
            v25 = v44;
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v21 + v14;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
          }

          else
          {
            v25 = v44;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v25);
    }
  }

LABEL_58:
  sub_21A1C7194(&v51, &v50, &v49, type metadata accessor for InTextCountdownTimer);
}

uint64_t sub_21A1C70DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21A1C7168(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21A1C7194(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_21A1C7290()
{
  result = qword_27CD00008;
  if (!qword_27CD00008)
  {
    sub_21A176D98(&qword_27CD00000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00008);
  }

  return result;
}

unint64_t sub_21A1C72F4()
{
  result = qword_2811B3DB0;
  if (!qword_2811B3DB0)
  {
    sub_21A2F5294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3DB0);
  }

  return result;
}

uint64_t sub_21A1C734C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1C73F0()
{
  result = qword_27CD00010;
  if (!qword_27CD00010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD00010);
  }

  return result;
}

uint64_t sub_21A1C743C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1C74A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimerTagger.TokenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerTagger.TokenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A1C7668()
{
  result = qword_27CD00018;
  if (!qword_27CD00018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00018);
  }

  return result;
}

uint64_t dispatch thunk of SavedRecipeServiceType.saveRecipe(_:cardID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21A145E2C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SavedRecipeServiceType.deleteRecipe(_:cardID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21A146070;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SavedRecipeServiceType.savedRecipeIDs.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A1C7A78;

  return v7(a1, a2);
}

uint64_t sub_21A1C7A78(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t Continuation<>.resume()()
{
  sub_21A176C98(&qword_27CCFF070);
  sub_21A176C98(&qword_27CCFF078);
  return sub_21A2F7BF4();
}

uint64_t Continuation.resume(throwing:)(void *a1)
{
  v1 = a1;
  sub_21A176D98(&qword_27CCFFBB8);
  sub_21A2F7C04();
  return sub_21A2F7BE4();
}

uint64_t Continuation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A2F4A14();
  v4 = *(type metadata accessor for Continuation() + 28);
  sub_21A176D98(&qword_27CCFFBB8);
  v5 = sub_21A2F7C04();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t Continuation.resume(returning:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x28223BE20](a1, a2);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_21A176D98(&qword_27CCFFBB8);
  sub_21A2F7C04();
  return sub_21A2F7BF4();
}

uint64_t sub_21A1C7E30()
{
  sub_21A1BE468();
  sub_21A1BE4BC();

  return sub_21A2F7624();
}

uint64_t sub_21A1C7E9C()
{
  v0 = sub_21A176C98(&qword_27CCFEDC0);
  sub_21A177DCC(v0, qword_27CD00020);
  v1 = sub_21A177CBC(v0, qword_27CD00020);
  v2 = type metadata accessor for ImageAsset(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_21A1C7F3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21A176C98(&qword_27CCFEDC0);
  v3 = sub_21A177CBC(v2, qword_27CD00020);

  return sub_21A17FE58(v3, a1);
}

__n128 sub_21A1C7FC0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21A1C7FEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_21A1C8034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A1C80C0@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_21A2F6224();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v58 = sub_21A176C98(&qword_27CD00038);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v4);
  v6 = &v54 - v5;
  v7 = sub_21A176C98(&qword_27CD00040);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v54 - v10;
  v12 = sub_21A176C98(&qword_27CD00048);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v56 = &v54 - v15;
  v54 = sub_21A176C98(&qword_27CD00050) - 8;
  MEMORY[0x28223BE20](v54, v16);
  v18 = &v54 - v17;
  v19 = sub_21A176C98(&qword_27CD00058);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v55 = &v54 - v22;
  sub_21A2F6014();
  sub_21A2F6214();
  v60 = v1;
  sub_21A176C98(&qword_27CD00060);
  sub_21A1C89BC();
  sub_21A2F5624();
  sub_21A2F7354();
  sub_21A2F5C14();
  (*(v57 + 32))(v11, v6, v58);
  v23 = &v11[*(v8 + 44)];
  v24 = v66;
  *(v23 + 4) = v65;
  *(v23 + 5) = v24;
  *(v23 + 6) = v67;
  v25 = v62;
  *v23 = v61;
  *(v23 + 1) = v25;
  v26 = v64;
  *(v23 + 2) = v63;
  *(v23 + 3) = v26;
  v27 = sub_21A2F6634();
  sub_21A2F55A4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v56;
  sub_21A149B18(v11, v56, &qword_27CD00040);
  v37 = v36 + *(v13 + 44);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  v38 = sub_21A2F6654();
  sub_21A2F55A4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_21A149B18(v36, v18, &qword_27CD00048);
  v47 = v55;
  v48 = &v18[*(v54 + 44)];
  *v48 = v38;
  *(v48 + 1) = v40;
  *(v48 + 2) = v42;
  *(v48 + 3) = v44;
  *(v48 + 4) = v46;
  v48[40] = 0;
  sub_21A149B18(v18, v47, &qword_27CD00050);
  *(v47 + *(v20 + 44)) = 256;
  v49 = 0;
  if (sub_21A1C8730())
  {
    v49 = *(v1 + 56);
  }

  v50 = *(v1 + 24);
  v51 = v59;
  sub_21A149B18(v47, v59, &qword_27CD00058);
  result = sub_21A176C98(&qword_27CD00090);
  v53 = v51 + *(result + 36);
  *v53 = v50;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  *(v53 + 17) = v49;
  return result;
}

uint64_t sub_21A1C8598(uint64_t a1)
{
  if (*(a1 + 58))
  {
  }

  type metadata accessor for ContentView();
  sub_21A176C98(&qword_27CD00080);
  sub_21A1CC4E8(&qword_27CD00070, type metadata accessor for ContentView);
  sub_21A1C8AD0();
  return sub_21A2F7234();
}

uint64_t sub_21A1C8690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 57);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = *(type metadata accessor for ContentView() + 28);
  *(a2 + v4) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_21A1C8730()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v0 + 80);
  v6 = *(v0 + 72);
  v15 = v6;
  if (v16 == 1)
  {
    if (v6)
    {
LABEL_3:
      v7 = 0;
      return v7 & 1;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v8 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v15, &qword_27CD00098);
    (*(v2 + 8))(v5, v1);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v14 = *(v0 + 96);
  v9 = *(v0 + 88);
  v13 = v9;
  if (v14 != 1)
  {

    sub_21A2F7DE4();
    v10 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v13, &qword_27CD00098);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v9) = v12[15];
  }

  v7 = v9 ^ 1;
  return v7 & 1;
}

unint64_t sub_21A1C89BC()
{
  result = qword_27CD00068;
  if (!qword_27CD00068)
  {
    sub_21A176D98(&qword_27CD00060);
    sub_21A1CC4E8(&qword_27CD00070, type metadata accessor for ContentView);
    sub_21A1C8AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00068);
  }

  return result;
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_27CD000A0;
  if (!qword_27CD000A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A1C8AD0()
{
  result = qword_27CD00078;
  if (!qword_27CD00078)
  {
    sub_21A176D98(&qword_27CD00080);
    sub_21A1C8B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00078);
  }

  return result;
}

unint64_t sub_21A1C8B54()
{
  result = qword_27CD00088;
  if (!qword_27CD00088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00088);
  }

  return result;
}

uint64_t sub_21A1C8BA8@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v116 = sub_21A176C98(&qword_27CD000E8);
  MEMORY[0x28223BE20](v116, v2);
  v101 = (&v97 - v3);
  v113 = sub_21A176C98(&qword_27CD000F0);
  MEMORY[0x28223BE20](v113, v4);
  v115 = &v97 - v5;
  v114 = sub_21A176C98(&qword_27CD000F8);
  v7 = MEMORY[0x28223BE20](v114, v6);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v102 = &v97 - v10;
  v11 = sub_21A176C98(&qword_27CD00100);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v123 = &v97 - v16;
  v99 = sub_21A2F5ED4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v17);
  v97 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for RecipeCardMetadataView();
  v110 = *(v112 - 8);
  v20 = MEMORY[0x28223BE20](v112, v19);
  v105 = (&v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v22);
  v104 = &v97 - v23;
  v24 = sub_21A176C98(&qword_27CD00108);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v121 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v120 = &v97 - v29;
  v30 = type metadata accessor for RecipeCardTitleView();
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21A176C98(&qword_27CD00110) - 8;
  v36 = MEMORY[0x28223BE20](v109, v35);
  v119 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v108 = &v97 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v122 = &v97 - v42;
  v111 = v1;
  v43 = *v1;
  swift_getKeyPath();
  v107 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  *&v125 = v43;
  sub_21A1CC4E8(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v45 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo);
  v44 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 8);
  v46 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 16);
  v47 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 24);
  v48 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 40);
  v106 = *(v43 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 32);
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v49 = *(v31 + 28);
  *&v34[v49] = swift_getKeyPath();
  v103 = sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v50 = &v34[*(v31 + 32)];
  *v50 = v45;
  *(v50 + 1) = v44;
  v51 = v43;
  *(v50 + 2) = v46;
  *(v50 + 3) = v47;
  *(v50 + 4) = v106;
  *(v50 + 5) = v48;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F7354();
  v52 = 1;
  sub_21A2F5C14();
  v53 = v108;
  sub_21A1CBB60(v34, v108, type metadata accessor for RecipeCardTitleView);
  v54 = (v53 + *(v109 + 44));
  v55 = v130;
  v54[4] = v129;
  v54[5] = v55;
  v54[6] = v131;
  v56 = v126;
  *v54 = v125;
  v54[1] = v56;
  v57 = v128;
  v54[2] = v127;
  v54[3] = v57;
  sub_21A149B18(v53, v122, &qword_27CD00110);
  swift_getKeyPath();
  v124 = v43;
  sub_21A2F5094();

  v58 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata;
  if (!*(*(v51 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata) + 16))
  {
    v63 = v120;
    v64 = v112;
    goto LABEL_11;
  }

  swift_getKeyPath();
  v124 = v51;
  sub_21A2F5094();

  v59 = *(v51 + v58);
  v60 = v111;
  v61 = v111[2];
  v62 = *(v111 + 24);
  sub_21A2F5434();
  if (v62 == 1)
  {
    v63 = v120;
    if (v61)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_21A1B5814(v61, 0);
    sub_21A2F7DE4();
    v65 = sub_21A2F65B4();
    sub_21A2F53B4();

    v66 = v97;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v61, 0);
    (*(v98 + 8))(v66, v99);
    v63 = v120;
    if (v124)
    {
LABEL_9:
      v67 = 1;
      goto LABEL_10;
    }
  }

  if ((v60[1] & 1) == 0)
  {
    goto LABEL_9;
  }

  v67 = 0;
LABEL_10:
  v68 = v105;
  *v105 = v59;
  *(v68 + 8) = v67;
  v64 = v112;
  v69 = *(v112 + 24);
  *(v68 + v69) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v70 = v68;
  v71 = v104;
  sub_21A1CBB60(v70, v104, type metadata accessor for RecipeCardMetadataView);
  sub_21A1CBB60(v71, v63, type metadata accessor for RecipeCardMetadataView);
  v52 = 0;
LABEL_11:
  (*(v110 + 56))(v63, v52, 1, v64);
  if (sub_21A1C9A20())
  {
    sub_21A176C98(&qword_27CD00138);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FEED0;
    v73 = sub_21A2F65C4();
    *(inited + 32) = v73;
    v74 = sub_21A2F65E4();
    *(inited + 33) = v74;
    v75 = sub_21A2F65D4();
    sub_21A2F65D4();
    if (sub_21A2F65D4() != v73)
    {
      v75 = sub_21A2F65D4();
    }

    sub_21A2F65D4();
    if (sub_21A2F65D4() != v74)
    {
      v75 = sub_21A2F65D4();
    }

    v76 = v100;
    *v100 = v75;
    v77 = sub_21A176C98(&qword_27CD00140);
    sub_21A1C9C10(v76 + *(v77 + 44));
    v78 = v102;
    sub_21A15CC14(v76, v102);
    v79 = &qword_27CD000F8;
    sub_21A183960(v78, v115, &qword_27CD000F8);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD00120, &qword_27CD000F8);
    sub_21A1772F8(&qword_27CD00128, &qword_27CD000E8);
    sub_21A2F6114();
    v80 = v78;
  }

  else
  {
    v81 = sub_21A2F6004();
    v82 = v101;
    *v101 = v81;
    *(v82 + 8) = 0x4024000000000000;
    *(v82 + 16) = 0;
    v83 = sub_21A176C98(&qword_27CD00118);
    sub_21A1CA00C(1, v82 + *(v83 + 44));
    v79 = &qword_27CD000E8;
    sub_21A183960(v82, v115, &qword_27CD000E8);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD00120, &qword_27CD000F8);
    sub_21A1772F8(&qword_27CD00128, &qword_27CD000E8);
    sub_21A2F6114();
    v80 = v82;
  }

  sub_21A1427A8(v80, v79);
  swift_getKeyPath();
  v124 = v51;
  sub_21A2F5094();

  v84 = *(v51 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt + 8);
  if (v84)
  {
    v116 = *(v51 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
    KeyPath = swift_getKeyPath();
    swift_retain_n();

    v86 = v51;
    v87 = sub_21A1CBC68;
  }

  else
  {
    KeyPath = 0;
    v116 = 0;
    v87 = 0;
    v86 = 0;
  }

  v88 = v119;
  sub_21A183960(v122, v119, &qword_27CD00110);
  v89 = v121;
  sub_21A183960(v63, v121, &qword_27CD00108);
  v90 = v117;
  sub_21A183960(v123, v117, &qword_27CD00100);
  v91 = v88;
  v92 = v118;
  sub_21A183960(v91, v118, &qword_27CD00110);
  v93 = sub_21A176C98(&qword_27CD00130);
  sub_21A183960(v89, v92 + v93[12], &qword_27CD00108);
  sub_21A183960(v90, v92 + v93[16], &qword_27CD00100);
  v94 = (v92 + v93[20]);
  swift_bridgeObjectRetain_n();
  v95 = v116;
  sub_21A1CBBC8(KeyPath, 0, v116, v84);
  sub_21A1CBC18(KeyPath, 0, v95, v84);
  *v94 = KeyPath;
  v94[1] = 0;
  v94[2] = v95;
  v94[3] = v84;
  v94[4] = v87;
  v94[5] = v86;
  sub_21A1427A8(v123, &qword_27CD00100);
  sub_21A1427A8(v120, &qword_27CD00108);
  sub_21A1427A8(v122, &qword_27CD00110);
  sub_21A1CBC18(KeyPath, 0, v95, v84);
  sub_21A1427A8(v90, &qword_27CD00100);
  sub_21A1427A8(v121, &qword_27CD00108);
  return sub_21A1427A8(v119, &qword_27CD00110);
}

BOOL sub_21A1C9A20()
{
  v1 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21A2F5ED4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    if (v10)
    {
      return 0;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v11 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v10, 0);
    (*(v6 + 8))(v9, v5);
    if (v14[15])
    {
      return 0;
    }
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    type metadata accessor for ContentView();
    sub_21A1AC424(v4);
    v12 = sub_21A22DF04();
    sub_21A1CBDE8(v4, type metadata accessor for RecipeTheme);
    return v12;
  }

  return 0;
}

uint64_t sub_21A1C9C10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD000E8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  v10 = sub_21A176C98(&qword_27CD00148);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - v16;
  *v17 = sub_21A2F5F34();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_21A176C98(&qword_27CD00150);
  sub_21A1CA00C(0, &v17[*(v18 + 44)]);
  *v9 = sub_21A2F6004();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v19 = sub_21A176C98(&qword_27CD00118);
  sub_21A1CA00C(1, &v9[*(v19 + 44)]);
  sub_21A183960(v17, v14, &qword_27CD00148);
  sub_21A183960(v9, v6, &qword_27CD000E8);
  sub_21A183960(v14, a1, &qword_27CD00148);
  v20 = sub_21A176C98(&qword_27CD00158);
  sub_21A183960(v6, a1 + *(v20 + 48), &qword_27CD000E8);
  sub_21A1427A8(v9, &qword_27CD000E8);
  sub_21A1427A8(v17, &qword_27CD00148);
  sub_21A1427A8(v6, &qword_27CD000E8);
  return sub_21A1427A8(v14, &qword_27CD00148);
}

uint64_t sub_21A1C9E60(uint64_t a1)
{
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  swift_getKeyPath();
  sub_21A1CC4E8(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v7 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt + 8);
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
    sub_21A2F5434();
    sub_21A2F7884();
    sub_21A2F4A54();
    v9 = sub_21A2F7934();
    return sub_21A28E7F8(v9, v10, v8, v7);
  }

  return result;
}

uint64_t sub_21A1CA00C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for RecipeCardQuickLinksView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21A176C98(&qword_27CD00160);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31[-v13];
  v15 = type metadata accessor for RecipeSourceView();
  v16 = v15 - 8;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v31[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31[-v22];
  *v23 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v24 = *(v16 + 28);
  *(v23 + v24) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFED70);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  sub_21A1CC4E8(&qword_27CCFEE58, type metadata accessor for RecipeSourceViewModel);
  sub_21A2F7754();
  swift_getKeyPath();
  sub_21A1CC4E8(&qword_27CCFF158, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F7754();
  v25 = *(v2 + 20);
  *&v5[v25] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v34 = v32;
  sub_21A1CC4E8(&qword_27CD00168, type metadata accessor for RecipeCardQuickLinksView);
  sub_21A2F6A24();

  sub_21A1CBDE8(v5, type metadata accessor for RecipeCardQuickLinksView);
  sub_21A1CBD30(v23, v20);
  v26 = *(v7 + 16);
  v26(v11, v14, v6);
  v27 = v33;
  sub_21A1CBD30(v20, v33);
  v28 = sub_21A176C98(&qword_27CD00170);
  v26((v27 + *(v28 + 48)), v11, v6);
  v29 = *(v7 + 8);
  v29(v14, v6);
  sub_21A1CBDE8(v23, type metadata accessor for RecipeSourceView);
  v29(v11, v6);
  return sub_21A1CBDE8(v20, type metadata accessor for RecipeSourceView);
}

uint64_t sub_21A1CA454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v35 = a2;
  v7 = sub_21A176C98(&qword_27CD00180);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v34 = sub_21A176C98(&qword_27CD00188);
  MEMORY[0x28223BE20](v34, v12);
  v14 = &v32 - v13;
  v15 = swift_allocObject();
  v33 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;

  v32 = sub_21A176C98(&qword_27CD00190);
  v16 = sub_21A176D98(&qword_27CD00198);
  v17 = sub_21A176D98(&qword_27CCFF5C0);
  v18 = sub_21A176D98(&qword_27CD001A0);
  v19 = sub_21A1CBE54();
  v39 = MEMORY[0x277CE1350];
  v40 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_21A1CC1C4();
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = OpaqueTypeConformance2;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  sub_21A2F7094();
  sub_21A1772F8(&qword_27CD00218, &qword_27CD00180);
  sub_21A2F6C84();
  (*(v8 + 8))(v11, v7);
  LOBYTE(v8) = sub_21A2F6624();
  sub_21A2F55A4();
  v22 = v34;
  v23 = &v14[*(v34 + 36)];
  *v23 = v8;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_21A2F72F4();
  v36 = v33;
  v37 = a3;
  v38 = a4;
  sub_21A176C98(&qword_27CD00220);
  sub_21A176C98(&qword_27CD00228);
  v28 = sub_21A1CC374();
  v29 = sub_21A176D98(&qword_27CD00248);
  v39 = v22;
  v40 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v39 = v29;
  v40 = v30;
  swift_getOpaqueTypeConformance2();
  sub_21A1CC530();
  sub_21A2F6E84();
  return sub_21A1427A8(v14, &qword_27CD00188);
}

uint64_t sub_21A1CA878()
{
  sub_21A2F73A4();
  sub_21A2F58E4();
}

uint64_t sub_21A1CA8E8(uint64_t a1)
{
  swift_getKeyPath();
  sub_21A1CC4E8(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    *(a1 + 33) = 0;
    v5 = v4;
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    return sub_21A18FAD4(1, v5, v3, 0, 0, 0, 6u);
  }

  return result;
}

uint64_t sub_21A1CAA04@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v33[0] = sub_21A176C98(&qword_27CCFF5C0);
  v1 = *(v33[0] - 8);
  MEMORY[0x28223BE20](v33[0], v2);
  v4 = v33 - v3;
  v5 = sub_21A176C98(&qword_27CD001B8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = (v33 - v8);
  v10 = sub_21A176C98(&qword_27CD00198);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v33 - v12;
  v14 = sub_21A2F6F94();
  v15 = (v9 + *(sub_21A176C98(&qword_27CD001E8) + 36));
  v16 = *(sub_21A176C98(&qword_27CCFE918) + 28);
  v17 = *MEMORY[0x277CE1048];
  v18 = sub_21A2F6FC4();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v9 = v14;
  sub_21A2F6744();
  sub_21A2F6714();
  v19 = sub_21A2F6764();

  KeyPath = swift_getKeyPath();
  v21 = (v9 + *(sub_21A176C98(&qword_27CD001D8) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = [objc_opt_self() secondaryLabelColor];
  v23 = sub_21A2F6EF4();
  *(v9 + *(sub_21A176C98(&qword_27CD001C8) + 36)) = v23;
  v24 = (v9 + *(v6 + 44));
  *v24 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v24 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
  sub_21A2F7344();
  sub_21A2F5C14();
  sub_21A149B18(v9, v13, &qword_27CD001B8);
  v25 = &v13[*(v10 + 36)];
  v26 = v39;
  *(v25 + 4) = v38;
  *(v25 + 5) = v26;
  *(v25 + 6) = v40;
  v27 = v35;
  *v25 = v34;
  *(v25 + 1) = v27;
  v28 = v37;
  *(v25 + 2) = v36;
  *(v25 + 3) = v28;
  sub_21A2F72F4();
  v29 = MEMORY[0x277CE1340];
  v30 = MEMORY[0x277CE1350];
  sub_21A2F5F74();
  sub_21A176C98(&qword_27CD001A0);
  sub_21A1CBE54();
  v33[2] = v30;
  v33[3] = v29;
  swift_getOpaqueTypeConformance2();
  sub_21A1CC1C4();
  v31 = v33[0];
  sub_21A2F6E94();
  (*(v1 + 8))(v4, v31);
  return sub_21A1427A8(v13, &qword_27CD00198);
}

uint64_t sub_21A1CAE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A2F7344();
  sub_21A2F57C4();
  sub_21A183960(a1, a2, &qword_27CD00198);
  v4 = (a2 + *(sub_21A176C98(&qword_27CD00210) + 36));
  *v4 = v15;
  v4[1] = v16;
  v4[2] = v17;
  *(a2 + *(sub_21A176C98(&qword_27CD00200) + 36)) = xmmword_21A2FEEE0;
  LOBYTE(a1) = sub_21A2F6614();
  sub_21A2F55A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_21A176C98(&qword_27CD001A0);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21A1CAF8C()
{
  v0 = sub_21A2F5FF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A176C98(&qword_27CD00248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  sub_21A2F5FE4();
  v10 = sub_21A176C98(&qword_27CD00188);
  v11 = sub_21A1CC374();
  sub_21A2F6C54();
  (*(v1 + 8))(v4, v0);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_21A2F6B44();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A1CB178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A2F7334();
  v6 = v5;
  v7 = a2 + *(sub_21A176C98(&qword_27CD00270) + 36);
  *v7 = sub_21A2F6004();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = sub_21A176C98(&qword_27CD00288);
  sub_21A1CB304(v7 + *(v8 + 44));
  v9 = (v7 + *(sub_21A176C98(&qword_27CD00280) + 36));
  *v9 = v4;
  v9[1] = v6;
  sub_21A183960(a1, a2, &qword_27CD00188);
  v10 = sub_21A2F6634();
  sub_21A2F55A4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a2 + *(sub_21A176C98(&qword_27CD00260) + 36);
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = sub_21A2F6654();
  sub_21A2F55A4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = sub_21A176C98(&qword_27CD00228);
  v30 = a2 + *(result + 36);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

__n128 sub_21A1CB304@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F5F44();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 104))(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE00F0], v4);
  sub_21A2F6FB4();
  sub_21A2F6B54();

  v7 = sub_21A2F7344();
  v9 = v8;
  sub_21A176C98(&qword_27CD00290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A2FEED0;
  *(v10 + 32) = sub_21A2F6F14();
  *(v10 + 40) = sub_21A2F6F04();
  sub_21A2F7434();
  sub_21A2F7444();
  MEMORY[0x21CED5D30](v10);
  sub_21A2F5954();
  v11 = v14[1];
  v12 = a1 + *(sub_21A176C98(&qword_27CD00298) + 36);
  *v12 = v7;
  *(v12 + 8) = v9;
  *(v12 + 16) = v11;
  result = v15;
  *(v12 + 40) = v16;
  *(v12 + 24) = result;
  return result;
}

uint64_t sub_21A1CB500()
{
  v0 = sub_21A2F5AC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21A2F6804();
  sub_21A176C98(&qword_27CD00290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21A2FEED0;
  *(v5 + 32) = sub_21A2F6F14();
  *(v5 + 40) = sub_21A2F6F04();
  MEMORY[0x21CED5D30](v5);
  sub_21A2F5A94();

  sub_21A2F5A84();
  sub_21A1CC700(v8);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21A1CB688(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A1CB6D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21A1CB748()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A1B4A08();
    if (v1 <= 0x3F)
    {
      sub_21A19370C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21A1CB7EC()
{
  result = qword_27CD000B0;
  if (!qword_27CD000B0)
  {
    sub_21A176D98(&qword_27CD00090);
    sub_21A1CB878();
    sub_21A1CBAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000B0);
  }

  return result;
}

unint64_t sub_21A1CB878()
{
  result = qword_27CD000B8;
  if (!qword_27CD000B8)
  {
    sub_21A176D98(&qword_27CD00058);
    sub_21A1CB904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000B8);
  }

  return result;
}

unint64_t sub_21A1CB904()
{
  result = qword_27CD000C0;
  if (!qword_27CD000C0)
  {
    sub_21A176D98(&qword_27CD00050);
    sub_21A1CB990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000C0);
  }

  return result;
}

unint64_t sub_21A1CB990()
{
  result = qword_27CD000C8;
  if (!qword_27CD000C8)
  {
    sub_21A176D98(&qword_27CD00048);
    sub_21A1CBA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000C8);
  }

  return result;
}

unint64_t sub_21A1CBA1C()
{
  result = qword_27CD000D0;
  if (!qword_27CD000D0)
  {
    sub_21A176D98(&qword_27CD00040);
    sub_21A1772F8(&qword_27CD000D8, &qword_27CD00038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000D0);
  }

  return result;
}

unint64_t sub_21A1CBAD4()
{
  result = qword_27CD000E0;
  if (!qword_27CD000E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD000E0);
  }

  return result;
}

uint64_t sub_21A1CBB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1CBBC8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21A1B5814(result, a2 & 1);
    sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A1CBC18(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21A1478E8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_21A1CBC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_21A2F7654();
}

uint64_t sub_21A1CBCD4@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_21A2F7644();
  *a2 = v4;
  return result;
}

uint64_t sub_21A1CBD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeSourceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A1CBD94()
{
  result = qword_27CD00178;
  if (!qword_27CD00178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00178);
  }

  return result;
}

uint64_t sub_21A1CBDE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A1CBE54()
{
  result = qword_27CD001A8;
  if (!qword_27CD001A8)
  {
    sub_21A176D98(&qword_27CD00198);
    sub_21A1CBEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001A8);
  }

  return result;
}

unint64_t sub_21A1CBEE0()
{
  result = qword_27CD001B0;
  if (!qword_27CD001B0)
  {
    sub_21A176D98(&qword_27CD001B8);
    sub_21A1CBF9C();
    sub_21A1CC4E8(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001B0);
  }

  return result;
}

unint64_t sub_21A1CBF9C()
{
  result = qword_27CD001C0;
  if (!qword_27CD001C0)
  {
    sub_21A176D98(&qword_27CD001C8);
    sub_21A1CC054();
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001C0);
  }

  return result;
}

unint64_t sub_21A1CC054()
{
  result = qword_27CD001D0;
  if (!qword_27CD001D0)
  {
    sub_21A176D98(&qword_27CD001D8);
    sub_21A1CC10C();
    sub_21A1772F8(&qword_27CCFE948, &qword_27CCFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001D0);
  }

  return result;
}

unint64_t sub_21A1CC10C()
{
  result = qword_27CD001E0;
  if (!qword_27CD001E0)
  {
    sub_21A176D98(&qword_27CD001E8);
    sub_21A1772F8(&qword_27CCFE910, &qword_27CCFE918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001E0);
  }

  return result;
}

unint64_t sub_21A1CC1C4()
{
  result = qword_27CD001F0;
  if (!qword_27CD001F0)
  {
    sub_21A176D98(&qword_27CD001A0);
    sub_21A1CC250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001F0);
  }

  return result;
}

unint64_t sub_21A1CC250()
{
  result = qword_27CD001F8;
  if (!qword_27CD001F8)
  {
    sub_21A176D98(&qword_27CD00200);
    sub_21A1CC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD001F8);
  }

  return result;
}

unint64_t sub_21A1CC2DC()
{
  result = qword_27CD00208;
  if (!qword_27CD00208)
  {
    sub_21A176D98(&qword_27CD00210);
    sub_21A1CBE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00208);
  }

  return result;
}

unint64_t sub_21A1CC374()
{
  result = qword_27CD00230;
  if (!qword_27CD00230)
  {
    sub_21A176D98(&qword_27CD00188);
    sub_21A1CC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00230);
  }

  return result;
}

unint64_t sub_21A1CC400()
{
  result = qword_27CD00238;
  if (!qword_27CD00238)
  {
    sub_21A176D98(&qword_27CD00240);
    sub_21A1772F8(&qword_27CD00218, &qword_27CD00180);
    sub_21A1CC4E8(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00238);
  }

  return result;
}

uint64_t sub_21A1CC4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A1CC530()
{
  result = qword_27CD00250;
  if (!qword_27CD00250)
  {
    sub_21A176D98(&qword_27CD00228);
    sub_21A1CC5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00250);
  }

  return result;
}

unint64_t sub_21A1CC5BC()
{
  result = qword_27CD00258;
  if (!qword_27CD00258)
  {
    sub_21A176D98(&qword_27CD00260);
    sub_21A1CC648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00258);
  }

  return result;
}

unint64_t sub_21A1CC648()
{
  result = qword_27CD00268;
  if (!qword_27CD00268)
  {
    sub_21A176D98(&qword_27CD00270);
    sub_21A1CC374();
    sub_21A1772F8(&qword_27CD00278, &qword_27CD00280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00268);
  }

  return result;
}

uint64_t sub_21A1CC7A0(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return sub_21A2F8354();
  }

  if (result < a2)
  {
    v4 = sub_21A2F8354();
LABEL_10:
    MEMORY[0x21CED6480](47, 0xE100000000000000);
    v3 = sub_21A2F8354();
    MEMORY[0x21CED6480](v3);

    return v4;
  }

  if (a2)
  {
    if (result != 0x8000000000000000 || a2 != -1)
    {
      if (result % a2 < 1)
      {
        return sub_21A2F8354();
      }

      v4 = sub_21A2F8354();
      MEMORY[0x21CED6480](32, 0xE100000000000000);
      v2 = sub_21A2F8354();
      MEMORY[0x21CED6480](v2);

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1CC910(double a1, double a2)
{
  v2 = a1 > -9.22337204e18;
  if (a1 >= 9.22337204e18)
  {
    v2 = 0;
  }

  if (trunc(a1) == a1 && v2)
  {
    return 0;
  }

  v5 = floor(a1);
  if (v5 == a1)
  {
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_36:
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_21A2F8154();
    __break(1u);
    return result;
  }

  if (v5 >= 9.22337204e18)
  {
    goto LABEL_41;
  }

  result = v5;
  v6 = a1 - v5;
  if (v6 > a2)
  {
    v7 = 0;
    v8 = 1;
    v9 = 1;
    do
    {
      v10 = 1.0 / v6;
      v11 = floor(v10);
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_30:
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
        goto LABEL_36;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      v12 = result;
      v13 = v11;
      v14 = v11 * result;
      if ((v11 * result) >> 64 != v14 >> 63)
      {
        goto LABEL_32;
      }

      result = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_33;
      }

      v15 = v13 * v9;
      if ((v13 * v9) >> 64 != (v13 * v9) >> 63)
      {
        goto LABEL_34;
      }

      v16 = v7 + v15;
      if (__OFADD__(v7, v15))
      {
        goto LABEL_35;
      }

      v6 = v10 - v11;
      v7 = v9;
      v8 = v12;
      v9 = v16;
    }

    while (v16 * a2 * v16 < v6);
    if (!v16)
    {
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t sub_21A1CCB34@<X0>(uint64_t *a1@<X8>)
{
  sub_21A176C98(&qword_27CD002B8);
  result = sub_21A2F7714();
  *a1 = result;
  return result;
}

void sub_21A1CCB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController;
  if (*(a1 + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController))
  {
    swift_getKeyPath();
    sub_21A1CD36C(&qword_27CD002E8);
    sub_21A2F5094();

    v5 = *(a3 + 56);
    if (v5)
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = *(a3 + 48);
        v8 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 8);
        sub_21A2F5434();
        v11 = v6;
        v10(v7, v5, ObjectType, v8);
      }
    }
  }

  else
  {
    v12 = sub_21A29D36C();
    if (v12)
    {
      v14 = v12;
      sub_21A1CCCD8(v12, v13);
    }
  }
}

id sub_21A1CCCD8(void *a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController];
  v4 = *&v2[OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5 = a1;

  [v2 addChildViewController_];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  [v7 addSubview_];

  return [v5 didMoveToParentViewController_];
}

id sub_21A1CCDB0()
{
  type metadata accessor for EndOfRecipeContainerViewController();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21A1CCE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A1CD3B0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21A1CCEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A1CD3B0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21A1CCF04()
{
  sub_21A1CD3B0();
  sub_21A2F6534();
  __break(1u);
}

id sub_21A1CD110()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndOfRecipeContainerView()
{
  result = qword_27CD002C0;
  if (!qword_27CD002C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1CD1F0()
{
  sub_21A1CD25C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A1CD25C()
{
  if (!qword_27CD002D0)
  {
    type metadata accessor for EndOfRecipeViewModel(255);
    sub_21A1CD36C(&qword_27CD002D8);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD002D0);
    }
  }
}

unint64_t sub_21A1CD308()
{
  result = qword_27CD002E0;
  if (!qword_27CD002E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD002E0);
  }

  return result;
}

uint64_t sub_21A1CD36C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfRecipeViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1CD3B0()
{
  result = qword_27CD002F0;
  if (!qword_27CD002F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD002F0);
  }

  return result;
}

uint64_t type metadata accessor for SectionHeaderView()
{
  result = qword_27CD00300;
  if (!qword_27CD00300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1CD478()
{
  sub_21A13F8CC(319, &qword_2811B3C60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A13F8CC(319, &qword_27CCFF428, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21A1CD564();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A1CD564()
{
  if (!qword_27CD00310)
  {
    sub_21A1CD5C0();
    v0 = sub_21A2F5704();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD00310);
    }
  }
}

unint64_t sub_21A1CD5C0()
{
  result = qword_27CD00318;
  if (!qword_27CD00318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00318);
  }

  return result;
}

uint64_t sub_21A1CD630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_21A2F5FD4();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v66 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CD00338);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v59 - v8;
  v10 = sub_21A176C98(&qword_27CD00340);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v69 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v71 = v59 - v15;
  v16 = a1;
  v17 = *a1;
  v18 = a1[1];
  v65 = v16;
  v72 = v17;
  v73 = v18;
  v19 = sub_21A1834FC();
  sub_21A2F5434();
  v64 = v19;
  v20 = sub_21A2F69B4();
  v22 = v21;
  v24 = v23;
  v63 = type metadata accessor for SectionHeaderView();
  v62 = sub_21A176C98(&qword_27CD002F8);
  sub_21A2F56F4();
  sub_21A2F66F4();
  v25 = sub_21A2F66E4();
  v26 = *(v25 - 8);
  v60 = *(v26 + 56);
  v61 = v25;
  v59[1] = v26 + 56;
  v60(v9, 1, 1);
  sub_21A2F6734();
  sub_21A1427A8(v9, &qword_27CD00338);
  sub_21A2F66C4();

  v27 = sub_21A2F68E4();
  v29 = v28;
  LOBYTE(v19) = v30;
  v32 = v31;

  sub_21A1834EC(v20, v22, v24 & 1);

  v72 = v27;
  v73 = v29;
  LOBYTE(v18) = v19 & 1;
  v74 = v19 & 1;
  v75 = v32;
  v33 = v66;
  sub_21A2F5FC4();
  sub_21A2F6D14();
  v34 = v65;
  (*(v67 + 8))(v33, v68);
  sub_21A1834EC(v27, v29, v18);

  v35 = v34[3];
  if (v35)
  {
    v72 = v34[2];
    v73 = v35;
    sub_21A2F5434();
    v36 = sub_21A2F69B4();
    v38 = v37;
    v40 = v39;
    sub_21A2F56F4();
    (v60)(v9, 1, 1, v61);
    sub_21A2F6734();
    sub_21A1427A8(v9, &qword_27CD00338);
    v41 = sub_21A2F68E4();
    v43 = v42;
    v45 = v44;

    sub_21A1834EC(v36, v38, v40 & 1);

    LODWORD(v72) = sub_21A2F62A4();
    v46 = sub_21A2F68A4();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_21A1834EC(v41, v43, v45 & 1);

    v53 = v50 & 1;
    sub_21A176C88(v46, v48, v53);
    sub_21A2F5434();
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v53 = 0;
    v52 = 0;
  }

  v54 = v71;
  v55 = v69;
  sub_21A1CDCBC(v71, v69);
  v56 = v70;
  sub_21A1CDCBC(v55, v70);
  v57 = (v56 + *(sub_21A176C98(&qword_27CD00348) + 48));
  sub_21A1CDD2C(v46, v48, v53, v52);
  sub_21A1CDD70(v46, v48, v53, v52);
  *v57 = v46;
  v57[1] = v48;
  v57[2] = v53;
  v57[3] = v52;
  sub_21A1427A8(v54, &qword_27CD00340);
  sub_21A1CDD70(v46, v48, v53, v52);
  return sub_21A1427A8(v55, &qword_27CD00340);
}

uint64_t sub_21A1CDBC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A2F6014();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = sub_21A176C98(&qword_27CD00320);
  sub_21A1CD630(v1, a1 + *(v3 + 44));
  v4 = sub_21A2F6614();
  sub_21A2F55A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(sub_21A176C98(&qword_27CD00328) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_21A2F6624();
  sub_21A2F55A4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = sub_21A176C98(&qword_27CD00330);
  v24 = a1 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_21A1CDCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD00340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1CDD2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21A176C88(result, a2, a3 & 1);

    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A1CDD70(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21A1834EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21A1CDDE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1CDE68()
{
  result = qword_27CD00360;
  if (!qword_27CD00360)
  {
    sub_21A176D98(&qword_27CD00368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00360);
  }

  return result;
}

uint64_t Dependencies.stepIndex.getter()
{
  sub_21A1CDF28();
  sub_21A1CDF7C();

  return sub_21A2F7624();
}

unint64_t sub_21A1CDF28()
{
  result = qword_27CD00370;
  if (!qword_27CD00370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00370);
  }

  return result;
}

unint64_t sub_21A1CDF7C()
{
  result = qword_27CD00378;
  if (!qword_27CD00378)
  {
    sub_21A176D98(&qword_27CD00380);
    sub_21A17A0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00378);
  }

  return result;
}

double sub_21A1CE000@<D0>(uint64_t a1@<X8>)
{
  sub_21A1CDF28();
  sub_21A1CDF7C();
  sub_21A2F7624();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A1CE074()
{
  sub_21A1CDF28();
  sub_21A1CDF7C();
  return sub_21A2F7634();
}

uint64_t Dependencies.stepIndex.setter()
{
  sub_21A1CDF28();
  sub_21A1CDF7C();
  return sub_21A2F7634();
}

void (*Dependencies.stepIndex.modify(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_21A1CDF28();
  *(v4 + 80) = sub_21A1CDF7C();
  sub_21A2F7624();
  return sub_21A1CE1E0;
}

void sub_21A1CE1E0(_OWORD **a1)
{
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 24);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[6] = v2;
  *(v1 + 56) = v3;
  sub_21A2F7634();

  free(v1);
}

void sub_21A1CE258(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void JSONLDRecipe.init(id:data:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_21A2F4A24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_21A17FF88(a3, a4, &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    a1 = sub_21A2F49C4();
    a2 = v15;
    (*(v11 + 8))(v14, v10);
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t Dependencies.isPrimaryRecipe.getter()
{
  sub_21A1CE3D8();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A1CE3D8()
{
  result = qword_27CD00388;
  if (!qword_27CD00388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00388);
  }

  return result;
}

uint64_t sub_21A1CE42C@<X0>(_BYTE *a1@<X8>)
{
  sub_21A1CE3D8();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t Dependencies.isPrimaryRecipeStream.getter()
{
  sub_21A1CE564();

  return sub_21A2F7644();
}

unint64_t sub_21A1CE564()
{
  result = qword_27CD00390;
  if (!qword_27CD00390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00390);
  }

  return result;
}

uint64_t sub_21A1CE5F8(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD00398);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  sub_21A1CE77C(a1, &v11 - v8);
  sub_21A1CE77C(v9, v5);
  sub_21A1CE564();
  sub_21A2F7654();
  return sub_21A1CE7EC(v9);
}

uint64_t Dependencies.isPrimaryRecipeStream.setter(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD00398);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A1CE77C(a1, &v6 - v4);
  sub_21A1CE564();
  sub_21A2F7654();
  return sub_21A1CE7EC(a1);
}

uint64_t sub_21A1CE77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD00398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1CE7EC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD00398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Dependencies.isPrimaryRecipeStream.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_21A176C98(&qword_27CD00398) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_21A1CE564();
  sub_21A2F7644();
  return sub_21A1CE96C;
}

void sub_21A1CE96C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_21A1CE77C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_21A1CE77C(v3[2], v3[1]);
    sub_21A2F7654();
    sub_21A1CE7EC(v6);
  }

  else
  {
    sub_21A2F7654();
  }

  sub_21A1CE7EC(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_21A1CEA3C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD003B0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t (*Dependencies.isPrimaryRecipe.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_21A1CE3D8();
  sub_21A2F7624();
  *(a1 + 16) = *(a1 + 17);
  return sub_21A1CEB24;
}

uint64_t sub_21A1CEB64@<X0>(void *a1@<X8>)
{
  IsPrimaryRecipeSource = type metadata accessor for IsPrimaryRecipeSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A1CF714(&qword_27CD003A8);
  }

  else
  {
    IsPrimaryRecipeSource = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = IsPrimaryRecipeSource;
  a1[4] = result;
  return result;
}

uint64_t sub_21A1CEBF0()
{
  if (*(v0 + OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource_task))
  {

    sub_21A2F7CA4();
  }

  v1 = OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource__isPrimaryRecipeStream;
  v2 = sub_21A176C98(&qword_27CD003B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource___scope;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1CED50()
{
  v1 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v41 = &v36 - v3;
  v4 = sub_21A176C98(&qword_27CD003B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - v7;
  v9 = sub_21A176C98(&qword_27CD00398);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = sub_21A176C98(&qword_27CD003B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v36 - v20;
  v40 = OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource_task;
  if (*(v0 + OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource_task))
  {

    sub_21A2F7CA4();
  }

  v22 = v0;
  (*(v5 + 16))(v8, v0 + OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource__isPrimaryRecipeStream, v4, v19);
  sub_21A2F7594();
  (*(v5 + 8))(v8, v4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21A1CE7EC(v12);
  }

  v24 = *(v14 + 32);
  v37 = v21;
  v38 = v24;
  v25 = v21;
  v24(v21, v12, v13);
  v26 = sub_21A2F7C64();
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v39;
  (*(v14 + 16))(v39, v25, v13);
  sub_21A2F7C34();

  v29 = sub_21A2F7C24();
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = v22;
  v32 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v29;
  *(v33 + 24) = v34;
  v38(v33 + v30, v28, v13);
  *(v33 + v32) = v27;

  v35 = sub_21A199D08(0, 0, v41, &unk_21A2FFB28, v33);
  (*(v14 + 8))(v37, v13);
  *(v31 + v40) = v35;
}

uint64_t sub_21A1CF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_21A176C98(&qword_27CD003C0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = sub_21A2F7C34();
  v5[9] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_21A1CF2B4, v8, v7);
}

uint64_t sub_21A1CF2B4()
{
  sub_21A176C98(&qword_27CD003B0);
  sub_21A2F7C74();
  v1 = sub_21A2F7C24();
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_21A1CF394;
  v3 = v0[5];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 14, v1, v4, v3);
}

uint64_t sub_21A1CF394()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21A1CF4D8, v3, v2);
}

uint64_t sub_21A1CF4D8()
{
  v1 = *(v0 + 112);
  if (v1 == 2 || (Strong = swift_weakLoadStrong()) == 0)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (*(Strong + OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource_state) != (v1 & 1))
    {
      *(Strong + OBJC_IVAR____TtC10CookingKit21IsPrimaryRecipeSource_state) = v1 & 1;
      *(v0 + 16) = Strong;
      type metadata accessor for IsPrimaryRecipeSource();
      sub_21A1CF714(&qword_27CD003A0);
      sub_21A2F75C4();
    }

    v3 = sub_21A2F7C24();
    *(v0 + 96) = v3;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_21A1CF394;
    v5 = *(v0 + 40);
    v6 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 112, v3, v6, v5);
  }
}

uint64_t sub_21A1CF714(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IsPrimaryRecipeSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A1CF758(uint64_t a1)
{
  v4 = *(sub_21A176C98(&qword_27CD003B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A1CF1B0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21A1CF884()
{
  sub_21A14BE08();
  sub_21A14BE5C();
  sub_21A2F7624();
  return v1;
}

uint64_t sub_21A1CF8D4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v87 - v6;
  v8 = type metadata accessor for RecipeTimer();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A176C98(&qword_27CD003C8);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v97 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v87 - v16);
  v18 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v87 - v20;
  v22 = sub_21A2F4A24();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v26 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v31 = &v87 - v30;
  v33 = *a1;
  v32 = a1[1];
  v35 = a1[2];
  v34 = a1[3];
  v37 = a1[4];
  v36 = a1[5];
  v38 = *(a1 + 48);
  v39 = *(a1 + 55) >> 5;
  if (v39 > 2)
  {
    if (v39 == 3)
    {
      v50 = a1[5];
      v51 = *(a1 + 48);
      v52 = a1[4];
      v53 = v34;
      sub_21A142764((v2 + 16), *(v2 + 40));
      *&v106 = v33;
      *(&v106 + 1) = v32;
      *&v107 = v35;
      *(&v107 + 1) = v53;
      *&v108 = v52;
      *(&v108 + 1) = v50;
      v109 = v51 & 1;
      return sub_21A2EF588(&v106);
    }

    else
    {
      v43 = a1[3];
      v44 = a1[4];
      v45 = v38;
      v46 = v36;
      if (v39 == 4)
      {
        sub_21A142764((v2 + 16), *(v2 + 40));
        *&v106 = v33;
        *(&v106 + 1) = v32;
        *&v107 = v35;
        *(&v107 + 1) = v43;
        *&v108 = v44;
        *(&v108 + 1) = v46;
        v109 = v45 & 1;
        return sub_21A2EF5CC(&v106);
      }

      else
      {
        sub_21A142764((v2 + 16), *(v2 + 40));
        *&v106 = v33;
        *(&v106 + 1) = v32;
        *&v107 = v35;
        *(&v107 + 1) = v43;
        *&v108 = v44;
        *(&v108 + 1) = v46;
        v109 = v45 & 1;
        return sub_21A2EF610(&v106);
      }
    }
  }

  else if (v39)
  {
    if (v39 == 1)
    {
      sub_21A2F4774();
      v40 = sub_21A2F4794();
      v41 = *(v40 - 8);
      result = (*(v41 + 48))(v7, 1, v40);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_21A294A20(v7, 0xD000000000000015, 0x800000021A318C00);
        return (*(v41 + 8))(v7, v40);
      }
    }

    else
    {
      v54 = a1[5];
      v55 = *(a1 + 48);
      v56 = a1[4];
      v57 = v34;
      sub_21A142764((v2 + 16), *(v2 + 40));
      *&v106 = v33;
      *(&v106 + 1) = v32;
      *&v107 = v35;
      *(&v107 + 1) = v57;
      *&v108 = v56;
      *(&v108 + 1) = v54;
      v109 = v55 & 1;
      return sub_21A2EF870(&v106);
    }
  }

  else
  {
    v94 = v31;
    v95 = v29;
    v96 = v28;
    v88 = a1[7];
    v93 = a1[8];
    v47 = *(a1 + 9);
    *&v106 = v33;
    *(&v106 + 1) = v32;
    *&v107 = v35;
    *(&v107 + 1) = v34;
    v89 = v34;
    v90 = v37;
    *&v108 = v37;
    *(&v108 + 1) = v36;
    v92 = v36;
    v91 = v38;
    v109 = v38 & 1;
    sub_21A142764((v2 + 16), *(v2 + 40));
    v102 = v106;
    v103 = v107;
    v104 = v108;
    v105 = v109;
    v48 = sub_21A2EF168(&v102);
    v49 = sub_21A142764((v2 + 16), *(v2 + 40));
    if (v48)
    {
      v102 = v106;
      v103 = v107;
      v104 = v108;
      v105 = v109;
      return sub_21A2EF324(&v102, v47);
    }

    else
    {
      v58 = *v49;
      v59 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:v47];
      if (v93)
      {
        v60 = sub_21A2F78A4();
      }

      else
      {
        v60 = 0;
      }

      [v59 setTitle_];

      [v59 setSound_];
      v61 = *(v58 + 56);
      v62 = v59;
      v88 = v62;

      v63 = [v62 timerID];
      v64 = v94;
      sub_21A2F49F4();

      v65 = sub_21A2F7C64();
      (*(*(v65 - 8) + 56))(v21, 1, 1, v65);
      v66 = v95;
      (*(v95 + 16))(v26, v64, v96);
      v67 = *(v66 + 80);
      v93 = v58;
      v68 = (v67 + 89) & ~v67;
      v69 = swift_allocObject();
      *(v69 + 16) = 0;
      *(v69 + 24) = 0;
      *(v69 + 32) = v93;
      v70 = v107;
      *(v69 + 40) = v106;
      *(v69 + 56) = v70;
      *(v69 + 72) = v108;
      *(v69 + 88) = v109;
      v71 = v93;
      (*(v66 + 32))(v69 + v68, v26, v96);

      v72 = v88;
      sub_21A18BD3C();
      sub_21A199D08(0, 0, v21, &unk_21A2FFC68, v69);

      sub_21A28275C(v72, v17);
      v74 = v99;
      v73 = v100;
      (*(v99 + 56))(v17, 0, 1, v100);
      v75 = *(v71 + 64);
      os_unfair_lock_lock((v75 + 24));
      v76 = *(v75 + 16);
      sub_21A2F5434();
      os_unfair_lock_unlock((v75 + 24));
      *&v102 = v76;
      if ((*(v74 + 48))(v17, 1, v73) == 1)
      {
        sub_21A1D041C(v17);
        v77 = v97;
        sub_21A2C5664(&v106, v97);
        v78 = sub_21A1D041C(v77);
        v80 = v102;
      }

      else
      {
        v81 = v98;
        sub_21A1D04B4(v17, v98);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v76;
        v78 = sub_21A2C5D0C(v81, &v106, isUniquelyReferenced_nonNull_native);
        v80 = v101;
        *&v102 = v101;
      }

      v83 = MEMORY[0x28223BE20](v78, v79);
      *(&v87 - 2) = v80;
      v84 = *(v71 + 64);
      MEMORY[0x28223BE20](v83, v85);
      *(&v87 - 2) = sub_21A14D8A0;
      *(&v87 - 1) = v86;
      os_unfair_lock_lock(v84 + 6);
      sub_21A1D0484();
      os_unfair_lock_unlock(v84 + 6);

      sub_21A151288();

      return (*(v95 + 8))(v94, v96);
    }
  }

  return result;
}

uint64_t sub_21A1D01EC()
{
  sub_21A142808(v0 + 16);

  v1 = OBJC_IVAR____TtC10CookingKit18RecipeTimersSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1D02D0(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v5[2] = a2[2];
  v5[3] = v2;
  v5[4] = a2[4];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return sub_21A1CF8D4(v5);
}

uint64_t sub_21A1D0320(uint64_t a1)
{
  v4 = *(sub_21A2F4A24() - 8);
  v5 = (*(v4 + 80) + 89) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A2EEF8C(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_21A1D041C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD003C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1D04B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTimer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21A1D0540(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21A1D055C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21A1D05AC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A1D0648()
{
  v1 = OBJC_IVAR____TtC10CookingKit26RecipeCardViewEventHandler___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1D06EC()
{
  sub_21A153AA4();
  sub_21A2F5434();
  sub_21A2F75F4();
  return sub_21A1997F4();
}

uint64_t sub_21A1D0774(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21A1D07A0(uint64_t a1, int a2)
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

uint64_t sub_21A1D07E8(uint64_t result, int a2, int a3)
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

void sub_21A1D0840()
{
  sub_21A1D1314();
  if (v0 <= 0x3F)
  {
    sub_21A1D1444(319, &qword_27CD00470, sub_21A1D13A8, MEMORY[0x277CDF338]);
    if (v1 <= 0x3F)
    {
      sub_21A1D1444(319, &qword_27CD00480, type metadata accessor for GroceryExportState, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_21A1D13F4();
          if (v4 <= 0x3F)
          {
            sub_21A1D1444(319, &qword_2811B3DC8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21A1D09B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_21A176C98(&qword_27CD003D0);
  v6 = *(v5 - 8);
  v47 = v5;
  v7 = *(v6 + 84);
  v46 = sub_21A176C98(qword_27CD003D8);
  v8 = *(v46 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v44 = *(a3 + 16);
  v11 = *(v44 - 8);
  v45 = *(v11 + 84);
  if (v10 <= v45)
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = *(sub_21A2F4794() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v11 + 80);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (v15)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(v8 + 80) & 0xF8 | 7;
  v24 = *(v6 + 64) + v23;
  v25 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = v19 + 16;
  v27 = *(v11 + 64) + 7;
  v28 = v20 + 8;
  v29 = a1;
  if (a2 <= v18)
  {
    goto LABEL_42;
  }

  v30 = v22 + ((v28 + ((v27 + ((v26 + v25 + (v24 & ~v23)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v20);
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_21;
  }

  v34 = ((a2 - v18 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v34))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_42;
      }

LABEL_21:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_42;
      }

LABEL_29:
      v35 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v35 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v36 = v30;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      return v18 + (v37 | v35) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_29;
    }
  }

LABEL_42:
  if (v7 == v18)
  {
    v38 = v47;
    v39 = *(v6 + 48);
    v40 = v7;
LABEL_46:

    return v39(v29, v40, v38);
  }

  v29 = ((a1 + v24) & ~v23);
  if (v9 == v18)
  {
    v39 = *(v8 + 48);
    v40 = v9;
    v38 = v46;
    goto LABEL_46;
  }

  v41 = (v29 + v25);
  if ((v17 & 0x80000000) != 0)
  {
    v29 = ((v41 + v26) & ~v19);
    if (v45 != v18)
    {
      v43 = (*(v14 + 48))((v28 + ((v29 + v27) & 0xFFFFFFFFFFFFFFF8)) & ~v20);
      if (v43 >= 2)
      {
        return v43 - 1;
      }

      else
      {
        return 0;
      }
    }

    v39 = *(v11 + 48);
    v40 = v45;
    v38 = v44;
    goto LABEL_46;
  }

  v42 = *v41;
  if (*v41 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  return (v42 + 1);
}

void sub_21A1D0DCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = sub_21A176C98(&qword_27CD003D0);
  v6 = *(v5 - 8);
  v50 = v6;
  v51 = v5;
  v7 = *(v6 + 84);
  v48 = sub_21A176C98(qword_27CD003D8);
  v8 = *(v48 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v49 = v10;
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v46 = *(a4 + 16);
  v11 = *(v46 - 8);
  v47 = *(v11 + 84);
  if (v10 <= v47)
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = 0;
  v14 = *(sub_21A2F4794() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v6 + 64);
  if (v16)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v12 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v12;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v8 + 80) & 0xF8 | 7;
  v26 = v17 + v25;
  v27 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = (v19 + 16 + v27 + ((v17 + v25) & ~v25)) & ~v19;
  v29 = v20 + 7;
  if (v16)
  {
    v30 = v22;
  }

  else
  {
    v30 = v22 + 1;
  }

  v31 = ((v21 + 8 + ((v20 + 7 + v28) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + v30;
  if (a3 > v24)
  {
    if (v31 <= 3)
    {
      v32 = ((a3 - v24 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
      if (HIWORD(v32))
      {
        v13 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v13 = v33;
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
  }

  if (v24 < a2)
  {
    v34 = ~v24 + a2;
    if (v31 < 4)
    {
      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v37 = v34 & ~(-1 << (8 * v31));
        bzero(a1, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v37;
            if (v13 > 1)
            {
LABEL_67:
              if (v13 == 2)
              {
                *&a1[v31] = v35;
              }

              else
              {
                *&a1[v31] = v35;
              }

              return;
            }
          }

          else
          {
            *a1 = v34;
            if (v13 > 1)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_64;
        }

        *a1 = v37;
        a1[2] = BYTE2(v37);
      }

      if (v13 > 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      bzero(a1, v31);
      *a1 = v34;
      v35 = 1;
      if (v13 > 1)
      {
        goto LABEL_67;
      }
    }

LABEL_64:
    if (v13)
    {
      a1[v31] = v35;
    }

    return;
  }

  v36 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v31] = 0;
  }

  else if (v13)
  {
    a1[v31] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v7 == v24)
  {
    v38 = v51;
    v39 = *(v50 + 56);
    v40 = a2;
    v41 = v7;
    goto LABEL_50;
  }

  v36 = (&a1[v26] & ~v25);
  if (v9 == v24)
  {
    if (v49 >= a2)
    {
      v39 = *(v8 + 56);
      v40 = a2;
      v41 = v9;
      v38 = v48;

      goto LABEL_52;
    }

    if (v27)
    {
      v42 = (&a1[v26] & ~v25);
      bzero(v36, v27);
      *v42 = ~v49 + a2;
    }
  }

  else
  {
    v43 = &v36[v27];
    if ((v23 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v43 = a2 & 0x7FFFFFFF;
        *(v43 + 1) = 0;
      }

      else
      {
        *v43 = a2 - 1;
      }

      return;
    }

    v36 = (&v43[v19 + 16] & ~v19);
    if (v47 == v24)
    {
      v39 = *(v11 + 56);
      v40 = a2;
      v41 = v47;
      v38 = v46;
LABEL_50:

LABEL_52:
      v39(v36, v40, v41, v38);
      return;
    }

    v44 = *(v15 + 56);
    v45 = (v21 + 8 + (&v36[v29] & 0xFFFFFFFFFFFFFFF8)) & ~v21;

    v44(v45, a2 + 1);
  }
}

void sub_21A1D1314()
{
  if (!qword_27CD00460)
  {
    type metadata accessor for GroceriesButtonViewModel(255);
    sub_21A1D3C70(&qword_27CD00468, type metadata accessor for GroceriesButtonViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD00460);
    }
  }
}

unint64_t sub_21A1D13A8()
{
  result = qword_27CD00478;
  if (!qword_27CD00478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD00478);
  }

  return result;
}

void sub_21A1D13F4()
{
  if (!qword_27CD00488)
  {
    v0 = sub_21A2F7BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD00488);
    }
  }
}

void sub_21A1D1444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21A1D14EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v175 = sub_21A2F7E34();
  v167 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v3);
  v166 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_21A2F5854();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v5);
  v163 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_21A2F5BC4();
  MEMORY[0x28223BE20](v145, v7);
  v146 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_21A2F5C54();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v9);
  v142 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 - 8);
  v180 = *(v182 + 64);
  MEMORY[0x28223BE20](v11, v12);
  v171 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a1;
  v14 = *(a1 + 24);
  v181 = *(a1 + 16);
  v15 = sub_21A2F70D4();
  v133 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v128 = v124 - v17;
  sub_21A176D98(&qword_27CD00490);
  v18 = sub_21A2F5AF4();
  v141 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v127 = v124 - v20;
  sub_21A176D98(&qword_27CCFEF30);
  v21 = sub_21A2F5AF4();
  v156 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v174 = v124 - v23;
  type metadata accessor for ExportToGroceryListTipViewModifier();
  v132 = v21;
  v24 = sub_21A2F5AF4();
  v159 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v144 = v124 - v26;
  sub_21A176D98(&qword_27CD00498);
  v139 = v24;
  v27 = sub_21A2F5AF4();
  v161 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v149 = v124 - v29;
  WitnessTable = swift_getWitnessTable();
  v124[1] = WitnessTable;
  v31 = sub_21A1772F8(&qword_27CD004A0, &qword_27CD00490);
  v202 = WitnessTable;
  v203 = v31;
  v32 = swift_getWitnessTable();
  v126 = v32;
  v33 = sub_21A1772F8(&qword_27CCFEF48, &qword_27CCFEF30);
  v200 = v32;
  v201 = v33;
  v34 = swift_getWitnessTable();
  v130 = v34;
  v35 = sub_21A1D3C70(&qword_27CD004A8, type metadata accessor for ExportToGroceryListTipViewModifier);
  v198 = v34;
  v199 = v35;
  v36 = swift_getWitnessTable();
  v134 = v36;
  v37 = sub_21A1772F8(&qword_27CD004B0, &qword_27CD00498);
  v196 = v36;
  v197 = v37;
  v38 = swift_getWitnessTable();
  v190 = v27;
  v191 = v38;
  v39 = v27;
  v135 = v27;
  v40 = v38;
  v138 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v148 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v42);
  v136 = v124 - v43;
  v190 = v39;
  v191 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v190 = OpaqueTypeMetadata2;
  v191 = OpaqueTypeConformance2;
  v45 = OpaqueTypeMetadata2;
  v129 = OpaqueTypeMetadata2;
  v46 = OpaqueTypeConformance2;
  v131 = OpaqueTypeConformance2;
  v143 = swift_getOpaqueTypeMetadata2();
  v147 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v143);
  v172 = v124 - v47;
  v48 = sub_21A2F5AF4();
  v160 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v49);
  v140 = v124 - v50;
  v51 = sub_21A1D3C70(&qword_27CD004B8, MEMORY[0x277CC9DB0]);
  v190 = v45;
  v191 = v46;
  v137 = swift_getOpaqueTypeConformance2();
  v194 = v137;
  v195 = MEMORY[0x277CE0790];
  v52 = swift_getWitnessTable();
  v190 = v175;
  v191 = v48;
  v162 = v48;
  v155 = v51;
  v192 = v51;
  v193 = v52;
  v150 = v52;
  v158 = sub_21A2F5BD4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v53);
  v151 = v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55, v56);
  v152 = v124 - v58;
  v59 = v182;
  v60 = *(v182 + 16);
  v173 = v182 + 16;
  v177 = v60;
  v61 = v171;
  v62 = v178;
  v63 = v170;
  (v60)(v171, v178, v170, v57);
  v176 = *(v59 + 80);
  v64 = (v176 + 32) & ~v176;
  v125 = v64;
  v65 = swift_allocObject();
  v66 = v181;
  *(v65 + 16) = v181;
  *(v65 + 24) = v14;
  v67 = *(v59 + 32);
  v182 = v59 + 32;
  v169 = v67;
  v67(v65 + v64, v61, v63);
  v186 = v66;
  v187 = v14;
  v188 = v62;
  v68 = v62;
  v69 = v128;
  v179 = v14;
  sub_21A2F7094();
  v183 = v66;
  v184 = v14;
  v185 = v62;
  sub_21A2F7344();
  sub_21A1D3868();
  v70 = v127;
  sub_21A2F6A64();
  (*(v133 + 8))(v69, v15);
  v71 = v142;
  sub_21A2F5C44();
  v72 = *(v145 + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_21A2F5F64();
  v75 = v146;
  (*(*(v74 - 8) + 104))(&v146[v72], v73, v74);
  __asm { FMOV            V0.2D, #16.0 }

  *v75 = _Q0;
  sub_21A1D3C70(&qword_27CD004D0, MEMORY[0x277CDFC08]);
  sub_21A2F6B14();
  sub_21A1D3F00(v75, MEMORY[0x277CDFC08]);
  (*(v153 + 8))(v71, v154);
  (*(v141 + 8))(v70, v18);
  sub_21A176C98(&qword_27CD003D0);
  v81 = sub_21A2F7714();
  swift_getKeyPath();
  v190 = v81;
  sub_21A1D3C70(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel);
  sub_21A2F5094();

  v82 = *(v81 + 56);
  v83 = *(v81 + 64);
  sub_21A2F5434();

  v84 = sub_21A2F7714();
  swift_getKeyPath();
  v190 = v84;
  sub_21A2F5094();

  v85 = *(v84 + 72);
  v86 = *(v84 + 80);
  sub_21A2F5434();

  v87 = v144;
  v88 = v85;
  v89 = v132;
  v90 = v174;
  sub_21A26B9BC(v82, v83, v88, v86, v132, v130);

  (*(v156 + 8))(v90, v89);
  swift_getKeyPath();
  v91 = v170;
  v92 = (v68 + *(v170 + 40));
  v94 = *v92;
  v93 = v92[1];
  v190 = v94;
  v191 = v93;
  sub_21A176C98(&qword_27CD004E0);
  sub_21A2F7024();
  v190 = v189;
  v95 = v149;
  v96 = v139;
  sub_21A2F6AE4();

  (*(v159 + 8))(v87, v96);
  v97 = sub_21A2F7714();
  swift_getKeyPath();
  v190 = v97;
  sub_21A2F5094();

  v98 = v136;
  v99 = v135;
  sub_21A2F6EB4();
  (*(v161 + 8))(v95, v99);
  v100 = v163;
  sub_21A2F5844();
  v101 = v171;
  v177(v171, v68, v91);
  v102 = v125;
  v103 = swift_allocObject();
  v104 = v179;
  *(v103 + 16) = v181;
  *(v103 + 24) = v104;
  v169(v103 + v102, v101, v91);
  v105 = v129;
  sub_21A2F6A94();

  (*(v164 + 8))(v100, v165);
  (*(v148 + 8))(v98, v105);
  v177(v101, v178, v91);
  v106 = swift_allocObject();
  v107 = v179;
  *(v106 + 16) = v181;
  *(v106 + 24) = v107;
  v108 = v169;
  v169(v106 + v102, v101, v91);
  v109 = v140;
  v110 = v143;
  v111 = v172;
  sub_21A2F6E64();

  (*(v147 + 8))(v111, v110);
  v112 = [objc_opt_self() defaultCenter];
  if (qword_27CCFE850 != -1)
  {
    swift_once();
  }

  v113 = v166;
  sub_21A2F7E44();

  v177(v101, v178, v91);
  v114 = swift_allocObject();
  v115 = v179;
  *(v114 + 16) = v181;
  *(v114 + 24) = v115;
  v108(v114 + v102, v101, v91);
  v116 = v151;
  v117 = v162;
  v118 = v175;
  sub_21A2F6EC4();

  (*(v167 + 8))(v113, v118);
  (*(v160 + 8))(v109, v117);
  v119 = v158;
  v120 = swift_getWitnessTable();
  v121 = v152;
  sub_21A1BE5BC(v116, v119, v120);
  v122 = *(v157 + 8);
  v122(v116, v119);
  sub_21A1BE5BC(v121, v119, v120);
  return (v122)(v121, v119);
}

uint64_t sub_21A1D29B4(uint64_t a1)
{
  v3 = sub_21A176C98(&qword_27CCFEA80);
  v44 = *(v3 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v47 = &v43 - v5;
  v6 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v46 = &v43 - v8;
  v9 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v43 - v15;
  v43 = a1;
  v17 = (v1 + *(a1 + 40));
  v18 = *v17;
  v19 = v17[1];
  v49 = *v17;
  v50 = v19;
  sub_21A176C98(&qword_27CD004E0);
  sub_21A2F7024();
  v20 = v48;
  swift_getKeyPath();
  v49 = v20;
  sub_21A1D3C70(&qword_27CD004E8, type metadata accessor for GroceryExportState);
  sub_21A2F5094();

  v21 = v20[16];

  sub_21A176C98(&qword_27CD003D0);
  v22 = sub_21A2F7714();
  if (v21 == 1)
  {
    v49 = v18;
    v50 = v19;
    sub_21A2F7024();
    v23 = v48;
    swift_getKeyPath();
    v49 = v23;
    sub_21A2F5094();

    sub_21A183960(&v23[OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails], v16, &qword_27CD004F8);

    sub_21A2B3218();
    sub_21A183960(v16, v12, &qword_27CD004F8);
    v24 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {
      sub_21A1D3E98(v12);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = *v12;
      v26 = v12[1];
      sub_21A2F5434();
      sub_21A1D3F00(v12, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
    }

    sub_21A2605F8(v25, v26);

    return sub_21A1D3E98(v16);
  }

  else
  {
    v27 = v43;
    sub_21A176C98(&qword_27CD004F0);
    sub_21A2F5604();
    v28 = v49;
    v29 = *(v27 + 48);
    v30 = *(v27 + 52);
    v31 = *(v1 + v29);
    v49 = v18;
    v50 = v19;
    sub_21A2F7024();
    v32 = v48;
    v33 = sub_21A2F7C64();
    v34 = v46;
    (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
    v35 = v47;
    sub_21A183960(v1 + v30, v47, &qword_27CCFEA80);
    sub_21A2F7C34();

    sub_21A2F5434();
    v36 = v28;

    v37 = sub_21A2F7C24();
    v38 = (*(v44 + 80) + 56) & ~*(v44 + 80);
    v39 = (v45 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v40[2] = v37;
    v40[3] = v41;
    v40[4] = v22;
    v40[5] = v31;
    v40[6] = v36;
    sub_21A1D3CD4(v35, v40 + v38);
    *(v40 + v39) = v32;
    sub_21A199D08(0, 0, v34, &unk_21A3003D0, v40);
  }
}

uint64_t sub_21A1D2EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroceriesButton();
  sub_21A1BE5BC(a1 + *(v9 + 44), a2, a3);
  sub_21A1BE5BC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_21A1D2FE0@<X0>(void *a1@<X8>)
{
  type metadata accessor for GroceriesButton();
  sub_21A176C98(&qword_27CD004F0);
  result = sub_21A2F5604();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1D3048@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroceriesButton();
  sub_21A1D29B4(v2);
  v3 = *MEMORY[0x277CDF120];
  v4 = sub_21A2F72A4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_21A1D30CC(uint64_t a1)
{
  v2 = v1;
  sub_21A176C98(&qword_27CD003D0);
  v4 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A1D3C70(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel);
  sub_21A2F5094();

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  sub_21A2F5434();

  if (v5)
  {
    sub_21A176C98(&qword_27CD004E0);
    sub_21A2F7024();
    v7 = (v17 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
    v8 = *(v17 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID + 8);
    if (v8 && (*v7 == v6 ? (v9 = v8 == v5) : (v9 = 0), v9 || (sub_21A2F8394() & 1) != 0))
    {
      *v7 = v6;
      v7[1] = v5;
      sub_21A2F5434();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v11);
      sub_21A1D3C70(&qword_27CD004E8, type metadata accessor for GroceryExportState);
      sub_21A2F5434();
      sub_21A2F5084();
    }

    sub_21A27DFDC();
  }

  else
  {
  }

  v18 = *(v2 + *(a1 + 40));
  sub_21A176C98(&qword_27CD004E0);
  sub_21A2F7024();
  sub_21A176C98(&qword_27CD004F0);
  sub_21A2F5604();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, sub_21A1D13A8(), v14 = v13, LOBYTE(v13) = sub_21A2F7E74(), v14, v14, (v13 & 1) != 0))
  {
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15, v16);
    sub_21A1D3C70(&qword_27CD004E8, type metadata accessor for GroceryExportState);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1D34D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for GroceriesButton();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - v10;
  v12 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_21A2F7C64();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a2, v7);
  sub_21A2F7C34();
  v17 = sub_21A2F7C24();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  (*(v8 + 32))(&v19[v18], v11, v7);
  sub_21A199D08(0, 0, v15, &unk_21A300310, v19);
}

uint64_t sub_21A1D36D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_21A2F7C34();
  v6[8] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A1D3774, v8, v7);
}

uint64_t sub_21A1D3774()
{
  v1 = v0[5];

  v2 = (v1 + *(type metadata accessor for GroceriesButton() + 40));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_21A176C98(&qword_27CD004E0);
  sub_21A2F7024();
  sub_21A27DFDC();

  v5 = v0[1];

  return v5();
}

unint64_t sub_21A1D3868()
{
  result = qword_27CD004C8;
  if (!qword_27CD004C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD004C8);
  }

  return result;
}

uint64_t sub_21A1D38BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A1D3F74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21A1D3920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A1D3F74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21A1D3984()
{
  sub_21A1D3F74();
  sub_21A2F6534();
  __break(1u);
}

uint64_t sub_21A1D39AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GroceriesButton();

  return sub_21A1D3048(a1);
}

uint64_t sub_21A1D3AB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for GroceriesButton() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21A1D34D0(a1, v6, v3, v4);
}

uint64_t sub_21A1D3B44(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for GroceriesButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21A145E2C;

  return sub_21A1D36D8(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_21A1D3C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1D3CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1D3D44(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21A176C98(&qword_27CCFEA80) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21A146070;

  return sub_21A2B3448(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_21A1D3E98(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD004F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1D3F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A1D3F74()
{
  result = qword_27CD00500;
  if (!qword_27CD00500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00500);
  }

  return result;
}

uint64_t Dependencies.recipeFeaturesConfiguration.getter()
{
  sub_21A1D4010();

  return sub_21A2F7644();
}

unint64_t sub_21A1D4010()
{
  result = qword_27CD00530;
  if (!qword_27CD00530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00530);
  }

  return result;
}

void (*Dependencies.recipeFeaturesConfiguration.modify(uint64_t *a1))(_BYTE **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *(v3 + 88) = sub_21A1D4010();
  sub_21A2F7644();
  return sub_21A1D4148;
}

void sub_21A1D4148(_BYTE **a1, char a2)
{
  v3 = *a1;
  (*a1)[40] = **a1;
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v3[41] = v3[1];
  *(v3 + 6) = v4;
  *(v3 + 7) = v5;
  *(v3 + 8) = v6;
  *(v3 + 9) = v7;
  if (a2)
  {
    sub_21A1D41F8(v4, v5);
    sub_21A2F7654();
    sub_21A18F700(*(v3 + 1), *(v3 + 2));
  }

  else
  {
    sub_21A2F7654();
  }

  free(v3);
}

uint64_t sub_21A1D41F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_21A2F5434();

    return sub_21A2F5434();
  }

  return result;
}

double sub_21A1D4250()
{
  word_27CD00508 = 0;
  result = 0.0;
  *&qword_27CD00510 = xmmword_21A300510;
  qword_27CD00520 = 0;
  unk_27CD00528 = 0;
  return result;
}

uint64_t sub_21A1D4270@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE800 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = HIBYTE(word_27CD00508);
  v3 = qword_27CD00510;
  v4 = unk_27CD00518;
  v5 = qword_27CD00520;
  v6 = unk_27CD00528;
  *a1 = word_27CD00508;
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return sub_21A1D41F8(v3, v4);
}

uint64_t type metadata accessor for InstructionsView()
{
  result = qword_27CD00540;
  if (!qword_27CD00540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1D4370()
{
  sub_21A1D462C(319, &qword_27CD00550, &qword_27CD00558, &unk_21A3005B8, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A1D44A4();
    if (v1 <= 0x3F)
    {
      sub_21A1D4598();
      if (v2 <= 0x3F)
      {
        sub_21A1B4A08();
        if (v3 <= 0x3F)
        {
          sub_21A1D462C(319, &qword_27CD00580, &qword_27CD00380, &unk_21A2FF810, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A1D44A4()
{
  if (!qword_27CD00560)
  {
    sub_21A176D98(&qword_27CD00380);
    sub_21A1D8844(&qword_27CD00568, sub_21A1D4544);
    v0 = sub_21A2F55E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD00560);
    }
  }
}

unint64_t sub_21A1D4544()
{
  result = qword_27CD00570;
  if (!qword_27CD00570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00570);
  }

  return result;
}

void sub_21A1D4598()
{
  if (!qword_27CD00578)
  {
    type metadata accessor for InstructionsViewModel(255);
    sub_21A1D922C(&qword_27CCFFF70, type metadata accessor for InstructionsViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD00578);
    }
  }
}

void sub_21A1D462C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21A1D46AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for InstructionsView();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v60 = v5;
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21A176C98(&qword_27CD00588);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v6);
  v61 = &v52 - v7;
  v66 = sub_21A176C98(&qword_27CD00590);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v8);
  v64 = &v52 - v9;
  v10 = type metadata accessor for InstructionsViewModel.Instruction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v52 - v17;
  sub_21A176C98(&qword_27CD00538);
  v19 = sub_21A2F7714();
  swift_getKeyPath();
  *&v72 = v19;
  sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  v20 = *(v19 + 16);
  sub_21A2F5434();

  if (*(v20 + 16))
  {
    sub_21A1D8348(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v18, type metadata accessor for InstructionsViewModel.Instruction);

    v21 = *(v18 + 4);
    v58 = *(v18 + 3);
    v57 = v21;
    v56 = *(v18 + 5);
    v55 = v18[48];
    sub_21A1D8ED4(v18, type metadata accessor for InstructionsViewModel.Instruction);
  }

  else
  {

    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 255;
  }

  v22 = sub_21A2F7714();
  swift_getKeyPath();
  *&v72 = v22;
  sub_21A2F5094();

  v23 = *(v22 + 16);
  sub_21A2F5434();

  v24 = *(v23 + 16);
  if (v24)
  {
    sub_21A1D8348(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v24 - 1), v14, type metadata accessor for InstructionsViewModel.Instruction);

    v25 = *(v14 + 4);
    v52 = *(v14 + 3);
    v26 = *(v14 + 5);
    v27 = v14[48];
    sub_21A1D8ED4(v14, type metadata accessor for InstructionsViewModel.Instruction);
  }

  else
  {

    v52 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
  }

  v28 = sub_21A2F7714();
  swift_getKeyPath();
  *&v72 = v28;
  sub_21A2F5094();

  v29 = *(v28 + 16);
  sub_21A2F5434();

  *&v77 = v29;
  v54 = type metadata accessor for InstructionsView;
  v30 = v68;
  sub_21A1D8348(v2, v68, type metadata accessor for InstructionsView);
  v31 = *(v59 + 80);
  v60 += (v31 + 16) & ~v31;
  v59 = (v31 + 16) & ~v31;
  v32 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v60 + 39) & 0xFFFFFFFFFFFFFFF8;
  v34 = v2;
  v35 = swift_allocObject();
  v53 = type metadata accessor for InstructionsView;
  sub_21A1D892C(v30, v35 + ((v31 + 16) & ~v31), type metadata accessor for InstructionsView);
  v36 = v35 + v32;
  v37 = v57;
  *v36 = v58;
  *(v36 + 8) = v37;
  *(v36 + 16) = v56;
  *(v36 + 24) = v55;
  v38 = v35 + v33;
  *v38 = v52;
  *(v38 + 8) = v25;
  *(v38 + 16) = v26;
  *(v38 + 24) = v27;
  sub_21A176C98(&qword_27CD00598);
  sub_21A176C98(&qword_27CD005A0);
  sub_21A1772F8(&qword_27CD005A8, &qword_27CD00598);
  v39 = sub_21A176D98(&qword_27CD005B0);
  v40 = sub_21A1D8C4C(&qword_27CD005B8, &qword_27CD005B0, &unk_21A300660, sub_21A1D8490);
  *&v72 = v39;
  *(&v72 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_21A1D922C(&qword_27CD00610, type metadata accessor for InstructionsViewModel.Instruction);
  v41 = v61;
  sub_21A2F7214();
  swift_getKeyPath();
  v42 = sub_21A1D86D0();
  v43 = v64;
  v44 = v63;
  sub_21A2F6A14();

  (*(v62 + 8))(v41, v44);
  v45 = *(v34 + 96);
  v74 = *(v34 + 80);
  v75 = v45;
  v76 = *(v34 + 112);
  v46 = *(v34 + 64);
  v72 = *(v34 + 48);
  v73 = v46;
  sub_21A176C98(&qword_27CD00620);
  sub_21A2F55B4();
  v72 = v77;
  *&v73 = v78;
  BYTE8(v73) = v79;
  v47 = v68;
  sub_21A1D8348(v34, v68, v54);
  v48 = swift_allocObject();
  sub_21A1D892C(v47, v48 + v59, v53);
  sub_21A176C98(&qword_27CD00380);
  v49 = sub_21A176D98(&qword_27CCFEB60);
  v69 = v44;
  v70 = v49;
  v71 = v42;
  swift_getOpaqueTypeConformance2();
  sub_21A1D8844(&qword_27CD00378, sub_21A17A0F8);
  v50 = v66;
  sub_21A2F6E74();

  return (*(v65 + 8))(v43, v50);
}

uint64_t sub_21A1D5020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v109 = a8;
  v108 = a7;
  v97 = a6;
  v96 = a5;
  v95 = a4;
  v94 = a3;
  v91 = a2;
  v112 = a9;
  v111 = a11;
  v107 = a10;
  v90 = sub_21A2F5ED4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v13);
  v88 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InstructionsView();
  v16 = *(v15 - 8);
  v99 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8, v18);
  v19 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for InstructionsViewModel.Instruction(0);
  v20 = *(v110 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v110, v22);
  v101 = sub_21A176C98(&qword_27CD005F0);
  MEMORY[0x28223BE20](v101, v23);
  v25 = &v88 - v24;
  v103 = sub_21A176C98(&qword_27CD00638);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v26);
  v98 = &v88 - v27;
  v100 = sub_21A176C98(&qword_27CD005E8) - 8;
  MEMORY[0x28223BE20](v100, v28);
  v93 = &v88 - v29;
  v30 = sub_21A176C98(&qword_27CD005C8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v104 = &v88 - v32;
  v106 = sub_21A176C98(&qword_27CD005B0);
  MEMORY[0x28223BE20](v106, v33);
  v105 = &v88 - v34;
  *v25 = sub_21A2F6014();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v92 = *(sub_21A176C98(&qword_27CD00640) + 44);
  v115 = *(a1 + 16);
  sub_21A1D8348(a1, &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstructionsViewModel.Instruction);
  sub_21A1D8348(a2, v19, type metadata accessor for InstructionsView);
  v35 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v36 = (v21 + *(v16 + 80) + v35) & ~*(v16 + 80);
  v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_21A1D892C(&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v35, type metadata accessor for InstructionsViewModel.Instruction);
  sub_21A1D892C(v19, v38 + v36, type metadata accessor for InstructionsView);
  v39 = v38 + v37;
  v40 = v95;
  *v39 = v94;
  *(v39 + 8) = v40;
  *(v39 + 16) = v96;
  *(v39 + 24) = v97;
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD00648);
  sub_21A176C98(&qword_27CD00650);
  sub_21A1772F8(&qword_27CD00658, &qword_27CD00648);
  v41 = sub_21A176D98(&qword_27CD00660);
  v42 = sub_21A176D98(&qword_27CD00668);
  v43 = sub_21A176D98(&qword_27CD00380);
  v44 = sub_21A176D98(&qword_27CD00670);
  v45 = sub_21A1D8AB0();
  *&v121 = v44;
  *(&v121 + 1) = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_21A1D8844(&qword_27CD00568, sub_21A1D4544);
  *&v121 = v42;
  *(&v121 + 1) = v43;
  *&v122 = OpaqueTypeConformance2;
  *(&v122 + 1) = v47;
  v48 = swift_getOpaqueTypeConformance2();
  *&v121 = v41;
  *(&v121 + 1) = v48;
  v49 = v93;
  swift_getOpaqueTypeConformance2();
  sub_21A1D8DB8();
  v50 = v91;
  sub_21A2F7214();
  v51 = v99;
  sub_21A176C98(&qword_27CD00538);
  v52 = sub_21A2F7714();
  swift_getKeyPath();
  *&v121 = v52;
  sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  sub_21A1772F8(&qword_27CD005F8, &qword_27CD005F0);
  v53 = v98;
  sub_21A2F6C64();
  sub_21A1427A8(v25, &qword_27CD005F0);
  sub_21A2F7354();
  sub_21A2F5C14();
  (*(v102 + 32))(v49, v53, v103);
  v54 = (v49 + *(v100 + 44));
  v55 = v126;
  v54[4] = v125;
  v54[5] = v55;
  v54[6] = v127;
  v56 = v122;
  *v54 = v121;
  v54[1] = v56;
  v57 = v124;
  v54[2] = v123;
  v54[3] = v57;
  v58 = *(a1 + 24);
  v59 = *(a1 + 32);
  v60 = *(a1 + 40);
  v61 = *(a1 + 48);
  v62 = v50 + *(v51 + 44);
  v63 = *v62;
  if (*(v62 + 8) != 1)
  {

    sub_21A2F7DE4();
    v65 = sub_21A2F65B4();
    sub_21A2F53B4();

    v66 = v88;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v63, 0);
    (*(v89 + 8))(v66, v90);
    if (v115)
    {
      goto LABEL_3;
    }

LABEL_5:
    v64 = *(v50 + 40);
    goto LABEL_6;
  }

  if ((v63 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v64 = 0;
LABEL_6:
  v67 = v104;
  sub_21A1D7EDC(v58, v59, v60, v61, v64, v104);
  sub_21A1427A8(v49, &qword_27CD005E8);
  v68 = sub_21A2F6624();
  v69 = *(a1 + 24);
  v70 = *(a1 + 32);
  v71 = *(a1 + 40);
  v72 = *(a1 + 48);
  v115 = v69;
  v116 = v70;
  v117 = v71;
  v118 = v72;
  v119[0] = v108;
  v119[1] = v109;
  v119[2] = v107;
  v120 = v111;
  if (v72 != 255)
  {
    v113[0] = v69;
    v113[1] = v70;
    v113[2] = v71;
    v114 = v72;
    if (v111 != 0xFF)
    {
      sub_21A267618(v113, v119);
    }
  }

  sub_21A2F55A4();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v67;
  v82 = v105;
  sub_21A149B18(v81, v105, &qword_27CD005C8);
  v83 = v106;
  v84 = v82 + *(v106 + 36);
  *v84 = v68;
  *(v84 + 8) = v74;
  *(v84 + 16) = v76;
  *(v84 + 24) = v78;
  *(v84 + 32) = v80;
  *(v84 + 40) = 0;
  v85 = *(v110 + 28);
  v86 = sub_21A1D8C4C(&qword_27CD005B8, &qword_27CD005B0, &unk_21A300660, sub_21A1D8490);
  MEMORY[0x21CED5470](a1 + v85, v83, v86);
  return sub_21A1427A8(v82, &qword_27CD005B0);
}

uint64_t sub_21A1D5BC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v240) = a7;
  v213 = a6;
  v208 = a4;
  v209 = a5;
  v239 = a8;
  v234 = sub_21A176C98(&qword_27CD006F0);
  MEMORY[0x28223BE20](v234, v11);
  v236 = &v195 - v12;
  v235 = sub_21A176C98(&qword_27CD00688);
  MEMORY[0x28223BE20](v235, v13);
  v212 = &v195 - v14;
  v15 = sub_21A2F6144();
  v237 = *(v15 - 8);
  v238 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v210 = v17;
  v211 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v244 = &v195 - v20;
  v21 = type metadata accessor for InstructionSubStepView(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v195 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A176C98(&qword_27CD006F8);
  v222 = *(v25 - 8);
  v223 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v221 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v217 = &v195 - v30;
  v31 = sub_21A2F5B94();
  v205 = *(v31 - 8);
  v206 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v204 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for InstructionsView();
  v34 = *(v220 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v220, v36);
  v199 = &v195 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21A176C98(&qword_27CD00700);
  v202 = *(v37 - 8);
  v203 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v201 = &v195 - v39;
  v40 = sub_21A176C98(&qword_27CD00708);
  v241 = *(v40 - 8);
  v242 = v40;
  MEMORY[0x28223BE20](v40, v41);
  v200 = &v195 - v42;
  v43 = sub_21A176C98(&qword_27CD00710);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v215 = &v195 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v246 = &v195 - v48;
  v49 = sub_21A176C98(&qword_27CD006C8);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v247 = (&v195 - v51);
  v216 = sub_21A176C98(&qword_27CD006B8);
  MEMORY[0x28223BE20](v216, v52);
  v219 = &v195 - v53;
  v218 = sub_21A176C98(&qword_27CD006A8);
  MEMORY[0x28223BE20](v218, v54);
  v224 = &v195 - v55;
  v243 = sub_21A176C98(&qword_27CD00698);
  MEMORY[0x28223BE20](v243, v56);
  v245 = &v195 - v57;
  v227 = sub_21A176C98(&qword_27CD00670);
  MEMORY[0x28223BE20](v227, v58);
  v225 = &v195 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v226 = &v195 - v62;
  v232 = sub_21A176C98(&qword_27CD00668);
  v230 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v63);
  v228 = &v195 - v64;
  v233 = sub_21A176C98(&qword_27CD00660);
  v231 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v65);
  v229 = &v195 - v66;
  v67 = *(a1 + 48);
  v271 = *(a1 + 48);
  v68 = a1[2];
  v269 = a1[1];
  v270 = v68;
  v268 = *a1;
  v207 = a2;
  v69 = *(a2 + 16);
  v70 = *(v69 + 16);
  v248 = a3;
  if (v70)
  {
    v72 = *a1;
    v71 = *(a1 + 1);
    v74 = *(a1 + 2);
    v73 = *(a1 + 3);
    v75 = *(a1 + 4);
    v76 = *(a1 + 5);
    v77 = *(v69 + 80);
    if (v67 == 255)
    {
      if (v77 == 255)
      {
        v78 = 1;
LABEL_13:
        v84 = (v69 + 56 * v70);
        v79 = *(v84 + 24);
        if (v67 == 255)
        {
          a3 = v248;
          goto LABEL_15;
        }

        v85 = v246;
        if (v79 == 255)
        {
          LODWORD(v214) = 0;
        }

        else
        {
          if (v72 == *(v84 - 3) && v71 == *(v84 - 2))
          {
            a3 = v248;
            if (v74 == *(v84 - 1))
            {
              v86 = *v84;
              v87 = *(v84 + 2);
              *&v255 = v73;
              *(&v255 + 1) = v75;
              *&v256 = v76;
              BYTE8(v256) = v67;
              v264 = v86;
              *&v265 = v87;
              BYTE8(v265) = v79;
              LODWORD(v214) = sub_21A267618(&v255, &v264);
            }

            else
            {
              LODWORD(v214) = 0;
            }

            goto LABEL_25;
          }

          LODWORD(v214) = 0;
        }

        a3 = v248;
        goto LABEL_25;
      }
    }

    else if (v77 != 255)
    {
      v78 = 0;
      if (v72 == *(v69 + 32) && v71 == *(v69 + 40) && v74 == *(v69 + 48))
      {
        v80 = *(v69 + 56);
        v81 = *(v69 + 72);
        *&v255 = v73;
        *(&v255 + 1) = v75;
        *&v256 = v76;
        BYTE8(v256) = v67;
        v264 = v80;
        *&v265 = v81;
        BYTE8(v265) = v77;
        v214 = v73;
        v82 = v75;
        v197 = v74;
        v198 = v76;
        v196 = v71;
        v83 = sub_21A267618(&v255, &v264);
        v71 = v196;
        v74 = v197;
        v76 = v198;
        v75 = v82;
        v73 = v214;
        v78 = v83;
      }

      goto LABEL_13;
    }

    v78 = 0;
    goto LABEL_13;
  }

  if (v67 == 255)
  {
    v79 = 255;
    v78 = 1;
LABEL_15:
    v85 = v246;
    LODWORD(v214) = v79 == 255;
    goto LABEL_25;
  }

  v78 = 0;
  LODWORD(v214) = 0;
  v85 = v246;
LABEL_25:
  v88 = sub_21A2F6014();
  v89 = v247;
  *v247 = v88;
  v89[1] = 0;
  *(v89 + 16) = 0;
  if (v78)
  {
    v90 = v199;
    sub_21A1D8348(a3, v199, type metadata accessor for InstructionsView);
    v91 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v92 = (v35 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    v94 = sub_21A1D892C(v90, v93 + v91, type metadata accessor for InstructionsView);
    v95 = v93 + v92;
    v96 = v248;
    v97 = v269;
    *v95 = v268;
    *(v95 + 16) = v97;
    *(v95 + 32) = v270;
    *(v95 + 48) = v271;
    MEMORY[0x28223BE20](v94, v98);
    *(&v195 - 8) = v207;
    *(&v195 - 7) = v96;
    *(&v195 - 6) = &v268;
    v99 = v209;
    *(&v195 - 5) = v208;
    *(&v195 - 4) = v99;
    *(&v195 - 3) = v213;
    *(&v195 - 16) = v240;
    sub_21A176C98(&qword_27CD00740);
    sub_21A1D9058();
    v100 = v201;
    sub_21A2F7094();
    v101 = v204;
    sub_21A2F5B84();
    sub_21A1772F8(&qword_27CD00778, &qword_27CD00700);
    sub_21A1D922C(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
    v102 = v200;
    v103 = v203;
    v104 = v206;
    sub_21A2F6AC4();
    (*(v205 + 8))(v101, v104);
    v105 = v100;
    a3 = v96;
    v85 = v246;
    (*(v202 + 8))(v105, v103);
    v107 = v241;
    v106 = v242;
    (*(v241 + 32))(v85, v102, v242);
    (*(v107 + 56))(v85, 0, 1, v106);
  }

  else
  {
    (*(v241 + 56))(v85, 1, 1, v242);
  }

  v108 = sub_21A176C98(&qword_27CD00718);
  v213 = v247 + *(v108 + 44);
  sub_21A1D88BC(a3, v24);
  swift_getKeyPath();
  sub_21A1D922C(&qword_27CD00720, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F7754();
  v109 = v21[6];
  *&v24[v109] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v110 = &v24[v21[7]];
  *v110 = swift_getKeyPath();
  v110[8] = 0;
  v111 = &v24[v21[8]];
  KeyPath = swift_getKeyPath();
  *(v111 + 1) = 0;
  *(v111 + 2) = 0;
  *v111 = KeyPath;
  *(v111 + 12) = 0;
  v113 = v21[9];
  *&v24[v113] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v114 = &v24[v21[10]];
  v256 = 0u;
  v257 = 0u;
  v255 = 0u;
  LOBYTE(v258) = -4;
  sub_21A176C98(&qword_27CD00728);
  sub_21A2F7014();
  v115 = v265;
  *v114 = v264;
  *(v114 + 1) = v115;
  v116 = v267;
  *(v114 + 2) = v266;
  *(v114 + 3) = v116;
  swift_getKeyPath();
  v241 = *(&v268 + 1);
  v242 = v268;
  v255 = v268;
  v240 = v269;
  *&v256 = v269;
  BYTE8(v256) = 0;
  sub_21A1D922C(&qword_27CD00730, type metadata accessor for InstructionSubStepView);
  v117 = v217;
  sub_21A2F6A24();

  sub_21A1D8ED4(v24, type metadata accessor for InstructionSubStepView);
  v118 = v215;
  sub_21A183960(v85, v215, &qword_27CD00710);
  v120 = v221;
  v119 = v222;
  v121 = *(v222 + 16);
  v122 = v223;
  v121(v221, v117, v223);
  v123 = v213;
  sub_21A183960(v118, v213, &qword_27CD00710);
  v124 = sub_21A176C98(&qword_27CD00738);
  v121((v123 + *(v124 + 48)), v120, v122);
  v125 = *(v119 + 8);
  v125(v117, v122);
  sub_21A1427A8(v246, &qword_27CD00710);
  v125(v120, v122);
  sub_21A1427A8(v118, &qword_27CD00710);
  LOBYTE(v117) = sub_21A2F6664();
  v126 = *(v220 + 32);
  v127 = sub_21A176C98(&qword_27CD00538);
  v128 = v248;
  v129 = sub_21A2F7714();
  swift_getKeyPath();
  *&v255 = v129;
  sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  sub_21A2F55A4();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v138 = v219;
  sub_21A149B18(v247, v219, &qword_27CD006C8);
  v139 = v138 + *(v216 + 36);
  *v139 = v117;
  *(v139 + 8) = v131;
  *(v139 + 16) = v133;
  *(v139 + 24) = v135;
  *(v139 + 32) = v137;
  *(v139 + 40) = 0;
  LOBYTE(v117) = sub_21A2F6624();
  v140 = v128;
  v141 = sub_21A2F7714();
  swift_getKeyPath();
  *&v255 = v141;
  sub_21A2F5094();

  sub_21A2F55A4();
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  v150 = v138;
  v151 = v224;
  sub_21A149B18(v150, v224, &qword_27CD006B8);
  v152 = v151 + *(v218 + 36);
  *v152 = v117;
  *(v152 + 8) = v143;
  *(v152 + 16) = v145;
  *(v152 + 24) = v147;
  *(v152 + 32) = v149;
  *(v152 + 40) = 0;
  LOBYTE(v117) = sub_21A2F6624();
  v246 = v127;
  v247 = v126;
  v153 = sub_21A2F7714();
  swift_getKeyPath();
  *&v255 = v153;
  sub_21A2F5094();

  sub_21A2F55A4();
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v162 = v151;
  v163 = v245;
  sub_21A149B18(v162, v245, &qword_27CD006A8);
  v164 = v163 + *(v243 + 36);
  *v164 = v117;
  *(v164 + 8) = v155;
  *(v164 + 16) = v157;
  *(v164 + 24) = v159;
  *(v164 + 32) = v161;
  *(v164 + 40) = 0;
  strcpy(&v255, "instructions");
  BYTE13(v255) = 0;
  HIWORD(v255) = -5120;
  v165 = v244;
  sub_21A2F6324();
  if (*(v140 + 41) == 1)
  {
    v166 = sub_21A2F7344();
    v168 = v167;
    v169 = v237;
    v170 = v238;
    v171 = v211;
    (*(v237 + 16))(v211, v165, v238);
    v172 = (*(v169 + 80) + 40) & ~*(v169 + 80);
    v173 = swift_allocObject();
    v174 = v241;
    *(v173 + 2) = v242;
    *(v173 + 3) = v174;
    *(v173 + 4) = v240;
    (*(v169 + 32))(&v173[v172], v171, v170);
    v175 = v212;
    sub_21A183960(v245, v212, &qword_27CD00698);
    v176 = v236;
    v177 = (v175 + *(v235 + 36));
    *v177 = sub_21A1D8F34;
    v177[1] = v173;
    v177[2] = v166;
    v177[3] = v168;
    sub_21A183960(v175, v176, &qword_27CD00688);
    swift_storeEnumTagMultiPayload();
    sub_21A1D8B68();
    sub_21A1D8C4C(&qword_27CD00690, &qword_27CD00698, &unk_21A300760, sub_21A1D8CD0);
    v178 = v225;
    v165 = v244;
    sub_21A2F6114();
    v179 = v175;
    v163 = v245;
    sub_21A1427A8(v179, &qword_27CD00688);
  }

  else
  {
    sub_21A183960(v163, v236, &qword_27CD00698);
    swift_storeEnumTagMultiPayload();
    sub_21A1D8B68();
    sub_21A1D8C4C(&qword_27CD00690, &qword_27CD00698, &unk_21A300760, sub_21A1D8CD0);
    v178 = v225;
    sub_21A2F6114();
    v169 = v237;
    v170 = v238;
  }

  sub_21A1427A8(v163, &qword_27CD00698);
  v180 = v226;
  sub_21A149B18(v178, v226, &qword_27CD00670);
  (*(v169 + 8))(v165, v170);
  v181 = v248;
  v182 = sub_21A2F7714();
  swift_getKeyPath();
  *&v255 = v182;
  sub_21A2F5094();

  v183 = sub_21A1D8AB0();
  v184 = v227;
  v185 = v228;
  sub_21A2F6EB4();
  sub_21A1427A8(v180, &qword_27CD00670);
  v186 = *(v181 + 96);
  v257 = *(v181 + 80);
  v258 = v186;
  v259 = *(v181 + 112);
  v187 = *(v181 + 64);
  v255 = *(v181 + 48);
  v256 = v187;
  sub_21A176C98(&qword_27CD00620);
  sub_21A2F55C4();
  v255 = v260;
  v256 = v261;
  *&v257 = v262;
  BYTE8(v257) = v263;
  v251 = v242;
  v252 = v241;
  v253 = v240;
  v254 = 0;
  v188 = sub_21A176C98(&qword_27CD00380);
  v249 = v184;
  v250 = v183;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v190 = sub_21A1D8844(&qword_27CD00568, sub_21A1D4544);
  v191 = v229;
  v192 = v232;
  sub_21A2F6E04();

  (*(v230 + 8))(v185, v192);
  *&v255 = v192;
  *(&v255 + 1) = v188;
  *&v256 = OpaqueTypeConformance2;
  *(&v256 + 1) = v190;
  swift_getOpaqueTypeConformance2();
  v193 = v233;
  sub_21A2F6C94();
  return (*(v231 + 8))(v191, v193);
}

uint64_t sub_21A1D72AC(uint64_t a1, uint64_t *a2)
{
  sub_21A1D88BC(a1, v11);
  if (!v12)
  {
    return sub_21A1427A8(v11, &qword_27CD00628);
  }

  v3 = sub_21A142764(v11, v12);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *v3;
  swift_getKeyPath();
  sub_21A1D922C(&qword_27CD00630, type metadata accessor for CookingModeViewModel);
  sub_21A2F5094();

  v8 = *(v7 + 40);
  if (v8)
  {
    v10 = *(v7 + 32);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(v4, v5, v6, v10, v8, 2, 0x60u);
  }

  return sub_21A142808(v11);
}

uint64_t sub_21A1D7400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v98 = a7;
  v97 = a6;
  v96 = a5;
  v95 = a4;
  v81 = a3;
  v101 = a8;
  v102 = sub_21A2F5FD4();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v10);
  v99 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F5ED4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21A176C98(&qword_27CCFFB20);
  MEMORY[0x28223BE20](v89, v17);
  v19 = &v80 - v18;
  v91 = sub_21A176C98(&qword_27CD00768);
  MEMORY[0x28223BE20](v91, v20);
  v92 = &v80 - v21;
  v93 = sub_21A176C98(&qword_27CD00758);
  MEMORY[0x28223BE20](v93, v22);
  v94 = &v80 - v23;
  v85 = a1;
  sub_21A2F5434();
  sub_21A1D7C70();
  v87 = sub_21A2F68E4();
  v86 = v24;
  v26 = v25;
  v88 = v27;

  v28 = type metadata accessor for InstructionsView();
  v29 = *(v28 + 32);
  v30 = sub_21A176C98(&qword_27CD00538);
  v84 = v29;
  v83 = v30;
  v31 = sub_21A2F7714();
  swift_getKeyPath();
  v105 = v31;
  v82 = sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  LODWORD(v29) = *(v31 + 24);

  v90 = a2;
  if (v29 == 1)
  {
    v32 = a2 + *(v28 + 40);
    v34 = *v32;
    v33 = *(v32 + 8);
    v80 = *(v32 + 16);
    v35 = *(v32 + 24);
    if (*(v32 + 25) == 1)
    {
      v105 = v34;
      v106 = v33;
      if (v35)
      {
        goto LABEL_12;
      }
    }

    else
    {

      sub_21A2F7DE4();
      v37 = sub_21A2F65B4();
      sub_21A2F53B4();

      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1D83B0(v34, v33, v80, v35, 0);
      (*(v13 + 8))(v16, v12);
      if (v108)
      {
LABEL_12:
        v36 = &selRef_quaternaryLabelColor;
        goto LABEL_13;
      }

      v80 = v107;
    }

    if (*v81 != v105 || v81[1] != v106 || v81[2] != v80)
    {
      goto LABEL_12;
    }

    v36 = &selRef_secondaryLabelColor;
  }

  else
  {
    v36 = &selRef_labelColor;
  }

LABEL_13:
  v38 = [objc_opt_self() *v36];
  v105 = sub_21A2F6EF4();
  v39 = v87;
  v40 = v26;
  v41 = v86;
  v42 = sub_21A2F68A4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_21A1834EC(v39, v41, v40 & 1);

  v49 = sub_21A2F7714();
  swift_getKeyPath();
  v105 = v49;
  sub_21A2F5094();

  v50 = *(v49 + 24);

  v51 = &v19[*(v89 + 36)];
  *v51 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v51 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = v50;
  *v19 = v42;
  *(v19 + 1) = v44;
  v19[16] = v46 & 1;
  *(v19 + 3) = v48;
  LOBYTE(v51) = sub_21A2F6624();
  sub_21A2F55A4();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v92;
  sub_21A149B18(v19, v92, &qword_27CCFFB20);
  v61 = v60 + *(v91 + 36);
  *v61 = v51;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  v62 = sub_21A2F6614();
  v63 = *(v85 + 24);
  v64 = *(v85 + 32);
  v65 = *(v85 + 40);
  v66 = *(v85 + 48);
  v105 = v63;
  v106 = v64;
  v107 = v65;
  v108 = v66;
  v109[0] = v95;
  v109[1] = v96;
  v109[2] = v97;
  v110 = v98;
  if (v66 != 255)
  {
    v103[0] = v63;
    v103[1] = v64;
    v103[2] = v65;
    v104 = v66;
    if (v98 != 0xFF)
    {
      sub_21A267618(v103, v109);
    }
  }

  sub_21A2F55A4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v60;
  v76 = v94;
  sub_21A149B18(v75, v94, &qword_27CD00768);
  v77 = v76 + *(v93 + 36);
  *v77 = v62;
  *(v77 + 8) = v68;
  *(v77 + 16) = v70;
  *(v77 + 24) = v72;
  *(v77 + 32) = v74;
  *(v77 + 40) = 0;
  v78 = v99;
  sub_21A2F5FC4();
  sub_21A1D8C4C(&qword_27CD00750, &qword_27CD00758, &unk_21A3008E0, sub_21A1D9140);
  sub_21A2F6D14();
  (*(v100 + 8))(v78, v102);
  return sub_21A1427A8(v76, &qword_27CD00758);
}

uint64_t sub_21A1D7C70()
{
  v1 = v0;
  v2 = sub_21A2F5ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for InstructionsView();
  sub_21A176C98(&qword_27CD00538);
  v8 = sub_21A2F7714();
  swift_getKeyPath();
  v17 = v8;
  sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  v9 = *(v8 + 24);

  if (v9)
  {
    v10 = v1 + *(v7 + 36);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      if ((v11 & 1) == 0)
      {
LABEL_4:
        sub_21A2F66D4();
LABEL_8:
        sub_21A2F6724();
        v12 = sub_21A2F6764();
        goto LABEL_9;
      }
    }

    else
    {

      sub_21A2F7DE4();
      v13 = sub_21A2F65B4();
      sub_21A2F53B4();

      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1478E8(v11, 0);
      (*(v3 + 8))(v6, v2);
      if (v16[7] != 1)
      {
        goto LABEL_4;
      }
    }

    sub_21A2F6754();
    goto LABEL_8;
  }

  sub_21A2F66A4();
  sub_21A2F66F4();
  sub_21A2F6764();

  v12 = sub_21A2F66C4();
LABEL_9:
  v14 = v12;

  return v14;
}

uint64_t sub_21A1D7EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v25[1] = a6;
  v13 = sub_21A176C98(&qword_27CD006E8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v25 - v15;
  v17 = sub_21A176C98(&qword_27CD005D8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v25 - v19;
  if (a5)
  {
    v21 = &v20[*(v17 + 36)];
    v22 = sub_21A2F6144();
    v23 = MEMORY[0x277CE0388];
    *(v21 + 7) = v22;
    *(v21 + 8) = v23;
    sub_21A156050(v21 + 4);
    sub_21A2F6314();
    *v21 = a1;
    *(v21 + 1) = a2;
    *(v21 + 2) = a3;
    v21[24] = a4;
    sub_21A183960(v7, v20, &qword_27CD005E8);
    sub_21A183960(v20, v16, &qword_27CD005D8);
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CD005E8);
    sub_21A1D851C();
    sub_21A1D85D4();
    sub_21A2F6114();
    return sub_21A1427A8(v20, &qword_27CD005D8);
  }

  else
  {
    sub_21A183960(v7, v16, &qword_27CD005E8);
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CD005E8);
    sub_21A1D851C();
    sub_21A1D85D4();
    return sub_21A2F6114();
  }
}

uint64_t sub_21A1D8130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for InstructionsView();
  sub_21A176C98(&qword_27CD00538);
  v8 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A1D922C(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  v9 = *(v8 + 24);

  if (v9 == 1 && (v7 & 1) == 0)
  {
    sub_21A1D88BC(a3, v14);
    if (v15)
    {
      v11 = *sub_21A142764(v14, v15);
      swift_getKeyPath();
      sub_21A1D922C(&qword_27CD00630, type metadata accessor for CookingModeViewModel);
      sub_21A2F5094();

      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = *(v11 + 32);
        sub_21A14FB78();
        sub_21A2F5434();
        sub_21A2F75E4();
        sub_21A18FAD4(v4, v5, v6, v13, v12, 2, 0x60u);
      }

      return sub_21A142808(v14);
    }

    else
    {
      return sub_21A1427A8(v14, &qword_27CD00628);
    }
  }

  return result;
}

uint64_t sub_21A1D8348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1D83B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21A1D83BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InstructionsView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_21A1D5020(a1, v2 + v6, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v2 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), a2, *(v2 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 24));
}

unint64_t sub_21A1D8490()
{
  result = qword_27CD005C0;
  if (!qword_27CD005C0)
  {
    sub_21A176D98(&qword_27CD005C8);
    sub_21A1D851C();
    sub_21A1D85D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD005C0);
  }

  return result;
}

unint64_t sub_21A1D851C()
{
  result = qword_27CD005D0;
  if (!qword_27CD005D0)
  {
    sub_21A176D98(&qword_27CD005D8);
    sub_21A1D85D4();
    sub_21A1772F8(&qword_27CD00600, &qword_27CD00608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD005D0);
  }

  return result;
}

unint64_t sub_21A1D85D4()
{
  result = qword_27CD005E0;
  if (!qword_27CD005E0)
  {
    sub_21A176D98(&qword_27CD005E8);
    sub_21A176D98(&qword_27CD005F0);
    sub_21A1772F8(&qword_27CD005F8, &qword_27CD005F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD005E0);
  }

  return result;
}

unint64_t sub_21A1D86D0()
{
  result = qword_27CD00618;
  if (!qword_27CD00618)
  {
    sub_21A176D98(&qword_27CD00588);
    sub_21A176D98(&qword_27CD005B0);
    sub_21A1D8C4C(&qword_27CD005B8, &qword_27CD005B0, &unk_21A300660, sub_21A1D8490);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00618);
  }

  return result;
}

uint64_t sub_21A1D87C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InstructionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21A1D8130(a1, a2, v6);
}

uint64_t sub_21A1D8844(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD00380);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A1D88BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD00628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1D892C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1D8994@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InstructionsViewModel.Instruction(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InstructionsView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);

  return sub_21A1D5BC4(a1, v2 + v6, v2 + v9, v11, v12, v13, v14, a2);
}

unint64_t sub_21A1D8AB0()
{
  result = qword_27CD00678;
  if (!qword_27CD00678)
  {
    sub_21A176D98(&qword_27CD00670);
    sub_21A1D8B68();
    sub_21A1D8C4C(&qword_27CD00690, &qword_27CD00698, &unk_21A300760, sub_21A1D8CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00678);
  }

  return result;
}

unint64_t sub_21A1D8B68()
{
  result = qword_27CD00680;
  if (!qword_27CD00680)
  {
    sub_21A176D98(&qword_27CD00688);
    sub_21A1D8C4C(&qword_27CD00690, &qword_27CD00698, &unk_21A300760, sub_21A1D8CD0);
    sub_21A1772F8(&qword_27CD006D0, &qword_27CD006D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00680);
  }

  return result;
}

uint64_t sub_21A1D8C4C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1D8D00()
{
  result = qword_27CD006B0;
  if (!qword_27CD006B0)
  {
    sub_21A176D98(&qword_27CD006B8);
    sub_21A1772F8(&qword_27CD006C0, &qword_27CD006C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD006B0);
  }

  return result;
}

unint64_t sub_21A1D8DB8()
{
  result = qword_27CD006E0;
  if (!qword_27CD006E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD006E0);
  }

  return result;
}

uint64_t sub_21A1D8E0C@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v3 = *(a1 + 2);
  v4 = sub_21A2F6F14();
  sub_21A176C98(&qword_27CD00780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FC020;
  *(inited + 32) = v12;
  *(inited + 48) = v3;
  sub_21A2F6144();
  sub_21A2F5824();
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = sub_21A260194(inited);
  result = swift_setDeallocating();
  *a2 = v4;
  a2[1] = v10;
  return result;
}

uint64_t sub_21A1D8ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1D8F34@<X0>(uint64_t *a1@<X8>)
{
  sub_21A2F6144();

  return sub_21A1D8E0C((v1 + 16), a1);
}

uint64_t sub_21A1D8FB8()
{
  v1 = *(type metadata accessor for InstructionsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21A1D72AC(v0 + v2, v3);
}