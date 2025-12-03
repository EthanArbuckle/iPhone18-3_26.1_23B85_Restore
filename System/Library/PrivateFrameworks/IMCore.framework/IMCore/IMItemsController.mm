@interface IMItemsController
+ (id)_charactersToIgnoreWhenParsingTextContent;
- (BOOL)_isSentMessage:(id)message;
- (BOOL)_trimIfNeeded;
- (IMItem)firstNonAssociatedItem;
- (IMItem)lastNonAssociatedItem;
- (IMMessageItem)lastIncomingFinishedMessageItem;
- (id)_appendArchivedItemsToItemsArray:(id)array;
- (id)_firstMessage;
- (id)_initWithItems:(id)items;
- (id)_itemForGUID:(id)d;
- (id)_lastFinishedMessage;
- (id)_lastIncomingFinishedMessageItemWithTextContent;
- (id)_lastIncomingMessage;
- (id)_lastMessage;
- (id)_lastMessageItemMatchingCriteria:(id)criteria;
- (id)_lastMessageItemWithService:(id)service;
- (id)_lastMessageItemWithServiceCapability:(id)capability;
- (id)_lastPendingSatelliteSendMessage;
- (id)_lastRelatedIncomingFinishedMessageTextContentWithLimit:(int64_t)limit;
- (id)_lastSentMessage;
- (id)_sentMessagesSinceInterworking;
- (unint64_t)_indexOfItem:(id)item;
- (void)_didReplaceItem:(__CFArray *)item oldItem:(id)oldItem idx:(int64_t)idx;
- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage;
- (void)_mergeItems:(id)items;
- (void)_removeAllItemsSkippingCallToItemsDidChange:(BOOL)change;
- (void)_removeItem:(id)item;
- (void)_replaceAndSortItemsWithUnsortedItems:(id)items;
- (void)_replaceItems:(id)items skipCallToItemsDidChange:(BOOL)change;
- (void)_replaceStaleTypingMessage;
- (void)_resortItems;
- (void)_setSortID:(id)d;
- (void)assignSortIDsToItems:(id)items shouldRecalculateSortIDForAllMessages:(BOOL)messages;
- (void)dealloc;
- (void)setCapacity:(unint64_t)capacity;
@end

@implementation IMItemsController

- (id)_lastFinishedMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_9:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isTypingMessage(v5, v6, v7) & 1) == 0 && (objc_msgSend_isSuggestedActionResponse(v5, v8, v9) & 1) == 0 && objc_msgSend_isLastMessageCandidate(v5, v10, v11) && !objc_msgSend_isRCSEncryptionTest(v5, v12, v13))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

  return v5;
}

- (BOOL)_trimIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  items = self->_items;
  Count = CFArrayGetCount(items);
  v5 = self->_capacity + 5;
  if (Count > v5)
  {
    v18.location = 0;
    v18.length = Count - v5;
    CFArrayReplaceValues(items, v18, 0, 0);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, Count);
        v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v9, v5);
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "We are trimming items as our count (count: %@) is over the maxCapacity (maxCapacity: %@)", &v13, 0x16u);
      }
    }
  }

  result = Count > v5;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_lastMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isLastMessageCandidate(v5, v6, v7))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  return v5;
}

- (IMMessageItem)lastIncomingFinishedMessageItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isFromMe(v5, v6, v7) & 1) == 0 && (objc_msgSend_isTypingMessage(v5, v8, v9) & 1) == 0 && (objc_msgSend_isLastMessageCandidate(v5, v10, v11))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  items = self->_items;
  if (items)
  {
    CFRelease(items);
  }

  v4.receiver = self;
  v4.super_class = IMItemsController;
  [(IMItemsController *)&v4 dealloc];
}

- (void)setCapacity:(unint64_t)capacity
{
  if (self->_capacity != capacity)
  {
    self->_capacity = capacity;
    if (objc_msgSend__trimIfNeeded(self, a2, capacity))
    {
      items = self->_items;

      objc_msgSend__itemsDidChange_(self, v4, items);
    }
  }
}

- (void)assignSortIDsToItems:(id)items shouldRecalculateSortIDForAllMessages:(BOOL)messages
{
  messagesCopy = messages;
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (objc_msgSend_count(itemsCopy, v7, v8) != 1)
  {
    v13 = itemsCopy;
    v15 = v13;
    v33 = itemsCopy;
    if (messagesCopy)
    {
      v16 = objc_msgSend_sortedArrayUsingComparator_(v13, v14, &unk_1F1B6E0C0);

      v15 = v16;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v15;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v34, v38, 16);
    if (!v19)
    {
LABEL_20:

      itemsCopy = v33;
      goto LABEL_21;
    }

    v22 = v19;
    v23 = *v35;
    v24 = 1;
LABEL_7:
    v25 = 0;
    while (1)
    {
      if (*v35 != v23)
      {
        objc_enumerationMutation(v17);
      }

      v26 = *(*(&v34 + 1) + 8 * v25);
      v29 = 0;
      if (objc_msgSend__shouldPinUnsentMessagesToBottom(self, v20, v21) && !messagesCopy)
      {
        v29 = objc_msgSend_unsentIsFromMeItem(v26, v27, v28);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((objc_msgSend_isTypingMessage(v26, v30, v31) | v29))
        {
          goto LABEL_17;
        }
      }

      else if (v29)
      {
LABEL_17:
        objc_msgSend_setSortID_(v26, v30, 0);
        goto LABEL_18;
      }

      objc_msgSend_setSortID_(v26, v30, v24++);
LABEL_18:
      if (v22 == ++v25)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v34, v38, 16);
        if (!v22)
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }
    }
  }

  v11 = objc_msgSend_firstObject(itemsCopy, v9, v10);
  objc_msgSend_setSortID_(v11, v12, 1);

LABEL_21:
  v32 = *MEMORY[0x1E69E9840];
}

- (id)_initWithItems:(id)items
{
  itemsCopy = items;
  v18.receiver = self;
  v18.super_class = IMItemsController;
  v7 = [(IMItemsController *)&v18 init];
  if (v7)
  {
    v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
    isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v8, v9, v10);

    if (isGroupTypingIndicatorsEnabled)
    {
      v12 = objc_alloc_init(IMGroupTypingTrackingController);
      typingTrackingController = v7->_typingTrackingController;
      v7->_typingTrackingController = v12;

      objc_msgSend_setDelegate_(v7->_typingTrackingController, v14, v7);
    }

    if (itemsCopy)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, itemsCopy);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    v7->_items = MutableCopy;
    v7->_capacity = CFArrayGetCount(MutableCopy);
    objc_msgSend_assignSortIDsToItems_(v7, v16, itemsCopy);
  }

  return v7;
}

- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage
{
  indexCopy = index;
  itemCopy = item;
  items = self->_items;
  v11 = _IMItemsControllerGetTypingMessage(items);
  v57 = itemCopy;
  objc_opt_class();
  v14 = (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_associatedMessageType(v57, v12, v13) == 3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasEditedParts = objc_msgSend_hasEditedParts(v57, v15, v16);
  }

  else
  {
    hasEditedParts = 0;
  }

  _IMItemsControllerHandleItem(self, items, v57, (v14 | hasEditedParts) & 1, 1, indexCopy, storage);
  v18 = _IMItemsControllerGetTypingMessage(items);
  v21 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v19, v20);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v21, v22, v23);

  if ((isGroupTypingIndicatorsEnabled & 1) == 0 && v11 != v18)
  {
    if (v11)
    {
      objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v25, self, sel__replaceStaleTypingMessage, 0);
    }

    if (v18)
    {
      v26 = _IMTypingMessageTimeout();
      v29 = objc_msgSend_date(MEMORY[0x1E695DF00], v27, v28);
      objc_msgSend_timeIntervalSinceReferenceDate(v29, v30, v31);
      v33 = v32;
      v36 = objc_msgSend_time(v18, v34, v35);
      objc_msgSend_timeIntervalSinceReferenceDate(v36, v37, v38);
      v40 = v26 - (v33 - v39) + 1.0;
      v41 = 0.0;
      if (v40 >= 0.0)
      {
        v42 = _IMTypingMessageTimeout();
        v45 = objc_msgSend_date(MEMORY[0x1E695DF00], v43, v44);
        objc_msgSend_timeIntervalSinceReferenceDate(v45, v46, v47);
        v49 = v48;
        v52 = objc_msgSend_time(v18, v50, v51);
        objc_msgSend_timeIntervalSinceReferenceDate(v52, v53, v54);
        v41 = v42 - (v49 - v55) + 1.0;
      }

      objc_msgSend_performSelector_withObject_afterDelay_(self, v56, sel__replaceStaleTypingMessage, 0, v41);
    }
  }

  objc_msgSend__itemsDidChange_(self, v25, items);
}

- (void)_removeItem:(id)item
{
  items = self->_items;
  v5 = _IMItemsControllerIndexOfExistingItem(items, item, 0);
  if (v5 != -1)
  {
    CFArrayRemoveValueAtIndex(items, v5);

    objc_msgSend__itemsDidChange_(self, v6, items);
  }
}

- (void)_replaceItems:(id)items skipCallToItemsDidChange:(BOOL)change
{
  itemsCopy = items;
  items = self->_items;
  _IMItemsControllerReplaceItems(self, items, itemsCopy);
  capacity = self->_capacity;
  if (capacity <= objc_msgSend_count(itemsCopy, v8, v9))
  {
    v12 = objc_msgSend_count(itemsCopy, v10, v11);
  }

  else
  {
    v12 = self->_capacity;
  }

  self->_capacity = v12;
  objc_msgSend_assignSortIDsToItems_(self, v10, items);
  if (!change)
  {
    objc_msgSend__itemsDidChange_(self, v13, items);
  }
}

- (void)_replaceAndSortItemsWithUnsortedItems:(id)items
{
  v7 = objc_msgSend_mutableCopy(items, a2, items);
  if (objc_msgSend_count(v7, v4, v5) >= 2)
  {
    _IMItemsControllerSortItems(v7);
  }

  objc_msgSend__replaceItems_(self, v6, v7);
}

- (void)_removeAllItemsSkippingCallToItemsDidChange:(BOOL)change
{
  items = self->_items;
  CFArrayRemoveAllValues(items);
  if (!change)
  {

    objc_msgSend__itemsDidChange_(self, v6, items);
  }
}

- (void)_replaceStaleTypingMessage
{
  v10 = *MEMORY[0x1E69E9840];
  items = self->_items;
  v4 = _IMItemsControllerGetTypingMessage(items);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Replacing stale typing indicator: %@)", &v8, 0xCu);
      }
    }

    _IMItemsControllerHandleItem(self, items, v4, 0, 0, 0, 0);
    objc_msgSend__itemsDidChange_(self, v6, items);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_resortItems
{
  Count = CFArrayGetCount(self->_items);
  MutableCopy = CFArrayCreateMutableCopy(0, Count, self->_items);
  _IMItemsControllerSortItems(MutableCopy);
  objc_msgSend__replaceItems_(self, v5, MutableCopy);

  CFRelease(MutableCopy);
}

- (void)_setSortID:(id)d
{
  v108 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_msgSend__items(self, v3, v4);
  v91 = objc_msgSend_lastObject(v5, v6, v7);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isTypingMessage(v91, v8, v9))
  {
    v88 = objc_msgSend_isFromMe(v91, v10, v11) ^ 1;
  }

  else
  {
    v88 = 0;
  }

  objc_opt_class();
  v14 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isTypingMessage(v91, v12, v13) & 1) == 0 && objc_msgSend_sortID(v91, v12, v13) == 0;
  if (((v88 | v14) & 1) != 0 && (objc_msgSend__shouldPinUnsentMessagesToBottom(self, v12, v13) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        if (v88)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        *buf = 138412802;
        v103 = v19;
        v104 = 2112;
        if (v14)
        {
          v18 = @"YES";
        }

        v105 = v18;
        v106 = 2112;
        v107 = v91;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Setting the sort ID from item before the last item -- lastItemIsTypingMessage %@ lastItemIsErrorCase %@ Last item %@", buf, 0x20u);
      }
    }

    if (v14)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "*** ---- Trying to fix a bad sort ID -- Printing All Items -- Please file a radar ---- ***", buf, 2u);
        }
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v23 = objc_msgSend__items(self, v20, v21);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v96, v101, 16);
      if (v25)
      {
        v26 = *v97;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v97 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v96 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v103 = v28;
                _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "\t\t%@", buf, 0xCu);
              }
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, &v96, v101, 16);
        }

        while (v25);
      }
    }

    v31 = objc_msgSend__items(self, v15, v16);
    v34 = objc_msgSend_count(v31, v32, v33);

    v35 = v34 >= 2;
    v36 = v34 - 2;
    if (v35)
    {
      v37 = objc_msgSend__items(self, v12, v13);
      v39 = objc_msgSend_objectAtIndex_(v37, v38, v36);

      v91 = v39;
    }
  }

  if (objc_msgSend__shouldPinUnsentMessagesToBottom(self, v12, v13))
  {
    if ((objc_msgSend_unsentIsFromMeItem(dCopy, v40, v41) & 1) == 0)
    {
      v44 = objc_msgSend_sortID(v91, v42, v43);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v47 = objc_msgSend__items(self, v45, v46);
      v50 = objc_msgSend_reverseObjectEnumerator(v47, v48, v49);

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v92, v100, 16);
      if (v54)
      {
        v55 = *v93;
        while (2)
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v93 != v55)
            {
              objc_enumerationMutation(v50);
            }

            v57 = *(*(&v92 + 1) + 8 * j);
            if (objc_msgSend_sortID(v57, v52, v53))
            {
              v44 = objc_msgSend_sortID(v57, v52, v53);
              goto LABEL_53;
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v92, v100, 16);
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_53:

      objc_msgSend_setSortID_(dCopy, v60, v44 + 1);
    }
  }

  else
  {
    v58 = objc_msgSend_sortID(v91, v40, v41);
    objc_msgSend_setSortID_(dCopy, v59, v58 + 1);
  }

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v64 = MEMORY[0x1E696AD98];
      v65 = objc_msgSend_sortID(v91, v62, v63);
      v67 = objc_msgSend_numberWithUnsignedInteger_(v64, v66, v65);
      v70 = objc_msgSend_guid(v91, v68, v69);
      v71 = v70;
      v72 = @"NO";
      *buf = 138412802;
      v103 = v67;
      v104 = 2112;
      if (v88)
      {
        v72 = @"YES";
      }

      v105 = v70;
      v106 = 2112;
      v107 = v72;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "last item's sortID %@ guid %@ isTyping %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v73 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v76 = MEMORY[0x1E696AD98];
      v77 = objc_msgSend_sortID(dCopy, v74, v75);
      v79 = objc_msgSend_numberWithUnsignedInteger_(v76, v78, v77);
      v82 = objc_msgSend_guid(dCopy, v80, v81);
      v85 = objc_msgSend_unsentIsFromMeItem(dCopy, v83, v84);
      v86 = @"NO";
      *buf = 138412802;
      v103 = v79;
      v104 = 2112;
      if (v85)
      {
        v86 = @"YES";
      }

      v105 = v82;
      v106 = 2112;
      v107 = v86;
      _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_INFO, "set sortID %@ guid %@ itemIsUnsentAndFromMe %@", buf, 0x20u);
    }
  }

  v87 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_indexOfItem:(id)item
{
  result = _IMItemsControllerIndexOfExistingItem(self->_items, item, 0);
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)_itemForGUID:(id)d
{
  dCopy = d;
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = Count + 1;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(items, v7 - 2);
      v11 = objc_msgSend_guid(v8, v9, v10);
      isEqualToString = objc_msgSend_isEqualToString_(dCopy, v12, v11);

      if (isEqualToString)
      {
        break;
      }

      if (--v7 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)_mergeItems:(id)items
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = itemsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v40, v48, 16);
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = objc_msgSend_guid(v13, v8, v9, v40);
        v16 = objc_msgSend__itemForGUID_(self, v15, v14);

        if (!v16)
        {
          objc_msgSend_addObject_(v5, v17, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v40, v48, 16);
    }

    while (v10);
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x1E696AD98];
      v24 = objc_msgSend_count(v5, v21, v22);
      v26 = objc_msgSend_numberWithUnsignedInteger_(v23, v25, v24);
      v27 = MEMORY[0x1E696AD98];
      v30 = objc_msgSend_count(v6, v28, v29);
      v32 = objc_msgSend_numberWithUnsignedInteger_(v27, v31, v30);
      *buf = 138412546;
      v45 = v26;
      v46 = 2112;
      v47 = v32;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Merging %@ items of %@ items", buf, 0x16u);
    }
  }

  if (objc_msgSend_count(v5, v18, v19, v40))
  {
    v34 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_items, v33, v5);
    v37 = objc_msgSend_mutableCopy(v34, v35, v36);

    _IMItemsControllerSortItems(v37);
    objc_msgSend__replaceItems_skipCallToItemsDidChange_(self, v38, v37, 1);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_firstMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isFirstMessageCandidate(v6, v7, v8))
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  return v6;
}

- (IMItem)firstNonAssociatedItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (IMItem)lastNonAssociatedItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)_sentMessagesSinceInterworking
{
  v4 = objc_msgSend__lastInterworkedMessage(self, a2, v2);
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend__indexOfItem_(self, v6, v4);
    for (i = CFArrayGetCount(self->_items) - 1; i > v7; --i)
    {
      v11 = CFArrayGetValueAtIndex(self->_items, i);
      if (objc_msgSend__isSentMessage_(self, v12, v11))
      {
        objc_msgSend_addObject_(v5, v13, v11);
      }
    }

    v14 = objc_msgSend_copy(v5, v8, v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isSentMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isTypingMessage(messageCopy, v4, v5) & 1) == 0 && (objc_msgSend_isSuggestedActionResponse(messageCopy, v6, v7) & 1) == 0 && objc_msgSend_isFromMe(messageCopy, v8, v9) && objc_msgSend_isLastMessageCandidate(messageCopy, v10, v11))
  {
    v14 = objc_msgSend_isRCSEncryptionTest(messageCopy, v12, v13) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)_lastSentMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = Count + 1;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5 - 2);
      if (objc_msgSend__isSentMessage_(self, v7, v6))
      {
        break;
      }

      if (--v5 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (id)_lastPendingSatelliteSendMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_11:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isTypingMessage(v5, v6, v7) & 1) == 0 && (objc_msgSend_isSuggestedActionResponse(v5, v8, v9) & 1) == 0 && objc_msgSend_isFromMe(v5, v10, v11) && objc_msgSend_isLastMessageCandidate(v5, v12, v13) && (objc_msgSend_isRCSEncryptionTest(v5, v14, v15) & 1) == 0 && (objc_msgSend_isPendingSatelliteSend(v5, v16, v17))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_11;
      }
    }
  }

  return v5;
}

- (id)_lastIncomingMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_7:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isFromMe(v5, v6, v7) & 1) == 0 && (objc_msgSend_isLastMessageCandidate(v5, v8, v9))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v5;
}

+ (id)_charactersToIgnoreWhenParsingTextContent
{
  if (qword_1EB2E9FF0 != -1)
  {
    sub_1A84DF790();
  }

  v3 = qword_1EB2E9FF8;

  return v3;
}

- (id)_lastIncomingFinishedMessageItemWithTextContent
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v4 = Count + 1;
  while (1)
  {
    v5 = CFArrayGetValueAtIndex(items, v4 - 2);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isLastMessageCandidate(v5, v6, v7))
    {
      goto LABEL_9;
    }

    v10 = objc_msgSend_body(v5, v8, v9);
    v13 = objc_msgSend_string(v10, v11, v12);
    v16 = objc_msgSend__charactersToIgnoreWhenParsingTextContent(IMItemsController, v14, v15);
    v18 = objc_msgSend_stringByRemovingCharactersFromSet_(v13, v17, v16);

    if ((objc_msgSend_isFromMe(v5, v19, v20) & 1) == 0 && (objc_msgSend_isTypingMessage(v5, v21, v22) & 1) == 0 && objc_msgSend_length(v18, v23, v24))
    {
      break;
    }

LABEL_9:
    if (--v4 <= 1)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return v5;
}

- (id)_lastRelatedIncomingFinishedMessageTextContentWithLimit:(int64_t)limit
{
  v48 = objc_msgSend__lastIncomingFinishedMessageItemWithTextContent(self, a2, limit);
  if (!v48)
  {
    v42 = 0;
    goto LABEL_27;
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  v9 = 0;
  v10 = Count + 1;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(items, v10 - 2);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isLastMessageCandidate(v11, v12, v13))
    {
      goto LABEL_18;
    }

    v16 = objc_msgSend_body(v11, v14, v15);
    v19 = objc_msgSend_string(v16, v17, v18);
    v22 = objc_msgSend__charactersToIgnoreWhenParsingTextContent(IMItemsController, v20, v21);
    v24 = objc_msgSend_stringByRemovingCharactersFromSet_(v19, v23, v22);

    if (v11 == v48)
    {
      objc_msgSend_addObject_(v47, v25, v24);
      v27 = objc_msgSend_time(v11, v40, v41);
      goto LABEL_15;
    }

    if ((v8 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v27 = objc_msgSend_time(v11, v25, v26);
    objc_msgSend_timeIntervalSinceDate_(v27, v28, v9);
    v30 = v29;
    if ((objc_msgSend_isFromMe(v11, v31, v32) & 1) != 0 || (objc_msgSend_isTypingMessage(v11, v33, v34) & 1) != 0 || !objc_msgSend_length(v24, v35, v36) || fabs(v30) > 60.0 || objc_msgSend_count(v47, v37, v38) >= limit)
    {
      break;
    }

    objc_msgSend_addObject_(v47, v39, v24);
LABEL_15:

    v8 = 1;
    v9 = v27;
LABEL_17:

LABEL_18:
    if (--v10 <= 1)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (objc_msgSend_count(v47, v6, v7))
  {
    v43 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A82A96BC;
    v49[3] = &unk_1E7810C68;
    v42 = v43;
    v50 = v42;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v47, v44, 2, v49);
  }

  else
  {
    v42 = 0;
  }

LABEL_27:

  return v42;
}

- (id)_appendArchivedItemsToItemsArray:(id)array
{
  arrayCopy = array;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "appending archived items to current items array", buf, 2u);
    }
  }

  v8 = objc_msgSend__items(self, v5, v6);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (!v11)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v76 = 0;
      v45 = "Cannot append to either beginning or end as there are no previous items to append to";
      v46 = &v76;
LABEL_27:
      _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, v45, v46, 2u);
    }

LABEL_28:

    goto LABEL_29;
  }

  v14 = objc_msgSend_firstObject(arrayCopy, v12, v13);
  v17 = objc_msgSend_messageID(v14, v15, v16);
  v20 = objc_msgSend__items(self, v18, v19);
  v23 = objc_msgSend_lastMessageItem(v20, v21, v22);
  v26 = objc_msgSend_messageID(v23, v24, v25);

  if (v17 == v26)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v75 = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Going to append the incoming messages to the end of the _items array", v75, 2u);
      }
    }

    v30 = objc_alloc(MEMORY[0x1E696AC90]);
    v33 = objc_msgSend_count(arrayCopy, v31, v32);
    v35 = objc_msgSend_initWithIndexesInRange_(v30, v34, 1, v33 - 1);
    v38 = objc_msgSend__items(self, v36, v37);
    v40 = objc_msgSend_objectsAtIndexes_(arrayCopy, v39, v35);
LABEL_12:
    v42 = v40;
    v43 = objc_msgSend_arrayByAddingObjectsFromArray_(v38, v41, v40);

    if (v43)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v47 = objc_msgSend_lastObject(arrayCopy, v27, v28);
  v50 = objc_msgSend_messageID(v47, v48, v49);
  v53 = objc_msgSend__items(self, v51, v52);
  v56 = objc_msgSend_firstMessageItem(v53, v54, v55);
  v59 = objc_msgSend_messageID(v56, v57, v58);

  v60 = IMOSLoggingEnabled();
  if (v50 != v59)
  {
    if (!v60)
    {
      goto LABEL_29;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v73 = 0;
      v45 = "Cannot append to either beginning or end as there is a mismatch in messageIDs";
      v46 = &v73;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v60)
  {
    v63 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *v74 = 0;
      _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Going to append the incoming messages to the beginning of the _items array", v74, 2u);
    }
  }

  if (objc_msgSend_count(arrayCopy, v61, v62) >= 2)
  {
    v66 = objc_msgSend_count(arrayCopy, v64, v65) - 1;
    v67 = objc_alloc(MEMORY[0x1E696AC90]);
    v35 = objc_msgSend_initWithIndexesInRange_(v67, v68, 0, v66);
    v38 = objc_msgSend_objectsAtIndexes_(arrayCopy, v69, v35);
    v40 = objc_msgSend__items(self, v70, v71);
    goto LABEL_12;
  }

  v43 = objc_msgSend__items(self, v64, v65);
  if (!v43)
  {
LABEL_29:
    v43 = arrayCopy;
  }

LABEL_30:

  return v43;
}

- (id)_lastMessageItemMatchingCriteria:(id)criteria
{
  criteriaCopy = criteria;
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v7 = Count + 1;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(items, v7 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isLastMessageCandidate(v8, v9, v10) && (criteriaCopy[2](criteriaCopy, v8))
      {
        break;
      }

      if (--v7 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v8;
}

- (id)_lastMessageItemWithService:(id)service
{
  serviceCopy = service;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82A9C68;
  v9[3] = &unk_1E7810C90;
  v10 = serviceCopy;
  v5 = serviceCopy;
  v7 = objc_msgSend__lastMessageItemMatchingCriteria_(self, v6, v9);

  return v7;
}

- (id)_lastMessageItemWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82A9D5C;
  v9[3] = &unk_1E7810C90;
  v10 = capabilityCopy;
  v5 = capabilityCopy;
  v7 = objc_msgSend__lastMessageItemMatchingCriteria_(self, v6, v9);

  return v7;
}

- (void)_didReplaceItem:(__CFArray *)item oldItem:(id)oldItem idx:(int64_t)idx
{
  oldItemCopy = oldItem;
  v9 = CFArrayGetValueAtIndex(item, idx);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = sub_1A839343C;
    v54 = &unk_1E7813D58;
    v55 = v12;
    itemCopy = item;
    idxCopy = idx;
    v56 = oldItemCopy;
    v13 = _Block_copy(&v51);
    v16 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v14, v15, v51, v52, v53, v54);
    isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v16, v17, v18);

    if (isGroupTypingIndicatorsEnabled)
    {
      if (objc_msgSend_expireState(v12, v20, v21) == 2)
      {
        CFArrayRemoveValueAtIndex(item, idx);
      }

      v24 = objc_msgSend_typingTrackingController(self, v22, v23);
      v27 = objc_msgSend_currentTypingHandles(v24, v25, v26);
      v30 = objc_msgSend_count(v27, v28, v29);

      if (!v30)
      {
        v31 = _IMItemsControllerGetTypingMessage(item);
        if (v31)
        {
          v59.length = CFArrayGetCount(item);
          v59.location = 0;
          LastIndexOfValue = CFArrayGetLastIndexOfValue(item, v59, v31);
          CFArrayRemoveValueAtIndex(item, LastIndexOfValue);
        }
      }
    }

    else
    {
      v13[2](v13);
    }
  }

  else if (objc_msgSend_associatedMessageType(oldItemCopy, v10, v11) == 2 && objc_msgSend_associatedMessageType(v9, v33, v34) == 2)
  {
    v37 = objc_msgSend_associatedMessageGUID(oldItemCopy, v35, v36);
    v40 = objc_msgSend_associatedMessageGUID(v9, v38, v39);
    if (objc_msgSend_isEqualToString_(v37, v41, v40))
    {
      v44 = objc_msgSend_consumedSessionPayloads(oldItemCopy, v42, v43);
      v47 = objc_msgSend_count(v44, v45, v46);

      if (!v47)
      {
        goto LABEL_16;
      }

      v37 = objc_msgSend_consumedSessionPayloads(oldItemCopy, v48, v49);
      objc_msgSend_setConsumedSessionPayloads_(v9, v50, v37);
    }

    else
    {
    }
  }

LABEL_16:
}

@end