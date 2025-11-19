@interface CHTextInputTargetContentInfo
- (CGRect)characterRectForAbsoluteCharacterIndex:(int64_t)a3;
- (CGRect)characterRectForComposedCharacterAtIndex:(int64_t)a3;
- (CGRect)characterRectForRelativeCharacterIndex:(int64_t)a3;
- (CGRect)unionCharacterRects;
- (CGRect)visualCharacterRectForCharacterIndex:(int64_t)a3;
- (CHTextInputTargetContentInfo)initWithTextInputTarget:(id)a3 contentLength:(int64_t)a4 referenceSubstring:(id)a5 referenceSubstringRange:(_NSRange)a6 charRectsInReferenceSubstring:(CGRect *)a7 strokeCoveredTextRange:(_NSRange)a8 selectedTextRange:(_NSRange)a9 activePreviewRange:(_NSRange)a10 contentType:(int)a11 lastCharacterLevelPosition:(int64_t)a12;
- (CHTextInputTargetContentInfo)initWithTextInputTarget:(id)a3 contentLength:(int64_t)a4 referenceSubstring:(id)a5 referenceSubstringRange:(_NSRange)a6 charRectsInReferenceSubstring:(CGRect *)a7 strokeCoveredTextRange:(_NSRange)a8 selectedTextRange:(_NSRange)a9 activePreviewRange:(_NSRange)a10 lastCharacterLevelPosition:(int64_t)a11;
- (_NSRange)activePreviewRange;
- (_NSRange)referenceSubstringRange;
- (_NSRange)referenceSubstringRangeOfComposedCharacterAtIndex:(int64_t)a3;
- (_NSRange)selectedTextRange;
- (_NSRange)strokeCoveredTextRange;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)referenceSubstringInRange:(_NSRange)a3;
- (int64_t)absoluteLocationFromRelativeLocation:(int64_t)a3;
- (int64_t)relativeLocationFromAbsoluteLocation:(int64_t)a3;
- (void)dealloc;
- (void)enumerateCharacterRectsInRange:(_NSRange)a3 reverse:(BOOL)a4 block:(id)a5;
@end

@implementation CHTextInputTargetContentInfo

- (CHTextInputTargetContentInfo)initWithTextInputTarget:(id)a3 contentLength:(int64_t)a4 referenceSubstring:(id)a5 referenceSubstringRange:(_NSRange)a6 charRectsInReferenceSubstring:(CGRect *)a7 strokeCoveredTextRange:(_NSRange)a8 selectedTextRange:(_NSRange)a9 activePreviewRange:(_NSRange)a10 lastCharacterLevelPosition:(int64_t)a11
{
  length = a6.length;
  location = a6.location;
  v15 = a10.location;
  v105 = *MEMORY[0x1E69E9840];
  v99 = a3;
  v21 = a5;
  if (a9.location != 0x7FFFFFFFFFFFFFFFLL && a9.location + a9.length > a4)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromRange(a9);
      *buf = 138412546;
      v102 = v34;
      v103 = 2048;
      v104 = a4;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "selectedTextRange %@ beyond text length %ld", buf, 0x16u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v35 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      v36 = NSStringFromRange(a9);
      *buf = 138412546;
      v102 = v36;
      v103 = 2048;
      v104 = a4;
      _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_FAULT, "selectedTextRange %@ beyond text length %ld", buf, 0x16u);
    }

    v37 = a10.location != 0x7FFFFFFFFFFFFFFFLL && a10.location + a10.length > a4;
    v24 = &qword_1EA84D000;
    if (!v37)
    {
LABEL_9:
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v23 = a10.location != 0x7FFFFFFFFFFFFFFFLL && a10.location + a10.length > a4;
    v24 = &qword_1EA84D000;
    if (!v23)
    {
      goto LABEL_9;
    }
  }

  if (qword_1EA84DC48 == -1)
  {
    v38 = v24[394];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v38 = v24[394];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
LABEL_30:
    v39 = NSStringFromRange(a10);
    *buf = 138412546;
    v102 = v39;
    v103 = 2048;
    v104 = a4;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_ERROR, "activePreviewRange %@ beyond text length %ld", buf, 0x16u);
  }

LABEL_31:

  if (qword_1EA84DC48 == -1)
  {
    v40 = v24[394];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v40 = v24[394];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
LABEL_33:
    v41 = NSStringFromRange(a10);
    *buf = 138412546;
    v102 = v41;
    v103 = 2048;
    v104 = a4;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "activePreviewRange %@ beyond text length %ld", buf, 0x16u);
  }

LABEL_34:

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v96 = a10.length;
    v25 = location + length;
    if (location + length <= a4)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (qword_1EA84DC48 == -1)
  {
    v42 = v24[394];
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v42 = v24[394];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
LABEL_37:
    v106.location = location;
    v106.length = length;
    v43 = NSStringFromRange(v106);
    *buf = 138412290;
    v102 = v43;
    _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_ERROR, "Invalid referenceSubstringRange %@", buf, 0xCu);
  }

LABEL_38:

  if (qword_1EA84DC48 == -1)
  {
    v44 = v24[394];
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v44 = v24[394];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
  {
LABEL_40:
    v107.location = location;
    v107.length = length;
    v45 = NSStringFromRange(v107);
    *buf = 138412290;
    v102 = v45;
    _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_FAULT, "Invalid referenceSubstringRange %@", buf, 0xCu);
  }

LABEL_41:

  v96 = a10.length;
  v25 = location + length;
  if (location + length <= a4)
  {
LABEL_11:
    if (length == objc_msgSend_length(v21, v16, v17, v18, v19, v20))
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_42:
  if (qword_1EA84DC48 == -1)
  {
    v46 = v24[394];
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v46 = v24[394];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
LABEL_44:
    v108.location = location;
    v108.length = length;
    v47 = NSStringFromRange(v108);
    *buf = 138412546;
    v102 = v47;
    v103 = 2048;
    v104 = a4;
    _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_ERROR, "referenceSubstringRange %@ beyond text length %ld", buf, 0x16u);
  }

LABEL_45:

  if (qword_1EA84DC48 == -1)
  {
    v48 = v24[394];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v48 = v24[394];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
  {
LABEL_47:
    v109.location = location;
    v109.length = length;
    v49 = NSStringFromRange(v109);
    *buf = 138412546;
    v102 = v49;
    v103 = 2048;
    v104 = a4;
    _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "referenceSubstringRange %@ beyond text length %ld", buf, 0x16u);
  }

LABEL_48:

  if (length == objc_msgSend_length(v21, v50, v51, v52, v53, v54))
  {
LABEL_12:
    v31 = a8.location;
    if (length == objc_msgSend_length(v21, v26, v27, v28, v29, v30))
    {
      goto LABEL_13;
    }

LABEL_53:
    if (qword_1EA84DC48 == -1)
    {
      v68 = v24[394];
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v68 = v24[394];
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
LABEL_56:

        v32 = a8.length;
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_65;
        }

        goto LABEL_57;
      }
    }

    v111.location = location;
    v111.length = length;
    v69 = NSStringFromRange(v111);
    v75 = objc_msgSend_length(v21, v70, v71, v72, v73, v74);
    *buf = 138412546;
    v102 = v69;
    v103 = 2048;
    v104 = v75;
    _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_FAULT, "Invalid referenceSubstringRange %@, length doesn't match string length %ld", buf, 0x16u);

    goto LABEL_56;
  }

LABEL_49:
  if (qword_1EA84DC48 == -1)
  {
    v55 = v24[394];
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v55 = v24[394];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
LABEL_51:
    v110.location = location;
    v110.length = length;
    v56 = NSStringFromRange(v110);
    v62 = objc_msgSend_length(v21, v57, v58, v59, v60, v61);
    *buf = 138412546;
    v102 = v56;
    v103 = 2048;
    v104 = v62;
    _os_log_impl(&dword_18366B000, v55, OS_LOG_TYPE_ERROR, "Invalid referenceSubstringRange %@, length doesn't match string length %ld", buf, 0x16u);
  }

LABEL_52:

  v31 = a8.location;
  if (length != objc_msgSend_length(v21, v63, v64, v65, v66, v67))
  {
    goto LABEL_53;
  }

LABEL_13:
  v32 = a8.length;
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v31 < location || v31 - location >= length || v31 + v32 > v25)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v76 = qword_1EA84DC80;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v112.location = v31;
      v112.length = v32;
      v77 = NSStringFromRange(v112);
      v113.location = location;
      v113.length = length;
      v78 = NSStringFromRange(v113);
      *buf = 138412546;
      v102 = v77;
      v103 = 2112;
      v104 = v78;
      _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_ERROR, "The strokeCoveredTextRange %@ must be within the referenceSubstringRange %@", buf, 0x16u);

      v15 = a10.location;
    }
  }

LABEL_65:
  v100.receiver = self;
  v100.super_class = CHTextInputTargetContentInfo;
  v79 = [(CHTextInputTargetContentInfo *)&v100 init];
  v80 = v79;
  if (v79)
  {
    objc_storeStrong(&v79->_textInputTarget, a3);
    v80->_textContentLength = a4;
    v86 = objc_msgSend_copy(v21, v81, v82, v83, v84, v85);
    referenceSubstring = v80->_referenceSubstring;
    v80->_referenceSubstring = v86;

    v80->_referenceSubstringRange.location = location;
    v80->_referenceSubstringRange.length = length;
    v80->_strokeCoveredTextRange.location = v31;
    v80->_strokeCoveredTextRange.length = v32;
    v80->_selectedTextRange = a9;
    v80->_isCursorStrong = 1;
    v80->_activePreviewRange.location = v15;
    v80->_activePreviewRange.length = v96;
    *&v80->_contentType = 0x100000000;
    v80->_autoCorrectionMode = 0;
    *&v80->_isSingleLine = 255;
    LOBYTE(v80->_lastCharacterLevelPosition) = 1;
    isa = v80[1].super.isa;
    v80->_protectedCharacterIndexes = a11;
    v80[1].super.isa = 0;

    if (length)
    {
      if (a7)
      {
LABEL_76:
        v93 = malloc_type_calloc(length, 0x20uLL, 0x1000040E0EAB150uLL);
        v80->_characterRectsInReferenceSubstring = v93;
        memcpy(v93, a7, 32 * length);
        goto LABEL_77;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v89 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v114.location = location;
        v114.length = length;
        v90 = NSStringFromRange(v114);
        *buf = 138412290;
        v102 = v90;
        _os_log_impl(&dword_18366B000, v89, OS_LOG_TYPE_ERROR, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", buf, 0xCu);
      }

      if (qword_1EA84DC48 == -1)
      {
        v91 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
LABEL_75:

          goto LABEL_76;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v91 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_75;
        }
      }

      v115.location = location;
      v115.length = length;
      v92 = NSStringFromRange(v115);
      *buf = 138412290;
      v102 = v92;
      _os_log_impl(&dword_18366B000, v91, OS_LOG_TYPE_FAULT, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", buf, 0xCu);

      goto LABEL_75;
    }
  }

LABEL_77:

  return v80;
}

- (CHTextInputTargetContentInfo)initWithTextInputTarget:(id)a3 contentLength:(int64_t)a4 referenceSubstring:(id)a5 referenceSubstringRange:(_NSRange)a6 charRectsInReferenceSubstring:(CGRect *)a7 strokeCoveredTextRange:(_NSRange)a8 selectedTextRange:(_NSRange)a9 activePreviewRange:(_NSRange)a10 contentType:(int)a11 lastCharacterLevelPosition:(int64_t)a12
{
  BYTE4(v14) = 1;
  LODWORD(v14) = a11;
  v13 = 1;
  return objc_msgSend_initWithTextInputTarget_contentLength_referenceSubstring_referenceSubstringRange_charRectsInReferenceSubstring_strokeCoveredTextRange_selectedTextRange_isCursorStrong_activePreviewRange_contentType_isSingleLine_lastCharacterLevelPosition_(self, a2, a3, a4, a5, a6.location, a6.length, a7, a8.location, a8.length, a9.location, a9.length, v13, a10.location, a10.length, v14, a12);
}

- (void)dealloc
{
  characterRectsInReferenceSubstring = self->_characterRectsInReferenceSubstring;
  if (characterRectsInReferenceSubstring)
  {
    free(characterRectsInReferenceSubstring);
  }

  v4.receiver = self;
  v4.super_class = CHTextInputTargetContentInfo;
  [(CHTextInputTargetContentInfo *)&v4 dealloc];
}

- (id)description
{
  v7 = MEMORY[0x1E695DF70];
  objc_msgSend_referenceSubstringRange(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v8, v8, v9, v10, v11);
  objc_msgSend_referenceSubstringRange(self, v13, v14, v15, v16, v17);
  if (v18)
  {
    v23 = 0;
    for (i = 0; i < v18; ++i)
    {
      v25 = objc_msgSend_referenceSubstringRange(self, v18, v19, v20, v21, v22);
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"  %ld: origin: (%0.2f, %0.2f), size: (%0.2f, %0.2f)", v27, v28, v29, v25 + i, *&self->_characterRectsInReferenceSubstring[v23].origin.x, *&self->_characterRectsInReferenceSubstring[v23].origin.y, *&self->_characterRectsInReferenceSubstring[v23].size.width, *&self->_characterRectsInReferenceSubstring[v23].size.height);
      objc_msgSend_addObject_(v12, v31, v30, v32, v33, v34);

      objc_msgSend_referenceSubstringRange(self, v35, v36, v37, v38, v39);
      ++v23;
    }
  }

  v40 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v12, v18, @"\n", &unk_1EF1BC598, v21, v22);
  if (objc_msgSend_length(v40, v41, v42, v43, v44, v45))
  {
    v51 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v46, @"\n%@\n", v48, v49, v50, v40);

    v40 = v51;
  }

  v52 = objc_msgSend_contentType(self, v46, v47, v48, v49, v50);
  v57 = objc_msgSend_stringForRecognitionContentType_(CHRecognizerConfiguration, v53, v52, v54, v55, v56);
  if (objc_msgSend_referenceSubstringRange(self, v58, v59, v60, v61, v62) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v163 = @"(none)";
    if (objc_msgSend_selectedTextRange(self, v63, v64, v65, v66, v67) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v171.location = objc_msgSend_referenceSubstringRange(self, v63, v64, v65, v66, v67);
    v163 = NSStringFromRange(v171);
    if (objc_msgSend_selectedTextRange(self, v110, v111, v112, v113, v114) != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      v168.location = objc_msgSend_selectedTextRange(self, v68, v69, v70, v71, v72);
      v162 = NSStringFromRange(v168);
      if (objc_msgSend_activePreviewRange(self, v73, v74, v75, v76, v77) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  v162 = @"(none)";
  if (objc_msgSend_activePreviewRange(self, v68, v69, v70, v71, v72) != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    v169.location = objc_msgSend_activePreviewRange(self, v78, v79, v80, v81, v82);
    v161 = NSStringFromRange(v169);
    if (objc_msgSend_strokeCoveredTextRange(self, v83, v84, v85, v86, v87) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

LABEL_15:
    v160 = @"(none)";
    v164 = v57;
    v165 = v40;
    if (objc_msgSend_lastCharacterLevelPosition(self, v88, v89, v90, v91, v92) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_14:
  v161 = @"(none)";
  if (objc_msgSend_strokeCoveredTextRange(self, v78, v79, v80, v81, v82) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

LABEL_10:
  v170.location = objc_msgSend_strokeCoveredTextRange(self, v88, v89, v90, v91, v92);
  v160 = NSStringFromRange(v170);
  v164 = v57;
  v165 = v40;
  if (objc_msgSend_lastCharacterLevelPosition(self, v93, v94, v95, v96, v97) != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_11:
    v103 = MEMORY[0x1E696AEC0];
    CharacterLevelPosition = objc_msgSend_lastCharacterLevelPosition(self, v98, v99, v100, v101, v102);
    v109 = objc_msgSend_stringWithFormat_(v103, v105, @"%ld", v106, v107, v108, CharacterLevelPosition);
    goto LABEL_17;
  }

LABEL_16:
  v109 = @"(none)";
LABEL_17:
  v166.receiver = self;
  v166.super_class = CHTextInputTargetContentInfo;
  v159 = [(CHTextInputTargetContentInfo *)&v166 description];
  v120 = objc_msgSend_textInputTarget(self, v115, v116, v117, v118, v119);
  v157 = objc_msgSend_textContentLength(self, v121, v122, v123, v124, v125);
  v131 = objc_msgSend_referenceSubstring(self, v126, v127, v128, v129, v130);
  v142 = @"Yes";
  if (objc_msgSend_isCursorStrong(self, v132, v133, v134, v135, v136))
  {
    v143 = @"Yes";
  }

  else
  {
    v143 = @"No";
  }

  if (objc_msgSend_containsCommittedStrokes(self, v137, v138, v139, v140, v141))
  {
    v149 = @"Yes";
  }

  else
  {
    v149 = @"No";
  }

  if (LOBYTE(self->_lastCharacterLevelPosition))
  {
    v150 = @"Yes";
  }

  else
  {
    v150 = @"No";
  }

  if (!BYTE1(self->_lastCharacterLevelPosition))
  {
    v142 = @"No";
  }

  v151 = objc_msgSend_protectedCharacterIndexes(self, v144, v145, v146, v147, v148);
  v158 = objc_msgSend_stringByAppendingFormat_(v159, v152, @" textInputTarget: (%@), contentType: %@, textContentLength: %ld, referenceSubstring: %@, referenceSubstringRange: %@, selectedRange: %@, isCursorStrong: %@, containsCommittedStrokes: %@, activePreviewRange: %@, strokeCoveredTextRange: %@, lastCharacterLevelPosition: %@, isSingleLine: %@, supportsAutoLineBreaks: %@, characterRectsInReferenceSubstring: {%@}, protectedCharacterIndexes: {%@}", v153, v154, v155, v120, v164, v157, v131, v163, v162, v143, v149, v161, v160, v109, v150, v142, v165, v151);

  return v158;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CHMutableTextInputTargetContentInfo);
  v10 = objc_msgSend_referenceSubstring(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_referenceSubstringRange(self, v11, v12, v13, v14, v15);
  objc_msgSend_setReferenceSubstring_range_characterRects_(v4, v17, v10, v16, v17, self->_characterRectsInReferenceSubstring);

  v23 = objc_msgSend_textInputTarget(self, v18, v19, v20, v21, v22);
  objc_msgSend_setTextInputTarget_(v4, v24, v23, v25, v26, v27);

  v33 = objc_msgSend_textContentLength(self, v28, v29, v30, v31, v32);
  objc_msgSend_setTextContentLength_(v4, v34, v33, v35, v36, v37);
  v43 = objc_msgSend_strokeCoveredTextRange(self, v38, v39, v40, v41, v42);
  objc_msgSend_setStrokeCoveredTextRange_(v4, v44, v43, v44, v45, v46);
  v52 = objc_msgSend_selectedTextRange(self, v47, v48, v49, v50, v51);
  objc_msgSend_setSelectedTextRange_(v4, v53, v52, v53, v54, v55);
  isCursorStrong = objc_msgSend_isCursorStrong(self, v56, v57, v58, v59, v60);
  objc_msgSend_setIsCursorStrong_(v4, v62, isCursorStrong, v63, v64, v65);
  v71 = objc_msgSend_containsCommittedStrokes(self, v66, v67, v68, v69, v70);
  objc_msgSend_setContainsCommittedStrokes_(v4, v72, v71, v73, v74, v75);
  active = objc_msgSend_activePreviewRange(self, v76, v77, v78, v79, v80);
  objc_msgSend_setActivePreviewRange_(v4, v82, active, v82, v83, v84);
  v90 = objc_msgSend_contentType(self, v85, v86, v87, v88, v89);
  objc_msgSend_setContentType_(v4, v91, v90, v92, v93, v94);
  v100 = objc_msgSend_autoCapitalizationMode(self, v95, v96, v97, v98, v99);
  objc_msgSend_setAutoCapitalizationMode_(v4, v101, v100, v102, v103, v104);
  v110 = objc_msgSend_autoCorrectionMode(self, v105, v106, v107, v108, v109);
  objc_msgSend_setAutoCorrectionMode_(v4, v111, v110, v112, v113, v114);
  v120 = objc_msgSend_baseWritingDirection(self, v115, v116, v117, v118, v119);
  objc_msgSend_setBaseWritingDirection_(v4, v121, v120, v122, v123, v124);
  isSingleLine = objc_msgSend_isSingleLine(self, v125, v126, v127, v128, v129);
  objc_msgSend_setIsSingleLine_(v4, v131, isSingleLine, v132, v133, v134);
  v140 = objc_msgSend_supportsAutoLineBreaks(self, v135, v136, v137, v138, v139);
  objc_msgSend_setSupportsAutoLineBreaks_(v4, v141, v140, v142, v143, v144);
  CharacterLevelPosition = objc_msgSend_lastCharacterLevelPosition(self, v145, v146, v147, v148, v149);
  objc_msgSend_setLastCharacterLevelPosition_(v4, v151, CharacterLevelPosition, v152, v153, v154);
  v160 = objc_msgSend_protectedCharacterIndexes(self, v155, v156, v157, v158, v159);
  objc_msgSend_setProtectedCharacterIndexes_(v4, v161, v160, v162, v163, v164);

  return v4;
}

- (int64_t)absoluteLocationFromRelativeLocation:(int64_t)a3
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_referenceSubstringRange.location + a3;
  }

  return result;
}

- (int64_t)relativeLocationFromAbsoluteLocation:(int64_t)a3
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3 - self->_referenceSubstringRange.location;
  }

  return result;
}

- (CGRect)characterRectForRelativeCharacterIndex:(int64_t)a3
{
  origin = *MEMORY[0x1E695F050];
  size = *(MEMORY[0x1E695F050] + 16);
  if ((a3 & 0x8000000000000000) == 0 && self->_referenceSubstringRange.length > a3)
  {
    v5 = &self->_characterRectsInReferenceSubstring[a3];
    origin = v5->origin;
    size = v5->size;
  }

  y = origin.y;
  height = size.height;
  result.size.width = size.width;
  result.origin.x = origin.x;
  result.size.height = height;
  result.origin.y = y;
  return result;
}

- (CGRect)characterRectForAbsoluteCharacterIndex:(int64_t)a3
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a3 - self->_referenceSubstringRange.location;
  }

  objc_msgSend_characterRectForRelativeCharacterIndex_(self, a2, v7, v3, v4, v5);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)visualCharacterRectForCharacterIndex:(int64_t)a3
{
  objc_msgSend_characterRectForComposedCharacterAtIndex_(self, a2, a3, v3, v4, v5);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  if (CGRectIsNull(v46))
  {
    goto LABEL_11;
  }

  if (qword_1EA84CE28 == -1)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&qword_1EA84CE28, &unk_1EF1BC5B8);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v17 = a3 - self->_referenceSubstringRange.location;
  }

LABEL_5:
  v18 = objc_msgSend_referenceSubstring(self, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_characterAtIndex_(v18, v19, v17, v20, v21, v22);

  v24 = height * 0.25;
  IsMember = objc_msgSend_characterIsMember_(qword_1EA84CE10, v25, v23, v26, v27, v28);
  v34 = 2.0;
  v35 = v24;
  if ((IsMember & 1) == 0)
  {
    v36 = objc_msgSend_characterIsMember_(qword_1EA84CE18, v30, v23, v31, v32, v33, 2.0, v24);
    v34 = 3.0;
    v35 = v24;
    if ((v36 & 1) == 0)
    {
      v41 = objc_msgSend_characterIsMember_(qword_1EA84CE20, v37, v23, v38, v39, v40, 3.0, v24);
      v34 = 4.0;
      if (v41)
      {
        v34 = 3.0;
      }

      v35 = 0.0;
    }
  }

  height = v24 * v34;
  y = y + v35;
LABEL_11:
  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)enumerateCharacterRectsInRange:(_NSRange)a3 reverse:(BOOL)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  v14 = a5;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = location - self->_referenceSubstringRange.location;
  }

  objc_msgSend_referenceSubstringRange(self, v9, v10, v11, v12, v13);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1837262C4;
  v23[3] = &unk_1E6DDCF58;
  v25 = v16;
  v23[4] = self;
  v17 = v14;
  v24 = v17;
  v18 = MEMORY[0x1865E6810](v23);
  v22 = 0;
  if (a4)
  {
    v19 = length + v15 - 1;
    do
    {
      if (v19 < v15)
      {
        break;
      }

      (v18)[2](v18, v19--, &v22);
    }

    while ((v22 & 1) == 0);
  }

  else if (v15 < v15 + length)
  {
    v20 = length - 1;
    do
    {
      v21 = v20;
      (v18)[2](v18, v15, &v22);
      if (v22)
      {
        break;
      }

      ++v15;
      v20 = v21 - 1;
    }

    while (v21);
  }
}

- (id)referenceSubstringInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  referenceSubstringRange = self->_referenceSubstringRange;
  v20.location = location;
  v20.length = length;
  v10 = NSIntersectionRange(v20, referenceSubstringRange);
  if (v10.length == length)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = location - self->_referenceSubstringRange.location;
    }

    v12 = objc_msgSend_referenceSubstring(self, v10.length, v6, v7, v8, v9);
    v16 = objc_msgSend_substringWithRange_(v12, v13, v11, length, v14, v15);

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (_NSRange)referenceSubstringRangeOfComposedCharacterAtIndex:(int64_t)a3
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 == 0x7FFFFFFFFFFFFFFFLL || (v6 = a3 - self->_referenceSubstringRange.location, v6 >= 0)) && (v7 = 0x7FFFFFFFFFFFFFFFLL, v6 < self->_referenceSubstringRange.length))
  {
    v9 = objc_msgSend_referenceSubstring(self, a2, a3, v3, v4, v5);
    v14 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v9, v10, v6, v11, v12, v13);
    v16 = v15;

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = self->_referenceSubstringRange.location + v14;
    }

    v17 = v16;
    v18 = v7;
  }

  else
  {
    v17 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v17;
  result.location = v18;
  return result;
}

- (CGRect)unionCharacterRects
{
  v7 = objc_msgSend_referenceSubstringRange(self, a2, v2, v3, v4, v5);
  if (self)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4010000000;
    v23 = &unk_183A5AC72;
    v10 = *(MEMORY[0x1E695F050] + 16);
    v24 = *MEMORY[0x1E695F050];
    v25 = v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1837264B8;
    v19[3] = &unk_1E6DDCF80;
    v19[4] = &v20;
    objc_msgSend_enumerateCharacterRectsInRange_block_(self, v8, v7, v8, v19, v9);
    v12 = v21[4];
    v11 = v21[5];
    v14 = v21[6];
    v13 = v21[7];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  v15 = v12;
  v16 = v11;
  v17 = v14;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)characterRectForComposedCharacterAtIndex:(int64_t)a3
{
  v7 = objc_msgSend_referenceSubstringRangeOfComposedCharacterAtIndex_(self, a2, a3, v3, v4, v5);
  if (self)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4010000000;
    v23 = &unk_183A5AC72;
    v10 = *(MEMORY[0x1E695F050] + 16);
    v24 = *MEMORY[0x1E695F050];
    v25 = v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1837264B8;
    v19[3] = &unk_1E6DDCF80;
    v19[4] = &v20;
    objc_msgSend_enumerateCharacterRectsInRange_block_(self, v8, v7, v8, v19, v9);
    v12 = v21[4];
    v11 = v21[5];
    v14 = v21[6];
    v13 = v21[7];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  v15 = v12;
  v16 = v11;
  v17 = v14;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (_NSRange)referenceSubstringRange
{
  length = self->_referenceSubstringRange.length;
  location = self->_referenceSubstringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)strokeCoveredTextRange
{
  length = self->_strokeCoveredTextRange.length;
  location = self->_strokeCoveredTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)selectedTextRange
{
  length = self->_selectedTextRange.length;
  location = self->_selectedTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)activePreviewRange
{
  length = self->_activePreviewRange.length;
  location = self->_activePreviewRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end