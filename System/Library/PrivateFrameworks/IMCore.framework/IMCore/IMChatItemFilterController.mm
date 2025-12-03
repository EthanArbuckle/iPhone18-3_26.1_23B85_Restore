@interface IMChatItemFilterController
- (BOOL)itemMatchesFilter:(id)filter;
- (IMChat)chat;
- (IMChatItemFilterController)initWithChat:(id)chat;
- (IMMessage)firstMessage;
- (IMMessage)lastMessage;
- (NSArray)chatItems;
- (id)_itemsMatchingFilter:(id)filter guids:(id)guids;
- (void)_itemsDidChange:(id)change;
- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems;
- (void)_postNotification:(id)notification userInfo:(id)info;
- (void)_replaceStaleChatItems;
- (void)_setupChatItemRules;
- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post;
- (void)dealloc;
- (void)insertHistoricalMessages:(id)messages queryID:(id)d hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)after isReplacingItems:(BOOL)items;
- (void)insertItem:(id)item;
- (void)performActionDisallowingItemInsert:(id)insert;
- (void)removeItem:(id)item;
- (void)replaceItems:(id)items;
@end

@implementation IMChatItemFilterController

- (IMChatItemFilterController)initWithChat:(id)chat
{
  chatCopy = chat;
  v13.receiver = self;
  v13.super_class = IMChatItemFilterController;
  v5 = [(IMItemsController *)&v13 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setChat_(v5, v6, chatCopy);
    v8 = objc_alloc(MEMORY[0x1E69A6158]);
    v10 = objc_msgSend_initWithTarget_action_(v8, v9, v7, sel__updateChatItemsForChatItemUpdater);
    chatItemsUpdater = v7->_chatItemsUpdater;
    v7->_chatItemsUpdater = v10;

    v7->_hasEarlierMessagesToLoad = 0;
    v7->_hasRecentMessagesToLoad = 0;
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_chatItemsUpdater, a2, v2);
  v4.receiver = self;
  v4.super_class = IMChatItemFilterController;
  [(IMItemsController *)&v4 dealloc];
}

- (IMMessage)firstMessage
{
  v3 = objc_msgSend__firstMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (NSArray)chatItems
{
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    objc_msgSend__setupChatItemRules(self, a2, v2);
    chatItemRules = self->_chatItemRules;
  }

  return objc_msgSend__chatItems(chatItemRules, a2, v2);
}

- (IMMessage)lastMessage
{
  v3 = objc_msgSend__lastMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (void)insertHistoricalMessages:(id)messages queryID:(id)d hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)after isReplacingItems:(BOOL)items
{
  v40 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = objc_msgSend_count(messagesCopy, v15, v16);
    v20 = objc_msgSend_numberWithUnsignedInteger_(v17, v19, v18);
    *buf = 136315394;
    *&buf[4] = "[IMChatItemFilterController insertHistoricalMessages:queryID:hasMessagesBefore:hasMessagesAfter:isReplacingItems:]";
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "%s archivedMessages: %@", buf, 0x16u);
  }

  self->_hasEarlierMessagesToLoad = before;
  self->_hasRecentMessagesToLoad = after;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_1A8259B90;
  v38 = sub_1A825AEF4;
  v21 = messagesCopy;
  v39 = v21;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_1A82FE28C;
  v29 = &unk_1E7811F80;
  v22 = dCopy;
  selfCopy = self;
  v32 = buf;
  beforeCopy = before;
  afterCopy = after;
  itemsCopy = items;
  v30 = v22;
  v23 = _Block_copy(&v26);
  objc_msgSend__updateChatItemsWithReason_block_(self, v24, @"history query", v23, v26, v27, v28, v29);

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_itemsDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = IMChatItemFilterController;
  [(IMItemsController *)&v6 _itemsDidChange:change];
  objc_msgSend_setNeedsUpdate(self->_chatItemsUpdater, v4, v5);
}

- (void)insertItem:(id)item
{
  v22 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (objc_msgSend_itemMatchesFilter_(self, v5, itemCopy))
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_guid(itemCopy, v7, v8);
      v18 = 136315394;
      v19 = "[IMChatItemFilterController insertItem:]";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s inserting %@, matches filter", &v18, 0x16u);
    }

    v12 = objc_msgSend_chat(self, v10, v11);
    v15 = objc_msgSend_chatStyle(v12, v13, v14);
    objc_msgSend__handleItem_forChatStyle_(self, v16, itemCopy, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (objc_msgSend_itemMatchesFilter_(self, v5, itemCopy))
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_guid(itemCopy, v7, v8);
      v12 = 136315394;
      v13 = "[IMChatItemFilterController removeItem:]";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s removing %@", &v12, 0x16u);
    }

    objc_msgSend__removeItem_(self, v10, itemCopy);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)replaceItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  itemsCopy = items;
  v6 = objc_alloc_init(v4);
  v8 = objc_msgSend__itemsMatchingFilter_guids_(self, v7, itemsCopy, v6);

  if (objc_msgSend_count(v8, v9, v10))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_componentsJoinedByString_(v6, v12, @",");
      v16 = 136315394;
      v17 = "[IMChatItemFilterController replaceItems:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "%s replacing items %@", &v16, 0x16u);
    }

    objc_msgSend__replaceItems_(self, v14, v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)performActionDisallowingItemInsert:(id)insert
{
  insertCopy = insert;
  objc_msgSend_setDisableItemInserts_(self, v5, 1);
  insertCopy[2](insertCopy);

  objc_msgSend_setDisableItemInserts_(self, v6, 0);
}

- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post
{
  postCopy = post;
  v192 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = objc_msgSend_chat(self, v11, v12);
    v16 = objc_msgSend_guid(v13, v14, v15);
    *buf = 138412546;
    v189 = v16;
    v190 = 2112;
    v191 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Update chat items (chatGUID: %@), reason: %@", buf, 0x16u);
  }

  v17 = self->_chatItemRules;
  if (self->_isUpdatingChatItems)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Update already in progress, executing update block", buf, 2u);
    }

    blockCopy[2](blockCopy);
    goto LABEL_73;
  }

  self->_isUpdatingChatItems = 1;
  blockCopy[2](blockCopy);
  objc_msgSend_setNeedsUpdate_(self->_chatItemsUpdater, v19, 0);
  self->_isUpdatingChatItems = 0;
  if (v17)
  {
    v171 = blockCopy;
    v22 = objc_msgSend__items(self, v20, v21);
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v26 = MEMORY[0x1E696AD98];
      v27 = objc_msgSend_count(v22, v24, v25);
      v29 = objc_msgSend_numberWithUnsignedInteger_(v26, v28, v27);
      *buf = 138412290;
      v189 = v29;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "\tIMItem count = %@", buf, 0xCu);
    }

    v32 = objc_msgSend__chatItems(v17, v30, v31);
    v35 = objc_msgSend_copy(v32, v33, v34);
    _IMChatItemsReplaceWithChatItemsForItems(v32, v17, v22);
    objc_msgSend__didProcessChatItems_(v17, v36, v32);
    v178 = v35;
    if (v35)
    {
      if (v32)
      {
LABEL_12:
        v172 = reasonCopy;
        v173 = v22;
        v166 = postCopy;
        v170 = v17;
        objc_msgSend_differenceFromArray_(v32, v37, v178);
        v185 = 0;
        v169 = v186 = 0;
        IMIndexesFromOrderedCollectionDifference(v169, &v186, &v185);
        v39 = v186;
        v174 = v185;
        v42 = objc_msgSend_date(MEMORY[0x1E695DF00], v40, v41);
        if (objc_msgSend_count(v39, v43, v44))
        {
          v183[0] = MEMORY[0x1E69E9820];
          v183[1] = 3221225472;
          v183[2] = sub_1A82FF480;
          v183[3] = &unk_1E7811FA8;
          v184 = v42;
          objc_msgSend_enumerateObjectsAtIndexes_options_usingBlock_(v32, v47, v39, 0, v183);
        }

        v167 = v42;
        v175 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v45, v46);
        v177 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v48, v49);
        v50 = objc_alloc(MEMORY[0x1E696AD50]);
        v53 = objc_msgSend_count(v178, v51, v52);
        v55 = objc_msgSend_initWithIndexesInRange_(v50, v54, 0, v53);
        v56 = objc_alloc(MEMORY[0x1E696AD50]);
        v59 = objc_msgSend_count(v32, v57, v58);
        v61 = objc_msgSend_initWithIndexesInRange_(v56, v60, 0, v59);
        objc_msgSend_removeIndexes_(v55, v62, v174);
        v168 = v39;
        objc_msgSend_removeIndexes_(v61, v63, v39);
        Index = objc_msgSend_firstIndex(v55, v64, v65);
        v69 = objc_msgSend_firstIndex(v61, v67, v68);
        selfCopy = self;
        if (Index != 0x7FFFFFFFFFFFFFFFLL)
        {
          v71 = v69;
          if (v69 != 0x7FFFFFFFFFFFFFFFLL)
          {
            do
            {
              v72 = objc_msgSend_objectAtIndex_(v178, v70, Index);
              v75 = objc_msgSend_objectAtIndex_(v32, v73, v71);
              if (v72 != v75)
              {
                objc_msgSend_addIndex_(v177, v74, v71);
                v78 = objc_msgSend__timeAdded(v72, v76, v77);
                objc_msgSend__setTimeAdded_(v75, v79, v78);

                self = selfCopy;
              }

              if (objc_msgSend__shouldReloadChatItem_oldChatItem_(self->_chatItemRules, v74, v75, v72))
              {
                objc_msgSend_addIndex_(v175, v80, v71);
              }

              Index = objc_msgSend_indexGreaterThanIndex_(v55, v80, Index);
              v71 = objc_msgSend_indexGreaterThanIndex_(v61, v81, v71);
            }

            while (Index != 0x7FFFFFFFFFFFFFFFLL && v71 != 0x7FFFFFFFFFFFFFFFLL);
          }
        }

        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v82 = v32;
        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v179, v187, 16);
        if (v84)
        {
          v87 = v84;
          v88 = 0;
          v89 = *v180;
          v17 = v170;
          do
          {
            for (i = 0; i != v87; ++i)
            {
              if (*v180 != v89)
              {
                objc_enumerationMutation(v82);
              }

              v91 = objc_msgSend__timeStale(*(*(&v179 + 1) + 8 * i), v85, v86);
              v93 = v91;
              if (v91)
              {
                v94 = objc_msgSend_earlierDate_(v91, v92, v88);

                if (v94 == v93)
                {
                  v95 = v93;

                  v88 = v95;
                }
              }
            }

            v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v179, v187, 16);
          }

          while (v87);

          v98 = v173;
          v99 = v168;
          if (v88)
          {
            v100 = objc_msgSend__nextStaleTime(v170, v96, v97);
            isEqualToDate = objc_msgSend_isEqualToDate_(v88, v101, v100);

            reasonCopy = v172;
            self = selfCopy;
            if ((isEqualToDate & 1) == 0)
            {
              v103 = IMLogHandleForCategory();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v189 = v88;
                _os_log_impl(&dword_1A823F000, v103, OS_LOG_TYPE_INFO, "\tSchedule _replaceStaleChatItems for nextStaleTime:%@", buf, 0xCu);
              }

              objc_msgSend__setNextStaleTime_(v170, v104, v88);
              objc_msgSend_timeIntervalSinceReferenceDate(v88, v105, v106);
              v108 = v107;
              objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v109, v110);
              v113 = 0.0;
              if (v108 > v114)
              {
                objc_msgSend_timeIntervalSinceReferenceDate(v88, v111, v112);
                v116 = v115;
                objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v117, v118);
                v113 = v116 - v119;
              }

              objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v111, selfCopy, sel__replaceStaleChatItems, 0);
              objc_msgSend_performSelector_withObject_afterDelay_(selfCopy, v120, sel__replaceStaleChatItems, 0, v113);
            }
          }

          else
          {
            reasonCopy = v172;
            self = selfCopy;
          }
        }

        else
        {

          v88 = 0;
          v98 = v173;
          v17 = v170;
          v99 = v168;
        }

        if (objc_msgSend_count(v174, v96, v97) || objc_msgSend_count(v99, v122, v123) || objc_msgSend_count(v175, v124, v125) || objc_msgSend_count(v177, v126, v127))
        {
          v128 = IMLogHandleForCategory();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v131 = objc_msgSend_chat(self, v129, v130);
            v134 = objc_msgSend_chat(self, v132, v133);
            v137 = objc_msgSend_guid(v134, v135, v136);
            *buf = 138412546;
            v189 = v131;
            v190 = 2112;
            v191 = v137;
            _os_log_impl(&dword_1A823F000, v128, OS_LOG_TYPE_INFO, "\tchat: %@, guid: %@", buf, 0x16u);

            self = selfCopy;
            v98 = v173;
          }

          if (objc_msgSend_count(v99, v138, v139))
          {
            v142 = IMLogHandleForCategory();
            if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v189 = v99;
              _os_log_impl(&dword_1A823F000, v142, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
            }
          }

          if (objc_msgSend_count(v174, v140, v141))
          {
            v145 = IMLogHandleForCategory();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v189 = v174;
              _os_log_impl(&dword_1A823F000, v145, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
            }
          }

          if (objc_msgSend_count(v175, v143, v144))
          {
            v148 = IMLogHandleForCategory();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v189 = v175;
              _os_log_impl(&dword_1A823F000, v148, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
            }
          }

          if (objc_msgSend_count(v177, v146, v147))
          {
            v149 = IMLogHandleForCategory();
            if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v189 = v177;
              _os_log_impl(&dword_1A823F000, v149, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
            }
          }

          v150 = IMLogHandleForCategory();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
          {
            v153 = MEMORY[0x1E696AD98];
            v154 = objc_msgSend_count(v178, v151, v152);
            v156 = objc_msgSend_numberWithUnsignedInteger_(v153, v155, v154);
            v157 = MEMORY[0x1E696AD98];
            v160 = objc_msgSend_count(v82, v158, v159);
            v162 = objc_msgSend_numberWithUnsignedInteger_(v157, v161, v160);
            *buf = 138412546;
            v189 = v156;
            v190 = 2112;
            v191 = v162;
            _os_log_impl(&dword_1A823F000, v150, OS_LOG_TYPE_INFO, "\toldChatItems: %@, newChatItems: %@", buf, 0x16u);

            v98 = v173;
          }

          if (v166)
          {
            objc_msgSend__postIMChatItemsDidChangeNotificationWithInserted_removed_reload_regenerate_oldChatItems_newChatItems_(self, v163, v99, v174, v175, v177, v178, v82);
          }
        }

        else
        {
          v165 = IMLogHandleForCategory();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v165, OS_LOG_TYPE_INFO, "\tDon't post update, no significant updates to chatItems.", buf, 2u);
          }
        }

        blockCopy = v171;
        goto LABEL_73;
      }
    }

    else
    {
      v178 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38);
      if (v32)
      {
        goto LABEL_12;
      }
    }

    v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38);
    goto LABEL_12;
  }

  v121 = IMLogHandleForCategory();
  if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v121, OS_LOG_TYPE_INFO, "ChatItem Rules undefined, skipping update.", buf, 2u);
  }

LABEL_73:
  v164 = *MEMORY[0x1E69E9840];
}

- (void)_replaceStaleChatItems
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "(IMChatItemFilterController) _replaceStaleChatItems", buf, 2u);
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = objc_msgSend_chatItems(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v57, v63, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v58;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v57 + 1) + 8 * i);
        v18 = objc_msgSend__timeStale(v15, v9, v10);
        if (v18)
        {
          v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v16, v17);
          objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21);
          v23 = v22;
          objc_msgSend_timeIntervalSinceReferenceDate(v18, v24, v25);
          v27 = v26;

          if (v23 >= v27)
          {
            v30 = objc_msgSend__item(v15, v28, v29);
            v31 = v30;
            if (v12 != v30)
            {
              v32 = v30;

              v31 = objc_msgSend__copy(v32, v33, v34);
              objc_msgSend_addObject_(v52, v35, v31);
              v12 = v32;
            }
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v57, v63, 16);
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = v52;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v53, v62, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v54;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = *(*(&v53 + 1) + 8 * j);
        v45 = objc_msgSend_chat(self, v39, v40);
        v48 = objc_msgSend_chatStyle(v45, v46, v47);
        objc_msgSend__handleItem_forChatStyle_(self, v49, v44, v48);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v53, v62, 16);
    }

    while (v41);
  }

  objc_msgSend__setNextStaleTime_(self->_chatItemRules, v50, 0);
  v51 = *MEMORY[0x1E69E9840];
}

- (void)_postNotification:(id)notification userInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  infoCopy = info;
  v10 = objc_msgSend_sharedRegistry(IMChatRegistry, v8, v9);
  isFirstLoad = objc_msgSend_isFirstLoad(v10, v11, v12);

  if ((isFirstLoad & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = notificationCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Notification posted: %@", &v20, 0xCu);
    }

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v17, v18, notificationCopy, self, infoCopy);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems
{
  v42[6] = *MEMORY[0x1E69E9840];
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v41[0] = @"__kIMChatItemsInserted";
  v21 = insertedCopy;
  if (!insertedCopy)
  {
    v21 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v18, v19);
  }

  v38 = v21;
  v42[0] = v21;
  v41[1] = @"__kIMChatItemsRemoved";
  v22 = removedCopy;
  if (!removedCopy)
  {
    v22 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v18, v19);
  }

  v37 = v22;
  v42[1] = v22;
  v41[2] = @"__kIMChatItemsReload";
  v23 = reloadCopy;
  if (!reloadCopy)
  {
    v23 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v18, v19);
  }

  v40 = removedCopy;
  v42[2] = v23;
  v41[3] = @"__kIMChatItemsRegenerate";
  v24 = regenerateCopy;
  if (!regenerateCopy)
  {
    v24 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v18, v19);
  }

  v25 = insertedCopy;
  v42[3] = v24;
  v41[4] = @"__kIMChatItemsOldItems";
  v26 = itemsCopy;
  if (!itemsCopy)
  {
    v26 = objc_msgSend_array(MEMORY[0x1E695DEC8], v18, v19);
  }

  v42[4] = v26;
  v41[5] = @"__kIMChatItemsNewItems";
  v27 = chatItemsCopy;
  if (!chatItemsCopy)
  {
    v27 = objc_msgSend_array(MEMORY[0x1E695DEC8], v18, v19);
  }

  v42[5] = v27;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v42, v41, 6);
  if (chatItemsCopy)
  {
    if (itemsCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (itemsCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  if (!regenerateCopy)
  {
  }

  if (reloadCopy)
  {
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_25:

    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (!v40)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v25)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v31 = objc_msgSend_notificationName(self, v28, v29);

  if (v31)
  {
    v34 = objc_msgSend_notificationName(self, v32, v33);
    objc_msgSend__postNotification_userInfo_(self, v35, v34, v30);
  }

  else
  {
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0330(v34);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_setupChatItemRules
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_IMCoreSetupTimingCollection(MEMORY[0x1E69A6170], a2, v2);
  objc_msgSend_startTimingForKey_(v4, v5, @"IMChatItemFilterController: Generate chat items");
  v8 = objc_msgSend_generateChatItemRules(self, v6, v7);
  chatItemRules = self->_chatItemRules;
  self->_chatItemRules = v8;

  v12 = objc_msgSend__items(self, v10, v11);
  v13 = self->_chatItemRules;
  v16 = objc_msgSend__chatItems(v13, v14, v15);
  _IMChatItemsReplaceWithChatItemsForItems(v16, v13, v12);
  objc_msgSend__didProcessChatItems_(v13, v17, v16);
  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v21 = MEMORY[0x1E696AD98];
    v22 = objc_msgSend_count(v16, v19, v20);
    v24 = objc_msgSend_numberWithUnsignedInteger_(v21, v23, v22);
    v27 = 136315394;
    v28 = "[IMChatItemFilterController _setupChatItemRules]";
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "%s Configuring chatItemRules and chatItems, count: %@", &v27, 0x16u);
  }

  objc_msgSend_stopTimingForKey_(v4, v25, @"IMChatItemFilterController: Generate chat items");
  v26 = *MEMORY[0x1E69E9840];
}

- (id)_itemsMatchingFilter:(id)filter guids:(id)guids
{
  guidsCopy = guids;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82FFDAC;
  v11[3] = &unk_1E7811FD0;
  v11[4] = self;
  v12 = guidsCopy;
  v7 = guidsCopy;
  v9 = objc_msgSend___imArrayByApplyingBlock_(filter, v8, v11);

  return v9;
}

- (BOOL)itemMatchesFilter:(id)filter
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_disableItemInserts(self, a2, filter);
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[IMChatItemFilterController itemMatchesFilter:]";
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "%s returning NO, disableItemInserts enabled", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3 ^ 1;
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

@end