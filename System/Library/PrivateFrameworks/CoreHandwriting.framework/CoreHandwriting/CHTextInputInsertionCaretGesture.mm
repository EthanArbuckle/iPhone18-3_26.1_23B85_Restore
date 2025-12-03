@interface CHTextInputInsertionCaretGesture
- (CGPoint)caretTipPoint;
- (CHTextInputInsertionCaretGesture)initWithCaretTipPoint:(CGPoint)point targetContentInfo:(id)info locale:(id)locale normalizedDrawing:(id)drawing originalDrawing:(id)originalDrawing;
- (int64_t)caretDirection;
- (void)getAffectedRange:(_NSRange *)range expandedToFullTokens:(BOOL *)tokens;
@end

@implementation CHTextInputInsertionCaretGesture

- (CHTextInputInsertionCaretGesture)initWithCaretTipPoint:(CGPoint)point targetContentInfo:(id)info locale:(id)locale normalizedDrawing:(id)drawing originalDrawing:(id)originalDrawing
{
  y = point.y;
  x = point.x;
  v11.receiver = self;
  v11.super_class = CHTextInputInsertionCaretGesture;
  v10 = 0;
  result = [(CHTextInputGesture *)&v11 initWithGestureType:8 targetContentInfo:info locale:locale normalizedDrawing:drawing originalDrawing:originalDrawing lastStroke:0 preferCharacterLevel:v10];
  if (result)
  {
    result->_caretTipPoint.x = x;
    result->_caretTipPoint.y = y;
  }

  return result;
}

- (void)getAffectedRange:(_NSRange *)range expandedToFullTokens:(BOOL *)tokens
{
  v213 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_targetContentInfo(self, a2, range, tokens, v4, v5);
  objc_msgSend_referenceSubstringRange(v9, v10, v11, v12, v13, v14);
  v16 = v15;

  if (v16)
  {
    v22 = objc_msgSend_targetContentInfo(self, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_referenceSubstringRange(v22, v23, v24, v25, v26, v27);
    v30 = v29;

    v36 = objc_msgSend_targetContentInfo(self, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_strokeCoveredTextRange(v36, v37, v38, v39, v40, v41);

    if (v42 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = objc_msgSend_targetContentInfo(self, v43, v44, v45, v46, v47);
      v54 = objc_msgSend_strokeCoveredTextRange(v48, v49, v50, v51, v52, v53);
      v56 = v55;
      v61 = objc_msgSend_targetContentInfo(self, v55, v57, v58, v59, v60);
      v216.location = objc_msgSend_referenceSubstringRange(v61, v62, v63, v64, v65, v66);
      v216.length = v67;
      v214.location = v54;
      v214.length = v56;
      length = NSIntersectionRange(v214, v216).length;

      if (!length)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v74 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v209) = 0;
          _os_log_impl(&dword_18366B000, v74, OS_LOG_TYPE_ERROR, "The stroke covered range must be within the reference substring range", &v209, 2u);
        }
      }

      v75 = objc_msgSend_targetContentInfo(self, v69, v70, v71, v72, v73);
      v81 = objc_msgSend_strokeCoveredTextRange(v75, v76, v77, v78, v79, v80);
      v83 = v82;
      v88 = objc_msgSend_targetContentInfo(self, v82, v84, v85, v86, v87);
      v217.location = objc_msgSend_referenceSubstringRange(v88, v89, v90, v91, v92, v93);
      v217.length = v94;
      v215.location = v81;
      v215.length = v83;
      LODWORD(v81) = NSIntersectionRange(v215, v217).length == 0;

      if (v81)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v100 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v209) = 0;
          _os_log_impl(&dword_18366B000, v100, OS_LOG_TYPE_FAULT, "The stroke covered range must be within the reference substring range", &v209, 2u);
        }
      }

      v101 = objc_msgSend_targetContentInfo(self, v95, v96, v97, v98, v99);
      v28 = objc_msgSend_strokeCoveredTextRange(v101, v102, v103, v104, v105, v106);
      v30 = v107;
    }

    v108 = objc_msgSend_targetContentInfo(self, v43, v44, v45, v46, v47);
    v113 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v108, v109, v28, v110, v111, v112);

    v119 = objc_msgSend_targetContentInfo(self, v114, v115, v116, v117, v118);
    v125 = objc_msgSend_referenceSubstring(v119, v120, v121, v122, v123, v124);

    x = self->_caretTipPoint.x;
    y = self->_caretTipPoint.y;
    v133 = objc_msgSend_targetContentInfo(self, v128, v129, v130, v131, v132);
    v134 = sub_1837E11D0(x, y, CHTextInputGesture, v133, v113, v30);

    v140 = v134 > 0;
    v141 = v134;
    if (v134 >= 1)
    {
      if (v134 != objc_msgSend_length(v125, v135, v136, v137, v138, v139))
      {
        v140 = 0;
        v141 = v134;
        goto LABEL_26;
      }

      v141 = objc_msgSend_length(v125, v135, v136, v137, v138, v139) - 1;
    }

    if ((v141 & 0x8000000000000000) != 0)
    {
      v142 = 0;
      goto LABEL_28;
    }

LABEL_26:
    if (v141 < objc_msgSend_length(v125, v135, v136, v137, v138, v139))
    {
LABEL_33:
      if (v141 < objc_msgSend_length(v125, v143, v144, v145, v146, v147))
      {
LABEL_39:
        v166 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v125, v155, v141, v156, v157, v158);
        v168 = v167;
        v173 = objc_msgSend_targetContentInfo(self, v167, v169, v170, v171, v172);
        v178 = objc_msgSend_absoluteLocationFromRelativeLocation_(v173, v174, v134, v175, v176, v177);

        v182 = objc_msgSend_substringWithRange_(v125, v179, v166, v168, v180, v181);
        isEqualToString = objc_msgSend_isEqualToString_(v182, v183, @" ", v184, v185, v186);

        if ((isEqualToString & 1) == 0)
        {
          LOBYTE(v209) = 0;
          sub_1837E0A08(CHTextInputGesture, v125, v166, v168, &v209, 0);
          if (v209 == 1)
          {
            v193 = objc_opt_class();
            v199 = objc_msgSend_locale(self, v194, v195, v196, v197, v198);
            v166 = objc_msgSend_rangeOfTokenAtCharacterIndex_inString_locale_(v193, v200, v166, v125, v199, v201);
            v168 = v202;
          }

          v203 = objc_msgSend_targetContentInfo(self, v188, v189, v190, v191, v192);
          v208 = objc_msgSend_absoluteLocationFromRelativeLocation_(v203, v204, v166, v205, v206, v207);

          if (v140 || (v178 - v208) > (v168 - v178 + v208))
          {
            v208 += v168;
          }

          v178 = v208;
        }

        if (range)
        {
          range->location = v178;
          range->length = 0;
        }

        if (tokens)
        {
          *tokens = 0;
        }

        return;
      }

LABEL_34:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v159 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
      {
        v165 = objc_msgSend_length(v125, v160, v161, v162, v163, v164);
        v209 = 134218240;
        v210 = v141;
        v211 = 2048;
        v212 = v165;
        _os_log_impl(&dword_18366B000, v159, OS_LOG_TYPE_FAULT, "The computed character index (%li) must be valid in the string (length=%li)", &v209, 0x16u);
      }

      goto LABEL_39;
    }

    v142 = 1;
LABEL_28:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v148 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      v154 = objc_msgSend_length(v125, v149, v150, v151, v152, v153);
      v209 = 134218240;
      v210 = v141;
      v211 = 2048;
      v212 = v154;
      _os_log_impl(&dword_18366B000, v148, OS_LOG_TYPE_ERROR, "The computed character index (%li) must be valid in the string (length=%li)", &v209, 0x16u);
    }

    if (!v142)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (range)
  {
    *range = xmmword_1839D0630;
  }

  if (tokens)
  {
    *tokens = 0;
  }
}

- (int64_t)caretDirection
{
  v6 = objc_msgSend_originalDrawing(self, a2, v2, v3, v4, v5);
  objc_msgSend_bounds(v6, v7, v8, v9, v10, v11);

  operator new();
}

- (CGPoint)caretTipPoint
{
  x = self->_caretTipPoint.x;
  y = self->_caretTipPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end