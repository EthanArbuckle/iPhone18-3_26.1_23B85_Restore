@interface IMInlineReplyChatItemRules
- (BOOL)_hasEarlierMessagesToLoad;
- (BOOL)_hasRecentMessagesToLoad;
- (IMInlineReplyChatItemRules)initWithChat:(id)a3 threadIdentifier:(id)a4;
- (_NSRange)threadOriginatorRange;
- (id)_filteredChatItemsForNewChatItems:(id)a3;
@end

@implementation IMInlineReplyChatItemRules

- (IMInlineReplyChatItemRules)initWithChat:(id)a3 threadIdentifier:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = IMInlineReplyChatItemRules;
  v7 = [(IMTranscriptChatItemRules *)&v15 _initWithChat:a3];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setThreadIdentifier_(v7, v8, v6);
    v10 = IMMessageThreadIdentifierGetOriginatorGUID();
    objc_msgSend_setThreadOriginatorMessageGUID_(v9, v11, v10);

    OriginatorRange = IMMessageThreadIdentifierGetOriginatorRange();
    objc_msgSend_setThreadOriginatorRange_(v9, v13, OriginatorRange, v13);
  }

  return v9;
}

- (BOOL)_hasEarlierMessagesToLoad
{
  v4 = objc_msgSend_inlineReplyController(self, a2, v2);

  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_inlineReplyController(self, v5, v6);
  hasEarlierMessagesToLoad = objc_msgSend_hasEarlierMessagesToLoad(v7, v8, v9);

  return hasEarlierMessagesToLoad;
}

- (BOOL)_hasRecentMessagesToLoad
{
  v4 = objc_msgSend_inlineReplyController(self, a2, v2);

  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_inlineReplyController(self, v5, v6);
  hasRecentMessagesToLoad = objc_msgSend_hasRecentMessagesToLoad(v7, v8, v9);

  return hasRecentMessagesToLoad;
}

- (id)_filteredChatItemsForNewChatItems:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A831484C;
  aBlock[3] = &unk_1E7812378;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v4;
    v6 = v4;
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = objc_msgSend_count(v6, v8, v9);
    v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = v6;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v48, v54, 16);
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      v18 = 0x1E780D000uLL;
      v40 = *v49;
      v41 = v13;
      do
      {
        v19 = 0;
        v42 = v16;
        do
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v48 + 1) + 8 * v19);
          v22 = v5[2](v5, v20);
          if (v22)
          {
            objc_msgSend_addObject_(v12, v21, v22);
          }

          else
          {
            v23 = *(v18 + 1976);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v20;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v43 = v24;
              v27 = objc_msgSend_aggregateAttachmentParts(v24, v25, v26);
              v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v44, v53, 16);
              if (v29)
              {
                v30 = v29;
                v31 = *v45;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v45 != v31)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v34 = v5[2](v5, *(*(&v44 + 1) + 8 * i));
                    if (v34)
                    {
                      objc_msgSend_addObject_(v12, v33, v34);
                    }
                  }

                  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v35, &v44, v53, 16);
                }

                while (v30);
              }

              v17 = v40;
              v13 = v41;
              v18 = 0x1E780D000;
              v16 = v42;
            }
          }

          ++v19;
        }

        while (v19 != v16);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v36, &v48, v54, 16);
      }

      while (v16);
    }

    v4 = v39;
  }

  else
  {
    v12 = v5[2](v5, v4);
  }

  v37 = *MEMORY[0x1E69E9840];

  return v12;
}

- (_NSRange)threadOriginatorRange
{
  p_threadOriginatorRange = &self->_threadOriginatorRange;
  location = self->_threadOriginatorRange.location;
  length = p_threadOriginatorRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end