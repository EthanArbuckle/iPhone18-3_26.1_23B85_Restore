@interface CHTextCorrectionRecognizer
+ (_NSRange)defaultTextAffectedRangeForTargetContentInfo:(id)a3;
+ (id)_improvedSingleCharacterOneColumnTextResult:(id)a3 targetContentInfo:(id)a4 insertionRange:(_NSRange)a5 locale:(id)a6 affectedRange:(_NSRange *)a7;
- (CHTextCorrectionRecognizer)initWithLocales:(id)a3 remoteRecognition:(BOOL)a4 priority:(int64_t)a5;
- (id)textCorrectionResultForDrawing:(id)a3 targetContentInfo:(id)a4 originalDrawing:(id)a5 lastStroke:(id)a6 localTypedContextBounds:(CGRect)a7 normalizedDrawingScaleFactor:(double)a8 previousCorrectionResult:(id)a9 declaredVariables:(id)a10;
@end

@implementation CHTextCorrectionRecognizer

- (CHTextCorrectionRecognizer)initWithLocales:(id)a3 remoteRecognition:(BOOL)a4 priority:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v35.receiver = self;
  v35.super_class = CHTextCorrectionRecognizer;
  v14 = [(CHTextCorrectionRecognizer *)&v35 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(v8, v9, v10, v11, v12, v13);
    locales = v14->_locales;
    v14->_locales = v15;

    v14->_isRemoteRecognition = v6;
    RecognizerForLocales_sessionMode_remote_priority = objc_msgSend_createRecognizerForLocales_sessionMode_remote_priority_(CHRecognitionSession, v17, v8, 1, v6, a5);
    textRecognizer = v14->__textRecognizer;
    v14->__textRecognizer = RecognizerForLocales_sessionMode_remote_priority;

    if (v6)
    {
      v20 = [CHRemoteSketchRecognizer alloc];
      v25 = objc_msgSend_initWithPriority_(v20, v21, a5, v22, v23, v24);
    }

    else
    {
      v25 = objc_alloc_init(CHSketchRecognizer);
    }

    shapeRecognizer = v14->__shapeRecognizer;
    v14->__shapeRecognizer = v25;

    objc_msgSend_setMaxRecognitionResultCount_(v14->__shapeRecognizer, v27, 3, v28, v29, v30);
    v31 = objc_alloc_init(CHCornerDetector);
    cornerDetector = v14->__cornerDetector;
    v14->__cornerDetector = v31;

    v33 = v14->__cornerDetector;
    if (v33)
    {
      v33->_shouldUseDynamicSampling = 0;
    }
  }

  return v14;
}

- (id)textCorrectionResultForDrawing:(id)a3 targetContentInfo:(id)a4 originalDrawing:(id)a5 lastStroke:(id)a6 localTypedContextBounds:(CGRect)a7 normalizedDrawingScaleFactor:(double)a8 previousCorrectionResult:(id)a9 declaredVariables:(id)a10
{
  height = a7.size.height;
  rect = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v1242 = *MEMORY[0x1E69E9840];
  v1225 = a3;
  v1214 = a4;
  v19 = a5;
  rect1_16 = a6;
  rect1_24 = a9;
  v1207 = a10;
  v1224 = v19;
  v25 = objc_msgSend_strokeCount(v19, v20, v21, v22, v23, v24);
  if (v25 != objc_msgSend_strokeCount(v1225, v26, v27, v28, v29, v30))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "The original and rescaled drawings should have equal stroke counts", buf, 2u);
    }
  }

  v37 = objc_msgSend_strokeCount(v19, v31, v32, v33, v34, v35);
  if (v37 != objc_msgSend_strokeCount(v1225, v38, v39, v40, v41, v42))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v48 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "The original and rescaled drawings should have equal stroke counts", buf, 2u);
    }
  }

  v49 = objc_msgSend_pointCount(v19, v43, v44, v45, v46, v47);
  if (v49 != objc_msgSend_pointCount(v1225, v50, v51, v52, v53, v54))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v60 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_ERROR, "The original and rescaled drawings should have equal total point counts", buf, 2u);
    }
  }

  v61 = objc_msgSend_pointCount(v19, v55, v56, v57, v58, v59);
  if (v61 != objc_msgSend_pointCount(v1225, v62, v63, v64, v65, v66))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v72 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v72, OS_LOG_TYPE_FAULT, "The original and rescaled drawings should have equal total point counts", buf, 2u);
    }
  }

  if (objc_msgSend_strokeCount(v1225, v67, v68, v69, v70, v71) != 1)
  {
    goto LABEL_130;
  }

  v78 = objc_msgSend_locales(self, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_firstObject(v78, v79, v80, v81, v82, v83);
  shouldAllowSpaceInsertionGestureForLocale = objc_msgSend_shouldAllowSpaceInsertionGestureForLocale_(CHRecognizerConfiguration, v85, v84, v86, v87, v88);

  if (shouldAllowSpaceInsertionGestureForLocale)
  {
    v90 = v1225;
    v91 = v1224;
    v97 = v1214;
    if (self && objc_msgSend_strokeCount(v91, v92, v93, v94, v95, v96) == 1 && objc_msgSend_pointCountForStrokeIndex_(v91, v98, 0, v99, v100, v101) >= 2 && (objc_msgSend_bounds(v91, v102, v103, v104, v105, v106), v112 < 10.0) && (objc_msgSend_bounds(v91, v107, v108, v109, v110, v111), v118 > 10.0) && (objc_msgSend_bounds(v91, v113, v114, v115, v116, v117), v120 = v119, v122 = v121, v124 = v123, v126 = v125, v127 = objc_opt_class(), v132 = objc_msgSend_defaultTextAffectedRangeForTargetContentInfo_(v127, v128, v97, v129, v130, v131), buf[0] = 0, sub_1839464FC(v97, v132, v133, buf, 0, 0, v120, v122, v124, v126, x, y, rect, height)) && (buf[0] & 1) == 0)
    {
      v1029 = objc_msgSend_sketchRecognitionResultsForDrawing_options_(self->__shapeRecognizer, v134, v90, 0, v135, v136);
      v1037 = objc_msgSend_firstObject(v1029, v1030, v1031, v1032, v1033, v1034);
      if (v1037 && objc_msgSend_isVerticalBarShapeFromLineResult_originalDrawing_isDirectionDownward_(CHTextInputGesture, v1035, v1037, v91, 0, v1036))
      {
        v1223 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v1038, 0, v1039, v1040, v1041);
        objc_msgSend_boundsForStrokeIndexes_(v90, v1042, v1223, v1043, v1044, v1045);
        v1047 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_(CHTokenizedTextResult, v1046, @" ", v1223, &stru_1EF1C0318, 0);
        v1048 = [CHTextCorrectionResult alloc];
        v1054 = objc_msgSend_textInputTarget(v97, v1049, v1050, v1051, v1052, v1053);
        isCharacterLevel_error = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v1048, v1055, v1054, v132, 0, v1047, 7, 1, 0);
      }

      else
      {
        isCharacterLevel_error = 0;
      }
    }

    else
    {
      isCharacterLevel_error = 0;
    }

    if (isCharacterLevel_error)
    {
      goto LABEL_233;
    }
  }

  v143 = v1225;
  v144 = v1224;
  v145 = v1214;
  if (self)
  {
    v146 = v143;
    v147 = v144;
    v148 = v145;
    v154 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v149, v150, v151, v152, v153);
    if (!objc_msgSend_lineBreakVerticalBarGestureEnabled(v154, v155, v156, v157, v158, v159) || objc_msgSend_strokeCount(v147, v160, v161, v162, v163, v164) != 1 || objc_msgSend_pointCountForStrokeIndex_(v147, v165, 0, v166, v167, v168) < 2 || (objc_msgSend_bounds(v147, v169, v170, v171, v172, v173), v179 >= 10.0))
    {

      goto LABEL_71;
    }

    objc_msgSend_bounds(v147, v174, v175, v176, v177, v178);
    v181 = v180 > 10.0;

    if (!v181)
    {
      goto LABEL_71;
    }

    *buf = 0x7FFFFFFFFFFFFFFFLL;
    isDrawingCenterOnBlank_targetContentInfo_insertionLocation = objc_msgSend_isDrawingCenterOnBlank_targetContentInfo_insertionLocation_(CHTextInputGesture, v182, v147, v148, buf, v183);
    LOBYTE(v1238) = 0;
    v188 = *buf == 0x7FFFFFFFFFFFFFFFLL ? 0 : isDrawingCenterOnBlank_targetContentInfo_insertionLocation;
    if (v188 != 1)
    {
      goto LABEL_71;
    }

    v1219 = objc_msgSend_sketchRecognitionResultsForDrawing_options_(self->__shapeRecognizer, v185, v146, 0, v186, v187);
    isCharacterLevel_error = objc_msgSend_firstObject(v1219, v189, v190, v191, v192, v193);
    if (!isCharacterLevel_error)
    {
LABEL_69:

LABEL_72:
      goto LABEL_73;
    }

    isDirectionDownward = objc_msgSend_isVerticalBarShapeFromLineResult_originalDrawing_isDirectionDownward_(CHTextInputGesture, v194, isCharacterLevel_error, v147, &v1238, v195);

    if ((isDirectionDownward & 1) == 0)
    {
      goto LABEL_71;
    }

    v202 = objc_msgSend_referenceSubstringRange(v148, v197, v198, v199, v200, v201);
    v1215 = v203;
    v1220 = v202;
    if ((LOBYTE(v1238) & 1) != 0 || (objc_msgSend_sharedSettings(CHTextInputProtoSettings, v203, v204, v205, v206, v207), v208 = objc_claimAutoreleasedReturnValue(), v214 = objc_msgSend_lineBreakVerticalBarUpToDelete(v208, v209, v210, v211, v212, v213), v208, (v214 & 1) == 0))
    {
      if ((objc_msgSend_isSingleLine(v148, v203, v204, v205, v206, v207) & 1) == 0)
      {
        v215 = *buf;
        v221 = 0;
        if (objc_msgSend_isCursorStrong(v148, v203, v204, v205, v206, v207) && objc_msgSend_selectedTextRange(v148, v216, v217, v218, v219, v220) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v215 = objc_msgSend_selectedTextRange(v148, v216, v222, v218, v219, v220);
          v221 = v216;
        }

        v1202 = v221;
        rect1_8a = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v216, 0, v218, v219, v220);
        objc_msgSend_boundsForStrokeIndexes_(v146, v223, rect1_8a, v224, v225, v226);
        rect1b = v215;
        v1208 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_(CHTokenizedTextResult, v227, @"\n", rect1_8a, &stru_1EF1C0318, 0);
        v228 = [CHTextCorrectionResult alloc];
        v234 = objc_msgSend_textInputTarget(v148, v229, v230, v231, v232, v233);
        isCharacterLevel_error = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v228, v235, v234, rect1b, v1202, v1208, 1, 0, 0);

        if (isCharacterLevel_error)
        {
          goto LABEL_72;
        }
      }
    }

    if ((LOBYTE(v1238) & 1) != 0 || (objc_msgSend_sharedSettings(CHTextInputProtoSettings, v203, v204, v205, v206, v207), v236 = objc_claimAutoreleasedReturnValue(), v242 = objc_msgSend_lineBreakVerticalBarUpToDelete(v236, v237, v238, v239, v240, v241), v236, !v242))
    {
LABEL_71:
      isCharacterLevel_error = 0;
      goto LABEL_72;
    }

    isCharacterLevel_error = 0;
    if (*buf < v1220 || *buf > &v1215[v1220])
    {
      goto LABEL_72;
    }

    if (objc_msgSend_isCursorStrong(v148, v243, v244, v245, v246, v247) && objc_msgSend_selectedTextRange(v148, v248, v249, v250, v251, v252) != 0x7FFFFFFFFFFFFFFFLL)
    {
      *buf = objc_msgSend_selectedTextRange(v148, v253, v254, v250, v251, v252);
      objc_msgSend_selectedTextRange(v148, v1174, v1175, v1176, v1177, v1178);
      if (v255)
      {
        v256 = objc_msgSend_selectedTextRange(v148, v255, v1179, v250, v251, v252);
        goto LABEL_63;
      }
    }

    else
    {
      v255 = 0;
    }

    v256 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_63:
    if (v256 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_68:
      v1209 = v256;
      v1216 = v255;
      v1219 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v255, 0, v250, v251, v252);
      objc_msgSend_boundsForStrokeIndexes_(v146, v275, v1219, v276, v277, v278);
      v280 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_(CHTokenizedTextResult, v279, &stru_1EF1C0318, v1219, &stru_1EF1C0318, 0);
      v281 = [CHTextCorrectionResult alloc];
      v287 = objc_msgSend_textInputTarget(v148, v282, v283, v284, v285, v286);
      isCharacterLevel_error = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v281, v288, v287, v1209, v1216, v280, 1, 0, 0);

      goto LABEL_69;
    }

    if (*buf > v1220)
    {
      v257 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v148, v255, *buf, v250, v251, v252);
      v263 = objc_msgSend_referenceSubstring(v148, v258, v259, v260, v261, v262);
      v268 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v263, v264, v257 - 1, v265, v266, v267);
      v270 = v269;

      if (v268 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v256 = objc_msgSend_absoluteLocationFromRelativeLocation_(v148, v271, v268, v272, v273, v274);
        if (v256 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v255 = v270;
          goto LABEL_68;
        }
      }
    }

    goto LABEL_71;
  }

  isCharacterLevel_error = 0;
LABEL_73:

  if (isCharacterLevel_error)
  {
    goto LABEL_233;
  }

  if (objc_msgSend_strokeCoveredTextRange(v145, v138, v139, v140, v141, v142) == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_containsCommittedStrokes(v145, v289, v290, v291, v292, v293) & 1) != 0)
  {
    goto LABEL_130;
  }

  v1221 = v143;
  v1210 = v144;
  v1203 = rect1_16;
  v294 = v145;
  v1217 = rect1_24;
  if (!self)
  {
    v430 = 0;
    goto LABEL_122;
  }

  if (objc_msgSend_strokeCoveredTextRange(v294, v295, v296, v297, v298, v299) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v305 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
    {
      v1244.location = objc_msgSend_strokeCoveredTextRange(v294, v306, v307, v308, v309, v310);
      v311 = NSStringFromRange(v1244);
      *buf = 138412290;
      *&buf[4] = v311;
      _os_log_impl(&dword_18366B000, v305, OS_LOG_TYPE_ERROR, "Invalid stroke covered range when recognizing editing gesture. %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_strokeCoveredTextRange(v294, v300, v301, v302, v303, v304) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v317 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v317, OS_LOG_TYPE_FAULT))
    {
      v1245.location = objc_msgSend_strokeCoveredTextRange(v294, v318, v319, v320, v321, v322);
      v323 = NSStringFromRange(v1245);
      *buf = 138412290;
      *&buf[4] = v323;
      _os_log_impl(&dword_18366B000, v317, OS_LOG_TYPE_FAULT, "Invalid stroke covered range when recognizing editing gesture. %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_strokeCount(v1221, v312, v313, v314, v315, v316) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v329 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
    {
      v335 = objc_msgSend_strokeCount(v1221, v330, v331, v332, v333, v334);
      *buf = 134217984;
      *&buf[4] = v335;
      _os_log_impl(&dword_18366B000, v329, OS_LOG_TYPE_ERROR, "Cannot recognize editing gesture for drawing with %ld strokes.", buf, 0xCu);
    }
  }

  if (objc_msgSend_strokeCount(v1221, v324, v325, v326, v327, v328) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v341 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v341, OS_LOG_TYPE_FAULT))
    {
      v347 = objc_msgSend_strokeCount(v1221, v342, v343, v344, v345, v346);
      *buf = 134217984;
      *&buf[4] = v347;
      _os_log_impl(&dword_18366B000, v341, OS_LOG_TYPE_FAULT, "Cannot recognize editing gesture for drawing with %ld strokes.", buf, 0xCu);
    }
  }

  if (objc_msgSend_resultType(v1217, v336, v337, v338, v339, v340) == 3 || objc_msgSend_resultType(v1217, v348, v349, v350, v351, v352) == 6)
  {
    isCharacterLevel = objc_msgSend_isCharacterLevel(v1217, v348, v349, v350, v351, v352);
  }

  else
  {
    isCharacterLevel = 0;
  }

  v354 = [CHTextInputGesture alloc];
  v360 = objc_msgSend_locales(self, v355, v356, v357, v358, v359);
  v366 = objc_msgSend_firstObject(v360, v361, v362, v363, v364, v365);
  LOBYTE(v1180) = isCharacterLevel;
  Stroke_preferCharacterLevel = objc_msgSend_initWithGestureType_targetContentInfo_locale_normalizedDrawing_originalDrawing_lastStroke_preferCharacterLevel_(v354, v367, 0, v294, v366, v1221, v1210, v1203, v1180);

  v372 = objc_msgSend_sketchRecognitionResultsForDrawing_options_(self->__shapeRecognizer, v369, v1221, 0, v370, v371);
  v378 = v372;
  if (v372)
  {
    v379 = objc_msgSend_indexOfObjectPassingTest_(v372, v373, &unk_1EF1BF4B8, v375, v376, v377);
    v392 = objc_msgSend_indexOfObjectPassingTest_(v378, v380, &unk_1EF1BF4D8, v381, v382, v383) < 2;
    v393 = objc_msgSend_indexOfObjectPassingTest_(v378, v384, &unk_1EF1BF4F8, v385, v386, v387) == 0;
    v394 = objc_msgSend_indexOfObjectPassingTest_(v378, v388, &unk_1EF1BF518, v389, v390, v391) == 0;
    v395 = v379 == 0;
  }

  else
  {
    v394 = 0;
    v393 = 0;
    v392 = 0;
    v395 = 0;
  }

  v400 = (v392 || v393) | (objc_msgSend_count(v378, v373, v374, v375, v376, v377) == 0);
  v401 = 2;
  if (v393)
  {
    v401 = 5;
  }

  if (v392)
  {
    v401 = 4;
  }

  if (v400)
  {
    v402 = v401;
  }

  else
  {
    v402 = 6;
  }

  if (((v400 | v394) & 1) == 0)
  {
    sub_183733954(self->__cornerDetector, v1221);
    if (v395)
    {
      cornerDetector = self->__cornerDetector;
      if (!cornerDetector || !cornerDetector->_directionChangeCount)
      {
        v1056 = objc_msgSend_objectAtIndexedSubscript_(v378, v396, 0, v397, v398, v399);
        v1057 = objc_opt_class();
        v1061 = objc_msgSend_verticalBarGestureFromLineResult_currentGesture_(v1057, v1058, v1056, Stroke_preferCharacterLevel, v1059, v1060);
        v1066 = v1061;
        if (v1061)
        {
          v1067 = v1061;

          Stroke_preferCharacterLevel = v1067;
        }

        else
        {
          objc_msgSend_setGestureType_(Stroke_preferCharacterLevel, v1062, 3, v1063, v1064, v1065);
        }

        goto LABEL_121;
      }
    }

    v402 = 3;
  }

  objc_msgSend_setGestureType_(Stroke_preferCharacterLevel, v396, v402, v397, v398, v399);
LABEL_121:
  LOBYTE(v1238) = 0;
  objc_msgSend_getAffectedRange_expandedToFullTokens_(Stroke_preferCharacterLevel, v404, buf, &v1238, v405, v406);
  v407 = LOBYTE(v1238);
  v408 = [CHTextCorrectionResult alloc];
  v414 = objc_msgSend_textInputTarget(v294, v409, v410, v411, v412, v413);
  v415 = *buf;
  v416 = *&buf[8];
  v422 = objc_msgSend_textResult(Stroke_preferCharacterLevel, v417, v418, v419, v420, v421);
  v428 = objc_msgSend_gestureType(Stroke_preferCharacterLevel, v423, v424, v425, v426, v427);
  v430 = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v408, v429, v414, v415, v416, v422, v428, (v407 ^ 1) & 1, 0);

LABEL_122:
  v436 = objc_msgSend_resultType(v430, v431, v432, v433, v434, v435);
  if (objc_msgSend_shouldReclassifyGestureType_(CHTextInputGesture, v437, v436, v438, v439, v440))
  {
    v446 = objc_msgSend_resultType(v430, v441, v442, v443, v444, v445);
    if ((objc_msgSend_isEditGestureForDrawing_targetContentInfo_tentativeResultType_(CHTextInputGesture, v447, v1210, v294, v446, v448) & 1) == 0)
    {

      goto LABEL_130;
    }
  }

  if (objc_msgSend_resultType(v1217, v441, v442, v443, v444, v445) == 6)
  {
    v449 = sub_183946134(self, v1217, v1210, v1203, v294);
  }

  else
  {
    v449 = v430;
  }

  isCharacterLevel_error = v449;

  if (!isCharacterLevel_error)
  {
LABEL_130:
    v450 = objc_opt_class();
    v1218 = objc_msgSend_defaultTextAffectedRangeForTargetContentInfo_(v450, v451, v1214, v452, v453, v454);
    v456 = v455;
    v1204 = v1225;
    v1211 = v1214;
    rect1_8 = v1224;
    v1194 = v1207;
    if (!self)
    {
      isCharacterLevel_error = 0;
LABEL_232:

      goto LABEL_233;
    }

    v1227[0] = 0;
    *&v1227[1] = y;
    v1227[2] = 0x3FF0000000000000;
    *&v1227[3] = height * a8;
    v1193 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v457, v1227, "{CGRect={CGPoint=dd}{CGSize=dd}}", v458, v459);
    v1222 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF90], v460, v1193, v461, v462, v463, CHRecognitionOptionFrameContext, 0);
    objc_msgSend_bounds(v1204, v464, v465, v466, v467, v468);
    v470 = v469;
    v472 = v471;
    v474 = v473;
    v476 = v475;
    v482 = objc_msgSend_referenceSubstring(v1211, v477, v478, v479, v480, v481);
    v488 = objc_msgSend_length(v482, v483, v484, v485, v486, v487) == 0;

    if (v488)
    {
      v499 = objc_msgSend_textInputTarget(v1211, v489, v490, v491, v492, v493);
      objc_msgSend_frame(v499, v500, v501, v502, v503, v504);
      MinY = CGRectGetMinY(v1248);
      v1249.origin.x = v470;
      v1249.origin.y = v472;
      v1249.size.width = v474;
      v1249.size.height = v476;
      v506 = CGRectGetMinY(v1249);

      v498 = MinY - v506;
      if (fabs(MinY - v506) <= 8.98846567e307)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v1246.origin.x = x;
      v1246.origin.y = y;
      v1246.size.width = rect;
      v1246.size.height = height;
      v494 = CGRectGetMinY(v1246);
      v1247.origin.x = v470;
      v1247.origin.y = v472;
      v1247.size.width = v474;
      v1247.size.height = v476;
      v498 = v494 - CGRectGetMinY(v1247) + -16.0;
      if (fabs(v498) <= 8.98846567e307)
      {
        goto LABEL_140;
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v507 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v507, OS_LOG_TYPE_ERROR, "Anchor point has a dummy large value, resetting to zero.", buf, 2u);
    }

    v498 = 0.0;
LABEL_140:
    v508.f64[0] = a8;
    v508.f64[1] = v498 * a8;
    v1226 = vmulq_f64(v508, xmmword_1839DA1B0);
    v1192 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v495, &v1226, "{CGPoint=dd}", v496, v497);
    objc_msgSend_setObject_forKey_(v1222, v509, v1192, CHRecognitionOptionDrawingAnchorPoint, v510, v511);
    v512 = v1211;
    v518 = objc_msgSend_referenceSubstring(v512, v513, v514, v515, v516, v517);
    v523 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v512, v519, v1218, v520, v521, v522);
    v529 = objc_msgSend_length(v518, v524, v525, v526, v527, v528);
    v535 = 0;
    if (v529 && (v523 & 0x8000000000000000) == 0)
    {
      if (v523 <= objc_msgSend_length(v518, v530, v531, v532, v533, v534))
      {
        v535 = objc_msgSend_substringToIndex_(v518, v536, v523, v537, v538, v539);
      }

      else
      {
        v535 = 0;
      }
    }

    v1213 = v535;

    if (v456)
    {
LABEL_156:
      v1190 = 0;
      rect1 = 1;
      v594 = v1213;
      if (!v1213)
      {
        goto LABEL_174;
      }

      goto LABEL_157;
    }

    v545 = rect1_8;
    v546 = v512;
    v552 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v547, v548, v549, v550, v551);
    if (objc_msgSend_autoLineBreakEnabled(v552, v553, v554, v555, v556, v557) && (objc_msgSend_isSingleLine(v546, v558, v559, v560, v561, v562) & 1) == 0 && objc_msgSend_supportsAutoLineBreaks(v546, v563, v564, v565, v566, v567))
    {
      v573 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v568, v569, v570, v571, v572);
      if (!objc_msgSend_autoLineBreakRequireWeakCursor(v573, v574, v575, v576, v577, v578) || (objc_msgSend_isCursorStrong(v546, v579, v580, v581, v582, v583) & 1) == 0)
      {
        objc_msgSend_strokeCoveredTextRange(v546, v579, v580, v581, v582, v583);
        if (!v588 && (objc_msgSend_containsCommittedStrokes(v546, 0, v584, v585, v586, v587) & 1) == 0)
        {
          objc_msgSend_referenceSubstringRange(v546, v589, v590, v591, v592, v593);
          v1002 = v1001 == 0;

          if (!v1002)
          {
            objc_msgSend_bounds(v545, v1003, v1004, v1005, v1006, v1007);
            rect1a = v1008;
            v1189 = v1010;
            v1191 = v1009;
            v1188 = v1011;
            v1017 = objc_msgSend_referenceSubstring(v546, v1012, v1013, v1014, v1015, v1016);
            hasSuffix = objc_msgSend_hasSuffix_(v1017, v1018, @"\n\n", v1019, v1020, v1021);

            if (hasSuffix)
            {
              v1028 = 2;
            }

            else
            {
              v1068 = objc_msgSend_referenceSubstring(v546, v1023, v1024, v1025, v1026, v1027);
              LODWORD(v1028) = objc_msgSend_hasSuffix_(v1068, v1069, @"\n", v1070, v1071, v1072);

              v1028 = v1028;
            }

            objc_msgSend_referenceSubstringRange(v546, v1023, v1024, v1025, v1026, v1027);
            v1077 = &v1073[~v1028];
            if (v1077 >= 1)
            {
              objc_msgSend_characterRectForRelativeCharacterIndex_(v546, v1073, v1077, v1074, v1075, v1076);
              v1079 = v1078;
              v1081 = v1080;
              v1083 = v1082;
              v1085 = v1084;
              v1250.origin.x = rect1a;
              v1250.size.width = v1189;
              v1250.origin.y = v1191;
              v1250.size.height = v1188;
              v1185 = CGRectGetMinY(v1250);
              v1251.origin.x = v1079;
              v1251.origin.y = v1081;
              v1251.size.width = v1083;
              v1251.size.height = v1085;
              MaxY = CGRectGetMaxY(v1251);
              v1092 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v1087, v1088, v1089, v1090, v1091);
              objc_msgSend_autoLineBreakMinVerticalDistance(v1092, v1093, v1094, v1095, v1096, v1097);
              v1098 = v1185 - MaxY;
              v1100 = v1098 < v1099;

              if (!v1100)
              {
                v1106 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v1101, v1102, v1103, v1104, v1105);
                objc_msgSend_autoLineBreakDualBreakVerticalDistance(v1106, v1107, v1108, v1109, v1110, v1111);
                v1113 = v1098 < v1112 ? 1 : 2;

                v1119 = v1113 - v1028;
                if (v1119 >= 1)
                {
                  v1120 = objc_msgSend_textInputTarget(v546, v1114, v1115, v1116, v1117, v1118);
                  objc_msgSend_frame(v1120, v1121, v1122, v1123, v1124, v1125);
                  v1186 = v1126;
                  v1128 = v1127;
                  v1130 = v1129;
                  v1132 = v1131;

                  v1238 = 0.0;
                  v1239 = &v1238;
                  v1240 = 0x2020000000;
                  v1241 = 0xFFEFFFFFFFFFFFFFLL;
                  *&v1228 = 0.0;
                  v1229 = &v1228;
                  v1230 = 0x2020000000;
                  v1231 = 0x7FEFFFFFFFFFFFFFLL;
                  v1138 = objc_msgSend_referenceSubstringRange(v546, v1133, v1134, v1135, v1136, v1137);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  v1234 = sub_183946A1C;
                  v1235 = &unk_1E6DE0450;
                  v1236 = &v1238;
                  v1237 = &v1228;
                  objc_msgSend_enumerateCharacterRectsInRange_reverse_block_(v546, v1139, v1138, v1139, 1, buf);
                  v1140 = v1239[3];
                  if (v1140 == -1.79769313e308 || (v1252.origin.x = v1128, v1252.origin.y = v1130, v1252.size.width = v1132, v1252.size.height = v1186, v1140 > CGRectGetMaxX(v1252)) || (v1141 = v1239[3], v1253.origin.x = v1128, v1253.origin.y = v1130, v1253.size.width = v1132, v1253.size.height = v1186, MaxX = CGRectGetMaxX(v1253), v1254.origin.x = v1128, v1254.origin.y = v1130, v1254.size.width = v1132, v1254.size.height = v1186, v1141 <= MaxX + CGRectGetWidth(v1254) * -0.25))
                  {
                    v1255.origin.x = v1128;
                    v1255.origin.y = v1130;
                    v1255.size.width = v1132;
                    v1255.size.height = v1186;
                    v1239[3] = CGRectGetMaxX(v1255);
                  }

                  v1143 = *(v1229 + 3);
                  if (v1143 == 1.79769313e308 || (v1256.origin.x = v1128, v1256.origin.y = v1130, v1256.size.width = v1132, v1256.size.height = v1186, v1143 < CGRectGetMinX(v1256)) || (v1144 = *(v1229 + 3), v1257.origin.x = v1128, v1257.origin.y = v1130, v1257.size.width = v1132, v1257.size.height = v1186, MinX = CGRectGetMinX(v1257), v1258.origin.x = v1128, v1258.origin.y = v1130, v1258.size.width = v1132, v1258.size.height = v1186, v1144 >= MinX + CGRectGetWidth(v1258) * 0.25))
                  {
                    v1259.origin.x = v1128;
                    v1259.origin.y = v1130;
                    v1259.size.width = v1132;
                    v1259.size.height = v1186;
                    *(v1229 + 3) = CGRectGetMinX(v1259);
                  }

                  v1151 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v1146, v1147, v1148, v1149, v1150);
                  objc_msgSend_autoLineBreakAreaWidthFactor(v1151, v1152, v1153, v1154, v1155, v1156);
                  v1158 = v1157;

                  v1164 = objc_msgSend_baseWritingDirection(v546, v1159, v1160, v1161, v1162, v1163);
                  v1165 = v1132 * v1158;
                  v1166 = v1164 == 1 ? v1239[3] - v1165 : *(v1229 + 3);
                  v1260.origin.x = rect1a;
                  v1260.size.width = v1189;
                  v1260.origin.y = v1191;
                  v1167 = v1186;
                  v1260.size.height = v1188;
                  v1168 = v1130;
                  v1169 = CGRectIntersectsRect(v1260, *(&v1165 - 2));
                  _Block_object_dispose(&v1228, 8);
                  _Block_object_dispose(&v1238, 8);
                  if (v1169)
                  {

                    v594 = objc_msgSend_stringByAppendingString_(v1213, v1170, @"\n", v1171, v1172, v1173);

                    rect1 = 0;
                    v1190 = v1119 & ~(v1119 >> 63);
                    v1213 = v594;
                    if (!v594)
                    {
                      goto LABEL_174;
                    }

LABEL_157:
                    if (objc_msgSend_length(v594, v540, v541, v542, v543, v544))
                    {
                      v600 = objc_msgSend_length(v594, v595, v596, v597, v598, v599);
                      v605 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v594, v601, v600 - 1, v602, v603, v604);
                      v609 = objc_msgSend_substringWithRange_(v594, v606, v605, v606, v607, v608);
                    }

                    else
                    {
                      v609 = &stru_1EF1C0318;
                    }

                    objc_msgSend_bounds(rect1_8, v595, v596, v597, v598, v599);
                    v611 = v610;
                    v613 = v612;
                    v615 = v614;
                    v617 = v616;
                    v618 = v512;
                    v1238 = 0.0;
                    *&v1228 = 6.0;
                    v1232 = 0;
                    v619 = sub_1839464FC(v618, v1218, v456, &v1232, &v1238, &v1228, v611, v613, v615, v617, x, y, rect, height);
                    if (v1232)
                    {
                      v625 = 1;
                    }

                    else
                    {
                      v626 = v1238;
                      v627 = *&v1228;
                      if ((!v619 || v626 > v627 || !v619 && v626 < 0.0) | objc_msgSend_containsCommittedStrokes(v618, v620, v621, v622, v623, v624) & 1)
                      {
                        v625 = 2;
                      }

                      else
                      {
                        v625 = 1;
                      }
                    }

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v628 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v628, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134217984;
                      *&buf[4] = v625;
                      _os_log_impl(&dword_18366B000, v628, OS_LOG_TYPE_DEBUG, "SpaceBehavior: %li", buf, 0xCu);
                    }

                    objc_msgSend_setObject_forKey_(v1222, v629, v1213, CHRecognitionOptionTextBefore, v630, v631);
                    v636 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v632, v625, v633, v634, v635);
                    objc_msgSend_setObject_forKey_(v1222, v637, v636, CHRecognitionOptionPrecedingSpaceBehavior, v638, v639);

                    if (rect1 && objc_msgSend_lastCharacterLevelPosition(v618, v640, v641, v642, v643, v644) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_lastCharacterLevelPosition(v618, v645, v646, v647, v648, v649) == v1218)
                    {
                      objc_msgSend_setObject_forKey_(v1222, v650, MEMORY[0x1E695E118], CHRecognitionOptionIsPreviousResultCharacterLevel, v651, v652);
                    }

LABEL_174:
                    v653 = v512;
                    v659 = objc_msgSend_referenceSubstring(v653, v654, v655, v656, v657, v658);
                    v664 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v653, v660, v1218 + v456, v661, v662, v663);
                    recta = 0;
                    if (objc_msgSend_length(v659, v665, v666, v667, v668, v669) && (v664 & 0x8000000000000000) == 0)
                    {
                      if (v664 <= objc_msgSend_length(v659, v670, v671, v672, v673, v674))
                      {
                        v679 = objc_msgSend_substringFromIndex_(v659, v675, v664, v676, v677, v678);
                        v684 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v680, @"%C", v681, v682, v683, 65532);
                        recta = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v679, v685, v684, &stru_1EF1C0318, v686, v687);
                      }

                      else
                      {
                        recta = 0;
                      }
                    }

                    if (recta)
                    {
                      objc_msgSend_setObject_forKey_(v1222, v688, recta, CHRecognitionOptionTextAfter, v691, v692);
                    }

                    v693 = objc_msgSend_locales(self, v688, v689, v690, v691, v692);
                    objc_msgSend_firstObject(v693, v694, v695, v696, v697, v698);
                    v699 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    v1238 = v699;
                    v703 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v700, &v1238, 1, v701, v702);
                    objc_msgSend_setObject_forKey_(v1222, v704, v703, CHRecognitionOptionModelInputLocales, v705, v706);

                    v707 = self->__textRecognizer;
                    objc_opt_class();
                    LOBYTE(v693) = objc_opt_isKindOfClass();

                    v708 = self->__textRecognizer;
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (v693)
                    {
                      if (qword_1EA84DC48 != -1)
                      {
                        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                      }

                      v715 = qword_1EA84DC80;
                      if (os_log_type_enabled(v715, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_18366B000, v715, OS_LOG_TYPE_DEBUG, "Running local recognition", buf, 2u);
                      }

                      v716 = self->__textRecognizer;
                      v722 = objc_msgSend_contentType(v653, v717, v718, v719, v720, v721);
                      objc_msgSend_setContentType_(v716, v723, v722, v724, v725, v726);
                      v732 = objc_msgSend_autoCapitalizationMode(v653, v727, v728, v729, v730, v731);
                      objc_msgSend_setAutoCapitalizationMode_(v716, v733, v732, v734, v735, v736);
                      v742 = objc_msgSend_autoCorrectionMode(v653, v737, v738, v739, v740, v741);
                      objc_msgSend_setAutoCorrectionMode_(v716, v743, v742, v744, v745, v746);
                      v752 = objc_msgSend_baseWritingDirection(v653, v747, v748, v749, v750, v751);
                      objc_msgSend_setBaseWritingDirection_(v716, v753, v752, v754, v755, v756);
                      v758 = objc_msgSend_textRecognitionResultForDrawing_options_writingStatistics_principalPoints_shouldCancel_(v716, v757, v1204, v1222, 0, 0, 0);

                      v759 = 0;
                      if (v758)
                      {
                        v760 = 0;
                        goto LABEL_195;
                      }

                      v808 = 0;
                      v760 = 0;
                      if (!v456)
                      {
                        goto LABEL_204;
                      }

LABEL_196:
                      v809 = objc_msgSend_referenceSubstringInRange_(v653, v710, v1218, v456, v713, v714);
                      v810 = v759;
                      v811 = v809;
                      objc_opt_self();
                      v812 = v810;
                      v818 = v812;
                      v759 = v812;
                      if (v811)
                      {
                        v824 = objc_msgSend_topTranscription(v812, v813, v814, v815, v816, v817);
                        v759 = v818;
                        if (v824)
                        {
                          v825 = objc_msgSend_topTranscription(v818, v819, v820, v821, v822, v823);
                          isEqualToString = objc_msgSend_isEqualToString_(v825, v826, v811, v827, v828, v829);

                          v759 = v818;
                          if (isEqualToString)
                          {
                            v836 = objc_msgSend_transcriptionPaths(v818, v831, v832, v833, v834, v835);
                            v842 = objc_msgSend_mutableCopy(v836, v837, v838, v839, v840, v841);

                            v848 = objc_msgSend_tokenColumnCount(v818, v843, v844, v845, v846, v847);
                            v1187 = objc_msgSend_firstObject(v842, v849, v850, v851, v852, v853);
                            for (i = 1; ; ++i)
                            {
                              if (i >= objc_msgSend_count(v842, v854, v855, v856, v857, v858))
                              {
                                v759 = v818;
                                goto LABEL_224;
                              }

                              v864 = objc_msgSend_objectAtIndexedSubscript_(v842, v860, i, v861, v862, v863);
                              v866 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v818, v865, v864, 0, v848, 0);

                              if ((objc_msgSend_isEqualToString_(v866, v867, v811, v868, v869, v870) & 1) == 0)
                              {
                                break;
                              }
                            }

                            v1181 = objc_msgSend_objectAtIndexedSubscript_(v842, v871, i, v872, v873, v874);
                            objc_msgSend_setObject_atIndexedSubscript_(v842, v924, v1181, 0, v925, v926);
                            objc_msgSend_setObject_atIndexedSubscript_(v842, v927, v1187, i, v928, v929);
                            v930 = [CHTokenizedTextResult alloc];
                            v1182 = objc_msgSend_tokenColumns(v818, v931, v932, v933, v934, v935);
                            v1183 = objc_msgSend_transcriptionPathScores(v818, v936, v937, v938, v939, v940);
                            v1184 = objc_msgSend_trailingSeparator(v818, v941, v942, v943, v944, v945);
                            v951 = objc_msgSend_recognizerGenerationIdentifier(v818, v946, v947, v948, v949, v950);
                            v957 = objc_msgSend_originalTokens(v818, v952, v953, v954, v955, v956);
                            v759 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v930, v958, v1182, v842, v1183, v1184, v951, v957);

LABEL_224:
                          }
                        }
                      }

                      goto LABEL_226;
                    }

                    if ((isKindOfClass & 1) == 0)
                    {
                      v759 = 0;
                      v760 = 0;
                      v808 = 0;
                      if (!v456)
                      {
                        goto LABEL_204;
                      }

                      goto LABEL_196;
                    }

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v761 = qword_1EA84DC80;
                    if (os_log_type_enabled(v761, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_18366B000, v761, OS_LOG_TYPE_DEBUG, "Running remote recognition", buf, 2u);
                    }

                    v762 = self->__textRecognizer;
                    v768 = objc_msgSend_contentType(v653, v763, v764, v765, v766, v767);
                    objc_msgSend_setContentType_(v762, v769, v768, v770, v771, v772);
                    v778 = objc_msgSend_autoCapitalizationMode(v653, v773, v774, v775, v776, v777);
                    objc_msgSend_setAutoCapitalizationMode_(v762, v779, v778, v780, v781, v782);
                    v788 = objc_msgSend_autoCorrectionMode(v653, v783, v784, v785, v786, v787);
                    objc_msgSend_setAutoCorrectionMode_(v762, v789, v788, v790, v791, v792);
                    v798 = objc_msgSend_baseWritingDirection(v653, v793, v794, v795, v796, v797);
                    objc_msgSend_setBaseWritingDirection_(v762, v799, v798, v800, v801, v802);
                    objc_msgSend_setDeclaredVariables_(v762, v803, v1194, v804, v805, v806);
                    *&v1228 = 0.0;
                    v758 = objc_msgSend_textRecognitionResultForDrawing_options_principalPoints_error_(v762, v807, v1204, v1222, 0, &v1228);
                    v760 = v1228;
                    if (v758)
                    {

LABEL_195:
                      v808 = objc_msgSend_tokenColumnCount(v758, v710, v711, v712, v713, v714) == 1;
                      v759 = v758;
                      if (v456)
                      {
                        goto LABEL_196;
                      }

LABEL_204:
                      if (!v808)
                      {
                        v456 = 0;
                        v896 = 0;
LABEL_228:
                        if (rect1)
                        {
                          v959 = v759;
                        }

                        else
                        {
                          v959 = objc_msgSend_mutableCopy(v759, v710, v711, v712, v713, v714);
                          objc_msgSend_setPrecedingLineBreaks_(v959, v960, v1190, v961, v962, v963);
                        }

                        v964 = [CHTextCorrectionResult alloc];
                        v970 = objc_msgSend_textInputTarget(v653, v965, v966, v967, v968, v969);
                        isCharacterLevel_error = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v964, v971, v970, v1218, v456, v959, 1, v896, v760);

                        goto LABEL_232;
                      }

                      v811 = objc_msgSend_topTranscription(v759, v710, v711, v712, v713, v714);
                      if (objc_msgSend_length(v811, v875, v876, v877, v878, v879))
                      {
                        objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v811, v880, 0, v881, v882, v883);
                        v885 = v884;
                        v890 = objc_msgSend_length(v811, v884, v886, v887, v888, v889);
                        v896 = v885 == v890;
                        if (v885 == v890)
                        {
                          v897 = rect1;
                        }

                        else
                        {
                          v897 = 0;
                        }

                        if (v897 == 1)
                        {
                          if (objc_msgSend_lastCharacterLevelPosition(v653, v891, v892, v893, v894, v895) == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_lastCharacterLevelPosition(v653, v898, v899, v900, v901, v902) != v1218)
                          {
                            v456 = 0;
                            v896 = 1;
                          }

                          else
                          {
                            *buf = xmmword_1839D0630;
                            v908 = objc_msgSend_locales(self, v903, v904, v905, v906, v907);
                            v914 = objc_msgSend_firstObject(v908, v909, v910, v911, v912, v913);
                            v916 = objc_msgSend__improvedSingleCharacterOneColumnTextResult_targetContentInfo_insertionRange_locale_affectedRange_(CHTextCorrectionRecognizer, v915, v759, v653, v1218, v456, v914, buf);

                            v456 = *&buf[8];
                            v1218 = *buf;
                            v896 = 1;
                            v759 = v916;
                          }
                        }

                        else
                        {
                          v456 = 0;
                        }

                        goto LABEL_227;
                      }

                      v456 = 0;
LABEL_226:
                      v896 = 0;
LABEL_227:

                      goto LABEL_228;
                    }

                    if (qword_1EA84DC48 == -1)
                    {
                      v917 = qword_1EA84DC80;
                      if (!os_log_type_enabled(v917, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_219;
                      }
                    }

                    else
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                      v917 = qword_1EA84DC80;
                      if (!os_log_type_enabled(v917, OS_LOG_TYPE_ERROR))
                      {
LABEL_219:

                        v759 = 0;
                        v808 = 0;
                        if (!v456)
                        {
                          goto LABEL_204;
                        }

                        goto LABEL_196;
                      }
                    }

                    v923 = objc_msgSend_description(v760, v918, v919, v920, v921, v922);
                    *buf = 138412290;
                    *&buf[4] = v923;
                    _os_log_impl(&dword_18366B000, v917, OS_LOG_TYPE_ERROR, "Remote Recognition error: %@", buf, 0xCu);

                    goto LABEL_219;
                  }
                }
              }
            }
          }

          goto LABEL_155;
        }
      }
    }

LABEL_155:
    goto LABEL_156;
  }

LABEL_233:
  v972 = objc_msgSend_textResult(isCharacterLevel_error, v138, v139, v140, v141, v142);
  v973 = v972 == 0;

  if (!v973)
  {
    v979 = objc_msgSend_textResult(isCharacterLevel_error, v974, v975, v976, v977, v978);
    isValid = objc_msgSend_isValid(v979, v980, v981, v982, v983, v984);

    if ((isValid & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v991 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v991, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v991, OS_LOG_TYPE_ERROR, "Expected nil or valid tokenized result as output of CHTextCorrectionRecognizer.", buf, 2u);
      }
    }

    v992 = objc_msgSend_textResult(isCharacterLevel_error, v986, v987, v988, v989, v990);
    v998 = objc_msgSend_isValid(v992, v993, v994, v995, v996, v997);

    if ((v998 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v999 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v999, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v999, OS_LOG_TYPE_FAULT, "Expected nil or valid tokenized result as output of CHTextCorrectionRecognizer.", buf, 2u);
      }
    }
  }

  return isCharacterLevel_error;
}

+ (_NSRange)defaultTextAffectedRangeForTargetContentInfo:(id)a3
{
  v3 = a3;
  active = objc_msgSend_activePreviewRange(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_selectedTextRange(v3, v10, v11, v12, v13, v14);
  if (active == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v16;
      active = v15;
      goto LABEL_6;
    }

    active = objc_msgSend_textContentLength(v3, v16, v17, v18, v19, v20);
  }

  v21 = 0;
LABEL_6:

  v22 = active;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

+ (id)_improvedSingleCharacterOneColumnTextResult:(id)a3 targetContentInfo:(id)a4 insertionRange:(_NSRange)a5 locale:(id)a6 affectedRange:(_NSRange *)a7
{
  length = a5.length;
  location = a5.location;
  v697 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v660 = a4;
  v664 = a6;
  v661 = v11;
  if (objc_msgSend_tokenColumnCount(v11, v12, v13, v14, v15, v16) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v22 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = objc_msgSend_tokenColumnCount(v11, v23, v24, v25, v26, v27);
      _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "Unexpected number of token columns in text result refinement for single character mode. Expected 1 token column, got %lu", buf, 0xCu);
    }
  }

  if (objc_msgSend_tokenColumnCount(v11, v17, v18, v19, v20, v21) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v39 = objc_msgSend_tokenColumnCount(v11, v34, v35, v36, v37, v38);
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "Unexpected number of token columns in text result refinement for single character mode. Expected 1 token column, got %lu", buf, 0xCu);
    }
  }

  objc_msgSend_referenceSubstringRange(v660, v28, v29, v30, v31, v32);
  if (!v40 || (v45 = objc_msgSend_referenceSubstringRange(v660, v40, v41, v42, v43, v44), !location) || location < v45 || length || (v50 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v660, v46, location, v47, v48, v49), objc_msgSend_referenceSubstring(v660, v51, v52, v53, v54, v55), v56 = objc_claimAutoreleasedReturnValue(), v642 = objc_msgSend_rangeOfTokenAtCharacterIndex_inString_locale_(CHTextInputGesture, v57, v50 - 1, v56, v664, v58), v60 = v59, v56, v642 == 0x7FFFFFFFFFFFFFFFLL) || ((v641 = v50 - v642, v50 - v642 < v60) ? (v66 = v50 >= v642) : (v66 = 0), !v66 && v642 + v60 != v50))
  {
    v67 = v11;
    goto LABEL_24;
  }

  v69 = objc_msgSend_referenceSubstring(v660, v61, v62, v63, v64, v65);
  v665 = objc_msgSend_substringWithRange_(v69, v70, v642, v641, v71, v72);

  v78 = objc_msgSend_tokenColumns(v11, v73, v74, v75, v76, v77);
  v644 = objc_msgSend_firstObject(v78, v79, v80, v81, v82, v83);

  v645 = objc_alloc_init(CHMutableTokenizedResultColumn);
  v89 = objc_msgSend_transcriptionPaths(v11, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_firstObject(v89, v90, v91, v92, v93, v94);
  v659 = objc_msgSend_indexAtPosition_(v95, v96, 0, v97, v98, v99);

  v646 = objc_msgSend_array(MEMORY[0x1E695DF70], v100, v101, v102, v103, v104);
  v647 = objc_msgSend_array(MEMORY[0x1E695DF70], v105, v106, v107, v108, v109);
  v662 = 0;
LABEL_28:
  v115 = objc_msgSend_textTokenRows(v644, v110, v111, v112, v113, v114);
  v121 = v662 < objc_msgSend_count(v115, v116, v117, v118, v119, v120);

  if (v121)
  {
    v673 = objc_msgSend_array(MEMORY[0x1E695DF70], v122, v123, v124, v125, v126);
    v685 = 0u;
    v686 = 0u;
    v683 = 0u;
    v684 = 0u;
    v132 = objc_msgSend_textTokenRows(v644, v127, v128, v129, v130, v131);
    obj = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v662, v134, v135, v136);

    v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v137, &v683, v696, 16, v138);
    if (!v139)
    {
      v682 = 0;
      v675 = 0;
      v649 = 0.0;
      v658 = 0.0;
      v672 = 0.0;
      goto LABEL_72;
    }

    v682 = 0;
    v675 = 0;
    v671 = *v684;
    v145 = 1;
    v649 = 0.0;
    v658 = 0.0;
    v672 = 0.0;
    while (1)
    {
      v674 = v139;
      for (i = 0; i != v674; ++i)
      {
        if (*v684 != v671)
        {
          objc_enumerationMutation(obj);
        }

        v147 = *(*(&v683 + 1) + 8 * i);
        v148 = objc_msgSend_properties(v147, v140, v141, v142, v143, v144);
        if (v145)
        {
          v154 = v148;
          v155 = objc_msgSend_string(v147, v149, v150, v151, v152, v153);
          v161 = objc_msgSend_autoCapitalizationMode(v660, v156, v157, v158, v159, v160);
          if ((v161 - 1) < 3)
          {
            goto LABEL_40;
          }

          if (v161 == 4)
          {
            v681 = objc_msgSend_uppercaseStringWithLocale_(v155, v162, v664, v163, v164, v165);
LABEL_41:

            objc_msgSend_stringByAppendingString_(v665, v166, v681, v167, v168, v169);
          }

          else
          {
            if (v161 == 5)
            {
LABEL_40:
              v681 = objc_msgSend_lowercaseStringWithLocale_(v155, v162, v664, v163, v164, v165);
              goto LABEL_41;
            }

            v681 = v155;
            objc_msgSend_stringByAppendingString_(v665, v162, v155, v163, v164, v165);
          }
          v680 = ;
          v170 = [CHTokenizedTextResultToken alloc];
          v176 = objc_msgSend_strokeIndexes(v147, v171, v172, v173, v174, v175);
          v182 = objc_msgSend_wordID(v147, v177, v178, v179, v180, v181);
          objc_msgSend_recognitionScore(v147, v183, v184, v185, v186, v187);
          v189 = v188;
          objc_msgSend_recognitionScore(v147, v190, v191, v192, v193, v194);
          v196 = v195;
          objc_msgSend_combinedScore(v147, v197, v198, v199, v200, v201);
          v203 = v202;
          objc_msgSend_alignmentScore(v147, v204, v205, v206, v207, v208);
          v210 = v209;
          v216 = objc_msgSend_recognizerSourceLocale(v147, v211, v212, v213, v214, v215);
          v666 = v210;
          v669 = v203;
          v676 = v196;
          v678 = v189;
          v222 = objc_msgSend_inputSources(v147, v217, v218, v219, v220, v221);
          v228 = objc_msgSend_substrokeCount(v147, v223, v224, v225, v226, v227);
          objc_msgSend_bounds(v147, v229, v230, v231, v232, v233);
          v235 = v234;
          v237 = v236;
          v239 = v238;
          v241 = v240;
          objc_msgSend_originalBounds(v147, v242, v243, v244, v245, v246);
          v253 = v252;
          v255 = v254;
          v257 = v256;
          v259 = v258;
          if (v147)
          {
            objc_msgSend_principalLines(v147, v247, v248, v249, v250, v251);
          }

          else
          {
            v694 = 0u;
            v695 = 0u;
            v692 = 0u;
            v693 = 0u;
            v690 = 0u;
            v691 = 0u;
            *buf = 0u;
            v689 = 0u;
          }

          v260 = objc_msgSend_principalPoints(v147, v247, v248, v249, v250, v251);
          v679 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v170, v261, v680, v176, v182, v154 & 0xFFFFFFFFFFFFFFDFLL, v216, v222 | 0x100, v678, v676, v669, v666, v235, v237, v239, v241, v228, v253, v255, v257, v259, buf, v260);

          objc_msgSend_addObject_(v673, v262, v679, v263, v264, v265);
          objc_msgSend_combinedScore(v679, v266, v267, v268, v269, v270);
          v670 = v271;
          v677 = objc_msgSend_precedingSeparatorForToken_(v661, v272, v147, v273, v274, v275);
          if (v662 != v659)
          {
            goto LABEL_62;
          }

          if (objc_msgSend_length(v677, v276, v277, v278, v279, v280))
          {
            v286 = objc_msgSend_string(v147, v281, v282, v283, v284, v285);
            v291 = objc_msgSend_stringByAppendingFormat_(v665, v287, @"%@%@", v288, v289, v290, v677, v286);

            v292 = [CHTokenizedTextResultToken alloc];
            v667 = objc_msgSend_strokeIndexes(v147, v293, v294, v295, v296, v297);
            v303 = objc_msgSend_wordID(v147, v298, v299, v300, v301, v302);
            objc_msgSend_recognitionScore(v147, v304, v305, v306, v307, v308);
            v310 = v309;
            objc_msgSend_recognitionScore(v147, v311, v312, v313, v314, v315);
            v317 = v316;
            objc_msgSend_combinedScore(v147, v318, v319, v320, v321, v322);
            v324 = v323;
            objc_msgSend_alignmentScore(v147, v325, v326, v327, v328, v329);
            v331 = v330;
            v337 = objc_msgSend_recognizerSourceLocale(v147, v332, v333, v334, v335, v336);
            v650 = v331;
            v652 = v324;
            v654 = v317;
            v656 = v310;
            v343 = objc_msgSend_inputSources(v147, v338, v339, v340, v341, v342);
            v349 = objc_msgSend_substrokeCount(v147, v344, v345, v346, v347, v348);
            objc_msgSend_bounds(v147, v350, v351, v352, v353, v354);
            v356 = v355;
            v358 = v357;
            v360 = v359;
            v362 = v361;
            objc_msgSend_originalBounds(v147, v363, v364, v365, v366, v367);
            v374 = v373;
            v376 = v375;
            v378 = v377;
            v380 = v379;
            if (v147)
            {
              objc_msgSend_principalLines(v147, v368, v369, v370, v371, v372);
            }

            else
            {
              v694 = 0u;
              v695 = 0u;
              v692 = 0u;
              v693 = 0u;
              v690 = 0u;
              v691 = 0u;
              *buf = 0u;
              v689 = 0u;
            }

            v381 = objc_msgSend_principalPoints(v147, v368, v369, v370, v371, v372);
            v383 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v292, v382, v291, v667, v303, v154 & 0xFFFFFFFFFFFFFFDFLL, v337, v343 | 0x200, v656, v654, v652, v650, v356, v358, v360, v362, v349, v374, v376, v378, v380, buf, v381);

            v388 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v384, v383, v385, v386, v387);

            objc_msgSend_combinedScore(v383, v389, v390, v391, v392, v393);
            v395 = v394;

            v658 = v658 + v395;
            v675 = v388;
          }

          v396 = objc_msgSend_string(v147, v281, v282, v283, v284, v285);
          v402 = objc_msgSend_length(v396, v397, v398, v399, v400, v401) == 1;

          if (v402)
          {
            v408 = objc_msgSend_string(v147, v403, v404, v405, v406, v407);
            v413 = objc_msgSend_uppercaseStringWithLocale_(v408, v409, v664, v410, v411, v412);

            if (objc_msgSend_isEqualToString_(v413, v414, v681, v415, v416, v417))
            {
              v423 = objc_msgSend_string(v147, v418, v419, v420, v421, v422);
              v428 = objc_msgSend_lowercaseStringWithLocale_(v423, v424, v664, v425, v426, v427);

              v413 = v428;
            }

            v429 = objc_msgSend_string(v147, v418, v419, v420, v421, v422);
            isEqualToString = objc_msgSend_isEqualToString_(v413, v430, v429, v431, v432, v433);

            if (isEqualToString)
            {
              v439 = v682;
            }

            else
            {
              v440 = objc_msgSend_stringByAppendingString_(v665, v435, v413, v436, v437, v438);
              v441 = [CHTokenizedTextResultToken alloc];
              v668 = objc_msgSend_strokeIndexes(v147, v442, v443, v444, v445, v446);
              v452 = objc_msgSend_wordID(v147, v447, v448, v449, v450, v451);
              objc_msgSend_modelScore(v147, v453, v454, v455, v456, v457);
              v459 = v458;
              objc_msgSend_recognitionScore(v147, v460, v461, v462, v463, v464);
              v466 = v465;
              objc_msgSend_combinedScore(v147, v467, v468, v469, v470, v471);
              v473 = v472;
              objc_msgSend_alignmentScore(v147, v474, v475, v476, v477, v478);
              v480 = v479;
              v486 = objc_msgSend_recognizerSourceLocale(v147, v481, v482, v483, v484, v485);
              v648 = v480;
              v651 = v473;
              v653 = v466;
              v655 = v459;
              v657 = v440;
              v492 = objc_msgSend_inputSources(v147, v487, v488, v489, v490, v491);
              v498 = objc_msgSend_substrokeCount(v147, v493, v494, v495, v496, v497);
              objc_msgSend_bounds(v147, v499, v500, v501, v502, v503);
              v505 = v504;
              v507 = v506;
              v509 = v508;
              v511 = v510;
              objc_msgSend_originalBounds(v147, v512, v513, v514, v515, v516);
              v523 = v522;
              v525 = v524;
              v527 = v526;
              v529 = v528;
              if (v147)
              {
                objc_msgSend_principalLines(v147, v517, v518, v519, v520, v521);
              }

              else
              {
                v694 = 0u;
                v695 = 0u;
                v692 = 0u;
                v693 = 0u;
                v690 = 0u;
                v691 = 0u;
                *buf = 0u;
                v689 = 0u;
              }

              v530 = objc_msgSend_principalPoints(v147, v517, v518, v519, v520, v521);
              v532 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v441, v531, v657, v668, v452, v154 & 0xFFFFFFFFFFFFFFDFLL, v486, v492 | 0x100, v655, v653, v651, v648, v505, v507, v509, v511, v498, v523, v525, v527, v529, buf, v530);

              v439 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v533, v532, v534, v535, v536);

              objc_msgSend_combinedScore(v532, v537, v538, v539, v540, v541);
              v543 = v542;

              v649 = v649 + v543;
            }
          }

          else
          {
LABEL_62:
            v439 = v682;
          }

          v672 = v672 + v670;
          v682 = v439;
          goto LABEL_33;
        }

        objc_msgSend_addObject_(v673, v149, v147, v151, v152, v153);
        if (v675)
        {
          objc_msgSend_addObject_(v675, v140, v147, v142, v143, v144);
        }

        if (v682)
        {
          objc_msgSend_addObject_(v682, v140, v147, v142, v143, v144);
        }

        else
        {
          v682 = 0;
        }

LABEL_33:
        v145 = 0;
      }

      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v140, &v683, v696, 16, v144);
      v145 = 0;
      if (!v139)
      {
LABEL_72:

        v548 = objc_msgSend_addTokenRowWithTokens_(v645, v544, v673, v545, v546, v547);
        v553 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v549, v548, v550, v551, v552);
        objc_msgSend_addObject_(v646, v554, v553, v555, v556, v557);

        v563 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v558, v559, v560, v561, v562, v672);
        objc_msgSend_addObject_(v647, v564, v563, v565, v566, v567);

        if (v675)
        {
          v572 = objc_msgSend_addTokenRowWithTokens_(v645, v568, v675, v569, v570, v571);
          v577 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v573, v572, v574, v575, v576);
          objc_msgSend_addObject_(v646, v578, v577, v579, v580, v581);

          v587 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v582, v583, v584, v585, v586, v658);
          objc_msgSend_addObject_(v647, v588, v587, v589, v590, v591);
        }

        v592 = v682;
        if (v682)
        {
          v593 = objc_msgSend_addTokenRowWithTokens_(v645, v568, v682, v569, v570, v571);
          v598 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v594, v593, v595, v596, v597);
          objc_msgSend_addObject_(v646, v599, v598, v600, v601, v602);

          v608 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v603, v604, v605, v606, v607, v649);
          objc_msgSend_addObject_(v647, v609, v608, v610, v611, v612);

          v592 = v682;
        }

        ++v662;
        goto LABEL_28;
      }
    }
  }

  v613 = [CHTokenizedTextResult alloc];
  v687 = v645;
  v617 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v614, &v687, 1, v615, v616);
  v623 = objc_msgSend_trailingSeparator(v661, v618, v619, v620, v621, v622);
  v629 = objc_msgSend_recognizerGenerationIdentifier(v661, v624, v625, v626, v627, v628);
  v635 = objc_msgSend_originalTokens(v661, v630, v631, v632, v633, v634);
  v67 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v613, v636, v617, v646, v647, v623, v629, v635);

  if (a7)
  {
    a7->location = objc_msgSend_absoluteLocationFromRelativeLocation_(v660, v637, v642, v638, v639, v640);
    a7->length = v641;
  }

LABEL_24:

  return v67;
}

@end