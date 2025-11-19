@interface CHTilingManager
- (CHTilingManager)initWithStrokeProvider:(id)a3;
- (id)_tileAtPosition:(id)a3 fromTilesPerPosition:(id)a4;
- (id)updatedTilingResult:(id)a3 addingStrokes:(id)a4 removingStrokeIdentifiers:(id)a5 allStrokes:(id)a6 strokeBoundsPerStrokeIdentifier:(id)a7 maxTileSize:(int64_t)a8;
- (void)_addStrokeIdentifier:(id)a3 withBounds:(CGRect)a4 intoTile:(id)a5 strokeType:(int64_t)a6 mutableDocumentTilesPerPosition:(id)a7 skipMainTile:(BOOL)a8;
- (void)_assignStrokeWithBounds:(CGRect)a3 toContentTile:(id *)a4 overlapTiles:(id *)a5 contextTiles:(id *)a6;
- (void)_estimateScaleOfTiles:(id)a3 mutableDocumentTilesPerPosition:(id)a4 strokeBoundsPerStrokeIdentifier:(id)a5 defaultTileSizeFactor:(double)a6;
- (void)_removeStrokeIdentifier:(id)a3 fromTile:(id)a4 mutableDocumentTilesPerPosition:(id)a5;
- (void)_removeSubtilesFromTile:(id)a3 mutableDocumentTilesPerPosition:(id)a4;
- (void)_splitTilesIntoSubtiles:(id)a3 mutableDocumentTilesPerPosition:(id)a4 maxTileSize:(int64_t)a5 strokeBoundsPerStrokeIdentifier:(id)a6;
- (void)_updateTileBounds:(id)a3;
@end

@implementation CHTilingManager

- (CHTilingManager)initWithStrokeProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHTilingManager;
  v6 = [(CHTilingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strokeProvider, a3);
    *&v7->_documentTileWidth = vdupq_n_s64(0x320uLL);
    *&v7->_documentTilingTileHorizontalOverlap = vdupq_n_s64(0x64uLL);
    *&v7->_documentTilingTileHorizontalContextOverlap = vdupq_n_s64(0xC8uLL);
  }

  return v7;
}

- (id)updatedTilingResult:(id)a3 addingStrokes:(id)a4 removingStrokeIdentifiers:(id)a5 allStrokes:(id)a6 strokeBoundsPerStrokeIdentifier:(id)a7 maxTileSize:(int64_t)a8
{
  v752 = *MEMORY[0x1E69E9840];
  v674 = a3;
  v654 = a4;
  v656 = a5;
  v653 = a6;
  v687 = a7;
  v689 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15, v16, v17);
  v688 = objc_msgSend_set(MEMORY[0x1E695DFA8], v18, v19, v20, v21, v22);
  if (objc_msgSend_count(v653, v23, v24, v25, v26, v27))
  {
    v33 = objc_msgSend_count(v653, v28, v29, v30, v31, v32);
    if (v33)
    {
      if (!(v33 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    memset(v733, 0, sizeof(v733));
    obj = v653;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, v733, v751, 16, v36))
    {
      v42 = objc_msgSend_encodedStrokeIdentifier(**(&v733[0] + 1), v37, v38, v39, v40, v41);
      v47 = objc_msgSend_objectForKeyedSubscript_(v687, v43, v42, v44, v45, v46);
      objc_msgSend_ch_CGRectValue(v47, v48, v49, v50, v51, v52);

      operator new();
    }

    v53 = sqrt(MEMORY[0]);
    v34 = 1.0;
    if (v53 / 400.0 > 1.0)
    {
      v54 = (1 << vcvtpd_s64_f64(log2(v53 / 400.0)));
      if (v54 != 1.0)
      {
        v55 = (v54 * 200.0);
        v675 = v54;
        v56 = vcvtq_s64_f64(vmulq_n_f64(xmmword_1839D9D60, v54));
        self->_documentTilingTileVerticalOverlap = v56.i64[1];
        self->_documentTileWidth = v56.i64[0];
        *&self->_documentTileHeight = v56;
        self->_documentTilingTileHorizontalContextOverlap = v55;
        self->_documentTilingTileVerticalContextOverlap = v55;
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v57 = qword_1EA84DCB8;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v63 = objc_msgSend_count(obj, v58, v59, v60, v61, v62);
          *buf = 134218496;
          v736 = v63;
          v737 = 2048;
          v738 = v675;
          v739 = 2048;
          v740 = v53;
          _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEBUG, "Setting tile size factor estimated from %lu strokes to %lu. Median stroke diagonal = %.3f.", buf, 0x20u);
        }

        v34 = v675;
      }
    }

    operator delete(0);
    if (!v674)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v34 = 1.0;
    if (!v674)
    {
      goto LABEL_26;
    }
  }

  objc_msgSend_tileSizeFactor(v674, v28, v29, v30, v31, v32);
  if (v69 == v34)
  {
    v731 = 0u;
    v732 = 0u;
    v729 = 0u;
    v730 = 0u;
    v70 = objc_msgSend_documentTiles(v674, v64, v65, v66, v67, v68);
    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v729, v750, 16, v72);
    if (v78)
    {
      v79 = *v730;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v730 != v79)
          {
            objc_enumerationMutation(v70);
          }

          v81 = *(*(&v729 + 1) + 8 * i);
          v82 = objc_msgSend_documentTiles(v674, v73, v74, v75, v76, v77);
          v87 = objc_msgSend_objectForKeyedSubscript_(v82, v83, v81, v84, v85, v86);
          v93 = objc_msgSend_mutableCopy(v87, v88, v89, v90, v91, v92);

          objc_msgSend_setObject_forKeyedSubscript_(v689, v94, v93, v81, v95, v96);
          objc_msgSend__updateTileBounds_(self, v97, v93, v98, v99, v100);
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v73, &v729, v750, 16, v77);
      }

      while (v78);
    }

    goto LABEL_27;
  }

LABEL_26:
  v101 = v653;

  v70 = v656;
  v654 = v101;
  v656 = 0;
LABEL_27:

  v727 = 0u;
  v728 = 0u;
  v725 = 0u;
  v726 = 0u;
  v657 = v656;
  v665 = objc_msgSend_countByEnumeratingWithState_objects_count_(v657, v102, &v725, v749, 16, v103);
  if (v665)
  {
    v661 = *v726;
    do
    {
      for (obja = 0; obja != v665; obja = obja + 1)
      {
        if (*v726 != v661)
        {
          objc_enumerationMutation(v657);
        }

        v108 = *(*(&v725 + 1) + 8 * obja);
        v109 = objc_msgSend_objectForKeyedSubscript_(v687, v104, v108, v105, v106, v107);
        objc_msgSend_ch_CGRectValue(v109, v110, v111, v112, v113, v114);
        v116 = v115;
        v118 = v117;
        v120 = v119;
        v122 = v121;

        v724 = 0;
        v723 = 0;
        v722 = 0;
        objc_msgSend__assignStrokeWithBounds_toContentTile_overlapTiles_contextTiles_(self, v123, &v724, &v723, &v722, v124, v116, v118, v120, v122);
        v125 = v724;
        v126 = v723;
        v676 = v722;
        v131 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFA8], v127, v125, v128, v129, v130);
        v669 = v126;
        objc_msgSend_unionSet_(v131, v132, v126, v133, v134, v135);
        objc_msgSend_unionSet_(v131, v136, v676, v137, v138, v139);
        for (j = objc_msgSend_row(v125, v140, v141, v142, v143, v144) - 1; j <= objc_msgSend_row(v125, v145, v146, v147, v148, v149) + 1; ++j)
        {
          for (k = objc_msgSend_column(v125, v151, v152, v153, v154, v155) - 1; k <= objc_msgSend_column(v125, v156, v157, v158, v159, v160) + 1; ++k)
          {
            if (j != objc_msgSend_row(v125, v145, v146, v147, v148, v149) || k != objc_msgSend_column(v125, v156, v162, v163, v159, v160))
            {
              v164 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v156, j, k, v159, v160);
              if ((objc_msgSend_containsObject_(v131, v165, v164, v166, v167, v168) & 1) == 0)
              {
                v173 = objc_msgSend_objectForKeyedSubscript_(v689, v169, v164, v170, v171, v172);
                v179 = objc_msgSend_orderedStrokeIdentifiers(v173, v174, v175, v176, v177, v178);
                v184 = objc_msgSend_containsObject_(v179, v180, v108, v181, v182, v183);

                if (v184)
                {
                  objc_msgSend_addObject_(v131, v185, v164, v186, v187, v188);
                }
              }
            }
          }
        }

        v720 = 0u;
        v721 = 0u;
        v718 = 0u;
        v719 = 0u;
        v189 = v131;
        v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v190, &v718, v748, 16, v191);
        if (v196)
        {
          v197 = *v719;
          do
          {
            for (m = 0; m != v196; ++m)
            {
              if (*v719 != v197)
              {
                objc_enumerationMutation(v189);
              }

              v201 = objc_msgSend_objectForKeyedSubscript_(v689, v192, *(*(&v718 + 1) + 8 * m), v193, v194, v195);
              if (v201)
              {
                objc_msgSend__removeStrokeIdentifier_fromTile_mutableDocumentTilesPerPosition_(self, v199, v108, v201, v689, v200);
                objc_msgSend_addObject_(v688, v202, v201, v203, v204, v205);
              }
            }

            v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v192, &v718, v748, 16, v195);
          }

          while (v196);
        }
      }

      v665 = objc_msgSend_countByEnumeratingWithState_objects_count_(v657, v104, &v725, v749, 16, v107);
    }

    while (v665);
  }

  v211 = objc_msgSend_set(MEMORY[0x1E695DFA8], v206, v207, v208, v209, v210);
  v716 = 0u;
  v717 = 0u;
  v714 = 0u;
  v715 = 0u;
  v655 = v654;
  v212 = v687;
  v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v655, v213, &v714, v747, 16, v214);
  if (v662)
  {
    v659 = *v715;
    do
    {
      for (objb = 0; objb != v662; objb = objb + 1)
      {
        if (*v715 != v659)
        {
          objc_enumerationMutation(v655);
        }

        v220 = objc_msgSend_encodedStrokeIdentifier(*(*(&v714 + 1) + 8 * objb), v215, v216, v217, v218, v219);
        objc_msgSend_addObject_(v211, v221, v220, v222, v223, v224);
        v229 = objc_msgSend_objectForKeyedSubscript_(v212, v225, v220, v226, v227, v228);
        objc_msgSend_ch_CGRectValue(v229, v230, v231, v232, v233, v234);
        v236 = v235;
        v238 = v237;
        v240 = v239;
        v242 = v241;

        v713 = 0;
        v712 = 0;
        v711 = 0;
        objc_msgSend__assignStrokeWithBounds_toContentTile_overlapTiles_contextTiles_(self, v243, &v713, &v712, &v711, v244, v236, v238, v240, v242);
        v245 = v713;
        v246 = v712;
        v677 = v711;
        v666 = v245;
        v247 = v689;
        v251 = objc_msgSend__tileAtPosition_fromTilesPerPosition_(self, v248, v245, v689, v249, v250);
        objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v252, v220, v251, 0, v689, 0, v236, v238, v240, v242);
        objc_msgSend_addObject_(v688, v253, v251, v254, v255, v256);
        v670 = v251;
        v709 = 0u;
        v710 = 0u;
        v707 = 0u;
        v708 = 0u;
        v257 = v246;
        v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(v257, v258, &v707, v746, 16, v259);
        if (v263)
        {
          v264 = *v708;
          do
          {
            for (n = 0; n != v263; ++n)
            {
              if (*v708 != v264)
              {
                objc_enumerationMutation(v257);
              }

              v266 = objc_msgSend__tileAtPosition_fromTilesPerPosition_(self, v260, *(*(&v707 + 1) + 8 * n), v247, v261, v262);
              objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v267, v220, v266, 1, v247, 0, v236, v238, v240, v242);
              objc_msgSend_addObject_(v688, v268, v266, v269, v270, v271);

              v247 = v689;
            }

            v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(v257, v260, &v707, v746, 16, v262);
          }

          while (v263);
        }

        v705 = 0u;
        v706 = 0u;
        v703 = 0u;
        v704 = 0u;
        v272 = v677;
        v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v272, v273, &v703, v745, 16, v274);
        if (v278)
        {
          v279 = *v704;
          do
          {
            for (ii = 0; ii != v278; ++ii)
            {
              if (*v704 != v279)
              {
                objc_enumerationMutation(v272);
              }

              v281 = objc_msgSend__tileAtPosition_fromTilesPerPosition_(self, v275, *(*(&v703 + 1) + 8 * ii), v689, v276, v277);
              objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v282, v220, v281, 2, v689, 0, v236, v238, v240, v242);
              objc_msgSend_addObject_(v688, v283, v281, v284, v285, v286);
            }

            v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v272, v275, &v703, v745, 16, v277);
          }

          while (v278);
        }

        v212 = v687;
      }

      v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v655, v215, &v714, v747, 16, v219);
    }

    while (v662);
  }

  v701 = 0u;
  v702 = 0u;
  v699 = 0u;
  v700 = 0u;
  v650 = objc_msgSend_allObjects(v688, v287, v288, v289, v290, v291);
  v299 = objc_msgSend_countByEnumeratingWithState_objects_count_(v650, v292, &v699, v744, 16, v293);
  if (v299)
  {
    v651 = *v700;
    do
    {
      v658 = 0;
      do
      {
        if (*v700 != v651)
        {
          objc_enumerationMutation(v650);
        }

        v300 = *(*(&v699 + 1) + 8 * v658);
        v678 = objc_msgSend_tilePosition(v300, v294, v295, v296, v297, v298);
        v306 = objc_msgSend_contentStrokeIdentifiers(v300, v301, v302, v303, v304, v305);
        v312 = objc_msgSend_count(v306, v307, v308, v309, v310, v311) == 0;

        if (!v312)
        {
          v318 = objc_msgSend_contentStrokeIdentifiers(v300, v313, v314, v315, v316, v317);
          if (objc_msgSend_count(v318, v319, v320, v321, v322, v323) <= 1)
          {
          }

          else
          {
            v329 = objc_msgSend_orderedStrokeIdentifiers(v300, v324, v325, v326, v327, v328);
            v335 = objc_msgSend_count(v329, v330, v331, v332, v333, v334) < 0xA;

            if (!v335)
            {
              goto LABEL_115;
            }
          }

          v341 = MEMORY[0x1E695DFA8];
          v342 = objc_msgSend_orderedStrokeIdentifiers(v300, v336, v337, v338, v339, v340);
          v347 = objc_msgSend_setWithArray_(v341, v343, v342, v344, v345, v346);

          v353 = objc_msgSend_overlapStrokeIdentifiers(v300, v348, v349, v350, v351, v352);
          v359 = objc_msgSend_mutableCopy(v353, v354, v355, v356, v357, v358);

          v671 = objc_msgSend_row(v678, v360, v361, v362, v363, v364) - 1;
          v660 = v300;
          while (v671 <= objc_msgSend_row(v678, v365, v366, v367, v368, v369) + 1)
          {
            for (jj = objc_msgSend_column(v678, v370, v371, v372, v373, v374) - 1; ; jj = objc + 1)
            {
              objc = jj;
              if (jj > objc_msgSend_column(v678, v375, v376, v377, v378, v379) + 1)
              {
                break;
              }

              if (v671 != objc_msgSend_row(v678, v365, v366, v367, v368, v369) || objc != objc_msgSend_column(v678, v375, v381, v382, v378, v379))
              {
                v663 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v375, v671, objc, v378, v379);
                v387 = objc_msgSend_objectForKeyedSubscript_(v689, v383, v663, v384, v385, v386);
                v697 = 0u;
                v698 = 0u;
                v695 = 0u;
                v696 = 0u;
                v667 = v387;
                v393 = objc_msgSend_contentStrokeIdentifiers(v387, v388, v389, v390, v391, v392);
                v394 = v299;
                v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(v393, v395, &v695, v743, 16, v396);
                if (v401)
                {
                  v402 = *v696;
                  do
                  {
                    for (kk = 0; kk != v401; ++kk)
                    {
                      if (*v696 != v402)
                      {
                        objc_enumerationMutation(v393);
                      }

                      v404 = *(*(&v695 + 1) + 8 * kk);
                      if (objc_msgSend_containsObject_(v211, v397, v404, v398, v399, v400) && (objc_msgSend_containsObject_(v347, v397, v404, v398, v399, v400) & 1) == 0)
                      {
                        objc_msgSend_addObject_(v347, v397, v404, v398, v399, v400);
                        objc_msgSend_addObject_(v359, v405, v404, v406, v407, v408);
                      }
                    }

                    v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(v393, v397, &v695, v743, 16, v400);
                  }

                  while (v401);
                }

                v300 = v660;
                v299 = v394;
              }
            }

            ++v671;
          }

          v409 = objc_msgSend_count(v347, v370, v371, v372, v373, v374);
          v415 = objc_msgSend_orderedStrokeIdentifiers(v300, v410, v411, v412, v413, v414);
          LODWORD(v409) = v409 > objc_msgSend_count(v415, v416, v417, v418, v419, v420);

          if (v409)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            objd = qword_1EA84DCB8;
            if (os_log_type_enabled(objd, OS_LOG_TYPE_DEBUG))
            {
              v672 = objc_msgSend_tilePosition(v300, v421, v422, v423, v424, v425);
              v668 = objc_msgSend_row(v672, v426, v427, v428, v429, v430);
              v664 = objc_msgSend_tilePosition(v300, v431, v432, v433, v434, v435);
              v441 = objc_msgSend_column(v664, v436, v437, v438, v439, v440);
              v649 = objc_msgSend_orderedStrokeIdentifiers(v300, v442, v443, v444, v445, v446);
              v452 = objc_msgSend_count(v649, v447, v448, v449, v450, v451);
              v458 = objc_msgSend_count(v347, v453, v454, v455, v456, v457);
              v464 = objc_msgSend_orderedStrokeIdentifiers(v300, v459, v460, v461, v462, v463);
              v470 = objc_msgSend_count(v464, v465, v466, v467, v468, v469);
              *buf = 134218752;
              v736 = v668;
              v737 = 2048;
              v738 = v441;
              v739 = 2048;
              v740 = *&v452;
              v741 = 2048;
              v742 = v458 - v470;
              _os_log_impl(&dword_18366B000, objd, OS_LOG_TYPE_DEBUG, "Tile [%ld, %ld] with %lu strokes was merged with %lu strokes from neighboring tiles", buf, 0x2Au);
            }

            v476 = objc_msgSend_allObjects(v347, v471, v472, v473, v474, v475);
            v694[0] = MEMORY[0x1E69E9820];
            v694[1] = 3221225472;
            v694[2] = sub_1838D85CC;
            v694[3] = &unk_1E6DDCA70;
            v694[4] = self;
            obje = objc_msgSend_sortedArrayUsingComparator_(v476, v477, v694, v478, v479, v480);

            v481 = [CHMutableDocumentTile alloc];
            v487 = objc_msgSend_tilePosition(v300, v482, v483, v484, v485, v486);
            objc_msgSend_scale(v300, v488, v489, v490, v491, v492);
            v494 = v493;
            objc_msgSend_origin(v300, v495, v496, v497, v498, v499);
            v501 = v500;
            v503 = v502;
            v509 = objc_msgSend_contentStrokeIdentifiers(v300, v504, v505, v506, v507, v508);
            v515 = objc_msgSend_contextStrokeIdentifiers(v300, v510, v511, v512, v513, v514);
            v517 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(v481, v516, v487, MEMORY[0x1E695E0F0], obje, v509, v359, v515, v494, v501, v503);

            objc_msgSend_setObject_forKeyedSubscript_(v689, v518, v517, v678, v519, v520);
            objc_msgSend_removeObject_(v688, v521, v300, v522, v523, v524);
            objc_msgSend_addObject_(v688, v525, v517, v526, v527, v528);
            if (objc_msgSend_hasSubtiles(v300, v529, v530, v531, v532, v533))
            {
              objc_msgSend__removeSubtilesFromTile_mutableDocumentTilesPerPosition_(self, v534, v300, v689, v535, v536);
            }
          }
        }

LABEL_115:

        ++v658;
      }

      while (v658 != v299);
      v299 = objc_msgSend_countByEnumeratingWithState_objects_count_(v650, v294, &v699, v744, 16, v298);
    }

    while (v299);
  }

  objc_msgSend__splitTilesIntoSubtiles_mutableDocumentTilesPerPosition_maxTileSize_strokeBoundsPerStrokeIdentifier_(self, v537, v688, v689, a8, v687);
  objc_msgSend__estimateScaleOfTiles_mutableDocumentTilesPerPosition_strokeBoundsPerStrokeIdentifier_defaultTileSizeFactor_(self, v538, v688, v689, v687, v539, v34);
  v679 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v540, v541, v542, v543, v544);
  v692 = 0u;
  v693 = 0u;
  v690 = 0u;
  v691 = 0u;
  objf = v689;
  v551 = objc_msgSend_countByEnumeratingWithState_objects_count_(objf, v545, &v690, v734, 16, v546);
  if (!v551)
  {
    v673 = 0;
    goto LABEL_131;
  }

  v673 = 0;
  v552 = *v691;
  do
  {
    for (mm = 0; mm != v551; ++mm)
    {
      if (*v691 != v552)
      {
        objc_enumerationMutation(objf);
      }

      v554 = *(*(&v690 + 1) + 8 * mm);
      v555 = objc_msgSend_objectForKeyedSubscript_(objf, v547, v554, v548, v549, v550);
      v561 = objc_msgSend_contentStrokeIdentifiers(v555, v556, v557, v558, v559, v560);
      if (objc_msgSend_count(v561, v562, v563, v564, v565, v566))
      {
      }

      else
      {
        v577 = objc_msgSend_tilePosition(v555, v567, v568, v569, v570, v571);
        v583 = objc_msgSend_subtileIndex(v577, v578, v579, v580, v581, v582);
        v589 = objc_msgSend_length(v583, v584, v585, v586, v587, v588) == 0;

        if (v589)
        {
          goto LABEL_127;
        }
      }

      v590 = objc_msgSend_copy(v555, v572, v573, v574, v575, v576);
      objc_msgSend_setObject_forKeyedSubscript_(v679, v591, v590, v554, v592, v593);

      if ((objc_msgSend_hasSubtiles(v555, v594, v595, v596, v597, v598) & 1) == 0)
      {
        v604 = objc_msgSend_contentStrokeIdentifiers(v555, v599, v600, v601, v602, v603);
        v610 = objc_msgSend_count(v604, v605, v606, v607, v608, v609);

        v673 += v610;
      }

LABEL_127:
    }

    v551 = objc_msgSend_countByEnumeratingWithState_objects_count_(objf, v547, &v690, v734, 16, v550);
  }

  while (v551);
LABEL_131:

  v621 = v673;
  if (v673 != objc_msgSend_count(v653, v611, v612, v613, v614, v615))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v622 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v622, OS_LOG_TYPE_ERROR))
    {
      v628 = objc_msgSend_count(v653, v623, v624, v625, v626, v627);
      *buf = 134218240;
      v736 = v673;
      v737 = 2048;
      v738 = v628;
      _os_log_impl(&dword_18366B000, v622, OS_LOG_TYPE_ERROR, "Tiling result with %lu strokes doesn't cover all %lu non-clutter strokes in the stroke provider.", buf, 0x16u);
    }

    v621 = v673;
  }

  if (v621 != objc_msgSend_count(v653, v616, v617, v618, v619, v620))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v629 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v629, OS_LOG_TYPE_FAULT))
    {
      v635 = objc_msgSend_count(v653, v630, v631, v632, v633, v634);
      *buf = 134218240;
      v736 = v621;
      v737 = 2048;
      v738 = v635;
      _os_log_impl(&dword_18366B000, v629, OS_LOG_TYPE_FAULT, "Tiling result with %lu strokes doesn't cover all %lu non-clutter strokes in the stroke provider.", buf, 0x16u);
    }
  }

  v636 = [CHTilingResult alloc];
  v642 = objc_msgSend_copy(v679, v637, v638, v639, v640, v641);
  v647 = objc_msgSend_initWithTilesPerPosition_tileSizeFactor_(v636, v643, v642, v644, v645, v646, v34);

  return v647;
}

- (id)_tileAtPosition:(id)a3 fromTilesPerPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v6, v9, v10, v11);
  if (!v12)
  {
    v13 = [CHMutableDocumentTile alloc];
    v12 = objc_msgSend_initWithTilePosition_scale_(v13, v14, v6, v15, v16, v17, 1.0);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v18, v12, v6, v19, v20);
    objc_msgSend__updateTileBounds_(self, v21, v12, v22, v23, v24);
  }

  return v12;
}

- (void)_updateTileBounds:(id)a3
{
  v85 = a3;
  v9 = objc_msgSend_tilePosition(v85, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_column(v9, v10, v11, v12, v13, v14);
  documentTileWidth = self->_documentTileWidth;
  v22 = objc_msgSend_row(v9, v17, v18, v19, v20, v21);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = (documentTileWidth * v15);
  documentTileHeight = self->_documentTileHeight;
  v33 = (documentTileHeight * v22);
  v34 = self->_documentTileWidth;
  v35 = documentTileHeight;
  while (1)
  {
    v36 = objc_msgSend_subtileIndex(v9, v23, v24, v25, v26, v27);
    v42 = objc_msgSend_length(v36, v37, v38, v39, v40, v41);

    if (v28 >= v42)
    {
      break;
    }

    if (v28)
    {
      v54 = objc_msgSend_subtileIndex(v9, v43, v44, v45, v46, v47);
      v59 = objc_msgSend_indexAtPosition_(v54, v55, v28, v56, v57, v58);
      ++v30;

      v34 = v34 * 0.5;
      if (v59)
      {
        v31 = v31 + v34;
      }

      ++v28;
    }

    else
    {
      v48 = objc_msgSend_subtileIndex(v9, v43, v44, v45, v46, v47);
      v53 = objc_msgSend_indexAtPosition_(v48, v49, v28, v50, v51, v52);
      ++v29;

      v35 = v35 * 0.5;
      if (v53)
      {
        v33 = v33 + v35;
      }

      ++v28;
    }
  }

  v60 = 1 << v30;
  v61 = 1 << v29;
  v87.origin.x = v31;
  v87.origin.y = v33;
  v87.size.width = v34;
  v87.size.height = v35;
  v88 = CGRectInset(v87, -(self->_documentTilingTileHorizontalOverlap / v60), -(self->_documentTilingTileVerticalOverlap / v61));
  y = v88.origin.y;
  x = v88.origin.x;
  height = v88.size.height;
  width = v88.size.width;
  v88.origin.x = v31;
  v88.origin.y = v33;
  v88.size.width = v34;
  v88.size.height = v35;
  v89 = CGRectInset(v88, -(self->_documentTilingTileHorizontalContextOverlap / v60), -(self->_documentTilingTileVerticalContextOverlap / v61));
  v62 = v89.origin.x;
  v63 = v89.origin.y;
  v64 = v89.size.width;
  v65 = v89.size.height;
  objc_msgSend_setContentArea_(v85, v66, v67, v68, v69, v70, v31, v33, v34, v35);
  objc_msgSend_setOverlapArea_(v85, v71, v72, v73, v74, v75, x, y, width, height);
  objc_msgSend_setContextArea_(v85, v76, v77, v78, v79, v80, v62, v63, v64, v65);
}

- (void)_assignStrokeWithBounds:(CGRect)a3 toContentTile:(id *)a4 overlapTiles:(id *)a5 contextTiles:(id *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v114 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a4, a5, a6, v6);
  v20 = objc_msgSend_set(MEMORY[0x1E695DFA8], v15, v16, v17, v18, v19);
  v116.origin.x = x;
  v116.origin.y = y;
  v116.size.width = width;
  v116.size.height = height;
  MidX = CGRectGetMidX(v116);
  v113 = a6;
  v117.origin.x = x;
  v117.origin.y = y;
  v117.size.width = width;
  v117.size.height = height;
  MidY = CGRectGetMidY(v117);
  v23 = vcvtmd_s64_f64(MidY / self->_documentTileHeight);
  v24 = vcvtmd_s64_f64(MidX / self->_documentTileWidth);
  v31 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v25, v23, v24, v26, v27);
  documentTileWidth = self->_documentTileWidth;
  documentTileHeight = self->_documentTileHeight;
  v34 = (documentTileWidth * v24);
  v35 = (documentTileHeight * v23);
  v36 = documentTileHeight + v35;
  documentTilingTileHorizontalContextOverlap = self->_documentTilingTileHorizontalContextOverlap;
  if (MidX >= v34 + documentTilingTileHorizontalContextOverlap)
  {
    v43 = documentTileWidth + v34;
    if (MidX <= v43 - documentTilingTileHorizontalContextOverlap)
    {
      goto LABEL_30;
    }

    if (MidX <= v43 - self->_documentTilingTileHorizontalOverlap)
    {
      v44 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23, v24 + 1, v29, v30);
      objc_msgSend_addObject_(v20, v67, v44, v68, v69, v70);
    }

    else
    {
      v44 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23, v24 + 1, v29, v30);
      objc_msgSend_addObject_(v114, v45, v44, v46, v47, v48);
    }

    documentTilingTileVerticalContextOverlap = self->_documentTilingTileVerticalContextOverlap;
    if (MidY >= v35 + documentTilingTileVerticalContextOverlap)
    {
      if (MidY <= v36 - documentTilingTileVerticalContextOverlap)
      {
        goto LABEL_30;
      }

      if (MidY <= v36 - self->_documentTilingTileVerticalOverlap || MidX <= v43 - self->_documentTilingTileHorizontalOverlap)
      {
        v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24 + 1, v29, v30, v113);
        objc_msgSend_addObject_(v20, v88, v54, v89, v90, v91);
      }

      else
      {
        v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24 + 1, v29, v30);
        objc_msgSend_addObject_(v114, v76, v54, v77, v78, v79);
      }
    }

    else if (MidY >= v35 + self->_documentTilingTileVerticalOverlap || MidX <= v43 - self->_documentTilingTileHorizontalOverlap)
    {
      v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 - 1, v24 + 1, v29, v30, v113);
      objc_msgSend_addObject_(v20, v84, v54, v85, v86, v87);
    }

    else
    {
      v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 - 1, v24 + 1, v29, v30);
      objc_msgSend_addObject_(v114, v72, v54, v73, v74, v75);
    }
  }

  else
  {
    if (MidX >= v34 + self->_documentTilingTileHorizontalOverlap)
    {
      v38 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23, v24 - 1, v29, v30);
      objc_msgSend_addObject_(v20, v49, v38, v50, v51, v52);
    }

    else
    {
      v38 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23, v24 - 1, v29, v30);
      objc_msgSend_addObject_(v114, v39, v38, v40, v41, v42);
    }

    v53 = self->_documentTilingTileVerticalContextOverlap;
    if (MidY >= v35 + v53)
    {
      if (MidY <= v36 - v53)
      {
        goto LABEL_30;
      }

      if (MidY <= v36 - self->_documentTilingTileVerticalOverlap || MidX >= v34 + self->_documentTilingTileHorizontalOverlap)
      {
        v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24 - 1, v29, v30, v113);
        objc_msgSend_addObject_(v20, v80, v54, v81, v82, v83);
      }

      else
      {
        v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24 - 1, v29, v30);
        objc_msgSend_addObject_(v114, v59, v54, v60, v61, v62);
      }
    }

    else if (MidY >= v35 + self->_documentTilingTileVerticalOverlap || MidX >= v34 + self->_documentTilingTileHorizontalOverlap)
    {
      v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 - 1, v24 - 1, v29, v30, v113);
      objc_msgSend_addObject_(v20, v63, v54, v64, v65, v66);
    }

    else
    {
      v54 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 - 1, v24 - 1, v29, v30);
      objc_msgSend_addObject_(v114, v55, v54, v56, v57, v58);
    }
  }

LABEL_30:
  v92 = self->_documentTilingTileVerticalContextOverlap;
  if (MidY >= v35 + v92)
  {
    if (MidY <= v36 - v92)
    {
      goto LABEL_39;
    }

    if (MidY <= v36 - self->_documentTilingTileVerticalOverlap)
    {
      v94 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24, v29, v30);
      objc_msgSend_addObject_(v20, v107, v94, v108, v109, v110);
    }

    else
    {
      v94 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v23 + 1, v24, v29, v30);
      objc_msgSend_addObject_(v114, v99, v94, v100, v101, v102);
    }
  }

  else
  {
    v93 = v23 - 1;
    if (MidY >= v35 + self->_documentTilingTileVerticalOverlap)
    {
      v94 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v93, v24, v29, v30);
      objc_msgSend_addObject_(v20, v103, v94, v104, v105, v106);
    }

    else
    {
      v94 = objc_msgSend_tilePositionWithRow_column_(CHTilePosition, v28, v93, v24, v29, v30);
      objc_msgSend_addObject_(v114, v95, v94, v96, v97, v98);
    }
  }

LABEL_39:
  if (a4)
  {
    v111 = v31;
    *a4 = v31;
  }

  if (a5)
  {
    *a5 = v114;
  }

  if (v113)
  {
    v112 = v20;
    *v113 = v20;
  }
}

- (void)_addStrokeIdentifier:(id)a3 withBounds:(CGRect)a4 intoTile:(id)a5 strokeType:(int64_t)a6 mutableDocumentTilesPerPosition:(id)a7 skipMainTile:(BOOL)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v117 = *MEMORY[0x1E69E9840];
  v109 = a3;
  v105 = a5;
  v22 = a7;
  if (!a8)
  {
    switch(a6)
    {
      case 2:
        objc_msgSend_addContextStroke_(v105, v17, v109, v19, v20, v21);
        break;
      case 1:
        objc_msgSend_addOverlapStroke_(v105, v17, v109, v19, v20, v21);
        break;
      case 0:
        objc_msgSend_addContentStroke_(v105, v17, v109, v19, v20, v21);
        break;
    }
  }

  if (objc_msgSend_hasSubtiles(v105, v17, v18, v19, v20, v21, v105))
  {
    v28 = objc_msgSend_subtilePositions(v106, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_count(v28, v29, v30, v31, v32, v33);

    if (v34 != 2)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v40 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_msgSend_subtilePositions(v106, v41, v42, v43, v44, v45);
        *buf = 134217984;
        v116 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);
        _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_ERROR, "Unexpected number of subtiles (%lu)", buf, 0xCu);
      }
    }

    v52 = objc_msgSend_subtilePositions(v106, v35, v36, v37, v38, v39);
    v58 = objc_msgSend_count(v52, v53, v54, v55, v56, v57) == 2;

    if (!v58)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v59 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        v65 = objc_msgSend_subtilePositions(v106, v60, v61, v62, v63, v64);
        v71 = objc_msgSend_count(v65, v66, v67, v68, v69, v70);
        *buf = 134217984;
        v116 = v71;
        _os_log_impl(&dword_18366B000, v59, OS_LOG_TYPE_FAULT, "Unexpected number of subtiles (%lu)", buf, 0xCu);
      }
    }

    v121.origin.x = x;
    v121.origin.y = y;
    v121.size.width = width;
    v121.size.height = height;
    MidX = CGRectGetMidX(v121);
    v122.origin.x = x;
    v122.origin.y = y;
    v122.size.width = width;
    v122.size.height = height;
    MidY = CGRectGetMidY(v122);
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v79 = objc_msgSend_subtilePositions(v106, v74, v75, v76, v77, v78);
    obj = v79;
    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v110, v114, 16, v81);
    if (v85)
    {
      v107 = 0;
      v86 = *v111;
      do
      {
        for (i = 0; i != v85; ++i)
        {
          if (*v111 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(*(&v110 + 1) + 8 * i);
          v89 = objc_msgSend__tileAtPosition_fromTilesPerPosition_(self, v82, v88, v22, v83, v84);
          v95 = v89;
          if (a6 == 2)
          {
            goto LABEL_28;
          }

          if (!a6)
          {
            objc_msgSend_contentArea(v89, v90, v91, v92, v93, v94);
            v118.x = MidX;
            v118.y = MidY;
            if (CGRectContainsPoint(v123, v118) || (v107 & 1) == 0 && (objc_msgSend_subtilePositions(v106, v90, v91, v92, v93, v94), v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lastObject(v96, v97, v98, v99, v100, v101), v102 = objc_claimAutoreleasedReturnValue(), v103 = sub_1838D3488(v88, v102), v102, v96, v103))
            {
              objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v90, v109, v95, 0, v22, 0, x, y, width, height);
              v107 = 1;
              goto LABEL_30;
            }
          }

          objc_msgSend_overlapArea(v95, v90, v91, v92, v93, v94);
          v119.x = MidX;
          v119.y = MidY;
          if (!CGRectContainsPoint(v124, v119))
          {
LABEL_28:
            objc_msgSend_contextArea(v95, v90, v91, v92, v93, v94);
            v120.x = MidX;
            v120.y = MidY;
            if (CGRectContainsPoint(v125, v120))
            {
              objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v104, v109, v95, 2, v22, 0, x, y, width, height);
            }
          }

          else
          {
            objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v90, v109, v95, 1, v22, 0, x, y, width, height);
          }

LABEL_30:
        }

        v79 = obj;
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v110, v114, 16, v84);
      }

      while (v85);
    }
  }
}

- (void)_removeStrokeIdentifier:(id)a3 fromTile:(id)a4 mutableDocumentTilesPerPosition:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v7 = a4;
  v8 = a5;
  v67 = v7;
  v18 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v9, v7, v10, v11, v12);
  while (objc_msgSend_count(v18, v13, v14, v15, v16, v17))
  {
    v24 = objc_msgSend_lastObject(v18, v19, v20, v21, v22, v23);
    objc_msgSend_removeLastObject(v18, v25, v26, v27, v28, v29);
    objc_msgSend_removeStroke_(v24, v30, v68, v31, v32, v33);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v39 = objc_msgSend_subtilePositions(v24, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_copy(v39, v40, v41, v42, v43, v44);

    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v69, v79, 16, v47);
    if (v52)
    {
      v53 = *v70;
      do
      {
        v54 = 0;
        do
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(v45);
          }

          v55 = *(*(&v69 + 1) + 8 * v54);
          v60 = objc_msgSend_objectForKeyedSubscript_(v8, v48, v55, v49, v50, v51);
          if (v60)
          {
            objc_msgSend_addObject_(v18, v56, v60, v57, v58, v59);
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v61 = qword_1EA84DCB8;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v74 = v55;
              v75 = 2112;
              v76 = v68;
              v77 = 2112;
              v78 = v24;
              _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_DEBUG, "Subtile at position %@ not found when removing stroke %@. Parent tile: %@", buf, 0x20u);
            }

            objc_msgSend_discardSubtiles(v24, v62, v63, v64, v65, v66);
          }

          ++v54;
        }

        while (v52 != v54);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v69, v79, 16, v51);
      }

      while (v52);
    }
  }
}

- (void)_removeSubtilesFromTile:(id)a3 mutableDocumentTilesPerPosition:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v7, v5, v8, v9, v10);
  while (objc_msgSend_count(v16, v11, v12, v13, v14, v15))
  {
    v22 = objc_msgSend_lastObject(v16, v17, v18, v19, v20, v21);
    objc_msgSend_removeLastObject(v16, v23, v24, v25, v26, v27);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = objc_msgSend_subtilePositions(v22, v28, v29, v30, v31, v32, 0);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v53, v57, 16, v35);
    if (v40)
    {
      v41 = *v54;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(v33);
          }

          v43 = *(*(&v53 + 1) + 8 * i);
          v44 = objc_msgSend_objectForKeyedSubscript_(v6, v36, v43, v37, v38, v39);
          objc_msgSend_addObject_(v16, v45, v44, v46, v47, v48);
          objc_msgSend_removeObjectForKey_(v6, v49, v43, v50, v51, v52);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v53, v57, 16, v39);
      }

      while (v40);
    }
  }

  objc_msgSend_discardSubtiles(v5, v17, v18, v19, v20, v21);
}

- (void)_estimateScaleOfTiles:(id)a3 mutableDocumentTilesPerPosition:(id)a4 strokeBoundsPerStrokeIdentifier:(id)a5 defaultTileSizeFactor:(double)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E695DF70];
  v18 = objc_msgSend_allObjects(v9, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_arrayWithArray_(v12, v19, v18, v20, v21, v22);

  while (objc_msgSend_count(v23, v24, v25, v26, v27, v28))
  {
    v34 = objc_msgSend_lastObject(v23, v29, v30, v31, v32, v33);
    objc_msgSend_removeLastObject(v23, v35, v36, v37, v38, v39);
    if (objc_msgSend_hasSubtiles(v34, v40, v41, v42, v43, v44))
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v50 = objc_msgSend_subtilePositions(v34, v45, v46, v47, v48, v49, 0);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v65, v69, 16, v52);
      if (v57)
      {
        v58 = *v66;
        do
        {
          v59 = 0;
          do
          {
            if (*v66 != v58)
            {
              objc_enumerationMutation(v50);
            }

            v60 = objc_msgSend_objectForKeyedSubscript_(v10, v53, *(*(&v65 + 1) + 8 * v59), v54, v55, v56);
            objc_msgSend_addObject_(v23, v61, v60, v62, v63, v64);

            ++v59;
          }

          while (v57 != v59);
          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v65, v69, 16, v56);
        }

        while (v57);
      }
    }

    else
    {
      objc_msgSend_estimateScaleUsingStrokeBounds_defaultTileSizeFactor_(v34, v45, v11, v47, v48, v49, a6);
    }
  }
}

- (void)_splitTilesIntoSubtiles:(id)a3 mutableDocumentTilesPerPosition:(id)a4 maxTileSize:(int64_t)a5 strokeBoundsPerStrokeIdentifier:(id)a6
{
  v373 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v356 = a6;
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  v369 = 0u;
  obj = v9;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v366, v372, 16, v12);
  if (v18)
  {
    v353 = *v367;
    do
    {
      v354 = v18;
      for (i = 0; i != v354; ++i)
      {
        if (*v367 != v353)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v366 + 1) + 8 * i);
        v20 = objc_msgSend_contentStrokeIdentifiers(v19, v13, v14, v15, v16, v17);
        v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25) == 0;

        if (!v26)
        {
          v27 = objc_msgSend_tilePosition(v19, v13, v14, v15, v16, v17);
          v33 = objc_msgSend_subtileIndex(v27, v28, v29, v30, v31, v32);
          v39 = objc_msgSend_length(v33, v34, v35, v36, v37, v38) > 5;

          if (!v39)
          {
            v357 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14, v15, v16, v17);
            if (objc_msgSend_hasSubtiles(v19, v40, v41, v42, v43, v44))
            {
              v50 = objc_msgSend_orderedStrokeIdentifiers(v19, v45, v46, v47, v48, v49);
              v56 = objc_msgSend_count(v50, v51, v52, v53, v54, v55) > a5;

              if (v56)
              {
                v364 = 0u;
                v365 = 0u;
                v362 = 0u;
                v363 = 0u;
                v62 = objc_msgSend_subtilePositions(v19, v57, v58, v59, v60, v61);
                v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v362, v371, 16, v64);
                if (v69)
                {
                  v70 = *v363;
                  do
                  {
                    for (j = 0; j != v69; ++j)
                    {
                      if (*v363 != v70)
                      {
                        objc_enumerationMutation(v62);
                      }

                      v72 = objc_msgSend_objectForKeyedSubscript_(v10, v65, *(*(&v362 + 1) + 8 * j), v66, v67, v68);
                      objc_msgSend_addObject_(v357, v73, v72, v74, v75, v76);
                    }

                    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v362, v371, 16, v68);
                  }

                  while (v69);
                }

                goto LABEL_40;
              }

              objc_msgSend__removeSubtilesFromTile_mutableDocumentTilesPerPosition_(self, v57, v19, v10, v60, v61);
            }

            else
            {
              v77 = objc_msgSend_orderedStrokeIdentifiers(v19, v45, v46, v47, v48, v49);
              v83 = objc_msgSend_count(v77, v78, v79, v80, v81, v82) > a5;

              if (v83)
              {
                v89 = objc_msgSend_tilePosition(v19, v84, v85, v86, v87, v88);
                v100 = objc_msgSend_subtileIndex(v89, v90, v91, v92, v93, v94);
                if (v100)
                {
                  v101 = objc_msgSend_tilePosition(v19, v95, v96, v97, v98, v99);
                  v107 = objc_msgSend_subtileIndex(v101, v102, v103, v104, v105, v106);
                  v112 = objc_msgSend_indexPathByAddingIndex_(v107, v108, 0, v109, v110, v111);
                }

                else
                {
                  v112 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v95, 0, v97, v98, v99);
                }

                v113 = [CHTilePosition alloc];
                v119 = objc_msgSend_tilePosition(v19, v114, v115, v116, v117, v118);
                v125 = objc_msgSend_row(v119, v120, v121, v122, v123, v124);
                v131 = objc_msgSend_tilePosition(v19, v126, v127, v128, v129, v130);
                v137 = objc_msgSend_column(v131, v132, v133, v134, v135, v136);
                v140 = objc_msgSend_initWithRow_column_subtileIndex_(v113, v138, v125, v137, v112, v139);

                v141 = [CHMutableDocumentTile alloc];
                v142 = *MEMORY[0x1E695EFF8];
                v143 = *(MEMORY[0x1E695EFF8] + 8);
                v149 = objc_msgSend_set(MEMORY[0x1E695DFD8], v144, v145, v146, v147, v148);
                v155 = objc_msgSend_set(MEMORY[0x1E695DFD8], v150, v151, v152, v153, v154);
                v161 = objc_msgSend_set(MEMORY[0x1E695DFD8], v156, v157, v158, v159, v160);
                v163 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(v141, v162, v140, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v149, v155, v161, 1.0, v142, v143);

                objc_msgSend_addObject_(v357, v164, v163, v165, v166, v167);
                objc_msgSend__updateTileBounds_(self, v168, v163, v169, v170, v171);
                v177 = objc_msgSend_tilePosition(v163, v172, v173, v174, v175, v176);
                objc_msgSend_addSubtilePosition_(v19, v178, v177, v179, v180, v181);

                v187 = objc_msgSend_tilePosition(v163, v182, v183, v184, v185, v186);
                objc_msgSend_setObject_forKeyedSubscript_(v10, v188, v163, v187, v189, v190);

                v196 = objc_msgSend_tilePosition(v19, v191, v192, v193, v194, v195);
                v207 = objc_msgSend_subtileIndex(v196, v197, v198, v199, v200, v201);
                if (v207)
                {
                  v208 = objc_msgSend_tilePosition(v19, v202, v203, v204, v205, v206);
                  v214 = objc_msgSend_subtileIndex(v208, v209, v210, v211, v212, v213);
                  v219 = objc_msgSend_indexPathByAddingIndex_(v214, v215, 1, v216, v217, v218);
                }

                else
                {
                  v219 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v202, 1, v204, v205, v206);
                }

                v220 = [CHTilePosition alloc];
                v226 = objc_msgSend_tilePosition(v19, v221, v222, v223, v224, v225);
                v232 = objc_msgSend_row(v226, v227, v228, v229, v230, v231);
                v238 = objc_msgSend_tilePosition(v19, v233, v234, v235, v236, v237);
                v244 = objc_msgSend_column(v238, v239, v240, v241, v242, v243);
                v247 = objc_msgSend_initWithRow_column_subtileIndex_(v220, v245, v232, v244, v219, v246);

                v248 = [CHMutableDocumentTile alloc];
                v249 = *MEMORY[0x1E695EFF8];
                v250 = *(MEMORY[0x1E695EFF8] + 8);
                v256 = objc_msgSend_set(MEMORY[0x1E695DFD8], v251, v252, v253, v254, v255);
                v262 = objc_msgSend_set(MEMORY[0x1E695DFD8], v257, v258, v259, v260, v261);
                v268 = objc_msgSend_set(MEMORY[0x1E695DFD8], v263, v264, v265, v266, v267);
                v270 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(v248, v269, v247, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v256, v262, v268, 1.0, v249, v250);

                objc_msgSend_addObject_(v357, v271, v270, v272, v273, v274);
                objc_msgSend__updateTileBounds_(self, v275, v270, v276, v277, v278);
                v284 = objc_msgSend_tilePosition(v270, v279, v280, v281, v282, v283);
                objc_msgSend_addSubtilePosition_(v19, v285, v284, v286, v287, v288);

                v294 = objc_msgSend_tilePosition(v270, v289, v290, v291, v292, v293);
                objc_msgSend_setObject_forKeyedSubscript_(v10, v295, v270, v294, v296, v297);

                v360 = 0u;
                v361 = 0u;
                v358 = 0u;
                v359 = 0u;
                v62 = objc_msgSend_orderedStrokeIdentifiers(v19, v298, v299, v300, v301, v302);
                v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v303, &v358, v370, 16, v304);
                if (v309)
                {
                  v310 = *v359;
                  do
                  {
                    for (k = 0; k != v309; ++k)
                    {
                      if (*v359 != v310)
                      {
                        objc_enumerationMutation(v62);
                      }

                      v312 = *(*(&v358 + 1) + 8 * k);
                      v313 = objc_msgSend_objectForKeyedSubscript_(v356, v305, v312, v306, v307, v308);
                      objc_msgSend_ch_CGRectValue(v313, v314, v315, v316, v317, v318);
                      v320 = v319;
                      v322 = v321;
                      v324 = v323;
                      v326 = v325;

                      v332 = objc_msgSend_contentStrokeIdentifiers(v19, v327, v328, v329, v330, v331);
                      v337 = objc_msgSend_containsObject_(v332, v333, v312, v334, v335, v336);

                      if (v337)
                      {
                        objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v338, v312, v19, 0, v10, 1, v320, v322, v324, v326);
                      }

                      else
                      {
                        v343 = objc_msgSend_overlapStrokeIdentifiers(v19, v338, v339, v340, v341, v342);
                        v348 = objc_msgSend_containsObject_(v343, v344, v312, v345, v346, v347);

                        if (v348)
                        {
                          objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v349, v312, v19, 1, v10, 1, v320, v322, v324, v326);
                        }

                        else
                        {
                          objc_msgSend__addStrokeIdentifier_withBounds_intoTile_strokeType_mutableDocumentTilesPerPosition_skipMainTile_(self, v349, v312, v19, 2, v10, 1, v320, v322, v324, v326);
                        }
                      }
                    }

                    v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v305, &v358, v370, 16, v308);
                  }

                  while (v309);
                }

LABEL_40:
              }
            }

            if (objc_msgSend_count(v357, v84, v85, v86, v87, v88))
            {
              objc_msgSend__splitTilesIntoSubtiles_mutableDocumentTilesPerPosition_maxTileSize_strokeBoundsPerStrokeIdentifier_(self, v350, v357, v10, a5, v356);
            }

            continue;
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v366, v372, 16, v17);
    }

    while (v18);
  }
}

@end