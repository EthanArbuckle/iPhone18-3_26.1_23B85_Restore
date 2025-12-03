@interface CHReflowableSynthesisResultToken
+ (id)reflowableTokensFromSynthesisResult:(id)result principalPoints:(id)points shouldCancel:(id)cancel;
- (CHReflowableSynthesisResultToken)initWithDrawing:(id)drawing string:(id)string principalLines:(id *)lines principalPoints:(id)points textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space;
- (CHReflowableSynthesisResultToken)initWithDrawing:(id)drawing string:(id)string principalLines:(id *)lines textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space;
- (CHReflowableSynthesisResultToken)initWithSynthesisResult:(id)result principalLines:(id *)lines textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space;
@end

@implementation CHReflowableSynthesisResultToken

- (CHReflowableSynthesisResultToken)initWithSynthesisResult:(id)result principalLines:(id *)lines textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space
{
  spaceCopy = space;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  resultCopy = result;
  sizeCopy = size;
  v22 = objc_msgSend_drawing(resultCopy, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_content(resultCopy, v23, v24, v25, v26, v27);
  var1 = lines->var2.var1;
  v36[4] = lines->var2.var0;
  v36[5] = var1;
  v30 = lines->var3.var1;
  v36[6] = lines->var3.var0;
  v36[7] = v30;
  v31 = lines->var0.var1;
  v36[0] = lines->var0.var0;
  v36[1] = v31;
  v32 = lines->var1.var1;
  v36[2] = lines->var1.var0;
  v36[3] = v32;
  hasPrecedingSpace = objc_msgSend_initWithDrawing_string_principalLines_textSize_bounds_hasPrecedingSpace_(self, v33, v22, v28, v36, sizeCopy, spaceCopy, x, y, width, height);

  return hasPrecedingSpace;
}

- (CHReflowableSynthesisResultToken)initWithDrawing:(id)drawing string:(id)string principalLines:(id *)lines textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space
{
  spaceCopy = space;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  drawingCopy = drawing;
  stringCopy = string;
  sizeCopy = size;
  v20 = MEMORY[0x1E695DF70];
  v26 = objc_msgSend_strokeCount(drawingCopy, v21, v22, v23, v24, v25);
  v36 = objc_msgSend_arrayWithCapacity_(v20, v27, v26, v28, v29, v30);
  v37 = 0;
  v38 = MEMORY[0x1E695E0F0];
  while (v37 < objc_msgSend_strokeCount(drawingCopy, v31, v32, v33, v34, v35))
  {
    objc_msgSend_addObject_(v36, v39, v38, v40, v41, v42);
    ++v37;
  }

  var1 = lines->var2.var1;
  v49[4] = lines->var2.var0;
  v49[5] = var1;
  v44 = lines->var3.var1;
  v49[6] = lines->var3.var0;
  v49[7] = v44;
  v45 = lines->var0.var1;
  v49[0] = lines->var0.var0;
  v49[1] = v45;
  v46 = lines->var1.var1;
  v49[2] = lines->var1.var0;
  v49[3] = v46;
  hasPrecedingSpace = objc_msgSend_initWithDrawing_string_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(self, v39, drawingCopy, stringCopy, v49, v36, sizeCopy, spaceCopy, x, y, width, height);

  return hasPrecedingSpace;
}

- (CHReflowableSynthesisResultToken)initWithDrawing:(id)drawing string:(id)string principalLines:(id *)lines principalPoints:(id)points textSize:(id)size bounds:(CGRect)bounds hasPrecedingSpace:(BOOL)space
{
  spaceCopy = space;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  drawingCopy = drawing;
  stringCopy = string;
  pointsCopy = points;
  sizeCopy = size;
  var1 = lines->var2.var1;
  v37[4] = lines->var2.var0;
  v37[5] = var1;
  v24 = lines->var3.var1;
  v37[6] = lines->var3.var0;
  v37[7] = v24;
  v25 = lines->var0.var1;
  v37[0] = lines->var0.var0;
  v37[1] = v25;
  v26 = lines->var1.var1;
  v37[2] = lines->var1.var0;
  v37[3] = v26;
  v36.receiver = self;
  v36.super_class = CHReflowableSynthesisResultToken;
  height = [(CHReflowableTextToken *)&v36 initWithString:stringCopy principalLines:v37 principalPoints:pointsCopy textSize:sizeCopy bounds:spaceCopy hasPrecedingSpace:x, y, width, height];
  if (height)
  {
    v33 = objc_msgSend_copy(drawingCopy, v27, v28, v29, v30, v31);
    drawing = height->_drawing;
    height->_drawing = v33;
  }

  return height;
}

+ (id)reflowableTokensFromSynthesisResult:(id)result principalPoints:(id)points shouldCancel:(id)cancel
{
  v286 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  pointsCopy = points;
  cancelCopy = cancel;
  v256 = resultCopy;
  v249 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v8, @"en_US", v9, v10, v11);
  if (objc_msgSend_hasPrincipalLines(resultCopy, v12, v13, v14, v15, v16))
  {
    v17 = objc_opt_class();
    v23 = objc_msgSend_drawing(resultCopy, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_segmentContents(resultCopy, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_segmentStrokeIndexes(resultCopy, v30, v31, v32, v33, v34);
    v46 = objc_msgSend_content(resultCopy, v36, v37, v38, v39, v40);
    if (resultCopy)
    {
      objc_msgSend_principalLines(resultCopy, v41, v42, v43, v44, v45);
    }

    else
    {
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
    }

    v250 = objc_msgSend_textLineForDrawing_transcriptions_strokeIndexes_fullText_principalLines_locale_strokeClassification_shouldCancel_(v17, v41, v23, v29, v35, v46, &v277, v249, 1, cancelCopy);

    v78 = v250;
    if (!v250)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v47 = objc_opt_class();
    v53 = objc_msgSend_drawing(resultCopy, v48, v49, v50, v51, v52);
    v59 = objc_msgSend_segmentContents(resultCopy, v54, v55, v56, v57, v58);
    v65 = objc_msgSend_segmentStrokeIndexes(resultCopy, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_content(resultCopy, v66, v67, v68, v69, v70);
    v250 = objc_msgSend_textLineForDrawing_transcriptions_strokeIndexes_fullText_principalPoints_locale_strokeClassification_shouldCancel_(v47, v72, v53, v59, v65, v71, pointsCopy, v249, 1, cancelCopy);

    v78 = v250;
    if (!v250)
    {
LABEL_24:
      v87 = MEMORY[0x1E695E0F0];
      goto LABEL_58;
    }
  }

  objc_msgSend_principalLines(v78, v73, v74, v75, v76, v77);
  v85 = *&v277;
  v86 = *MEMORY[0x1E695EFF8];
  if (*&v277 == *MEMORY[0x1E695EFF8])
  {
    v84 = *(&v277 + 1);
    v85 = *(MEMORY[0x1E695EFF8] + 8);
    if (*(&v277 + 1) == v85)
    {
      v84 = *&v278;
      if (*&v278 == v86)
      {
        v84 = *(&v278 + 1);
        if (*(&v278 + 1) == v85)
        {
          v84 = *&v279;
          if (*&v279 == v86)
          {
            v84 = *(&v279 + 1);
            if (*(&v279 + 1) == v85)
            {
              v84 = *&v280;
              if (*&v280 == v86)
              {
                v84 = *(&v280 + 1);
                if (*(&v280 + 1) == v85)
                {
                  v84 = *&v281;
                  if (*&v281 == v86)
                  {
                    v84 = *(&v281 + 1);
                    if (*(&v281 + 1) == v85)
                    {
                      v84 = *&v282;
                      if (*&v282 == v86)
                      {
                        v84 = *(&v282 + 1);
                        if (*(&v282 + 1) == v85)
                        {
                          v84 = *&v283;
                          if (*&v283 == v86)
                          {
                            v84 = *(&v283 + 1);
                            if (*(&v283 + 1) == v85)
                            {
                              v84 = *&v284;
                              if (*&v284 == v86)
                              {
                                v86 = *(&v284 + 1);
                                if (*(&v284 + 1) == v85)
                                {
                                  goto LABEL_24;
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
          }
        }
      }
    }
  }

  v88 = objc_msgSend_segmentStrokeIndexes(resultCopy, v79, v80, v81, v82, v83, v86, v85, v84);
  if (objc_msgSend_count(v88, v89, v90, v91, v92, v93) == 1)
  {
    v99 = objc_msgSend_content(resultCopy, v94, v95, v96, v97, v98);
    if (objc_msgSend_countCharacters(v99, v100, v101, v102, v103, v104) > 3)
    {
      v253 = 0;
    }

    else
    {
      v253 = objc_msgSend_hasPrincipalLines(resultCopy, v105, v106, v107, v108, v109) ^ 1;
    }
  }

  else
  {
    v253 = 0;
  }

  v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v110, v111, v112, v113, v114);
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v120 = objc_msgSend_splitIntoTokens(v250, v115, v116, v117, v118, v119);
  obj = v120;
  v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v121, &v273, v285, 16, v122);
  if (v123)
  {
    v252 = *v274;
    do
    {
      v255 = v123;
      for (i = 0; i != v255; ++i)
      {
        if (*v274 != v252)
        {
          objc_enumerationMutation(obj);
        }

        v130 = *(*(&v273 + 1) + 8 * i);
        v131 = objc_msgSend_string(v130, v124, v125, v126, v127, v128);
        v137 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v132, v133, v134, v135, v136);
        v142 = objc_msgSend_stringByTrimmingCharactersInSet_(v131, v138, v137, v139, v140, v141);

        v148 = objc_msgSend_textStrokes(v130, v143, v144, v145, v146, v147);
        objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v149, v148, v150, v151, v152);
        v271 = v153;
        v272 = v154;
        v156 = v155;
        v158 = v157;

        v164 = objc_msgSend_segmentStrokeIndexes(v256, v159, v160, v161, v162, v163);
        v170 = objc_msgSend_count(v87, v165, v166, v167, v168, v169);
        v175 = objc_msgSend_objectAtIndexedSubscript_(v164, v171, v170, v172, v173, v174);
        v180 = objc_msgSend_objectsAtIndexes_(pointsCopy, v176, v175, v177, v178, v179);

        if (v253)
        {
          objc_msgSend_horizontalPrincipalLinesForPrincipalPoints_string_bounds_(CHReflowableTextToken, v181, v180, v142, v184, v185, v156, v271, v158, v272);
LABEL_43:
          v267 = *(&v277 + 1);
          v198 = *&v277;
          v268 = *(&v278 + 1);
          v262 = *&v280;
          v263 = *&v278;
          v269 = *(&v279 + 1);
          v270 = *(&v280 + 1);
          v191 = *(&v281 + 1);
          v265 = *&v281;
          v266 = *&v279;
          v192 = *(&v282 + 1);
          v261 = *&v282;
          v193 = *(&v283 + 1);
          v199 = *&v283;
          v194 = *(&v284 + 1);
          MaxX = *&v284;
          goto LABEL_47;
        }

        if (objc_msgSend_hasPrincipalLines(v256, v181, v182, v183, v184, v185))
        {
          if (v256)
          {
            objc_msgSend_principalLines(v256, v186, v187, v188, v189, v190);
            v267 = *(&v277 + 1);
            v268 = *(&v278 + 1);
            v269 = *(&v279 + 1);
            v270 = *(&v280 + 1);
            v191 = *(&v281 + 1);
            v192 = *(&v282 + 1);
            v193 = *(&v283 + 1);
            v194 = *(&v284 + 1);
          }

          else
          {
            v194 = 0.0;
            v193 = 0.0;
            v192 = 0.0;
            v191 = 0.0;
            v269 = 0.0;
            v270 = 0.0;
            v267 = 0.0;
            v268 = 0.0;
          }

          v288.origin.x = v156;
          v288.origin.y = v271;
          v288.size.width = v158;
          v288.size.height = v272;
          MinX = CGRectGetMinX(v288);
          v289.origin.x = v156;
          v289.origin.y = v271;
          v289.size.width = v158;
          v289.size.height = v272;
          v258 = CGRectGetMinX(v289);
          v290.origin.x = v156;
          v290.origin.y = v271;
          v290.size.width = v158;
          v290.size.height = v272;
          v266 = CGRectGetMinX(v290);
          v291.origin.x = v156;
          v291.origin.y = v271;
          v291.size.width = v158;
          v291.size.height = v272;
          v265 = CGRectGetMinX(v291);
          v292.origin.x = v156;
          v292.origin.y = v271;
          v292.size.width = v158;
          v292.size.height = v272;
          MaxX = CGRectGetMaxX(v292);
          v293.origin.x = v156;
          v293.origin.y = v271;
          v293.size.width = v158;
          v293.size.height = v272;
          v263 = CGRectGetMaxX(v293);
          v294.origin.x = v156;
          v294.origin.y = v271;
          v294.size.width = v158;
          v294.size.height = v272;
          v262 = CGRectGetMaxX(v294);
          v295.origin.x = v156;
          v295.origin.y = v271;
          v295.size.width = v158;
          v295.size.height = v272;
          v261 = CGRectGetMaxX(v295);
          v198 = v258;
          v199 = MinX;
        }

        else
        {
          v195 = objc_opt_class();
          if (v195)
          {
            objc_msgSend_fixPrincipalLinesPosition_useAltString_skipAmbiguousCharacters_(v195, v196, v130, 0, 1, v197);
            goto LABEL_43;
          }

          v194 = 0.0;
          MaxX = 0.0;
          v265 = 0.0;
          v193 = 0.0;
          v199 = 0.0;
          v192 = 0.0;
          v261 = 0.0;
          v262 = 0.0;
          v191 = 0.0;
          v269 = 0.0;
          v270 = 0.0;
          v266 = 0.0;
          v267 = 0.0;
          v268 = 0.0;
          v263 = 0.0;
          v198 = 0.0;
        }

LABEL_47:
        v200 = sub_183898F58(v180, v156, v271, v158, v272);
        v201 = objc_opt_class();
        *&v277 = v198;
        *(&v277 + 1) = v267;
        *&v278 = v263;
        *(&v278 + 1) = v268;
        *&v279 = v266;
        *(&v279 + 1) = v269;
        *&v280 = v262;
        *(&v280 + 1) = v270;
        *&v281 = v265;
        *(&v281 + 1) = v191;
        *&v282 = v261;
        *(&v282 + 1) = v192;
        *&v283 = v199;
        *(&v283 + 1) = v193;
        *&v284 = MaxX;
        *(&v284 + 1) = v194;
        v205 = objc_msgSend_textSizeFromPrincipalLines_string_(v201, v202, &v277, v142, v203, v204);
        v259 = v194;
        v257 = v193;
        if (v158 == 0.0)
        {
          v206 = 1.0;
        }

        else
        {
          v206 = v158;
        }

        if (v272 == 0.0)
        {
          v207 = 1.0;
        }

        else
        {
          v207 = v272;
        }

        v208 = objc_opt_class();
        v213 = 1.0 / v272;
        if (v272 == 0.0)
        {
          v213 = 1.0;
        }

        v214 = objc_msgSend_scaledSize_scale_(v208, v209, v205, v210, v211, v212, v213);

        v220 = objc_msgSend_textStrokes(v130, v215, v216, v217, v218, v219);
        v221 = sub_1838CBBBC(v220);

        v227 = objc_msgSend_tokens(v130, v222, v223, v224, v225, v226);
        v233 = objc_msgSend_firstObject(v227, v228, v229, v230, v231, v232);
        v239 = objc_msgSend_properties(v233, v234, v235, v236, v237, v238);

        v240 = [CHReflowableSynthesisResultToken alloc];
        *&v277 = (v198 - v156) / v206;
        *(&v277 + 1) = (v267 - v271) / v207;
        *&v278 = (v263 - v156) / v206;
        *(&v278 + 1) = (v268 - v271) / v207;
        *&v279 = (v266 - v156) / v206;
        *(&v279 + 1) = (v269 - v271) / v207;
        *&v280 = (v262 - v156) / v206;
        *(&v280 + 1) = (v270 - v271) / v207;
        *&v281 = (v265 - v156) / v206;
        *(&v281 + 1) = (v191 - v271) / v207;
        *&v282 = (v261 - v156) / v206;
        *(&v282 + 1) = (v192 - v271) / v207;
        *&v283 = (v199 - v156) / v206;
        *(&v283 + 1) = (v257 - v271) / v207;
        *&v284 = (MaxX - v156) / v206;
        *(&v284 + 1) = (v259 - v271) / v207;
        hasPrecedingSpace = objc_msgSend_initWithDrawing_string_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v240, v241, v221, v142, &v277, v200, v214, (v239 >> 5) & 1, v156);
        objc_msgSend_addObject_(v87, v243, hasPrecedingSpace, v244, v245, v246);
      }

      v120 = obj;
      v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v124, &v273, v285, 16, v128);
    }

    while (v123);
  }

LABEL_58:

  return v87;
}

@end