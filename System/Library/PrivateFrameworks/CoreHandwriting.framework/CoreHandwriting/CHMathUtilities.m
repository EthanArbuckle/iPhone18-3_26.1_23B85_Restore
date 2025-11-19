@interface CHMathUtilities
+ (id)syntaxAllowedSplitsForResult:(id)a3 outSubResultBounds:(void *)a4;
@end

@implementation CHMathUtilities

+ (id)syntaxAllowedSplitsForResult:(id)a3 outSubResultBounds:(void *)a4
{
  v4 = a3;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v387[0] = 0;
  v387[1] = v387;
  v387[2] = 0x3032000000;
  v387[3] = sub_183825D68;
  v387[4] = sub_183825D78;
  v388 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v386[0] = 0;
  v386[1] = v386;
  v386[2] = 0x2020000000;
  v386[3] = 0;
  v382[0] = MEMORY[0x1E69E9820];
  v382[1] = 3221225472;
  v382[2] = sub_183825D80;
  v382[3] = &unk_1E6DDBED8;
  v384 = v386;
  v385 = v387;
  v16 = v10;
  v383 = v16;
  v371 = v4;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v4, v17, v382, v18, v19, v20);
  if (objc_msgSend_count(v16, v21, v22, v23, v24, v25) <= 1)
  {
    v31 = v16;
    v32 = v31;
    goto LABEL_69;
  }

  v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v26, v27, v28, v29, v30);
  v376 = v16;
  v378 = objc_msgSend_objectAtIndexedSubscript_(v16, v34, 0, v35, v36, v37);
  v43 = 0;
  while (v43 < objc_msgSend_count(v376, v38, v39, v40, v41, v42) - 1)
  {
    v50 = objc_msgSend_objectAtIndexedSubscript_(v376, v45, v43 + 1, v47, v48, v49);
    v56 = objc_msgSend_lastObject(v378, v51, v52, v53, v54, v55);
    if ((objc_msgSend_properties(v56, v57, v58, v59, v60, v61) & 0x100) != 0)
    {
      v68 = objc_msgSend_firstObject(v50, v62, v63, v64, v65, v66);
      v74 = objc_msgSend_string(v68, v69, v70, v71, v72, v73);
      if (objc_msgSend_isEqualToString_(v74, v75, @"{", v76, v77, v78))
      {
        v84 = objc_msgSend_lastObject(v50, v79, v80, v81, v82, v83);
        v90 = objc_msgSend_string(v84, v85, v86, v87, v88, v89);
        isEqualToString = objc_msgSend_isEqualToString_(v90, v91, @"}", v92, v93, v94);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }

    v100 = objc_msgSend_lastObject(v378, v95, v96, v97, v98, v99);
    v106 = objc_msgSend_string(v100, v101, v102, v103, v104, v105);
    if (objc_msgSend_isEqualToString_(v106, v107, @"\\frac", v108, v109, v110))
    {
      v116 = objc_msgSend_count(v376, v111, v112, v113, v114, v115);

      if (v43 + 2 >= v116)
      {
        if (isEqualToString)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v374 = objc_msgSend_objectAtIndexedSubscript_(v376, v117, v43 + 2, v118, v119, v120);
        v126 = objc_msgSend_firstObject(v50, v121, v122, v123, v124, v125);
        v132 = objc_msgSend_string(v126, v127, v128, v129, v130, v131);
        if (objc_msgSend_isEqualToString_(v132, v133, @"{", v134, v135, v136))
        {
          v373 = objc_msgSend_lastObject(v50, v137, v138, v139, v140, v141);
          v372 = objc_msgSend_string(v373, v142, v143, v144, v145, v146);
          if (objc_msgSend_isEqualToString_(v372, v147, @"}", v148, v149, v150))
          {
            v370 = objc_msgSend_firstObject(v374, v151, v152, v153, v154, v155);
            v369 = objc_msgSend_string(v370, v156, v157, v158, v159, v160);
            if (objc_msgSend_isEqualToString_(v369, v161, @"{", v162, v163, v164))
            {
              v368 = objc_msgSend_lastObject(v374, v165, v166, v167, v168, v169);
              v175 = objc_msgSend_string(v368, v170, v171, v172, v173, v174);
              v180 = objc_msgSend_isEqualToString_(v175, v176, @"}", v177, v178, v179);
            }

            else
            {
              v180 = 0;
            }
          }

          else
          {
            v180 = 0;
          }

          if (isEqualToString)
          {
LABEL_23:
            objc_msgSend_addObjectsFromArray_(v378, v117, v50, v118, v119, v120);
            objc_msgSend_addObject_(v33, v181, v378, v182, v183, v184);
            v43 += 2;
            goto LABEL_31;
          }
        }

        else
        {
          v180 = 0;

          if (isEqualToString)
          {
            goto LABEL_23;
          }
        }

        if (v180)
        {
          objc_msgSend_addObjectsFromArray_(v378, v117, v50, v118, v119, v120);
          v194 = objc_msgSend_objectAtIndexedSubscript_(v376, v190, v43 + 2, v191, v192, v193);
          objc_msgSend_addObjectsFromArray_(v378, v195, v194, v196, v197, v198);

          objc_msgSend_addObject_(v33, v199, v378, v200, v201, v202);
          v43 += 3;
          goto LABEL_31;
        }
      }
    }

    else
    {

      if (isEqualToString)
      {
        goto LABEL_23;
      }
    }

    objc_msgSend_addObject_(v33, v117, v378, v118, v119, v120);
    ++v43;
LABEL_31:
    if (v43 < objc_msgSend_count(v376, v185, v186, v187, v188, v189))
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v376, v203, v43, v204, v205, v206);

      v378 = v44;
    }
  }

  v212 = v376;
  if (v43 == objc_msgSend_count(v376, v45, v46, v47, v48, v49) - 1)
  {
    v213 = objc_msgSend_lastObject(v376, v207, v208, v209, v210, v211);
    objc_msgSend_addObject_(v33, v214, v213, v215, v216, v217);

    v212 = v376;
  }

  v218 = v33;

  v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v219, v220, v221, v222, v223);

  objc_msgSend_objectAtIndexedSubscript_(v218, v224, 0, v225, v226, v227);
  v377 = v218;
  v228 = 0;
  v230 = v229 = v378;
  while (2)
  {
    v379 = v230;
LABEL_37:

    if (v228 < objc_msgSend_count(v377, v231, v232, v233, v234, v235) - 1)
    {
      v229 = objc_msgSend_objectAtIndexedSubscript_(v377, v236, v228 + 1, v238, v239, v240);
      if (objc_msgSend_count(v229, v241, v242, v243, v244, v245) != 1)
      {
        goto LABEL_43;
      }

      v250 = objc_msgSend_objectAtIndexedSubscript_(v229, v246, 0, v247, v248, v249);
      v256 = objc_msgSend_string(v250, v251, v252, v253, v254, v255);
      v266 = objc_msgSend_isEqualToString_(v256, v257, @"^", v258, v259, v260);
      if ((v266 & 1) != 0 || (objc_msgSend_objectAtIndexedSubscript_(v229, v261, 0, v263, v264, v265), v374 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v374, v267, v268, v269, v270, v271), v373 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqualToString_(v373, v272, @"_", v273, v274, v275)))
      {
        v276 = objc_msgSend_count(v377, v261, v262, v263, v264, v265);
        v277 = v228 + 2 < v276;
        if (v266)
        {

          v230 = v379;
          if (v228 + 2 >= v276)
          {
            goto LABEL_43;
          }

LABEL_47:
          objc_msgSend_addObjectsFromArray_(v230, v246, v229, v247, v248, v249);
          v287 = objc_msgSend_objectAtIndexedSubscript_(v377, v283, v228 + 2, v284, v285, v286);
          objc_msgSend_addObjectsFromArray_(v230, v288, v287, v289, v290, v291);

          objc_msgSend_addObject_(v32, v292, v230, v293, v294, v295);
          v228 += 3;
          goto LABEL_48;
        }

        v230 = v379;
      }

      else
      {
        v277 = 0;
      }

      if (v277)
      {
        goto LABEL_47;
      }

LABEL_43:
      objc_msgSend_addObject_(v32, v246, v230, v247, v248, v249);
      ++v228;
LABEL_48:
      if (v228 < objc_msgSend_count(v377, v278, v279, v280, v281, v282))
      {
        v300 = objc_msgSend_objectAtIndexedSubscript_(v377, v296, v228, v297, v298, v299);

        v230 = v300;
        continue;
      }

      goto LABEL_37;
    }

    break;
  }

  v31 = v377;
  if (v228 == objc_msgSend_count(v377, v236, v237, v238, v239, v240) - 1)
  {
    v306 = objc_msgSend_lastObject(v377, v301, v302, v303, v304, v305);
    objc_msgSend_addObject_(v32, v307, v306, v308, v309, v310);

    v31 = v377;
  }

  v311 = 0;
  v312 = MEMORY[0x1E695F050];
  while (v311 < objc_msgSend_count(v32, v301, v302, v303, v304, v305))
  {
    v317 = 0;
    v318 = v312[1];
    v380 = *v312;
    v381 = v318;
    while (1)
    {
      v319 = objc_msgSend_objectAtIndexedSubscript_(v32, v313, v311, v314, v315, v316);
      v325 = objc_msgSend_count(v319, v320, v321, v322, v323, v324);

      if (v317 >= v325)
      {
        break;
      }

      v330 = objc_msgSend_objectAtIndexedSubscript_(v32, v326, v311, v327, v328, v329);
      v335 = objc_msgSend_objectAtIndexedSubscript_(v330, v331, v317, v332, v333, v334);

      v341 = objc_msgSend_strokeIndexes(v335, v336, v337, v338, v339, v340);
      v347 = objc_msgSend_count(v341, v342, v343, v344, v345, v346);

      if (v347)
      {
        v353 = v380;
        v354 = v381;
        objc_msgSend_bounds(v335, v348, v349, v350, v351, v352);
        v392.origin.x = v355;
        v392.origin.y = v356;
        v392.size.width = v357;
        v392.size.height = v358;
        v390.origin = v353;
        v390.size = v354;
        v391 = CGRectUnion(v390, v392);
        v380.x = v391.origin.x;
        v380.y = v391.origin.y;
        v381.width = v391.size.width;
        v381.height = v391.size.height;
      }

      ++v317;
    }

    sub_1836F13C4(a4, &v380);
    ++v311;
  }

  v359 = *a4;
  v360 = *(a4 + 1);
  v361 = v360 == *a4;
  if (v360 == *a4)
  {
    v362 = v312;
  }

  else
  {
    v362 = *a4;
  }

  v380 = *v362;
  v381 = v362[1];
  if (!v361)
  {
    v363 = 0;
    v364 = 0;
    do
    {
      while (1)
      {
        IsNull = CGRectIsNull(*&v359[v363].x);
        v359 = *a4;
        v366 = (*a4 + v363 * 16);
        if (IsNull)
        {
          break;
        }

        v380 = *v366;
        v381 = v366[1];
        ++v364;
        v363 += 2;
        if (v364 >= (*(a4 + 1) - v359) >> 5)
        {
          goto LABEL_68;
        }
      }

      *v366 = v380;
      v366[1] = v381;
      v359 = *a4;
      ++v364;
      v363 += 2;
    }

    while (v364 < (*(a4 + 1) - *a4) >> 5);
  }

LABEL_68:

LABEL_69:
  _Block_object_dispose(v386, 8);
  _Block_object_dispose(v387, 8);

  return v32;
}

@end