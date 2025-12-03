@interface IATextInputActionsSessionAction
- (BOOL)isMergeableWith:(id)with;
- (IATextInputActionsSessionAction)initWithCoder:(id)coder;
- (IATextInputActionsSessionBeganAction)asBegan;
- (IATextInputActionsSessionCommitTextAction)asCommitText;
- (IATextInputActionsSessionCopyAction)asCopy;
- (IATextInputActionsSessionCutAction)asCut;
- (IATextInputActionsSessionDeletionAction)asDeletion;
- (IATextInputActionsSessionDictationBeganAction)asDictationBegan;
- (IATextInputActionsSessionDictationEndedAction)asDictationEnded;
- (IATextInputActionsSessionEndAction)asEnd;
- (IATextInputActionsSessionGlomojiTapAction)asGlomojiTap;
- (IATextInputActionsSessionInsertionAction)asInsertion;
- (IATextInputActionsSessionKBMenuAppearAction)asKBMenuAppear;
- (IATextInputActionsSessionKBMenuDismissAction)asKBMenuDismiss;
- (IATextInputActionsSessionKBMenuInteractionAction)asKBMenuInteraction;
- (IATextInputActionsSessionKeyboardDockItemButtonPressAction)asKeyboardDockItemButtonPress;
- (IATextInputActionsSessionPasteAction)asPaste;
- (IATextInputActionsSessionRedoAction)asRedo;
- (IATextInputActionsSessionReplaceTextAction)asReplaceText;
- (IATextInputActionsSessionReplaceWithCandidateAction)asReplaceWithCandidate;
- (IATextInputActionsSessionSelectionAction)asSelection;
- (IATextInputActionsSessionUndoAction)asUndo;
- (_NSRange)relativeRangeBefore;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setInsertedEmojiCount:(unint64_t)count;
- (void)setInsertedPunctuationCount:(unint64_t)count;
- (void)setInsertedTextLength:(unint64_t)length;
- (void)setInsertedTextLengthWithoutTracking:(unint64_t)tracking;
- (void)setRemovedEmojiCount:(unint64_t)count;
- (void)setRemovedPunctuationCount:(unint64_t)count;
- (void)setRemovedTextLength:(unint64_t)length;
- (void)setRemovedTextLengthWithoutTracking:(unint64_t)tracking;
@end

@implementation IATextInputActionsSessionAction

- (IATextInputActionsSessionBeganAction)asBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toDictionary
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v5 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_timestamp(self, v6, v7);
  objc_msgSend_timeIntervalSinceReferenceDate(v8, v9, v10);
  v13 = objc_msgSend_numberWithDouble_(v5, v11, v12);

  objc_msgSend_setObjectIfNotNil_forKey_(v4, v14, v13, @"timestamp");
  v17 = objc_msgSend_appBundleId(self, v15, v16);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v18, v17, @"appBundleId");

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v21, v20, @"Class");

  v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v22, self->_relativeRangeBefore.location);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v24, v23, @"relativeRangeBefore_location");

  v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v25, self->_relativeRangeBefore.length);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v27, v26, @"relativeRangeBefore_length");

  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v28, self->_source);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v30, v29, @"source");

  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v31, self->_textInputActionsType);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v33, v32, @"textInputActionsType");

  v35 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v34, self->_inputActionCountFromMergedActions);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v36, v35, @"inputActionCountFromMergedActions");

  v39 = objc_msgSend_toDictionary(self->_inputMode, v37, v38);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v40, v39, @"inputMode");

  objc_msgSend_setObjectIfNotNil_forKey_(v4, v41, self->_processBundleId, @"processBundleId");
  v43 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v42, self->_flagOptions);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v44, v43, @"flagOptions");

  v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v45, self->_insertedTextLength);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v47, v46, @"insertedTextLength");

  v49 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v48, self->_insertedEmojiCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v50, v49, @"insertedEmojiCount");

  v52 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, self->_insertedPunctuationCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v53, v52, @"insertedPunctuationCount");

  v55 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v54, self->_removedTextLength);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v56, v55, @"removedTextLength");

  v58 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v57, self->_removedEmojiCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v59, v58, @"removedEmojiCount");

  v61 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v60, self->_removedPunctuationCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v62, v61, @"removedPunctuationCount");

  v64 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v63, self->_largestSingleInsertionLength);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v65, v64, @"largestSingleInsertionLength");

  v67 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v66, self->_largestSingleDeletionLength);
  objc_msgSend_setObjectIfNotNil_forKey_(v4, v68, v67, @"largestSingleDeletionLength");

  objc_msgSend_setObjectIfNotNil_forKey_(v4, v69, self->_clientSideSessionErrors, @"clientSideSessionErrors");

  return v4;
}

- (IATextInputActionsSessionEndAction)asEnd
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v147.receiver = self;
  v147.super_class = IATextInputActionsSessionAction;
  v8 = [(IAXPCObject *)&v147 description];
  objc_msgSend_addObject_(v7, v9, v8);

  v10 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_appBundleId(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v10, v14, @"appBundleId=%@", v13);
  objc_msgSend_addObject_(v7, v16, v15);

  v17 = MEMORY[0x1E696AEC0];
  v20 = objc_msgSend_processBundleId(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v17, v21, @"procBundleId=%@", v20);
  objc_msgSend_addObject_(v7, v23, v22);

  v24 = MEMORY[0x1E696AEC0];
  v27 = objc_msgSend_source(self, v25, v26);
  v29 = objc_msgSend_stringForSource_(IATextInputActionsUtils, v28, v27);
  v31 = objc_msgSend_stringWithFormat_(v24, v30, @"source=%@", v29);
  objc_msgSend_addObject_(v7, v32, v31);

  v33 = MEMORY[0x1E696AEC0];
  v36 = objc_msgSend_textInputActionsType(self, v34, v35);
  v38 = objc_msgSend_stringForType_(IATextInputActionsUtils, v37, v36);
  v40 = objc_msgSend_stringWithFormat_(v33, v39, @"textInputActionsType=%@", v38);
  objc_msgSend_addObject_(v7, v41, v40);

  if (objc_msgSend_changedContent(self, v42, v43))
  {
    v46 = MEMORY[0x1E696AEC0];
    v47 = objc_msgSend_removedTextLength(self, v44, v45);
    v49 = objc_msgSend_stringWithFormat_(v46, v48, @"removedTextLength=%lu", v47);
    objc_msgSend_addObject_(v7, v50, v49);

    v51 = MEMORY[0x1E696AEC0];
    v54 = objc_msgSend_insertedTextLength(self, v52, v53);
    v56 = objc_msgSend_stringWithFormat_(v51, v55, @"insertedTextLength=%lu", v54);
    objc_msgSend_addObject_(v7, v57, v56);

    v58 = MEMORY[0x1E696AEC0];
    v61 = objc_msgSend_removedEmojiCount(self, v59, v60);
    v63 = objc_msgSend_stringWithFormat_(v58, v62, @"removedEmojiCount=%lu", v61);
    objc_msgSend_addObject_(v7, v64, v63);

    v65 = MEMORY[0x1E696AEC0];
    v68 = objc_msgSend_insertedEmojiCount(self, v66, v67);
    v70 = objc_msgSend_stringWithFormat_(v65, v69, @"insertedEmojiCount=%lu", v68);
    objc_msgSend_addObject_(v7, v71, v70);

    v72 = MEMORY[0x1E696AEC0];
    v75 = objc_msgSend_removedPunctuationCount(self, v73, v74);
    v77 = objc_msgSend_stringWithFormat_(v72, v76, @"removedPunctuationCount=%lu", v75);
    objc_msgSend_addObject_(v7, v78, v77);

    v79 = MEMORY[0x1E696AEC0];
    v82 = objc_msgSend_insertedPunctuationCount(self, v80, v81);
    v84 = objc_msgSend_stringWithFormat_(v79, v83, @"insertedPunctuationCount=%lu", v82);
    objc_msgSend_addObject_(v7, v85, v84);

    v86 = MEMORY[0x1E696AEC0];
    v89 = objc_msgSend_largestSingleDeletionLength(self, v87, v88);
    v91 = objc_msgSend_stringWithFormat_(v86, v90, @"largestSingleDeletionLength=%lu", v89);
    objc_msgSend_addObject_(v7, v92, v91);

    v93 = MEMORY[0x1E696AEC0];
    v96 = objc_msgSend_largestSingleInsertionLength(self, v94, v95);
    v98 = objc_msgSend_stringWithFormat_(v93, v97, @"largestSingleInsertionLength=%lu", v96);
    objc_msgSend_addObject_(v7, v99, v98);
  }

  v100 = objc_msgSend_inputMode(self, v44, v45);
  isEmpty = objc_msgSend_isEmpty(v100, v101, v102);

  if ((isEmpty & 1) == 0)
  {
    v106 = MEMORY[0x1E696AEC0];
    v107 = objc_msgSend_inputMode(self, v104, v105);
    v110 = objc_msgSend_description(v107, v108, v109);
    v112 = objc_msgSend_stringWithFormat_(v106, v111, @"inputMode=%@", v110);
    objc_msgSend_addObject_(v7, v113, v112);
  }

  if (objc_msgSend_flagOptions(self, v104, v105))
  {
    v116 = MEMORY[0x1E696AEC0];
    v117 = objc_msgSend_flagOptions(self, v114, v115);
    v119 = objc_msgSend_stringWithFormat_(v116, v118, @"flagOptions=%lu", v117);
    objc_msgSend_addObject_(v7, v120, v119);
  }

  if (objc_msgSend_inputActionCount(self, v114, v115))
  {
    v123 = MEMORY[0x1E696AEC0];
    v124 = objc_msgSend_inputActionCount(self, v121, v122);
    v126 = objc_msgSend_stringWithFormat_(v123, v125, @"inputActionCount=%ld", v124);
    objc_msgSend_addObject_(v7, v127, v126);
  }

  if (objc_msgSend_relativeRangeBefore(self, v121, v122) || (objc_msgSend_relativeRangeBefore(self, v128, v129), v128))
  {
    v130 = MEMORY[0x1E696AEC0];
    v149.location = objc_msgSend_relativeRangeBefore(self, v128, v129);
    v131 = NSStringFromRange(v149);
    v133 = objc_msgSend_stringWithFormat_(v130, v132, @"relativeRangeBefore=%@", v131);
    objc_msgSend_addObject_(v7, v134, v133);
  }

  v135 = objc_msgSend_clientSideSessionErrors(self, v128, v129);

  if (v135)
  {
    v138 = MEMORY[0x1E696AEC0];
    v139 = objc_msgSend_clientSideSessionErrors(self, v136, v137);
    v141 = objc_msgSend_stringWithFormat_(v138, v140, @"clientSideSessionErrors=%@", v139);
    objc_msgSend_addObject_(v7, v142, v141);
  }

  v143 = objc_msgSend_componentsJoinedByString_(v7, v136, @", ");
  v145 = objc_msgSend_stringByAppendingFormat_(v4, v144, @": %@", v143);

  return v145;
}

- (_NSRange)relativeRangeBefore
{
  p_relativeRangeBefore = &self->_relativeRangeBefore;
  location = self->_relativeRangeBefore.location;
  length = p_relativeRangeBefore->length;
  result.length = length;
  result.location = location;
  return result;
}

- (IATextInputActionsSessionInsertionAction)asInsertion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionDeletionAction)asDeletion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionSelectionAction)asSelection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionCopyAction)asCopy
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionCutAction)asCut
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionPasteAction)asPaste
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionUndoAction)asUndo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionRedoAction)asRedo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionKeyboardDockItemButtonPressAction)asKeyboardDockItemButtonPress
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionDictationBeganAction)asDictationBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionDictationEndedAction)asDictationEnded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionReplaceTextAction)asReplaceText
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionReplaceWithCandidateAction)asReplaceWithCandidate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionGlomojiTapAction)asGlomojiTap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionKBMenuAppearAction)asKBMenuAppear
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionKBMenuInteractionAction)asKBMenuInteraction
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionKBMenuDismissAction)asKBMenuDismiss
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IATextInputActionsSessionCommitTextAction)asCommitText
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setInsertedTextLength:(unint64_t)length
{
  if (length && (objc_msgSend_changedContent(self, a2, length) & 1) == 0)
  {
    sub_1D462E984();
  }

  self->_insertedTextLength = length;
  v5 = length - objc_msgSend_removedTextLength(self, a2, length);
  objc_msgSend_setLargestSingleInsertionLength_(self, v6, 0);
  objc_msgSend_setLargestSingleDeletionLength_(self, v7, 0);
  if (v5 < 1)
  {
    if (v5 < 0)
    {

      objc_msgSend_setLargestSingleDeletionLength_(self, v8, -v5);
    }
  }

  else
  {

    objc_msgSend_setLargestSingleInsertionLength_(self, v8, v5);
  }
}

- (void)setRemovedTextLength:(unint64_t)length
{
  if (length && (objc_msgSend_changedContent(self, a2, length) & 1) == 0)
  {
    sub_1D462EA08();
  }

  self->_removedTextLength = length;
  v5 = objc_msgSend_insertedTextLength(self, a2, length) - length;
  objc_msgSend_setLargestSingleInsertionLength_(self, v6, 0);
  objc_msgSend_setLargestSingleDeletionLength_(self, v7, 0);
  if (v5 < 1)
  {
    if (v5 < 0)
    {

      objc_msgSend_setLargestSingleDeletionLength_(self, v8, -v5);
    }
  }

  else
  {

    objc_msgSend_setLargestSingleInsertionLength_(self, v8, v5);
  }
}

- (void)setInsertedTextLengthWithoutTracking:(unint64_t)tracking
{
  if (tracking && (objc_msgSend_changedContent(self, a2, tracking) & 1) == 0)
  {
    sub_1D462EA8C();
  }

  self->_insertedTextLength = tracking;
}

- (void)setRemovedTextLengthWithoutTracking:(unint64_t)tracking
{
  if (tracking && (objc_msgSend_changedContent(self, a2, tracking) & 1) == 0)
  {
    sub_1D462EB10();
  }

  self->_removedTextLength = tracking;
}

- (void)setInsertedEmojiCount:(unint64_t)count
{
  if (count && (objc_msgSend_changedContent(self, a2, count) & 1) == 0)
  {
    sub_1D462EB94();
  }

  self->_insertedEmojiCount = count;
}

- (void)setRemovedEmojiCount:(unint64_t)count
{
  if (count && (objc_msgSend_changedContent(self, a2, count) & 1) == 0)
  {
    sub_1D462EC18();
  }

  self->_removedEmojiCount = count;
}

- (void)setInsertedPunctuationCount:(unint64_t)count
{
  if (count && (objc_msgSend_changedContent(self, a2, count) & 1) == 0)
  {
    sub_1D462EC9C();
  }

  self->_insertedPunctuationCount = count;
}

- (void)setRemovedPunctuationCount:(unint64_t)count
{
  if (count && (objc_msgSend_changedContent(self, a2, count) & 1) == 0)
  {
    sub_1D462ED20();
  }

  self->_removedPunctuationCount = count;
}

- (BOOL)isMergeableWith:(id)with
{
  withCopy = with;
  v10 = objc_msgSend_source(self, v8, v9);
  if (v10 != objc_msgSend_source(withCopy, v11, v12) || (v15 = objc_msgSend_flagOptions(self, v13, v14), v15 != objc_msgSend_flagOptions(withCopy, v16, v17)) || (v20 = objc_msgSend_textInputActionsType(self, v18, v19), v20 != objc_msgSend_textInputActionsType(withCopy, v21, v22)))
  {
    isEqualToString = 0;
    goto LABEL_9;
  }

  v27 = objc_msgSend_inputMode(self, v23, v24);
  if (v27 || (objc_msgSend_inputMode(withCopy, v25, v26), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = objc_msgSend_inputMode(self, v25, v26);
    v5 = objc_msgSend_inputMode(withCopy, v28, v29);
    if (!objc_msgSend_isEqual_(v4, v30, v5))
    {
      isEqualToString = 0;
LABEL_13:

      goto LABEL_14;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v34 = objc_msgSend_appBundleId(self, v25, v26);
  v37 = objc_msgSend_appBundleId(withCopy, v35, v36);
  isEqualToString = objc_msgSend_isEqualToString_(v34, v38, v37);

  if (v31)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!v27)
  {
  }

LABEL_9:
  return isEqualToString;
}

- (IATextInputActionsSessionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v93.receiver = self;
  v93.super_class = IATextInputActionsSessionAction;
  v5 = [(IAXPCObject *)&v93 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_relativeRangeBefore = &v5->_relativeRangeBefore;
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"relativeRangeBefore_location");
    v13 = objc_msgSend_unsignedLongValue(v10, v11, v12);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"relativeRangeBefore_length");
    v19 = objc_msgSend_unsignedLongValue(v16, v17, v18);
    p_relativeRangeBefore->location = v13;
    v6->_relativeRangeBefore.length = v19;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"source");
    v6->_source = objc_msgSend_unsignedLongValue(v22, v23, v24);

    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"textInputActionsType");
    v6->_textInputActionsType = objc_msgSend_unsignedLongValue(v27, v28, v29);

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"inputActionCountFromMergedActions");
    v6->_inputActionCountFromMergedActions = objc_msgSend_longValue(v32, v33, v34);

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"inputMode");
    inputMode = v6->_inputMode;
    v6->_inputMode = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"processBundleId");
    processBundleId = v6->_processBundleId;
    v6->_processBundleId = v41;

    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"flagOptions");
    v6->_flagOptions = objc_msgSend_unsignedLongValue(v45, v46, v47);

    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v49, v48, @"insertedTextLength");
    v6->_insertedTextLength = objc_msgSend_unsignedLongValue(v50, v51, v52);

    v53 = objc_opt_class();
    v55 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v54, v53, @"insertedEmojiCount");
    v6->_insertedEmojiCount = objc_msgSend_unsignedLongValue(v55, v56, v57);

    v58 = objc_opt_class();
    v60 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v59, v58, @"insertedPunctuationCount");
    v6->_insertedPunctuationCount = objc_msgSend_unsignedLongValue(v60, v61, v62);

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"removedTextLength");
    v6->_removedTextLength = objc_msgSend_unsignedLongValue(v65, v66, v67);

    v68 = objc_opt_class();
    v70 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v69, v68, @"removedEmojiCount");
    v6->_removedEmojiCount = objc_msgSend_unsignedLongValue(v70, v71, v72);

    v73 = objc_opt_class();
    v75 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v74, v73, @"removedPunctuationCount");
    v6->_removedPunctuationCount = objc_msgSend_unsignedLongValue(v75, v76, v77);

    v78 = objc_opt_class();
    v80 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v79, v78, @"largestSingleInsertionLength");
    v6->_largestSingleInsertionLength = objc_msgSend_unsignedLongValue(v80, v81, v82);

    v83 = objc_opt_class();
    v85 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v84, v83, @"largestSingleDeletionLength");
    v6->_largestSingleDeletionLength = objc_msgSend_unsignedLongValue(v85, v86, v87);

    v88 = objc_opt_class();
    v90 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v89, v88, @"clientSideSessionErrors");
    clientSideSessionErrors = v6->_clientSideSessionErrors;
    v6->_clientSideSessionErrors = v90;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v50.receiver = self;
  v50.super_class = IATextInputActionsSessionAction;
  coderCopy = coder;
  [(IAXPCObject *)&v50 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_relativeRangeBefore.location, v50.receiver, v50.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"relativeRangeBefore_location");

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v8, self->_relativeRangeBefore.length);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"relativeRangeBefore_length");

  v12 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v11, self->_source);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"source");

  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v14, self->_textInputActionsType);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"textInputActionsType");

  v18 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v17, self->_inputActionCountFromMergedActions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"inputActionCountFromMergedActions");

  objc_msgSend_encodeObject_forKey_(coderCopy, v20, self->_inputMode, @"inputMode");
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, self->_processBundleId, @"processBundleId");
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, self->_flagOptions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"flagOptions");

  v26 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v25, self->_insertedTextLength);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, v26, @"insertedTextLength");

  v29 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v28, self->_insertedEmojiCount);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, v29, @"insertedEmojiCount");

  v32 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v31, self->_insertedPunctuationCount);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, v32, @"insertedPunctuationCount");

  v35 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v34, self->_removedTextLength);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"removedTextLength");

  v38 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v37, self->_removedEmojiCount);
  objc_msgSend_encodeObject_forKey_(coderCopy, v39, v38, @"removedEmojiCount");

  v41 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v40, self->_removedPunctuationCount);
  objc_msgSend_encodeObject_forKey_(coderCopy, v42, v41, @"removedPunctuationCount");

  v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v43, self->_largestSingleInsertionLength);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"largestSingleInsertionLength");

  v47 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v46, self->_largestSingleDeletionLength);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"largestSingleDeletionLength");

  objc_msgSend_encodeObject_forKey_(coderCopy, v49, self->_clientSideSessionErrors, @"clientSideSessionErrors");
}

- (id)initFromDictionary:(id)dictionary
{
  v88.receiver = self;
  v88.super_class = IATextInputActionsSessionAction;
  dictionaryCopy = dictionary;
  v4 = [(IAXPCObject *)&v88 init];
  v5 = MEMORY[0x1E695DF00];
  v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v6, @"timestamp", v88.receiver, v88.super_class);
  objc_msgSend_doubleValue(v7, v8, v9);
  v12 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v5, v10, v11);

  objc_msgSend_setTimestamp_(v4, v13, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, @"appBundleId");
  objc_msgSend_setAppBundleId_(v4, v16, v15);

  v18 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v17, @"relativeRangeBefore_location");
  v21 = objc_msgSend_unsignedLongValue(v18, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v22, @"relativeRangeBefore_length");
  v26 = objc_msgSend_unsignedLongValue(v23, v24, v25);
  v4->_relativeRangeBefore.location = v21;
  v4->_relativeRangeBefore.length = v26;

  v28 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v27, @"source");
  v4->_source = objc_msgSend_unsignedLongValue(v28, v29, v30);

  v32 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v31, @"textInputActionsType");
  v4->_textInputActionsType = objc_msgSend_unsignedLongValue(v32, v33, v34);

  v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, @"inputActionCountFromMergedActions");
  v4->_inputActionCountFromMergedActions = objc_msgSend_longValue(v36, v37, v38);

  v39 = [IATextInputActionsInputMode alloc];
  v41 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v40, @"inputMode");
  v43 = objc_msgSend_initFromDictionary_(v39, v42, v41);
  inputMode = v4->_inputMode;
  v4->_inputMode = v43;

  v46 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v45, @"processBundleId");
  processBundleId = v4->_processBundleId;
  v4->_processBundleId = v46;

  v49 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v48, @"flagOptions");
  v4->_flagOptions = objc_msgSend_unsignedLongValue(v49, v50, v51);

  v53 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v52, @"insertedTextLength");
  v4->_insertedTextLength = objc_msgSend_unsignedLongValue(v53, v54, v55);

  v57 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v56, @"insertedEmojiCount");
  v4->_insertedEmojiCount = objc_msgSend_unsignedLongValue(v57, v58, v59);

  v61 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v60, @"insertedPunctuationCount");
  v4->_insertedPunctuationCount = objc_msgSend_unsignedLongValue(v61, v62, v63);

  v65 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v64, @"removedTextLength");
  v4->_removedTextLength = objc_msgSend_unsignedLongValue(v65, v66, v67);

  v69 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v68, @"removedEmojiCount");
  v4->_removedEmojiCount = objc_msgSend_unsignedLongValue(v69, v70, v71);

  v73 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v72, @"removedPunctuationCount");
  v4->_removedPunctuationCount = objc_msgSend_unsignedLongValue(v73, v74, v75);

  v77 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v76, @"largestSingleInsertionLength");
  v4->_largestSingleInsertionLength = objc_msgSend_unsignedLongValue(v77, v78, v79);

  v81 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v80, @"largestSingleDeletionLength");
  v4->_largestSingleDeletionLength = objc_msgSend_unsignedLongValue(v81, v82, v83);

  v85 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v84, @"clientSideSessionErrors");

  clientSideSessionErrors = v4->_clientSideSessionErrors;
  v4->_clientSideSessionErrors = v85;

  return v4;
}

@end