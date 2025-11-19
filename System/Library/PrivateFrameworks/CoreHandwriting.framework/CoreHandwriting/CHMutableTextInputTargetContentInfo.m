@interface CHMutableTextInputTargetContentInfo
- (_NSRange)referenceSubstringRange;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setProtectedCharacterIndexes:(id)a3;
- (void)setReferenceSubstring:(id)a3 range:(_NSRange)a4 characterRects:(CGRect *)a5;
- (void)setTextInputTarget:(id)a3;
@end

@implementation CHMutableTextInputTargetContentInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v115 = [CHTextInputTargetContentInfo alloc];
  v114 = objc_msgSend_textInputTarget(self, v4, v5, v6, v7, v8);
  v113 = objc_msgSend_textContentLength(self, v9, v10, v11, v12, v13);
  v112 = objc_msgSend_referenceSubstring(self, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_referenceSubstringRange(self, v19, v20, v21, v22, v23);
  v110 = v25;
  v111 = v24;
  characterRectsInReferenceSubstring = self->super._characterRectsInReferenceSubstring;
  v30 = objc_msgSend_strokeCoveredTextRange(self, v25, v26, v27, v28, v29);
  v107 = v31;
  v108 = v30;
  v36 = objc_msgSend_selectedTextRange(self, v31, v32, v33, v34, v35);
  v105 = v37;
  v106 = v36;
  isCursorStrong = objc_msgSend_isCursorStrong(self, v37, v38, v39, v40, v41);
  active = objc_msgSend_activePreviewRange(self, v42, v43, v44, v45, v46);
  v49 = v48;
  v54 = objc_msgSend_contentType(self, v48, v50, v51, v52, v53);
  v60 = objc_msgSend_autoCapitalizationMode(self, v55, v56, v57, v58, v59);
  v66 = objc_msgSend_autoCorrectionMode(self, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_baseWritingDirection(self, v67, v68, v69, v70, v71);
  isSingleLine = objc_msgSend_isSingleLine(self, v73, v74, v75, v76, v77);
  CharacterLevelPosition = objc_msgSend_lastCharacterLevelPosition(self, v79, v80, v81, v82, v83);
  v90 = objc_msgSend_protectedCharacterIndexes(self, v85, v86, v87, v88, v89);
  v92 = sub_183724098(v115, v114, v113, v112, v111, v110, characterRectsInReferenceSubstring, v91, v108, v107, v106, v105, isCursorStrong, active, v49, v54, v60, v66, v72, isSingleLine, CharacterLevelPosition, v90);

  v92[89] = objc_msgSend_containsCommittedStrokes(self, v93, v94, v95, v96, v97);
  v92[137] = objc_msgSend_supportsAutoLineBreaks(self, v98, v99, v100, v101, v102);
  return v92;
}

- (_NSRange)referenceSubstringRange
{
  length = self->super._referenceSubstringRange.length;
  location = self->super._referenceSubstringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setTextInputTarget:(id)a3
{
  v5 = a3;
  textInputTarget = self->super._textInputTarget;
  p_textInputTarget = &self->super._textInputTarget;
  if (textInputTarget != v5)
  {
    v8 = v5;
    objc_storeStrong(p_textInputTarget, a3);
    v5 = v8;
  }
}

- (void)setProtectedCharacterIndexes:(id)a3
{
  if (self[1].super.super.isa != a3)
  {
    v8 = objc_msgSend_copy(a3, a2, a3, v3, v4, v5);
    isa = self[1].super.super.isa;
    self[1].super.super.isa = v8;
  }
}

- (void)setReferenceSubstring:(id)a3 range:(_NSRange)a4 characterRects:(CGRect *)a5
{
  length = a4.length;
  location = a4.location;
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (objc_msgSend_length(v9, v10, v11, v12, v13, v14) == length)
  {
    if (objc_msgSend_length(v9, v15, v16, v17, v18, v19) == length)
    {
      goto LABEL_3;
    }

    goto LABEL_24;
  }

  if (qword_1EA84DC48 == -1)
  {
    v33 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v33 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    LOWORD(v40) = 0;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "The referenceSubstring length must be equal to the range that it covers", &v40, 2u);
  }

LABEL_23:

  if (objc_msgSend_length(v9, v34, v35, v36, v37, v38) == length)
  {
LABEL_3:
    self->super._referenceSubstringRange.location = location;
    self->super._referenceSubstringRange.length = length;
    if (self->super._referenceSubstring == v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_24:
  if (qword_1EA84DC48 == -1)
  {
    v39 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v39 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
  {
LABEL_26:
    LOWORD(v40) = 0;
    _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_FAULT, "The referenceSubstring length must be equal to the range that it covers", &v40, 2u);
  }

LABEL_27:

  self->super._referenceSubstringRange.location = location;
  self->super._referenceSubstringRange.length = length;
  if (self->super._referenceSubstring != v9)
  {
LABEL_4:
    v25 = objc_msgSend_copy(v9, v20, v21, v22, v23, v24);
    referenceSubstring = self->super._referenceSubstring;
    self->super._referenceSubstring = v25;

    length = self->super._referenceSubstringRange.length;
  }

LABEL_5:
  if (!length)
  {
    goto LABEL_19;
  }

  if (!a5)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromRange(self->super._referenceSubstringRange);
      v40 = 138412290;
      v41 = v28;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_ERROR, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", &v40, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    v30 = NSStringFromRange(self->super._referenceSubstringRange);
    v40 = 138412290;
    v41 = v30;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", &v40, 0xCu);

    goto LABEL_14;
  }

LABEL_15:
  characterRectsInReferenceSubstring = self->super._characterRectsInReferenceSubstring;
  if (characterRectsInReferenceSubstring != a5)
  {
    if (characterRectsInReferenceSubstring)
    {
      free(characterRectsInReferenceSubstring);
    }

    v32 = malloc_type_calloc(self->super._referenceSubstringRange.length, 0x20uLL, 0x1000040E0EAB150uLL);
    self->super._characterRectsInReferenceSubstring = v32;
    memcpy(v32, a5, 32 * self->super._referenceSubstringRange.length);
  }

LABEL_19:
}

@end