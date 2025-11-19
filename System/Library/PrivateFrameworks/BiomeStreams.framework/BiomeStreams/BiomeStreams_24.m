unint64_t _outDefElem(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "defnamespace:", a3, a4, a5, a6, a7, a8, v49);
    _outToken(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v50);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "defname:", a3, a4, a5, a6, a7, a8, v49);
    _outToken(a1, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    appendStringInfo(a1, ",", v28, v29, v30, v31, v32, v33, v51);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v49);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v34, v35, v36, v37, v38, v39, v52);
  }

  v40 = *(a2 + 32);
  if (v40 > 3)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v41 = (&off_1E6E55840)[v40];
  }

  result = appendStringInfo(a1, "defaction:%s,", a3, a4, a5, a6, a7, a8, v41);
  if (*(a2 + 36))
  {
    return appendStringInfo(a1, "location:%d,", v43, v44, v45, v46, v47, v48, *(a2 + 36));
  }

  return result;
}

unint64_t _outRangeTblEntry(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 8)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_1E6E55860)[v11];
  }

  appendStringInfo(a1, "rtekind:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relid:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "relkind:%c,", v13, v14, v15, v16, v17, v18, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "rellockmode:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "tablesample:{", v13, v14, v15, v16, v17, v18, v311);
    _outTableSampleClause(a1, *(a2 + 24), v19, v20, v21, v22, v23, v24, v312);
    v31 = a1[2];
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        a1[2] = v33;
        *(v34 + v33) = 0;
      }
    }

    appendStringInfo(a1, "},", v25, v26, v27, v28, v29, v30, v313);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subquery:{", v13, v14, v15, v16, v17, v18, v311);
    _outQuery(a1, *(a2 + 32), v35, v36, v37, v38, v39, v40);
    v47 = a1[2];
    v32 = __OFSUB__(v47, 1);
    v48 = v47 - 1;
    if (v48 < 0 == v32)
    {
      v49 = *a1;
      if (*(*a1 + v48) == 44)
      {
        a1[2] = v48;
        *(v49 + v48) = 0;
      }
    }

    appendStringInfo(a1, "},", v41, v42, v43, v44, v45, v46, v314);
  }

  if (*(a2 + 40) == 1)
  {
    appendStringInfo(a1, "security_barrier:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  v50 = *(a2 + 44);
  if (v50 > 7)
  {
    LODWORD(v51) = 0;
  }

  else
  {
    v51 = (&off_1E6E558A8)[v50];
  }

  appendStringInfo(a1, "jointype:%s,", v13, v14, v15, v16, v17, v18, v51);
  if (*(a2 + 48))
  {
    appendStringInfo(a1, "joinmergedcols:%d,", v52, v53, v54, v55, v56, v57, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "joinaliasvars:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v64 = *(a2 + 56);
    if (v64 && *(v64 + 4) >= 1)
    {
      v65 = 0;
      v66 = 8;
      do
      {
        v67 = *(v64 + 16);
        v68 = *(v67 + 8 * v65);
        if (v68)
        {
          _outNode(a1, v68);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v67 + v66)
        {
          v69 = v67 + v66 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          appendStringInfoString(a1, ",");
        }

        ++v65;
        v66 += 8;
      }

      while (v65 < *(v64 + 4));
    }

    appendStringInfo(a1, "],", v58, v59, v60, v61, v62, v63, v316);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "joinleftcols:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v76 = *(a2 + 64);
    if (v76 && *(v76 + 4) >= 1)
    {
      v77 = 0;
      v78 = 8;
      do
      {
        v79 = *(v76 + 16);
        v80 = *(v79 + 8 * v77);
        if (v80)
        {
          _outNode(a1, v80);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v79 + v78)
        {
          v81 = v79 + v78 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          appendStringInfoString(a1, ",");
        }

        ++v77;
        v78 += 8;
      }

      while (v77 < *(v76 + 4));
    }

    appendStringInfo(a1, "],", v70, v71, v72, v73, v74, v75, v317);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "joinrightcols:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v88 = *(a2 + 72);
    if (v88 && *(v88 + 4) >= 1)
    {
      v89 = 0;
      v90 = 8;
      do
      {
        v91 = *(v88 + 16);
        v92 = *(v91 + 8 * v89);
        if (v92)
        {
          _outNode(a1, v92);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v91 + v90)
        {
          v93 = v91 + v90 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v93 = 1;
        }

        if (!v93)
        {
          appendStringInfoString(a1, ",");
        }

        ++v89;
        v90 += 8;
      }

      while (v89 < *(v88 + 4));
    }

    appendStringInfo(a1, "],", v82, v83, v84, v85, v86, v87, v318);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "functions:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v100 = *(a2 + 80);
    if (v100 && *(v100 + 4) >= 1)
    {
      v101 = 0;
      v102 = 8;
      do
      {
        v103 = *(v100 + 16);
        v104 = *(v103 + 8 * v101);
        if (v104)
        {
          _outNode(a1, v104);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v103 + v102)
        {
          v105 = v103 + v102 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v105 = 1;
        }

        if (!v105)
        {
          appendStringInfoString(a1, ",");
        }

        ++v101;
        v102 += 8;
      }

      while (v101 < *(v100 + 4));
    }

    appendStringInfo(a1, "],", v94, v95, v96, v97, v98, v99, v319);
  }

  if (*(a2 + 88) == 1)
  {
    appendStringInfo(a1, "funcordinality:%s,", v52, v53, v54, v55, v56, v57, "true");
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "tablefunc:{", v52, v53, v54, v55, v56, v57, v315);
    _outTableFunc(a1, *(a2 + 96), v106, v107, v108, v109, v110, v111);
    v118 = a1[2];
    v32 = __OFSUB__(v118, 1);
    v119 = v118 - 1;
    if (v119 < 0 == v32)
    {
      v120 = *a1;
      if (*(*a1 + v119) == 44)
      {
        a1[2] = v119;
        *(v120 + v119) = 0;
      }
    }

    appendStringInfo(a1, "},", v112, v113, v114, v115, v116, v117, v320);
  }

  if (*(a2 + 104))
  {
    appendStringInfo(a1, "values_lists:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v127 = *(a2 + 104);
    if (v127 && *(v127 + 4) >= 1)
    {
      v128 = 0;
      v129 = 8;
      do
      {
        v130 = *(v127 + 16);
        v131 = *(v130 + 8 * v128);
        if (v131)
        {
          _outNode(a1, v131);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v130 + v129)
        {
          v132 = v130 + v129 >= (*(*(a2 + 104) + 16) + 8 * *(*(a2 + 104) + 4));
        }

        else
        {
          v132 = 1;
        }

        if (!v132)
        {
          appendStringInfoString(a1, ",");
        }

        ++v128;
        v129 += 8;
      }

      while (v128 < *(v127 + 4));
    }

    appendStringInfo(a1, "],", v121, v122, v123, v124, v125, v126, v321);
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "ctename:", v52, v53, v54, v55, v56, v57, v315);
    _outToken(a1, *(a2 + 112), v133, v134, v135, v136, v137, v138);
    appendStringInfo(a1, ",", v139, v140, v141, v142, v143, v144, v322);
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "ctelevelsup:%u,", v52, v53, v54, v55, v56, v57, *(a2 + 120));
  }

  if (*(a2 + 124) == 1)
  {
    appendStringInfo(a1, "self_reference:%s,", v52, v53, v54, v55, v56, v57, "true");
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "coltypes:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v151 = *(a2 + 128);
    if (v151 && *(v151 + 4) >= 1)
    {
      v152 = 0;
      v153 = 8;
      do
      {
        v154 = *(v151 + 16);
        v155 = *(v154 + 8 * v152);
        if (v155)
        {
          _outNode(a1, v155);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v154 + v153)
        {
          v156 = v154 + v153 >= (*(*(a2 + 128) + 16) + 8 * *(*(a2 + 128) + 4));
        }

        else
        {
          v156 = 1;
        }

        if (!v156)
        {
          appendStringInfoString(a1, ",");
        }

        ++v152;
        v153 += 8;
      }

      while (v152 < *(v151 + 4));
    }

    appendStringInfo(a1, "],", v145, v146, v147, v148, v149, v150, v323);
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "coltypmods:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v163 = *(a2 + 136);
    if (v163 && *(v163 + 4) >= 1)
    {
      v164 = 0;
      v165 = 8;
      do
      {
        v166 = *(v163 + 16);
        v167 = *(v166 + 8 * v164);
        if (v167)
        {
          _outNode(a1, v167);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v166 + v165)
        {
          v168 = v166 + v165 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v168 = 1;
        }

        if (!v168)
        {
          appendStringInfoString(a1, ",");
        }

        ++v164;
        v165 += 8;
      }

      while (v164 < *(v163 + 4));
    }

    appendStringInfo(a1, "],", v157, v158, v159, v160, v161, v162, v324);
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "colcollations:", v52, v53, v54, v55, v56, v57, v315);
    appendStringInfoChar(a1, 91);
    v175 = *(a2 + 144);
    if (v175 && *(v175 + 4) >= 1)
    {
      v176 = 0;
      v177 = 8;
      do
      {
        v178 = *(v175 + 16);
        v179 = *(v178 + 8 * v176);
        if (v179)
        {
          _outNode(a1, v179);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v178 + v177)
        {
          v180 = v178 + v177 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v180 = 1;
        }

        if (!v180)
        {
          appendStringInfoString(a1, ",");
        }

        ++v176;
        v177 += 8;
      }

      while (v176 < *(v175 + 4));
    }

    appendStringInfo(a1, "],", v169, v170, v171, v172, v173, v174, v325);
  }

  if (*(a2 + 152))
  {
    appendStringInfo(a1, "enrname:", v52, v53, v54, v55, v56, v57, v315);
    _outToken(a1, *(a2 + 152), v181, v182, v183, v184, v185, v186);
    appendStringInfo(a1, ",", v187, v188, v189, v190, v191, v192, v326);
  }

  appendStringInfo(a1, "enrtuples:%f,", v52, v53, v54, v55, v56, v57, *(a2 + 160));
  if (*(a2 + 168))
  {
    appendStringInfo(a1, "alias:{", v193, v194, v195, v196, v197, v198, v327);
    _outAlias(a1, *(a2 + 168), v199, v200, v201, v202, v203, v204, v328);
    v211 = a1[2];
    v32 = __OFSUB__(v211, 1);
    v212 = v211 - 1;
    if (v212 < 0 == v32)
    {
      v213 = *a1;
      if (*(*a1 + v212) == 44)
      {
        a1[2] = v212;
        *(v213 + v212) = 0;
      }
    }

    appendStringInfo(a1, "},", v205, v206, v207, v208, v209, v210, v329);
  }

  if (*(a2 + 176))
  {
    appendStringInfo(a1, "eref:{", v193, v194, v195, v196, v197, v198, v327);
    _outAlias(a1, *(a2 + 176), v214, v215, v216, v217, v218, v219, v330);
    v226 = a1[2];
    v32 = __OFSUB__(v226, 1);
    v227 = v226 - 1;
    if (v227 < 0 == v32)
    {
      v228 = *a1;
      if (*(*a1 + v227) == 44)
      {
        a1[2] = v227;
        *(v228 + v227) = 0;
      }
    }

    appendStringInfo(a1, "},", v220, v221, v222, v223, v224, v225, v331);
  }

  if (*(a2 + 184) == 1)
  {
    appendStringInfo(a1, "lateral:%s,", v193, v194, v195, v196, v197, v198, "true");
    if (*(a2 + 185) != 1)
    {
LABEL_166:
      if (*(a2 + 186) != 1)
      {
        goto LABEL_167;
      }

      goto LABEL_193;
    }
  }

  else if (*(a2 + 185) != 1)
  {
    goto LABEL_166;
  }

  appendStringInfo(a1, "inh:%s,", v193, v194, v195, v196, v197, v198, "true");
  if (*(a2 + 186) != 1)
  {
LABEL_167:
    v229 = *(a2 + 188);
    if (!v229)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_193:
  appendStringInfo(a1, "inFromCl:%s,", v193, v194, v195, v196, v197, v198, "true");
  v229 = *(a2 + 188);
  if (v229)
  {
LABEL_168:
    appendStringInfo(a1, "requiredPerms:%u,", v193, v194, v195, v196, v197, v198, v229);
  }

LABEL_169:
  if (*(a2 + 192))
  {
    appendStringInfo(a1, "checkAsUser:%u,", v193, v194, v195, v196, v197, v198, *(a2 + 192));
  }

  if (bms_is_empty(*(a2 + 200)))
  {
    if (bms_is_empty(*(a2 + 208)))
    {
      goto LABEL_173;
    }
  }

  else
  {
    appendStringInfo(a1, "selectedCols:[", v230, v231, v232, v233, v234, v235, v327);
    member = bms_next_member(*(a2 + 200), 0);
    if ((member & 0x80000000) == 0)
    {
      v274 = member;
      do
      {
        appendStringInfo(a1, "%d,", v268, v269, v270, v271, v272, v273, v274);
        v274 = bms_next_member(*(a2 + 200), v274);
      }

      while ((v274 & 0x80000000) == 0);
    }

    v275 = a1[2];
    v32 = __OFSUB__(v275, 1);
    v276 = v275 - 1;
    if (v276 < 0 == v32)
    {
      v277 = *a1;
      if (*(*a1 + v276) == 44)
      {
        a1[2] = v276;
        *(v277 + v276) = 0;
      }
    }

    appendStringInfo(a1, "],", v268, v269, v270, v271, v272, v273, v332);
    if (bms_is_empty(*(a2 + 208)))
    {
LABEL_173:
      if (bms_is_empty(*(a2 + 216)))
      {
        goto LABEL_174;
      }

      goto LABEL_209;
    }
  }

  appendStringInfo(a1, "insertedCols:[", v236, v237, v238, v239, v240, v241, v327);
  v278 = bms_next_member(*(a2 + 208), 0);
  if ((v278 & 0x80000000) == 0)
  {
    v285 = v278;
    do
    {
      appendStringInfo(a1, "%d,", v279, v280, v281, v282, v283, v284, v285);
      v285 = bms_next_member(*(a2 + 208), v285);
    }

    while ((v285 & 0x80000000) == 0);
  }

  v286 = a1[2];
  v32 = __OFSUB__(v286, 1);
  v287 = v286 - 1;
  if (v287 < 0 == v32)
  {
    v288 = *a1;
    if (*(*a1 + v287) == 44)
    {
      a1[2] = v287;
      *(v288 + v287) = 0;
    }
  }

  appendStringInfo(a1, "],", v279, v280, v281, v282, v283, v284, v333);
  if (bms_is_empty(*(a2 + 216)))
  {
LABEL_174:
    result = bms_is_empty(*(a2 + 224));
    if (result)
    {
      goto LABEL_175;
    }

    goto LABEL_216;
  }

LABEL_209:
  appendStringInfo(a1, "updatedCols:[", v242, v243, v244, v245, v246, v247, v327);
  v289 = bms_next_member(*(a2 + 216), 0);
  if ((v289 & 0x80000000) == 0)
  {
    v296 = v289;
    do
    {
      appendStringInfo(a1, "%d,", v290, v291, v292, v293, v294, v295, v296);
      v296 = bms_next_member(*(a2 + 216), v296);
    }

    while ((v296 & 0x80000000) == 0);
  }

  v297 = a1[2];
  v32 = __OFSUB__(v297, 1);
  v298 = v297 - 1;
  if (v298 < 0 == v32)
  {
    v299 = *a1;
    if (*(*a1 + v298) == 44)
    {
      a1[2] = v298;
      *(v299 + v298) = 0;
    }
  }

  appendStringInfo(a1, "],", v290, v291, v292, v293, v294, v295, v334);
  result = bms_is_empty(*(a2 + 224));
  if (result)
  {
LABEL_175:
    if (!*(a2 + 232))
    {
      return result;
    }

    goto LABEL_176;
  }

LABEL_216:
  appendStringInfo(a1, "extraUpdatedCols:[", v249, v250, v251, v252, v253, v254, v327);
  v300 = bms_next_member(*(a2 + 224), 0);
  if ((v300 & 0x80000000) == 0)
  {
    v307 = v300;
    do
    {
      appendStringInfo(a1, "%d,", v301, v302, v303, v304, v305, v306, v307);
      v307 = bms_next_member(*(a2 + 224), v307);
    }

    while ((v307 & 0x80000000) == 0);
  }

  v308 = a1[2];
  v32 = __OFSUB__(v308, 1);
  v309 = v308 - 1;
  if (v309 < 0 == v32)
  {
    v310 = *a1;
    if (*(*a1 + v309) == 44)
    {
      a1[2] = v309;
      *(v310 + v309) = 0;
    }
  }

  result = appendStringInfo(a1, "],", v301, v302, v303, v304, v305, v306, v335);
  if (*(a2 + 232))
  {
LABEL_176:
    appendStringInfo(a1, "securityQuals:", v249, v250, v251, v252, v253, v254, v327);
    appendStringInfoChar(a1, 91);
    v261 = *(a2 + 232);
    if (v261 && *(v261 + 4) >= 1)
    {
      v262 = 0;
      v263 = 8;
      do
      {
        v264 = *(v261 + 16);
        v265 = *(v264 + 8 * v262);
        if (v265)
        {
          _outNode(a1, v265);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v264 + v263)
        {
          v266 = v264 + v263 >= (*(*(a2 + 232) + 16) + 8 * *(*(a2 + 232) + 4));
        }

        else
        {
          v266 = 1;
        }

        if (!v266)
        {
          appendStringInfoString(a1, ",");
        }

        ++v262;
        v263 += 8;
      }

      while (v262 < *(v261 + 4));
    }

    return appendStringInfo(a1, "],", v255, v256, v257, v258, v259, v260, a9);
  }

  return result;
}

unint64_t _outRangeTblFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "funcexpr:", a3, a4, a5, a6, a7, a8, v84);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v11, v12, v13, v14, v15, v16, v85);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "funccolcount:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "funccolnames:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(a1, 91);
    v23 = *(a2 + 24);
    if (v23 && *(v23 + 4) >= 1)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = *(v23 + 16);
        v27 = *(v26 + 8 * v24);
        if (v27)
        {
          _outNode(a1, v27);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v26 + v25)
        {
          v28 = v26 + v25 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          appendStringInfoString(a1, ",");
        }

        ++v24;
        v25 += 8;
      }

      while (v24 < *(v23 + 4));
    }

    appendStringInfo(a1, "],", v17, v18, v19, v20, v21, v22, v86);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "funccoltypes:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(a1, 91);
    v35 = *(a2 + 32);
    if (v35 && *(v35 + 4) >= 1)
    {
      v36 = 0;
      v37 = 8;
      do
      {
        v38 = *(v35 + 16);
        v39 = *(v38 + 8 * v36);
        if (v39)
        {
          _outNode(a1, v39);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v38 + v37)
        {
          v40 = v38 + v37 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v40 = 1;
        }

        if (!v40)
        {
          appendStringInfoString(a1, ",");
        }

        ++v36;
        v37 += 8;
      }

      while (v36 < *(v35 + 4));
    }

    appendStringInfo(a1, "],", v29, v30, v31, v32, v33, v34, v87);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "funccoltypmods:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(a1, 91);
    v47 = *(a2 + 40);
    if (v47 && *(v47 + 4) >= 1)
    {
      v48 = 0;
      v49 = 8;
      do
      {
        v50 = *(v47 + 16);
        v51 = *(v50 + 8 * v48);
        if (v51)
        {
          _outNode(a1, v51);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v50 + v49)
        {
          v52 = v50 + v49 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          appendStringInfoString(a1, ",");
        }

        ++v48;
        v49 += 8;
      }

      while (v48 < *(v47 + 4));
    }

    appendStringInfo(a1, "],", v41, v42, v43, v44, v45, v46, v88);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "funccolcollations:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(a1, 91);
    v59 = *(a2 + 48);
    if (v59 && *(v59 + 4) >= 1)
    {
      v60 = 0;
      v61 = 8;
      do
      {
        v62 = *(v59 + 16);
        v63 = *(v62 + 8 * v60);
        if (v63)
        {
          _outNode(a1, v63);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v62 + v61)
        {
          v64 = v62 + v61 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v64 = 1;
        }

        if (!v64)
        {
          appendStringInfoString(a1, ",");
        }

        ++v60;
        v61 += 8;
      }

      while (v60 < *(v59 + 4));
    }

    appendStringInfo(a1, "],", v53, v54, v55, v56, v57, v58, v89);
  }

  result = bms_is_empty(*(a2 + 56));
  if ((result & 1) == 0)
  {
    appendStringInfo(a1, "funcparams:[", v66, v67, v68, v69, v70, v71, v84);
    member = bms_next_member(*(a2 + 56), 0);
    if ((member & 0x80000000) == 0)
    {
      v79 = member;
      do
      {
        appendStringInfo(a1, "%d,", v73, v74, v75, v76, v77, v78, v79);
        v79 = bms_next_member(*(a2 + 56), v79);
      }

      while ((v79 & 0x80000000) == 0);
    }

    v80 = *(a1 + 8);
    v81 = __OFSUB__(v80, 1);
    v82 = v80 - 1;
    if (v82 < 0 == v81)
    {
      v83 = *a1;
      if (*(*a1 + v82) == 44)
      {
        *(a1 + 8) = v82;
        *(v83 + v82) = 0;
      }
    }

    return appendStringInfo(a1, "],", v73, v74, v75, v76, v77, v78, a9);
  }

  return result;
}

uint64_t _outTableSampleClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "tsmhandler:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "args:", a3, a4, a5, a6, a7, a8, v29);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v30);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "repeatable:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v10, *(a2 + 16));

    return appendStringInfo(v10, ",", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

unint64_t _outWithCheckOption(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 3)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E558E8)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relname:", v13, v14, v15, v16, v17, v18, v49);
    _outToken(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v50);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "polname:", v13, v14, v15, v16, v17, v18, v49);
    _outToken(a1, *(a2 + 16), v31, v32, v33, v34, v35, v36);
    result = appendStringInfo(a1, ",", v37, v38, v39, v40, v41, v42, v51);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "qual:", v13, v14, v15, v16, v17, v18, v49);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v43, v44, v45, v46, v47, v48, v52);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "cascaded:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

uint64_t _outSortGroupClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "tleSortGroupRef:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "eqop:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "sortop:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16) != 1)
  {
    if (*(a2 + 17) != 1)
    {
      return result;
    }

    return appendStringInfo(v9, "hashable:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  result = appendStringInfo(v9, "nulls_first:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 17) == 1)
  {
    return appendStringInfo(v9, "hashable:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outGroupingSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 4)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55908)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "content:", v13, v14, v15, v16, v17, v18, v31);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 8);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v32);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  return result;
}

uint64_t _outWindowClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v72);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "refname:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v73);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "partitionClause:", a3, a4, a5, a6, a7, a8, v71);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v74);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "orderClause:", a3, a4, a5, a6, a7, a8, v71);
    appendStringInfoChar(v9, 91);
    v52 = *(a2 + 32);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(v9, v56);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(v9, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    result = appendStringInfo(v9, "],", v46, v47, v48, v49, v50, v51, v75);
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v9, "frameOptions:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v9, "startOffset:", a3, a4, a5, a6, a7, a8, v71);
    _outNode(v9, *(a2 + 48));
    result = appendStringInfo(v9, ",", v58, v59, v60, v61, v62, v63, v76);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v9, "endOffset:", a3, a4, a5, a6, a7, a8, v71);
    _outNode(v9, *(a2 + 56));
    result = appendStringInfo(v9, ",", v64, v65, v66, v67, v68, v69, v77);
  }

  if (*(a2 + 64))
  {
    result = appendStringInfo(v9, "startInRangeFunc:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 64));
  }

  if (*(a2 + 68))
  {
    result = appendStringInfo(v9, "endInRangeFunc:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 68));
  }

  if (*(a2 + 72))
  {
    result = appendStringInfo(v9, "inRangeColl:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 72));
  }

  if (*(a2 + 76) == 1)
  {
    result = appendStringInfo(v9, "inRangeAsc:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 77) != 1)
    {
LABEL_47:
      v70 = *(a2 + 80);
      if (!v70)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if (*(a2 + 77) != 1)
  {
    goto LABEL_47;
  }

  result = appendStringInfo(v9, "inRangeNullsFirst:%s,", a3, a4, a5, a6, a7, a8, "true");
  v70 = *(a2 + 80);
  if (v70)
  {
LABEL_48:
    result = appendStringInfo(v9, "winref:%u,", a3, a4, a5, a6, a7, a8, v70);
  }

LABEL_49:
  if (*(a2 + 84) == 1)
  {
    return appendStringInfo(v9, "copiedOrder:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outObjectWithArgs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "objname:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v35);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "objargs:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v36);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v9, "args_unspecified:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outAccessPriv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "priv_name:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "cols:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outCreateOpClassItem(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "itemtype:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "name:{", a3, a4, a5, a6, a7, a8, v66);
    _outObjectWithArgs(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v67);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v10, "number:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "order_family:", a3, a4, a5, a6, a7, a8, v66);
    appendStringInfoChar(v10, 91);
    v33 = *(a2 + 24);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    result = appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, v68);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "class_args:", a3, a4, a5, a6, a7, a8, v66);
    appendStringInfoChar(v10, 91);
    v45 = *(a2 + 32);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(v10, v49);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(v10, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    result = appendStringInfo(v10, "],", v39, v40, v41, v42, v43, v44, v69);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v10, "storedtype:{", a3, a4, a5, a6, a7, a8, v66);
    _outTypeName(v10, *(a2 + 40), v51, v52, v53, v54, v55, v56);
    v63 = *(v10 + 8);
    v24 = __OFSUB__(v63, 1);
    v64 = v63 - 1;
    if (v64 < 0 == v24)
    {
      v65 = *v10;
      if (*(*v10 + v64) == 44)
      {
        *(v10 + 8) = v64;
        *(v65 + v64) = 0;
      }
    }

    return appendStringInfo(v10, "},", v57, v58, v59, v60, v61, v62, a9);
  }

  return result;
}

uint64_t _outTableLikeClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v26);
    _outRangeVar(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(v9 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        *(v9 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v27);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "options:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "relationOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

unint64_t _outFunctionParameter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", a3, a4, a5, a6, a7, a8, v54);
    _outToken(a1, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, v55);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "argType:{", a3, a4, a5, a6, a7, a8, v54);
    _outTypeName(a1, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = a1[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *a1;
      if (*(*a1 + v37) == 44)
      {
        a1[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    appendStringInfo(a1, "},", v29, v30, v31, v32, v33, v34, v56);
  }

  v39 = *(a2 + 24);
  if (v39 <= 110)
  {
    if (v39 == 98)
    {
      v40 = "FUNC_PARAM_INOUT";
      goto LABEL_20;
    }

    if (v39 == 105)
    {
      v40 = "FUNC_PARAM_IN";
      goto LABEL_20;
    }
  }

  else
  {
    switch(v39)
    {
      case 'v':
        v40 = "FUNC_PARAM_VARIADIC";
        goto LABEL_20;
      case 't':
        v40 = "FUNC_PARAM_TABLE";
        goto LABEL_20;
      case 'o':
        v40 = "FUNC_PARAM_OUT";
        goto LABEL_20;
    }
  }

  LODWORD(v40) = 0;
LABEL_20:
  result = appendStringInfo(a1, "mode:%s,", a3, a4, a5, a6, a7, a8, v40);
  if (*(a2 + 32))
  {
    appendStringInfo(a1, "defexpr:", v42, v43, v44, v45, v46, v47, v57);
    _outNode(a1, *(a2 + 32));

    return appendStringInfo(a1, ",", v48, v49, v50, v51, v52, v53, a9);
  }

  return result;
}

unint64_t _outLockingClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "lockedRels:", a3, a4, a5, a6, a7, a8, v33);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v34);
  }

  v22 = *(a2 + 16);
  if (v22 > 4)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = (&off_1E6E55930)[v22];
  }

  appendStringInfo(a1, "strength:%s,", a3, a4, a5, a6, a7, a8, v23);
  v30 = *(a2 + 20);
  if (v30 > 2)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v31 = (&off_1E6E55958)[v30];
  }

  return appendStringInfo(a1, "waitPolicy:%s,", v24, v25, v26, v27, v28, v29, v31);
}

unint64_t _outRowMarkClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "rti:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  v10 = *(a2 + 8);
  if (v10 > 4)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55930)[v10];
  }

  appendStringInfo(a1, "strength:%s,", a3, a4, a5, a6, a7, a8, v11);
  v18 = *(a2 + 12);
  if (v18 > 2)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = (&off_1E6E55958)[v18];
  }

  result = appendStringInfo(a1, "waitPolicy:%s,", v12, v13, v14, v15, v16, v17, v19);
  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(a1, "pushedDown:%s,", v21, v22, v23, v24, v25, v26, "true");
  }

  return result;
}

unint64_t _outXmlSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  v11 = "XMLOPTION_CONTENT";
  if (v10 != 1)
  {
    LODWORD(v11) = 0;
  }

  if (v10)
  {
    LODWORD(v12) = v11;
  }

  else
  {
    v12 = "XMLOPTION_DOCUMENT";
  }

  result = appendStringInfo(a1, "xmloption:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "expr:", v14, v15, v16, v17, v18, v19, v42);
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",", v20, v21, v22, v23, v24, v25, v43);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "typeName:{", v14, v15, v16, v17, v18, v19, v42);
    _outTypeName(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    v38 = *(a1 + 8);
    v39 = __OFSUB__(v38, 1);
    v40 = v38 - 1;
    if (v40 < 0 == v39)
    {
      v41 = *a1;
      if (*(*a1 + v40) == 44)
      {
        *(a1 + 8) = v40;
        *(v41 + v40) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v32, v33, v34, v35, v36, v37, v44);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", v14, v15, v16, v17, v18, v19, *(a2 + 24));
  }

  return result;
}

uint64_t _outWithClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "ctes:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v9, "recursive:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

uint64_t _outInferClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "indexElems:", a3, a4, a5, a6, a7, a8, v40);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v41);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "whereClause:", a3, a4, a5, a6, a7, a8, v40);
    _outNode(v9, *(a2 + 16));
    result = appendStringInfo(v9, ",", v22, v23, v24, v25, v26, v27, v42);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "conname:", a3, a4, a5, a6, a7, a8, v40);
    _outToken(v9, *(a2 + 24), v28, v29, v30, v31, v32, v33);
    result = appendStringInfo(v9, ",", v34, v35, v36, v37, v38, v39, v43);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  return result;
}

unint64_t _outOnConflictClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 2)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55970)[v10];
  }

  result = appendStringInfo(a1, "action:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "infer:{", v13, v14, v15, v16, v17, v18, v53);
    _outInferClause(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    v31 = *(a1 + 8);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        *(a1 + 8) = v33;
        *(v34 + v33) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v25, v26, v27, v28, v29, v30, v54);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "targetList:", v13, v14, v15, v16, v17, v18, v53);
    appendStringInfoChar(a1, 91);
    v41 = *(a2 + 16);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(a1, v45);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(a1, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    result = appendStringInfo(a1, "],", v35, v36, v37, v38, v39, v40, v55);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "whereClause:", v13, v14, v15, v16, v17, v18, v53);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v47, v48, v49, v50, v51, v52, v56);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 32));
  }

  return result;
}

unint64_t _outCommonTableExpr(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "ctename:", a3, a4, a5, a6, a7, a8, v98);
    _outToken(a1, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, v99);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "aliascolnames:", a3, a4, a5, a6, a7, a8, v98);
    appendStringInfoChar(a1, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(a1, v33);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(a1, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    appendStringInfo(a1, "],", v23, v24, v25, v26, v27, v28, v100);
  }

  v35 = *(a2 + 24);
  if (v35 > 2)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = (&off_1E6E55988)[v35];
  }

  result = appendStringInfo(a1, "ctematerialized:%s,", a3, a4, a5, a6, a7, a8, v36);
  if (*(a2 + 32))
  {
    appendStringInfo(a1, "ctequery:", v38, v39, v40, v41, v42, v43, v101);
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",", v44, v45, v46, v47, v48, v49, v102);
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(a1, "location:%d,", v38, v39, v40, v41, v42, v43, *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    result = appendStringInfo(a1, "cterecursive:%s,", v38, v39, v40, v41, v42, v43, "true");
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "cterefcount:%d,", v38, v39, v40, v41, v42, v43, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "ctecolnames:", v38, v39, v40, v41, v42, v43, v101);
    appendStringInfoChar(a1, 91);
    v56 = *(a2 + 56);
    if (v56 && *(v56 + 4) >= 1)
    {
      v57 = 0;
      v58 = 8;
      do
      {
        v59 = *(v56 + 16);
        v60 = *(v59 + 8 * v57);
        if (v60)
        {
          _outNode(a1, v60);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v59 + v58)
        {
          v61 = v59 + v58 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          appendStringInfoString(a1, ",");
        }

        ++v57;
        v58 += 8;
      }

      while (v57 < *(v56 + 4));
    }

    result = appendStringInfo(a1, "],", v50, v51, v52, v53, v54, v55, v103);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "ctecoltypes:", v38, v39, v40, v41, v42, v43, v101);
    appendStringInfoChar(a1, 91);
    v68 = *(a2 + 64);
    if (v68 && *(v68 + 4) >= 1)
    {
      v69 = 0;
      v70 = 8;
      do
      {
        v71 = *(v68 + 16);
        v72 = *(v71 + 8 * v69);
        if (v72)
        {
          _outNode(a1, v72);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v71 + v70)
        {
          v73 = v71 + v70 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v73 = 1;
        }

        if (!v73)
        {
          appendStringInfoString(a1, ",");
        }

        ++v69;
        v70 += 8;
      }

      while (v69 < *(v68 + 4));
    }

    result = appendStringInfo(a1, "],", v62, v63, v64, v65, v66, v67, v104);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "ctecoltypmods:", v38, v39, v40, v41, v42, v43, v101);
    appendStringInfoChar(a1, 91);
    v80 = *(a2 + 72);
    if (v80 && *(v80 + 4) >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        v83 = *(v80 + 16);
        v84 = *(v83 + 8 * v81);
        if (v84)
        {
          _outNode(a1, v84);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v83 + v82)
        {
          v85 = v83 + v82 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v85 = 1;
        }

        if (!v85)
        {
          appendStringInfoString(a1, ",");
        }

        ++v81;
        v82 += 8;
      }

      while (v81 < *(v80 + 4));
    }

    result = appendStringInfo(a1, "],", v74, v75, v76, v77, v78, v79, v105);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "ctecolcollations:", v38, v39, v40, v41, v42, v43, v101);
    appendStringInfoChar(a1, 91);
    v92 = *(a2 + 80);
    if (v92 && *(v92 + 4) >= 1)
    {
      v93 = 0;
      v94 = 8;
      do
      {
        v95 = *(v92 + 16);
        v96 = *(v95 + 8 * v93);
        if (v96)
        {
          _outNode(a1, v96);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v95 + v94)
        {
          v97 = v95 + v94 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v97 = 1;
        }

        if (!v97)
        {
          appendStringInfoString(a1, ",");
        }

        ++v93;
        v94 += 8;
      }

      while (v93 < *(v92 + 4));
    }

    return appendStringInfo(a1, "],", v86, v87, v88, v89, v90, v91, a9);
  }

  return result;
}

unint64_t _outRoleSpec(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 3)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E559A0)[v10];
  }

  result = appendStringInfo(a1, "roletype:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "rolename:", v13, v14, v15, v16, v17, v18, v31);
    _outToken(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v32);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  return result;
}

uint64_t _outTriggerTransition(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v22);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v23);
  }

  if (*(a2 + 16) != 1)
  {
    if (*(a2 + 17) != 1)
    {
      return result;
    }

    return appendStringInfo(v9, "isTable:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  result = appendStringInfo(v9, "isNew:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 17) == 1)
  {
    return appendStringInfo(v9, "isTable:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outPartitionElem(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v52);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v53);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "expr:", a3, a4, a5, a6, a7, a8, v52);
    _outNode(v9, *(a2 + 16));
    result = appendStringInfo(v9, ",", v22, v23, v24, v25, v26, v27, v54);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "collation:", a3, a4, a5, a6, a7, a8, v52);
    appendStringInfoChar(v9, 91);
    v34 = *(a2 + 24);
    if (v34 && *(v34 + 4) >= 1)
    {
      v35 = 0;
      v36 = 8;
      do
      {
        v37 = *(v34 + 16);
        v38 = *(v37 + 8 * v35);
        if (v38)
        {
          _outNode(v9, v38);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v37 + v36)
        {
          v39 = v37 + v36 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          appendStringInfoString(v9, ",");
        }

        ++v35;
        v36 += 8;
      }

      while (v35 < *(v34 + 4));
    }

    result = appendStringInfo(v9, "],", v28, v29, v30, v31, v32, v33, v55);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "opclass:", a3, a4, a5, a6, a7, a8, v52);
    appendStringInfoChar(v9, 91);
    v46 = *(a2 + 32);
    if (v46 && *(v46 + 4) >= 1)
    {
      v47 = 0;
      v48 = 8;
      do
      {
        v49 = *(v46 + 16);
        v50 = *(v49 + 8 * v47);
        if (v50)
        {
          _outNode(v9, v50);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v49 + v48)
        {
          v51 = v49 + v48 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v51 = 1;
        }

        if (!v51)
        {
          appendStringInfoString(v9, ",");
        }

        ++v47;
        v48 += 8;
      }

      while (v47 < *(v46 + 4));
    }

    result = appendStringInfo(v9, "],", v40, v41, v42, v43, v44, v45, v56);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  return result;
}

uint64_t _outPartitionSpec(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "strategy:", a3, a4, a5, a6, a7, a8, v34);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v35);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "partParams:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v36);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outPartitionBoundSpec(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "strategy:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 5) == 1)
  {
    result = appendStringInfo(v9, "is_default:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "modulus:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "remainder:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "listdatums:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 16);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v47);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "lowerdatums:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 24);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v48);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "upperdatums:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 32);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v49);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  return result;
}

unint64_t _outPartitionRangeDatum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4) + 1;
  if (v10 > 2)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E559C0)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "value:", v13, v14, v15, v16, v17, v18, v25);
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",", v19, v20, v21, v22, v23, v24, v26);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  return result;
}

uint64_t _outPartitionCmd(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:{", a3, a4, a5, a6, a7, a8, v42);
    _outRangeVar(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v43);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "bound:{", a3, a4, a5, a6, a7, a8, v42);
    _outPartitionBoundSpec(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    v39 = *(v10 + 8);
    v24 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v24)
    {
      v41 = *v10;
      if (*(*v10 + v40) == 44)
      {
        *(v10 + 8) = v40;
        *(v41 + v40) = 0;
      }
    }

    return appendStringInfo(v10, "},", v33, v34, v35, v36, v37, v38, a9);
  }

  return result;
}

uint64_t _outVacuumRelation(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v39);
    _outRangeVar(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v40);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v10, "oid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "va_cols:", a3, a4, a5, a6, a7, a8, v39);
    appendStringInfoChar(v10, 91);
    v33 = *(a2 + 24);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    return appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, a9);
  }

  return result;
}

uint64_t _outInlineCodeBlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "source_text:", a3, a4, a5, a6, a7, a8, v22);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v23);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "langOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20) != 1)
  {
    if (*(a2 + 21) != 1)
    {
      return result;
    }

    return appendStringInfo(v9, "atomic:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  result = appendStringInfo(v9, "langIsTrusted:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 21) == 1)
  {
    return appendStringInfo(v9, "atomic:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

int *_outToken(int *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (a2)
  {
    v9 = a2;
    v10 = result[2];
    if (v10 + 1 >= result[3])
    {
      result = appendStringInfoChar(result, 34);
    }

    else
    {
      *(*result + v10) = 34;
      v11 = *result;
      v12 = result[2] + 1;
      result[2] = v12;
      *(v11 + v12) = 0;
    }

    while (1)
    {
      while (1)
      {
        v13 = *v9;
        if (v13 > 0xB)
        {
          break;
        }

        if (*v9 <= 8u)
        {
          if (v13 == 8)
          {
            result = appendStringInfoString(v8, "\\b");
            ++v9;
          }

          else
          {
            if (!*v9)
            {
              v17 = *(v8 + 8);
              if (v17 + 1 >= *(v8 + 12))
              {

                return appendStringInfoChar(v8, 34);
              }

              else
              {
                *(*v8 + v17) = 34;
                v18 = *v8;
                v19 = *(v8 + 8) + 1;
                *(v8 + 8) = v19;
                *(v18 + v19) = 0;
              }

              return result;
            }

LABEL_26:
            if (v13 < 0x20 || (v13 | 2) == 0x3E)
            {
              result = appendStringInfo(v8, "\\u%04x", a3, a4, a5, a6, a7, a8, *v9++);
            }

            else
            {
              v14 = *(v8 + 8);
              if (v14 + 1 >= *(v8 + 12))
              {
                result = appendStringInfoChar(v8, v13);
              }

              else
              {
                *(*v8 + v14) = v13;
                v15 = *v8;
                v16 = *(v8 + 8) + 1;
                *(v8 + 8) = v16;
                *(v15 + v16) = 0;
              }

              ++v9;
            }
          }
        }

        else if (v13 == 9)
        {
          result = appendStringInfoString(v8, "\\t");
          ++v9;
        }

        else
        {
          if (v13 != 10)
          {
            goto LABEL_26;
          }

          result = appendStringInfoString(v8, "\\n");
          ++v9;
        }
      }

      if (*v9 > 0x21u)
      {
        if (v13 == 34)
        {
          result = appendStringInfoString(v8, "\\"");
          ++v9;
        }

        else
        {
          if (v13 != 92)
          {
            goto LABEL_26;
          }

          result = appendStringInfoString(v8, "\\\");
          ++v9;
        }
      }

      else if (v13 == 12)
      {
        result = appendStringInfoString(v8, "\\f");
        ++v9;
      }

      else
      {
        if (v13 != 13)
        {
          goto LABEL_26;
        }

        result = appendStringInfoString(v8, "\\r");
        ++v9;
      }
    }
  }

  return appendStringInfoString(result, "null");
}

size_t pg_query_nodes_to_protobuf(uint64_t a1)
{
  v19 = xmmword_1E6E559D8;
  v20 = unk_1E6E559E8;
  v21 = xmmword_1E6E559F8;
  DWORD2(v20) = 130003;
  if (a1)
  {
    *&v21 = *(a1 + 4);
    v2 = palloc(8 * v21);
    *(&v21 + 1) = v2;
    if (*(a1 + 4) >= 1)
    {
      v3 = v2;
      v4 = 0;
      do
      {
        v5 = *(a1 + 16);
        v6 = palloc(0x28uLL);
        *(v3 + 8 * v4) = v6;
        pg_query__raw_stmt__init(v6);
        v7 = *(v3 + 8 * v4);
        v8 = *(v5 + 8 * v4);
        if (*(v8 + 8))
        {
          v9 = palloc(0x28uLL);
          pg_query__node__init(v9);
          *(v7 + 24) = v9;
          _outNode_0(v9, *(v8 + 8), v10, v11, v12, v13, v14, v15);
        }

        *(v7 + 32) = *(v8 + 16);
        *(v7 + 36) = *(v8 + 20);
        ++v4;
      }

      while (v4 < *(a1 + 4));
    }
  }

  else
  {
    v21 = 0uLL;
  }

  packed_size = pg_query__parse_result__get_packed_size(&v19);
  v17 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  pg_query__parse_result__pack(&v19, v17);
  return packed_size;
}

uint64_t _outRawStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 24) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 32) = *(a2 + 16);
  *(v3 + 36) = *(a2 + 20);
  return result;
}

void _outNode_0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    switch(*a2)
    {
      case 0x66:
        v10 = palloc(0x30uLL);
        pg_query__alias__init(v10);
        _outAlias_0(v10, a2);
        *(a1 + 32) = v10;
        v11 = 1;
        goto LABEL_252;
      case 0x67:
        v13 = palloc(0x50uLL);
        pg_query__range_var__init(v13);
        _outRangeVar_0(v13, a2);
        *(a1 + 32) = v13;
        v11 = 2;
        goto LABEL_252;
      case 0x68:
        v123 = palloc(0xC0uLL);
        pg_query__table_func__init(v123);
        _outTableFunc_0(v123, a2);
        *(a1 + 32) = v123;
        v11 = 3;
        goto LABEL_252;
      case 0x69:
        v190 = palloc(0x18uLL);
        pg_query__expr__init(v190);
        *(a1 + 32) = v190;
        v11 = 4;
        goto LABEL_252;
      case 0x6A:
        v26 = palloc(0x48uLL);
        pg_query__var__init(v26);
        _outVar_0(v26, a2);
        *(a1 + 32) = v26;
        v11 = 5;
        goto LABEL_252;
      case 0x6C:
        v12 = palloc(0x38uLL);
        pg_query__param__init(v12);
        _outParam_0(v12, a2);
        *(a1 + 32) = v12;
        v11 = 6;
        goto LABEL_252;
      case 0x6D:
        v32 = palloc(0xB0uLL);
        pg_query__aggref__init(v32);
        _outAggref_0(v32, a2);
        *(a1 + 32) = v32;
        v11 = 7;
        goto LABEL_252;
      case 0x6E:
        v14 = palloc(0x58uLL);
        pg_query__grouping_func__init(v14);
        _outGroupingFunc_0(v14, a2);
        *(a1 + 32) = v14;
        v11 = 8;
        goto LABEL_252;
      case 0x6F:
        v242 = palloc(0x58uLL);
        pg_query__window_func__init(v242);
        _outWindowFunc_0(v242, a2);
        *(a1 + 32) = v242;
        v11 = 9;
        goto LABEL_252;
      case 0x70:
        v248 = palloc(0x60uLL);
        pg_query__subscripting_ref__init(v248);
        _outSubscriptingRef_0(v248, a2);
        *(a1 + 32) = v248;
        v11 = 10;
        goto LABEL_252;
      case 0x71:
        v249 = palloc(0x58uLL);
        pg_query__func_expr__init(v249);
        _outFuncExpr_0(v249, a2);
        *(a1 + 32) = v249;
        v11 = 11;
        goto LABEL_252;
      case 0x72:
        v127 = palloc(0x38uLL);
        pg_query__named_arg_expr__init(v127);
        _outNamedArgExpr_0(v127, a2);
        *(a1 + 32) = v127;
        v11 = 12;
        goto LABEL_252;
      case 0x73:
        v73 = palloc(0x50uLL);
        pg_query__op_expr__init(v73);
        _outOpExpr_0(v73, a2);
        *(a1 + 32) = v73;
        v11 = 13;
        goto LABEL_252;
      case 0x74:
        v163 = palloc(0x50uLL);
        pg_query__distinct_expr__init(v163);
        _outOpExpr_0(v163, a2);
        *(a1 + 32) = v163;
        v11 = 14;
        goto LABEL_252;
      case 0x75:
        v240 = palloc(0x50uLL);
        pg_query__null_if_expr__init(v240);
        _outOpExpr_0(v240, a2);
        *(a1 + 32) = v240;
        v11 = 15;
        goto LABEL_252;
      case 0x76:
        v53 = palloc(0x48uLL);
        pg_query__scalar_array_op_expr__init(v53);
        _outScalarArrayOpExpr_0(v53, a2);
        *(a1 + 32) = v53;
        v11 = 16;
        goto LABEL_252;
      case 0x77:
        v51 = palloc(0x40uLL);
        pg_query__BOOL_expr__init(v51);
        _outBoolExpr_0(v51, a2);
        *(a1 + 32) = v51;
        v11 = 17;
        goto LABEL_252;
      case 0x78:
        v18 = palloc(0x50uLL);
        pg_query__sub_link__init(v18);
        _outSubLink_0(v18, a2);
        *(a1 + 32) = v18;
        v11 = 18;
        goto LABEL_252;
      case 0x79:
        v17 = palloc(0xA8uLL);
        pg_query__sub_plan__init(v17);
        _outSubPlan_0(v17, a2);
        *(a1 + 32) = v17;
        v11 = 19;
        goto LABEL_252;
      case 0x7A:
        v245 = palloc(0x30uLL);
        pg_query__alternative_sub_plan__init(v245);
        _outAlternativeSubPlan_0(v245, a2);
        *(a1 + 32) = v245;
        v11 = 20;
        goto LABEL_252;
      case 0x7B:
        v19 = palloc(0x38uLL);
        pg_query__field_select__init(v19);
        _outFieldSelect_0(v19, a2);
        *(a1 + 32) = v19;
        v11 = 21;
        goto LABEL_252;
      case 0x7C:
        v212 = palloc(0x50uLL);
        pg_query__field_store__init(v212);
        _outFieldStore_0(v212, a2);
        *(a1 + 32) = v212;
        v11 = 22;
        goto LABEL_252;
      case 0x7D:
        v70 = palloc(0x40uLL);
        pg_query__relabel_type__init(v70);
        _outRelabelType_0(v70, a2);
        *(a1 + 32) = v70;
        v11 = 23;
        goto LABEL_252;
      case 0x7E:
        v109 = palloc(0x38uLL);
        pg_query__coerce_via_io__init(v109);
        _outCoerceViaIO_0(v109, a2);
        *(a1 + 32) = v109;
        v11 = 24;
        goto LABEL_252;
      case 0x7F:
        v21 = palloc(0x48uLL);
        pg_query__array_coerce_expr__init(v21);
        _outArrayCoerceExpr_0(v21, a2);
        *(a1 + 32) = v21;
        v11 = 25;
        goto LABEL_252;
      case 0x80:
        v219 = palloc(0x38uLL);
        pg_query__convert_rowtype_expr__init(v219);
        _outConvertRowtypeExpr_0(v219, a2);
        *(a1 + 32) = v219;
        v11 = 26;
        goto LABEL_252;
      case 0x81:
        v216 = palloc(0x30uLL);
        pg_query__collate_expr__init(v216);
        _outCollateExpr_0(v216, a2);
        *(a1 + 32) = v216;
        v11 = 27;
        goto LABEL_252;
      case 0x82:
        v231 = palloc(0x50uLL);
        pg_query__case_expr__init(v231);
        _outCaseExpr_0(v231, a2);
        *(a1 + 32) = v231;
        v11 = 28;
        goto LABEL_252;
      case 0x83:
        v228 = palloc(0x38uLL);
        pg_query__case_when__init(v228);
        _outCaseWhen_0(v228, a2);
        *(a1 + 32) = v228;
        v11 = 29;
        goto LABEL_252;
      case 0x84:
        v195 = palloc(0x30uLL);
        pg_query__case_test_expr__init(v195);
        *(v195 + 32) = a2[1];
        *(v195 + 36) = a2[2];
        *(v195 + 40) = a2[3];
        *(a1 + 32) = v195;
        v11 = 30;
        goto LABEL_252;
      case 0x85:
        v129 = palloc(0x48uLL);
        pg_query__array_expr__init(v129);
        _outArrayExpr_0(v129, a2);
        *(a1 + 32) = v129;
        v11 = 31;
        goto LABEL_252;
      case 0x86:
        v225 = palloc(0x50uLL);
        pg_query__row_expr__init(v225);
        _outRowExpr_0(v225, a2);
        *(a1 + 32) = v225;
        v11 = 32;
        goto LABEL_252;
      case 0x87:
        v224 = palloc(0x78uLL);
        pg_query__row_compare_expr__init(v224);
        _outRowCompareExpr_0(v224, a2);
        *(a1 + 32) = v224;
        v11 = 33;
        goto LABEL_252;
      case 0x88:
        v22 = palloc(0x40uLL);
        pg_query__coalesce_expr__init(v22);
        _outCoalesceExpr_0(v22, a2);
        *(a1 + 32) = v22;
        v11 = 34;
        goto LABEL_252;
      case 0x89:
        v238 = palloc(0x48uLL);
        pg_query__min_max_expr__init(v238);
        _outMinMaxExpr_0(v238, a2);
        *(a1 + 32) = v238;
        v11 = 35;
        goto LABEL_252;
      case 0x8A:
        v234 = palloc(0x30uLL);
        pg_query__sqlvalue_function__init(v234);
        _outSQLValueFunction_0(v234, a2);
        *(a1 + 32) = v234;
        v11 = 36;
        goto LABEL_252;
      case 0x8B:
        v23 = palloc(0x70uLL);
        pg_query__xml_expr__init(v23);
        _outXmlExpr_0(v23, a2);
        *(a1 + 32) = v23;
        v11 = 37;
        goto LABEL_252;
      case 0x8C:
        v67 = palloc(0x38uLL);
        pg_query__null_test__init(v67);
        _outNullTest_0(v67, a2);
        *(a1 + 32) = v67;
        v11 = 38;
        goto LABEL_252;
      case 0x8D:
        v15 = palloc(0x30uLL);
        pg_query__BOOLean_test__init(v15);
        _outBooleanTest_0(v15, a2);
        *(a1 + 32) = v15;
        v11 = 39;
        goto LABEL_252;
      case 0x8E:
        v237 = palloc(0x40uLL);
        pg_query__coerce_to_domain__init(v237);
        _outRelabelType_0(v237, a2);
        *(a1 + 32) = v237;
        v11 = 40;
        goto LABEL_252;
      case 0x8F:
        v239 = palloc(0x30uLL);
        pg_query__coerce_to_domain_value__init(v239);
        *(v239 + 32) = a2[1];
        *(v239 + 36) = a2[2];
        *(v239 + 40) = a2[3];
        *(v239 + 44) = a2[4];
        *(a1 + 32) = v239;
        v11 = 41;
        goto LABEL_252;
      case 0x90:
        v39 = palloc(0x30uLL);
        pg_query__set_to_default__init(v39);
        *(v39 + 32) = a2[1];
        *(v39 + 36) = a2[2];
        *(v39 + 40) = a2[3];
        *(v39 + 44) = a2[4];
        *(a1 + 32) = v39;
        v11 = 42;
        goto LABEL_252;
      case 0x91:
        v124 = palloc(0x38uLL);
        pg_query__current_of_expr__init(v124);
        *(v124 + 32) = a2[1];
        v125 = *(a2 + 1);
        if (v125)
        {
          *(v124 + 40) = pstrdup(v125);
        }

        *(v124 + 48) = a2[4];
        *(a1 + 32) = v124;
        v11 = 43;
        goto LABEL_252;
      case 0x92:
        v31 = palloc(0x28uLL);
        pg_query__next_value_expr__init(v31);
        *(v31 + 32) = a2[1];
        *(v31 + 36) = a2[2];
        *(a1 + 32) = v31;
        v11 = 44;
        goto LABEL_252;
      case 0x93:
        v43 = palloc(0x30uLL);
        pg_query__inference_elem__init(v43);
        _outCollateExpr_0(v43, a2);
        *(a1 + 32) = v43;
        v11 = 45;
        goto LABEL_252;
      case 0x94:
        v235 = palloc(0x48uLL);
        pg_query__target_entry__init(v235);
        _outTargetEntry_0(v235, a2);
        *(a1 + 32) = v235;
        v11 = 46;
        goto LABEL_252;
      case 0x95:
        v28 = palloc(0x20uLL);
        pg_query__range_tbl_ref__init(v28);
        *(v28 + 24) = a2[1];
        *(a1 + 32) = v28;
        v11 = 47;
        goto LABEL_252;
      case 0x96:
        v16 = palloc(0x58uLL);
        pg_query__join_expr__init(v16);
        _outJoinExpr_0(v16, a2);
        *(a1 + 32) = v16;
        v11 = 48;
        goto LABEL_252;
      case 0x97:
        v33 = palloc(0x30uLL);
        pg_query__from_expr__init(v33);
        _outFromExpr_0(v33, a2);
        *(a1 + 32) = v33;
        v11 = 49;
        goto LABEL_252;
      case 0x98:
        v236 = palloc(0x70uLL);
        pg_query__on_conflict_expr__init(v236);
        _outOnConflictExpr_0(v236, a2);
        *(a1 + 32) = v236;
        v11 = 50;
        goto LABEL_252;
      case 0x99:
        v68 = palloc(0x68uLL);
        pg_query__into_clause__init(v68);
        _outIntoClause_0(v68, a2);
        *(a1 + 32) = v68;
        v11 = 51;
        goto LABEL_252;
      case 0xDD:
        v106 = palloc(0x20uLL);
        pg_query__integer__init(v106);
        *(v106 + 24) = a2[2];
        *(a1 + 32) = v106;
        v11 = 221;
        goto LABEL_252;
      case 0xDE:
        v24 = palloc(0x20uLL);
        pg_query__float__init(v24);
        *(v24 + 24) = *(a2 + 1);
        *(a1 + 32) = v24;
        v11 = 222;
        goto LABEL_252;
      case 0xDF:
        v196 = palloc(0x20uLL);
        pg_query__string__init(v196);
        *(v196 + 24) = *(a2 + 1);
        *(a1 + 32) = v196;
        v11 = 223;
        goto LABEL_252;
      case 0xE0:
        v166 = palloc(0x20uLL);
        pg_query__bit_string__init(v166);
        *(v166 + 24) = *(a2 + 1);
        *(a1 + 32) = v166;
        v11 = 224;
        goto LABEL_252;
      case 0xE1:
        v229 = palloc(0x18uLL);
        pg_query__null__init(v229);
        *(a1 + 32) = v229;
        v11 = 225;
        goto LABEL_252;
      case 0xE2:
        v164 = palloc(0x28uLL);
        pg_query__list__init(v164);
        _outList_0(v164, a2);
        *(a1 + 32) = v164;
        v11 = 226;
        goto LABEL_252;
      case 0xE3:
        v75 = palloc(0x28uLL);
        pg_query__int_list__init(v75);
        _outList_0(v75, a2);
        *(a1 + 32) = v75;
        v11 = 227;
        goto LABEL_252;
      case 0xE4:
        v41 = palloc(0x28uLL);
        pg_query__oid_list__init(v41);
        _outList_0(v41, a2);
        *(a1 + 32) = v41;
        v11 = 228;
        goto LABEL_252;
      case 0xE6:
        v62 = palloc(0x28uLL);
        pg_query__raw_stmt__init(v62);
        _outRawStmt_0(v62, a2);
        *(a1 + 32) = v62;
        v11 = 52;
        goto LABEL_252;
      case 0xE7:
        v47 = palloc(0x160uLL);
        pg_query__query__init(v47);
        _outQuery_0(v47, a2);
        *(a1 + 32) = v47;
        v11 = 53;
        goto LABEL_252;
      case 0xE9:
        v20 = palloc(0x60uLL);
        pg_query__insert_stmt__init(v20);
        _outInsertStmt_0(v20, a2);
        *(a1 + 32) = v20;
        v11 = 54;
        goto LABEL_252;
      case 0xEA:
        v247 = palloc(0x50uLL);
        pg_query__delete_stmt__init(v247);
        _outDeleteStmt_0(v247, a2);
        *(a1 + 32) = v247;
        v11 = 55;
        goto LABEL_252;
      case 0xEB:
        v243 = palloc(0x60uLL);
        pg_query__update_stmt__init(v243);
        _outUpdateStmt_0(v243, a2);
        *(a1 + 32) = v243;
        v11 = 56;
        goto LABEL_252;
      case 0xEC:
        v246 = palloc(0xE8uLL);
        pg_query__select_stmt__init(v246);
        _outSelectStmt_0(v246, a2);
        *(a1 + 32) = v246;
        v11 = 57;
        goto LABEL_252;
      case 0xED:
        v230 = palloc(0x38uLL);
        pg_query__alter_table_stmt__init(v230);
        _outAlterTableStmt_0(v230, a2);
        *(a1 + 32) = v230;
        v11 = 58;
        goto LABEL_252;
      case 0xEE:
        v74 = palloc(0x48uLL);
        pg_query__alter_table_cmd__init(v74);
        _outAlterTableCmd_0(v74, a2);
        *(a1 + 32) = v74;
        v11 = 59;
        goto LABEL_252;
      case 0xEF:
        v44 = palloc(0x48uLL);
        pg_query__alter_domain_stmt__init(v44);
        _outAlterDomainStmt_0(v44, a2);
        *(a1 + 32) = v44;
        v11 = 60;
        goto LABEL_252;
      case 0xF0:
        v52 = palloc(0x70uLL);
        pg_query__set_operation_stmt__init(v52);
        _outSetOperationStmt_0(v52, a2);
        *(a1 + 32) = v52;
        v11 = 61;
        goto LABEL_252;
      case 0xF1:
        v244 = palloc(0x60uLL);
        pg_query__grant_stmt__init(v244);
        _outGrantStmt_0(v244, a2);
        *(a1 + 32) = v244;
        v11 = 62;
        goto LABEL_252;
      case 0xF2:
        v29 = palloc(0x50uLL);
        pg_query__grant_role_stmt__init(v29);
        _outGrantRoleStmt_0(v29, a2);
        *(a1 + 32) = v29;
        v11 = 63;
        goto LABEL_252;
      case 0xF3:
        v54 = palloc(0x30uLL);
        pg_query__alter_default_privileges_stmt__init(v54);
        _outAlterDefaultPrivilegesStmt_0(v54, a2);
        *(a1 + 32) = v54;
        v11 = 64;
        goto LABEL_252;
      case 0xF4:
        v60 = palloc(0x20uLL);
        pg_query__close_portal_stmt__init(v60);
        v61 = *(a2 + 1);
        if (v61)
        {
          *(v60 + 24) = pstrdup(v61);
        }

        *(a1 + 32) = v60;
        v11 = 65;
        goto LABEL_252;
      case 0xF5:
        v214 = palloc(0x30uLL);
        pg_query__cluster_stmt__init(v214);
        _outClusterStmt_0(v214, a2);
        *(a1 + 32) = v214;
        v11 = 66;
        goto LABEL_252;
      case 0xF6:
        v132 = palloc(0x60uLL);
        pg_query__copy_stmt__init(v132);
        _outCopyStmt_0(v132, a2);
        *(a1 + 32) = v132;
        v11 = 67;
        goto LABEL_252;
      case 0xF7:
        v64 = palloc(0x98uLL);
        pg_query__create_stmt__init(v64);
        _outCreateStmt_0(v64, a2);
        *(a1 + 32) = v64;
        v11 = 68;
        goto LABEL_252;
      case 0xF8:
        v76 = palloc(0x58uLL);
        pg_query__define_stmt__init(v76);
        _outDefineStmt_0(v76, a2);
        *(a1 + 32) = v76;
        v11 = 69;
        goto LABEL_252;
      case 0xF9:
        v133 = palloc(0x38uLL);
        pg_query__drop_stmt__init(v133);
        _outDropStmt_0(v133, a2);
        *(a1 + 32) = v133;
        v11 = 70;
        goto LABEL_252;
      case 0xFA:
        v34 = palloc(0x30uLL);
        pg_query__truncate_stmt__init(v34);
        _outTruncateStmt_0(v34, a2);
        *(a1 + 32) = v34;
        v11 = 71;
LABEL_252:
        *(a1 + 24) = v11;
        break;
      case 0xFB:
        v94 = palloc(0x30uLL);
        pg_query__comment_stmt__init(v94);
        _outCommentStmt_0(v94, a2);
        *(a1 + 32) = v94;
        *(a1 + 24) = 72;
        break;
      case 0xFC:
        v35 = palloc(0x38uLL);
        pg_query__fetch_stmt__init(v35);
        _outFetchStmt_0(v35, a2);
        *(a1 + 32) = v35;
        *(a1 + 24) = 73;
        break;
      case 0xFD:
        v226 = palloc(0xC0uLL);
        pg_query__index_stmt__init(v226);
        _outIndexStmt_0(v226, a2);
        *(a1 + 32) = v226;
        *(a1 + 24) = 74;
        break;
      case 0xFE:
        v189 = palloc(0x58uLL);
        pg_query__create_function_stmt__init(v189);
        _outCreateFunctionStmt_0(v189, a2);
        *(a1 + 32) = v189;
        *(a1 + 24) = 75;
        break;
      case 0xFF:
        v167 = palloc(0x38uLL);
        pg_query__alter_function_stmt__init(v167);
        _outAlterFunctionStmt_0(v167, a2);
        *(a1 + 32) = v167;
        *(a1 + 24) = 76;
        break;
      case 0x100:
        v78 = palloc(0x28uLL);
        pg_query__do_stmt__init(v78);
        _outDoStmt_0(v78, a2);
        *(a1 + 32) = v78;
        *(a1 + 24) = 77;
        break;
      case 0x101:
        v203 = palloc(0x48uLL);
        pg_query__rename_stmt__init(v203);
        _outRenameStmt_0(v203, a2);
        *(a1 + 32) = v203;
        *(a1 + 24) = 78;
        break;
      case 0x102:
        v223 = palloc(0x50uLL);
        pg_query__rule_stmt__init(v223);
        _outRuleStmt_0(v223, a2);
        *(a1 + 32) = v223;
        *(a1 + 24) = 79;
        break;
      case 0x103:
        v241 = palloc(0x28uLL);
        pg_query__notify_stmt__init(v241);
        _outNotifyStmt_0(v241, a2);
        *(a1 + 32) = v241;
        *(a1 + 24) = 80;
        break;
      case 0x104:
        v92 = palloc(0x20uLL);
        pg_query__listen_stmt__init(v92);
        v93 = *(a2 + 1);
        if (v93)
        {
          *(v92 + 24) = pstrdup(v93);
        }

        *(a1 + 32) = v92;
        *(a1 + 24) = 81;
        break;
      case 0x105:
        v37 = palloc(0x20uLL);
        pg_query__unlisten_stmt__init(v37);
        v38 = *(a2 + 1);
        if (v38)
        {
          *(v37 + 24) = pstrdup(v38);
        }

        *(a1 + 32) = v37;
        *(a1 + 24) = 82;
        break;
      case 0x106:
        v46 = palloc(0x48uLL);
        pg_query__transaction_stmt__init(v46);
        _outTransactionStmt_0(v46, a2);
        *(a1 + 32) = v46;
        *(a1 + 24) = 83;
        break;
      case 0x107:
        v192 = palloc(0x58uLL);
        pg_query__view_stmt__init(v192);
        _outViewStmt_0(v192, a2);
        *(a1 + 32) = v192;
        *(a1 + 24) = 84;
        break;
      case 0x108:
        v98 = palloc(0x20uLL);
        pg_query__load_stmt__init(v98);
        v99 = *(a2 + 1);
        if (v99)
        {
          *(v98 + 24) = pstrdup(v99);
        }

        *(a1 + 32) = v98;
        *(a1 + 24) = 85;
        break;
      case 0x109:
        v220 = palloc(0x48uLL);
        pg_query__create_domain_stmt__init(v220);
        _outCreateDomainStmt_0(v220, a2);
        *(a1 + 32) = v220;
        *(a1 + 24) = 86;
        break;
      case 0x10A:
        v232 = palloc(0x30uLL);
        pg_query__createdb_stmt__init(v232);
        _outAlias_0(v232, a2);
        *(a1 + 32) = v232;
        *(a1 + 24) = 87;
        break;
      case 0x10B:
        v30 = palloc(0x38uLL);
        pg_query__dropdb_stmt__init(v30);
        _outDropdbStmt_0(v30, a2);
        *(a1 + 32) = v30;
        *(a1 + 24) = 88;
        break;
      case 0x10C:
        v25 = palloc(0x40uLL);
        pg_query__vacuum_stmt__init(v25);
        _outVacuumStmt_0(v25, a2);
        *(a1 + 32) = v25;
        *(a1 + 24) = 89;
        break;
      case 0x10D:
        v100 = palloc(0x30uLL);
        pg_query__explain_stmt__init(v100);
        _outExplainStmt_0(v100, a2);
        *(a1 + 32) = v100;
        *(a1 + 24) = 90;
        break;
      case 0x10E:
        v111 = palloc(0x38uLL);
        pg_query__create_table_as_stmt__init(v111);
        _outCreateTableAsStmt_0(v111, a2);
        *(a1 + 32) = v111;
        *(a1 + 24) = 91;
        break;
      case 0x10F:
        v169 = palloc(0x40uLL);
        pg_query__create_seq_stmt__init(v169);
        _outCreateSeqStmt_0(v169, a2);
        *(a1 + 32) = v169;
        *(a1 + 24) = 92;
        break;
      case 0x110:
        v119 = palloc(0x38uLL);
        pg_query__alter_seq_stmt__init(v119);
        _outAlterSeqStmt_0(v119, a2);
        *(a1 + 32) = v119;
        *(a1 + 24) = 93;
        break;
      case 0x111:
        v168 = palloc(0x40uLL);
        pg_query__variable_set_stmt__init(v168);
        _outVariableSetStmt_0(v168, a2);
        *(a1 + 32) = v168;
        *(a1 + 24) = 94;
        break;
      case 0x112:
        v135 = palloc(0x20uLL);
        pg_query__variable_show_stmt__init(v135);
        v136 = *(a2 + 1);
        if (v136)
        {
          *(v135 + 24) = pstrdup(v136);
        }

        *(a1 + 32) = v135;
        *(a1 + 24) = 95;
        break;
      case 0x113:
        v197 = palloc(0x20uLL);
        pg_query__discard_stmt__init(v197);
        v198 = a2[1];
        if (v198 < 4)
        {
          v199 = v198 + 1;
        }

        else
        {
          v199 = -1;
        }

        *(v197 + 24) = v199;
        *(a1 + 32) = v197;
        *(a1 + 24) = 96;
        break;
      case 0x114:
        v27 = palloc(0x98uLL);
        pg_query__create_trig_stmt__init(v27);
        _outCreateTrigStmt_0(v27, a2);
        *(a1 + 32) = v27;
        *(a1 + 24) = 97;
        break;
      case 0x115:
        v40 = palloc(0x60uLL);
        pg_query__create_plang_stmt__init(v40);
        _outCreatePLangStmt_0(v40, a2);
        *(a1 + 32) = v40;
        *(a1 + 24) = 98;
        break;
      case 0x116:
        v114 = palloc(0x38uLL);
        pg_query__create_role_stmt__init(v114);
        _outCreateRoleStmt_0(v114, a2);
        *(a1 + 32) = v114;
        *(a1 + 24) = 99;
        break;
      case 0x117:
        v56 = palloc(0x38uLL);
        pg_query__alter_role_stmt__init(v56);
        _outAlterRoleStmt_0(v56, a2);
        *(a1 + 32) = v56;
        *(a1 + 24) = 100;
        break;
      case 0x118:
        v174 = palloc(0x30uLL);
        pg_query__drop_role_stmt__init(v174);
        _outDropRoleStmt_0(v174, a2);
        *(a1 + 32) = v174;
        *(a1 + 24) = 101;
        break;
      case 0x119:
        v176 = palloc(0x30uLL);
        pg_query__lock_stmt__init(v176);
        _outLockStmt_0(v176, a2);
        *(a1 + 32) = v176;
        *(a1 + 24) = 102;
        break;
      case 0x11A:
        v108 = palloc(0x30uLL);
        pg_query__constraints_set_stmt__init(v108);
        _outDropRoleStmt_0(v108, a2);
        *(a1 + 32) = v108;
        *(a1 + 24) = 103;
        break;
      case 0x11B:
        v185 = palloc(0x38uLL);
        pg_query__reindex_stmt__init(v185);
        _outReindexStmt_0(v185, a2);
        *(a1 + 32) = v185;
        *(a1 + 24) = 104;
        break;
      case 0x11C:
        v173 = palloc(0x18uLL);
        pg_query__check_point_stmt__init(v173);
        *(a1 + 32) = v173;
        *(a1 + 24) = 105;
        break;
      case 0x11D:
        v77 = palloc(0x40uLL);
        pg_query__create_schema_stmt__init(v77);
        _outCreateSchemaStmt_0(v77, a2);
        *(a1 + 32) = v77;
        *(a1 + 24) = 106;
        break;
      case 0x11E:
        v80 = palloc(0x30uLL);
        pg_query__alter_database_stmt__init(v80);
        _outAlias_0(v80, a2);
        *(a1 + 32) = v80;
        *(a1 + 24) = 107;
        break;
      case 0x11F:
        v175 = palloc(0x28uLL);
        pg_query__alter_database_set_stmt__init(v175);
        _outAlterDatabaseSetStmt_0(v175, a2);
        *(a1 + 32) = v175;
        *(a1 + 24) = 108;
        break;
      case 0x120:
        v191 = palloc(0x30uLL);
        pg_query__alter_role_set_stmt__init(v191);
        _outAlterRoleSetStmt_0(v191, a2);
        *(a1 + 32) = v191;
        *(a1 + 24) = 109;
        break;
      case 0x121:
        v36 = palloc(0x50uLL);
        pg_query__create_conversion_stmt__init(v36);
        _outCreateConversionStmt_0(v36, a2);
        *(a1 + 32) = v36;
        *(a1 + 24) = 110;
        break;
      case 0x122:
        v45 = palloc(0x38uLL);
        pg_query__create_cast_stmt__init(v45);
        _outCreateCastStmt_0(v45, a2);
        *(a1 + 32) = v45;
        *(a1 + 24) = 111;
        break;
      case 0x123:
        v79 = palloc(0x60uLL);
        pg_query__create_op_class_stmt__init(v79);
        _outCreateOpClassStmt_0(v79, a2);
        *(a1 + 32) = v79;
        *(a1 + 24) = 112;
        break;
      case 0x124:
        v86 = palloc(0x30uLL);
        pg_query__create_op_family_stmt__init(v86);
        _outCreateOpFamilyStmt_0(v86, a2);
        *(a1 + 32) = v86;
        *(a1 + 24) = 113;
        break;
      case 0x125:
        v50 = palloc(0x48uLL);
        pg_query__alter_op_family_stmt__init(v50);
        _outAlterOpFamilyStmt_0(v50, a2);
        *(a1 + 32) = v50;
        *(a1 + 24) = 114;
        break;
      case 0x126:
        v58 = palloc(0x38uLL);
        pg_query__prepare_stmt__init(v58);
        _outPrepareStmt_0(v58, a2);
        *(a1 + 32) = v58;
        *(a1 + 24) = 115;
        break;
      case 0x127:
        v206 = palloc(0x30uLL);
        pg_query__execute_stmt__init(v206);
        _outAlias_0(v206, a2);
        *(a1 + 32) = v206;
        *(a1 + 24) = 116;
        break;
      case 0x128:
        v208 = palloc(0x20uLL);
        pg_query__deallocate_stmt__init(v208);
        v209 = *(a2 + 1);
        if (v209)
        {
          *(v208 + 24) = pstrdup(v209);
        }

        *(a1 + 32) = v208;
        *(a1 + 24) = 117;
        break;
      case 0x129:
        v72 = palloc(0x30uLL);
        pg_query__declare_cursor_stmt__init(v72);
        _outDeclareCursorStmt_0(v72, a2);
        *(a1 + 32) = v72;
        *(a1 + 24) = 118;
        break;
      case 0x12A:
        v211 = palloc(0x40uLL);
        pg_query__create_table_space_stmt__init(v211);
        _outCreateTableSpaceStmt_0(v211, a2);
        *(a1 + 32) = v211;
        *(a1 + 24) = 119;
        break;
      case 0x12B:
        v217 = palloc(0x28uLL);
        pg_query__drop_table_space_stmt__init(v217);
        v218 = *(a2 + 1);
        if (v218)
        {
          *(v217 + 24) = pstrdup(v218);
        }

        *(v217 + 32) = *(a2 + 16);
        *(a1 + 32) = v217;
        *(a1 + 24) = 120;
        break;
      case 0x12C:
        v233 = palloc(0x40uLL);
        pg_query__alter_object_depends_stmt__init(v233);
        _outAlterObjectDependsStmt_0(v233, a2);
        *(a1 + 32) = v233;
        *(a1 + 24) = 121;
        break;
      case 0x12D:
        v143 = palloc(0x40uLL);
        pg_query__alter_object_schema_stmt__init(v143);
        _outAlterObjectSchemaStmt_0(v143, a2);
        *(a1 + 32) = v143;
        *(a1 + 24) = 122;
        break;
      case 0x12E:
        v227 = palloc(0x38uLL);
        pg_query__alter_owner_stmt__init(v227);
        _outAlterOwnerStmt_0(v227, a2);
        *(a1 + 32) = v227;
        *(a1 + 24) = 123;
        break;
      case 0x12F:
        v57 = palloc(0x30uLL);
        pg_query__alter_operator_stmt__init(v57);
        _outAlterOperatorStmt_0(v57, a2);
        *(a1 + 32) = v57;
        *(a1 + 24) = 124;
        break;
      case 0x130:
        v215 = palloc(0x38uLL);
        pg_query__alter_type_stmt__init(v215);
        _outAlterTypeStmt_0(v215, a2);
        *(a1 + 32) = v215;
        *(a1 + 24) = 125;
        break;
      case 0x131:
        v146 = palloc(0x30uLL);
        pg_query__drop_owned_stmt__init(v146);
        _outDropOwnedStmt_0(v146, a2);
        *(a1 + 32) = v146;
        *(a1 + 24) = 126;
        break;
      case 0x132:
        v65 = palloc(0x30uLL);
        pg_query__reassign_owned_stmt__init(v65);
        _outReassignOwnedStmt_0(v65, a2);
        *(a1 + 32) = v65;
        *(a1 + 24) = 127;
        break;
      case 0x133:
        v142 = palloc(0x30uLL);
        pg_query__composite_type_stmt__init(v142);
        _outCompositeTypeStmt_0(v142, a2);
        *(a1 + 32) = v142;
        *(a1 + 24) = 128;
        break;
      case 0x134:
        v49 = palloc(0x38uLL);
        pg_query__create_enum_stmt__init(v49);
        _outAlterTypeStmt_0(v49, a2);
        *(a1 + 32) = v49;
        *(a1 + 24) = 129;
        break;
      case 0x135:
        v221 = palloc(0x38uLL);
        pg_query__create_range_stmt__init(v221);
        _outAlterTypeStmt_0(v221, a2);
        *(a1 + 32) = v221;
        *(a1 + 24) = 130;
        break;
      case 0x136:
        v222 = palloc(0x48uLL);
        pg_query__alter_enum_stmt__init(v222);
        _outAlterEnumStmt_0(v222, a2);
        *(a1 + 32) = v222;
        *(a1 + 24) = 131;
        break;
      case 0x137:
        v69 = palloc(0x38uLL);
        pg_query__alter_tsdictionary_stmt__init(v69);
        _outAlterTypeStmt_0(v69, a2);
        *(a1 + 32) = v69;
        *(a1 + 24) = 132;
        break;
      case 0x138:
        v204 = palloc(0x60uLL);
        pg_query__alter_tsconfiguration_stmt__init(v204);
        _outAlterTSConfigurationStmt_0(v204, a2);
        *(a1 + 32) = v204;
        *(a1 + 24) = 133;
        break;
      case 0x139:
        v172 = palloc(0x40uLL);
        pg_query__create_fdw_stmt__init(v172);
        _outCreateFdwStmt_0(v172, a2);
        *(a1 + 32) = v172;
        *(a1 + 24) = 134;
        break;
      case 0x13A:
        v170 = palloc(0x40uLL);
        pg_query__alter_fdw_stmt__init(v170);
        _outCreateFdwStmt_0(v170, a2);
        *(a1 + 32) = v170;
        *(a1 + 24) = 135;
        break;
      case 0x13B:
        v42 = palloc(0x50uLL);
        pg_query__create_foreign_server_stmt__init(v42);
        _outCreateForeignServerStmt_0(v42, a2);
        *(a1 + 32) = v42;
        *(a1 + 24) = 136;
        break;
      case 0x13C:
        v48 = palloc(0x40uLL);
        pg_query__alter_foreign_server_stmt__init(v48);
        _outAlterForeignServerStmt_0(v48, a2);
        *(a1 + 32) = v48;
        *(a1 + 24) = 137;
        break;
      case 0x13D:
        v112 = palloc(0x40uLL);
        pg_query__create_user_mapping_stmt__init(v112);
        _outCreateUserMappingStmt_0(v112, a2);
        *(a1 + 32) = v112;
        *(a1 + 24) = 138;
        break;
      case 0x13E:
        v115 = palloc(0x38uLL);
        pg_query__alter_user_mapping_stmt__init(v115);
        _outAlterUserMappingStmt_0(v115, a2);
        *(a1 + 32) = v115;
        *(a1 + 24) = 139;
        break;
      case 0x13F:
        v82 = palloc(0x30uLL);
        pg_query__drop_user_mapping_stmt__init(v82);
        _outDropUserMappingStmt_0(v82, a2);
        *(a1 + 32) = v82;
        *(a1 + 24) = 140;
        break;
      case 0x140:
        v55 = palloc(0x38uLL);
        pg_query__alter_table_space_options_stmt__init(v55);
        _outAlterTableSpaceOptionsStmt_0(v55, a2);
        *(a1 + 32) = v55;
        *(a1 + 24) = 141;
        break;
      case 0x141:
        v210 = palloc(0x48uLL);
        pg_query__alter_table_move_all_stmt__init(v210);
        _outAlterTableMoveAllStmt_0(v210, a2);
        *(a1 + 32) = v210;
        *(a1 + 24) = 142;
        break;
      case 0x142:
        v63 = palloc(0x38uLL);
        pg_query__sec_label_stmt__init(v63);
        _outSecLabelStmt_0(v63, a2);
        *(a1 + 32) = v63;
        *(a1 + 24) = 143;
        break;
      case 0x143:
        v148 = palloc(0x38uLL);
        pg_query__create_foreign_table_stmt__init(v148);
        _outCreateForeignTableStmt_0(v148, a2);
        *(a1 + 32) = v148;
        *(a1 + 24) = 144;
        break;
      case 0x144:
        v89 = palloc(0x58uLL);
        pg_query__import_foreign_schema_stmt__init(v89);
        _outImportForeignSchemaStmt_0(v89, a2);
        *(a1 + 32) = v89;
        *(a1 + 24) = 145;
        break;
      case 0x145:
        v205 = palloc(0x38uLL);
        pg_query__create_extension_stmt__init(v205);
        _outDropdbStmt_0(v205, a2);
        *(a1 + 32) = v205;
        *(a1 + 24) = 146;
        break;
      case 0x146:
        v202 = palloc(0x30uLL);
        pg_query__alter_extension_stmt__init(v202);
        _outAlias_0(v202, a2);
        *(a1 + 32) = v202;
        *(a1 + 24) = 147;
        break;
      case 0x147:
        v193 = palloc(0x30uLL);
        pg_query__alter_extension_contents_stmt__init(v193);
        _outAlterExtensionContentsStmt_0(v193, a2);
        *(a1 + 32) = v193;
        *(a1 + 24) = 148;
        break;
      case 0x148:
        v83 = palloc(0x48uLL);
        pg_query__create_event_trig_stmt__init(v83);
        _outCreateEventTrigStmt_0(v83, a2);
        *(a1 + 32) = v83;
        *(a1 + 24) = 149;
        break;
      case 0x149:
        v59 = palloc(0x28uLL);
        pg_query__alter_event_trig_stmt__init(v59);
        _outAlterEventTrigStmt_0(v59, a2);
        *(a1 + 32) = v59;
        *(a1 + 24) = 150;
        break;
      case 0x14A:
        v95 = palloc(0x28uLL);
        pg_query__refresh_mat_view_stmt__init(v95);
        _outRefreshMatViewStmt_0(v95, a2);
        *(a1 + 32) = v95;
        *(a1 + 24) = 151;
        break;
      case 0x14B:
        v213 = palloc(0x28uLL);
        pg_query__replica_identity_stmt__init(v213);
        _outReplicaIdentityStmt_0(v213, a2);
        *(a1 + 32) = v213;
        *(a1 + 24) = 152;
        break;
      case 0x14C:
        v102 = palloc(0x20uLL);
        pg_query__alter_system_stmt__init(v102);
        _outAlterSystemStmt_0(v102, a2);
        *(a1 + 32) = v102;
        *(a1 + 24) = 153;
        break;
      case 0x14D:
        v81 = palloc(0x58uLL);
        pg_query__create_policy_stmt__init(v81);
        _outCreatePolicyStmt_0(v81, a2);
        *(a1 + 32) = v81;
        *(a1 + 24) = 154;
        break;
      case 0x14E:
        v152 = palloc(0x48uLL);
        pg_query__alter_policy_stmt__init(v152);
        _outAlterPolicyStmt_0(v152, a2);
        *(a1 + 32) = v152;
        *(a1 + 24) = 155;
        break;
      case 0x14F:
        v121 = palloc(0x40uLL);
        pg_query__create_transform_stmt__init(v121);
        _outCreateTransformStmt_0(v121, a2);
        *(a1 + 32) = v121;
        *(a1 + 24) = 156;
        break;
      case 0x150:
        v137 = palloc(0x38uLL);
        pg_query__create_am_stmt__init(v137);
        _outCreateAmStmt_0(v137, a2);
        *(a1 + 32) = v137;
        *(a1 + 24) = 157;
        break;
      case 0x151:
        v153 = palloc(0x48uLL);
        pg_query__create_publication_stmt__init(v153);
        _outCreatePublicationStmt_0(v153, a2);
        *(a1 + 32) = v153;
        *(a1 + 24) = 158;
        break;
      case 0x152:
        v150 = palloc(0x48uLL);
        pg_query__alter_publication_stmt__init(v150);
        _outAlterPublicationStmt_0(v150, a2);
        *(a1 + 32) = v150;
        *(a1 + 24) = 159;
        break;
      case 0x153:
        v120 = palloc(0x48uLL);
        pg_query__create_subscription_stmt__init(v120);
        _outCreateEventTrigStmt_0(v120, a2);
        *(a1 + 32) = v120;
        *(a1 + 24) = 160;
        break;
      case 0x154:
        v181 = palloc(0x50uLL);
        pg_query__alter_subscription_stmt__init(v181);
        _outAlterSubscriptionStmt_0(v181, a2);
        *(a1 + 32) = v181;
        *(a1 + 24) = 161;
        break;
      case 0x155:
        v110 = palloc(0x28uLL);
        pg_query__drop_subscription_stmt__init(v110);
        _outDropSubscriptionStmt_0(v110, a2);
        *(a1 + 32) = v110;
        *(a1 + 24) = 162;
        break;
      case 0x156:
        v179 = palloc(0x68uLL);
        pg_query__create_stats_stmt__init(v179);
        _outCreateStatsStmt_0(v179, a2);
        *(a1 + 32) = v179;
        *(a1 + 24) = 163;
        break;
      case 0x157:
        v88 = palloc(0x28uLL);
        pg_query__alter_collation_stmt__init(v88);
        _outDoStmt_0(v88, a2);
        *(a1 + 32) = v88;
        *(a1 + 24) = 164;
        break;
      case 0x158:
        v194 = palloc(0x28uLL);
        pg_query__call_stmt__init(v194);
        _outCallStmt_0(v194, a2);
        *(a1 + 32) = v194;
        *(a1 + 24) = 165;
        break;
      case 0x159:
        v188 = palloc(0x30uLL);
        pg_query__alter_stats_stmt__init(v188);
        _outLockStmt_0(v188, a2);
        *(a1 + 32) = v188;
        *(a1 + 24) = 166;
        break;
      case 0x15A:
        v85 = palloc(0x48uLL);
        pg_query__a__expr__init(v85);
        _outAExpr_0(v85, a2);
        *(a1 + 32) = v85;
        *(a1 + 24) = 167;
        break;
      case 0x15B:
        v200 = palloc(0x30uLL);
        pg_query__column_ref__init(v200);
        _outColumnRef_0(v200, a2);
        *(a1 + 32) = v200;
        *(a1 + 24) = 168;
        break;
      case 0x15C:
        v207 = palloc(0x20uLL);
        pg_query__param_ref__init(v207);
        *(v207 + 24) = a2[1];
        *(v207 + 28) = a2[2];
        *(a1 + 32) = v207;
        *(a1 + 24) = 169;
        break;
      case 0x15D:
        v66 = palloc(0x28uLL);
        pg_query__a__const__init(v66);
        _outAConst_0(v66, a2);
        *(a1 + 32) = v66;
        *(a1 + 24) = 170;
        break;
      case 0x15E:
        v116 = palloc(0x70uLL);
        pg_query__func_call__init(v116);
        _outFuncCall_0(v116, a2);
        *(a1 + 32) = v116;
        *(a1 + 24) = 171;
        break;
      case 0x15F:
        v107 = palloc(0x18uLL);
        pg_query__a__star__init(v107);
        *(a1 + 32) = v107;
        *(a1 + 24) = 172;
        break;
      case 0x160:
        v87 = palloc(0x30uLL);
        pg_query__a__indices__init(v87);
        _outAIndices_0(v87, a2);
        *(a1 + 32) = v87;
        *(a1 + 24) = 173;
        break;
      case 0x161:
        v201 = palloc(0x30uLL);
        pg_query__a__indirection__init(v201);
        _outExplainStmt_0(v201, a2);
        *(a1 + 32) = v201;
        *(a1 + 24) = 174;
        break;
      case 0x162:
        v165 = palloc(0x30uLL);
        pg_query__a__array_expr__init(v165);
        _outColumnRef_0(v165, a2);
        *(a1 + 32) = v165;
        *(a1 + 24) = 175;
        break;
      case 0x163:
        v103 = palloc(0x40uLL);
        pg_query__res_target__init(v103);
        _outResTarget_0(v103, a2);
        *(a1 + 32) = v103;
        *(a1 + 24) = 176;
        break;
      case 0x164:
        v71 = palloc(0x28uLL);
        pg_query__multi_assign_ref__init(v71);
        _outRawStmt_0(v71, a2);
        *(a1 + 32) = v71;
        *(a1 + 24) = 177;
        break;
      case 0x165:
        v180 = palloc(0x30uLL);
        pg_query__type_cast__init(v180);
        _outTypeCast_0(v180, a2);
        *(a1 + 32) = v180;
        *(a1 + 24) = 178;
        break;
      case 0x166:
        v147 = palloc(0x38uLL);
        pg_query__collate_clause__init(v147);
        _outCollateClause_0(v147, a2);
        *(a1 + 32) = v147;
        *(a1 + 24) = 179;
        break;
      case 0x167:
        v118 = palloc(0x40uLL);
        pg_query__sort_by__init(v118);
        _outSortBy_0(v118, a2);
        *(a1 + 32) = v118;
        *(a1 + 24) = 180;
        break;
      case 0x168:
        v177 = palloc(0x68uLL);
        pg_query__window_def__init(v177);
        _outWindowDef_0(v177, a2);
        *(a1 + 32) = v177;
        *(a1 + 24) = 181;
        break;
      case 0x169:
        v186 = palloc(0x30uLL);
        pg_query__range_subselect__init(v186);
        _outRangeSubselect_0(v186, a2);
        *(a1 + 32) = v186;
        *(a1 + 24) = 182;
        break;
      case 0x16A:
        v84 = palloc(0x50uLL);
        pg_query__range_function__init(v84);
        _outRangeFunction_0(v84, a2);
        *(a1 + 32) = v84;
        *(a1 + 24) = 183;
        break;
      case 0x16B:
        v91 = palloc(0x50uLL);
        pg_query__range_table_sample__init(v91);
        _outRangeTableSample_0(v91, a2);
        *(a1 + 32) = v91;
        *(a1 + 24) = 184;
        break;
      case 0x16C:
        v90 = palloc(0x60uLL);
        pg_query__range_table_func__init(v90);
        _outRangeTableFunc_0(v90, a2);
        *(a1 + 32) = v90;
        *(a1 + 24) = 185;
        break;
      case 0x16D:
        v97 = palloc(0x48uLL);
        pg_query__range_table_func_col__init(v97);
        _outRangeTableFuncCol_0(v97, a2);
        *(a1 + 32) = v97;
        *(a1 + 24) = 186;
        break;
      case 0x16E:
        v105 = palloc(0x68uLL);
        pg_query__type_name__init(v105);
        _outTypeName_0(v105, a2);
        *(a1 + 32) = v105;
        *(a1 + 24) = 187;
        break;
      case 0x16F:
        v162 = palloc(0xA0uLL);
        pg_query__column_def__init(v162);
        _outColumnDef_0(v162, a2);
        *(a1 + 32) = v162;
        *(a1 + 24) = 188;
        break;
      case 0x170:
        v144 = palloc(0x68uLL);
        pg_query__index_elem__init(v144);
        _outIndexElem_0(v144, a2);
        *(a1 + 32) = v144;
        *(a1 + 24) = 189;
        break;
      case 0x171:
        v161 = palloc(0x118uLL);
        pg_query__constraint__init(v161);
        _outConstraint_0(v161, a2);
        *(a1 + 32) = v161;
        *(a1 + 24) = 190;
        break;
      case 0x172:
        v184 = palloc(0x38uLL);
        pg_query__def_elem__init(v184);
        _outDefElem_0(v184, a2);
        *(a1 + 32) = v184;
        *(a1 + 24) = 191;
        break;
      case 0x173:
        v183 = palloc(0x178uLL);
        pg_query__range_tbl_entry__init(v183);
        _outRangeTblEntry_0(v183, a2);
        *(a1 + 32) = v183;
        *(a1 + 24) = 192;
        break;
      case 0x174:
        v96 = palloc(0x78uLL);
        pg_query__range_tbl_function__init(v96);
        _outRangeTblFunction_0(v96, a2);
        *(a1 + 32) = v96;
        *(a1 + 24) = 193;
        break;
      case 0x175:
        v187 = palloc(0x38uLL);
        pg_query__table_sample_clause__init(v187);
        _outTableSampleClause_0(v187, a2);
        *(a1 + 32) = v187;
        *(a1 + 24) = 194;
        break;
      case 0x176:
        v128 = palloc(0x40uLL);
        pg_query__with_check_option__init(v128);
        _outWithCheckOption_0(v128, a2);
        *(a1 + 32) = v128;
        *(a1 + 24) = 195;
        break;
      case 0x177:
        v130 = palloc(0x30uLL);
        pg_query__sort_group_clause__init(v130);
        *(v130 + 24) = a2[1];
        *(v130 + 28) = a2[2];
        *(v130 + 32) = a2[3];
        *(v130 + 36) = *(a2 + 16);
        *(v130 + 40) = *(a2 + 17);
        *(a1 + 32) = v130;
        *(a1 + 24) = 196;
        break;
      case 0x178:
        v182 = palloc(0x38uLL);
        pg_query__grouping_set__init(v182);
        _outGroupingSet_0(v182, a2);
        *(a1 + 32) = v182;
        *(a1 + 24) = 197;
        break;
      case 0x179:
        v171 = palloc(0x80uLL);
        pg_query__window_clause__init(v171);
        _outWindowClause_0(v171, a2);
        *(a1 + 32) = v171;
        *(a1 + 24) = 198;
        break;
      case 0x17A:
        v154 = palloc(0x40uLL);
        pg_query__object_with_args__init(v154);
        _outVacuumStmt_0(v154, a2);
        *(a1 + 32) = v154;
        *(a1 + 24) = 199;
        break;
      case 0x17B:
        v149 = palloc(0x30uLL);
        pg_query__access_priv__init(v149);
        _outAlias_0(v149, a2);
        *(a1 + 32) = v149;
        *(a1 + 24) = 200;
        break;
      case 0x17C:
        v178 = palloc(0x58uLL);
        pg_query__create_op_class_item__init(v178);
        _outCreateOpClassItem_0(v178, a2);
        *(a1 + 32) = v178;
        *(a1 + 24) = 201;
        break;
      case 0x17D:
        v157 = palloc(0x28uLL);
        pg_query__table_like_clause__init(v157);
        _outTableLikeClause_0(v157, a2);
        *(a1 + 32) = v157;
        *(a1 + 24) = 202;
        break;
      case 0x17E:
        v145 = palloc(0x38uLL);
        pg_query__function_parameter__init(v145);
        _outFunctionParameter_0(v145, a2);
        *(a1 + 32) = v145;
        *(a1 + 24) = 203;
        break;
      case 0x17F:
        v101 = palloc(0x30uLL);
        pg_query__locking_clause__init(v101);
        _outLockingClause_0(v101, a2);
        *(a1 + 32) = v101;
        *(a1 + 24) = 204;
        break;
      case 0x180:
        v134 = palloc(0x28uLL);
        pg_query__row_mark_clause__init(v134);
        _outRowMarkClause_0(v134, a2);
        *(a1 + 32) = v134;
        *(a1 + 24) = 205;
        break;
      case 0x181:
        v104 = palloc(0x38uLL);
        pg_query__xml_serialize__init(v104);
        _outXmlSerialize_0(v104, a2);
        *(a1 + 32) = v104;
        *(a1 + 24) = 206;
        break;
      case 0x182:
        v155 = palloc(0x30uLL);
        pg_query__with_clause__init(v155);
        _outWithClause_0(v155, a2);
        *(a1 + 32) = v155;
        *(a1 + 24) = 207;
        break;
      case 0x183:
        v122 = palloc(0x40uLL);
        pg_query__infer_clause__init(v122);
        _outInferClause_0(v122, a2);
        *(a1 + 32) = v122;
        *(a1 + 24) = 208;
        break;
      case 0x184:
        v113 = palloc(0x48uLL);
        pg_query__on_conflict_clause__init(v113);
        _outOnConflictClause_0(v113, a2);
        *(a1 + 32) = v113;
        *(a1 + 24) = 209;
        break;
      case 0x185:
        v158 = palloc(0x90uLL);
        pg_query__common_table_expr__init(v158);
        _outCommonTableExpr_0(v158, a2);
        *(a1 + 32) = v158;
        *(a1 + 24) = 210;
        break;
      case 0x186:
        v126 = palloc(0x30uLL);
        pg_query__role_spec__init(v126);
        _outRoleSpec_0(v126, a2);
        *(a1 + 32) = v126;
        *(a1 + 24) = 211;
        break;
      case 0x187:
        v159 = palloc(0x28uLL);
        pg_query__trigger_transition__init(v159);
        v160 = *(a2 + 1);
        if (v160)
        {
          *(v159 + 24) = pstrdup(v160);
        }

        *(v159 + 32) = *(a2 + 16);
        *(v159 + 36) = *(a2 + 17);
        *(a1 + 32) = v159;
        *(a1 + 24) = 212;
        break;
      case 0x188:
        v139 = palloc(0x50uLL);
        pg_query__partition_elem__init(v139);
        _outPartitionElem_0(v139, a2);
        *(a1 + 32) = v139;
        *(a1 + 24) = 213;
        break;
      case 0x189:
        v156 = palloc(0x38uLL);
        pg_query__partition_spec__init(v156);
        _outPartitionSpec_0(v156, a2);
        *(a1 + 32) = v156;
        *(a1 + 24) = 214;
        break;
      case 0x18A:
        v151 = palloc(0x68uLL);
        pg_query__partition_bound_spec__init(v151);
        _outPartitionBoundSpec_0(v151, a2);
        *(a1 + 32) = v151;
        *(a1 + 24) = 215;
        break;
      case 0x18B:
        v117 = palloc(0x30uLL);
        pg_query__partition_range_datum__init(v117);
        _outPartitionRangeDatum_0(v117, a2);
        *(a1 + 32) = v117;
        *(a1 + 24) = 216;
        break;
      case 0x18C:
        v138 = palloc(0x28uLL);
        pg_query__partition_cmd__init(v138);
        _outPartitionCmd_0(v138, a2);
        *(a1 + 32) = v138;
        *(a1 + 24) = 217;
        break;
      case 0x18D:
        v131 = palloc(0x38uLL);
        pg_query__vacuum_relation__init(v131);
        _outVacuumRelation_0(v131, a2);
        *(a1 + 32) = v131;
        *(a1 + 24) = 218;
        break;
      case 0x19A:
        v140 = palloc(0x30uLL);
        pg_query__inline_code_block__init(v140);
        _outInlineCodeBlock_0(v140, a2);
        *(a1 + 32) = v140;
        *(a1 + 24) = 219;
        break;
      case 0x1A0:
        v141 = palloc(0x20uLL);
        pg_query__call_context__init(v141);
        *(v141 + 24) = *(a2 + 4);
        *(a1 + 32) = v141;
        *(a1 + 24) = 220;
        break;
      default:
        pg_printf("could not dump unrecognized node type: %d", a2, a3, a4, a5, a6, a7, a8, *a2);
        if (errstart(19, 0))
        {
          errmsg_internal("could not dump unrecognized node type: %d", *a2);

          errfinish("src/pg_query_outfuncs_protobuf.c", 198, "_outNode");
        }

        break;
    }
  }
}

uint64_t _outList_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a1 + 24) = v4;
  result = palloc(8 * v4);
  *(a1 + 32) = result;
  if (*(a2 + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + 16);
      *(*(a1 + 32) + 8 * v6) = palloc(0x28uLL);
      node__init = pg_query__node__init(*(*(a1 + 32) + 8 * v6));
      result = _outNode_0(*(*(a1 + 32) + 8 * v6), *(v7 + 8 * v6), node__init);
      ++v6;
    }

    while (v6 < *(a2 + 4));
  }

  return result;
}

const char *_outAlias_0(void *a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    a1[3] = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    a1[4] = v6;
    result = palloc(8 * v6);
    a1[5] = result;
    if (a1[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(a1[5] + 8 * v7) = v9;
        result = _outNode_0(*(a1[5] + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (a1[4] > v7);
    }
  }

  return result;
}

char *_outRangeVar_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    *(a1 + 32) = pstrdup(v5);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 32);
  if (*(a2 + 33))
  {
    result = palloc(2uLL);
    *(a1 + 56) = result;
    *result = *(a2 + 33);
    *(*(a1 + 56) + 1) = 0;
  }

  if (*(a2 + 40))
  {
    v7 = palloc(0x30uLL);
    pg_query__alias__init(v7);
    result = _outAlias_0(v7, *(a2 + 40));
    *(a1 + 64) = v7;
  }

  *(a1 + 72) = *(a2 + 48);
  return result;
}

uint64_t _outTableFunc_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  if (*(a2 + 24))
  {
    v16 = palloc(0x28uLL);
    v17 = pg_query__node__init(v16);
    *(a1 + 56) = v16;
    _outNode_0(v16, *(a2 + 24), v17);
  }

  if (*(a2 + 32))
  {
    v18 = palloc(0x28uLL);
    v19 = pg_query__node__init(v18);
    *(a1 + 64) = v18;
    _outNode_0(v18, *(a2 + 32), v19);
  }

  v20 = *(a2 + 40);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 72) = v21;
    *(a1 + 80) = palloc(8 * v21);
    if (*(a1 + 72))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL);
        v25 = pg_query__node__init(v24);
        *(*(a1 + 80) + 8 * v22) = v24;
        _outNode_0(*(*(a1 + 80) + 8 * v22), *(*(*(a2 + 40) + 16) + 8 * v22), v25);
        v22 = v23++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  v26 = *(a2 + 48);
  if (v26)
  {
    v27 = *(v26 + 4);
    *(a1 + 88) = v27;
    *(a1 + 96) = palloc(8 * v27);
    if (*(a1 + 88))
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = palloc(0x28uLL);
        v31 = pg_query__node__init(v30);
        *(*(a1 + 96) + 8 * v28) = v30;
        _outNode_0(*(*(a1 + 96) + 8 * v28), *(*(*(a2 + 48) + 16) + 8 * v28), v31);
        v28 = v29++;
      }

      while (*(a1 + 88) > v28);
    }
  }

  v32 = *(a2 + 56);
  if (v32)
  {
    v33 = *(v32 + 4);
    *(a1 + 104) = v33;
    *(a1 + 112) = palloc(8 * v33);
    if (*(a1 + 104))
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = palloc(0x28uLL);
        v37 = pg_query__node__init(v36);
        *(*(a1 + 112) + 8 * v34) = v36;
        _outNode_0(*(*(a1 + 112) + 8 * v34), *(*(*(a2 + 56) + 16) + 8 * v34), v37);
        v34 = v35++;
      }

      while (*(a1 + 104) > v34);
    }
  }

  v38 = *(a2 + 64);
  if (v38)
  {
    v39 = *(v38 + 4);
    *(a1 + 120) = v39;
    *(a1 + 128) = palloc(8 * v39);
    if (*(a1 + 120))
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = palloc(0x28uLL);
        v43 = pg_query__node__init(v42);
        *(*(a1 + 128) + 8 * v40) = v42;
        _outNode_0(*(*(a1 + 128) + 8 * v40), *(*(*(a2 + 64) + 16) + 8 * v40), v43);
        v40 = v41++;
      }

      while (*(a1 + 120) > v40);
    }
  }

  v44 = *(a2 + 72);
  if (v44)
  {
    v45 = *(v44 + 4);
    *(a1 + 136) = v45;
    *(a1 + 144) = palloc(8 * v45);
    if (*(a1 + 136))
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = palloc(0x28uLL);
        v49 = pg_query__node__init(v48);
        *(*(a1 + 144) + 8 * v46) = v48;
        _outNode_0(*(*(a1 + 144) + 8 * v46), *(*(*(a2 + 72) + 16) + 8 * v46), v49);
        v46 = v47++;
      }

      while (*(a1 + 136) > v46);
    }
  }

  v50 = *(a2 + 80);
  if (v50)
  {
    v51 = *(v50 + 4);
    *(a1 + 152) = v51;
    *(a1 + 160) = palloc(8 * v51);
    if (*(a1 + 152))
    {
      v52 = 0;
      v53 = 1;
      do
      {
        v54 = palloc(0x28uLL);
        v55 = pg_query__node__init(v54);
        *(*(a1 + 160) + 8 * v52) = v54;
        _outNode_0(*(*(a1 + 160) + 8 * v52), *(*(*(a2 + 80) + 16) + 8 * v52), v55);
        v52 = v53++;
      }

      while (*(a1 + 152) > v52);
    }
  }

  result = bms_is_empty(*(a2 + 88));
  if ((result & 1) == 0)
  {
    v57 = bms_num_members(*(a2 + 88));
    *(a1 + 168) = v57;
    *(a1 + 176) = palloc(8 * v57);
    result = bms_first_member(*(a2 + 88));
    if ((result & 0x80000000) == 0)
    {
      v58 = 0;
      do
      {
        v59 = v58 + 1;
        *(*(a1 + 176) + 8 * v58) = result;
        result = bms_first_member(*(a2 + 88));
        v58 = v59;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  *(a1 + 184) = *(a2 + 96);
  *(a1 + 188) = *(a2 + 100);
  return result;
}

_DWORD *_outVar_0(_DWORD *result, uint64_t a2)
{
  result[8] = *(a2 + 4);
  result[9] = *(a2 + 8);
  result[10] = *(a2 + 12);
  result[11] = *(a2 + 16);
  result[12] = *(a2 + 20);
  result[13] = *(a2 + 24);
  result[14] = *(a2 + 28);
  result[15] = *(a2 + 32);
  result[16] = *(a2 + 36);
  return result;
}

_DWORD *_outParam_0(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  if (v2 < 4)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[8] = v3;
  result[9] = a2[2];
  result[10] = a2[3];
  result[11] = a2[4];
  result[12] = a2[5];
  result[13] = a2[6];
  return result;
}

uint64_t _outAggref_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  *(result + 48) = *(a2 + 20);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 56) = v5;
    result = palloc(8 * v5);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 64) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 64) + 8 * v6), *(*(*(a2 + 24) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 56) > v6);
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 72) = v11;
    result = palloc(8 * v11);
    *(v3 + 80) = result;
    if (*(v3 + 72))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 80) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 80) + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 72) > v12);
    }
  }

  v16 = *(a2 + 40);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 88) = v17;
    result = palloc(8 * v17);
    *(v3 + 96) = result;
    if (*(v3 + 88))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 96) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 96) + 8 * v18), *(*(*(a2 + 40) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 88) > v18);
    }
  }

  v22 = *(a2 + 48);
  if (v22)
  {
    v23 = *(v22 + 4);
    *(v3 + 104) = v23;
    result = palloc(8 * v23);
    *(v3 + 112) = result;
    if (*(v3 + 104))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL);
        v27 = pg_query__node__init(v26);
        *(*(v3 + 112) + 8 * v24) = v26;
        result = _outNode_0(*(*(v3 + 112) + 8 * v24), *(*(*(a2 + 48) + 16) + 8 * v24), v27);
        v24 = v25++;
      }

      while (*(v3 + 104) > v24);
    }
  }

  v28 = *(a2 + 56);
  if (v28)
  {
    v29 = *(v28 + 4);
    *(v3 + 120) = v29;
    result = palloc(8 * v29);
    *(v3 + 128) = result;
    if (*(v3 + 120))
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = palloc(0x28uLL);
        v33 = pg_query__node__init(v32);
        *(*(v3 + 128) + 8 * v30) = v32;
        result = _outNode_0(*(*(v3 + 128) + 8 * v30), *(*(*(a2 + 56) + 16) + 8 * v30), v33);
        v30 = v31++;
      }

      while (*(v3 + 120) > v30);
    }
  }

  if (*(a2 + 64))
  {
    v34 = palloc(0x28uLL);
    v35 = pg_query__node__init(v34);
    *(v3 + 136) = v34;
    result = _outNode_0(v34, *(a2 + 64), v35);
  }

  *(v3 + 144) = *(a2 + 72);
  *(v3 + 148) = *(a2 + 73);
  if (*(a2 + 74))
  {
    result = palloc(2uLL);
    *(v3 + 152) = result;
    *result = *(a2 + 74);
    *(*(v3 + 152) + 1) = 0;
  }

  *(v3 + 160) = *(a2 + 76);
  v36 = *(a2 + 80);
  if (v36)
  {
    if (v36 == 9)
    {
      v37 = 3;
    }

    else if (v36 == 6)
    {
      v37 = 2;
    }

    else
    {
      v37 = -1;
    }
  }

  else
  {
    v37 = 1;
  }

  *(v3 + 164) = v37;
  *(v3 + 168) = *(a2 + 84);
  return result;
}

uint64_t _outGroupingFunc_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 32) = v5;
    result = palloc(8 * v5);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 40) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 40) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 32) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 48) = v11;
    result = palloc(8 * v11);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 56) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 56) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 48) > v12);
    }
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 64) = v17;
    result = palloc(8 * v17);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 72) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 72) + 8 * v18), *(*(*(a2 + 24) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 64) > v18);
    }
  }

  *(v3 + 80) = *(a2 + 32);
  *(v3 + 84) = *(a2 + 36);
  return result;
}

uint64_t _outWindowFunc_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 48) = v5;
    result = palloc(8 * v5);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 56) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 56) + 8 * v6), *(*(*(a2 + 24) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 48) > v6);
    }
  }

  if (*(a2 + 32))
  {
    v10 = palloc(0x28uLL);
    v11 = pg_query__node__init(v10);
    *(v3 + 64) = v10;
    result = _outNode_0(v10, *(a2 + 32), v11);
  }

  *(v3 + 72) = *(a2 + 40);
  *(v3 + 76) = *(a2 + 44);
  *(v3 + 80) = *(a2 + 45);
  *(v3 + 84) = *(a2 + 48);
  return result;
}

uint64_t _outSubscriptingRef_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 48) = v5;
    result = palloc(8 * v5);
    v3[7] = result;
    if (v3[6])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[7] + 8 * v6) = v8;
        result = _outNode_0(*(v3[7] + 8 * v6), *(*(*(a2 + 24) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[6] > v6);
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    v3[8] = v11;
    result = palloc(8 * v11);
    v3[9] = result;
    if (v3[8])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(v3[9] + 8 * v12) = v14;
        result = _outNode_0(*(v3[9] + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (v3[8] > v12);
    }
  }

  if (*(a2 + 40))
  {
    v16 = palloc(0x28uLL);
    v17 = pg_query__node__init(v16);
    v3[10] = v16;
    result = _outNode_0(v16, *(a2 + 40), v17);
  }

  if (*(a2 + 48))
  {
    v18 = palloc(0x28uLL);
    v19 = pg_query__node__init(v18);
    v3[11] = v18;
    v20 = *(a2 + 48);

    return _outNode_0(v18, v20, v19);
  }

  return result;
}

uint64_t _outFuncExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 13);
  v4 = *(a2 + 16);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 48) = v5;
  *(result + 52) = *(a2 + 20);
  *(result + 56) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 64) = v7;
    result = palloc(8 * v7);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 72) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 72) + 8 * v8), *(*(*(a2 + 32) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 64) > v8);
    }
  }

  *(v3 + 80) = *(a2 + 40);
  return result;
}

const char *_outNamedArgExpr_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(a1 + 32) = v4;
    _outNode_0(v4, *(a2 + 8), node__init);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outOpExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  *(result + 48) = *(a2 + 20);
  *(result + 52) = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 56) = v5;
    result = palloc(8 * v5);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 64) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 64) + 8 * v6), *(*(*(a2 + 32) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 56) > v6);
    }
  }

  *(v3 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outScalarArrayOpExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 48) = v5;
    result = palloc(8 * v5);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 56) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 56) + 8 * v6), *(*(*(a2 + 24) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 48) > v6);
    }
  }

  *(v3 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outBoolExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 32) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 40) = v7;
    result = palloc(8 * v7);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 48) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 40) > v8);
    }
  }

  *(v3 + 56) = *(a2 + 16);
  return result;
}

uint64_t _outSubLink_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 32) = v5;
  *(result + 36) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(v3 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16), node__init);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(v3 + 48) = v9;
    result = palloc(8 * v9);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        v13 = pg_query__node__init(v12);
        *(*(v3 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(v3 + 56) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10), v13);
        v10 = v11++;
      }

      while (*(v3 + 48) > v10);
    }
  }

  if (*(a2 + 32))
  {
    v14 = palloc(0x28uLL);
    v15 = pg_query__node__init(v14);
    *(v3 + 64) = v14;
    result = _outNode_0(v14, *(a2 + 32), v15);
  }

  *(v3 + 72) = *(a2 + 40);
  return result;
}

double _outSubPlan_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 32) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 40) = v6;
    _outNode_0(v6, *(a2 + 8), node__init);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    *(a1 + 56) = palloc(8 * v9);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        v13 = pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10), v13);
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  *(a1 + 64) = *(a2 + 24);
  v14 = *(a2 + 32);
  if (v14)
  {
    *(a1 + 72) = pstrdup(v14);
  }

  *(a1 + 80) = *(a2 + 40);
  *(a1 + 84) = *(a2 + 44);
  *(a1 + 88) = *(a2 + 48);
  *(a1 + 92) = *(a2 + 52);
  *(a1 + 96) = *(a2 + 53);
  *(a1 + 100) = *(a2 + 54);
  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 104) = v16;
    *(a1 + 112) = palloc(8 * v16);
    if (*(a1 + 104))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL);
        v20 = pg_query__node__init(v19);
        *(*(a1 + 112) + 8 * v17) = v19;
        _outNode_0(*(*(a1 + 112) + 8 * v17), *(*(*(a2 + 56) + 16) + 8 * v17), v20);
        v17 = v18++;
      }

      while (*(a1 + 104) > v17);
    }
  }

  v21 = *(a2 + 64);
  if (v21)
  {
    v22 = *(v21 + 4);
    *(a1 + 120) = v22;
    *(a1 + 128) = palloc(8 * v22);
    if (*(a1 + 120))
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = palloc(0x28uLL);
        v26 = pg_query__node__init(v25);
        *(*(a1 + 128) + 8 * v23) = v25;
        _outNode_0(*(*(a1 + 128) + 8 * v23), *(*(*(a2 + 64) + 16) + 8 * v23), v26);
        v23 = v24++;
      }

      while (*(a1 + 120) > v23);
    }
  }

  v27 = *(a2 + 72);
  if (v27)
  {
    v28 = *(v27 + 4);
    *(a1 + 136) = v28;
    *(a1 + 144) = palloc(8 * v28);
    if (*(a1 + 136))
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = palloc(0x28uLL);
        v32 = pg_query__node__init(v31);
        *(*(a1 + 144) + 8 * v29) = v31;
        _outNode_0(*(*(a1 + 144) + 8 * v29), *(*(*(a2 + 72) + 16) + 8 * v29), v32);
        v29 = v30++;
      }

      while (*(a1 + 136) > v29);
    }
  }

  *(a1 + 152) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 160) = result;
  return result;
}

uint64_t _outAlternativeSubPlan_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(v2 + 4);
    *(result + 32) = v5;
    result = palloc(8 * v5);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v4 + 40) + 8 * v6) = v8;
        result = _outNode_0(*(*(v4 + 40) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v4 + 32) > v6);
    }
  }

  return result;
}

uint64_t _outFieldSelect_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  *(v3 + 48) = *(a2 + 24);
  *(v3 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outFieldStore_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v3 + 40) = v7;
    result = palloc(8 * v7);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(*(v3 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 48) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (*(v3 + 40) > v8);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v3 + 56) = v13;
    result = palloc(8 * v13);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(v3 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(v3 + 64) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(v3 + 56) > v14);
    }
  }

  *(v3 + 72) = *(a2 + 32);
  return result;
}

uint64_t _outRelabelType_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  *(v3 + 48) = *(a2 + 24);
  v6 = *(a2 + 28);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v3 + 52) = v7;
  *(v3 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outCoerceViaIO_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  v6 = *(a2 + 24);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v3 + 48) = v7;
  *(v3 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outArrayCoerceExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    v7 = pg_query__node__init(v6);
    *(v3 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16), v7);
  }

  *(v3 + 48) = *(a2 + 24);
  *(v3 + 52) = *(a2 + 28);
  *(v3 + 56) = *(a2 + 32);
  v8 = *(a2 + 36);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(v3 + 60) = v9;
  *(v3 + 64) = *(a2 + 40);
  return result;
}

uint64_t _outConvertRowtypeExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v3 + 44) = v7;
  *(v3 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outCollateExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  return result;
}

uint64_t _outCaseExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 40) = v4;
    result = _outNode_0(v4, *(a2 + 16), node__init);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v3 + 48) = v7;
    result = palloc(8 * v7);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(*(v3 + 56) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 56) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (*(v3 + 48) > v8);
    }
  }

  if (*(a2 + 32))
  {
    v12 = palloc(0x28uLL);
    v13 = pg_query__node__init(v12);
    *(v3 + 64) = v12;
    result = _outNode_0(v12, *(a2 + 32), v13);
  }

  *(v3 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outCaseWhen_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    v7 = pg_query__node__init(v6);
    *(v3 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16), v7);
  }

  *(v3 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outArrayExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 48) = v5;
    result = palloc(8 * v5);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 56) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 56) + 8 * v6), *(*(*(a2 + 16) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 48) > v6);
    }
  }

  *(v3 + 64) = *(a2 + 24);
  *(v3 + 68) = *(a2 + 28);
  return result;
}

uint64_t _outRowExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 32) = v5;
    result = palloc(8 * v5);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 40) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 40) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 32) > v6);
    }
  }

  *(v3 + 48) = *(a2 + 16);
  v10 = *(a2 + 20);
  if (v10 < 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = -1;
  }

  *(v3 + 52) = v11;
  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v3 + 56) = v13;
    result = palloc(8 * v13);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(v3 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(v3 + 64) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(v3 + 56) > v14);
    }
  }

  *(v3 + 72) = *(a2 + 32);
  return result;
}

uint64_t _outRowCompareExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if ((v4 - 1) >= 6)
  {
    v4 = -1;
  }

  *(result + 32) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 40) = v6;
    result = palloc(8 * v6);
    v3[6] = result;
    if (v3[5])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(v3[6] + 8 * v7) = v9;
        result = _outNode_0(*(v3[6] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (v3[5] > v7);
    }
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(v11 + 4);
    v3[7] = v12;
    result = palloc(8 * v12);
    v3[8] = result;
    if (v3[7])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(v3[8] + 8 * v13) = v15;
        result = _outNode_0(*(v3[8] + 8 * v13), *(*(*(a2 + 16) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (v3[7] > v13);
    }
  }

  v17 = *(a2 + 24);
  if (v17)
  {
    v18 = *(v17 + 4);
    v3[9] = v18;
    result = palloc(8 * v18);
    v3[10] = result;
    if (v3[9])
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(v3[10] + 8 * v19) = v21;
        result = _outNode_0(*(v3[10] + 8 * v19), *(*(*(a2 + 24) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (v3[9] > v19);
    }
  }

  v23 = *(a2 + 32);
  if (v23)
  {
    v24 = *(v23 + 4);
    v3[11] = v24;
    result = palloc(8 * v24);
    v3[12] = result;
    if (v3[11])
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL);
        v28 = pg_query__node__init(v27);
        *(v3[12] + 8 * v25) = v27;
        result = _outNode_0(*(v3[12] + 8 * v25), *(*(*(a2 + 32) + 16) + 8 * v25), v28);
        v25 = v26++;
      }

      while (v3[11] > v25);
    }
  }

  v29 = *(a2 + 40);
  if (v29)
  {
    v30 = *(v29 + 4);
    v3[13] = v30;
    result = palloc(8 * v30);
    v3[14] = result;
    if (v3[13])
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = palloc(0x28uLL);
        v34 = pg_query__node__init(v33);
        *(v3[14] + 8 * v31) = v33;
        result = _outNode_0(*(v3[14] + 8 * v31), *(*(*(a2 + 40) + 16) + 8 * v31), v34);
        v31 = v32++;
      }

      while (v3[13] > v31);
    }
  }

  return result;
}

uint64_t _outCoalesceExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 40) = v5;
    result = palloc(8 * v5);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 48) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 48) + 8 * v6), *(*(*(a2 + 16) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 40) > v6);
    }
  }

  *(v3 + 56) = *(a2 + 24);
  return result;
}

uint64_t _outMinMaxExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  *(result + 44) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 48) = v8;
    result = palloc(8 * v8);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(v3 + 56) + 8 * v9) = v11;
        result = _outNode_0(*(*(v3 + 56) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(v3 + 48) > v9);
    }
  }

  *(v3 + 64) = *(a2 + 32);
  return result;
}

_DWORD *_outSQLValueFunction_0(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  if (v2 < 0xF)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[8] = v3;
  result[9] = a2[2];
  result[10] = a2[3];
  result[11] = a2[4];
  return result;
}

const char *_outXmlExpr_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 32) = v5;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 48) = v8;
    result = palloc(8 * v8);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(a1 + 56) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 56) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(a1 + 48) > v9);
    }
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 64) = v14;
    result = palloc(8 * v14);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL);
        v18 = pg_query__node__init(v17);
        *(*(a1 + 72) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 72) + 8 * v15), *(*(*(a2 + 24) + 16) + 8 * v15), v18);
        v15 = v16++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  v19 = *(a2 + 32);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(a1 + 80) = v20;
    result = palloc(8 * v20);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL);
        v24 = pg_query__node__init(v23);
        *(*(a1 + 88) + 8 * v21) = v23;
        result = _outNode_0(*(*(a1 + 88) + 8 * v21), *(*(*(a2 + 32) + 16) + 8 * v21), v24);
        v21 = v22++;
      }

      while (*(a1 + 80) > v21);
    }
  }

  v25 = *(a2 + 40);
  if (v25 == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = -1;
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  *(a1 + 96) = v27;
  *(a1 + 100) = *(a2 + 44);
  *(a1 + 104) = *(a2 + 48);
  *(a1 + 108) = *(a2 + 52);
  return result;
}

uint64_t _outNullTest_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(v3 + 40) = v8;
  *(v3 + 44) = *(a2 + 20);
  *(v3 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outBooleanTest_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6 < 6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v3 + 40) = v7;
  *(v3 + 44) = *(a2 + 20);
  return result;
}

const char *_outTargetEntry_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(a1 + 32) = v4;
    _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(a1 + 40) = *(a2 + 16);
  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 36);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 42);
  return result;
}

uint64_t _outJoinExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  *(result + 28) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(v3 + 32) = v6;
    result = _outNode_0(v6, *(a2 + 16), node__init);
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL);
    v9 = pg_query__node__init(v8);
    *(v3 + 40) = v8;
    result = _outNode_0(v8, *(a2 + 24), v9);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 48) = v11;
    result = palloc(8 * v11);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 56) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 56) + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 48) > v12);
    }
  }

  if (*(a2 + 40))
  {
    v16 = palloc(0x28uLL);
    v17 = pg_query__node__init(v16);
    *(v3 + 64) = v16;
    result = _outNode_0(v16, *(a2 + 40), v17);
  }

  if (*(a2 + 48))
  {
    v18 = palloc(0x30uLL);
    pg_query__alias__init(v18);
    result = _outAlias_0(v18, *(a2 + 48));
    *(v3 + 72) = v18;
  }

  *(v3 + 80) = *(a2 + 56);
  return result;
}

uint64_t _outFromExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    v3[4] = result;
    if (v3[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[4] + 8 * v6) = v8;
        result = _outNode_0(*(v3[4] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[3] > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL);
    v11 = pg_query__node__init(v10);
    v3[5] = v10;
    v12 = *(a2 + 16);

    return _outNode_0(v10, v12, v11);
  }

  return result;
}

uint64_t _outOnConflictExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  if (*(a2 + 16))
  {
    v12 = palloc(0x28uLL);
    v13 = pg_query__node__init(v12);
    *(v3 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 16), v13);
  }

  *(v3 + 56) = *(a2 + 24);
  v14 = *(a2 + 32);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(v3 + 64) = v15;
    result = palloc(8 * v15);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(v3 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(v3 + 72) + 8 * v16), *(*(*(a2 + 32) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(v3 + 64) > v16);
    }
  }

  if (*(a2 + 40))
  {
    v20 = palloc(0x28uLL);
    v21 = pg_query__node__init(v20);
    *(v3 + 80) = v20;
    result = _outNode_0(v20, *(a2 + 40), v21);
  }

  *(v3 + 88) = *(a2 + 48);
  v22 = *(a2 + 56);
  if (v22)
  {
    v23 = *(v22 + 4);
    *(v3 + 96) = v23;
    result = palloc(8 * v23);
    *(v3 + 104) = result;
    if (*(v3 + 96))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL);
        v27 = pg_query__node__init(v26);
        *(*(v3 + 104) + 8 * v24) = v26;
        result = _outNode_0(*(*(v3 + 104) + 8 * v24), *(*(*(a2 + 56) + 16) + 8 * v24), v27);
        v24 = v25++;
      }

      while (*(v3 + 96) > v24);
    }
  }

  return result;
}

const char *_outIntoClause_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    _outRangeVar_0(v4, *(a2 + 8));
    *(a1 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    *(a1 + 40) = palloc(8 * v6);
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    *(a1 + 48) = pstrdup(v11);
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    *(a1 + 64) = palloc(8 * v13);
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  v18 = *(a2 + 40);
  if (v18 < 4)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = -1;
  }

  *(a1 + 72) = v19;
  result = *(a2 + 48);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 80) = result;
  }

  if (*(a2 + 56))
  {
    v21 = palloc(0x28uLL);
    v22 = pg_query__node__init(v21);
    *(a1 + 88) = v21;
    result = _outNode_0(v21, *(a2 + 56), v22);
  }

  *(a1 + 96) = *(a2 + 64);
  return result;
}

_DWORD *_outQuery_0(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  result[6] = v5;
  v6 = *(a2 + 8);
  if (v6 < 5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  result[7] = v7;
  result[8] = *(a2 + 24);
  if (*(a2 + 32))
  {
    v8 = palloc(0x28uLL);
    node__init = pg_query__node__init(v8);
    *(v3 + 5) = v8;
    result = _outNode_0(v8, *(a2 + 32), node__init);
  }

  v3[12] = *(a2 + 40);
  v3[13] = *(a2 + 44);
  v3[14] = *(a2 + 45);
  v3[15] = *(a2 + 46);
  v3[16] = *(a2 + 47);
  v3[17] = *(a2 + 48);
  v3[18] = *(a2 + 49);
  v3[19] = *(a2 + 50);
  v3[20] = *(a2 + 51);
  v3[21] = *(a2 + 52);
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 11) = v11;
    result = palloc(8 * v11);
    *(v3 + 12) = result;
    if (*(v3 + 11))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 12) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 12) + 8 * v12), *(*(*(a2 + 56) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 11) > v12);
    }
  }

  v16 = *(a2 + 64);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 13) = v17;
    result = palloc(8 * v17);
    *(v3 + 14) = result;
    if (*(v3 + 13))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 14) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 14) + 8 * v18), *(*(*(a2 + 64) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 13) > v18);
    }
  }

  if (*(a2 + 72))
  {
    v22 = palloc(0x30uLL);
    pg_query__from_expr__init(v22);
    result = _outFromExpr_0(v22, *(a2 + 72));
    *(v3 + 15) = v22;
  }

  v23 = *(a2 + 80);
  if (v23)
  {
    v24 = *(v23 + 4);
    *(v3 + 16) = v24;
    result = palloc(8 * v24);
    *(v3 + 17) = result;
    if (*(v3 + 16))
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL);
        v28 = pg_query__node__init(v27);
        *(*(v3 + 17) + 8 * v25) = v27;
        result = _outNode_0(*(*(v3 + 17) + 8 * v25), *(*(*(a2 + 80) + 16) + 8 * v25), v28);
        v25 = v26++;
      }

      while (*(v3 + 16) > v25);
    }
  }

  v29 = *(a2 + 88);
  if (v29 < 3)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = -1;
  }

  v3[36] = v30;
  if (*(a2 + 96))
  {
    v31 = palloc(0x70uLL);
    pg_query__on_conflict_expr__init(v31);
    result = _outOnConflictExpr_0(v31, *(a2 + 96));
    *(v3 + 19) = v31;
  }

  v32 = *(a2 + 104);
  if (v32)
  {
    v33 = *(v32 + 4);
    *(v3 + 20) = v33;
    result = palloc(8 * v33);
    *(v3 + 21) = result;
    if (*(v3 + 20))
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = palloc(0x28uLL);
        v37 = pg_query__node__init(v36);
        *(*(v3 + 21) + 8 * v34) = v36;
        result = _outNode_0(*(*(v3 + 21) + 8 * v34), *(*(*(a2 + 104) + 16) + 8 * v34), v37);
        v34 = v35++;
      }

      while (*(v3 + 20) > v34);
    }
  }

  v38 = *(a2 + 112);
  if (v38)
  {
    v39 = *(v38 + 4);
    *(v3 + 22) = v39;
    result = palloc(8 * v39);
    *(v3 + 23) = result;
    if (*(v3 + 22))
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = palloc(0x28uLL);
        v43 = pg_query__node__init(v42);
        *(*(v3 + 23) + 8 * v40) = v42;
        result = _outNode_0(*(*(v3 + 23) + 8 * v40), *(*(*(a2 + 112) + 16) + 8 * v40), v43);
        v40 = v41++;
      }

      while (*(v3 + 22) > v40);
    }
  }

  v44 = *(a2 + 120);
  if (v44)
  {
    v45 = *(v44 + 4);
    *(v3 + 24) = v45;
    result = palloc(8 * v45);
    *(v3 + 25) = result;
    if (*(v3 + 24))
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = palloc(0x28uLL);
        v49 = pg_query__node__init(v48);
        *(*(v3 + 25) + 8 * v46) = v48;
        result = _outNode_0(*(*(v3 + 25) + 8 * v46), *(*(*(a2 + 120) + 16) + 8 * v46), v49);
        v46 = v47++;
      }

      while (*(v3 + 24) > v46);
    }
  }

  if (*(a2 + 128))
  {
    v50 = palloc(0x28uLL);
    v51 = pg_query__node__init(v50);
    *(v3 + 26) = v50;
    result = _outNode_0(v50, *(a2 + 128), v51);
  }

  v52 = *(a2 + 136);
  if (v52)
  {
    v53 = *(v52 + 4);
    *(v3 + 27) = v53;
    result = palloc(8 * v53);
    *(v3 + 28) = result;
    if (*(v3 + 27))
    {
      v54 = 0;
      v55 = 1;
      do
      {
        v56 = palloc(0x28uLL);
        v57 = pg_query__node__init(v56);
        *(*(v3 + 28) + 8 * v54) = v56;
        result = _outNode_0(*(*(v3 + 28) + 8 * v54), *(*(*(a2 + 136) + 16) + 8 * v54), v57);
        v54 = v55++;
      }

      while (*(v3 + 27) > v54);
    }
  }

  v58 = *(a2 + 144);
  if (v58)
  {
    v59 = *(v58 + 4);
    *(v3 + 29) = v59;
    result = palloc(8 * v59);
    *(v3 + 30) = result;
    if (*(v3 + 29))
    {
      v60 = 0;
      v61 = 1;
      do
      {
        v62 = palloc(0x28uLL);
        v63 = pg_query__node__init(v62);
        *(*(v3 + 30) + 8 * v60) = v62;
        result = _outNode_0(*(*(v3 + 30) + 8 * v60), *(*(*(a2 + 144) + 16) + 8 * v60), v63);
        v60 = v61++;
      }

      while (*(v3 + 29) > v60);
    }
  }

  v64 = *(a2 + 152);
  if (v64)
  {
    v65 = *(v64 + 4);
    *(v3 + 31) = v65;
    result = palloc(8 * v65);
    *(v3 + 32) = result;
    if (*(v3 + 31))
    {
      v66 = 0;
      v67 = 1;
      do
      {
        v68 = palloc(0x28uLL);
        v69 = pg_query__node__init(v68);
        *(*(v3 + 32) + 8 * v66) = v68;
        result = _outNode_0(*(*(v3 + 32) + 8 * v66), *(*(*(a2 + 152) + 16) + 8 * v66), v69);
        v66 = v67++;
      }

      while (*(v3 + 31) > v66);
    }
  }

  if (*(a2 + 160))
  {
    v70 = palloc(0x28uLL);
    v71 = pg_query__node__init(v70);
    *(v3 + 33) = v70;
    result = _outNode_0(v70, *(a2 + 160), v71);
  }

  if (*(a2 + 168))
  {
    v72 = palloc(0x28uLL);
    v73 = pg_query__node__init(v72);
    *(v3 + 34) = v72;
    result = _outNode_0(v72, *(a2 + 168), v73);
  }

  v74 = *(a2 + 176);
  if (v74 < 3)
  {
    v75 = v74 + 1;
  }

  else
  {
    v75 = -1;
  }

  v3[70] = v75;
  v76 = *(a2 + 184);
  if (v76)
  {
    v77 = *(v76 + 4);
    *(v3 + 36) = v77;
    result = palloc(8 * v77);
    *(v3 + 37) = result;
    if (*(v3 + 36))
    {
      v78 = 0;
      v79 = 1;
      do
      {
        v80 = palloc(0x28uLL);
        v81 = pg_query__node__init(v80);
        *(*(v3 + 37) + 8 * v78) = v80;
        result = _outNode_0(*(*(v3 + 37) + 8 * v78), *(*(*(a2 + 184) + 16) + 8 * v78), v81);
        v78 = v79++;
      }

      while (*(v3 + 36) > v78);
    }
  }

  if (*(a2 + 192))
  {
    v82 = palloc(0x28uLL);
    v83 = pg_query__node__init(v82);
    *(v3 + 38) = v82;
    result = _outNode_0(v82, *(a2 + 192), v83);
  }

  v84 = *(a2 + 200);
  if (v84)
  {
    v85 = *(v84 + 4);
    *(v3 + 39) = v85;
    result = palloc(8 * v85);
    *(v3 + 40) = result;
    if (*(v3 + 39))
    {
      v86 = 0;
      v87 = 1;
      do
      {
        v88 = palloc(0x28uLL);
        v89 = pg_query__node__init(v88);
        *(*(v3 + 40) + 8 * v86) = v88;
        result = _outNode_0(*(*(v3 + 40) + 8 * v86), *(*(*(a2 + 200) + 16) + 8 * v86), v89);
        v86 = v87++;
      }

      while (*(v3 + 39) > v86);
    }
  }

  v90 = *(a2 + 208);
  if (v90)
  {
    v91 = *(v90 + 4);
    *(v3 + 41) = v91;
    result = palloc(8 * v91);
    *(v3 + 42) = result;
    if (*(v3 + 41))
    {
      v92 = 0;
      v93 = 1;
      do
      {
        v94 = palloc(0x28uLL);
        v95 = pg_query__node__init(v94);
        *(*(v3 + 42) + 8 * v92) = v94;
        result = _outNode_0(*(*(v3 + 42) + 8 * v92), *(*(*(a2 + 208) + 16) + 8 * v92), v95);
        v92 = v93++;
      }

      while (*(v3 + 41) > v92);
    }
  }

  v3[86] = *(a2 + 216);
  v3[87] = *(a2 + 220);
  return result;
}

uint64_t _outInsertStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 32) = v6;
    result = palloc(8 * v6);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 32) > v7);
    }
  }

  if (*(a2 + 24))
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    *(v3 + 48) = v11;
    result = _outNode_0(v11, *(a2 + 24), v12);
  }

  if (*(a2 + 32))
  {
    v13 = palloc(0x48uLL);
    pg_query__on_conflict_clause__init(v13);
    result = _outOnConflictClause_0(v13, *(a2 + 32));
    *(v3 + 56) = v13;
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(v3 + 64) = v15;
    result = palloc(8 * v15);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(v3 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(v3 + 72) + 8 * v16), *(*(*(a2 + 40) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(v3 + 64) > v16);
    }
  }

  if (*(a2 + 48))
  {
    v20 = palloc(0x30uLL);
    pg_query__with_clause__init(v20);
    result = _outWithClause_0(v20, *(a2 + 48));
    *(v3 + 80) = v20;
  }

  v21 = *(a2 + 56);
  if (v21 < 3)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = -1;
  }

  *(v3 + 88) = v22;
  return result;
}

uint64_t _outDeleteStmt_0(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (a2[1])
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, a2[1]);
    v3[3] = v4;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = *(v5 + 4);
    v3[4] = v6;
    result = palloc(8 * v6);
    v3[5] = result;
    if (v3[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(v3[5] + 8 * v7) = v9;
        result = _outNode_0(*(v3[5] + 8 * v7), *(*(a2[2] + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (v3[4] > v7);
    }
  }

  if (a2[3])
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    v3[6] = v11;
    result = _outNode_0(v11, a2[3], v12);
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = *(v13 + 4);
    v3[7] = v14;
    result = palloc(8 * v14);
    v3[8] = result;
    if (v3[7])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL);
        v18 = pg_query__node__init(v17);
        *(v3[8] + 8 * v15) = v17;
        result = _outNode_0(*(v3[8] + 8 * v15), *(*(a2[4] + 16) + 8 * v15), v18);
        v15 = v16++;
      }

      while (v3[7] > v15);
    }
  }

  if (a2[5])
  {
    v19 = palloc(0x30uLL);
    pg_query__with_clause__init(v19);
    result = _outWithClause_0(v19, a2[5]);
    v3[9] = v19;
  }

  return result;
}

uint64_t _outUpdateStmt_0(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (a2[1])
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, a2[1]);
    v3[3] = v4;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = *(v5 + 4);
    v3[4] = v6;
    result = palloc(8 * v6);
    v3[5] = result;
    if (v3[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(v3[5] + 8 * v7) = v9;
        result = _outNode_0(*(v3[5] + 8 * v7), *(*(a2[2] + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (v3[4] > v7);
    }
  }

  if (a2[3])
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    v3[6] = v11;
    result = _outNode_0(v11, a2[3], v12);
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = *(v13 + 4);
    v3[7] = v14;
    result = palloc(8 * v14);
    v3[8] = result;
    if (v3[7])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL);
        v18 = pg_query__node__init(v17);
        *(v3[8] + 8 * v15) = v17;
        result = _outNode_0(*(v3[8] + 8 * v15), *(*(a2[4] + 16) + 8 * v15), v18);
        v15 = v16++;
      }

      while (v3[7] > v15);
    }
  }

  v19 = a2[5];
  if (v19)
  {
    v20 = *(v19 + 4);
    v3[9] = v20;
    result = palloc(8 * v20);
    v3[10] = result;
    if (v3[9])
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL);
        v24 = pg_query__node__init(v23);
        *(v3[10] + 8 * v21) = v23;
        result = _outNode_0(*(v3[10] + 8 * v21), *(*(a2[5] + 16) + 8 * v21), v24);
        v21 = v22++;
      }

      while (v3[9] > v21);
    }
  }

  if (a2[6])
  {
    v25 = palloc(0x30uLL);
    pg_query__with_clause__init(v25);
    result = _outWithClause_0(v25, a2[6]);
    v3[11] = v25;
  }

  return result;
}

uint64_t _outSelectStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x68uLL);
    pg_query__into_clause__init(v10);
    result = _outIntoClause_0(v10, *(a2 + 16));
    *(v3 + 40) = v10;
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(v3 + 48) = v12;
    result = palloc(8 * v12);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(v3 + 56) + 8 * v13) = v15;
        result = _outNode_0(*(*(v3 + 56) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(v3 + 48) > v13);
    }
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(v3 + 64) = v18;
    result = palloc(8 * v18);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(*(v3 + 72) + 8 * v19) = v21;
        result = _outNode_0(*(*(v3 + 72) + 8 * v19), *(*(*(a2 + 32) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (*(v3 + 64) > v19);
    }
  }

  if (*(a2 + 40))
  {
    v23 = palloc(0x28uLL);
    v24 = pg_query__node__init(v23);
    *(v3 + 80) = v23;
    result = _outNode_0(v23, *(a2 + 40), v24);
  }

  v25 = *(a2 + 48);
  if (v25)
  {
    v26 = *(v25 + 4);
    *(v3 + 88) = v26;
    result = palloc(8 * v26);
    *(v3 + 96) = result;
    if (*(v3 + 88))
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = palloc(0x28uLL);
        v30 = pg_query__node__init(v29);
        *(*(v3 + 96) + 8 * v27) = v29;
        result = _outNode_0(*(*(v3 + 96) + 8 * v27), *(*(*(a2 + 48) + 16) + 8 * v27), v30);
        v27 = v28++;
      }

      while (*(v3 + 88) > v27);
    }
  }

  if (*(a2 + 56))
  {
    v31 = palloc(0x28uLL);
    v32 = pg_query__node__init(v31);
    *(v3 + 104) = v31;
    result = _outNode_0(v31, *(a2 + 56), v32);
  }

  v33 = *(a2 + 64);
  if (v33)
  {
    v34 = *(v33 + 4);
    *(v3 + 112) = v34;
    result = palloc(8 * v34);
    *(v3 + 120) = result;
    if (*(v3 + 112))
    {
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = palloc(0x28uLL);
        v38 = pg_query__node__init(v37);
        *(*(v3 + 120) + 8 * v35) = v37;
        result = _outNode_0(*(*(v3 + 120) + 8 * v35), *(*(*(a2 + 64) + 16) + 8 * v35), v38);
        v35 = v36++;
      }

      while (*(v3 + 112) > v35);
    }
  }

  v39 = *(a2 + 72);
  if (v39)
  {
    v40 = *(v39 + 4);
    *(v3 + 128) = v40;
    result = palloc(8 * v40);
    *(v3 + 136) = result;
    if (*(v3 + 128))
    {
      v41 = 0;
      v42 = 1;
      do
      {
        v43 = palloc(0x28uLL);
        v44 = pg_query__node__init(v43);
        *(*(v3 + 136) + 8 * v41) = v43;
        result = _outNode_0(*(*(v3 + 136) + 8 * v41), *(*(*(a2 + 72) + 16) + 8 * v41), v44);
        v41 = v42++;
      }

      while (*(v3 + 128) > v41);
    }
  }

  v45 = *(a2 + 80);
  if (v45)
  {
    v46 = *(v45 + 4);
    *(v3 + 144) = v46;
    result = palloc(8 * v46);
    *(v3 + 152) = result;
    if (*(v3 + 144))
    {
      v47 = 0;
      v48 = 1;
      do
      {
        v49 = palloc(0x28uLL);
        v50 = pg_query__node__init(v49);
        *(*(v3 + 152) + 8 * v47) = v49;
        result = _outNode_0(*(*(v3 + 152) + 8 * v47), *(*(*(a2 + 80) + 16) + 8 * v47), v50);
        v47 = v48++;
      }

      while (*(v3 + 144) > v47);
    }
  }

  if (*(a2 + 88))
  {
    v51 = palloc(0x28uLL);
    v52 = pg_query__node__init(v51);
    *(v3 + 160) = v51;
    result = _outNode_0(v51, *(a2 + 88), v52);
  }

  if (*(a2 + 96))
  {
    v53 = palloc(0x28uLL);
    v54 = pg_query__node__init(v53);
    *(v3 + 168) = v53;
    result = _outNode_0(v53, *(a2 + 96), v54);
  }

  v55 = *(a2 + 104);
  if (v55 < 3)
  {
    v56 = v55 + 1;
  }

  else
  {
    v56 = -1;
  }

  *(v3 + 176) = v56;
  v57 = *(a2 + 112);
  if (v57)
  {
    v58 = *(v57 + 4);
    *(v3 + 184) = v58;
    result = palloc(8 * v58);
    *(v3 + 192) = result;
    if (*(v3 + 184))
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = palloc(0x28uLL);
        v62 = pg_query__node__init(v61);
        *(*(v3 + 192) + 8 * v59) = v61;
        result = _outNode_0(*(*(v3 + 192) + 8 * v59), *(*(*(a2 + 112) + 16) + 8 * v59), v62);
        v59 = v60++;
      }

      while (*(v3 + 184) > v59);
    }
  }

  if (*(a2 + 120))
  {
    v63 = palloc(0x30uLL);
    pg_query__with_clause__init(v63);
    result = _outWithClause_0(v63, *(a2 + 120));
    *(v3 + 200) = v63;
  }

  v64 = *(a2 + 128);
  if (v64 < 4)
  {
    v65 = v64 + 1;
  }

  else
  {
    v65 = -1;
  }

  *(v3 + 208) = v65;
  *(v3 + 212) = *(a2 + 132);
  if (*(a2 + 136))
  {
    v66 = palloc(0xE8uLL);
    select_stmt__init = pg_query__select_stmt__init(v66);
    result = _outSelectStmt_0(v66, *(a2 + 136), select_stmt__init);
    *(v3 + 216) = v66;
  }

  if (*(a2 + 144))
  {
    v68 = palloc(0xE8uLL);
    v69 = pg_query__select_stmt__init(v68);
    result = _outSelectStmt_0(v68, *(a2 + 144), v69);
    *(v3 + 224) = v68;
  }

  return result;
}

uint64_t _outAlterTableStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 32) = v6;
    result = palloc(8 * v6);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11 < 0x32)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(v3 + 48) = v12;
  *(v3 + 52) = *(a2 + 28);
  return result;
}

const char *_outAlterTableCmd_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0x43)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v7 = palloc(0x30uLL);
    pg_query__role_spec__init(v7);
    v8 = *(a2 + 24);
    v9 = *(v8 + 4);
    if (v9 < 4)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = -1;
    }

    *(v7 + 24) = v10;
    result = *(v8 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v7 + 32) = result;
    }

    *(v7 + 40) = *(v8 + 16);
    *(a1 + 48) = v7;
  }

  if (*(a2 + 32))
  {
    v11 = palloc(0x28uLL);
    node__init = pg_query__node__init(v11);
    *(a1 + 56) = v11;
    result = _outNode_0(v11, *(a2 + 32), node__init);
  }

  v13 = *(a2 + 40);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 64) = v15;
  *(a1 + 68) = *(a2 + 44);
  return result;
}

const char *_outAlterDomainStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v4 = palloc(2uLL);
    *(a1 + 24) = v4;
    *v4 = *(a2 + 4);
    *(*(a1 + 24) + 1) = 0;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    *(a1 + 40) = palloc(8 * v6);
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL);
    v13 = pg_query__node__init(v12);
    *(a1 + 56) = v12;
    result = _outNode_0(v12, *(a2 + 24), v13);
  }

  v14 = *(a2 + 32);
  if (v14 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = -1;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  *(a1 + 64) = v16;
  *(a1 + 68) = *(a2 + 36);
  return result;
}

uint64_t _outSetOperationStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  *(result + 28) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    v3[4] = v6;
    result = _outNode_0(v6, *(a2 + 16), node__init);
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL);
    v9 = pg_query__node__init(v8);
    v3[5] = v8;
    result = _outNode_0(v8, *(a2 + 24), v9);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    v3[6] = v11;
    result = palloc(8 * v11);
    v3[7] = result;
    if (v3[6])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(v3[7] + 8 * v12) = v14;
        result = _outNode_0(*(v3[7] + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (v3[6] > v12);
    }
  }

  v16 = *(a2 + 40);
  if (v16)
  {
    v17 = *(v16 + 4);
    v3[8] = v17;
    result = palloc(8 * v17);
    v3[9] = result;
    if (v3[8])
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(v3[9] + 8 * v18) = v20;
        result = _outNode_0(*(v3[9] + 8 * v18), *(*(*(a2 + 40) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (v3[8] > v18);
    }
  }

  v22 = *(a2 + 48);
  if (v22)
  {
    v23 = *(v22 + 4);
    v3[10] = v23;
    result = palloc(8 * v23);
    v3[11] = result;
    if (v3[10])
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL);
        v27 = pg_query__node__init(v26);
        *(v3[11] + 8 * v24) = v26;
        result = _outNode_0(*(v3[11] + 8 * v24), *(*(*(a2 + 48) + 16) + 8 * v24), v27);
        v24 = v25++;
      }

      while (v3[10] > v24);
    }
  }

  v28 = *(a2 + 56);
  if (v28)
  {
    v29 = *(v28 + 4);
    v3[12] = v29;
    result = palloc(8 * v29);
    v3[13] = result;
    if (v3[12])
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = palloc(0x28uLL);
        v33 = pg_query__node__init(v32);
        *(v3[13] + 8 * v30) = v32;
        result = _outNode_0(*(v3[13] + 8 * v30), *(*(*(a2 + 56) + 16) + 8 * v30), v33);
        v30 = v31++;
      }

      while (v3[12] > v30);
    }
  }

  return result;
}

uint64_t _outGrantStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  v4 = *(a2 + 8);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 28) = v5;
  v6 = *(a2 + 12);
  if (v6 < 0x32)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(result + 32) = v7;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(result + 40) = v9;
    result = palloc(8 * v9);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        node__init = pg_query__node__init(v12);
        *(*(v3 + 48) + 8 * v10) = v12;
        result = _outNode_0(*(*(v3 + 48) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10), node__init);
        v10 = v11++;
      }

      while (*(v3 + 40) > v10);
    }
  }

  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(v3 + 56) = v15;
    result = palloc(8 * v15);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(v3 + 64) + 8 * v16) = v18;
        result = _outNode_0(*(*(v3 + 64) + 8 * v16), *(*(*(a2 + 24) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(v3 + 56) > v16);
    }
  }

  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(v3 + 72) = v21;
    result = palloc(8 * v21);
    *(v3 + 80) = result;
    if (*(v3 + 72))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL);
        v25 = pg_query__node__init(v24);
        *(*(v3 + 80) + 8 * v22) = v24;
        result = _outNode_0(*(*(v3 + 80) + 8 * v22), *(*(*(a2 + 32) + 16) + 8 * v22), v25);
        v22 = v23++;
      }

      while (*(v3 + 72) > v22);
    }
  }

  *(v3 + 88) = *(a2 + 40);
  v26 = *(a2 + 44);
  if (v26 == 1)
  {
    v27 = 2;
  }

  else
  {
    v27 = -1;
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  *(v3 + 92) = v28;
  return result;
}

uint64_t _outGrantRoleStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 40) = v11;
    result = palloc(8 * v11);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 40) > v12);
    }
  }

  *(v3 + 56) = *(a2 + 24);
  *(v3 + 60) = *(a2 + 25);
  if (*(a2 + 32))
  {
    v16 = palloc(0x30uLL);
    pg_query__role_spec__init(v16);
    v17 = *(a2 + 32);
    v18 = *(v17 + 4);
    if (v18 < 4)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = -1;
    }

    *(v16 + 24) = v19;
    result = *(v17 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v16 + 32) = result;
    }

    *(v16 + 40) = *(v17 + 16);
    *(v3 + 64) = v16;
  }

  v20 = *(a2 + 40);
  if (v20 == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = -1;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  *(v3 + 72) = v22;
  return result;
}

uint64_t _outAlterDefaultPrivilegesStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    v3[4] = result;
    if (v3[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[4] + 8 * v6) = v8;
        result = _outNode_0(*(v3[4] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[3] > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x60uLL);
    pg_query__grant_stmt__init(v10);
    result = _outGrantStmt_0(v10, *(a2 + 16));
    v3[5] = v10;
  }

  return result;
}

const char *_outClusterStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    _outRangeVar_0(v4, *(a2 + 8));
    *(a1 + 24) = v4;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  return result;
}

const char *_outCopyStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    _outRangeVar_0(v4, *(a2 + 8));
    *(a1 + 24) = v4;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x28uLL);
    node__init = pg_query__node__init(v5);
    *(a1 + 32) = v5;
    _outNode_0(v5, *(a2 + 16), node__init);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    *(a1 + 48) = palloc(8 * v8);
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        v12 = pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9), v12);
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 33);
  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 64) = result;
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 72) = v15;
    result = palloc(8 * v15);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(a1 + 80) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 80) + 8 * v16), *(*(*(a2 + 48) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(a1 + 72) > v16);
    }
  }

  if (*(a2 + 56))
  {
    v20 = palloc(0x28uLL);
    v21 = pg_query__node__init(v20);
    *(a1 + 88) = v20;
    v22 = *(a2 + 56);

    return _outNode_0(v20, v22, v21);
  }

  return result;
}

const char *_outCreateStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    _outRangeVar_0(v4, *(a2 + 8));
    *(a1 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    *(a1 + 40) = palloc(8 * v6);
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    *(a1 + 56) = palloc(8 * v12);
    if (*(a1 + 48))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 56) + 8 * v13) = v15;
        _outNode_0(*(*(a1 + 56) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  if (*(a2 + 32))
  {
    v17 = palloc(0x68uLL);
    pg_query__partition_bound_spec__init(v17);
    _outPartitionBoundSpec_0(v17, *(a2 + 32));
    *(a1 + 64) = v17;
  }

  if (*(a2 + 40))
  {
    v18 = palloc(0x38uLL);
    pg_query__partition_spec__init(v18);
    _outPartitionSpec_0(v18, *(a2 + 40));
    *(a1 + 72) = v18;
  }

  if (*(a2 + 48))
  {
    v19 = palloc(0x68uLL);
    pg_query__type_name__init(v19);
    _outTypeName_0(v19, *(a2 + 48));
    *(a1 + 80) = v19;
  }

  v20 = *(a2 + 56);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 88) = v21;
    *(a1 + 96) = palloc(8 * v21);
    if (*(a1 + 88))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL);
        v25 = pg_query__node__init(v24);
        *(*(a1 + 96) + 8 * v22) = v24;
        _outNode_0(*(*(a1 + 96) + 8 * v22), *(*(*(a2 + 56) + 16) + 8 * v22), v25);
        v22 = v23++;
      }

      while (*(a1 + 88) > v22);
    }
  }

  v26 = *(a2 + 64);
  if (v26)
  {
    v27 = *(v26 + 4);
    *(a1 + 104) = v27;
    *(a1 + 112) = palloc(8 * v27);
    if (*(a1 + 104))
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = palloc(0x28uLL);
        v31 = pg_query__node__init(v30);
        *(*(a1 + 112) + 8 * v28) = v30;
        _outNode_0(*(*(a1 + 112) + 8 * v28), *(*(*(a2 + 64) + 16) + 8 * v28), v31);
        v28 = v29++;
      }

      while (*(a1 + 104) > v28);
    }
  }

  v32 = *(a2 + 72);
  if (v32 < 4)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = -1;
  }

  *(a1 + 120) = v33;
  v34 = *(a2 + 80);
  if (v34)
  {
    *(a1 + 128) = pstrdup(v34);
  }

  result = *(a2 + 88);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 136) = result;
  }

  *(a1 + 144) = *(a2 + 96);
  return result;
}

uint64_t _outDefineStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  *(result + 28) = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v3 + 48) = v13;
    result = palloc(8 * v13);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(v3 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v3 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(v3 + 48) > v14);
    }
  }

  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(v3 + 64) = v19;
    result = palloc(8 * v19);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(v3 + 72) + 8 * v20) = v22;
        result = _outNode_0(*(*(v3 + 72) + 8 * v20), *(*(*(a2 + 32) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(v3 + 64) > v20);
    }
  }

  *(v3 + 80) = *(a2 + 40);
  *(v3 + 84) = *(a2 + 41);
  return result;
}

uint64_t _outDropStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10 < 0x32)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = -1;
  }

  *(v3 + 40) = v11;
  v12 = *(a2 + 20);
  if (v12 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = -1;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  *(v3 + 44) = v14;
  *(v3 + 48) = *(a2 + 24);
  *(v3 + 52) = *(a2 + 25);
  return result;
}

uint64_t _outTruncateStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  v10 = *(a2 + 20);
  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = -1;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  *(v3 + 44) = v12;
  return result;
}

const char *_outCommentStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 32) = v6;
    _outNode_0(v6, *(a2 + 8), node__init);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  return result;
}

const char *_outFetchStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 8);
  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

const char *_outIndexStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x50uLL);
    pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    *(a1 + 40) = pstrdup(v6);
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    *(a1 + 48) = pstrdup(v7);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 56) = v9;
    *(a1 + 64) = palloc(8 * v9);
    if (*(a1 + 56))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        node__init = pg_query__node__init(v12);
        *(*(a1 + 64) + 8 * v10) = v12;
        _outNode_0(*(*(a1 + 64) + 8 * v10), *(*(*(a2 + 40) + 16) + 8 * v10), node__init);
        v10 = v11++;
      }

      while (*(a1 + 56) > v10);
    }
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 72) = v15;
    *(a1 + 80) = palloc(8 * v15);
    if (*(a1 + 72))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(a1 + 80) + 8 * v16) = v18;
        _outNode_0(*(*(a1 + 80) + 8 * v16), *(*(*(a2 + 48) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(a1 + 72) > v16);
    }
  }

  v20 = *(a2 + 56);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 88) = v21;
    *(a1 + 96) = palloc(8 * v21);
    if (*(a1 + 88))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL);
        v25 = pg_query__node__init(v24);
        *(*(a1 + 96) + 8 * v22) = v24;
        _outNode_0(*(*(a1 + 96) + 8 * v22), *(*(*(a2 + 56) + 16) + 8 * v22), v25);
        v22 = v23++;
      }

      while (*(a1 + 88) > v22);
    }
  }

  if (*(a2 + 64))
  {
    v26 = palloc(0x28uLL);
    v27 = pg_query__node__init(v26);
    *(a1 + 104) = v26;
    _outNode_0(v26, *(a2 + 64), v27);
  }

  v28 = *(a2 + 72);
  if (v28)
  {
    v29 = *(v28 + 4);
    *(a1 + 112) = v29;
    *(a1 + 120) = palloc(8 * v29);
    if (*(a1 + 112))
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = palloc(0x28uLL);
        v33 = pg_query__node__init(v32);
        *(*(a1 + 120) + 8 * v30) = v32;
        _outNode_0(*(*(a1 + 120) + 8 * v30), *(*(*(a2 + 72) + 16) + 8 * v30), v33);
        v30 = v31++;
      }

      while (*(a1 + 112) > v30);
    }
  }

  result = *(a2 + 80);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 128) = result;
  }

  *(a1 + 136) = *(a2 + 88);
  *(a1 + 140) = *(a2 + 92);
  *(a1 + 144) = *(a2 + 96);
  *(a1 + 148) = *(a2 + 100);
  *(a1 + 152) = *(a2 + 104);
  *(a1 + 156) = *(a2 + 105);
  *(a1 + 160) = *(a2 + 106);
  *(a1 + 164) = *(a2 + 107);
  *(a1 + 168) = *(a2 + 108);
  *(a1 + 172) = *(a2 + 109);
  *(a1 + 176) = *(a2 + 110);
  *(a1 + 180) = *(a2 + 111);
  *(a1 + 184) = *(a2 + 112);
  return result;
}

uint64_t _outCreateFunctionStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  *(result + 28) = *(a2 + 5);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 32) = v5;
    result = palloc(8 * v5);
    v3[5] = result;
    if (v3[4])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[5] + 8 * v6) = v8;
        result = _outNode_0(*(v3[5] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[4] > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    v3[6] = v11;
    result = palloc(8 * v11);
    v3[7] = result;
    if (v3[6])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(v3[7] + 8 * v12) = v14;
        result = _outNode_0(*(v3[7] + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (v3[6] > v12);
    }
  }

  if (*(a2 + 24))
  {
    v16 = palloc(0x68uLL);
    pg_query__type_name__init(v16);
    result = _outTypeName_0(v16, *(a2 + 24));
    v3[8] = v16;
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    v3[9] = v18;
    result = palloc(8 * v18);
    v3[10] = result;
    if (v3[9])
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(v3[10] + 8 * v19) = v21;
        result = _outNode_0(*(v3[10] + 8 * v19), *(*(*(a2 + 32) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (v3[9] > v19);
    }
  }

  return result;
}

uint64_t _outAlterFunctionStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x40uLL);
    pg_query__object_with_args__init(v6);
    result = _outVacuumStmt_0(v6, *(a2 + 8));
    v3[4] = v6;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    v3[5] = v8;
    result = palloc(8 * v8);
    v3[6] = result;
    if (v3[5])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(v3[6] + 8 * v9) = v11;
        result = _outNode_0(*(v3[6] + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (v3[5] > v9);
    }
  }

  return result;
}