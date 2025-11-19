@interface IMMessagePartChatItem
+ (BOOL)_isAllowlistedRichLinkSender:(id)a3 isBusiness:(BOOL)a4;
+ (BOOL)_isAllowlistedURL:(id)a3;
+ (BOOL)_isPathExceptionToAllowlistedURL:(id)a3;
+ (BOOL)_shouldAggregateForTransferType:(id)a3;
+ (BOOL)_supportsRichLinkURL:(id)a3 forSender:(id)a4 isAllowlistedRichLinkSender:(BOOL)a5;
+ (BOOL)isChatBotContentOnly:(id)a3;
+ (BOOL)isSiriEnabled;
+ (id)_defaultRichLinkAllowListExceptions;
+ (id)_defaultRichLinkAllowlist;
+ (id)_guidForMessage:(id)a3 url:(id)a4;
+ (id)_messageItemWithPartsDeleted:(id)a3 fromMessageItem:(id)a4 indexesOfItemsDeleted:(id *)a5 indexToRangeMapping:(id *)a6;
+ (id)_newAudioMessagePartsForMessageItem:(id)a3 text:(id)a4 chatContext:(id)a5 retractedPartIndexes:(id)a6 singlePart:(id)a7;
+ (id)_newDetonatedMessagePartsForMessageItem:(id)a3 chatContext:(id)a4 photosPluginPayload:(id)a5;
+ (id)_newMessagePartArrayForMessageItem:(id)a3;
+ (id)_newMessagePartsForMessageItem:(id)a3 chatContext:(id)a4 photosPluginPayload:(id)a5;
+ (id)_processChatItemsForRichActions:(id)a3;
+ (id)_retractedMessagePartsForMessage:(id)a3 parts:(id)a4 retractedPartIndexes:(id)a5;
+ (id)_richLinkRangesForMessageText:(id)a3 sender:(id)a4 isAllowlistedRichLinkSender:(BOOL)a5;
+ (id)_singleChatItemForDeviceActionMessage:(id)a3 context:(id)a4 pluginPayload:(id)a5;
+ (id)aggregatePartsForParts:(id)a3 forMessage:(id)a4 context:(id)a5 text:(id)a6;
+ (id)chatItemGUIDForMessageGUID:(id)a3 partIndex:(int64_t)a4;
+ (id)expandRichCardsFor:(id)a3 richCards:(id)a4;
+ (id)messageBodyStringForAttachmentGUIDs:(id)a3;
+ (id)messageBodyStringForCMMMessage:(id)a3;
+ (id)richCardsChatItemsForMessageItem:(id)a3 text:(id)a4;
+ (id)standaloneChipListChatItemForMessageItem:(id)a3 text:(id)a4;
+ (id)suggestedActionsMessagePartChatItemForMessageItem:(id)a3 attributes:(id)a4;
+ (id)suggestedRepliesMessagePartChatItemForMessageItem:(id)a3 attributes:(id)a4;
+ (int64_t)_attachmentStackAggregationThreshold;
- (BOOL)canDelete;
- (BOOL)canRetract;
- (BOOL)isBusiness;
- (BOOL)isCorrupt;
- (BOOL)isEditedMessagePart;
- (BOOL)isFailedEditMessagePart;
- (BOOL)isFailedRetractMessagePart;
- (BOOL)isRetractedMessagePart;
- (BOOL)isStewie;
- (BOOL)requiresCriticalMessagingAPIAttribution;
- (BOOL)requiresFaceTimeAttribution;
- (BOOL)requiresSiriAttribution;
- (IMMessageItem)threadOriginator;
- (NSString)description;
- (NSString)threadIdentifier;
- (NSString)threadIdentifierForTapback;
- (_NSRange)messagePartRange;
- (_NSRange)originalMessagePartRange;
- (id)_initWithItem:(id)a3 index:(int64_t)a4 messagePartRange:(_NSRange)a5 syndicationBehavior:(int64_t)a6;
- (id)_initWithItem:(id)a3 text:(id)a4 translationSecondaryText:(id)a5 index:(int64_t)a6 messagePartRange:(_NSRange)a7 visibleAssociatedMessageChatItems:(id)a8;
- (id)_visibleAssociatedChatItemsByFlatteningAggregateChatItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)extractAndSetChipListFrom:(id)a3;
- (id)messageSummaryInfo;
- (int64_t)messagePartAttributeName;
- (int64_t)stewieConversationID;
- (unint64_t)scheduleState;
- (unint64_t)scheduleType;
- (unsigned)contentType;
- (void)_setVisibleAssociatedMessageChatItems:(id)a3;
@end

@implementation IMMessagePartChatItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = IMMessagePartChatItem;
  v4 = [(IMTranscriptChatItem *)&v16 description];
  text = self->_text;
  v6 = IMLoggingStringForMessageData();
  v9 = objc_msgSend_description(self->_visibleAssociatedMessageChatItems, v7, v8);
  v18.location = objc_msgSend_messagePartRange(self, v10, v11);
  v12 = NSStringFromRange(v18);
  v14 = objc_msgSend_stringWithFormat_(v3, v13, @"[%@ text:%@, visibleAssociatedMessageChatItems: %@, messagePartRange: %@]", v4, v6, v9, v12);

  return v14;
}

- (int64_t)messagePartAttributeName
{
  v3 = objc_msgSend_text(self, a2, v2);
  v5 = objc_msgSend_attribute_atIndex_effectiveRange_(v3, v4, *MEMORY[0x1E69A5FD8], 0, 0);
  v8 = objc_msgSend_integerValue(v5, v6, v7);

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  text = self->_text;
  index = self->_index;
  p_messagePartRange = &self->_messagePartRange;
  v13 = objc_msgSend_visibleAssociatedMessageChatItems(self, v11, v12);
  v15 = objc_msgSend__initWithItem_text_index_messagePartRange_visibleAssociatedMessageChatItems_(v4, v14, v7, text, index, p_messagePartRange->location, p_messagePartRange->length, v13);

  return v15;
}

- (BOOL)canDelete
{
  if (objc_msgSend_scheduleType(self, a2, v2) != 2)
  {
    v6 = objc_msgSend__item(self, v4, v5);
    v9 = objc_msgSend_service(v6, v7, v8);
    if (objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AF8]))
    {
    }

    else
    {
      v15 = objc_msgSend_service(v6, v11, v12);
      isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x1E69A7AE8]);

      if (!isEqualToString)
      {
        goto LABEL_10;
      }
    }

    if (objc_msgSend_isFromMe(self, v13, v14) && (objc_msgSend_isSent(v6, v18, v19) & 1) == 0)
    {
      v22 = objc_msgSend_errorCode(v6, v20, v21) != 0;
      goto LABEL_11;
    }

LABEL_10:
    v22 = 1;
LABEL_11:

    return v22;
  }

  return MEMORY[0x1EEE66B58](self, sel__canDeleteForCurrentScheduleState, v5);
}

- (BOOL)isBusiness
{
  if (self->_isBusiness)
  {
    return 1;
  }

  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_message(v4, v5, v6);
  v10 = objc_msgSend_subject(v7, v8, v9);
  isMapKitBusiness = objc_msgSend_isMapKitBusiness(v10, v11, v12);

  return isMapKitBusiness;
}

- (BOOL)isStewie
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  v7 = objc_msgSend_stewieEnabled(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v10 = objc_msgSend__item(self, v8, v9);
  if (objc_msgSend_isStewie(v10, v11, v12))
  {
    isStewie = 1;
  }

  else
  {
    v16 = objc_msgSend__item(self, v13, v14);
    v19 = objc_msgSend_message(v16, v17, v18);
    v22 = objc_msgSend_subject(v19, v20, v21);
    isStewie = objc_msgSend_isStewie(v22, v23, v24);
  }

  return isStewie;
}

- (int64_t)stewieConversationID
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_stewieConversationID(v3, v4, v5);

  return v6;
}

- (BOOL)canRetract
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_index(self, v5, v6);
  v9 = objc_msgSend_eligibilityForEditType_messagePartIndex_(v4, v8, 2, v7);
  v12 = v9;
  if ((v9 - 1) >= 8)
  {
    if (!v9)
    {
      v17 = objc_msgSend_balloonBundleID(self, v10, v11);
      v18 = *MEMORY[0x1E69A6928];
      v19 = IMBalloonExtensionIDWithSuffix();
      isEqualToString = objc_msgSend_isEqualToString_(v17, v20, v19);

      if (isEqualToString)
      {
        v24 = objc_msgSend__item(self, v22, v23);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_6;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Message is a Poll, but cannot be retracted because additional choices have been added since original send.", &v27, 2u);
          }

          goto LABEL_5;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = 134217984;
          v28 = 0;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Message can be retracted, message edit eligibility is %ld", &v27, 0xCu);
        }
      }
    }

    v14 = 1;
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      v28 = v12;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Message cannot be retracted, message is not eligible to be edited. Edit Eligibility: %ld", &v27, 0xCu);
    }

LABEL_5:
  }

LABEL_6:
  v14 = 0;
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isCorrupt
{
  v3 = objc_msgSend__item(self, a2, v2);
  isCorrupt = objc_msgSend_isCorrupt(v3, v4, v5);

  return isCorrupt;
}

+ (id)_guidForMessage:(id)a3 url:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v9 = objc_msgSend_guid(a3, v7, v8);
  v12 = objc_msgSend_absoluteString(v6, v10, v11);

  v14 = objc_msgSend_stringWithFormat_(v5, v13, @"%@:%@", v9, v12);

  return v14;
}

+ (id)_newMessagePartArrayForMessageItem:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v28 = v4;
  v7 = objc_msgSend__newMessagePartsForMessageItem_(a1, v6, v4);
  objc_opt_class();
  v29 = v7;
  if (objc_opt_isKindOfClass())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v7;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v36, 16);
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_addObject_(v5, v14, v13);
          }

          else if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = 138412290;
              v35 = v18;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Part is not an IMMessagePartChatItem, but instead a %@, dropping.", buf, 0xCu);
            }
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v30, v36, 16);
      }

      while (v10);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addObject_(v5, v21, v7);
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138412290;
        v35 = v24;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Part is not an IMMessagePartChatItem, but instead a %@, dropping.", buf, 0xCu);
      }
    }
  }

  v25 = objc_msgSend_copy(v5, v19, v20);

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)_defaultRichLinkAllowlist
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], a2, @"icloud", @"com");
  v9[0] = v2;
  v4 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], v3, @"appsto", @"re");
  v9[1] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v9, 2);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_defaultRichLinkAllowListExceptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A6128];
  v3 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], a2, @"icloud", @"com");
  v5 = objc_msgSend_pairWithFirst_second_(v2, v4, v3, &unk_1F1BA16E0);
  v10[0] = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v10, 1);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)_isPathExceptionToAllowlistedURL:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], v5, 1);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"richLink-whitelist-exceptions");

  v65 = v8;
  if (objc_msgSend_count(v8, v9, v10))
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v14 = v8;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v72, v77, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v73;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v73 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v72 + 1) + 8 * i);
          if (objc_msgSend_count(v22, v17, v18) == 3)
          {
            v23 = MEMORY[0x1E69A6128];
            v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v17, 0);
            v26 = objc_msgSend_objectAtIndexedSubscript_(v22, v25, 1);
            v28 = objc_msgSend_pairWithFirst_second_(v23, v27, v24, v26);

            v30 = objc_msgSend_objectAtIndexedSubscript_(v22, v29, 2);
            v32 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], v31, v28, v30);
            objc_msgSend_addObject_(v13, v33, v32);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v72, v77, 16);
      }

      while (v19);
    }

    v8 = v65;
  }

  else
  {
    v13 = objc_msgSend__defaultRichLinkAllowListExceptions(a1, v11, v12);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v13;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v68, v76, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v69;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v69 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v68 + 1) + 8 * j);
        v42 = objc_msgSend_first(v41, v36, v37);
        v45 = objc_msgSend_first(v42, v43, v44);
        v48 = objc_msgSend_first(v41, v46, v47);
        v51 = objc_msgSend_second(v48, v49, v50);
        if (objc_msgSend___im_conformsToDomain_domainExtension_(v4, v52, v45, v51))
        {
          objc_msgSend_pathComponents(v4, v53, v54);
          v55 = v39;
          v57 = v56 = v4;
          v60 = objc_msgSend_second(v41, v58, v59);
          isEqualToArray = objc_msgSend_isEqualToArray_(v57, v61, v60);

          v4 = v56;
          v39 = v55;

          if (isEqualToArray)
          {
            v62 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v68, v76, 16);
    }

    while (v38);
    v62 = 0;
LABEL_25:
    v8 = v65;
  }

  else
  {
    v62 = 0;
  }

  v63 = *MEMORY[0x1E69E9840];
  return v62;
}

+ (BOOL)_isAllowlistedURL:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], v5, 1);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"richLink-whitelist");

  if (objc_msgSend_count(v8, v9, v10))
  {
    v49 = a1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = v8;
    v14 = v8;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v55, v60, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v56;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v56 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v55 + 1) + 8 * i);
          if (objc_msgSend_count(v22, v17, v18, v49) == 2)
          {
            v23 = objc_msgSend_firstObject(v22, v17, v18);
            v26 = objc_msgSend_lastObject(v22, v24, v25);
            v28 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], v27, v23, v26);
            objc_msgSend_addObject_(v13, v29, v28);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v55, v60, 16);
      }

      while (v19);
    }

    a1 = v49;
    v8 = v50;
  }

  else
  {
    v13 = objc_msgSend__defaultRichLinkAllowlist(a1, v11, v12);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v13;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v51, v59, 16);
  if (v32)
  {
    v35 = v32;
    v36 = *v52;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = *(*(&v51 + 1) + 8 * j);
        v39 = objc_msgSend_first(v38, v33, v34, v49);
        v42 = objc_msgSend_second(v38, v40, v41);
        if (objc_msgSend___im_conformsToDomain_domainExtension_(v4, v43, v39, v42))
        {
          isPathExceptionToAllowlistedURL = objc_msgSend__isPathExceptionToAllowlistedURL_(a1, v44, v4);

          if ((isPathExceptionToAllowlistedURL & 1) == 0)
          {
            v46 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v51, v59, 16);
    }

    while (v35);
  }

  v46 = 0;
LABEL_25:

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

+ (BOOL)_isAllowlistedRichLinkSender:(id)a3 isBusiness:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((objc_msgSend_hasPrefix_(v5, v6, @"urn:biz:") & 1) != 0 || v4)
  {
    if (objc_msgSend_length(v5, v7, v8))
    {
      v9 = IMSharedHelperBusinessAllowlist();
      LOBYTE(v4) = objc_msgSend_containsObject_(v9, v10, v5);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (id)_richLinkRangesForMessageText:(id)a3 sender:(id)a4 isAllowlistedRichLinkSender:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (v5)
  {
    v10 = objc_msgSend__additionalSupportedRichLinkSchemesForAllowlistedSender_(a1, v8, a4);
  }

  else
  {
    v10 = 0;
  }

  v11 = IMRichLinkUtilitiesDetermineRichLinksInMessage(v9, v10);

  return v11;
}

+ (BOOL)_supportsRichLinkURL:(id)a3 forSender:(id)a4 isAllowlistedRichLinkSender:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7 != 0;
  if (v7 && !a5)
  {
    if (IMIsRunningInUnitTesting() && (objc_msgSend_absoluteString(v7, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_containsString_(v12, v13, @"split"), v12, (v14 & 1) != 0))
    {
      v9 = 1;
    }

    else
    {
      v15 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v10, v11);
      v17 = objc_msgSend_dataSourceClassForBundleID_(v15, v16, *MEMORY[0x1E69A6A18]);

      v9 = objc_msgSend_supportsURL_(v17, v18, v7);
    }
  }

  return v9;
}

+ (id)messageBodyStringForCMMMessage:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v7 = objc_msgSend_fileTransferGUIDs(v3, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  CMMAssetOffset = objc_msgSend_getCMMAssetOffset(v3, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = v10;
      v34 = 2048;
      v35 = CMMAssetOffset;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "CMM has %lu transfers, ignoring %lu", buf, 0x16u);
    }
  }

  if (CMMAssetOffset < v10)
  {
    v17 = *MEMORY[0x1E69A5F68];
    v18 = *MEMORY[0x1E69A5F00];
    do
    {
      v19 = objc_msgSend_objectAtIndex_(v7, v14, CMMAssetOffset);
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = v20;
      if (v19)
      {
        CFDictionarySetValue(v20, v17, v19);
      }

      v22 = objc_alloc(MEMORY[0x1E696AD40]);
      v24 = objc_msgSend_initWithString_attributes_(v22, v23, v18, v21);
      objc_msgSend_appendAttributedString_(v4, v25, v24);

      ++CMMAssetOffset;
    }

    while (v10 != CMMAssetOffset);
  }

  v26 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v4, v14, v15);
  v29 = objc_msgSend_mutableCopy(v26, v27, v28);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)_newDetonatedMessagePartsForMessageItem:(id)a3 chatContext:(id)a4 photosPluginPayload:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (objc_msgSend_isCorrupt(v7, v10, v11))
  {
    v14 = objc_alloc(MEMORY[0x1E696AD40]);
    v15 = IMCoreLocalizedString(@"CORRUPT_MESSAGE_FALLBACK_TEXT", @"Tap to show message");
    v17 = objc_msgSend_initWithString_attributes_(v14, v16, v15, 0);

    v18 = [IMTextMessagePartChatItem alloc];
    v21 = objc_msgSend_length(v17, v19, v20);
    BYTE2(v61) = objc_msgSend_showTranslationAlternateText(v8, v22, v23);
    LOWORD(v61) = 0;
    isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v18, v24, v7, v17, 0, 0, 0, v21, 0, v61);
  }

  else
  {
    v26 = objc_msgSend_body(v7, v12, v13);
    v17 = objc_msgSend_mutableCopy(v26, v27, v28);

    v31 = objc_msgSend_mutableString(v17, v29, v30);
    v32 = *MEMORY[0x1E69A5F20];
    v35 = objc_msgSend_length(v17, v33, v34);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v31, v36, v32, &stru_1F1B76F98, 0, 0, v35);

    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = sub_1A8259B40;
    v82 = sub_1A825AECC;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_1A8259B40;
    v76 = sub_1A825AECC;
    v77 = 0;
    v39 = objc_msgSend_length(v17, v37, v38);
    v42 = objc_msgSend_subject(v7, v40, v41);
    if (v42)
    {
      v43 = objc_alloc(MEMORY[0x1E696AAB0]);
      v46 = objc_msgSend_subject(v7, v44, v45);
      v48 = objc_msgSend_initWithString_(v43, v47, v46);
    }

    else
    {
      v48 = 0;
    }

    if (objc_msgSend_length(v17, v49, v50))
    {
      v51 = *MEMORY[0x1E69A5FD8];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_1A82D22FC;
      v63[3] = &unk_1E78117D8;
      v70 = 0;
      v71 = v39;
      v64 = v17;
      v65 = v7;
      v66 = v48;
      v67 = v8;
      v68 = &v78;
      v69 = &v72;
      objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v64, v52, v51, 0, v39, 0, v63);

      v53 = v64;
    }

    else
    {
      v54 = [IMDetonatedMessagePartChatItem alloc];
      HIBYTE(v62) = objc_msgSend_showTranslationAlternateText(v8, v55, v56);
      LOBYTE(v62) = 0;
      v58 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v54, v57, v7, 0, 0, 0, 0, 0, v48, v62);
      v53 = v79[5];
      v79[5] = v58;
    }

    v59 = v79[5];
    if (!v59)
    {
      v59 = v73[5];
    }

    isShowingEditHistory_showTranslationAlternateText = v59;

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v78, 8);
  }

  return isShowingEditHistory_showTranslationAlternateText;
}

+ (id)_singleChatItemForDeviceActionMessage:(id)a3 context:(id)a4 pluginPayload:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v12 = objc_msgSend_serviceVariant(v9, v10, v11);
  v15 = objc_msgSend_areSendersUnknown(v9, v13, v14);

  v18 = [IMTranscriptPluginChatItem alloc];
  v19 = 1;
  if (v15 && v12 != 1)
  {
    v19 = objc_msgSend_isFromMe(v7, v16, v17);
  }

  HasKnownParticipants = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v18, v16, v7, v8, 0, 0, 0x7FFFFFFFFFFFFFFFLL, v19);

  return HasKnownParticipants;
}

+ (id)_newMessagePartsForMessageItem:(id)a3 chatContext:(id)a4 photosPluginPayload:(id)a5
{
  v358 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!objc_msgSend_wasDetonated(v8, v11, v12))
  {
    v295 = v10;
    v16 = objc_msgSend_service(v8, v13, v14);
    v296 = objc_msgSend_serviceWithName_(IMService, v17, v16);

    v294 = objc_msgSend_serviceVariant(v9, v18, v19);
    v288 = objc_msgSend_areSendersUnknown(v9, v20, v21);
    if (!v9)
    {
      goto LABEL_9;
    }

    v24 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23);
    isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v24, v25, v26);

    v30 = isIntroductionsEnabled && objc_msgSend_filterCategory(v9, v28, v29) == 2;
    if (objc_msgSend_supportsCapability_(v296, v28, *MEMORY[0x1E69A7948]) && !v30)
    {
      goto LABEL_9;
    }

    if (objc_msgSend_serviceVariant(v9, v22, v23) == 3)
    {
      v85 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v83, v84);
      isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v85, v86, v87);
    }

    else
    {
      if ((objc_msgSend_hasResponded(v9, v83, v84) & 1) != 0 || !objc_msgSend_filterCategory(v9, v22, v23) || !objc_msgSend__isSenderUnknown(v8, v22, v23))
      {
LABEL_9:
        isTranscriptSharingEnabled = 1;
        goto LABEL_10;
      }

      if (IMOSLoggingEnabled())
      {
        v88 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          *v345 = 0;
          _os_log_impl(&dword_1A823F000, v88, OS_LOG_TYPE_INFO, "Not displaying link, sender is unknown and there's no reply in chat", v345, 2u);
        }
      }

      isTranscriptSharingEnabled = 0;
    }

LABEL_10:
    *v345 = 0;
    v346 = v345;
    v347 = 0x3032000000;
    v348 = sub_1A8259B40;
    v349 = sub_1A825AECC;
    v350 = 0;
    v339 = 0;
    v340 = &v339;
    v341 = 0x3032000000;
    v342 = sub_1A8259B40;
    v343 = sub_1A825AECC;
    v344 = 0;
    if (objc_msgSend_isCorrupt(v8, v22, v23))
    {
      v34 = objc_alloc(MEMORY[0x1E696AD40]);
      v35 = IMCoreLocalizedString(@"CORRUPT_MESSAGE_FALLBACK_TEXT", @"Tap to show message");
      v37 = objc_msgSend_initWithString_attributes_(v34, v36, v35, 0);

      v38 = [IMTextMessagePartChatItem alloc];
      v41 = objc_msgSend_length(v37, v39, v40);
      BYTE2(v268) = objc_msgSend_showTranslationAlternateText(v9, v42, v43);
      LOWORD(v268) = 0;
      isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v38, v44, v8, v37, 0, 0, 0, v41, 0, v268);
      v46 = *(v346 + 5);
      *(v346 + 5) = isShowingEditHistory_showTranslationAlternateText;

      v15 = *(v346 + 5);
LABEL_145:

      _Block_object_dispose(&v339, 8);
      _Block_object_dispose(v345, 8);

      v10 = v295;
      goto LABEL_146;
    }

    v47 = objc_msgSend_service(v8, v32, v33);
    v50 = objc_msgSend_iMessageService(IMServiceImpl, v48, v49);
    v53 = objc_msgSend_internalName(v50, v51, v52);
    isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v47, v54, v53);

    v58 = *MEMORY[0x1E69A6878];
    if (!isEqualToIgnoringCase)
    {
      v58 = 2000;
    }

    obj = v58;
    CMMState = objc_msgSend_getCMMState(v8, v56, v57);
    if (CMMState)
    {
      goto LABEL_16;
    }

    v62 = objc_msgSend_balloonBundleID(v8, v59, v60);
    v63 = *MEMORY[0x1E69A6A08];
    v64 = IMBalloonExtensionIDWithSuffix();
    isEqualToString = objc_msgSend_isEqualToString_(v62, v65, v64);

    if (isEqualToString)
    {
LABEL_16:
      isSenderUnknown = objc_msgSend__isSenderUnknown(v8, v59, v60);
      v69 = objc_msgSend_sharedInstance(IMCoreAccountsMonitor, v67, v68);
      isSignedIntoiCloud = objc_msgSend_isSignedIntoiCloud(v69, v70, v71);

      v277 = isSignedIntoiCloud ^ 1;
      if (CMMState < 4)
      {
        v74 = isSignedIntoiCloud;
      }

      else
      {
        v74 = 0;
      }

      v275 = v74;
      if (CMMState)
      {
        v37 = objc_msgSend_messageBodyStringForCMMMessage_(a1, v73, v8);
        if (IMOSLoggingEnabled())
        {
          v77 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v80 = objc_msgSend_guid(v8, v78, v79);
            *buf = 138412802;
            *&buf[4] = v80;
            *&buf[12] = 2048;
            *&buf[14] = CMMState;
            *&buf[22] = 2112;
            v357 = v37;
            _os_log_impl(&dword_1A823F000, v77, OS_LOG_TYPE_INFO, "Using Dynamic body for CMM %@, state %lu: %@", buf, 0x20u);
          }
        }

        if (v37)
        {
          v82 = 1;
          v286 = 1;
          if (objc_msgSend_length(v37, v75, v76))
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        v82 = 1;
      }

      else
      {
        v89 = IMLogHandleForCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DFC14();
        }

        v37 = 0;
        v82 = 0;
      }

      v286 = 1;
    }

    else
    {
      v37 = 0;
      v82 = 0;
      v277 = 0;
      isSenderUnknown = 0;
      v286 = 0;
      v275 = 0;
    }

LABEL_43:
    v90 = objc_alloc(MEMORY[0x1E696AD40]);
    v91 = v8;
    if (objc_msgSend_hasDataDetectorResults(v91, v92, v93) && (objc_msgSend_body(v91, v94, v95), v96 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend_length(v96, v97, v98) < obj, v96, v99))
    {
      v100 = objc_msgSend_body(v91, v94, v95);
      v101 = sub_1A8399EB0(v100);
    }

    else
    {
      v101 = objc_msgSend_body(v91, v94, v95);
    }

    v103 = objc_msgSend_initWithAttributedString_(v90, v102, v101);
    v37 = v103;
LABEL_48:
    v355 = *MEMORY[0x1E69A5FB0];
    v104 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v81, &v355, 1);
    v106 = objc_msgSend___im_containsAttributedValue_(v37, v105, v104);

    if (v106)
    {
      IMRemoveTrackingInformationFromMutableAttributedString(v37);
    }

    v109 = objc_msgSend_sender(v8, v107, v108);
    isBusiness = objc_msgSend__isAllowlistedRichLinkSender_isBusiness_(a1, v110, v109, v294 == 1);

    if ((v82 & 1) != 0 || !objc_msgSend_hasDataDetectorResults(v8, v112, v113))
    {
      v293 = 0;
    }

    else
    {
      v114 = objc_msgSend_sender(v8, v112, v113);
      v293 = objc_msgSend__richLinkRangesForMessageText_sender_isAllowlistedRichLinkSender_(a1, v115, v37, v114, isBusiness);
    }

    if (isTranscriptSharingEnabled)
    {
      v116 = 1;
    }

    else if (objc_msgSend_count(v293, v112, v113))
    {
      v117 = objc_msgSend_string(v37, v112, v113);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v357) = 0;
      v335[0] = MEMORY[0x1E69E9820];
      v335[1] = 3221225472;
      v335[2] = sub_1A82D3954;
      v335[3] = &unk_1E7811800;
      v118 = v117;
      v338 = a1;
      v336 = v118;
      v337 = buf;
      objc_msgSend_enumerateObjectsUsingBlock_(v293, v119, v335);
      v116 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v116 = 0;
    }

    if ((v286 & 1) == 0)
    {
      v120 = objc_msgSend_mutableString(v37, v112, v113);
      v123 = objc_msgSend_length(v37, v121, v122);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v120, v124, *MEMORY[0x1E69A5F20], &stru_1F1B76F98, 0, 0, v123);
    }

    v281 = objc_msgSend_length(v37, v112, v113);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v357) = 0;
    v285 = objc_msgSend_retractedPartIndexes(v8, v125, v126);
    v128 = objc_msgSend_richCardsChatItemsForMessageItem_text_(a1, v127, v8, v37);
    v130 = v128;
    if (v128)
    {
      v15 = v128;
LABEL_144:

      _Block_object_dispose(buf, 8);
      goto LABEL_145;
    }

    v131 = objc_msgSend_standaloneChipListChatItemForMessageItem_text_(a1, v129, v8, v37);
    v132 = v131;
    if (v131)
    {
      v15 = v131;
LABEL_143:

      v130 = 0;
      goto LABEL_144;
    }

    v274 = v288 ^ 1;
    v289 = *MEMORY[0x1E69A5FD8];
    v313[0] = MEMORY[0x1E69E9820];
    v313[1] = 3221225472;
    v313[2] = sub_1A82D3A24;
    v313[3] = &unk_1E7811850;
    v322 = 0;
    v323 = v281;
    v314 = v37;
    v133 = v8;
    v315 = v133;
    v324 = a1;
    v327 = v275;
    v328 = v277;
    v329 = isSenderUnknown;
    v276 = v285;
    v316 = v276;
    v319 = buf;
    v330 = v286;
    v287 = v9;
    v317 = v287;
    v320 = v345;
    v321 = &v339;
    v325 = v281;
    v326 = obj;
    v331 = v116 & 1;
    v332 = isBusiness;
    v318 = v293;
    v333 = v294 == 1;
    v334 = v274;
    v278 = v314;
    objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v314, v134, v289, 0, v281, 0, v313);
    v292 = v133;
    v280 = objc_msgSend_subject(v133, v135, v136);
    if (!v280)
    {
LABEL_82:
      if (v281 > obj)
      {
        if (*(v346 + 5))
        {
          v169 = objc_alloc(MEMORY[0x1E695DEC8]);
          obja = objc_msgSend_initWithObjects_(v169, v170, *(v346 + 5), 0);
          v171 = [IMAggregateMessagePartChatItem alloc];
          v173 = objc_msgSend__initWithItem_messagePartRange_subparts_(v171, v172, v292, 0, v281, obja);
          v174 = *(v346 + 5);
          *(v346 + 5) = v173;

          objc_msgSend_setChipListFromText_(*(v346 + 5), v175, v278);
        }

        else
        {
          if (!v340[5])
          {
            goto LABEL_86;
          }

          v311 = 0u;
          v312 = 0u;
          v309 = 0u;
          v310 = 0u;
          obja = v340[5];
          v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v177, &v309, v354, 16);
          if (!v178)
          {
LABEL_99:

            v193 = [IMAggregateMessagePartChatItem alloc];
            v195 = objc_msgSend__initWithItem_messagePartRange_subparts_(v193, v194, v292, 0, v281, v340[5]);
            v196 = *(v346 + 5);
            *(v346 + 5) = v195;

            objc_msgSend_setChipListFromText_(*(v346 + 5), v197, v278);
            objb = v340[5];
            v340[5] = 0;

            goto LABEL_86;
          }

          v291 = *v310;
LABEL_92:
          v179 = 0;
          while (1)
          {
            if (*v310 != v291)
            {
              objc_enumerationMutation(obja);
            }

            v180 = *(*(&v309 + 1) + 8 * v179);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v183 = objc_msgSend_transferGUID(v180, v181, v182);
              v186 = objc_msgSend_sharedInstance(IMFileTransferCenter, v184, v185);
              v188 = objc_msgSend_transferForGUID_(v186, v187, v183);

              v191 = objc_msgSend_type(v188, v189, v190);
              LODWORD(v186) = objc_msgSend__shouldAggregateForTransferType_(a1, v192, v191);

              if (!v186)
              {
                break;
              }
            }

            if (v178 == ++v179)
            {
              v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v181, &v309, v354, 16);
              if (v178)
              {
                goto LABEL_92;
              }

              goto LABEL_99;
            }
          }
        }
      }

LABEL_86:
      if (v294 == 1)
      {
        v176 = *(v346 + 5);
        if (v176)
        {
          objc_msgSend_setIsBusiness_(v176, v137, 1);
        }

        else if (v340[5])
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v198 = v340[5];
          v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v199, &v305, v353, 16);
          if (v201)
          {
            v202 = *v306;
            do
            {
              for (i = 0; i != v201; ++i)
              {
                if (*v306 != v202)
                {
                  objc_enumerationMutation(v198);
                }

                objc_msgSend_setIsBusiness_(*(*(&v305 + 1) + 8 * i), v200, 1);
              }

              v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v200, &v305, v353, 16);
            }

            while (v201);
          }
        }
      }

      if (objc_msgSend_serviceVariant(v287, v137, v138) == 2)
      {
        v206 = *(v346 + 5);
        if (v206)
        {
          objc_msgSend_setIsStewie_(v206, v204, 1);
        }

        else if (v340[5])
        {
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v207 = v340[5];
          v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v208, &v301, v352, 16);
          if (v210)
          {
            v211 = *v302;
            do
            {
              for (j = 0; j != v210; ++j)
              {
                if (*v302 != v211)
                {
                  objc_enumerationMutation(v207);
                }

                objc_msgSend_setIsStewie_(*(*(&v301 + 1) + 8 * j), v209, 1);
              }

              v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v209, &v301, v352, 16);
            }

            while (v210);
          }
        }
      }

      if (objc_msgSend_isPendingSatelliteSend(v292, v204, v205))
      {
        v214 = *(v346 + 5);
        if (v214)
        {
          objc_msgSend_setPendingSatelliteSend_(v214, v213, 1);
        }

        else if (v340[5])
        {
          v299 = 0u;
          v300 = 0u;
          v297 = 0u;
          v298 = 0u;
          v215 = v340[5];
          v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v216, &v297, v351, 16);
          if (v218)
          {
            v219 = *v298;
            do
            {
              for (k = 0; k != v218; ++k)
              {
                if (*v298 != v219)
                {
                  objc_enumerationMutation(v215);
                }

                objc_msgSend_setPendingSatelliteSend_(*(*(&v297 + 1) + 8 * k), v217, 1);
              }

              v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v217, &v297, v351, 16);
            }

            while (v218);
          }
        }
      }

      v221 = objc_msgSend_aggregatePartsForParts_forMessage_context_text_(a1, v213, v340[5], v292, v287, v278);
      v222 = v340[5];
      v340[5] = v221;

      if (objc_msgSend_count(v276, v223, v224) && objc_msgSend_scheduleType(v292, v225, v226) != 2)
      {
        v228 = v340;
        if (!v340[5])
        {
          v229 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v230 = v340[5];
          v340[5] = v229;

          v228 = v340;
        }

        v231 = *(v346 + 5);
        if (v231)
        {
          objc_msgSend_addObject_(v228[5], v227, v231);
          v232 = *(v346 + 5);
          *(v346 + 5) = 0;

          v228 = v340;
        }

        v233 = objc_msgSend__retractedMessagePartsForMessage_parts_retractedPartIndexes_(a1, v227, v292, v228[5], v276);
        v234 = v340[5];
        v340[5] = v233;
      }

      v235 = *(v346 + 5);
      if (!v235)
      {
        v235 = v340[5];
      }

      v236 = v235;
      v238 = objc_msgSend__processChatItemsForRichActions_(a1, v237, v236);

      v15 = v238;
      v132 = 0;
      goto LABEL_143;
    }

    v139 = objc_alloc(MEMORY[0x1E696AAB0]);
    v290 = objc_msgSend_initWithString_(v139, v140, v280);
    v143 = *(v346 + 5);
    if (v143)
    {
      v144 = v143;
    }

    else
    {
      if (!objc_msgSend_count(v340[5], v141, v142))
      {
        v146 = 0;
        goto LABEL_71;
      }

      v144 = objc_msgSend_objectAtIndex_(v340[5], v145, 0);
    }

    v146 = v144;
LABEL_71:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_index(v146, v147, v148))
    {
      v273 = objc_msgSend_index(v146, v147, v148);
      v151 = objc_msgSend_translationSourceLanguage(v146, v241, v242);
      v245 = objc_msgSend_guid(v133, v243, v244);
      v161 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v246, v245, v273);

      v249 = objc_msgSend_showingEditHistoryForChatItemGUIDs(v287, v247, v248);
      v251 = objc_msgSend_containsObject_(v249, v250, v161);

      v271 = [IMTextMessagePartChatItem alloc];
      v254 = objc_msgSend__item(v146, v252, v253);
      v272 = objc_msgSend_text(v146, v255, v256);
      v259 = objc_msgSend_translationSecondaryText(v146, v257, v258);
      HIBYTE(v270) = objc_msgSend_showTranslationAlternateText(v287, v260, v261);
      LOBYTE(v270) = v251;
      v263 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v271, v262, v254, v272, v259, v273, 0, v281, v290, v270);

      objc_msgSend_setChipListFromText_(v263, v264, v278);
      objc_msgSend_setTranslationSourceLanguage_(v263, v265, v151);
      v267 = v346;
      if (!*(v346 + 5))
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v340[5], v266, 0, v263);
        v146 = v263;
        goto LABEL_81;
      }

      v146 = v263;
      v166 = *(v267 + 5);
      *(v267 + 5) = v146;
    }

    else
    {
      v149 = objc_msgSend_guid(v133, v147, v148);
      v151 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v150, v149, -1);

      v154 = objc_msgSend_showingEditHistoryForChatItemGUIDs(v287, v152, v153);
      LOBYTE(v149) = objc_msgSend_containsObject_(v154, v155, v151);

      v156 = [IMTextMessagePartChatItem alloc];
      HIBYTE(v269) = objc_msgSend_showTranslationAlternateText(v287, v157, v158);
      LOBYTE(v269) = v149;
      v161 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v156, v159, v133, 0, 0, -1, 0, v281, v290, v269);
      v162 = v340[5];
      if (!*(v346 + 5))
      {
        if (!v162)
        {
          v167 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v168 = v340[5];
          v340[5] = v167;

          v162 = v340[5];
        }

        objc_msgSend_insertObject_atIndex_(v162, v160, v161, 0);
        goto LABEL_81;
      }

      if (!v162)
      {
        v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v164 = v340[5];
        v340[5] = v163;

        v162 = v340[5];
      }

      objc_msgSend_addObject_(v162, v160, v161);
      objc_msgSend_addObject_(v340[5], v165, *(v346 + 5));
      v166 = *(v346 + 5);
      *(v346 + 5) = 0;
    }

LABEL_81:
    goto LABEL_82;
  }

  v15 = objc_msgSend__newDetonatedMessagePartsForMessageItem_chatContext_photosPluginPayload_(a1, v13, v8, v9, v10);
LABEL_146:

  v239 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)_processChatItemsForRichActions:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v9 = v4;
LABEL_6:
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v10 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1A82D5554;
    v27 = &unk_1E7811878;
    v12 = v9;
    v28 = v12;
    v13 = v11;
    v29 = v13;
    v14 = v10;
    v30 = v14;
    v31 = v32;
    objc_msgSend_enumerateObjectsUsingBlock_(v12, v15, &v24);
    objc_msgSend_insertObjects_atIndexes_(v12, v16, v13, v14, v24, v25, v26, v27);
    v17 = v30;
    v18 = v12;

    _Block_object_dispose(v32, 8);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_mutableCopy(v3, v7, v8);
    goto LABEL_5;
  }

  if (v3)
  {
    v33[0] = v3;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v33, 1);
    v9 = objc_msgSend_mutableCopy(v21, v22, v23);

    goto LABEL_6;
  }

  v18 = 0;
LABEL_7:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)richCardsChatItemsForMessageItem:(id)a3 text:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v6, v7, v8) == 1 && (objc_msgSend_string(v6, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substringToIndex_(v11, v12, 1), v13 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v13, v14, *MEMORY[0x1E69A78B0]), v13, v11, isEqualToString))
  {
    v17 = objc_msgSend_attributesAtIndex_effectiveRange_(v6, v16, 0, 0);
    v19 = objc_msgSend__arrayForKey_(v17, v18, *MEMORY[0x1E69A78A8]);
    v20 = objc_alloc(MEMORY[0x1E69A8200]);
    if (v19)
    {
      v22 = objc_msgSend_initWithCardArray_(v20, v21, v19);
    }

    else
    {
      v22 = objc_msgSend_initWithCardArray_(v20, v21, MEMORY[0x1E695E0F0]);
    }

    if (v22)
    {
      v24 = v22;
      v25 = objc_msgSend__dictionaryForKey_(v17, v23, *MEMORY[0x1E69A7DE0]);
      if (v25)
      {
        v26 = objc_alloc(MEMORY[0x1E69A8350]);
        v28 = objc_msgSend_initWithUrlToTransferGuids_(v26, v27, v25);
        if (v28)
        {
          v30 = v28;
          objc_msgSend_updateUrlToTransferMap_(v24, v29, v28);
        }
      }

      v95 = v25;
      v96 = v17;
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = [IMRichLinkCardMessagePartChatItem alloc];
      v35 = objc_msgSend_selectedRichCardIndex(v5, v33, v34);
      v37 = objc_msgSend_initWithItem_richCards_selectedIndex_(v32, v36, v5, v24, v35);
      v94 = objc_msgSend_suggestedRepliesList(v24, v38, v39);
      v40 = [IMRichActionFooterChatItem alloc];
      v97 = objc_msgSend__initWithItem_(v40, v41, v5);
      v44 = objc_msgSend_richCards(v37, v42, v43);
      v47 = objc_msgSend_cards(v44, v45, v46);
      v50 = objc_msgSend_count(v47, v48, v49);

      if (v50 >= 2)
      {
        v53 = [IMRichActionCarouselCountChatItem alloc];
        v56 = objc_msgSend_selectedRichCardIndex(v5, v54, v55);
        v59 = objc_msgSend_richCards(v37, v57, v58);
        v62 = objc_msgSend_cards(v59, v60, v61);
        v65 = objc_msgSend_count(v62, v63, v64);
        v67 = objc_msgSend__initWithItem_selectedIndex_totalCount_(v53, v66, v5, v56, v65);

        objc_msgSend_addObject_(v31, v68, v67);
      }

      v69 = v94;
      if (objc_msgSend_count(v94, v51, v52, v94))
      {
        v72 = [IMSuggestedRepliesMessagePartChatItem alloc];
        v75 = objc_msgSend_selectedRichCardIndex(v5, v73, v74);
        v77 = objc_msgSend_initWithItem_suggestedRepliesList_selectedIndex_(v72, v76, v5, v69, v75);
        v80 = objc_msgSend_suggestedActionsList(v24, v78, v79);
        v83 = objc_msgSend_count(v80, v81, v82);

        objc_msgSend_addObject_(v31, v84, v37);
        objc_msgSend_addObject_(v31, v85, v77);
        if (v83)
        {
          objc_msgSend_addObject_(v31, v86, v97);
        }

        v17 = v96;
      }

      else
      {
        v87 = objc_msgSend_suggestedActionsList(v24, v70, v71);
        v90 = objc_msgSend_count(v87, v88, v89);

        objc_msgSend_addObject_(v31, v91, v37);
        v17 = v96;
        if (v90)
        {
          objc_msgSend_addObject_(v31, v92, v97);
        }
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)expandRichCardsFor:(id)a3 richCards:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v10 = objc_msgSend_expandToIndividualCard(v6, v8, v9);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82D5BA0;
  v17[3] = &unk_1E78118A0;
  v18 = v5;
  v11 = v7;
  v19 = v11;
  v12 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v13, v17);
  v14 = v19;
  v15 = v11;

  return v11;
}

+ (id)standaloneChipListChatItemForMessageItem:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_length(v7, v8, v9) == 1 && (objc_msgSend_string(v7, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substringToIndex_(v12, v13, 1), v14 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x1E69A6CF0]), v14, v12, isEqualToString))
  {
    v18 = objc_msgSend_attributesAtIndex_effectiveRange_(v7, v17, 0, 0);
    if (objc_msgSend_isFromMe(v6, v19, v20))
    {
      v22 = objc_msgSend__dictionaryForKey_(v18, v21, *MEMORY[0x1E69A7CE0]);
      v23 = objc_alloc(MEMORY[0x1E69A7FA8]);
      v25 = objc_msgSend_initWithDictionary_(v23, v24, v22);
      if (v25)
      {
        v26 = v25;
        v27 = [IMSuggestedReplyMessagePartChatItem alloc];
        v29 = objc_msgSend_initWithItem_suggestedReply_(v27, v28, v6, v26);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v30 = objc_msgSend_suggestedRepliesMessagePartChatItemForMessageItem_attributes_(a1, v21, v6, v18);
      v22 = v30;
      if (v30)
      {
        v32 = v30;
        v22 = v32;
      }

      else
      {
        v32 = objc_msgSend_suggestedActionsMessagePartChatItemForMessageItem_attributes_(a1, v31, v6, v18);
      }

      v29 = v32;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)isChatBotContentOnly:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_string(v3, v6, v7);
    v10 = objc_msgSend_substringToIndex_(v8, v9, 1);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E69A6CF0]);

    v15 = objc_msgSend_string(v3, v13, v14);
    v17 = objc_msgSend_substringToIndex_(v15, v16, 1);
    v19 = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x1E69A78B0]);

    v20 = v19 | isEqualToString;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

+ (id)suggestedRepliesMessagePartChatItemForMessageItem:(id)a3 attributes:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend__numberForKey_(v6, v7, *MEMORY[0x1E69A6CF8]);
  if (objc_msgSend_BOOLValue(v8, v9, v10))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend__arrayForKey_(v6, v11, *MEMORY[0x1E69A6CE8]);
    v14 = objc_alloc(MEMORY[0x1E69A7FA0]);
    v16 = objc_msgSend_initWithChipArray_(v14, v15, v13);
    v19 = objc_msgSend_suggestedReplies(v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21))
    {
      v24 = objc_msgSend_suggestedReplies(v16, v22, v23);
      v34[0] = v24;
      v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v34, 1);

      v27 = [IMSuggestedRepliesMessagePartChatItem alloc];
      v30 = objc_msgSend_selectedRichCardIndex(v5, v28, v29);
      v12 = objc_msgSend_initWithItem_suggestedRepliesList_selectedIndex_(v27, v31, v5, v26, v30);
    }

    else
    {
      v12 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)suggestedActionsMessagePartChatItemForMessageItem:(id)a3 attributes:(id)a4
{
  v5 = a3;
  v7 = objc_msgSend__arrayForKey_(a4, v6, *MEMORY[0x1E69A6CE8]);
  v8 = objc_alloc(MEMORY[0x1E69A7FA0]);
  v10 = objc_msgSend_initWithChipArray_(v8, v9, v7);
  v13 = objc_msgSend_suggestedActions(v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15))
  {
    v16 = [IMSuggestedActionsMessagePartChatItem alloc];
    v18 = objc_msgSend_initWithItem_suggestedActionsList_(v16, v17, v5, v13);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_newAudioMessagePartsForMessageItem:(id)a3 text:(id)a4 chatContext:(id)a5 retractedPartIndexes:(id)a6 singlePart:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v19 = objc_msgSend_length(v13, v17, v18);
  v22 = objc_msgSend_fileTransferGUIDs(v12, v20, v21);
  v25 = objc_msgSend_firstObject(v22, v23, v24);

  if (v25 && !objc_msgSend_count(v15, v26, v27))
  {
    v33 = [IMAudioMessageChatItem alloc];
    v30 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v33, v34, v12, v13, 0, 0, v19, v25, v14);
    v37 = objc_msgSend_serviceVariant(v14, v35, v36) == 1;
    objc_msgSend_setIsBusiness_(v30, v38, v37);
    v31 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v39, v30);
LABEL_9:
    v32 = v31;

    goto LABEL_10;
  }

  if (objc_msgSend_count(v15, v26, v27))
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = v28;
    if (v16)
    {
      objc_msgSend_addObject_(v28, v29, v16);
    }

    v31 = objc_msgSend__retractedMessagePartsForMessage_parts_retractedPartIndexes_(a1, v29, v12, v30, v15);
    goto LABEL_9;
  }

  v32 = 0;
LABEL_10:

  return v32;
}

+ (id)_retractedMessagePartsForMessage:(id)a3 parts:(id)a4 retractedPartIndexes:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_mutableCopy(v8, v10, v11);
  if (objc_msgSend_count(v9, v13, v14))
  {
    v36 = v12;
    v17 = objc_msgSend_failedRetractPartIndexes(v7, v15, v16);
    v20 = objc_msgSend_editUnsupportedByHandleIDs(v7, v18, v19);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = v20;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v47, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend__imHandleWithID_(v7, v25, *(*(&v43 + 1) + 8 * i));
          if (v30)
          {
            objc_msgSend_addObject_(v21, v29, v30);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v43, v47, 16);
      }

      while (v26);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1A82D64B8;
    v37[3] = &unk_1E78118F0;
    v38 = v7;
    v39 = v17;
    v40 = v21;
    v41 = v8;
    v12 = v36;
    v42 = v36;
    v31 = v21;
    v32 = v17;
    objc_msgSend_enumerateIndexesUsingBlock_(v9, v33, v37);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (int64_t)_attachmentStackAggregationThreshold
{
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  v6 = objc_msgSend_threeAttachmentStackEnabled(v3, v4, v5);

  if (v6)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (id)aggregatePartsForParts:(id)a3 forMessage:(id)a4 context:(id)a5 text:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v15 = objc_msgSend_mutableCopy(v9, v13, v14);
  if (objc_msgSend_count(v15, v16, v17))
  {
    v18 = objc_alloc(MEMORY[0x1E695DF70]);
    v21 = objc_msgSend_count(v15, v19, v20);
    v23 = objc_msgSend_initWithCapacity_(v18, v22, v21);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x3032000000;
    v52[3] = sub_1A8259B40;
    v52[4] = sub_1A825AECC;
    v53 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A82D69E4;
    aBlock[3] = &unk_1E7811918;
    v49 = v10;
    v50 = v11;
    v24 = v12;
    v51 = v24;
    v25 = _Block_copy(aBlock);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1A82D6BF8;
    v43[3] = &unk_1E7811940;
    v47 = v52;
    v26 = v25;
    v46 = v26;
    v27 = v23;
    v44 = v27;
    v45 = v24;
    v28 = _Block_copy(v43);
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = sub_1A82D6DD4;
    v39 = &unk_1E7811968;
    v42 = v52;
    v29 = v27;
    v40 = v29;
    v30 = v28;
    v41 = v30;
    objc_msgSend_enumerateObjectsUsingBlock_(v15, v31, &v36);
    v30[2](v30);
    v34 = objc_msgSend_copy(v29, v32, v33, v36, v37, v38, v39);

    _Block_object_dispose(v52, 8);
    v15 = v34;
  }

  return v15;
}

+ (id)messageBodyStringForAttachmentGUIDs:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v31, 16);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    key = *MEMORY[0x1E69A5F68];
    v11 = *MEMORY[0x1E69A5F10];
    v12 = *MEMORY[0x1E69A5FD8];
    v13 = *MEMORY[0x1E69A5F00];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (v15)
        {
          CFDictionarySetValue(v5, key, v15);
        }

        CFDictionarySetValue(v5, v11, &unk_1F1BA1788);
        v17 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v9);
        if (v17)
        {
          CFDictionarySetValue(v5, v12, v17);
        }

        v18 = objc_alloc(MEMORY[0x1E696AD40]);
        v20 = objc_msgSend_initWithString_attributes_(v18, v19, v13, v5);
        objc_msgSend_appendAttributedString_(v4, v21, v20);
        v9 = (v9 + 1);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v27, v31, 16);
    }

    while (v8);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)_shouldAggregateForTransferType:(id)a3
{
  v3 = a3;
  if (qword_1EB2EA208 != -1)
  {
    sub_1A84DFD40();
  }

  if (qword_1EB2EA210 != -1)
  {
    sub_1A84DFD54();
  }

  v4 = off_1EB2EA200(v3, qword_1EB2EA218) != 0;

  return v4;
}

+ (id)_messageItemWithPartsDeleted:(id)a3 fromMessageItem:(id)a4 indexesOfItemsDeleted:(id *)a5 indexToRangeMapping:(id *)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v44 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v53 = v7;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Message with parts deleted: %@ from message: %@", buf, 0x16u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v7;
  v11 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v47, v51, 16);
  if (v14)
  {
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        v18 = objc_msgSend_messagePartAttributeName(v17, v12, v13);
        if (v18 == -1)
        {
          v11 = 1;
        }

        else
        {
          objc_msgSend_addIndex_(v9, v12, v18);
          v21 = objc_msgSend_messagePartRange(v17, v19, v20);
          v22 = v12;
          if (!v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = objc_msgSend_subject(v17, v12, v13);
              v11 = objc_msgSend_length(v23, v24, v25) != 0;
            }
          }

          if (v21 | v22)
          {
            v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, v18);
            v28 = objc_msgSend_objectForKey_(v45, v27, v26);

            if (!v28)
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v30, v18);
              objc_msgSend_setObject_forKey_(v45, v32, v28, v31);
            }

            v33 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v29, v21, v22);
            objc_msgSend_addObject_(v28, v34, v33);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v47, v51, 16);
    }

    while (v14);
  }

  if (a5)
  {
    v36 = v9;
    *a5 = v9;
  }

  v37 = v45;
  if (a6)
  {
    v38 = v45;
    v37 = v45;
    *a6 = v45;
  }

  v39 = objc_msgSend__messageItemWithIndexesDeleted_subRangesToDeleteMapping_deleteSubject_deleteTransferCallback_createItemCallback_fromMessageItem_(MEMORY[0x1E69A8138], v35, v9, v37, v11, &unk_1F1B6E400, &unk_1F1B6E420, v44);

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)chatItemGUIDForMessageGUID:(id)a3 partIndex:(int64_t)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 alloc];
  v9 = objc_msgSend_initWithFormat_(v7, v8, @"p:%ld/%@", a4, v6);

  return v9;
}

- (id)_initWithItem:(id)a3 index:(int64_t)a4 messagePartRange:(_NSRange)a5 syndicationBehavior:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v13 = objc_msgSend__initWithItem_(self, v12, v11);
  v15 = v13;
  if (v13)
  {
    v13[10] = a4;
    v16 = v13 + 21;
    v13[21] = location;
    v13[22] = length;
    v13[20] = objc_msgSend_replyCountForPartIndex_(v11, v14, a4);
    v15[16] = a6;
    v20 = objc_msgSend_syndicationRanges(v11, v17, v18);
    if (v20)
    {
      v21 = objc_msgSend_messagePartSyndicationRangeForRange_inRangesArray_(MEMORY[0x1E69A8158], v19, *v16, v15[22], v20);
      v24 = v21;
      if (v21)
      {
        v15[13] = objc_msgSend_syndicationType(v21, v22, v23);
        v15[14] = objc_msgSend_syndicationStatus(v24, v25, v26);
        if (objc_msgSend_isHighlighted(v15, v27, v28))
        {
          if (v15[16] == 1)
          {
            v29 = [IMMessagePartHighlightChatItem alloc];
            v32 = objc_msgSend_guid(v11, v30, v31);
            v34 = objc_msgSend__initWithItem_highlightedMessagePartGUID_highlightedMessagePartIndex_highlightedMessagePartRange_(v29, v33, v11, v32, a4, location, length);
            v35 = v15[15];
            v15[15] = v34;
          }
        }
      }
    }
  }

  return v15;
}

- (id)_initWithItem:(id)a3 text:(id)a4 translationSecondaryText:(id)a5 index:(int64_t)a6 messagePartRange:(_NSRange)a7 visibleAssociatedMessageChatItems:(id)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v20 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
  isSWYAttachmentsEnabled = objc_msgSend_isSWYAttachmentsEnabled(v20, v21, v22);

  if (isSWYAttachmentsEnabled)
  {
    isFileAttachment = objc_msgSend_isFileAttachment(v14, v24, v25);
    v28 = objc_msgSend__initWithItem_index_messagePartRange_syndicationBehavior_(self, v27, v14, a6, location, length, isFileAttachment);
  }

  else
  {
    v28 = objc_msgSend__initWithItem_index_messagePartRange_(self, v24, v14, a6, location, length);
  }

  v31 = v28;
  if (v28)
  {
    v32 = objc_msgSend_guid(v14, v29, v30);
    v34 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v33, v32, a6);
    objc_msgSend__setGUID_(v31, v35, v34);
    v37 = objc_msgSend_extractAndSetChipListFrom_(v31, v36, v15);
    v38 = *(v31 + 64);
    *(v31 + 64) = v37;

    v41 = objc_msgSend_copy(v16, v39, v40);
    v42 = *(v31 + 72);
    *(v31 + 72) = v41;

    if (objc_msgSend_isCorrupt(v14, v43, v44))
    {
      v47 = objc_msgSend_body(v14, v45, v46);
      v50 = objc_msgSend_copy(v47, v48, v49);
      v51 = *(v31 + 88);
      *(v31 + 88) = v50;
    }

    v52 = objc_msgSend_copy(v17, v45, v46);
    objc_msgSend__setVisibleAssociatedMessageChatItems_(v31, v53, v52);

    *(v31 + 59) = objc_msgSend_isPendingSatelliteSend(v14, v54, v55);
  }

  return v31;
}

- (id)extractAndSetChipListFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_string(v4, v5, v6);
    v10 = objc_msgSend_rangeOfString_(v8, v9, *MEMORY[0x1E69A6CF0]);
    v12 = v11;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A82D7DF8;
    v21[3] = &unk_1E78119D0;
    v21[4] = self;
    objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v7, v13, v10, v12, 0, v21);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = objc_msgSend_copy(v7, v14, v15);
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      v16 = objc_msgSend_initWithAttributedString_(v17, v18, v7);
      objc_msgSend_replaceCharactersInRange_withString_(v16, v19, v10, v12, &stru_1F1B76F98);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_setVisibleAssociatedMessageChatItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  visibleAssociatedMessageChatItems = self->_visibleAssociatedMessageChatItems;
  if (visibleAssociatedMessageChatItems != v6 && (objc_msgSend_isEqualToArray_(visibleAssociatedMessageChatItems, v5, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_visibleAssociatedMessageChatItems, a3);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_visibleAssociatedMessageChatItems;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_msgSend_isFromMe(self, v11, v12, v20);
          objc_msgSend__setParentMessageIsFromMe_(v16, v18, v17);
          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
      }

      while (v13);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_visibleAssociatedChatItemsByFlatteningAggregateChatItems
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = objc_msgSend_visibleAssociatedMessageChatItems(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v35, v40, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = objc_msgSend_acknowledgments(v14, v15, v16);
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v31, v39, 16);
          if (v19)
          {
            v21 = v19;
            v22 = *v32;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v32 != v22)
                {
                  objc_enumerationMutation(v17);
                }

                objc_msgSend_addObject_(v4, v20, *(*(&v31 + 1) + 8 * j));
              }

              v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v31, v39, 16);
            }

            while (v21);
          }
        }

        else
        {
          objc_msgSend_addObject_(v4, v13, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v35, v40, 16);
    }

    while (v9);
  }

  v27 = objc_msgSend_copy(v4, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (NSString)threadIdentifier
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_threadIdentifier(v3, v4, v5);

  return v6;
}

- (IMMessageItem)threadOriginator
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_threadOriginator(v3, v4, v5);

  return v6;
}

- (unint64_t)scheduleType
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_scheduleType(v3, v4, v5);

  return v6;
}

- (unint64_t)scheduleState
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_scheduleState(v3, v4, v5);

  return v6;
}

- (_NSRange)originalMessagePartRange
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_messagePartAttributeName(self, v5, v6);
  v10 = objc_msgSend_originalTextRangesByPartIndex(v4, v8, v9);
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v11, v7);
  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v13, v12);

  if (v14)
  {
    v17 = objc_msgSend_rangeValue(v14, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_messagePartRange(self, v15, v16);
  }

  v19 = v17;
  v20 = v18;

  v21 = v19;
  v22 = v20;
  result.length = v22;
  result.location = v21;
  return result;
}

- (BOOL)isEditedMessagePart
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_messagePartAttributeName(self, v5, v6);
  v10 = objc_msgSend_editedPartIndexes(v4, v8, v9);
  LOBYTE(v7) = objc_msgSend_containsIndex_(v10, v11, v7);

  return v7;
}

- (BOOL)isFailedEditMessagePart
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_messagePartAttributeName(self, v5, v6);
  v10 = objc_msgSend_failedEditPartIndexes(v4, v8, v9);
  LOBYTE(v7) = objc_msgSend_containsIndex_(v10, v11, v7);

  return v7;
}

- (BOOL)isRetractedMessagePart
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_messagePartAttributeName(self, v5, v6);
  v10 = objc_msgSend_retractedPartIndexes(v4, v8, v9);
  LOBYTE(v7) = objc_msgSend_containsIndex_(v10, v11, v7);

  return v7;
}

- (BOOL)isFailedRetractMessagePart
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_messagePartAttributeName(self, v5, v6);
  v10 = objc_msgSend_failedRetractPartIndexes(v4, v8, v9);
  LOBYTE(v7) = objc_msgSend_containsIndex_(v10, v11, v7);

  return v7;
}

- (BOOL)requiresSiriAttribution
{
  if (objc_msgSend_isFromMe(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_message(self, v4, v5);
  v9 = objc_msgSend_sourceApplicationID(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A83E0]);

  if (!isEqualToString)
  {
    return 0;
  }

  v12 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v12, sel_isSiriEnabled, v13);
}

- (BOOL)requiresFaceTimeAttribution
{
  v3 = objc_msgSend_message(self, a2, v2);
  v6 = objc_msgSend_sourceApplicationID(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"com.apple.FaceTime");

  return isEqualToString;
}

- (BOOL)requiresCriticalMessagingAPIAttribution
{
  v3 = objc_msgSend_message(self, a2, v2);
  v6 = objc_msgSend_messageSummaryInfo(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"critical-messaging-app-name");

  return v8 != 0;
}

+ (BOOL)isSiriEnabled
{
  if (qword_1EB2EA228 != -1)
  {
    sub_1A84DFD68();
  }

  return byte_1EB2EA220;
}

- (_NSRange)messagePartRange
{
  p_messagePartRange = &self->_messagePartRange;
  location = self->_messagePartRange.location;
  length = p_messagePartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)threadIdentifierForTapback
{
  v5 = objc_msgSend_threadIdentifier(self, a2, v2);
  if (!v5)
  {
    v10 = 0;
    IsThreadOriginatorWithThreadIdentifier = objc_msgSend_itemIsThreadOriginatorWithThreadIdentifier_(self, v4, &v10);
    v7 = v10;
    v8 = v7;
    if (IsThreadOriginatorWithThreadIdentifier)
    {
      v5 = v7;
    }
  }

  return v5;
}

- (id)messageSummaryInfo
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E2868();
  }

  return MEMORY[0x1E695E0F8];
}

- (unsigned)contentType
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E28A4();
  }

  return 0;
}

@end