@interface CHNormalizedDrawingVisualization
- (BOOL)shouldDrawStrokeGroup:(id)a3;
- (CGRect)dirtyRectForStrokeGroup:(id)a3;
- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5;
@end

@implementation CHNormalizedDrawingVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)a3
{
  v10.receiver = self;
  v10.super_class = CHNormalizedDrawingVisualization;
  [(CHStrokeGroupBasedVisualization *)&v10 dirtyRectForStrokeGroup:a3];
  y = v11.origin.y;
  height = v11.size.height;
  v5 = 200.0 - CGRectGetHeight(v11);
  v6 = y + v5 * -0.5;
  if (v5 <= 0.0)
  {
    v7 = height;
  }

  else
  {
    v7 = height + v5;
  }

  if (v5 <= 0.0)
  {
    v6 = y;
  }

  v8 = 0x40C3880000000000;
  v9 = 0;
  return CGRectInset(*(&v6 - 1), -2.0, -2.0);
}

- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5
{
  height = a5.size.height;
  v7 = self;
  v278 = *MEMORY[0x1E69E9840];
  v273.receiver = self;
  v273.super_class = CHNormalizedDrawingVisualization;
  x = a5.origin.x;
  y = a5.origin.y;
  width = a5.size.width;
  [CHStrokeGroupBasedVisualization drawVisualizationInRect:sel_drawVisualizationInRect_context_viewBounds_ context:? viewBounds:?];
  v13 = objc_msgSend_resultDrawn(v7, v8, v9, v10, v11, v12);
  objc_msgSend_strokeGroupingResult(v13, v14, v15, v16, v17, v18);
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v237 = v272 = 0u;
  obj = objc_msgSend_strokeGroups(v237, v19, v20, v21, v22, v23);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v269, v276, 16, v25);
  if (v26)
  {
    v31 = v26;
    v257 = *v270;
    v240 = *(MEMORY[0x1E695F060] + 8);
    v241 = *MEMORY[0x1E695F060];
    rect = height;
    v238 = v13;
    v239 = v7;
    do
    {
      v32 = 0;
      v244 = v31;
      do
      {
        if (*v270 != v257)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v269 + 1) + 8 * v32);
        objc_msgSend_dirtyRectForStrokeGroup_(v7, v27, v36, v28, v29, v30);
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        shouldDrawStrokeGroup = objc_msgSend_shouldDrawStrokeGroup_(v7, v45, v36, v46, v47, v48);
        v279.origin.x = v38;
        v279.origin.y = v40;
        v279.size.width = v42;
        v279.size.height = v44;
        if (CGRectIntersectsRect(v279, a3) && shouldDrawStrokeGroup != 0)
        {
          v52 = objc_msgSend_uniqueIdentifier(v36, v27, v50, v28, v29, v30);
          v33 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v13, v53, v52, v54, v55, v56);
          v62 = objc_msgSend_inputDrawing(v33, v57, v58, v59, v60, v61);
          v34 = v62;
          if (v62)
          {
            memset(&v268, 0, sizeof(v268));
            objc_msgSend_bounds(v62, v63, v64, v65, v66, v67);
            space = v68;
            v265 = v69;
            v71 = v70;
            v73 = v72;
            objc_msgSend_bounds(v36, v74, v75, v76, v77, v78);
            if (v7)
            {
              v245 = *(MEMORY[0x1E695EFD0] + 16);
              v246 = *MEMORY[0x1E695EFD0];
              *&v268.a = *MEMORY[0x1E695EFD0];
              *&v268.c = v245;
              v242 = *(MEMORY[0x1E695EFD0] + 32);
              *&v268.tx = v242;
              v88 = v84;
              v89 = v85;
              v90 = v86;
              v91 = v71;
              v92 = v87;
              MidX = CGRectGetMidX(*&v84);
              v280.origin.x = v88;
              v280.origin.y = v89;
              v280.size.width = v90;
              v280.size.height = v92;
              MidY = CGRectGetMidY(v280);
              v281.origin.x = x;
              v281.origin.y = y;
              v281.size.width = width;
              v281.size.height = rect;
              v93 = CGRectGetWidth(v281);
              *&v282.origin.x = space;
              v282.origin.y = v265;
              v282.size.width = v91;
              v282.size.height = v73;
              v259 = 1.0;
              if (CGRectGetWidth(v282) > 0.0)
              {
                *&v283.origin.x = space;
                v283.origin.y = v265;
                v283.size.width = v91;
                v283.size.height = v73;
                if (CGRectGetWidth(v283) > v93 + -8.0)
                {
                  *&v284.origin.x = space;
                  v284.origin.y = v265;
                  v284.size.width = v91;
                  v284.size.height = v73;
                  v94 = CGRectGetWidth(v284);
                  *&m.a = v246;
                  *&m.c = v245;
                  *&m.tx = v242;
                  v259 = (v93 + -8.0) / v94;
                  CGAffineTransformScale(&v268, &m, v259, v259);
                }
              }

              m = v268;
              v285.origin.y = v265;
              *&v285.origin.x = space;
              v285.size.width = v91;
              v285.size.height = v73;
              v286 = CGRectApplyAffineTransform(v285, &m);
              v247 = v91;
              v95 = v286.origin.x;
              v96 = v286.origin.y;
              v97 = v286.size.width;
              v98 = v286.size.height;
              v99 = MidX - CGRectGetMidX(v286);
              v287.origin.x = v95;
              v287.origin.y = v96;
              v287.size.width = v97;
              v287.size.height = v98;
              v100 = CGRectGetMidY(v287);
              v274 = v268;
              CGAffineTransformTranslate(&m, &v274, v99 / v259, (MidY - v100) / v259);
              v268 = m;
              *&v288.origin.x = space;
              v288.origin.y = v265;
              v288.size.width = v247;
              v288.size.height = v73;
              v289 = CGRectApplyAffineTransform(v288, &m);
              v101 = v289.origin.x;
              spacea = v289.size.width;
              v266 = v289.origin.y;
              v261 = v289.size.height;
              MaxX = CGRectGetMaxX(v289);
              v290.origin.x = x;
              v290.origin.y = y;
              v290.size.width = width;
              v290.size.height = rect;
              v103 = MaxX <= CGRectGetMaxX(v290) + -4.0;
              v104 = v241;
              if (!v103)
              {
                v291.origin.x = x;
                v291.origin.y = y;
                v291.size.width = width;
                v291.size.height = rect;
                v105 = CGRectGetMaxX(v291) + -4.0;
                v292.origin.x = v101;
                v292.size.width = spacea;
                v292.origin.y = v266;
                v292.size.height = v261;
                v104 = v105 - CGRectGetMaxX(v292);
              }

              v248 = v104;
              v293.origin.x = v101;
              v293.size.width = spacea;
              v293.origin.y = v266;
              v293.size.height = v261;
              MinX = CGRectGetMinX(v293);
              v294.origin.x = x;
              v294.origin.y = y;
              v294.size.width = width;
              v294.size.height = rect;
              if (MinX < CGRectGetMinX(v294) + 4.0)
              {
                v295.origin.x = x;
                v295.origin.y = y;
                v295.size.width = width;
                v295.size.height = rect;
                v107 = CGRectGetMinX(v295) + 4.0;
                v296.origin.x = v101;
                v296.size.width = spacea;
                v296.origin.y = v266;
                v296.size.height = v261;
                v248 = v107 - CGRectGetMinX(v296);
              }

              v297.origin.x = v101;
              v297.size.width = spacea;
              v297.origin.y = v266;
              v297.size.height = v261;
              MaxY = CGRectGetMaxY(v297);
              v298.origin.x = x;
              v298.origin.y = y;
              v298.size.width = width;
              v298.size.height = rect;
              v109 = v240;
              if (MaxY > CGRectGetMaxY(v298) + -4.0)
              {
                v299.origin.x = x;
                v299.origin.y = y;
                v299.size.width = width;
                v299.size.height = rect;
                v110 = CGRectGetMaxY(v299) + -4.0;
                v300.origin.x = v101;
                v300.size.width = spacea;
                v300.origin.y = v266;
                v300.size.height = v261;
                v109 = v110 - CGRectGetMaxY(v300);
              }

              v301.origin.x = v101;
              v301.size.width = spacea;
              v301.origin.y = v266;
              v301.size.height = v261;
              MinY = CGRectGetMinY(v301);
              v302.origin.x = x;
              v302.origin.y = y;
              v302.size.width = width;
              v302.size.height = rect;
              if (MinY < CGRectGetMinY(v302) + 4.0)
              {
                v303.origin.x = x;
                v303.origin.y = y;
                v303.size.width = width;
                v303.size.height = rect;
                v112 = CGRectGetMinY(v303) + 4.0;
                v304.origin.x = v101;
                v304.size.width = spacea;
                v304.origin.y = v266;
                v304.size.height = v261;
                v109 = v112 - CGRectGetMinY(v304);
              }

              v274 = v268;
              CGAffineTransformTranslate(&m, &v274, v248 / v259, v109 / v259);
              v268 = m;
            }

            else
            {
              memset(&v268, 0, sizeof(v268));
            }

            objc_msgSend_bounds(v34, v79, v80, v81, v82, v83);
            m = v268;
            v306 = CGRectApplyAffineTransform(v305, &m);
            v254 = v33;
            v255 = v32;
            v253 = v34;
            if (v7)
            {
              v113 = v306.origin.x;
              v114 = v306.origin.y;
              v115 = v306.size.width;
              v116 = v306.size.height;
              v117 = v13;
              DeviceRGB = CGColorSpaceCreateDeviceRGB();
              v307.origin.x = v113;
              v307.origin.y = v114;
              v307.size.width = v115;
              v307.size.height = v116;
              v308 = CGRectInset(v307, -1.0, -1.0);
              v119 = v308.origin.x;
              v120 = v308.origin.y;
              v121 = v308.size.width;
              v122 = v308.size.height;
              v123 = CGColorCreate(DeviceRGB, dbl_1839CE858);
              CGContextSetFillColorWithColor(a4, v123);
              v309.origin.x = v119;
              v309.origin.y = v120;
              v309.size.width = v121;
              v309.size.height = v122;
              CGContextFillRect(a4, v309);
              v124 = CGColorCreate(DeviceRGB, dbl_1839CE878);
              CGContextSetStrokeColorWithColor(a4, v124);
              CGContextSetLineWidth(a4, 1.0);
              v310.origin.x = v119;
              v310.origin.y = v120;
              v310.size.width = v121;
              v310.size.height = v122;
              CGContextStrokeRect(a4, v310);
              CGColorRelease(v123);
              CGColorRelease(v124);
              CGColorSpaceRelease(DeviceRGB);
              m = v268;
              v125 = v34;
              v126 = CGColorSpaceCreateDeviceRGB();
              v127 = CGColorCreate(v126, dbl_1839CE898);
              v128 = CGColorCreate(v126, dbl_1839CE8B8);
              CGContextSetLineWidth(a4, 1.0);
              CGContextSetLineCap(a4, kCGLineCapRound);
              CGContextSetLineJoin(a4, kCGLineJoinRound);
              Mutable = CGPathCreateMutable();
              if (objc_msgSend_strokeCount(v125, v130, v131, v132, v133, v134))
              {
                v139 = 0;
                for (i = objc_msgSend_pointCountForStrokeIndex_(v125, v135, 0, v136, v137, v138); ; i = objc_msgSend_pointCountForStrokeIndex_(v125, v146, v139, v147, v148, v149))
                {
                  if (i)
                  {
                    objc_msgSend_pointForStrokeIndex_pointIndex_(v125, v141, v139, 0, v144, v145);
                    CGPathMoveToPoint(Mutable, &m, v150, v151);
                    if (objc_msgSend_pointCountForStrokeIndex_(v125, v152, v139, v153, v154, v155) >= 2)
                    {
                      v156 = 1;
                      do
                      {
                        objc_msgSend_pointForStrokeIndex_pointIndex_(v125, v141, v139, v156, v144, v145);
                        CGPathAddLineToPoint(Mutable, &m, v157, v158);
                        ++v156;
                      }

                      while (v156 < objc_msgSend_pointCountForStrokeIndex_(v125, v159, v139, v160, v161, v162));
                    }
                  }

                  if (++v139 >= objc_msgSend_strokeCount(v125, v141, v142, v143, v144, v145))
                  {
                    break;
                  }
                }
              }

              CGContextSetStrokeColorWithColor(a4, v127);
              CGContextAddPath(a4, Mutable);
              CGContextStrokePath(a4);
              CGPathRelease(Mutable);
              CGContextSetFillColorWithColor(a4, v128);
              v13 = v117;
              if (objc_msgSend_strokeCount(v125, v163, v164, v165, v166, v167))
              {
                v172 = 0;
                for (j = objc_msgSend_pointCountForStrokeIndex_(v125, v168, 0, v169, v170, v171); ; j = objc_msgSend_pointCountForStrokeIndex_(v125, v179, v172, v180, v181, v182))
                {
                  if (j)
                  {
                    v183 = 0;
                    do
                    {
                      objc_msgSend_pointForStrokeIndex_pointIndex_(v125, v174, v172, v183, v177, v178);
                      v186 = m.tx + v184 * m.c + m.a * v185;
                      v187 = m.ty + v184 * m.d + m.b * v185;
                      v311.origin.x = v186 + -1.5;
                      v311.origin.y = v187 + -1.5;
                      v311.size.width = 3.0;
                      v311.size.height = 3.0;
                      CGContextFillEllipseInRect(a4, v311);
                      ++v183;
                    }

                    while (v183 < objc_msgSend_pointCountForStrokeIndex_(v125, v188, v172, v189, v190, v191));
                  }

                  if (++v172 >= objc_msgSend_strokeCount(v125, v174, v175, v176, v177, v178))
                  {
                    break;
                  }
                }
              }

              CGColorRelease(v127);
              CGColorRelease(v128);
              CGColorSpaceRelease(v126);
              v31 = v244;
              v33 = v254;
              v32 = v255;
              v34 = v253;

              v197 = objc_msgSend_inputDrawingCutPoints(v254, v192, v193, v194, v195, v196);
              if (v197)
              {
LABEL_49:
                a = v268.a;
                b = v268.b;
                c = v268.c;
                d = v268.d;
                tx = v268.tx;
                ty = v268.ty;
                v35 = v197;
                v204 = v34;
                if (v7)
                {
                  spaceb = CGColorSpaceCreateDeviceRGB();
                  v205 = CGColorCreate(spaceb, dbl_1839CE8D8);
                  CGContextSetFillColorWithColor(a4, v205);
                  v275 = 0u;
                  memset(&v274, 0, sizeof(v274));
                  v267 = v35;
                  v206 = v35;
                  v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v206, v207, &v274, &m, 16, v208);
                  if (v209)
                  {
                    v214 = v209;
                    v215 = **&v274.c;
                    do
                    {
                      for (k = 0; k != v214; ++k)
                      {
                        if (**&v274.c != v215)
                        {
                          objc_enumerationMutation(v206);
                        }

                        v217 = *(*&v274.b + 8 * k);
                        v218 = objc_msgSend_indexAtPosition_(v217, v210, 0, v211, v212, v213);
                        v223 = objc_msgSend_indexAtPosition_(v217, v219, 1, v220, v221, v222);
                        objc_msgSend_pointForStrokeIndex_pointIndex_(v204, v224, v218, v223, v225, v226);
                        v229 = tx + c * v227 + a * v228;
                        v230 = ty + d * v227 + b * v228;
                        v312.origin.x = v229 + -2.0;
                        v312.origin.y = v230 + -2.0;
                        v312.size.width = 4.0;
                        v312.size.height = 4.0;
                        CGContextFillEllipseInRect(a4, v312);
                      }

                      v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v206, v210, &v274, &m, 16, v213);
                    }

                    while (v214);
                  }

                  CGColorSpaceRelease(spaceb);
                  CGColorRelease(v205);
                  v13 = v238;
                  v7 = v239;
                  v31 = v244;
                  v33 = v254;
                  v32 = v255;
                  v34 = v253;
                  v35 = v267;
                }
              }
            }

            else
            {
              m = v268;
              v231 = v34;

              v197 = objc_msgSend_inputDrawingCutPoints(v33, v232, v233, v234, v235, v236);
              if (v197)
              {
                goto LABEL_49;
              }
            }
          }
        }

        ++v32;
      }

      while (v32 != v31);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v269, v276, 16, v30);
    }

    while (v31);
  }
}

- (BOOL)shouldDrawStrokeGroup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = objc_msgSend_classification(v4, v6, v7, v8, v9, v10);
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v5, v12, v11, v13, v14, v15))
  {
    v21 = objc_msgSend_activeStrokeGroupAncestorIdentifiers(self, v16, v17, v18, v19, v20);
    v22 = MEMORY[0x1E696AD98];
    v28 = objc_msgSend_ancestorIdentifier(v4, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_numberWithInteger_(v22, v29, v28, v30, v31, v32);
    LOBYTE(v22) = objc_msgSend_containsObject_(v21, v34, v33, v35, v36, v37);

    return v22;
  }

  else
  {

    return 0;
  }
}

@end