@interface IATextInputActionsSessionInsertionAction
- (IATextInputActionsSessionInsertionAction)initWithCoder:(id)coder;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (int64_t)inputActionCount;
- (int64_t)mergeActionIfPossible:(id)possible;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionInsertionAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if (objc_msgSend_isMergeableWith_(self, v5, possibleCopy))
  {
    v10 = objc_msgSend_asInsertion(possibleCopy, v6, v7);
    if (!v10)
    {
      v60 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = objc_msgSend_insertedTextLength(self, v8, v9);
    v14 = objc_msgSend_insertedTextLength(v10, v12, v13);
    objc_msgSend_setInsertedTextLengthWithoutTracking_(self, v15, v14 + v11);
    v18 = objc_msgSend_inputActionCount(v10, v16, v17);
    v21 = objc_msgSend_inputActionCountFromMergedActions(self, v19, v20);
    objc_msgSend_setInputActionCountFromMergedActions_(self, v22, v21 + v18);
    v25 = objc_msgSend_withAlternativesCount(v10, v23, v24);
    v28 = objc_msgSend_withAlternativesCount(self, v26, v27);
    objc_msgSend_setWithAlternativesCount_(self, v29, v28 + v25);
    v32 = objc_msgSend_options(self, v30, v31);
    v35 = objc_msgSend_options(v10, v33, v34);
    objc_msgSend_setOptions_(self, v36, v35 | v32);
    v39 = objc_msgSend_insertedEmojiCount(v10, v37, v38);
    v42 = objc_msgSend_insertedEmojiCount(self, v40, v41);
    objc_msgSend_setInsertedEmojiCount_(self, v43, v42 + v39);
    v46 = objc_msgSend_insertedPunctuationCount(v10, v44, v45);
    v49 = objc_msgSend_insertedPunctuationCount(self, v47, v48);
    objc_msgSend_setInsertedPunctuationCount_(self, v50, v49 + v46);
    v53 = objc_msgSend_largestSingleInsertionLength(self, v51, v52);
    if (v53 <= objc_msgSend_insertedTextLength(v10, v54, v55))
    {
      v58 = objc_msgSend_insertedTextLength(v10, v56, v57);
    }

    else
    {
      v58 = objc_msgSend_largestSingleInsertionLength(self, v56, v57);
    }

    objc_msgSend_setLargestSingleInsertionLength_(self, v59, v58);
    v63 = objc_msgSend_inputMode(possibleCopy, v61, v62);
    v66 = objc_msgSend_language(v63, v64, v65);
    if (v66)
    {
    }

    else
    {
      v71 = objc_msgSend_inputMode(possibleCopy, v67, v68);
      v74 = objc_msgSend_region(v71, v72, v73);

      if (!v74)
      {
LABEL_12:
        v60 = 1;
        goto LABEL_13;
      }
    }

    v75 = objc_msgSend_inputMode(possibleCopy, v69, v70);
    v78 = objc_msgSend_copy(v75, v76, v77);
    objc_msgSend_setInputMode_(self, v79, v78);

    goto LABEL_12;
  }

  v60 = 0;
LABEL_14:

  return v60;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = IATextInputActionsSessionInsertionAction;
  v3 = [(IATextInputActionsSessionAction *)&v19 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_withAlternativesCount(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"withAlternativesCount=%lu", v10);
  objc_msgSend_addObject_(v6, v13, v12);

  v15 = objc_msgSend_componentsJoinedByString_(v6, v14, @", ");
  v17 = objc_msgSend_stringByAppendingFormat_(v3, v16, @", %@", v15);

  return v17;
}

- (int64_t)inputActionCount
{
  v4 = objc_msgSend_source(self, a2, v2);
  v7 = objc_msgSend_textInputActionsType(self, v5, v6);
  v9 = objc_msgSend_shouldSeparatelyTrackKeystrokesForSource_type_(IATextInputActionsSessionAction, v8, v4, v7) ^ 1;
  return objc_msgSend_inputActionCountFromMergedActions(self, v10, v11) + v9;
}

- (IATextInputActionsSessionInsertionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IATextInputActionsSessionInsertionAction;
  v5 = [(IATextInputActionsSessionAction *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"options");
    v5->_options = objc_msgSend_longValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"withAlternativesCount");
    v5->_withAlternativesCount = objc_msgSend_unsignedLongValue(v13, v14, v15);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = IATextInputActionsSessionInsertionAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v11 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_options, v11.receiver, v11.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"options");

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v8, self->_withAlternativesCount);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"withAlternativesCount");
}

- (id)initFromDictionary:(id)dictionary
{
  v14.receiver = self;
  v14.super_class = IATextInputActionsSessionInsertionAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v14 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"options", v14.receiver, v14.super_class);
  v4[23] = objc_msgSend_longValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"withAlternativesCount");

  v4[24] = objc_msgSend_unsignedLongValue(v10, v11, v12);
  return v4;
}

- (id)toDictionary
{
  v11.receiver = self;
  v11.super_class = IATextInputActionsSessionInsertionAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v11 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_options);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"options");

  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_withAlternativesCount);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v9, v8, @"withAlternativesCount");

  return toDictionary;
}

@end