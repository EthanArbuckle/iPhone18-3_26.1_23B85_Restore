@interface CHTextInputGesture
+ (BOOL)isDrawingCenterOnBlank:(id)a3 targetContentInfo:(id)a4 insertionLocation:(int64_t *)a5;
+ (BOOL)isEditGestureForDrawing:(id)a3 targetContentInfo:(id)a4 tentativeResultType:(int64_t)a5;
+ (BOOL)isVerticalBarShapeFromLineResult:(id)a3 originalDrawing:(id)a4 isDirectionDownward:(BOOL *)a5;
+ (_NSRange)rangeOfTokenAtCharacterIndex:(int64_t)a3 inString:(id)a4 locale:(id)a5;
+ (id)verticalBarGestureFromLineResult:(id)a3 currentGesture:(id)a4;
- (CHTextInputGesture)initWithGestureType:(int64_t)a3 targetContentInfo:(id)a4 locale:(id)a5 normalizedDrawing:(id)a6 originalDrawing:(id)a7 lastStroke:(id)a8 preferCharacterLevel:(BOOL)a9;
- (_NSRange)_affectedRangeByAdjustingForProtectedCharacters:(_NSRange)a3;
- (void)getAffectedRange:(_NSRange *)a3 expandedToFullTokens:(BOOL *)a4;
@end

@implementation CHTextInputGesture

- (CHTextInputGesture)initWithGestureType:(int64_t)a3 targetContentInfo:(id)a4 locale:(id)a5 normalizedDrawing:(id)a6 originalDrawing:(id)a7 lastStroke:(id)a8 preferCharacterLevel:(BOOL)a9
{
  v16 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v17 = a8;
  if (a3 == 1)
  {
    v24 = v16;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "CHTextInputGesture does not support the text correction type.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v19 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v19 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "CHTextInputGesture does not support the text correction type.", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v28.receiver = self;
  v28.super_class = CHTextInputGesture;
  v20 = [(CHTextInputGesture *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_gestureType = a3;
    objc_storeStrong(&v20->_targetContentInfo, a4);
    objc_storeStrong(&v21->_locale, a5);
    objc_storeStrong(&v21->_normalizedDrawing, a6);
    objc_storeStrong(&v21->_originalDrawing, a7);
    objc_storeStrong(&v21->_lastStroke, a8);
    v21->_preferCharacterLevel = a9;
    textResult = v21->__textResult;
    v21->__textResult = 0;

    v21->__storedAffectedRange = xmmword_1839D0630;
  }

  return v21;
}

- (void)getAffectedRange:(_NSRange *)a3 expandedToFullTokens:(BOOL *)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_targetContentInfo(self, a2, a3, a4, v4, v5);
  location = objc_msgSend_strokeCoveredTextRange(v9, v10, v11, v12, v13, v14);
  length = v16;

  v125 = 0;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = objc_msgSend_gestureType(self, v18, v19, v20, v21, v22);
    if (v23 <= 3)
    {
      if (!v23)
      {
        length = 0;
        goto LABEL_2;
      }

      if (v23 == 2)
      {
        length = 0;
        if (qword_1EA84DC48 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      if (v23 != 3)
      {
LABEL_18:
        if (qword_1EA84DC48 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      v27 = sub_1837DEE20(self, location, length, v24, v25, v26);
      v31 = objc_msgSend__affectedRangeByAdjustingForProtectedCharacters_(self, v28, v27, v28, v29, v30);
      v35 = sub_1837DEEEC(self, v31, v32, v32, v33, v34);
      v39 = sub_1837DF220(self, v35, v36, v36, v37, v38);
      v42 = sub_1837DF580(self, v39, v40, 1, &v125, v41);
    }

    else if ((v23 - 4) < 2)
    {
      v44 = sub_1837DEE20(self, location, length, v24, v25, v26);
      v46 = v45;
      v51 = objc_msgSend_gestureType(self, v45, v47, v48, v49, v50);
      v57 = objc_msgSend_originalDrawing(self, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_targetContentInfo(self, v58, v59, v60, v61, v62);
      v64 = sub_1837DFE08(CHTextInputGesture, v44, v46, v51, v57, v63);
      v66 = v65;

      v70 = objc_msgSend__affectedRangeByAdjustingForProtectedCharacters_(self, v67, v64, v66, v68, v69);
      v74 = sub_1837DEEEC(self, v70, v71, v71, v72, v73);
      v78 = sub_1837DF220(self, v74, v75, v75, v76, v77);
      v42 = sub_1837DF580(self, v78, v79, 0, &v125, v80);
    }

    else
    {
      if (v23 != 6)
      {
        if (v23 == 7)
        {
          location = self->__storedAffectedRange.location;
          length = self->__storedAffectedRange.length;
          if (qword_1EA84DC48 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }

        goto LABEL_18;
      }

      v81 = sub_1837DEE20(self, location, length, v24, v25, v26);
      v83 = v82;
      v88 = objc_msgSend_gestureType(self, v82, v84, v85, v86, v87);
      v94 = objc_msgSend_originalDrawing(self, v89, v90, v91, v92, v93);
      v100 = objc_msgSend_targetContentInfo(self, v95, v96, v97, v98, v99);
      v101 = sub_1837DFE08(CHTextInputGesture, v81, v83, v88, v94, v100);
      v103 = v102;

      v107 = objc_msgSend__affectedRangeByAdjustingForProtectedCharacters_(self, v104, v101, v103, v105, v106);
      v111 = sub_1837DEEEC(self, v107, v108, v108, v109, v110);
      v115 = sub_1837DF220(self, v111, v112, v112, v113, v114);
      v42 = sub_1837DF580(self, v115, v116, 1, &v125, v117);
    }

    location = v42;
    length = v43;
    goto LABEL_18;
  }

LABEL_2:
  location = 0x7FFFFFFFFFFFFFFFLL;
  if (qword_1EA84DC48 == -1)
  {
    goto LABEL_19;
  }

LABEL_27:
  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
LABEL_19:
  v118 = qword_1EA84DC58;
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
  {
    v124 = objc_msgSend_gestureType(self, v119, v120, v121, v122, v123);
    *buf = 134218496;
    v127 = v124;
    v128 = 2048;
    v129 = location;
    v130 = 2048;
    v131 = length;
    _os_log_impl(&dword_18366B000, v118, OS_LOG_TYPE_DEBUG, "Gesture recognized with type %ld, range  = %ld,%ld", buf, 0x20u);
  }

  if (a3)
  {
    a3->location = location;
    a3->length = length;
  }

  if (a4)
  {
    *a4 = v125;
  }
}

- (_NSRange)_affectedRangeByAdjustingForProtectedCharacters:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = a3.length;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = a3.location;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v7 = objc_msgSend_targetContentInfo(self, a2, a3.location, a3.length, v3, v4);
  v13 = objc_msgSend_protectedCharacterIndexes(v7, v8, v9, v10, v11, v12);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1837E0964;
  v22[3] = &unk_1E6DDE608;
  v22[4] = &v25;
  v22[5] = &v29;
  v22[7] = location;
  v22[8] = length;
  v22[6] = v23;
  objc_msgSend_enumerateIndexesUsingBlock_(v13, v14, v22, v15, v16, v17);

  v18 = v26[3];
  v19 = v30[3];
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  v20 = v18;
  v21 = v19;
  result.length = v21;
  result.location = v20;
  return result;
}

+ (_NSRange)rangeOfTokenAtCharacterIndex:(int64_t)a3 inString:(id)a4 locale:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (!objc_msgSend_length(v7, v9, v10, v11, v12, v13))
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  if (a3 < 0 || objc_msgSend_length(v7, v14, v15, v16, v17, v18) <= a3)
  {
    if (qword_1EA84DC48 == -1)
    {
      v24 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v24 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        if (a3 < 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    *v50 = 134218240;
    *&v50[4] = a3;
    v51 = 2048;
    v52 = objc_msgSend_length(v7, v25, v26, v27, v28, v29);
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Character index %lu beyond bounds for string length: %lu", v50, 0x16u);
    goto LABEL_7;
  }

LABEL_8:
  if (objc_msgSend_length(v7, v19, v20, v21, v22, v23) > a3)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v35 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    v41 = objc_msgSend_length(v7, v36, v37, v38, v39, v40);
    *v50 = 134218240;
    *&v50[4] = a3;
    v51 = 2048;
    v52 = v41;
    _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_FAULT, "Character index %lu beyond bounds for string length: %lu", v50, 0x16u);
  }

LABEL_12:

LABEL_13:
  v55.length = objc_msgSend_length(v7, v30, v31, v32, v33, v34);
  v55.location = 0;
  v42 = CFStringTokenizerCreate(0, v7, v55, 4uLL, v8);
  *v50 = v42;
  v43 = CFStringTokenizerGoToTokenAtIndex(v42, a3);
  if (v43)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v42);
    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    if (!(v43 | a3))
    {
      goto LABEL_19;
    }
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 == 0)
    {
LABEL_19:
      if (CFStringTokenizerAdvanceToNextToken(v42))
      {
        v47 = CFStringTokenizerGetCurrentTokenRange(v42);
        if (a3 >= v47.location && (a3 - v47.location) < v47.length)
        {
          length = v47.length;
          location = v47.location;
        }
      }

      goto LABEL_22;
    }
  }

  if (location + length <= a3)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (v42)
  {
    CFRelease(v42);
  }

LABEL_24:

  v48 = location;
  v49 = length;
  result.length = v49;
  result.location = v48;
  return result;
}

+ (id)verticalBarGestureFromLineResult:(id)a3 currentGesture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_targetContentInfo(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_originalDrawing(v7, v14, v15, v16, v17, v18);
  LODWORD(a1) = objc_msgSend_isVerticalBarShapeFromLineResult_originalDrawing_isDirectionDownward_(a1, v20, v6, v19, 0, v21);

  if (!a1)
  {
    v114 = 0;
    Stroke_preferCharacterLevel = 0;
    goto LABEL_37;
  }

  v297 = v6;
  v27 = objc_msgSend_originalDrawing(v7, v22, v23, v24, v25, v26);
  objc_msgSend_bounds(v27, v28, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v302.origin.x = v34;
  v302.origin.y = v36;
  v302.size.width = v38;
  v302.size.height = v40;
  MidX = CGRectGetMidX(v302);
  v303.origin.x = v34;
  v303.origin.y = v36;
  v303.size.width = v38;
  v303.size.height = v40;
  MidY = CGRectGetMidY(v303);
  v48 = objc_msgSend_strokeCoveredTextRange(v13, v43, v44, v45, v46, v47);
  v50 = v49;
  v54 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v13, v49, v48, v51, v52, v53);
  v55 = sub_1837E11D0(MidX, MidY, CHTextInputGesture, v13, v54, v50);
  v299 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AD48], v56, v57, v58, v59, v60);
  v66 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v61, v62, v63, v64, v65);
  v72 = objc_msgSend_invertedSet(v66, v67, v68, v69, v70, v71);
  objc_msgSend_formIntersectionWithCharacterSet_(v299, v73, v72, v74, v75, v76);

  v82 = objc_msgSend_referenceSubstring(v13, v77, v78, v79, v80, v81);
  v88 = objc_msgSend_length(v82, v83, v84, v85, v86, v87);

  if (v55 == v88)
  {
    v94 = objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93);
    v100 = objc_msgSend_referenceSubstring(v13, v95, v96, v97, v98, v99);
    v106 = objc_msgSend_length(v100, v101, v102, v103, v104, v105);
    v111 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v94, v107, v106 - 1, v108, v109, v110);
    v298 = v112;
    v113 = v111;

    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_4:
      v113 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  else
  {
    if (v55 < 1 || (objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93), v116 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend_length(v116, v117, v118, v119, v120, v121), v116, v122 < v55))
    {
      v298 = 0;
      goto LABEL_4;
    }

    v248 = objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93);
    v253 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v248, v249, v55 - 1, v250, v251, v252);
    v298 = v254;
    v113 = v253;

    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  v123 = objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93);
  v128 = objc_msgSend_characterAtIndex_(v123, v124, v113, v125, v126, v127);

  if (objc_msgSend_characterIsMember_(v299, v129, v128, v130, v131, v132))
  {
    v133 = objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93);
    v139 = objc_msgSend_invertedSet(v299, v134, v135, v136, v137, v138);
    v141 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v133, v140, v139, 4, 0, v113 + v298);
    v298 = v142;
    v113 = v141;
  }

LABEL_11:
  v143 = objc_msgSend_referenceSubstring(v13, v89, v90, v91, v92, v93);
  v149 = objc_msgSend_length(v143, v144, v145, v146, v147, v148);

  if (v55 >= v149)
  {
    v162 = 0;
    v160 = 0x7FFFFFFFFFFFFFFFLL;
    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v155 = objc_msgSend_referenceSubstring(v13, v150, v151, v152, v153, v154);
    v160 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v155, v156, v55, v157, v158, v159);
    v162 = v161;

    v168 = objc_msgSend_referenceSubstring(v13, v163, v164, v165, v166, v167);
    v173 = objc_msgSend_characterAtIndex_(v168, v169, v160, v170, v171, v172);

    if (objc_msgSend_characterIsMember_(v299, v174, v173, v175, v176, v177))
    {
      v178 = objc_msgSend_referenceSubstring(v13, v150, v151, v152, v153, v154);
      v184 = objc_msgSend_invertedSet(v299, v179, v180, v181, v182, v183);
      v190 = objc_msgSend_referenceSubstring(v13, v185, v186, v187, v188, v189);
      v196 = objc_msgSend_length(v190, v191, v192, v193, v194, v195);
      v160 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v178, v197, v184, 0, v160, v196 - v160);
      v162 = v198;
    }

    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_19:
      v200 = 0;
      if (v160 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  active = objc_msgSend_activePreviewRange(v13, v150, v151, v152, v153, v154);
  if (v113 >= active && v113 - active < v150)
  {
    goto LABEL_19;
  }

  v201 = objc_msgSend_referenceSubstring(v13, v150, v151, v152, v153, v154);
  v200 = objc_msgSend_substringWithRange_(v201, v202, v113, v298, v203, v204);

  if (v160 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

LABEL_22:
  v205 = objc_msgSend_activePreviewRange(v13, v150, v151, v152, v153, v154);
  if (v160 < v205 || v160 - v205 >= v150)
  {
    v242 = objc_msgSend_referenceSubstring(v13, v150, v206, v152, v153, v154);
    v207 = objc_msgSend_substringWithRange_(v242, v243, v160, v162, v244, v245);

    if (v200 | v207)
    {
      goto LABEL_25;
    }

LABEL_31:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v246 = qword_1EA84DC80;
    if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v246, OS_LOG_TYPE_DEBUG, "No characters found on either side of the vertical bar stroke", buf, 2u);
    }

    v114 = 0;
    Stroke_preferCharacterLevel = 0;
    goto LABEL_36;
  }

LABEL_24:
  v207 = 0;
  if (!v200)
  {
    goto LABEL_31;
  }

LABEL_25:
  v296 = objc_msgSend_absoluteLocationFromRelativeLocation_(v13, v150, v160, v152, v153, v154);
  if ((objc_msgSend_isEqualToString_(v200, v208, @" ", v209, v210, v211) & 1) != 0 || objc_msgSend_isEqualToString_(v200, v212, @"　", v213, v214, v215))
  {
    v296 = objc_msgSend_absoluteLocationFromRelativeLocation_(v13, v212, v113, v213, v214, v215);
    v114 = 0;
    goto LABEL_28;
  }

  if (objc_msgSend_isEqualToString_(v207, v212, @" ", v213, v214, v215) & 1) != 0 || (objc_msgSend_isEqualToString_(v207, v255, @"　", v256, v257, v258))
  {
    v114 = 0;
    v298 = v162;
    goto LABEL_28;
  }

  v264 = 0x7FFFFFFFFFFFFFFFLL;
  if (v160 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v113 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v160 = v113 + v298;
LABEL_48:
    v264 = objc_msgSend_absoluteLocationFromRelativeLocation_(v13, v259, v160, v261, v262, v263);
  }

  v265 = objc_msgSend_locale(v7, v259, v260, v261, v262, v263);
  if (objc_msgSend_shouldUseFullWidthSpaceBasedOnContextForLocale_(CHRecognizerConfiguration, v266, v265, v267, v268, v269))
  {
    v270 = sub_1837A954C(v200);

    if (v270)
    {
      v275 = @"　";
    }

    else
    {
      v275 = @" ";
    }
  }

  else
  {

    v275 = @" ";
  }

  v296 = v264;
  v276 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v271, 0, v272, v273, v274);
  v282 = objc_msgSend_normalizedDrawing(v7, v277, v278, v279, v280, v281);
  objc_msgSend_boundsForStrokeIndexes_(v282, v283, v276, v284, v285, v286);
  v288 = v287;
  v290 = v289;
  v292 = v291;
  v294 = v293;

  v114 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_(CHTokenizedTextResult, v295, v275, v276, &stru_1EF1C0318, 0, v288, v290, v292, v294, 0.0);

  v298 = 0;
LABEL_28:
  v216 = [CHTextInputGesture alloc];
  v222 = objc_msgSend_locale(v7, v217, v218, v219, v220, v221);
  v228 = objc_msgSend_normalizedDrawing(v7, v223, v224, v225, v226, v227);
  v234 = objc_msgSend_originalDrawing(v7, v229, v230, v231, v232, v233);
  v240 = objc_msgSend_lastStroke(v7, v235, v236, v237, v238, v239);
  Stroke_preferCharacterLevel = objc_msgSend_initWithGestureType_targetContentInfo_locale_normalizedDrawing_originalDrawing_lastStroke_preferCharacterLevel_(v216, v241, 7, v13, v222, v228, v234, v240, 0);

  if (Stroke_preferCharacterLevel)
  {
    objc_storeStrong((Stroke_preferCharacterLevel + 64), v114);
    *(Stroke_preferCharacterLevel + 72) = v296;
    *(Stroke_preferCharacterLevel + 80) = v298;
  }

LABEL_36:

  v6 = v297;
LABEL_37:

  return Stroke_preferCharacterLevel;
}

+ (BOOL)isEditGestureForDrawing:(id)a3 targetContentInfo:(id)a4 tentativeResultType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!objc_msgSend_pointCount(v7, v9, v10, v11, v12, v13))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "The drawing cannot be empty", buf, 2u);
    }
  }

  if (!objc_msgSend_pointCount(v7, v14, v15, v16, v17, v18))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v261 = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_FAULT, "The drawing cannot be empty", v261, 2u);
    }
  }

  v26 = objc_msgSend_strokeCoveredTextRange(v8, v20, v21, v22, v23, v24);
  v28 = v27;
  v253 = objc_msgSend_referenceSubstringInRange_(v8, v27, v26, v27, v29, v30);
  objc_opt_self();
  if ((a5 - 4) <= 2)
  {
    v36 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v31, v32, v33, v34, v35);
    v41 = objc_msgSend_stringByTrimmingCharactersInSet_(v253, v37, v36, v38, v39, v40);
    v47 = objc_msgSend_length(v41, v42, v43, v44, v45, v46);

    if (v47 != v28)
    {
      v48 = sub_1837DFE08(CHTextInputGesture, v26, v28, a5, v7, v8);
      v52 = objc_msgSend_referenceSubstringInRange_(v8, v49, v48, v49, v50, v51);

      v253 = v52;
    }
  }

  v53 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v31, v32, v33, v34, v35);
  v58 = objc_msgSend_stringByTrimmingCharactersInSet_(v253, v54, v53, v55, v56, v57);
  v64 = objc_msgSend_length(v58, v59, v60, v61, v62, v63);

  if (v64)
  {
    goto LABEL_20;
  }

  objc_msgSend_bounds(v7, v65, v66, v67, v68, v69);
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  objc_msgSend_unionCharacterRects(v8, v78, v79, v80, v81, v82);
  x = v264.origin.x;
  y = v264.origin.y;
  width = v264.size.width;
  height = v264.size.height;
  if (CGRectIsNull(v264))
  {
    v92 = objc_msgSend_textInputTarget(v8, v87, v88, v89, v90, v91);
    objc_msgSend_frame(v92, v93, v94, v95, v96, v97);
    x = v98;
    y = v99;
    width = v100;
    height = v101;
  }

  v265.origin.x = x;
  v265.origin.y = y;
  v265.size.width = width;
  v265.size.height = height;
  MinX = CGRectGetMinX(v265);
  v266.origin.x = v71;
  v266.origin.y = v73;
  v266.size.width = v75;
  v266.size.height = v77;
  if (CGRectGetMinX(v266) <= MinX + -5.0)
  {
LABEL_20:
    v103 = MEMORY[0x1E696AC90];
    v104 = objc_msgSend_strokeCount(v7, v65, v66, v67, v68, v69);
    v108 = objc_msgSend_indexSetWithIndexesInRange_(v103, v105, 0, v104, v106, v107);
    objc_msgSend_centroidForStrokeIndexes_(v7, v109, v108, v110, v111, v112);
    v250 = v113;
    v252 = v114;

    objc_msgSend_bounds(v7, v115, v116, v117, v118, v119);
    v120 = v267.origin.x;
    v121 = v267.origin.y;
    v122 = v267.size.width;
    v123 = v267.size.height;
    v258 = CGRectGetMinX(v267);
    v268.origin.x = v120;
    v268.origin.y = v121;
    v268.size.width = v122;
    v268.size.height = v123;
    MinY = CGRectGetMinY(v268);
    v269.origin.x = v120;
    v269.origin.y = v121;
    v269.size.width = v122;
    v269.size.height = v123;
    v125 = CGRectGetMinX(v269);
    v270.origin.x = v120;
    v270.origin.y = v121;
    v270.size.width = v122;
    v270.size.height = v123;
    MaxY = CGRectGetMaxY(v270);
    v271.origin.x = v120;
    v271.origin.y = v121;
    v271.size.width = v122;
    v271.size.height = v123;
    MaxX = CGRectGetMaxX(v271);
    v272.origin.x = v120;
    v272.origin.y = v121;
    v272.size.width = v122;
    v272.size.height = v123;
    v254 = CGRectGetMaxY(v272);
    v273.origin.x = v120;
    v273.origin.y = v121;
    v273.size.width = v122;
    v273.size.height = v123;
    v127 = CGRectGetMaxX(v273);
    v274.origin.x = v120;
    v274.origin.y = v121;
    v274.size.width = v122;
    v274.size.height = v123;
    v133 = CGRectGetMinY(v274);
    v249 = v123;
    v251 = v122;
    v134.f32[0] = v258;
    v135 = MinY;
    v134.f32[1] = v135;
    v136.f32[0] = v250;
    v137 = v252;
    v136.f32[1] = v137;
    v138 = vsub_f32(v134, v136);
    v139 = sqrtf(vaddv_f32(vmul_f32(v138, v138)));
    v140.f32[0] = v125;
    v141 = MaxY;
    v140.f32[1] = v141;
    v142 = vsub_f32(v140, v136);
    v143 = sqrtf(vaddv_f32(vmul_f32(v142, v142)));
    if (v139 >= v143)
    {
      v144 = v125;
    }

    else
    {
      v144 = v258;
    }

    if (v139 >= v143)
    {
      v145 = v254;
    }

    else
    {
      MaxY = MinY;
      v145 = v133;
    }

    if (v139 >= v143)
    {
      v146 = MaxX;
    }

    else
    {
      v146 = v127;
    }

    v147 = objc_msgSend_referenceSubstringRange(v8, v128, v129, v130, v131, v132);
    v153 = v147;
    v154 = v148;
    v155 = &v148[v147];
    v156 = 0.0;
    if (v147 < &v148[v147])
    {
      v157 = 0;
      v259 = (v252 + MaxY) * 0.5;
      v256 = (v250 + v144) * 0.5;
      v159 = v147;
      do
      {
        objc_msgSend_characterRectForAbsoluteCharacterIndex_(v8, v148, v159, v150, v151, v152);
        v161 = v160;
        v163 = v162;
        v165 = v164;
        v167 = v166;
        v168 = [CHPolygon alloc];
        v174 = objc_msgSend_initWithRect_(v168, v169, v170, v171, v172, v173, v161, v163, v165, v167);
        v180 = objc_msgSend_edgeCountIntersectingLineSegment_(v174, v175, v176, v177, v178, v179, v256, v259, v250 + v251 * 0.1, v259 - (v252 - v259) / (v250 - v256) * v256 + (v252 - v259) / (v250 - v256) * (v250 + v251 * 0.1));
        v158 = (v252 + v145) * 0.5;
        v157 += v180 + objc_msgSend_edgeCountIntersectingLineSegment_(v174, v181, v182, v183, v184, v185, v250 - v251 * 0.1, v158 - (v252 - v158) / (v250 - (v250 + v146) * 0.5) * ((v250 + v146) * 0.5) + (v252 - v158) / (v250 - (v250 + v146) * 0.5) * (v250 - v251 * 0.1), (v250 + v146) * 0.5, v158);

        ++v159;
        --v154;
      }

      while (v154);
      v156 = v157;
    }

    v186 = objc_msgSend_referenceSubstring(v8, v148, v149, v150, v151, v152);
    v192 = objc_msgSend_length(v186, v187, v188, v189, v190, v191);

    if (v192 && ((objc_msgSend_referenceSubstring(v8, v193, v194, v195, v196, v197), v198 = objc_claimAutoreleasedReturnValue(), v204 = objc_msgSend_length(v198, v199, v200, v201, v202, v203), objc_msgSend_characterRectForRelativeCharacterIndex_(v8, v205, v204 - 1, v206, v207, v208), v210 = v209, v198, v251 < v210) || v156 / (v251 * v249) * 100.0 > 0.01))
    {
      v211 = 1;
    }

    else
    {
      v215 = objc_msgSend_pointCountForStrokeIndex_(v7, v193, 0, v195, v196, v197);
      v216 = 0.0;
      if (v215 >= 1)
      {
        v217 = MEMORY[0x1E695EFF8];
        v219 = *MEMORY[0x1E695EFF8];
        v218 = *(MEMORY[0x1E695EFF8] + 8);
        if (v153 < v155)
        {
          v220 = 0;
          v221 = 0;
          v222 = 0;
          objc_msgSend_pointForStrokeIndex_pointIndex_(v7, v212, 0, 0, v213, v214);
          while (1)
          {
            v257 = v228;
            v260 = v227;
            v229 = v219 == *v217 && v218 == v217[1];
            if (v229 || (v230.f32[0] = v219, v231 = v218, v230.f32[1] = v231, v232.f64[0] = v260, v232.f64[1] = v257, v233 = vsub_f32(v230, vcvt_f32_f64(v232)), sqrtf(vaddv_f32(vmul_f32(v233, v233))) >= 2.0))
            {
              v234 = v153;
              do
              {
                objc_msgSend_characterRectForAbsoluteCharacterIndex_(v8, v223, v234, v224, v225, v226);
                v263.y = v257;
                v263.x = v260;
                v235 = CGRectContainsPoint(v275, v263);
                v236 = ++v234 >= v155 || v235;
              }

              while (v236 != 1);
              v222 += v235;
              v218 = v257;
              v219 = v260;
              if (++v220 == v215)
              {
LABEL_53:
                v216 = v222;
                goto LABEL_56;
              }
            }

            else
            {
              ++v221;
              if (++v220 == v215)
              {
                goto LABEL_53;
              }
            }

            objc_msgSend_pointForStrokeIndex_pointIndex_(v7, v223, 0, v220, v225, v226);
          }
        }

        v238 = 0;
        v221 = 0;
        objc_msgSend_pointForStrokeIndex_pointIndex_(v7, v212, 0, 0, v213, v214);
        while (1)
        {
          v244 = v219 == *v217 && v218 == v217[1];
          if (v244 || (v245.f32[0] = v219, v246 = v218, v245.f32[1] = v246, v247.f64[0] = v242, v247.f64[1] = v243, v248 = vsub_f32(v245, vcvt_f32_f64(v247)), sqrtf(vaddv_f32(vmul_f32(v248, v248))) >= 2.0))
          {
            v218 = v243;
            v219 = v242;
            if (v215 == ++v238)
            {
              goto LABEL_56;
            }
          }

          else
          {
            ++v221;
            if (v215 == ++v238)
            {
              goto LABEL_56;
            }
          }

          objc_msgSend_pointForStrokeIndex_pointIndex_(v7, v239, 0, v238, v240, v241);
        }
      }

      v221 = 0;
LABEL_56:
      v211 = v216 / (v215 - v221) > 0.3;
    }
  }

  else
  {
    v211 = 0;
  }

  return v211;
}

+ (BOOL)isVerticalBarShapeFromLineResult:(id)a3 originalDrawing:(id)a4 isDirectionDownward:(BOOL *)a5
{
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_strokeCount(v8, v9, v10, v11, v12, v13) != 1 || objc_msgSend_pointCountForStrokeIndex_(v8, v14, 0, v15, v16, v17) <= 1)
  {
    v18 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_18;
  }

  v19 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = objc_msgSend_string(v19, v20, v21, v22, v23, v24);
  if (objc_msgSend_isEqualToString_(v25, v26, @"Line", v27, v28, v29))
  {
  }

  else
  {
    v40 = objc_msgSend_string(v19, v30, v31, v32, v33, v34);
    isEqualToString = objc_msgSend_isEqualToString_(v40, v41, @"Manhattan Line", v42, v43, v44);

    if (!isEqualToString)
    {
LABEL_14:
      v18 = 0;
      v83 = 0;
      goto LABEL_15;
    }
  }

  objc_msgSend_endLocation(v19, v35, v36, v37, v38, v39);
  v47 = v46;
  objc_msgSend_startLocation(v19, v48, v49, v50, v51, v52);
  v54 = v53;
  objc_msgSend_endLocation(v19, v55, v56, v57, v58, v59);
  v61 = v60;
  objc_msgSend_startLocation(v19, v62, v63, v64, v65, v66);
  if (vabdd_f64(v61, v70) >= 0.000001)
  {
    v71 = v61 - v70;
  }

  else
  {
    v71 = dbl_1839D0640[v61 - v70 < 0.0];
  }

  if (fabs((v47 - v54) / v71) <= 2.0)
  {
    goto LABEL_14;
  }

  objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v67, 0, 0, v68, v69);
  v73 = v72;
  v78 = objc_msgSend_pointCountForStrokeIndex_(v8, v74, 0, v75, v76, v77);
  objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v79, 0, v78 - 1, v80, v81);
  v83 = v82 > v73;
  v18 = 1;
LABEL_15:
  if (a5)
  {
    *a5 = v83;
  }

LABEL_18:
  return v18;
}

+ (BOOL)isDrawingCenterOnBlank:(id)a3 targetContentInfo:(id)a4 insertionLocation:(int64_t *)a5
{
  v7 = a3;
  v8 = a4;
  objc_msgSend_bounds(v7, v9, v10, v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v27 = objc_msgSend_referenceSubstringRange(v8, v22, v23, v24, v25, v26);
  v29 = v28;
  v33 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v8, v28, v27, v30, v31, v32);
  if (objc_msgSend_textContentLength(v8, v34, v35, v36, v37, v38) <= 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    goto LABEL_9;
  }

  objc_msgSend_characterRectForRelativeCharacterIndex_(v8, v39, (v29 - 1), v40, v41, v42);
  MaxY = CGRectGetMaxY(v86);
  v87.origin.x = v15;
  v87.origin.y = v17;
  v87.size.width = v19;
  v87.size.height = v21;
  if (MaxY <= CGRectGetMinY(v87))
  {
    v43 = &v29[v33];
    goto LABEL_12;
  }

  objc_msgSend_characterRectForRelativeCharacterIndex_(v8, v39, 0, v40, v41, v42);
  MinY = CGRectGetMinY(v88);
  v89.origin.x = v15;
  v89.origin.y = v17;
  v89.size.width = v19;
  v89.size.height = v21;
  if (MinY >= CGRectGetMaxY(v89))
  {
LABEL_9:
    v43 = 0;
    v47 = 1;
    if (a5)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v90.origin.x = v15;
  v90.origin.y = v17;
  v90.size.width = v19;
  v90.size.height = v21;
  MidX = CGRectGetMidX(v90);
  v91.origin.x = v15;
  v91.origin.y = v17;
  v91.size.width = v19;
  v91.size.height = v21;
  MidY = CGRectGetMidY(v91);
  if (v33 >= &v29[v33])
  {
LABEL_12:
    if ((v43 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v48 = objc_msgSend_referenceSubstring(v8, v39, v45, v40, v41, v42);
      v53 = objc_msgSend_characterAtIndex_(v48, v49, v43 - 1, v50, v51, v52);

      v59 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v54, v55, v56, v57, v58);
      LODWORD(v53) = objc_msgSend_characterIsMember_(v59, v60, v53, v61, v62, v63);

      if (v53)
      {
        --v43;
      }
    }

    v47 = 1;
    if (a5)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v83 = 1.79769313e308;
  v81 = v17;
  v82 = v15;
  v79 = v21;
  v80 = v19;
  while (1)
  {
    objc_msgSend_characterRectForRelativeCharacterIndex_(v8, v39, v33, v40, v41, v42, *&v78);
    x = v93.origin.x;
    y = v93.origin.y;
    width = v93.size.width;
    height = v93.size.height;
    if (CGRectIsNull(v93))
    {
      goto LABEL_29;
    }

    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    if (CGRectGetMinY(v94) <= MidY)
    {
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = height;
      if (CGRectGetMaxY(v95) >= MidY)
      {
        break;
      }
    }

    v96.origin.x = x;
    v96.origin.y = y;
    v96.size.width = width;
    v96.size.height = height;
    if (CGRectGetMinY(v96) >= MidY)
    {
      goto LABEL_12;
    }

LABEL_29:
    ++v33;
    if (!--v29)
    {
      goto LABEL_12;
    }
  }

  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v103.origin.x = v15;
  v103.origin.y = v17;
  v103.size.width = v19;
  v103.size.height = v21;
  v98 = CGRectIntersection(v97, v103);
  v74 = v98.origin.x;
  v75 = v98.origin.y;
  v76 = v98.size.width;
  v77 = v98.size.height;
  if (CGRectIsNull(v98) || (v99.origin.y = v81, v99.origin.x = v82, v99.size.height = v79, v99.size.width = v80, v78 = CGRectGetHeight(v99), v100.origin.x = v74, v100.origin.y = v75, v100.size.width = v76, v100.size.height = v77, CGRectGetHeight(v100) < v78 * 0.3))
  {
    v101.origin.x = x;
    v101.origin.y = y;
    v101.size.width = width;
    v101.size.height = height;
    v17 = v81;
    v15 = v82;
    v21 = v79;
    v19 = v80;
    if (MidX >= CGRectGetMidX(v101))
    {
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      v67 = MidX - CGRectGetMidX(v92);
    }

    else
    {
      v102.origin.x = x;
      v102.origin.y = y;
      v102.size.width = width;
      v102.size.height = height;
      v67 = -(MidX - CGRectGetMidX(v102));
    }

    v68 = v83;
    v69 = v67 < v83;
    if (v67 < v83)
    {
      v68 = v67;
    }

    v83 = v68;
    if (v69)
    {
      v43 = v33 + 1;
    }

    goto LABEL_29;
  }

  v47 = 0;
  if (!a5)
  {
    goto LABEL_22;
  }

LABEL_16:
  v64 = 0x7FFFFFFFFFFFFFFFLL;
  if (v43 != 0x7FFFFFFFFFFFFFFFLL && v47)
  {
    v64 = objc_msgSend_absoluteLocationFromRelativeLocation_(v8, v39, v43, v40, v41, v42);
  }

  *a5 = v64;
LABEL_22:

  return v47;
}

@end