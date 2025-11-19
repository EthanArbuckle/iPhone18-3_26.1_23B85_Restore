@interface CHStrokeGroupBaselineLegacyVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)a3;
- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5;
@end

@implementation CHStrokeGroupBaselineLegacyVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)a3
{
  objc_msgSend_bounds(a3, a2, a3, v3, v4, v5);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetMaxY(v20) + 10.0 + -22.0;
  if (self)
  {
    v13 = 22.0;
  }

  else
  {
    v13 = 0.0;
  }

  if (self)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0.0;
  }

  if (self)
  {
    v15 = MinX + -22.0;
  }

  else
  {
    v15 = 0.0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = v13;
  v22 = CGRectUnion(v21, *(&v13 - 2));
  result = CGRectInset(v22, -22.0, -22.0);
  v17 = result.size.height + 13.0;
  v18 = result.size.width + 7.0;
  result.size.height = v17;
  result.size.width = v18;
  return result;
}

- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5
{
  v405 = *MEMORY[0x1E69E9840];
  v374.receiver = self;
  v374.super_class = CHStrokeGroupBaselineLegacyVisualization;
  [(CHStrokeGroupBasedVisualization *)&v374 drawVisualizationInRect:a3.origin.x context:a3.origin.y viewBounds:a3.size.width, a3.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v10 = objc_msgSend_recognitionSession(self, v5, v6, v7, v8, v9);
  v365 = objc_msgSend_latestStrokeProvider(v10, v11, v12, v13, v14, v15);
  space = CGColorSpaceCreateDeviceRGB();
  color = CGColorCreate(space, dbl_1839DA778);
  v313 = CGColorCreate(space, dbl_1839DA798);
  cf = sub_18397D2F0(10.0);
  v314 = sub_18397D2F0(12.0);
  CGContextSetStrokeColorWithColor(a4, color);
  CGContextSetFillColorWithColor(a4, color);
  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  v21 = objc_msgSend_resultDrawn(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_strokeGroupingResult(v21, v22, v23, v24, v25, v26);
  obj = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v27, v28, 1, 1, v29, v30);
  v324 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v370, v397, 16, v32);
  if (v324)
  {
    v322 = *v371;
    v37 = 22.0;
    if (!self)
    {
      v37 = 0.0;
    }

    v321 = v37;
    v316 = *(MEMORY[0x1E695EFF8] + 8);
    v317 = *MEMORY[0x1E695EFF8];
    v334 = *(MEMORY[0x1E695EFD0] + 8);
    v335 = *MEMORY[0x1E695EFD0];
    v332 = *(MEMORY[0x1E695EFD0] + 24);
    v333 = *(MEMORY[0x1E695EFD0] + 16);
    v330 = *(MEMORY[0x1E695EFD0] + 40);
    v331 = *(MEMORY[0x1E695EFD0] + 32);
    v311 = *(MEMORY[0x1E695F058] + 8);
    v312 = *MEMORY[0x1E695F058];
    v310 = *(MEMORY[0x1E695F058] + 16);
    v309 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v324; ++i)
      {
        if (*v371 != v322)
        {
          objc_enumerationMutation(obj);
        }

        v358 = *(*(&v370 + 1) + 8 * i);
        objc_msgSend_dirtyRectForStrokeGroup_(self, v33, v358, v34, v35, v36);
        if (CGRectIntersectsRect(v406, a3))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = objc_msgSend_delegate(self, v33, v38, v34, v35, v36);
            v319 = objc_msgSend_visualizationIndexForStrokeGroup_(v39, v40, v358, v41, v42, v43);
            CGContextSaveGState(a4);
            *lengths = xmmword_1839CE6F0;
            CGContextSetLineWidth(a4, 2.0);
            CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
            CGContextSetAlpha(a4, 0.8);
            if (self)
            {
              v44 = [CHQuadCurvePointFIFO alloc];
              v320 = objc_msgSend_initWithFIFO_(v44, v45, 0, v46, v47, v48);
              v49 = [CHBoxcarFilterPointFIFO alloc];
              LODWORD(v50) = 2.0;
              v54 = objc_msgSend_initWithFIFO_width_spacing_(v49, v51, v320, 3, v52, v53, v50);
              v55 = [CHPointFIFO alloc];
              v336 = objc_msgSend_initWithFIFO_(v55, v56, v54, v57, v58, v59);
              v65 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(v358, v60, v61, v62, v63, v64);
              v71 = objc_msgSend_count(v65, v66, v67, v68, v69, v70);
              v337 = malloc_type_calloc(v71, 0x20uLL, 0x1000040E0EAB150uLL);
              v77 = objc_msgSend_count(v65, v72, v73, v74, v75, v76);
              v78 = malloc_type_calloc(v77, 8uLL, 0x100004000313F17uLL);
              v379 = 0u;
              v380 = 0u;
              v377 = 0u;
              v378 = 0u;
              v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v79, &v377, &v398, 16, v80);
              if (v86)
              {
                v87 = 0;
                v88 = *v378;
                v89 = 0.0;
                do
                {
                  v90 = 0;
                  v91 = &v337[32 * v87];
                  do
                  {
                    if (*v378 != v88)
                    {
                      objc_enumerationMutation(v65);
                    }

                    v94 = *(*(&v377 + 1) + 8 * v90);
                    v95 = objc_opt_class();
                    v104 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v95, v96, v94, v365, v97, v98);
                    v366 = *(MEMORY[0x1E695F058] + 16);
                    v368 = *MEMORY[0x1E695F058];
                    v375 = *MEMORY[0x1E695F058];
                    v376 = v366;
                    if (v104)
                    {
                      if (v87 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v105 = qword_1EA84DC50[0];
                        v106 = qword_1EA84DC50[0];
                        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(buf.a) = 134217984;
                          *(&buf.a + 4) = NAN;
                          _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_ERROR, "Invalid stroke index %ld", &buf, 0xCu);
                        }

                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v107 = qword_1EA84DC50[0];
                        v108 = qword_1EA84DC50[0];
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                        {
                          LODWORD(buf.a) = 134217984;
                          *(&buf.a + 4) = NAN;
                          _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_FAULT, "Invalid stroke index %ld", &buf, 0xCu);
                        }
                      }

                      objc_msgSend_bounds(v104, v99, v100, v101, v102, v103);
                      v110 = v109;
                      v112 = v111;
                      v114 = v113;
                      v116 = v115;
                      objc_msgSend_localWritingOrientationAtStrokeIndex_(v358, v117, v87, v118, v119, v120);
                      v123 = atan2(v122, v121);
                      v407.origin.x = v110;
                      v407.origin.y = v112;
                      v407.size.width = v114;
                      v407.size.height = v116;
                      MidX = CGRectGetMidX(v407);
                      v408.origin.x = v110;
                      v408.origin.y = v112;
                      v408.size.width = v114;
                      v408.size.height = v116;
                      MidY = CGRectGetMidY(v408);
                      memset(&v392, 0, sizeof(v392));
                      CGAffineTransformMakeTranslation(&v392, MidX, MidY);
                      v393 = v392;
                      CGAffineTransformRotate(&buf, &v393, v123);
                      v392 = buf;
                      v393 = buf;
                      CGAffineTransformTranslate(&buf, &v393, -MidX, -MidY);
                      v392 = buf;
                      memset(&v393, 0, sizeof(v393));
                      CGAffineTransformInvert(&v393, &buf);
                      buf.a = 0.0;
                      *&buf.b = &buf;
                      *&buf.c = 0x4010000000;
                      *&buf.d = &unk_183A5AC72;
                      *&buf.tx = v368;
                      v404 = v366;
                      v388 = 0;
                      v389 = &v388;
                      v390 = 0x2020000000;
                      v391 = 0;
                      v386[0] = 0;
                      v386[1] = v386;
                      v386[2] = 0x3010000000;
                      v386[3] = &unk_183A5AC72;
                      v387 = *MEMORY[0x1E695EFF8];
                      v385[0] = 0;
                      v385[1] = v385;
                      v385[2] = 0x2020000000;
                      v385[3] = 0;
                      *&v381.a = MEMORY[0x1E69E9820];
                      *&v381.b = 3221225472;
                      *&v381.c = sub_18397D3EC;
                      *&v381.d = &unk_1E6DE0758;
                      v384 = v393;
                      *&v381.tx = v385;
                      *&v381.ty = &buf;
                      v382 = v386;
                      v383 = &v388;
                      objc_msgSend_enumeratePointsWithTimestep_usingBlock_(v104, v126, &v381, v127, v128, v129, 0.00833333333);
                      v130 = *(*&buf.b + 48);
                      v375 = *(*&buf.b + 32);
                      v376 = v130;
                      v92 = v389[3];
                      _Block_object_dispose(v385, 8);
                      _Block_object_dispose(v386, 8);
                      _Block_object_dispose(&v388, 8);
                      _Block_object_dispose(&buf, 8);
                    }

                    else
                    {
                      v92 = 0.0;
                    }

                    v93 = v376;
                    *v91 = v375;
                    *(v91 + 1) = v93;
                    v91 += 32;
                    v78[v87] = v92;
                    v89 = v89 + v92;
                    ++v87;
                    ++v90;
                  }

                  while (v86 != v90);
                  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v99, &v377, &v398, 16, v103);
                }

                while (v86);
              }

              else
              {
                v89 = 0.0;
              }

              v131 = objc_msgSend_count(v65, v81, v82, v83, v84, v85);
              *&v352 = v331;
              *(&v352 + 1) = v330;
              b = v334;
              d = v332;
              a = v335;
              v349 = v333;
              v353.size.width = v310;
              v353.size.height = v309;
              v353.origin.x = v312;
              v353.origin.y = v311;
              v327 = v316;
              v328 = v317;
              if (objc_msgSend_count(v65, v132, v133, v134, v135, v136))
              {
                v142 = 0;
                v143 = 0;
                v338 = v89 / v131 * 0.2;
                v327 = v316;
                v328 = v317;
                do
                {
                  v144 = objc_msgSend_objectAtIndexedSubscript_(v65, v137, v143, v139, v140, v141);
                  v145 = objc_opt_class();
                  v149 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v145, v146, v144, v365, v147, v148);
                  *&v352 = v331;
                  *(&v352 + 1) = v330;
                  b = v334;
                  d = v332;
                  a = v335;
                  v349 = v333;
                  if (v149)
                  {
                    objc_msgSend_bounds(v149, v150, v151, v152, v153, v154);
                    v156 = v155;
                    v158 = v157;
                    v160 = v159;
                    v162 = v161;
                    objc_msgSend_localWritingOrientationAtStrokeIndex_(v358, v163, v143, v164, v165, v166);
                    v169 = atan2(v168, v167);
                    v409.origin.x = v156;
                    v409.origin.y = v158;
                    v409.size.width = v160;
                    v409.size.height = v162;
                    v170 = CGRectGetMidX(v409);
                    v410.origin.x = v156;
                    v410.origin.y = v158;
                    v410.size.width = v160;
                    v410.size.height = v162;
                    v171 = CGRectGetMidY(v410);
                    memset(&v393, 0, sizeof(v393));
                    CGAffineTransformMakeTranslation(&v393, v170, v171);
                    buf = v393;
                    CGAffineTransformRotate(&v381, &buf, v169);
                    v393 = v381;
                    buf = v381;
                    CGAffineTransformTranslate(&v381, &buf, -v170, -v171);
                    v393 = v381;
                    a = v381.a;
                    v349 = v381.c;
                    b = v381.b;
                    d = v381.d;
                    v352 = *&v381.tx;
                  }

                  v172 = &v337[32 * v143];
                  v367 = *v172;
                  v364 = v172[1];
                  v369 = v172[2];
                  v363 = v172[3];
                  if (v143 >= objc_msgSend_count(v65, v150, v151, v152, v153, v154) - 1)
                  {
                    v353.size.width = v369;
                    v353.size.height = v363;
                    v353.origin.x = v367;
                    v353.origin.y = v364;
                    v178 = v143;
LABEL_53:
                    if (v142)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v353.origin.x = v367;
                    v353.origin.y = v364;
                    v353.size.width = v369;
                    v353.size.height = v363;
                    v177 = &v337[32 * v143 + 56];
                    while (1)
                    {
                      v178 = v143 + 1;
                      v361 = *(v177 - 3);
                      recta = *(v177 - 2);
                      v354 = *v177;
                      v356 = *(v177 - 1);
                      v179 = objc_msgSend_objectAtIndexedSubscript_(v65, v173, v143 + 1, v174, v175, v176);
                      v180 = objc_opt_class();
                      v184 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v180, v181, v179, v365, v182, v183);
                      objc_msgSend_bounds(v184, v185, v186, v187, v188, v189);
                      v191 = v190;
                      v193 = v192;
                      v195 = v194;
                      v197 = v196;
                      objc_msgSend_localWritingOrientationAtStrokeIndex_(v358, v198, v143 + 1, v199, v200, v201);
                      v204 = atan2(v203, v202);
                      v411.origin.x = v191;
                      v411.origin.y = v193;
                      v411.size.width = v195;
                      v411.size.height = v197;
                      v205 = CGRectGetMidX(v411);
                      v412.origin.x = v191;
                      v412.origin.y = v193;
                      v412.size.width = v195;
                      v412.size.height = v197;
                      v206 = CGRectGetMidY(v412);
                      memset(&v393, 0, sizeof(v393));
                      CGAffineTransformMakeTranslation(&v393, v205, v206);
                      buf = v393;
                      CGAffineTransformRotate(&v381, &buf, v204);
                      v393 = v381;
                      buf = v381;
                      CGAffineTransformTranslate(&v381, &buf, -v205, -v206);
                      v393 = v381;
                      v347 = *&v381.a;
                      v207 = *&v381.c;
                      v208 = *&v381.tx;
                      ty = v381.ty;
                      v346 = v381.d;
                      buf.a = a;
                      buf.b = b;
                      buf.c = v349;
                      buf.d = d;
                      *&buf.tx = v352;
                      CGAffineTransformInvert(&v381, &buf);
                      v343 = v381.c;
                      v344 = v381.a;
                      v341 = v381.d;
                      v342 = v381.b;
                      tx = v381.tx;
                      v340 = v381.ty;
                      v413.origin.x = v361;
                      v413.origin.y = recta;
                      v413.size.height = v354;
                      v413.size.width = v356;
                      MaxX = CGRectGetMaxX(v413);
                      v414.origin.x = v361;
                      v414.origin.y = recta;
                      v414.size.height = v354;
                      v414.size.width = v356;
                      MaxY = CGRectGetMaxY(v414);
                      buf.a = a;
                      buf.b = b;
                      buf.c = v349;
                      buf.d = d;
                      *&buf.tx = v352;
                      CGAffineTransformInvert(&v381, &buf);
                      v212 = v381.a;
                      v213 = v381.c;
                      v355 = v381.d;
                      v357 = v381.b;
                      v214 = v381.tx;
                      v339 = v381.ty;
                      v415.origin.x = v367;
                      v415.origin.y = v364;
                      v415.size.width = v369;
                      v415.size.height = v363;
                      MinX = CGRectGetMinX(v415);
                      v216 = *&v208 + recta * *&v207 + *&v347 * v361;
                      rect = ty + recta * v346 + *(&v347 + 1) * v361;
                      v362 = v216;
                      v217 = tx + rect * v343 + v344 * v216;
                      v218 = *&v208 + *&v207 * MaxY + *&v347 * MaxX;
                      v219 = ty + v346 * MaxY + *(&v347 + 1) * MaxX;
                      v220 = v214 + v219 * v213 + v212 * v218;
                      if (MinX > v217 || (v416.origin.x = v367, v416.origin.y = v364, v416.size.width = v369, v416.size.height = v363, v217 > CGRectGetMaxX(v416)))
                      {
                        v417.origin.x = v367;
                        v417.origin.y = v364;
                        v417.size.width = v369;
                        v417.size.height = v363;
                        if (v217 > CGRectGetMinX(v417))
                        {
                          goto LABEL_49;
                        }

                        v418.origin.x = v367;
                        v418.origin.y = v364;
                        v418.size.width = v369;
                        v418.size.height = v363;
                        if (CGRectGetMinX(v418) > v220)
                        {
                          goto LABEL_49;
                        }
                      }

                      v419.origin.x = v367;
                      v419.origin.y = v364;
                      v419.size.width = v369;
                      v419.size.height = v363;
                      v221 = v217;
                      if (CGRectGetMinX(v419) > v217)
                      {
                        v420.origin.x = v367;
                        v420.origin.y = v364;
                        v420.size.width = v369;
                        v420.size.height = v363;
                        v221 = CGRectGetMinX(v420);
                      }

                      v421.origin.x = v367;
                      v421.origin.y = v364;
                      v421.size.width = v369;
                      v421.size.height = v363;
                      v222 = CGRectGetMaxX(v421) < v220;
                      v223 = v214 + v219 * v213 + v212 * v218;
                      if (v222)
                      {
                        v422.origin.x = v367;
                        v422.origin.y = v364;
                        v422.size.width = v369;
                        v422.size.height = v363;
                        v223 = CGRectGetMaxX(v422);
                      }

                      if ((v223 - v221) / v369 + (v223 - v221) / (v220 - v217) < 0.3)
                      {
LABEL_49:
                        if (v78[v143 + 1] >= v338)
                        {
                          break;
                        }
                      }

                      v430.origin.y = v340 + rect * v341 + v342 * v362;
                      v430.origin.x = v217 + -1.0;
                      v430.size.width = 1.0;
                      v430.size.height = 1.0;
                      v423 = CGRectUnion(v353, v430);
                      v431.origin.y = v339 + v219 * v355 + v357 * v218;
                      v431.origin.x = v220 + -1.0;
                      v431.size.width = 1.0;
                      v431.size.height = 1.0;
                      v353 = CGRectUnion(v423, v431);
                      v177 += 4;
                      ++v143;
                      if (v178 >= objc_msgSend_count(v65, v224, v225, v226, v227, v228) - 1)
                      {
                        goto LABEL_53;
                      }
                    }

                    v178 = v143;
                    if (v142)
                    {
                      goto LABEL_55;
                    }
                  }

                  v229 = CGRectGetMinX(v353);
                  v230 = CGRectGetMaxY(v353) + 6.0;
                  v327 = *(&v352 + 1) + d * v230 + b * v229;
                  v328 = *&v352 + v349 * v230 + a * v229;
                  *&v231 = v328;
                  *&v232 = v327;
                  objc_msgSend_addPoint_(v336, v233, v234, v235, v236, v237, COERCE_DOUBLE(__PAIR64__(v232, v231)));
LABEL_55:
                  v238 = CGRectGetMidX(v353);
                  v239 = CGRectGetMaxY(v353) + 6.0;
                  *&v240 = *&v352 + v349 * v239 + a * v238;
                  *&v241 = *(&v352 + 1) + d * v239 + b * v238;
                  objc_msgSend_addPoint_(v336, v242, v243, v244, v245, v246, COERCE_DOUBLE(__PAIR64__(v241, v240)));
                  v143 = v178 + 1;
                  v142 = 1;
                }

                while (v178 + 1 < objc_msgSend_count(v65, v247, v248, v249, v250, v251));
              }

              if (objc_msgSend_count(v65, v137, v138, v139, v140, v141))
              {
                v257 = CGRectGetMaxX(v353);
                v258 = CGRectGetMaxY(v353) + 6.0;
                *&v259 = *&v352 + v349 * v258 + a * (v257 + 7.0);
                *&v260 = *(&v352 + 1) + d * v258 + b * (v257 + 7.0);
                objc_msgSend_addPoint_(v336, v261, v262, v263, v264, v265, COERCE_DOUBLE(__PAIR64__(v260, v259)));
              }

              objc_msgSend_flush(v336, v252, v253, v254, v255, v256);
              free(v337);
              free(v78);
              v271 = objc_msgSend_path(v320, v266, v267, v268, v269, v270);
              v272 = CGPathRetain(v271);
            }

            else
            {
              v272 = 0;
              v327 = v316;
              v328 = v317;
            }

            CGContextAddPath(a4, v272);
            CGContextStrokePath(a4);
            CGPathRelease(v272);
            if (self)
            {
              v273 = v327 + 10.0 + -22.0;
            }

            else
            {
              v273 = 0.0;
            }

            if (self)
            {
              v274 = v328 + -22.0;
            }

            else
            {
              v274 = 0.0;
            }

            CGContextSetLineWidth(a4, 2.0);
            CGContextSetAlpha(a4, 0.8);
            v424.origin.x = v274;
            v424.origin.y = v273;
            v424.size.width = v321;
            v424.size.height = v321;
            CGContextFillEllipseInRect(a4, v424);
            v425.origin.x = v274;
            v425.origin.y = v273;
            v425.size.width = v321;
            v425.size.height = v321;
            v275 = CGRectGetMidY(v425);
            CGContextTranslateCTM(a4, 0.0, v275);
            CGContextScaleCTM(a4, 1.0, -1.0);
            v426.origin.x = v274;
            v426.origin.y = v273;
            v426.size.width = v321;
            v426.size.height = v321;
            v276 = CGRectGetMidY(v426);
            CGContextTranslateCTM(a4, 0.0, -v276);
            if (v319 <= 98)
            {
              v277 = 3.0;
            }

            else
            {
              v277 = 4.5;
            }

            v427.origin.x = v274;
            v427.origin.y = v273;
            v427.size.width = v321;
            v427.size.height = v321;
            v428 = CGRectInset(v427, 0.0, v277);
            x = v428.origin.x;
            y = v428.origin.y;
            width = v428.size.width;
            height = v428.size.height;
            if (v319 <= 98)
            {
              v282 = v314;
            }

            else
            {
              v282 = cf;
            }

            LOBYTE(v377) = 2;
            LODWORD(buf.a) = 0;
            *&buf.b = 1;
            *&buf.c = &v377;
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v283 = off_1EA84D290;
            *&v381.d = off_1EA84D290;
            if (!off_1EA84D290)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397D704;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397D704(&v398);
              v283 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v283)
            {
              goto LABEL_99;
            }

            v284 = v283(&buf, 1);
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v285 = qword_1EA84D298;
            *&v381.d = qword_1EA84D298;
            if (!qword_1EA84D298)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397D84C;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397D84C(&v398);
              v285 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v285)
            {
              goto LABEL_99;
            }

            v394[0] = *v285;
            v395[0] = v282;
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v286 = qword_1EA84D2A0;
            *&v381.d = qword_1EA84D2A0;
            if (!qword_1EA84D2A0)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397D994;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397D994(&v398);
              v286 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v286)
            {
              goto LABEL_99;
            }

            v394[1] = *v286;
            v395[1] = v313;
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v287 = qword_1EA84D2A8;
            *&v381.d = qword_1EA84D2A8;
            if (!qword_1EA84D2A8)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397DADC;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397DADC(&v398);
              v287 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v287)
            {
              goto LABEL_99;
            }

            v394[2] = *v287;
            v395[2] = v284;
            v290 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v288, v395, v394, 3, v289);
            v291 = objc_alloc(MEMORY[0x1E696AAB0]);
            v296 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v292, @"%ld", v293, v294, v295, v319 + 1);
            v300 = objc_msgSend_initWithString_attributes_(v291, v297, v296, v290, v298, v299);
            v429.origin.x = x;
            v429.origin.y = y;
            v429.size.width = width;
            v429.size.height = height;
            v301 = CGPathCreateWithRect(v429, 0);
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v302 = off_1EA84D2B0;
            *&v381.d = off_1EA84D2B0;
            if (!off_1EA84D2B0)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397DC24;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397DC24(&v398);
              v302 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v302)
            {
              goto LABEL_99;
            }

            v303 = v302(v300);
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v304 = off_1EA84D2B8;
            *&v381.d = off_1EA84D2B8;
            if (!off_1EA84D2B8)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397DD6C;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397DD6C(&v398);
              v304 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v304)
            {
              goto LABEL_99;
            }

            v305 = (v304)(v303, 0, 0, v301, 0);
            CGContextSetAlpha(a4, 1.0);
            v381.a = 0.0;
            *&v381.b = &v381;
            *&v381.c = 0x2020000000;
            v306 = off_1EA84D2C0;
            *&v381.d = off_1EA84D2C0;
            if (!off_1EA84D2C0)
            {
              v398 = MEMORY[0x1E69E9820];
              v399 = 3221225472;
              v400 = sub_18397DEB4;
              v401 = &unk_1E6DDD2E0;
              v402 = &v381;
              sub_18397DEB4(&v398);
              v306 = *(*&v381.b + 24);
            }

            _Block_object_dispose(&v381, 8);
            if (!v306)
            {
LABEL_99:
              dlerror();
              abort_report_np();
              __break(1u);
            }

            v306(v305, a4);
            CFRelease(v305);
            CFRelease(v303);
            CGPathRelease(v301);
            CFRelease(v284);
            CGContextRestoreGState(a4);
          }
        }
      }

      v324 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v370, v397, 16, v36);
    }

    while (v324);
  }

  CGColorRelease(color);
  CGColorRelease(v313);
  CGColorSpaceRelease(space);
  CFRelease(cf);
  CFRelease(v314);
}

@end