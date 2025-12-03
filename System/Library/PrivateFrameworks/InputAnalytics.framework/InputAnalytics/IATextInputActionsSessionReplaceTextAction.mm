@interface IATextInputActionsSessionReplaceTextAction
- (IATextInputActionsSessionReplaceTextAction)initWithCoder:(id)coder;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (int64_t)mergeActionIfPossible:(id)possible;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionReplaceTextAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if (objc_msgSend_isMergeableWith_(self, v5, possibleCopy))
  {
    v10 = objc_msgSend_asReplaceText(possibleCopy, v6, v7);
    if (!v10)
    {
      v59 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v11 = objc_msgSend_insertedTextLength(self, v8, v9);
    v14 = objc_msgSend_insertedTextLength(v10, v12, v13);
    objc_msgSend_setInsertedTextLengthWithoutTracking_(self, v15, v14 + v11);
    v18 = objc_msgSend_removedTextLength(self, v16, v17);
    v21 = objc_msgSend_removedTextLength(v10, v19, v20);
    objc_msgSend_setRemovedTextLengthWithoutTracking_(self, v22, v21 + v18);
    v25 = objc_msgSend_inputActionCount(v10, v23, v24);
    v28 = objc_msgSend_inputActionCountFromMergedActions(self, v26, v27);
    objc_msgSend_setInputActionCountFromMergedActions_(self, v29, v28 + v25);
    v32 = objc_msgSend_options(self, v30, v31);
    v35 = objc_msgSend_options(v10, v33, v34);
    objc_msgSend_setOptions_(self, v36, v35 | v32);
    v39 = objc_msgSend_removedEmojiCount(v10, v37, v38);
    v42 = objc_msgSend_removedEmojiCount(self, v40, v41);
    objc_msgSend_setRemovedEmojiCount_(self, v43, v42 + v39);
    v46 = objc_msgSend_insertedEmojiCount(v10, v44, v45);
    v49 = objc_msgSend_insertedEmojiCount(self, v47, v48);
    objc_msgSend_setInsertedEmojiCount_(self, v50, v49 + v46);
    v53 = objc_msgSend_netCharacterCount(v10, v51, v52);
    v56 = v53;
    if (v53 < 1)
    {
      if (v53 < 0)
      {
        v60 = objc_msgSend_largestSingleDeletionLength(self, v54, v55);
        v62 = -v56;
        if (v60 > -v56)
        {
          v62 = objc_msgSend_largestSingleDeletionLength(self, v61, v62);
        }

        objc_msgSend_setLargestSingleDeletionLength_(self, v61, v62);
      }
    }

    else
    {
      if (objc_msgSend_largestSingleInsertionLength(self, v54, v55) > v53)
      {
        v56 = objc_msgSend_largestSingleInsertionLength(self, v57, v58);
      }

      objc_msgSend_setLargestSingleInsertionLength_(self, v57, v56);
    }

    v63 = objc_msgSend_inputMode(possibleCopy, v54, v55);
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
LABEL_17:
        v59 = 1;
        goto LABEL_18;
      }
    }

    v75 = objc_msgSend_inputMode(possibleCopy, v69, v70);
    v78 = objc_msgSend_copy(v75, v76, v77);
    objc_msgSend_setInputMode_(self, v79, v78);

    goto LABEL_17;
  }

  v59 = 0;
LABEL_19:

  return v59;
}

- (IATextInputActionsSessionReplaceTextAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionReplaceTextAction;
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
  v8.super_class = IATextInputActionsSessionReplaceTextAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v8 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_options, v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"options");
}

- (id)initFromDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = IATextInputActionsSessionReplaceTextAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v10 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"options", v10.receiver, v10.super_class);

  v4[23] = objc_msgSend_longValue(v6, v7, v8);
  return v4;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionReplaceTextAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v8 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_options);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"options");

  return toDictionary;
}

@end