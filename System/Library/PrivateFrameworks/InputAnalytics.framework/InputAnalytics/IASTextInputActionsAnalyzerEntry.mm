@interface IASTextInputActionsAnalyzerEntry
+ (id)generateAnalyzerEntryFromAction:(id)action;
- (void)increaseWithEntry:(id)entry;
@end

@implementation IASTextInputActionsAnalyzerEntry

+ (id)generateAnalyzerEntryFromAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(IASTextInputActionsAnalyzerEntry);
  objc_msgSend_setNetCharacters_(v4, v5, 0);
  objc_msgSend_setUserRemovedCharacters_(v4, v6, 0);
  objc_msgSend_setNetEmojiCharacters_(v4, v7, 0);
  objc_msgSend_setUserRemovedEmojiCharacters_(v4, v8, 0);
  v11 = objc_msgSend_inputActionCount(actionCopy, v9, v10);
  objc_msgSend_setInputActions_(v4, v12, v11);
  v15 = objc_msgSend_asInsertion(actionCopy, v13, v14);
  v20 = objc_msgSend_asCommitText(actionCopy, v16, v17);
  if (v15 | v20)
  {
    v21 = objc_msgSend_insertedTextLength(actionCopy, v18, v19);
    v24 = objc_msgSend_insertedEmojiCount(actionCopy, v22, v23);
    objc_msgSend_setNetCharacters_(v4, v25, v21 - v24);
    objc_msgSend_setUserRemovedCharacters_(v4, v26, 0);
    v29 = objc_msgSend_insertedEmojiCount(actionCopy, v27, v28);
    objc_msgSend_setNetEmojiCharacters_(v4, v30, v29);
    objc_msgSend_setUserRemovedEmojiCharacters_(v4, v31, 0);
    v32 = v4;
  }

  else
  {
    v33 = objc_msgSend_asDeletion(actionCopy, v18, v19);
    v36 = v33;
    if (v33)
    {
      v37 = objc_msgSend_removedTextLength(v33, v34, v35);
      v40 = v37 - objc_msgSend_removedEmojiCount(v36, v38, v39);
      objc_msgSend_setNetCharacters_(v4, v41, -v40);
      objc_msgSend_setUserRemovedCharacters_(v4, v42, v40);
      v45 = objc_msgSend_removedEmojiCount(v36, v43, v44);
      objc_msgSend_setNetEmojiCharacters_(v4, v46, -v45);
      v49 = objc_msgSend_removedEmojiCount(v36, v47, v48);
      objc_msgSend_setUserRemovedEmojiCharacters_(v4, v50, v49);
      v51 = v4;
    }

    else
    {
      v52 = objc_msgSend_asReplaceText(actionCopy, v34, v35);
      v55 = v52;
      if (v52)
      {
        v56 = objc_msgSend_insertedTextLength(v52, v53, v54);
        v59 = objc_msgSend_insertedEmojiCount(v55, v57, v58);
        v62 = objc_msgSend_removedTextLength(v55, v60, v61);
        v65 = objc_msgSend_removedEmojiCount(v55, v63, v64);
        objc_msgSend_setNetCharacters_(v4, v66, v56 - (v59 + v62) + v65);
        if (objc_msgSend_textInputActionsType(actionCopy, v67, v68) == 18 && objc_msgSend_netCharacters(v4, v69, v70) < 0)
        {
          v82 = -objc_msgSend_netCharacters(v4, v69, v71);
          objc_msgSend_setUserRemovedCharacters_(v4, v83, v82);
        }

        else
        {
          objc_msgSend_setUserRemovedCharacters_(v4, v69, 0);
        }

        v74 = objc_msgSend_insertedEmojiCount(v55, v72, v73);
        v77 = objc_msgSend_removedEmojiCount(v55, v75, v76);
        objc_msgSend_setNetEmojiCharacters_(v4, v78, v74 - v77);
        objc_msgSend_setUserRemovedEmojiCharacters_(v4, v79, 0);
      }

      v80 = v4;
    }
  }

  return v4;
}

- (void)increaseWithEntry:(id)entry
{
  entryCopy = entry;
  self->_netCharacters += objc_msgSend_netCharacters(entryCopy, v5, v6);
  self->_userRemovedCharacters += objc_msgSend_userRemovedCharacters(entryCopy, v7, v8);
  self->_netEmojiCharacters += objc_msgSend_netEmojiCharacters(entryCopy, v9, v10);
  self->_userRemovedEmojiCharacters += objc_msgSend_userRemovedEmojiCharacters(entryCopy, v11, v12);
  v15 = objc_msgSend_inputActions(entryCopy, v13, v14);

  self->_inputActions += v15;
}

@end