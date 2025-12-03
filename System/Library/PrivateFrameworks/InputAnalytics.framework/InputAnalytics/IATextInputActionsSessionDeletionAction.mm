@interface IATextInputActionsSessionDeletionAction
- (IATextInputActionsSessionDeletionAction)initWithCoder:(id)coder;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (int64_t)inputActionCount;
- (int64_t)mergeActionIfPossible:(id)possible;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionDeletionAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if (objc_msgSend_isMergeableWith_(self, v5, possibleCopy))
  {
    v10 = objc_msgSend_asDeletion(possibleCopy, v6, v7);
    if (!v10)
    {
      v46 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = objc_msgSend_removedTextLength(self, v8, v9);
    v14 = objc_msgSend_removedTextLength(v10, v12, v13);
    objc_msgSend_setRemovedTextLengthWithoutTracking_(self, v15, v14 + v11);
    v18 = objc_msgSend_inputActionCount(v10, v16, v17);
    v21 = objc_msgSend_inputActionCountFromMergedActions(self, v19, v20);
    objc_msgSend_setInputActionCountFromMergedActions_(self, v22, v21 + v18);
    v25 = objc_msgSend_options(self, v23, v24);
    v28 = objc_msgSend_options(v10, v26, v27);
    objc_msgSend_setOptions_(self, v29, v28 | v25);
    v32 = objc_msgSend_removedEmojiCount(v10, v30, v31);
    v35 = objc_msgSend_removedEmojiCount(self, v33, v34);
    objc_msgSend_setRemovedEmojiCount_(self, v36, v35 + v32);
    v39 = objc_msgSend_largestSingleDeletionLength(self, v37, v38);
    if (v39 <= objc_msgSend_removedTextLength(v10, v40, v41))
    {
      v44 = objc_msgSend_removedTextLength(v10, v42, v43);
    }

    else
    {
      v44 = objc_msgSend_largestSingleDeletionLength(self, v42, v43);
    }

    objc_msgSend_setLargestSingleDeletionLength_(self, v45, v44);
    v49 = objc_msgSend_inputMode(possibleCopy, v47, v48);
    v52 = objc_msgSend_language(v49, v50, v51);
    if (v52)
    {
    }

    else
    {
      v57 = objc_msgSend_inputMode(possibleCopy, v53, v54);
      v60 = objc_msgSend_region(v57, v58, v59);

      if (!v60)
      {
LABEL_12:
        v46 = 1;
        goto LABEL_13;
      }
    }

    v61 = objc_msgSend_inputMode(possibleCopy, v55, v56);
    v64 = objc_msgSend_copy(v61, v62, v63);
    objc_msgSend_setInputMode_(self, v65, v64);

    goto LABEL_12;
  }

  v46 = 0;
LABEL_14:

  return v46;
}

- (id)description
{
  v26.receiver = self;
  v26.super_class = IATextInputActionsSessionDeletionAction;
  v3 = [(IATextInputActionsSessionAction *)&v26 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_removedTextLength(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"removedTextLength=%lu", v10);
  objc_msgSend_addObject_(v6, v13, v12);

  v14 = MEMORY[0x1E696AEC0];
  v17 = objc_msgSend_removedEmojiCount(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v14, v18, @"removedEmojiCount=%lu", v17);
  objc_msgSend_addObject_(v6, v20, v19);

  v22 = objc_msgSend_componentsJoinedByString_(v6, v21, @", ");
  v24 = objc_msgSend_stringByAppendingFormat_(v3, v23, @", %@", v22);

  return v24;
}

- (int64_t)inputActionCount
{
  v4 = objc_msgSend_source(self, a2, v2);
  v7 = objc_msgSend_textInputActionsType(self, v5, v6);
  v9 = objc_msgSend_shouldSeparatelyTrackKeystrokesForSource_type_(IATextInputActionsSessionAction, v8, v4, v7) ^ 1;
  return objc_msgSend_inputActionCountFromMergedActions(self, v10, v11) + v9;
}

- (IATextInputActionsSessionDeletionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionDeletionAction;
  v5 = [(IATextInputActionsSessionAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"options");
    v5->_options = objc_msgSend_longValue(v8, v9, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionDeletionAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v8 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_options, v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"options");
}

- (id)initFromDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = IATextInputActionsSessionDeletionAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v10 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"options", v10.receiver, v10.super_class);

  v4[23] = objc_msgSend_longValue(v6, v7, v8);
  return v4;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionDeletionAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v8 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_options);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"options");

  return toDictionary;
}

@end