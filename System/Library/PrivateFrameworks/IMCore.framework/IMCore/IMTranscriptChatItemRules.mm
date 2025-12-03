@interface IMTranscriptChatItemRules
- (BOOL)_hasEarlierMessagesToLoad;
- (BOOL)_hasMultipleActiveSubscriptions;
- (BOOL)_hasRecentMessagesToLoad;
- (BOOL)_shouldAdjustNewDeliveredItemIndex:(int64_t)index chatItems:(id)items;
- (BOOL)_shouldAppendNumberChangedForItem:(id)item previousItem:(id)previousItem lastChatItem:(id)chatItem outPhoneNumber:(id *)number;
- (BOOL)_shouldAppendReplyContextForItem:(id)item previousItem:(id)previousItem chatStyle:(unsigned __int8)style;
- (BOOL)_shouldAppendScheduledSectionDateForItem:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendScheduledSectionLabelForItem:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendSendViaSatelliteForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendSentViaSatelliteForChat:(id)chat message:(id)message;
- (BOOL)_shouldAppendStewieSharingSummaryForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendStoppedSharingForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldDisplayAttributionInfo:(id)info;
- (BOOL)_shouldRegenerateChatItemsForItem:(id)item previousItem:(id)previousItem oldPreviousItem:(id)oldPreviousItem;
- (BOOL)_shouldReloadChatItem:(id)item oldChatItem:(id)chatItem;
- (BOOL)_shouldReloadChatItemWithAssociatedChatItems:(id)items oldAssociatedChatItems:(id)chatItems;
- (BOOL)_shouldReloadSatelliteChatItems:(id)items;
- (BOOL)_shouldShowBlockContactForChat:(id)chat withItems:(id)items;
- (BOOL)_shouldShowChatDispositionForChat:(id)chat;
- (BOOL)_shouldShowEffectPlayButtonForMessage:(id)message;
- (BOOL)_shouldShowHQButtonForMessage:(id)message;
- (BOOL)_shouldShowReportSpamForChat:(id)chat withItems:(id)items;
- (BOOL)_shouldShowStewieResumeButtonsForChat:(id)chat;
- (BOOL)_updateAggregateAttachmentMessagePartAssociatedItems:(id)items map:(id)map;
- (BOOL)isDeliveredStatusItem:(id)item;
- (BOOL)isReadStatusItem:(id)item;
- (IMChat)chat;
- (id)_addChoiceStatusItemForPollMessagePartChatItem:(id)item combiningStatusType:(int64_t)type;
- (id)_attributionChatItemForChatItem:(id)item;
- (id)_chatItemsForItem:(id)item previousItems:(id)items;
- (id)_chatItemsWithReplyCountsForNewChatItems:(id)items parentItem:(id)item;
- (id)_currentChatSubscriptionLabel;
- (id)_editedStatusItemForEditedMessagePartChatItem:(id)item combiningStatusType:(int64_t)type;
- (id)_effectControlForChatItem:(id)item;
- (id)_historyToDisplayForMessageItem:(id)item partIndex:(int64_t)index;
- (id)_initWithChat:(id)chat;
- (id)_itemWithChatItemsDeleted:(id)deleted fromItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapOfItemsDeleted:(id *)ofItemsDeleted;
- (id)_newDeliveredChatItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items;
- (id)_newiMessageLiteSentItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items;
- (id)_updateOrRemoveDeliveredStatusItemMovingFromOldIndex:(int64_t)index chatItems:(id)items;
- (id)_updateOrRemoveiMessageLiteSentItemMovingFromOldIndex:(int64_t)index chatItems:(id)items;
- (id)inlineReplyController;
- (id)serviceForChatItems:(id)items;
- (id)testChatItems;
- (int64_t)_lastItemIndexExcludingScheduledSection:(id)section;
- (int64_t)_lastItemIndexExcludingWatchReplyOptions:(id)options;
- (void)_filterBreadcrumbs:(id)breadcrumbs;
- (void)_fixBreadcrumbs:(id)breadcrumbs;
- (void)_handleTemporaryBreadcrumbs:(id)breadcrumbs;
- (void)_insertOrMoveChatItemToEndOfChatItems:(id)items chatItemClass:(Class)class shouldInsert:(BOOL)insert chatItemCreationBlock:(id)block;
- (void)_invalidateSpamIndicatorCachedValues;
- (void)_manageMomentShareAndAggregateItemsForChatItems:(id)items;
- (void)_moveCustomAcknowledgementsForBreadcrumbs:(id)breadcrumbs visibleAssociatedMessageMap:(id)map;
- (void)_processChatItemsForAttribution:(id)attribution;
- (void)_processChatItemsForAutomaticTranslationIndicator:(id)indicator;
- (void)_processChatItemsForBreadcrumbs:(id)breadcrumbs;
- (void)_processChatItemsForDownloadingPendingMessages:(id)messages;
- (void)_processChatItemsForEditedStatus:(id)status;
- (void)_processChatItemsForExpandedEditedMessageHistory:(id)history;
- (void)_processChatItemsForIntroductionsButtons:(id)buttons;
- (void)_processChatItemsForIsShowingEditHistory:(id)history;
- (void)_processChatItemsForJunkRecoveryItem:(id)item inChat:(id)chat;
- (void)_processChatItemsForKeyTransparencyStatus:(id)status;
- (void)_processChatItemsForMessageStatusSequenceNumber:(id)number;
- (void)_processChatItemsForPollAddChoiceButton:(id)button;
- (void)_processChatItemsForReplayButton:(id)button;
- (void)_processChatItemsForSMSFallbackStatusIndicator:(id)indicator;
- (void)_processChatItemsForSatelliteAvailabilityIndicator:(id)indicator;
- (void)_processChatItemsForSatelliteNoDeliveryStatusIndicator:(id)indicator;
- (void)_processChatItemsForShowTranslationAlternateText:(id)text;
- (void)_processChatItemsForStewieResumeButtons:(id)buttons inChat:(id)chat;
- (void)_processChatItemsForSuggestedReplies:(id)replies inChat:(id)chat;
- (void)_processChatItemsForUnavailabilityIndicator:(id)indicator;
- (void)_processChatItemsForUnknownInternationalSender:(id)sender;
- (void)_processRCSEncryptionTestMessages:(id)messages;
- (void)_processSuggestedActionResponses:(id)responses;
- (void)_setItems:(id)items;
- (void)_setNextStaleTime:(id)time;
- (void)addChatItem:(id)item toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:(id)items;
@end

@implementation IMTranscriptChatItemRules

- (BOOL)_shouldShowEffectPlayButtonForMessage:(id)message
{
  messageCopy = message;
  if (objc_msgSend_errorCode(messageCopy, v4, v5))
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_msgSend_expressiveSendStyleID(messageCopy, v6, v7);
    if (objc_msgSend_length(v9, v10, v11) && ((objc_msgSend_containsString_(v9, v12, *MEMORY[0x1E69A7080]) & 1) != 0 || objc_msgSend_containsString_(v9, v12, *MEMORY[0x1E69A7028])))
    {
      v14 = objc_msgSend_containsString_(v9, v12, *MEMORY[0x1E69A7088]) ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = objc_msgSend_message(messageCopy, v12, v13);
    v18 = objc_msgSend_text(v15, v16, v17);

    if (objc_msgSend_im_containsIMTextEffect(v18, v19, v20))
    {
      v21 = _AXSReduceMotionAutoplayMessagesEffectsEnabled() == 0;
    }

    else
    {
      v21 = 0;
    }

    v8 = v14 | v21;
  }

  return v8 & 1;
}

- (id)inlineReplyController
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v5 = objc_msgSend_inlineReplyController(WeakRetained, v3, v4);

  return v5;
}

- (void)_setItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  p_items = &self->_items;
  if (items != itemsCopy)
  {
    v10 = itemsCopy;
    v9 = objc_msgSend_copy(itemsCopy, v5, v6);

    objc_storeStrong(p_items, v9);
    itemsCopy = v9;
  }
}

- (void)_setNextStaleTime:(id)time
{
  timeCopy = time;
  nextStaleTime = self->_nextStaleTime;
  p_nextStaleTime = &self->_nextStaleTime;
  if (nextStaleTime != timeCopy)
  {
    v8 = timeCopy;
    objc_storeStrong(p_nextStaleTime, time);
    timeCopy = v8;
  }
}

- (id)_currentChatSubscriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v6 = objc_msgSend_lastAddressedSIMID(WeakRetained, v4, v5);

  v7 = objc_loadWeakRetained(&self->_chat);
  v10 = objc_msgSend_lastAddressedHandleID(v7, v8, v9);

  v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v11, v12);
  v16 = objc_msgSend_ctSubscriptionInfo(v13, v14, v15);
  v18 = objc_msgSend___im_subscriptionContextForForSimID_phoneNumber_(v16, v17, v6, v10);

  v21 = objc_msgSend_label(v18, v19, v20);

  return v21;
}

- (id)_chatItemsForItem:(id)item previousItems:(id)items
{
  v885 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemsCopy = items;
  theArray = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  if (!objc_msgSend_shouldGenerateTopLevelChatItem(itemCopy, v7, v8))
  {
    goto LABEL_370;
  }

  v11 = itemCopy;
  v12 = itemsCopy;
  objc_opt_class();
  v837 = v12;
  v841 = v11;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v11;
      v48 = objc_msgSend_lastObject(v12, v46, v47);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v51 = objc_msgSend_time(v11, v49, v50);
      v54 = objc_msgSend_time(v48, v52, v53);
      objc_msgSend_timeIntervalSinceDate_(v51, v55, v54);
      v57 = v56;
      if (qword_1EB2EA418 != -1)
      {
        sub_1A84E2214();
      }

      v58 = *&qword_1EB2E56B0;

      if (fabs(v57) >= v58)
      {
        goto LABEL_42;
      }

      v48 = v48;
      if (!objc_msgSend_isFromMe(v11, v59, v60) || (objc_msgSend_isFromMe(v48, v61, v62) & 1) == 0)
      {
        v63 = objc_msgSend_sender(v11, v61, v62);
        v66 = objc_msgSend_sender(v48, v64, v65);
        v67 = v63;
        v68 = v66;
        v70 = v68;
        if (v67 == v68)
        {
        }

        else
        {
          if (!v67 || !v68)
          {
            v91 = v837;
LABEL_56:

            goto LABEL_57;
          }

          isEqualToString = objc_msgSend_isEqualToString_(v67, v69, v68);

          if ((isEqualToString & 1) == 0)
          {

            goto LABEL_42;
          }
        }
      }

      v98 = objc_msgSend_title(v11, v61, v62);
      v101 = objc_msgSend_title(v48, v99, v100);
      v67 = v98;
      v102 = v101;
      v70 = v102;
      if (v67 != v102)
      {
        v91 = v837;
        if (v67 && v102)
        {
          v104 = objc_msgSend_isEqualToString_(v67, v103, v102);

          if (v104)
          {
            goto LABEL_370;
          }

          goto LABEL_59;
        }

        goto LABEL_56;
      }

LABEL_54:
      goto LABEL_370;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_58;
    }

    v11 = v11;
    v48 = objc_msgSend_lastObject(v12, v72, v73);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    v76 = objc_msgSend_time(v11, v74, v75);
    v79 = objc_msgSend_time(v48, v77, v78);
    objc_msgSend_timeIntervalSinceDate_(v76, v80, v79);
    v82 = v81;
    if (qword_1EB2EA418 != -1)
    {
      sub_1A84E2214();
    }

    v83 = *&qword_1EB2E56B0;

    if (fabs(v82) >= v83)
    {
LABEL_42:

LABEL_58:
      goto LABEL_59;
    }

    v48 = v48;
    v86 = objc_msgSend_actionType(v11, v84, v85);
    v91 = v837;
    if (v86 != objc_msgSend_actionType(v48, v87, v88))
    {
LABEL_57:

      goto LABEL_58;
    }

    if (objc_msgSend_isFromMe(v11, v89, v90) && (objc_msgSend_isFromMe(v48, v92, v93) & 1) != 0)
    {
      v94 = 1;
    }

    else
    {
      v763 = objc_msgSend_sender(v11, v92, v93);
      v766 = objc_msgSend_sender(v48, v764, v765);
      v767 = v763;
      v768 = v766;
      v770 = v768;
      if (v767 == v768)
      {
        v94 = 1;
        v91 = v837;
      }

      else
      {
        v94 = 0;
        v91 = v837;
        if (v767 && v768)
        {
          v94 = objc_msgSend_isEqualToString_(v767, v769, v768);
        }
      }
    }

    v806 = objc_msgSend_actionType(v11, v92, v93);
    if (v806 <= 7)
    {
      if (((1 << v806) & 0xBA) != 0)
      {
        if (!v94)
        {
          goto LABEL_57;
        }

        v809 = objc_msgSend_fileTransferGUIDs(v11, v807, v808);
        v812 = objc_msgSend_fileTransferGUIDs(v48, v810, v811);
        v813 = v809;
        v814 = v812;
        v816 = v814;
        if (v813 == v814)
        {
          LOBYTE(v94) = 1;
          v91 = v837;
        }

        else
        {
          LOBYTE(v94) = 0;
          v91 = v837;
          if (v813 && v814)
          {
            LOBYTE(v94) = objc_msgSend_isEqualToArray_(v813, v815, v814);
          }
        }

LABEL_393:
        if (v94)
        {
          goto LABEL_370;
        }

        goto LABEL_59;
      }

      if (((1 << v806) & 0x44) != 0)
      {
        goto LABEL_393;
      }
    }

    goto LABEL_54;
  }

  v13 = v11;
  v870 = 0u;
  v871 = 0u;
  v872 = 0u;
  v873 = 0u;
  obj = objc_msgSend_reversed(v12, v14, v15);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v870, buf, 16);
  if (v17)
  {
    v18 = *v871;
LABEL_5:
    v19 = 0;
    while (1)
    {
      if (*v871 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v870 + 1) + 8 * v19);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v23 = objc_msgSend_time(v13, v21, v22);
      v26 = objc_msgSend_time(v20, v24, v25);
      objc_msgSend_timeIntervalSinceDate_(v23, v27, v26);
      v29 = v28;
      if (qword_1EB2EA418 != -1)
      {
        sub_1A84E2228();
      }

      v30 = fabs(v29) < *&qword_1EB2E56B0;

      if (!v30)
      {
        break;
      }

      v31 = v20;
      v34 = objc_msgSend_otherHandle(v13, v32, v33);
      v37 = objc_msgSend_otherHandle(v31, v35, v36);
      v38 = v34;
      v39 = v37;
      v41 = v39;
      if (v38 == v39)
      {

LABEL_45:
        v95 = objc_msgSend_changeType(v13, v43, v44);
        LOBYTE(v95) = v95 == objc_msgSend_changeType(v31, v96, v97);

        if (v95)
        {
          goto LABEL_370;
        }

        goto LABEL_59;
      }

      if (v38 && v39)
      {
        v42 = objc_msgSend_isEqualToString_(v38, v40, v39);

        if (v42)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }

      if (v17 == ++v19)
      {
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v870, buf, 16);
        if (v17)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_59:
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v825 = objc_msgSend_chatStyle(WeakRetained, v106, v107);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v110 = objc_msgSend__items(self, v108, v109);
    v111 = objc_loadWeakRetained(&self->_chat);
    v114 = objc_msgSend_isInScrutinyMode(v111, v112, v113);

    v119 = objc_msgSend_guid(v841, v115, v116);
    if (v114)
    {
      v120 = objc_msgSend_guid(v841, v117, v118);
      objc_msgSend_storeGUIDInAttemptingListInScrutinyMode_(IMChat, v121, v120);
    }

    v122 = objc_loadWeakRetained(&self->_chat);
    objc_msgSend_loadParticipantContactsIfNecessary(v122, v123, v124);

    v125 = objc_loadWeakRetained(&self->_chat);
    v126 = sub_1A836B1CC(v125, v110);

    v128 = objc_msgSend__newChatItemsWithChatContext_(v841, v127, v126);
    if (!v128 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend_count(v128, v129, v130))
    {
      if (IMOSLoggingEnabled())
      {
        v131 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          v134 = objc_msgSend_guid(v841, v132, v133);
          *buf = 138412290;
          *v884 = v134;
          _os_log_impl(&dword_1A823F000, v131, OS_LOG_TYPE_INFO, "Generated no chat items for IMMessageItem with GUID: %@", buf, 0xCu);
        }
      }
    }

    if (v114)
    {
      objc_msgSend_removeGUIDInAttemptingListInScrutinyMode_(IMChat, v129, v119);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v137 = objc_msgSend__items(self, v135, v136);
      v138 = objc_loadWeakRetained(&self->_chat);
      v139 = sub_1A836B1CC(v138, v137);

      v128 = objc_msgSend__newChatItemsWithChatContext_(v841, v140, v139);
    }

    else
    {
      v128 = objc_msgSend__newChatItems(v841, v135, v136);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_changeType(v128, v141, v142))
  {
    v145 = objc_msgSend_sender(v128, v143, v144);
    v148 = objc_msgSend_ID(v145, v146, v147);

    v151 = objc_msgSend_otherHandle(v128, v149, v150);
    v154 = objc_msgSend_ID(v151, v152, v153);

    if (objc_msgSend_isEqualToString_(v148, v155, v154))
    {
      v156 = objc_loadWeakRetained(&self->_chat);
      objc_msgSend_setIsSubscriptionSwitchParticipantAddTypeFound_(v156, v157, 1);

      v158 = objc_loadWeakRetained(&self->_chat);
      objc_msgSend_setSubscriptionSwitchParticipantAddChatItem_(v158, v159, v128);

      v128 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_changeType(v128, v160, v161) != 1)
  {
    v225 = 1;
LABEL_88:
    objc_msgSend__chatItemsWithReplyCountsForNewChatItems_parentItem_(self, v160, v128, v841);
    goto LABEL_89;
  }

  v162 = objc_loadWeakRetained(&self->_chat);
  if (objc_msgSend_isSubscriptionSwitchParticipantAddTypeFound(v162, v163, v164))
  {
    v165 = objc_loadWeakRetained(&self->_chat);
    v168 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v165, v166, v167);
    v169 = v168 == 0;

    if (v169)
    {
      v225 = 1;
      goto LABEL_289;
    }

    v170 = objc_loadWeakRetained(&self->_chat);
    v173 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v170, v171, v172);
    v176 = objc_msgSend_sender(v173, v174, v175);
    v162 = objc_msgSend_ID(v176, v177, v178);

    v181 = objc_msgSend_sender(v128, v179, v180);
    v184 = objc_msgSend_ID(v181, v182, v183);

    v187 = objc_msgSend_sender(v128, v185, v186);
    v190 = objc_msgSend_name(v187, v188, v189);

    v193 = objc_msgSend_otherHandle(v128, v191, v192);
    v196 = objc_msgSend_name(v193, v194, v195);

    if (objc_msgSend_isEqualToString_(v162, v197, v184))
    {
      obja = objc_msgSend_isEqualToString_(v190, v198, v196);
      if (obja)
      {
        v831 = objc_msgSend__item(v128, v199, v200);
        v201 = [IMParticipantSubscriptionSwitchChatItem alloc];
        v204 = objc_msgSend_sender(v128, v202, v203);
        v207 = objc_msgSend_otherHandle(v128, v205, v206);
        v829 = objc_msgSend__initWithItem_sender_otherHandle_(v201, v208, v831, v204, v207);

        v209 = [IMDateChatItem alloc];
        v210 = objc_loadWeakRetained(&self->_chat);
        v213 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v210, v211, v212);
        v216 = objc_msgSend__item(v213, v214, v215);
        v218 = objc_msgSend__initWithItem_(v209, v217, v216);

        v882[0] = v218;
        v882[1] = v829;
        v220 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v219, v882, 2);

        v221 = objc_loadWeakRetained(&self->_chat);
        objc_msgSend_setIsSubscriptionSwitchParticipantAddTypeFound_(v221, v222, 0);

        v223 = objc_loadWeakRetained(&self->_chat);
        objc_msgSend_setSubscriptionSwitchParticipantAddChatItem_(v223, v224, 0);
        v128 = v220;
      }

      else
      {
        v831 = objc_msgSend_otherHandle(v128, v199, v200);
        v829 = objc_msgSend_sender(v128, v598, v599);
        v600 = objc_loadWeakRetained(&self->_chat);
        v603 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v600, v601, v602);
        v218 = objc_msgSend__item(v603, v604, v605);

        v606 = [IMParticipantChangeChatItem alloc];
        v607 = objc_loadWeakRetained(&self->_chat);
        v608 = sub_1A836B1CC(v607, self->_items);
        v223 = objc_msgSend__initWithItem_sender_otherHandle_context_(v606, v609, v218, v831, v829, v608);

        v610 = objc_loadWeakRetained(&self->_chat);
        objc_msgSend_setSubscriptionSwitchParticipantAddChatItem_(v610, v611, v223);
      }

      v225 = obja ^ 1;
    }

    else
    {
      v225 = 1;
    }
  }

  else
  {
    v225 = 1;
  }

LABEL_289:
  v612 = objc_loadWeakRetained(&self->_chat);
  isSubscriptionSwitchParticipantAddTypeFound = objc_msgSend_isSubscriptionSwitchParticipantAddTypeFound(v612, v613, v614);

  if (!isSubscriptionSwitchParticipantAddTypeFound)
  {
    goto LABEL_88;
  }

  v616 = [IMDateChatItem alloc];
  v617 = objc_loadWeakRetained(&self->_chat);
  v620 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v617, v618, v619);
  v623 = objc_msgSend__item(v620, v621, v622);
  v625 = objc_msgSend__initWithItem_(v616, v624, v623);

  v881[0] = v625;
  v626 = objc_loadWeakRetained(&self->_chat);
  v629 = objc_msgSend_subscriptionSwitchParticipantAddChatItem(v626, v627, v628);
  v881[1] = v629;
  v632 = objc_msgSend__newChatItems(v841, v630, v631);
  v881[2] = v632;
  v634 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v633, v881, 3);

  v635 = objc_loadWeakRetained(&self->_chat);
  objc_msgSend_setIsSubscriptionSwitchParticipantAddTypeFound_(v635, v636, 0);

  v637 = objc_loadWeakRetained(&self->_chat);
  objc_msgSend_setSubscriptionSwitchParticipantAddChatItem_(v637, v638, 0);

  v225 = 0;
  v128 = v634;
  objc_msgSend__chatItemsWithReplyCountsForNewChatItems_parentItem_(self, v639, v634, v841);
  v226 = LABEL_89:;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v832 = 0;
  }

  else
  {
    v832 = v226;

    v226 = 0;
  }

  v830 = objc_msgSend__filteredChatItemsForNewChatItems_(self, v227, v226);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (theArray)
    {
      v230 = objc_msgSend_chatItemForIMChatItem_(self, v228, v832);
      v231 = v230 == 0;

      if (!v231)
      {
        valuea = objc_msgSend_chatItemForIMChatItem_(self, v232, v832);
        CFArrayAppendValue(theArray, valuea);
      }
    }

    goto LABEL_369;
  }

  hasMessageChatItem = objc_msgSend__hasMessageChatItem(v841, v228, v229);
  v233 = objc_loadWeakRetained(&self->_chat);
  if (objc_msgSend_isMapKitBusinessChat(v233, v234, v235))
  {
    v236 = objc_loadWeakRetained(&self->_chat);
    isStewieSharingChat = objc_msgSend_isStewieSharingChat(v236, v237, v238);

    if (!isStewieSharingChat)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v242 = objc_loadWeakRetained(&self->_chat);
  v245 = objc_msgSend_lastObject(v837, v243, v244);
  shouldAppendServiceForChat_item_previousItem_chatStyle = objc_msgSend__shouldAppendServiceForChat_item_previousItem_chatStyle_(self, v246, v242, v841, v245, v825);

  if (shouldAppendServiceForChat_item_previousItem_chatStyle)
  {
    v248 = objc_loadWeakRetained(&self->_chat);
    v251 = objc_msgSend_participants(v248, v249, v250);
    v254 = objc_msgSend_firstObject(v251, v252, v253);

    v255 = [IMServiceChatItem alloc];
    v258 = objc_msgSend__service(v841, v256, v257);
    v260 = objc_msgSend__initWithItem_service_handle_(v255, v259, v841, v258, v254);

    v263 = objc_msgSend__service(v841, v261, v262);
    v266 = objc_msgSend_satelliteSMSService(IMService, v264, v265);
    v267 = v263 == v266;

    if (v267)
    {
      v270 = objc_loadWeakRetained(&self->_chat);
      isRecipientAbleToDowngradeToSMS = objc_msgSend_isRecipientAbleToDowngradeToSMS(v270, v271, v272);
      objc_msgSend_setLiteServiceCapable_(v260, v274, isRecipientAbleToDowngradeToSMS);
    }

    v275 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v268, v269);
    isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v275, v276, v277);

    if (isTranscriptSharingEnabled)
    {
      v281 = objc_loadWeakRetained(&self->_chat);
      v284 = objc_msgSend_isStewieSharingChat(v281, v282, v283);
      objc_msgSend_setStewieSharingChat_(v260, v285, v284);
    }

    v286 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v279, v280);
    isRCSEncryptionEnabled = objc_msgSend_isRCSEncryptionEnabled(v286, v287, v288);

    if (isRCSEncryptionEnabled)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v293 = objc_msgSend_encrypted(v841, v291, v292);
        objc_msgSend_setEncrypted_(v260, v294, v293);
      }

      else
      {
        objc_msgSend_setEncrypted_(v260, v291, 0);
      }
    }

    if (theArray)
    {
      v295 = objc_msgSend_chatItemForIMChatItem_(self, v290, v260);
      v296 = v295 == 0;

      if (!v296)
      {
        v298 = objc_msgSend_chatItemForIMChatItem_(self, v297, v260);
        CFArrayAppendValue(theArray, v298);
      }
    }
  }

LABEL_115:
  value = objc_msgSend_time(v841, v240, v241);
  if (value)
  {
    v301 = objc_msgSend_lastObject(v837, v299, v300);
    shouldAppendScheduledSectionDateForItem_previousItem = objc_msgSend__shouldAppendScheduledSectionDateForItem_previousItem_(self, v302, v841, v301);

    if (shouldAppendScheduledSectionDateForItem_previousItem)
    {
      v304 = [IMScheduledSectionDateChatItem alloc];
      v306 = objc_msgSend_initWithItem_(v304, v305, v841);
      v309 = objc_msgSend_lastObject(v837, v307, v308);
      shouldAppendScheduledSectionLabelForItem_previousItem = objc_msgSend__shouldAppendScheduledSectionLabelForItem_previousItem_(self, v310, v306, v309);

      if (shouldAppendScheduledSectionLabelForItem_previousItem)
      {
        v313 = [IMScheduledSectionLabelChatItem alloc];
        v316 = objc_msgSend_initWithAssociatedDateChatItem_(v313, v314, v306);
        if (theArray)
        {
          v317 = objc_msgSend_chatItemForIMChatItem_(self, v315, v316);
          v318 = v317 == 0;

          if (!v318)
          {
            v320 = objc_msgSend_chatItemForIMChatItem_(self, v319, v316);
            CFArrayAppendValue(theArray, v320);
          }
        }
      }

      if (!theArray)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (!v225)
      {
        goto LABEL_130;
      }

      v321 = objc_msgSend_lastObject(v837, v299, v300);
      shouldAppendDateForItem_previousItem = objc_msgSend__shouldAppendDateForItem_previousItem_(self, v322, v841, v321);

      if (!shouldAppendDateForItem_previousItem)
      {
        goto LABEL_130;
      }

      v324 = [IMDateChatItem alloc];
      v306 = objc_msgSend__initWithItem_(v324, v325, v841);
      if (!theArray)
      {
        goto LABEL_129;
      }
    }

    v326 = objc_msgSend_chatItemForIMChatItem_(self, v312, v306);
    v327 = v326 == 0;

    if (!v327)
    {
      v329 = objc_msgSend_chatItemForIMChatItem_(self, v328, v306);
      CFArrayAppendValue(theArray, v329);
    }

LABEL_129:
  }

LABEL_130:
  v330 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v299, v300);
  v333 = objc_msgSend_isTranscriptSharingEnabled(v330, v331, v332);

  if (v333)
  {
    v336 = objc_msgSend_chat(self, v334, v335);
    v339 = objc_msgSend_lastObject(v837, v337, v338);
    shouldAppendStewieSharingSummaryForChat_item_previousItem = objc_msgSend__shouldAppendStewieSharingSummaryForChat_item_previousItem_(self, v340, v336, v841, v339);

    if (shouldAppendStewieSharingSummaryForChat_item_previousItem)
    {
      v344 = [IMStewieSharingSummaryChatItem alloc];
      v345 = objc_loadWeakRetained(&self->_chat);
      v348 = objc_msgSend_emergencyUserHandle(v345, v346, v347);
      v349 = objc_loadWeakRetained(&self->_chat);
      v351 = objc_msgSend__initWithItem_emergencyUserHandle_chat_(v344, v350, v841, v348, v349);

      if (theArray)
      {
        v353 = objc_msgSend_chatItemForIMChatItem_(self, v352, v351);
        v354 = v353 == 0;

        if (!v354)
        {
          v356 = objc_msgSend_chatItemForIMChatItem_(self, v355, v351);
          CFArrayAppendValue(theArray, v356);
        }
      }
    }

    v357 = objc_msgSend_chat(self, v342, v343);
    v360 = objc_msgSend_lastObject(v837, v358, v359);
    shouldAppendStoppedSharingForChat_item_previousItem = objc_msgSend__shouldAppendStoppedSharingForChat_item_previousItem_(self, v361, v357, v841, v360);

    if (shouldAppendStoppedSharingForChat_item_previousItem)
    {
      v363 = [IMStewieStoppedSharingChatItem alloc];
      v364 = objc_loadWeakRetained(&self->_chat);
      v367 = objc_msgSend_emergencyUserHandle(v364, v365, v366);
      v368 = objc_loadWeakRetained(&self->_chat);
      v370 = objc_msgSend__initWithItem_emergencyUserHandle_chat_(v363, v369, v841, v367, v368);

      if (theArray)
      {
        v372 = objc_msgSend_chatItemForIMChatItem_(self, v371, v370);
        v373 = v372 == 0;

        if (!v373)
        {
          v375 = objc_msgSend_chatItemForIMChatItem_(self, v374, v370);
          CFArrayAppendValue(theArray, v375);
        }
      }

      v376 = theArray;

      v377 = theArray;
      goto LABEL_376;
    }
  }

  if ((hasMessageChatItem & 1) == 0)
  {
    if (v830)
    {
      v868 = 0u;
      v869 = 0u;
      v866 = 0u;
      v867 = 0u;
      v378 = v830;
      v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v379, &v866, v880, 16);
      if (v381)
      {
        v382 = *v867;
        do
        {
          for (i = 0; i != v381; ++i)
          {
            if (*v867 != v382)
            {
              objc_enumerationMutation(v378);
            }

            if (theArray)
            {
              v384 = *(*(&v866 + 1) + 8 * i);
              v385 = objc_msgSend_chatItemForIMChatItem_(self, v380, v384);
              v386 = v385 == 0;

              if (!v386)
              {
                v387 = objc_msgSend_chatItemForIMChatItem_(self, v380, v384);
                CFArrayAppendValue(theArray, v387);
              }
            }
          }

          v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v380, &v866, v880, 16);
        }

        while (v381);
      }

      goto LABEL_157;
    }

    if (theArray)
    {
      v388 = objc_msgSend_chatItemForIMChatItem_(self, v334, v832);
      v389 = v388 == 0;

      if (!v389)
      {
        v378 = objc_msgSend_chatItemForIMChatItem_(self, v334, v832);
        CFArrayAppendValue(theArray, v378);
LABEL_157:
      }
    }
  }

  v390 = objc_msgSend_lastObject(v837, v334, v335);
  shouldAppendReplyContextForItem_previousItem_chatStyle = objc_msgSend__shouldAppendReplyContextForItem_previousItem_chatStyle_(self, v391, v841, v390, v825);

  if (shouldAppendReplyContextForItem_previousItem_chatStyle)
  {
    objb = v841;
    v822 = objc_msgSend_threadIdentifier(objb, v395, v396);
    v819 = objc_msgSend_threadOriginator(objb, v397, v398);
    if (v819)
    {
      OriginatorRange = IMMessageThreadIdentifierGetOriginatorRange();
      v401 = v400;
      OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart();
      v818 = objc_msgSend__items(self, v402, v403);
      v404 = objc_opt_new();
      v405 = objc_loadWeakRetained(&self->_chat);
      v820 = sub_1A836B1CC(v405, v818);

      v817 = objc_msgSend__newChatItemsWithChatContext_(v819, v406, v820);
      if (v817)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v408 = v817;
        }

        else
        {
          v879 = v817;
          v408 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v407, &v879, 1);
        }

        v864 = 0u;
        v865 = 0u;
        v862 = 0u;
        v863 = 0u;
        v428 = v408;
        v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(v428, v429, &v862, v878, 16);
        if (v430)
        {
          v431 = *v863;
          do
          {
            for (j = 0; j != v430; ++j)
            {
              if (*v863 != v431)
              {
                objc_enumerationMutation(v428);
              }

              v433 = *(*(&v862 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v435 = v433;
                if (objc_msgSend_messagePartRange(v435, v436, v437) == OriginatorRange && v438 == v401)
                {
                  objc_msgSend_addObject_(v404, v438, v435);
                }

                else
                {
                  v441 = objc_msgSend_aggregateAttachmentParts(v435, v438, v439);
                  objc_msgSend_addObjectsFromArray_(v404, v442, v441);
                }
              }

              else
              {
                objc_msgSend_addObject_(v404, v434, v433);
              }
            }

            v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(v428, v443, &v862, v878, 16);
          }

          while (v430);
        }
      }

      v860 = 0u;
      v861 = 0u;
      v858 = 0u;
      v859 = 0u;
      v426 = v404;
      v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v444, &v858, v877, 16);
      if (!v445)
      {
        goto LABEL_218;
      }

      v446 = *v859;
LABEL_193:
      v447 = 0;
      while (1)
      {
        if (*v859 != v446)
        {
          objc_enumerationMutation(v426);
        }

        v448 = *(*(&v858 + 1) + 8 * v447);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v455 = v448;
          v453 = objc_msgSend_isFromMe(v455, v456, v457);
          if (objc_msgSend_partIndex(v455, v458, v459) == OriginatorMessagePart)
          {
            goto LABEL_202;
          }

LABEL_203:
          v453 = 0;
LABEL_204:

          if (v453)
          {
            if (theArray)
            {
              CFArrayAppendValue(theArray, v453);
            }

            if (objc_msgSend__shouldAppendReplyCountIfNeeded(self, v454, v468, v817))
            {
              v471 = objc_msgSend_guid(objb, v469, v470);
              v474 = objc_msgSend_isFromMe(objb, v472, v473);
              v476 = objc_msgSend__replyCountChatItemForChatItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_threadOriginatorMessageItem_(self, v475, v453, objb, v822, v471, v474, v819);

              if (v476)
              {
                v477 = theArray != 0;
              }

              else
              {
                v477 = 0;
              }

              if (v477)
              {
                CFArrayAppendValue(theArray, v476);
              }
            }

            goto LABEL_218;
          }
        }

        if (v445 == ++v447)
        {
          v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v454, &v858, v877, 16);
          if (v445)
          {
            goto LABEL_193;
          }

LABEL_218:

LABEL_219:
          goto LABEL_220;
        }
      }

      v449 = v448;
      if (objc_msgSend_index(v449, v450, v451) != OriginatorMessagePart)
      {
        goto LABEL_203;
      }

      v453 = objc_msgSend_replyContextPreviewChatItemForReply_chatContext_(v449, v452, objb, v820);
      if (!v453)
      {
LABEL_202:
        v460 = [IMReplyContextDeletedMessageChatItem alloc];
        v463 = objc_msgSend_guid(objb, v461, v462);
        v466 = objc_msgSend_isFromMe(objb, v464, v465);
        v453 = objc_msgSend__initWithReplyItem_threadIdentifier_replyMessageGUID_replyIsFromMe_deletedMessageIsFromMe_(v460, v467, objb, v822, v463, v466, v453);
      }

      goto LABEL_204;
    }

    v409 = [IMReplyContextDeletedMessageChatItem alloc];
    v412 = objc_msgSend_guid(objb, v410, v411);
    v415 = objc_msgSend_isFromMe(objb, v413, v414);
    v818 = objc_msgSend__initWithReplyItem_threadIdentifier_replyMessageGUID_replyIsFromMe_deletedMessageIsFromMe_(v409, v416, objb, v822, v412, v415, 0);

    if (theArray && v818)
    {
      CFArrayAppendValue(theArray, v818);
    }

    if (objc_msgSend__shouldAppendReplyCountIfNeeded(self, v417, v418))
    {
      v421 = objc_msgSend_guid(objb, v419, v420);
      v424 = objc_msgSend_isFromMe(objb, v422, v423);
      v426 = objc_msgSend__replyCountChatItemForChatItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_threadOriginatorMessageItem_(self, v425, v818, objb, v822, v421, v424, 0);

      if (v426)
      {
        v427 = theArray != 0;
      }

      else
      {
        v427 = 0;
      }

      if (v427)
      {
        CFArrayAppendValue(theArray, v426);
      }

      goto LABEL_219;
    }

LABEL_220:
  }

  v478 = objc_msgSend_lastObject(v837, v393, v394, v817);
  v481 = objc_msgSend_lastObject(self->_chatItems, v479, v480);
  v857 = 0;
  shouldAppendNumberChangedForItem_previousItem_lastChatItem_outPhoneNumber = objc_msgSend__shouldAppendNumberChangedForItem_previousItem_lastChatItem_outPhoneNumber_(self, v482, v841, v478, v481, &v857);
  objc = v857;

  if (shouldAppendNumberChangedForItem_previousItem_lastChatItem_outPhoneNumber)
  {
    if (objc_msgSend_length(objc, v484, v485))
    {
      v486 = [IMNumberChangedChatItem alloc];
      v489 = objc_msgSend__initWithItem_senderHandle_(v486, v487, v841, objc);
      if (theArray)
      {
        v490 = objc_msgSend_chatItemForIMChatItem_(self, v488, v489);
        v491 = v490 == 0;

        if (!v491)
        {
          v493 = objc_msgSend_chatItemForIMChatItem_(self, v492, v489);
          CFArrayAppendValue(theArray, v493);
        }
      }
    }

    else
    {
      v489 = IMLogHandleForCategory();
      if (os_log_type_enabled(v489, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2250(v489);
      }
    }
  }

  v494 = objc_loadWeakRetained(&self->_chat);
  v497 = objc_msgSend_lastObject(v837, v495, v496);
  v498 = sub_1A836B364(v494, v841, v497, v825);

  if (v498)
  {
    if (objc_msgSend_isReply(v841, v499, v500))
    {
      v503 = v841;
      v504 = [IMReplySenderChatItem alloc];
      v507 = objc_msgSend__senderHandle(v503, v505, v506);
      v510 = objc_msgSend_threadIdentifier(v503, v508, v509);
      v512 = objc_msgSend__initWithItem_handle_threadIdentifier_(v504, v511, v503, v507, v510);

      if (!theArray)
      {
        goto LABEL_251;
      }

      v514 = objc_msgSend_chatItemForIMChatItem_(self, v513, v512);
      v515 = v514 == 0;

      if (v515)
      {
        goto LABEL_251;
      }

      goto LABEL_233;
    }

    v518 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v501, v502);
    if (objc_msgSend_isMergeBusinessSenderIndiaEnabled(v518, v519, v520))
    {
      v521 = objc_loadWeakRetained(&self->_chat);
      if (objc_msgSend_isMergedBusinessThread(v521, v522, v523))
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v503 = objc_msgSend_originalUnformattedID(v841, v525, v526);
          v527 = [IMSenderChatItem alloc];
          v530 = objc_msgSend__senderHandle(v841, v528, v529);
          v531 = objc_loadWeakRetained(&self->_chat);
          isMergedBusinessThread = objc_msgSend_isMergedBusinessThread(v531, v532, v533);
          v512 = objc_msgSend__initWithItem_handle_displayName_mergedBusinessThread_(v527, v535, v841, v530, v503, isMergedBusinessThread);

          if (!theArray)
          {
            goto LABEL_251;
          }

          v537 = objc_msgSend_chatItemForIMChatItem_(self, v536, v512);
          v538 = v537 == 0;

          if (v538)
          {
            goto LABEL_251;
          }

LABEL_233:
          v517 = objc_msgSend_chatItemForIMChatItem_(self, v516, v512);
          CFArrayAppendValue(theArray, v517);

          goto LABEL_251;
        }

LABEL_242:
        v539 = objc_loadWeakRetained(&self->_chat);
        v542 = objc_msgSend_isStewieSharingChat(v539, v540, v541);

        if (v542)
        {
          v545 = objc_msgSend__senderHandle(v841, v543, v544);
          v546 = objc_loadWeakRetained(&self->_chat);
          v548 = objc_msgSend_displayNameForChat_(v545, v547, v546);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v551 = objc_msgSend_transcriptSharingMessageType(v841, v549, v550);
          }

          else
          {
            v551 = 1;
          }

          v556 = [IMSenderChatItem alloc];
          v559 = objc_msgSend__senderHandle(v841, v557, v558);
          v503 = objc_msgSend__initWithItem_handle_displayName_transcriptSharingMessageType_(v556, v560, v841, v559, v548, v551);
        }

        else
        {
          v552 = [IMSenderChatItem alloc];
          v548 = objc_msgSend__senderHandle(v841, v553, v554);
          v503 = objc_msgSend__initWithItem_handle_(v552, v555, v841, v548);
        }

        if (!theArray)
        {
          goto LABEL_252;
        }

        v562 = objc_msgSend_chatItemForIMChatItem_(self, v561, v503);
        v563 = v562 == 0;

        if (v563)
        {
          goto LABEL_252;
        }

        v512 = objc_msgSend_chatItemForIMChatItem_(self, v564, v503);
        CFArrayAppendValue(theArray, v512);
LABEL_251:

LABEL_252:
        goto LABEL_253;
      }
    }

    goto LABEL_242;
  }

LABEL_253:
  if (!hasMessageChatItem)
  {
    goto LABEL_368;
  }

  if (v830)
  {
    v855 = 0u;
    v856 = 0u;
    v853 = 0u;
    v854 = 0u;
    v565 = v830;
    v568 = objc_msgSend_countByEnumeratingWithState_objects_count_(v565, v566, &v853, v876, 16);
    if (v568)
    {
      v569 = *v854;
      do
      {
        for (k = 0; k != v568; ++k)
        {
          if (*v854 != v569)
          {
            objc_enumerationMutation(v565);
          }

          v571 = *(*(&v853 + 1) + 8 * k);
          v572 = objc_msgSend_chatItemForIMChatItem_(self, v567, v571);
          v575 = objc_msgSend_lastObject(theArray, v573, v574);
          objc_opt_class();
          v576 = objc_opt_isKindOfClass();

          objc_opt_class();
          if (v576 & objc_opt_isKindOfClass())
          {
            v579 = objc_msgSend_count(theArray, v577, v578);
            objc_msgSend_insertObject_atIndex_(theArray, v580, v571, v579 - 1);
          }

          else if (theArray && v572)
          {
            CFArrayAppendValue(theArray, v572);
          }
        }

        v568 = objc_msgSend_countByEnumeratingWithState_objects_count_(v565, v567, &v853, v876, 16);
      }

      while (v568);
    }

    goto LABEL_271;
  }

  if (theArray)
  {
    v581 = objc_msgSend_chatItemForIMChatItem_(self, v499, v832);
    v582 = v581 == 0;

    if (!v582)
    {
      v565 = objc_msgSend_chatItemForIMChatItem_(self, v583, v832);
      CFArrayAppendValue(theArray, v565);
LABEL_271:
    }
  }

  objc_opt_class();
  v584 = objc_opt_isKindOfClass();
  if (sub_1A836B760(v841) || (v584 & 1) == 0)
  {
    goto LABEL_368;
  }

  v842 = v841;
  v828 = objc_msgSend_expireState(v842, v585, v586);
  if (v828 == 1)
  {
    if ((objc_msgSend_isFromMe(v842, v587, v588) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v589 >= 3.0))
    {
      v590 = 3;
    }

    else
    {
      v590 = 2;
    }

    v826 = v590;
  }

  else
  {
    v826 = 0;
  }

  if (objc_msgSend_isFromMe(v842, v591, v592))
  {
    if (objc_msgSend_errorCode(v842, v593, v594))
    {
      if (objc_msgSend_errorCode(v842, v595, v596) == 43)
      {
        v597 = 17;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v662 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v662, OS_LOG_TYPE_INFO))
          {
            v665 = objc_msgSend_errorCode(v842, v663, v664);
            *buf = 67109378;
            *v884 = v665;
            *&v884[4] = 2112;
            *&v884[6] = v842;
            _os_log_impl(&dword_1A823F000, v662, OS_LOG_TYPE_INFO, "Generating not delivered status item with error code %d for message %@", buf, 0x12u);
          }
        }

        v597 = 10;
      }
    }

    else if (objc_msgSend_wasDowngraded(v842, v595, v596) && objc_msgSend__canShowDowngradeBreadcrumb(v842, v640, v641))
    {
      v851 = 0u;
      v852 = 0u;
      v849 = 0u;
      v850 = 0u;
      v642 = objc_loadWeakRetained(&self->_chat);
      v645 = objc_msgSend_participants(v642, v643, v644);

      v649 = objc_msgSend_countByEnumeratingWithState_objects_count_(v645, v646, &v849, v875, 16);
      if (v649)
      {
        v650 = *v850;
        v651 = 9;
LABEL_295:
        v652 = 0;
        while (1)
        {
          if (*v850 != v650)
          {
            objc_enumerationMutation(v645);
          }

          v653 = objc_msgSend_ID(*(*(&v849 + 1) + 8 * v652), v647, v648);
          v656 = objc_msgSend__appearsToBeEmail(v653, v654, v655);

          if (v656)
          {
            break;
          }

          if (v649 == ++v652)
          {
            v649 = objc_msgSend_countByEnumeratingWithState_objects_count_(v645, v647, &v849, v875, 16);
            if (v649)
            {
              goto LABEL_295;
            }

            goto LABEL_301;
          }
        }
      }

      else
      {
LABEL_301:
        v651 = 7;
      }

      v659 = objc_msgSend_originalServiceName(v842, v657, v658);
      v661 = objc_msgSend_isEqualToString_(v659, v660, *MEMORY[0x1E69A7AD8]);

      if (v661)
      {
        v597 = 8;
      }

      else
      {
        v597 = v651;
      }
    }

    else
    {
      if (!objc_msgSend__shouldShowHQButtonForMessage_(self, v640, v842))
      {
        v673 = 0;
LABEL_313:
        v674 = objc_msgSend_chat(self, v666, v667);
        v677 = objc_msgSend_lastObject(v837, v675, v676);
        shouldAppendSendViaSatelliteForChat_item_previousItem = objc_msgSend__shouldAppendSendViaSatelliteForChat_item_previousItem_(self, v678, v674, v842, v677);

        if (shouldAppendSendViaSatelliteForChat_item_previousItem)
        {
          v680 = [IMMessageStatusChatItem alloc];
          v683 = objc_msgSend_time(v842, v681, v682);
          v838 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v680, v684, v842, 34, v683, 0, v826, 0);

          v685 = objc_loadWeakRetained(&self->_chat);
          v688 = objc_msgSend_participants(v685, v686, v687);
          v691 = objc_msgSend_firstObject(v688, v689, v690);
          v694 = objc_msgSend__displayNameWithAbbreviation(v691, v692, v693);
          objc_msgSend_setRecipientDisplayName_(v838, v695, v694);
        }

        else
        {
          v838 = v673;
        }

        goto LABEL_316;
      }

      v597 = 11;
    }

    v668 = [IMMessageStatusChatItem alloc];
    v671 = objc_msgSend_time(v842, v669, v670);
    v673 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v668, v672, v842, v597, v671, 0, v826, 0);

    goto LABEL_313;
  }

  v838 = 0;
LABEL_316:
  v847 = 0u;
  v848 = 0u;
  v845 = 0u;
  v846 = 0u;
  v696 = objc_msgSend_syndicationRanges(v842, v593, v594);
  v700 = objc_msgSend_countByEnumeratingWithState_objects_count_(v696, v697, &v845, v874, 16);
  if (!v700)
  {
    goto LABEL_334;
  }

  v701 = *v846;
  do
  {
    for (m = 0; m != v700; ++m)
    {
      if (*v846 != v701)
      {
        objc_enumerationMutation(v696);
      }

      v703 = *(*(&v845 + 1) + 8 * m);
      v704 = objc_msgSend_chat(self, v698, v699);
      isFiltered = objc_msgSend_isFiltered(v704, v705, v706);

      v710 = objc_msgSend_chat(self, v708, v709);
      v713 = objc_msgSend_isFiltered(v710, v711, v712);

      v716 = objc_msgSend_syndicationStatus(v703, v714, v715);
      if (v716 == 1)
      {
        v717 = 0;
      }

      else
      {
        if (v716 != 2)
        {
          v722 = 0;
          goto LABEL_332;
        }

        v717 = 1;
      }

      v718 = [IMSyndicationStatusChatItem alloc];
      v720 = objc_msgSend__initWithItem_withSyndicationStatus_statusItemSequenceNumber_(v718, v719, v842, v717, 0);
      v722 = v720;
      if (v720)
      {
        if (isFiltered == 2 || v713 == 1)
        {
          objc_msgSend_setIsSpamOrUnknown_(v720, v721, 1);
        }

        if (theArray)
        {
          CFArrayAppendValue(theArray, v722);
        }
      }

LABEL_332:
    }

    v700 = objc_msgSend_countByEnumeratingWithState_objects_count_(v696, v698, &v845, v874, 16);
  }

  while (v700);
LABEL_334:

  v725 = v838;
  v726 = v828 != 1;
  if (v838)
  {
    v726 = 1;
  }

  if (!v726)
  {
    v727 = [IMMessageStatusChatItem alloc];
    v725 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v727, v728, v842, v826, 0, 0);
  }

  v729 = v725;
  if (v725)
  {
    if (theArray)
    {
      v730 = objc_msgSend_chatItemForIMChatItem_(self, v723, v725);
      v731 = v730 == 0;

      if (!v731)
      {
        v732 = objc_msgSend_chatItemForIMChatItem_(self, v723, v729);
        CFArrayAppendValue(theArray, v732);
      }
    }
  }

  v733 = objc_msgSend_balloonBundleID(v842, v723, v724);
  if (!objc_msgSend_length(v733, v734, v735))
  {
    goto LABEL_356;
  }

  v738 = objc_msgSend_associatedMessageType(v842, v736, v737) == 3;

  if (!v738)
  {
    v741 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v739, v740);
    v744 = objc_msgSend_pluginSessionGUID(v842, v742, v743);
    v747 = objc_msgSend_balloonBundleID(v842, v745, v746);
    v733 = objc_msgSend_existingDataSourceForMessageGUID_bundleID_(v741, v748, v744, v747);

    if (objc_msgSend_wantsStatusItem(v733, v749, v750))
    {
      v753 = objc_msgSend_pluginPayload(v733, v751, v752);
      v756 = objc_msgSend_pluginBundleID(v753, v754, v755);
      v758 = objc_msgSend_isEqualToString_(v756, v757, *MEMORY[0x1E69A6A18]);

      if (v758)
      {
        v759 = [IMTranscriptPluginStatusChatItem alloc];
        v762 = objc_msgSend__initWithItem_dataSource_statusItemSequenceNumber_(v759, v760, v842, v733, 0);
        if (theArray)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v771 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        v774 = objc_msgSend_statusString(v733, v772, v773);
        v762 = objc_msgSend__initWithItem_datasource_statusText_optionFlags_(v771, v775, v842, v733, v774, 0);

        if (theArray)
        {
LABEL_353:
          v776 = objc_msgSend_chatItemForIMChatItem_(self, v761, v762);
          v777 = v776 == 0;

          if (!v777)
          {
            v779 = objc_msgSend_chatItemForIMChatItem_(self, v778, v762);
            CFArrayAppendValue(theArray, v779);
          }
        }
      }
    }

LABEL_356:
  }

  v780 = objc_msgSend_expressiveSendStyleID(v842, v739, v740);
  shouldShowExpressiveMessageTextAsText = objc_msgSend_shouldShowExpressiveMessageTextAsText_(self, v781, v780);

  if (shouldShowExpressiveMessageTextAsText)
  {
    v785 = objc_msgSend__localizedBackwardsCompatibleExpressiveSendText(v842, v783, v784);
    if (v785)
    {
      v786 = [IMExpressiveSendAsTextChatItem alloc];
      v789 = objc_msgSend__initWithItem_text_(v786, v787, v842, v785);
      if (v789 != 0 && theArray != 0)
      {
        v790 = objc_msgSend_chatItemForIMChatItem_(self, v788, v789);
        v791 = v790 == 0;

        if (!v791)
        {
          v793 = objc_msgSend_chatItemForIMChatItem_(self, v792, v789);
          CFArrayAppendValue(theArray, v793);
        }
      }
    }

    goto LABEL_366;
  }

  if (objc_msgSend__shouldShowEffectPlayButtonForMessage_(self, v783, v842))
  {
    v794 = [IMMessageEffectControlChatItem alloc];
    v797 = objc_msgSend_expressiveSendStyleID(v842, v795, v796);
    v785 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v794, v798, v842, v797, 0);

    if (v785 != 0 && theArray != 0)
    {
      CFArrayAppendValue(theArray, v785);
    }

LABEL_366:
  }

LABEL_368:
LABEL_369:

LABEL_370:
  if (!objc_msgSend_count(theArray, v9, v10) && IMOSLoggingEnabled())
  {
    v799 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v799, OS_LOG_TYPE_INFO))
    {
      v802 = objc_msgSend_guid(itemCopy, v800, v801);
      *buf = 138412290;
      *v884 = v802;
      _os_log_impl(&dword_1A823F000, v799, OS_LOG_TYPE_INFO, "Generated no final chat items for item with GUID: %@", buf, 0xCu);
    }
  }

  v377 = theArray;
  v803 = theArray;
LABEL_376:

  v804 = *MEMORY[0x1E69E9840];

  return theArray;
}

- (id)_chatItemsWithReplyCountsForNewChatItems:(id)items parentItem:(id)item
{
  v37[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  if ((objc_msgSend__shouldAppendReplyCountIfNeeded(self, v8, v9) & 1) == 0)
  {
    v25 = itemsCopy;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = itemCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v14 = v11;
  if (v11 && (objc_msgSend_replyCountsByPart(v11, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_count(v15, v16, v17), v15, v18))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1A836BA64;
      v33[3] = &unk_1E7813758;
      v33[4] = self;
      v34 = itemCopy;
      v35 = v14;
      v36 = v19;
      v20 = v19;
      objc_msgSend_enumerateObjectsUsingBlock_(itemsCopy, v21, v33);
      if (objc_msgSend_count(v20, v22, v23))
      {
        v24 = v20;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      goto LABEL_17;
    }

    v20 = itemsCopy;
    v28 = objc_msgSend__replyCountChatItemForChatItem_parentItem_threadOriginatorMessageItem_(self, v27, v20, itemCopy, v14);
    if (v28)
    {
      v30 = v28;
      v37[0] = v20;
      v37[1] = v28;
      v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v37, 2);

LABEL_17:
      goto LABEL_18;
    }

    v26 = v20;
  }

  else
  {
    v26 = itemsCopy;
  }

  v25 = v26;
LABEL_18:

LABEL_19:
  v31 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_shouldRegenerateChatItemsForItem:(id)item previousItem:(id)previousItem oldPreviousItem:(id)oldPreviousItem
{
  itemCopy = item;
  previousItemCopy = previousItem;
  oldPreviousItemCopy = oldPreviousItem;
  v11 = oldPreviousItemCopy;
  if (previousItemCopy == oldPreviousItemCopy)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    LOBYTE(v12) = 1;
    if (previousItemCopy && oldPreviousItemCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_chat);
      v16 = objc_msgSend_chatStyle(WeakRetained, v14, v15);

      v17 = objc_loadWeakRetained(&self->_chat);
      shouldAppendServiceForChat_item_previousItem_chatStyle = objc_msgSend__shouldAppendServiceForChat_item_previousItem_chatStyle_(self, v18, v17, itemCopy, previousItemCopy, v16);
      v20 = objc_loadWeakRetained(&self->_chat);
      v22 = objc_msgSend__shouldAppendServiceForChat_item_previousItem_chatStyle_(self, v21, v20, itemCopy, v11, v16);

      if (shouldAppendServiceForChat_item_previousItem_chatStyle == v22 && (shouldAppendDateForItem_previousItem = objc_msgSend__shouldAppendDateForItem_previousItem_(self, v23, itemCopy, previousItemCopy), shouldAppendDateForItem_previousItem == objc_msgSend__shouldAppendDateForItem_previousItem_(self, v25, itemCopy, v11)) && (shouldAppendReplyContextForItem_previousItem_chatStyle = objc_msgSend__shouldAppendReplyContextForItem_previousItem_chatStyle_(self, v26, itemCopy, previousItemCopy, v16), shouldAppendReplyContextForItem_previousItem_chatStyle == objc_msgSend__shouldAppendReplyContextForItem_previousItem_chatStyle_(self, v28, itemCopy, v11, v16)))
      {
        v30 = objc_loadWeakRetained(&self->_chat);
        v31 = sub_1A836B364(v30, itemCopy, previousItemCopy, v16);
        v32 = objc_loadWeakRetained(&self->_chat);
        v12 = v31 ^ sub_1A836B364(v32, itemCopy, v11, v16);
      }

      else
      {
        LOBYTE(v12) = 1;
      }
    }
  }

  return v12;
}

- (BOOL)_hasEarlierMessagesToLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasMoreMessagesToLoad = objc_msgSend_hasMoreMessagesToLoad(WeakRetained, v3, v4);

  return hasMoreMessagesToLoad;
}

- (BOOL)_hasRecentMessagesToLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasMoreRecentMessagesToLoad = objc_msgSend_hasMoreRecentMessagesToLoad(WeakRetained, v3, v4);

  return hasMoreRecentMessagesToLoad;
}

- (BOOL)_shouldAppendReplyContextForItem:(id)item previousItem:(id)previousItem chatStyle:(unsigned __int8)style
{
  itemCopy = item;
  previousItemCopy = previousItem;
  v8 = itemCopy;
  v9 = previousItemCopy;
  if (objc_msgSend_isReply(v8, v10, v11) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (!_IMScheduledMessageShouldBePinnedToBottom(v8) || _IMScheduledMessageShouldBePinnedToBottom(v9)))
    {
      v14 = objc_msgSend_threadIdentifier(v8, v12, v13);
      v15 = IMMessageThreadIdentifierGetOriginatorGUID();
      v18 = objc_msgSend_message(v9, v16, v17);
      v21 = objc_msgSend_guid(v18, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v21, v22, v15);

      if (isEqualToString)
      {
        if (sub_1A836B760(v9))
        {
          LOBYTE(OriginatorMessagePart) = 1;
        }

        else
        {
          OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart();
          v43 = 0;
          v44 = &v43;
          v45 = 0x2020000000;
          v46 = 0;
          v36 = objc_msgSend_text(v18, v34, v35);
          v39 = objc_msgSend_length(v36, v37, v38);
          v40 = *MEMORY[0x1E69A5FD8];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = sub_1A836C0F8;
          v42[3] = &unk_1E7813780;
          v42[4] = &v43;
          objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v36, v41, v40, 0, v39, 2, v42);
          LOBYTE(OriginatorMessagePart) = v44[3] != OriginatorMessagePart;

          _Block_object_dispose(&v43, 8);
        }

        goto LABEL_19;
      }

      if (objc_msgSend_isReply(v9, v24, v25))
      {
        v30 = objc_msgSend_threadIdentifier(v9, v28, v29);
        v32 = objc_msgSend_isEqualToString_(v30, v31, v14);

        v33 = sub_1A836B760(v9);
        if (v32 && !v33)
        {
          LOBYTE(OriginatorMessagePart) = 0;
LABEL_19:

          goto LABEL_10;
        }
      }

      else
      {
        sub_1A836B760(v9);
      }

      LODWORD(OriginatorMessagePart) = !sub_1A836B760(v8);
      goto LABEL_19;
    }

    LOBYTE(OriginatorMessagePart) = 1;
  }

  else
  {
    LOBYTE(OriginatorMessagePart) = 0;
  }

LABEL_10:

  return OriginatorMessagePart;
}

- (BOOL)_shouldAppendScheduledSectionLabelForItem:(id)item previousItem:(id)previousItem
{
  previousItemCopy = previousItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = previousItemCopy;
    if (objc_msgSend_scheduleType(v5, v6, v7) == 2)
    {
      v10 = objc_msgSend_scheduleState(v5, v8, v9);
      if (v10 <= 5)
      {
        v11 = 9u >> v10;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)_shouldAppendScheduledSectionDateForItem:(id)item previousItem:(id)previousItem
{
  itemCopy = item;
  previousItemCopy = previousItem;
  v7 = itemCopy;
  v8 = previousItemCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (objc_msgSend_changeType(v7, v9, v10))
  {
    goto LABEL_5;
  }

  v13 = objc_msgSend__senderHandle(v7, v11, v12);
  v16 = objc_msgSend_ID(v13, v14, v15);

  v19 = objc_msgSend__otherHandle(v7, v17, v18);
  v22 = objc_msgSend_ID(v19, v20, v21);

  LOBYTE(v19) = objc_msgSend_isEqualToString_(v16, v23, v22);
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v25 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_scheduleType(v25, v26, v27) != 2)
    {
      v24 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v30 = objc_msgSend_scheduleState(v25, v28, v29);
    v24 = 0;
    if (!v30 || v30 == 3)
    {
      goto LABEL_16;
    }

    v33 = objc_msgSend_time(v25, v31, v32);
    v36 = objc_msgSend_time(v8, v34, v35);
    objc_msgSend_timeIntervalSinceDate_(v33, v37, v36);
    v39 = fabs(v38) >= 300.0;

    v40 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_scheduleType(v40, v41, v42) == 2)
    {
      v45 = objc_msgSend_scheduleState(v40, v43, v44);
      if ((v45 - 4) >= 2)
      {
        v24 = 1;
        if (!v45 || v45 == 3)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v49 = objc_msgSend_scheduleState(v25, v46, v47);
      if (v49 == objc_msgSend_scheduleState(v40, v50, v51))
      {
LABEL_19:
        v24 = v39;
LABEL_21:

        goto LABEL_16;
      }
    }

    v24 = 1;
    goto LABEL_21;
  }

  v24 = 0;
LABEL_17:

  return v24;
}

- (BOOL)_shouldAppendStewieSharingSummaryForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  result = objc_msgSend_isStewieSharingChat(chat, a2, chat, item);
  if (previousItem)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldAppendStoppedSharingForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  itemCopy = item;
  if (objc_msgSend_isStewieSharingChat(chat, v7, v8))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldShowReportSpamForChat:(id)chat withItems:(id)items
{
  v5 = MEMORY[0x1E69A8070];
  itemsCopy = items;
  chatCopy = chat;
  v10 = objc_msgSend_sharedFeatureFlags(v5, v8, v9);
  objc_msgSend_isReportJunkEverywhereEnabled(v10, v11, v12);

  LOBYTE(v10) = sub_1A836C8D4(chatCopy, itemsCopy);
  return v10;
}

- (BOOL)_shouldShowChatDispositionForChat:(id)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldShowIntroductionsButtons = objc_msgSend_shouldShowIntroductionsButtons(WeakRetained, v4, v5);

  return shouldShowIntroductionsButtons;
}

- (BOOL)_shouldAppendSendViaSatelliteForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  chatCopy = chat;
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isPendingSatelliteSend(itemCopy, v8, v9))
  {
    v12 = objc_msgSend_message(itemCopy, v10, v11);
    v15 = objc_msgSend_lastPendingSatelliteSendMessage(chatCopy, v13, v14);
    v16 = v12 == v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_shouldAppendSentViaSatelliteForChat:(id)chat message:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  v9 = objc_msgSend__service(messageCopy, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x1E69A7AF8]);

  if (!isEqualToString)
  {
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_guid(messageCopy, v18, v19);
      v32 = 138412290;
      v33 = v20;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Checking if we should append sent via satellite for message: %@", &v32, 0xCu);
    }
  }

  if ((objc_msgSend_sentOrReceivedOffGrid(messageCopy, v15, v16) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Message was not sent off grid", &v32, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  if (objc_msgSend_isPendingSatelliteSend(messageCopy, v21, v22))
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Message is pending", &v32, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  isSent = objc_msgSend_isSent(messageCopy, v23, v24);
  v30 = IMOSLoggingEnabled();
  if ((isSent & 1) == 0)
  {
    if (!v30)
    {
      goto LABEL_16;
    }

    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Message is not sent yet", &v32, 2u);
    }

    goto LABEL_15;
  }

  if (v30)
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Appending sent via satellite for message", &v32, 2u);
    }
  }

  v26 = 1;
LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)_shouldShowHQButtonForMessage:(id)message
{
  messageCopy = message;
  v15 = 0;
  if (objc_msgSend_isFailedHQTransfer(messageCopy, v4, v5))
  {
    if (objc_msgSend_isDelivered(messageCopy, v6, v7))
    {
      v10 = objc_msgSend_time(messageCopy, v8, v9);
      objc_msgSend_timeIntervalSinceNow(v10, v11, v12);
      v14 = fabs(v13);

      if (v14 < 86400.0)
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (BOOL)_shouldShowStewieResumeButtonsForChat:(id)chat
{
  chatCopy = chat;
  if (objc_msgSend_isStewieEmergencyChat(chatCopy, v4, v5))
  {
    v8 = objc_msgSend_sharedInstance(IMChorosMonitor, v6, v7);
    isStewieEmergencyActive = objc_msgSend_isStewieEmergencyActive(v8, v9, v10);
  }

  else
  {
    if (!objc_msgSend_isStewieRoadsideChat(chatCopy, v6, v7))
    {
      v16 = 0;
      goto LABEL_7;
    }

    v8 = objc_msgSend_sharedInstance(IMChorosMonitor, v12, v13);
    isStewieEmergencyActive = objc_msgSend_isStewieRoadsideActive(v8, v14, v15);
  }

  v16 = isStewieEmergencyActive ^ 1;

LABEL_7:
  return v16;
}

- (BOOL)_shouldShowBlockContactForChat:(id)chat withItems:(id)items
{
  chatCopy = chat;
  itemsCopy = items;
  v7 = chatCopy;
  v8 = itemsCopy;
  v11 = objc_msgSend_sharedManager(MEMORY[0x1E69A7FC8], v9, v10);
  v14 = objc_msgSend_enablementGroup(v11, v12, v13);

  if (v14 == 1 && (objc_msgSend_allParticipantsBlocked(v7, v15, v16) & 1) == 0)
  {
    v19 = objc_msgSend___imArrayByFilteringWithBlock_(v8, v17, &unk_1F1B6F260);
    if (objc_msgSend_count(v19, v20, v21) && (objc_msgSend_chatStyle(v7, v22, v23) != 43 || objc_msgSend_joinState(v7, v24, v25)))
    {
      if (objc_msgSend_hasCommSafetySensitiveMessage(v7, v24, v25) && (objc_msgSend_isCommSafetySensitiveMessageRecent(v7, v26, v27) & 1) != 0)
      {
        v18 = 1;
LABEL_12:

        goto LABEL_13;
      }

      objc_msgSend_shouldBeAllowListed(v7, v26, v27);
    }

    v18 = 0;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (BOOL)_shouldAppendNumberChangedForItem:(id)item previousItem:(id)previousItem lastChatItem:(id)chatItem outPhoneNumber:(id *)number
{
  v92 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  previousItemCopy = previousItem;
  chatItemCopy = chatItem;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  isStewieChat = objc_msgSend_isStewieChat(WeakRetained, v14, v15);

  if ((isStewieChat & 1) != 0 || !objc_msgSend__hasMultipleActiveSubscriptions(self, v17, v18))
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v23 = objc_msgSend_destinationCallerID(previousItemCopy, v19, v20);
  numberCopy = number;
  if (v23)
  {
    v24 = MEMORY[0x1E69A51E8];
    v25 = objc_msgSend_destinationCallerID(itemCopy, v21, v22);
    v28 = objc_msgSend_destinationCallerID(previousItemCopy, v26, v27);
    if (objc_msgSend_isPhoneNumber_equivalentToExistingPhoneNumber_(v24, v29, v25, v28))
    {
      v32 = objc_msgSend_accountID(itemCopy, v30, v31);
      v35 = objc_msgSend_accountID(previousItemCopy, v33, v34);
      isEqualToString = objc_msgSend_isEqualToString_(v32, v36, v35);
    }

    else
    {
      isEqualToString = 0;
    }

    if ((isKindOfClass & 1) != 0 && (isEqualToString & 1) == 0)
    {
      v40 = objc_msgSend_destinationCallerID(previousItemCopy, v38, v39);
      objc_msgSend_setDestinationCallerID_(itemCopy, v41, v40);

      v44 = objc_msgSend_accountID(previousItemCopy, v42, v43);
      objc_msgSend_setAccountID_(itemCopy, v45, v44);
    }
  }

  v46 = objc_opt_class();
  if (v46 == objc_opt_class())
  {
    goto LABEL_20;
  }

  v47 = objc_opt_class();
  if (!((v47 != objc_opt_class()) | isKindOfClass & 1))
  {
    *numberCopy = objc_msgSend__currentChatSubscriptionLabel(self, v48, v49);
    if (!IMOSLoggingEnabled())
    {
LABEL_31:
      v70 = 1;
      goto LABEL_21;
    }

    v59 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v73 = *numberCopy;
      *buf = 138412290;
      v87 = v73;
      _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "Found a SIM switch item with label %@, replacing it with Number Changed item", buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  v52 = objc_msgSend_destinationCallerID(itemCopy, v48, v49);
  if (!v52)
  {
    goto LABEL_20;
  }

  v53 = objc_msgSend_destinationCallerID(itemCopy, v50, v51);
  IsPhoneNumber = objc_msgSend_destinationIdIsPhoneNumber(v53, v54, v55);

  if (!IsPhoneNumber)
  {
    goto LABEL_20;
  }

  v59 = objc_msgSend_destinationCallerID(itemCopy, v57, v58);
  v60 = MEMORY[0x1E69A51E8];
  v63 = objc_msgSend_destinationCallerID(previousItemCopy, v61, v62);
  LOBYTE(v60) = objc_msgSend_isPhoneNumber_equivalentToExistingPhoneNumber_(v60, v64, v59, v63);

  v67 = objc_msgSend_destinationCallerID(previousItemCopy, v65, v66);
  LOBYTE(v60) = (v67 == 0) | v60;

  if ((v60 & 1) == 0)
  {
    v74 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v68, v69);
    v77 = objc_msgSend_ctSubscriptionInfo(v74, v75, v76);
    *numberCopy = objc_msgSend___im_labelForPhoneNumber_simID_(v77, v78, v59, v59);

    if (IMOSLoggingEnabled())
    {
      v79 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v82 = objc_msgSend_destinationCallerID(previousItemCopy, v80, v81);
        v83 = *numberCopy;
        *buf = 138412802;
        v87 = v82;
        v88 = 2112;
        v89 = v59;
        v90 = 2112;
        v91 = v83;
        _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_INFO, "Destination caller ID changed from: %@ to: %@, label: %@", buf, 0x20u);
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  v70 = 0;
LABEL_21:

  v71 = *MEMORY[0x1E69E9840];
  return v70;
}

- (BOOL)_hasMultipleActiveSubscriptions
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], a2, v2);
  v6 = objc_msgSend_ctSubscriptionInfo(v3, v4, v5);

  if (v6)
  {
    HasActiveSlots = objc_msgSend___im_onlyHasActiveSlots(v6, v7, v8);
  }

  else
  {
    HasActiveSlots = 0;
  }

  return HasActiveSlots;
}

- (BOOL)_updateAggregateAttachmentMessagePartAssociatedItems:(id)items map:(id)map
{
  v42 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  mapCopy = map;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = itemsCopy;
    obj = objc_msgSend_aggregateAttachmentParts(itemsCopy, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v37, v41, 16);
    if (v12)
    {
      v13 = v12;
      v10 = 0;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = sub_1A836DD28(v16, mapCopy);
          if (v17)
          {
            v20 = v17;
            v21 = sub_1A836DFBC(v17);
          }

          else
          {
            v21 = 0;
          }

          v22 = objc_msgSend_visibleAssociatedMessageChatItems(v16, v18, v19);
          shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems = objc_msgSend__shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems_(self, v23, v21, v22);

          if (shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems)
          {
            if (v21)
            {
              objc_msgSend__setVisibleAssociatedMessageChatItems_(v16, v25, v21);
            }

            else
            {
              v27 = objc_msgSend_visibleAssociatedMessageChatItems(v16, v25, v26);
              v30 = objc_msgSend_count(v27, v28, v29);

              if (v30)
              {
                objc_msgSend__setVisibleAssociatedMessageChatItems_(v16, v31, 0);
              }
            }

            v10 = 1;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v37, v41, 16);
      }

      while (v13);
    }

    else
    {
      v10 = 0;
    }

    itemsCopy = v35;
  }

  else
  {
    v10 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (id)_newDeliveredChatItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v10 = objc_msgSend_objectAtIndex_(itemsCopy, v9, index - 1);
  v13 = objc_msgSend__item(v10, v11, v12);
  v16 = objc_msgSend_timeDelivered(v13, v14, v15);
  v19 = objc_msgSend_time(v13, v17, v18);
  v21 = objc_msgSend_laterDate_(v16, v20, v19);

  v22 = v13;
  v27 = objc_msgSend_expireState(v22, v23, v24);
  if (v27 == 1)
  {
    if ((objc_msgSend_isFromMe(v22, v25, v26) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v28 >= 3.0))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = [IMMessageStatusChatItem alloc];
  v32 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v30, v31, v22, type, v21, 0, v29, 0);
  v36 = objc_msgSend_chatItemForIMChatItem_(self, v33, v32);
  if (v27 == 1)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_count(itemsCopy, v34, v35) <= index || !v36)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v43 = 134218498;
          indexCopy = index;
          v45 = 2048;
          v46 = objc_msgSend_count(itemsCopy, v38, v39);
          v47 = 2112;
          v48 = v36;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "_processChatItems couldn't replace Delivered object at index %lu, chatItems count: %lu, item %@", &v43, 0x20u);
        }
      }
    }

    else
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(itemsCopy, v40, index, v36);

      v36 = 0;
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)_newiMessageLiteSentItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v10 = objc_msgSend_objectAtIndex_(itemsCopy, v9, index - 1);
  v13 = objc_msgSend__item(v10, v11, v12);
  v16 = objc_msgSend_timeDelivered(v13, v14, v15);
  v19 = objc_msgSend_time(v13, v17, v18);
  v21 = objc_msgSend_laterDate_(v16, v20, v19);

  v22 = v13;
  v27 = objc_msgSend_expireState(v22, v23, v24);
  if (v27 == 1)
  {
    if ((objc_msgSend_isFromMe(v22, v25, v26) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v28 >= 3.0))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = [IMMessageStatusChatItem alloc];
  v32 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v30, v31, v22, type, v21, 0, v29, 0);
  v36 = objc_msgSend_chatItemForIMChatItem_(self, v33, v32);
  if (v27 == 1)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_count(itemsCopy, v34, v35) <= index || !v36)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v43 = 134218498;
          indexCopy = index;
          v45 = 2048;
          v46 = objc_msgSend_count(itemsCopy, v38, v39);
          v47 = 2112;
          v48 = v36;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "_processChatItems couldn't replace Delivered object at index %lu, chatItems count: %lu, item %@", &v43, 0x20u);
        }
      }
    }

    else
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(itemsCopy, v40, index, v36);

      v36 = 0;
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_updateOrRemoveDeliveredStatusItemMovingFromOldIndex:(int64_t)index chatItems:(id)items
{
  v5 = objc_msgSend_objectAtIndex_(items, a2, index);
  v8 = objc_msgSend__item(v5, v6, v7);
  if (objc_msgSend_expireState(v8, v9, v10) == 1)
  {
    if ((objc_msgSend_isFromMe(v8, v11, v12) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v13 >= 3.0))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v17 = [IMMessageStatusChatItem alloc];
    v16 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v17, v18, v8, v14, 0, 0);
    v15 = objc_msgSend_chatItemForIMChatItem_(self, v19, v16);
  }

  else
  {

    v15 = 0;
    v16 = v8;
  }

  return v15;
}

- (id)_updateOrRemoveiMessageLiteSentItemMovingFromOldIndex:(int64_t)index chatItems:(id)items
{
  v5 = objc_msgSend_objectAtIndex_(items, a2, index);
  v8 = objc_msgSend__item(v5, v6, v7);
  if (objc_msgSend_expireState(v8, v9, v10) == 1)
  {
    if ((objc_msgSend_isFromMe(v8, v11, v12) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v13 >= 3.0))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v17 = [IMMessageStatusChatItem alloc];
    v16 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v17, v18, v8, v14, 0, 0);
    v15 = objc_msgSend_chatItemForIMChatItem_(self, v19, v16);
  }

  else
  {

    v15 = 0;
    v16 = v8;
  }

  return v15;
}

- (BOOL)_shouldAdjustNewDeliveredItemIndex:(int64_t)index chatItems:(id)items
{
  itemsCopy = items;
  v8 = itemsCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_count(itemsCopy, v6, v7) <= index)
  {
    isKindOfClass = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(v8, v9, index - 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_objectAtIndex_(v8, v11, index);

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = v12;
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (void)_processSuggestedActionResponses:(id)responses
{
  responsesCopy = responses;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259C30;
  v11 = sub_1A825AF44;
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8385318;
  v6[3] = &unk_1E78139A8;
  v6[4] = &v7;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(responsesCopy, v4, 2, v6);
  objc_msgSend_removeObjectsAtIndexes_(responsesCopy, v5, v8[5]);
  _Block_object_dispose(&v7, 8);
}

- (void)_processRCSEncryptionTestMessages:(id)messages
{
  messagesCopy = messages;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259C30;
  v11 = sub_1A825AF44;
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83854D8;
  v6[3] = &unk_1E78139A8;
  v6[4] = &v7;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(messagesCopy, v4, 2, v6);
  objc_msgSend_removeObjectsAtIndexes_(messagesCopy, v5, v8[5]);
  _Block_object_dispose(&v7, 8);
}

- (void)_processChatItemsForBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  objc_msgSend__fixBreadcrumbs_(self, v4, breadcrumbsCopy);
  objc_msgSend__filterBreadcrumbs_(self, v5, breadcrumbsCopy);
  objc_msgSend__handleTemporaryBreadcrumbs_(self, v6, breadcrumbsCopy);
}

- (void)_fixBreadcrumbs:(id)breadcrumbs
{
  v38 = *MEMORY[0x1E69E9840];
  breadcrumbsCopy = breadcrumbs;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_1A8259C30;
  v35[4] = sub_1A825AF44;
  v36 = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1A8259C30;
  v33 = sub_1A825AF44;
  v34 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A8385890;
  v28[3] = &unk_1E78139D0;
  v28[4] = v35;
  v28[5] = &v29;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(breadcrumbsCopy, v8, 2, v28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = objc_msgSend_allKeys(v30[5], v9, v10, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v37, 16);
  if (v15)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = objc_msgSend_unsignedIntegerValue(v18, v13, v14);
        v21 = objc_msgSend_objectForKey_(v30[5], v20, v18);
        objc_msgSend_replaceObjectAtIndex_withObject_(breadcrumbsCopy, v22, v19, v21);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v37, 16);
    }

    while (v15);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_filterBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8259C30;
  v19 = sub_1A825AF44;
  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1A8259C30;
  v13[4] = sub_1A825AF44;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1A8259C30;
  v11[4] = sub_1A825AF44;
  v12 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8385C6C;
  v9[3] = &unk_1E78139F8;
  v9[6] = &v15;
  v9[7] = v13;
  v9[8] = v10;
  v9[4] = self;
  v9[5] = v11;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(breadcrumbsCopy, v7, 2, v9);
  objc_msgSend_removeObjectsAtIndexes_(breadcrumbsCopy, v8, v16[5]);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
}

- (void)_handleTemporaryBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259C30;
  v11 = sub_1A825AF44;
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8385F80;
  v6[3] = &unk_1E78139A8;
  v6[4] = &v7;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(breadcrumbsCopy, v4, 2, v6);
  objc_msgSend_removeObjectsAtIndexes_(breadcrumbsCopy, v5, v8[5]);
  _Block_object_dispose(&v7, 8);
}

- (void)_moveCustomAcknowledgementsForBreadcrumbs:(id)breadcrumbs visibleAssociatedMessageMap:(id)map
{
  v85 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v7 = objc_msgSend___imArrayByFilteringWithBlock_(breadcrumbs, v6, &unk_1F1B6F180);
  v66 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v8, v9);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v78, v84, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v79;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v79 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v78 + 1) + 8 * i);
        v18 = objc_msgSend_dataSource(v17, v12, v13);
        isShowingLatestMessageAsBreadcrumb = objc_msgSend_isShowingLatestMessageAsBreadcrumb(v18, v19, v20);

        if ((isShowingLatestMessageAsBreadcrumb & 1) == 0)
        {
          v22 = objc_msgSend__item(v17, v12, v13);
          v25 = objc_msgSend_guid(v22, v23, v24);

          v28 = objc_msgSend_dataSource(v17, v26, v27);
          v31 = objc_msgSend_guidOfLastMessageInSession(v28, v29, v30);

          if (v31)
          {
            v33 = v25 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (!v33 && (objc_msgSend_isEqualToString_(v25, v32, v31) & 1) == 0)
          {
            objc_msgSend_setObject_forKey_(v66, v34, v31, v25);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v78, v84, 16);
    }

    while (v14);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v67 = objc_msgSend_allKeys(v66, v35, v36);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v37, &v74, v83, 16);
  if (v38)
  {
    v40 = v38;
    v41 = *v75;
    v64 = *v75;
    do
    {
      v42 = 0;
      v65 = v40;
      do
      {
        if (*v75 != v41)
        {
          objc_enumerationMutation(v67);
        }

        v43 = *(*(&v74 + 1) + 8 * v42);
        v44 = objc_msgSend_objectsForKey_(mapCopy, v39, v43, v64);
        v47 = v44;
        if (v44 && objc_msgSend_count(v44, v45, v46))
        {
          objc_msgSend_removeObjectsForKey_(mapCopy, v48, v43);
          v50 = objc_msgSend_objectForKey_(v66, v49, v43);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v69 = v47;
          v51 = v47;
          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v70, v82, 16);
          if (v53)
          {
            v54 = v53;
            v55 = *v71;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v71 != v55)
                {
                  objc_enumerationMutation(v51);
                }

                v57 = *(*(&v70 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = objc_msgSend__item(v57, v58, v59);
                  objc_msgSend_setAssociatedMessageGUID_(v60, v61, v50);
                }

                objc_msgSend_pushObject_forKey_(mapCopy, v58, v57, v50);
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v62, &v70, v82, 16);
            }

            while (v54);
          }

          v41 = v64;
          v40 = v65;
          v47 = v69;
        }

        ++v42;
      }

      while (v42 != v40);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v39, &v74, v83, 16);
    }

    while (v40);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)_manageMomentShareAndAggregateItemsForChatItems:(id)items
{
  *(&v172[1] + 4) = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_msgSend_sharedInstance(IMPhotoLibraryPersistenceManager, v5, v6);
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  objc_msgSend_unregisterPhotoLibraryPersistenceManagerListener_(v7, v9, WeakRetained);

  v12 = objc_msgSend_count(itemsCopy, v10, v11);
  if (v12 >= 1)
  {
    v14 = v12;
    v15 = 0x1E780D000uLL;
    v165 = itemsCopy;
    while (1)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(itemsCopy, v13, v14 - 1);
      v17 = *(v15 + 2856);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v21 = v14 - 1;
      if (v14 == 1 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v22 = objc_msgSend_objectAtIndexedSubscript_(itemsCopy, v19, v14 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_msgSend_removeObjectAtIndex_(itemsCopy, v23, v14 - 1);
LABEL_63:

LABEL_64:
      v14 = v21;
      if ((v21 + 1) <= 1)
      {
        goto LABEL_65;
      }
    }

LABEL_7:
    isReplyContextPreview = objc_msgSend_isReplyContextPreview(v16, v19, v20);
    isEditedMessageHistory = objc_msgSend_isEditedMessageHistory(v16, v25, v26);
    if (isReplyContextPreview & 1) != 0 || (isEditedMessageHistory)
    {
      goto LABEL_64;
    }

    v28 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = objc_msgSend_message(v28, v29, v30);
      v34 = IMCoreMomentShareURLForMessage(v31);
      if (v34 && (objc_msgSend_isSenderUnknown(v31, v32, v33) & 1) == 0)
      {
        v37 = objc_msgSend_absoluteString(v34, v35, v36);
        v39 = v37;

        v38 = 1;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v40 = v37;
    v22 = v40;
    if (!v38)
    {
      objc_opt_class();
      v15 = 0x1E780D000;
      if (objc_opt_isKindOfClass())
      {
        v60 = objc_msgSend_aggregateAttachmentParts(v28, v58, v59);
        v63 = objc_msgSend_count(v60, v61, v62);
        v66 = objc_msgSend__attachmentStackAggregationThreshold(IMMessagePartChatItem, v64, v65);

        if (v63 > v66)
        {
          v69 = objc_msgSend_sharedInstance(IMPhotoLibraryPersistenceManager, v67, v68);
          v70 = objc_loadWeakRetained(&selfCopy->_chat);
          objc_msgSend_registerPhotoLibraryPersistenceManagerListener_(v69, v71, v70);

          v169 = 0;
          v170 = 0;
          v168 = 0;
          sub_1A8386E3C(v28, &v170, &v169, &v168);
          sub_1A8386CF4(itemsCopy, v28, v21, v170, v169, v168);
        }
      }

      goto LABEL_63;
    }

    v155 = v40;
    if (objc_msgSend_length(v40, v41, v42))
    {
      v43 = objc_loadWeakRetained(&selfCopy->_chat);
      v46 = objc_msgSend_momentShareCache(v43, v44, v45);
      v167 = 0;
      v48 = objc_msgSend_momentShareForURLString_error_(v46, v47, v22, &v167);
      v49 = v167;

      if (v48)
      {
        v158 = v49;
        v50 = objc_loadWeakRetained(&selfCopy->_chat);
        v53 = objc_msgSend_momentSharePresentationCache(v50, v51, v52);
        v55 = objc_msgSend_statusPresentationForMomentShareURLString_(v53, v54, v22);

        v56 = 0;
        IsPermanent = 0;
        goto LABEL_29;
      }

      v72 = IMLogHandleForCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2294(v171, v49, v172, v72);
      }
    }

    else
    {
      v49 = 0;
    }

    v158 = v49;
    IsPermanent = IMMomentShareCacheErrorIsPermanent(v49);
    v48 = 0;
    v55 = 0;
    v56 = 1;
LABEL_29:
    v73 = v28;
    v74 = v48;
    v75 = v55;
    v78 = v75;
    v169 = 0;
    v170 = 0;
    v168 = 0;
    if (v56)
    {
      if (IsPermanent)
      {
        objc_opt_class();
        v22 = v155;
        if (objc_opt_isKindOfClass())
        {
          sub_1A8386E3C(v73, &v170, &v169, &v168);
          v79 = 0;
          v80 = 0;
          v152 = 0;
          v160 = v169;
          v153 = v168;
          v154 = v170;
        }

        else
        {
          v153 = 0;
          v154 = 0;
          v160 = 0;
          v79 = 0;
          v80 = 0;
          v152 = 0;
        }

LABEL_38:
        v93 = v79;
        v94 = v80;

        v156 = v78;
        v157 = v74;

        v95 = v79;
        v96 = v80;
        v97 = v165;
        v98 = v73;
        v99 = v95;
        v166 = v96;
        v163 = objc_msgSend__item(v98, v100, v101);
        if (v14 >= objc_msgSend_count(v97, v102, v103))
        {
          v105 = 0;
          itemsCopy = v165;
          v106 = v160;
        }

        else
        {
          v105 = objc_msgSend_objectAtIndexedSubscript_(v97, v104, v14);
          v106 = v160;
          if (v105)
          {
            objc_opt_class();
            itemsCopy = v165;
            if (objc_opt_isKindOfClass())
            {
              if (objc_msgSend_wouldBeEqualIfInitializedWithItem_activityTitle_expirationDate_(v105, v107, v163, v99, v166))
              {
                v108 = v154;
                v106 = v160;
LABEL_58:

                v164 = v97;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v135 = v98;
                  objc_msgSend_setNumberOfMomentShareSavedAssets_(v135, v136, v153);
                  objc_msgSend_setNumberOfMomentSharePhotos_(v135, v137, v108);
                  objc_msgSend_setNumberOfMomentShareVideos_(v135, v138, v106);
                }

                v15 = 0x1E780D000;
                if (v108 + v106 > objc_msgSend__attachmentStackAggregationThreshold(IMMessagePartChatItem, v133, v134) || v152)
                {
                  v141 = objc_msgSend_sharedInstance(IMPhotoLibraryPersistenceManager, v139, v140);
                  v162 = v99;
                  v142 = v106;
                  v143 = v108;
                  v144 = objc_loadWeakRetained(&selfCopy->_chat);
                  objc_msgSend_registerPhotoLibraryPersistenceManagerListener_(v141, v145, v144);

                  v146 = v142;
                  v99 = v162;
                  itemsCopy = v165;
                  sub_1A8386CF4(v164, v98, v21, v143, v146, v153);
                }

                goto LABEL_63;
              }

              v122 = [IMMomentShareStatusChatItem alloc];
              v151 = objc_msgSend__initWithItem_activityTitle_expirationDate_(v122, v123, v163, v99, v166);
              objc_msgSend_replaceObjectAtIndex_withObject_(v97, v124, v14);
              v106 = v160;
              goto LABEL_56;
            }
          }

          else
          {
            itemsCopy = v165;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_57:
          v108 = v154;
          goto LABEL_58;
        }

        v109 = v98;
        v161 = v97;
        v110 = v109;
        objc_opt_class();
        v151 = v110;
        v113 = v163;
        if ((objc_opt_isKindOfClass() & 1) != 0 && v14 < objc_msgSend_count(v161, v111, v112))
        {
          v115 = objc_msgSend_objectAtIndexedSubscript_(v161, v114, v14);
          objc_opt_class();
          v150 = v115;
          if (objc_opt_isKindOfClass())
          {
            v148 = objc_msgSend_layoutGroupIdentifier(v115, v116, v117);
            v120 = objc_msgSend_layoutGroupIdentifier(v151, v118, v119);
            isEqualToString = objc_msgSend_isEqualToString_(v148, v121, v120);

            v113 = v163;
            if (isEqualToString)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          v113 = v163;
        }

LABEL_55:
        v125 = [IMMomentShareStatusChatItem alloc];
        v127 = objc_msgSend__initWithItem_activityTitle_expirationDate_(v125, v126, v113, v99, v166);
        v128 = v106;
        v129 = v98;
        v130 = v97;
        v131 = v127;
        objc_msgSend_insertObject_atIndex_(v161, v132, v127, v14);

        v97 = v130;
        v98 = v129;
        v106 = v128;
LABEL_56:

        itemsCopy = v165;
        goto LABEL_57;
      }

      v153 = 0;
      v154 = 0;
      v160 = 0;
      v79 = 0;
      v80 = 0;
    }

    else
    {
      v79 = objc_msgSend_activityTitle(v75, v76, v77);
      v80 = objc_msgSend_expiryDate(v74, v81, v82);
      v154 = objc_msgSend_photosCount(v74, v83, v84);
      v160 = objc_msgSend_videosCount(v74, v85, v86);
      v153 = objc_msgSend_numberOfAssetsCopied(v78, v87, v88);
      if (objc_msgSend_type(v78, v89, v90) == 1)
      {
        v152 = objc_msgSend_state(v78, v91, v92) == 2;
LABEL_37:
        v22 = v155;
        goto LABEL_38;
      }
    }

    v152 = 0;
    goto LABEL_37;
  }

LABEL_65:

  v147 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldDisplayAttributionInfo:(id)info
{
  infoCopy = info;
  v5 = objc_msgSend_objectForKey_(infoCopy, v4, *MEMORY[0x1E69A6FA8]);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v9 = *MEMORY[0x1E69A6FB0];
    v10 = objc_msgSend_objectForKey_(infoCopy, v8, *MEMORY[0x1E69A6FB0]);
    if (objc_msgSend_length(v10, v11, v12))
    {
      v15 = objc_msgSend_sharedInstance(IMBalloonPluginAttributionController, v13, v14);
      v17 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v16, v9);
      shouldShowAttributionForBundleID = objc_msgSend_shouldShowAttributionForBundleID_(v15, v18, v17);
    }

    else
    {
      shouldShowAttributionForBundleID = 0;
    }
  }

  else
  {
    shouldShowAttributionForBundleID = 0;
  }

  return shouldShowAttributionForBundleID;
}

- (id)_editedStatusItemForEditedMessagePartChatItem:(id)item combiningStatusType:(int64_t)type
{
  itemCopy = item;
  v9 = objc_msgSend__item(itemCopy, v7, v8);
  isFailedEditMessagePart = objc_msgSend_isFailedEditMessagePart(itemCopy, v10, v11);
  isFailedRetractMessagePart = objc_msgSend_isFailedRetractMessagePart(itemCopy, v13, v14);
  isFailedHQTransfer = objc_msgSend_isFailedHQTransfer(v9, v16, v17);
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v22 = objc_msgSend_guid(itemCopy, v20, v21);
  isShowingEditHistoryForChatItemGUID = objc_msgSend_isShowingEditHistoryForChatItemGUID_(WeakRetained, v23, v22);

  v27 = objc_msgSend_scheduleType(itemCopy, v25, v26);
  if (v27 == 2)
  {
    if (((isFailedEditMessagePart | isFailedRetractMessagePart) & 1) == 0)
    {
      v30 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    isFailedRetractMessagePart = 0;
  }

  if (type > 0x28)
  {
LABEL_29:
    v36 = 22;
    if (isFailedRetractMessagePart)
    {
      v36 = 36;
    }

    if (isShowingEditHistoryForChatItemGUID)
    {
      v36 = 25;
    }

    if (isFailedEditMessagePart)
    {
      v33 = 28;
    }

    else
    {
      v33 = v36;
    }

    v34 = 0;
    goto LABEL_37;
  }

  if (((1 << type) & 0xC3C9000802) != 0)
  {
    v31 = isFailedEditMessagePart | isShowingEditHistoryForChatItemGUID;
    v32 = 24;
    if (isShowingEditHistoryForChatItemGUID)
    {
      v32 = 27;
    }

    if (isFailedEditMessagePart)
    {
      v33 = 30;
    }

    else
    {
      v33 = v32;
    }

    if (v31 & 1) != 0 || ((isFailedHQTransfer ^ 1))
    {
      goto LABEL_38;
    }

    v34 = 0;
    v33 = 11;
    goto LABEL_37;
  }

  if (((1 << type) & 0x10024800010) == 0)
  {
    if (type == 2)
    {
      v35 = 31;
      if (isShowingEditHistoryForChatItemGUID)
      {
        v35 = 32;
      }

      if (isFailedEditMessagePart)
      {
        v33 = 33;
      }

      else
      {
        v33 = v35;
      }

      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (isFailedEditMessagePart)
  {
    v33 = 29;
LABEL_39:
    v37 = objc_msgSend_timeRead(v9, v28, v29);
    goto LABEL_40;
  }

  v34 = isShowingEditHistoryForChatItemGUID ^ 1;
  if (isShowingEditHistoryForChatItemGUID)
  {
    v33 = 26;
  }

  else
  {
    v33 = 23;
  }

  if (isShowingEditHistoryForChatItemGUID)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (v34)
  {
    goto LABEL_39;
  }

LABEL_38:
  v37 = objc_msgSend_timeDelivered(v9, v28, v29);
LABEL_40:
  v40 = v37;
  v41 = objc_msgSend_time(v9, v38, v39);
  v43 = objc_msgSend_laterDate_(v40, v42, v41);

  v44 = v9;
  if (objc_msgSend_expireState(v44, v45, v46) == 1)
  {
    if ((objc_msgSend_isFromMe(v44, v47, v48) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v49 >= 3.0))
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = [IMMessageStatusChatItem alloc];
  v53 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v51, v52, v44, v33, v43, 0, v50, 0);
  v30 = objc_msgSend_chatItemForIMChatItem_(self, v54, v53);

LABEL_47:

  return v30;
}

- (id)_addChoiceStatusItemForPollMessagePartChatItem:(id)item combiningStatusType:(int64_t)type
{
  v6 = objc_msgSend__item(item, a2, item);
  v9 = v6;
  if ((type - 1) >= 2)
  {
    if (type == 4)
    {
      v13 = objc_msgSend_timeRead(v6, v7, v8);
      v10 = 40;
    }

    else
    {
      v13 = objc_msgSend_timeDelivered(v6, v7, v8);
      v10 = 37;
    }
  }

  else
  {
    if (type == 2)
    {
      v10 = 39;
    }

    else
    {
      v10 = 38;
    }

    v13 = objc_msgSend_timeDelivered(v6, v7, v8);
  }

  v14 = objc_msgSend_time(v9, v11, v12);
  v16 = objc_msgSend_laterDate_(v13, v15, v14);

  v17 = v9;
  if (objc_msgSend_expireState(v17, v18, v19) == 1)
  {
    if ((objc_msgSend_isFromMe(v17, v20, v21) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v22 >= 3.0))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = [IMMessageStatusChatItem alloc];
  v26 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v24, v25, v17, v10, v16, 0, v23, 0);
  v28 = objc_msgSend_chatItemForIMChatItem_(self, v27, v26);

  return v28;
}

- (id)_attributionChatItemForChatItem:(id)item
{
  v156 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  v127 = itemCopy;
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_isReplyContextPreview(itemCopy, v4, v5) & 1) != 0 || (objc_msgSend_isEditedMessageHistory(itemCopy, v6, v7))
  {
    v8 = 0;
    goto LABEL_5;
  }

  v126 = itemCopy;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  v130 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
  v15 = objc_msgSend_sharedManager(MEMORY[0x1E69A7FC8], v13, v14);
  isFeatureEnabled = objc_msgSend_isFeatureEnabled(v15, v16, v17);

  v21 = objc_msgSend_visibleAssociatedMessageChatItems(v126, v19, v20);
  v24 = objc_msgSend_count(v21, v22, v23) == 0;

  if (v24)
  {
    v131 = 0;
    v128 = 0;
    goto LABEL_38;
  }

  objc_msgSend__visibleAssociatedChatItemsByFlatteningAggregateChatItems(v126, v25, v26);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v27 = v141 = 0u;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v140, v155, 16);
  if (!v31)
  {
    v131 = 0;
    v128 = 0;
    goto LABEL_37;
  }

  v131 = 0;
  v128 = 0;
  v32 = *v141;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v141 != v32)
      {
        objc_enumerationMutation(v27);
      }

      v34 = *(*(&v140 + 1) + 8 * i);
      v35 = objc_msgSend_associatedMessageType(v34, v29, v30);
      if (isFeatureEnabled)
      {
        v36 = v35;
        if ((objc_msgSend_isFromMe(v34, v29, v30) & 1) == 0 && (v36 == 2007 || v36 == 1000))
        {
          v37 = objc_msgSend_commSafetyTransferGUID(v34, v29, v30);
          v39 = objc_msgSend_transferForGUID_(v130, v38, v37);
          v42 = objc_msgSend_attributionInfo(v39, v40, v41);
          if (objc_msgSend_commSafetySensitive(v39, v43, v44) == 1)
          {
            v47 = v145 + 3;
            v48 = 8;
            if (*(v145 + 24))
            {
              v48 = 9;
            }

            v149[3] = v48;
LABEL_24:
            *v47 = 1;
          }

          else if (objc_msgSend_commSafetySensitive(v39, v45, v46) == 2)
          {
            v149[3] = 11;
            v47 = v145 + 3;
            goto LABEL_24;
          }

          if (v131)
          {
            v49 = objc_msgSend_time(v34, v45, v46);
            v50 = v49 < v131;
          }

          else
          {
            v50 = 0;
          }

          if ((v145[3] & 1) == 0 && !(v50 | ((objc_msgSend__shouldDisplayAttributionInfo_(self, v45, v42) & 1) == 0)))
          {
            v51 = v42;

            v149[3] = 4;
            v54 = objc_msgSend_time(v34, v52, v53);

            v131 = v54;
            v128 = v51;
          }

          continue;
        }
      }
    }

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v140, v155, 16);
  }

  while (v31);
LABEL_37:

LABEL_38:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v58 = v149[3];
  if (((v58 == 0) & isFeatureEnabled & isKindOfClass) == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8387F0C;
    aBlock[3] = &unk_1E7813A20;
    v139 = v130;
    v59 = _Block_copy(aBlock);
    v60 = v126;
    v63 = objc_msgSend_text(v60, v61, v62);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = sub_1A8387F18;
    v136[3] = &unk_1E7813A48;
    v137 = isFeatureEnabled;
    v136[4] = &v144;
    v136[5] = &v148;
    objc_msgSend___im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider_block_(v63, v64, v59, v136);

    v58 = v149[3];
  }

  if (!v58)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = v126;
      v68 = objc_msgSend_type(v65, v66, v67);
      v70 = objc_msgSend_containsString_(v68, v69, *MEMORY[0x1E69A6A08]);

      if ((v70 & 1) == 0 && !v149[3] && (objc_msgSend_isFromMe(v65, v71, v72) & 1) == 0)
      {
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v75 = objc_msgSend__item(v65, v73, v74);
        v78 = objc_msgSend_fileTransferGUIDs(v75, v76, v77);

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &v132, v154, 16);
        if (v82)
        {
          v83 = *v133;
          while (2)
          {
            for (j = 0; j != v82; ++j)
            {
              if (*v133 != v83)
              {
                objc_enumerationMutation(v78);
              }

              v85 = *(*(&v132 + 1) + 8 * j);
              v86 = objc_msgSend_sharedInstance(IMFileTransferCenter, v80, v81);
              v88 = objc_msgSend_transferForGUID_(v86, v87, v85);
              v91 = objc_msgSend_attributionInfo(v88, v89, v90);

              if (objc_msgSend__shouldDisplayAttributionInfo_(self, v92, v91))
              {

                v105 = 1;
                goto LABEL_61;
              }
            }

            v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v80, &v132, v154, 16);
            if (v82)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isFromMe(v126, v56, v57) & 1) == 0)
    {
      v93 = objc_msgSend_sharedInstance(IMFileTransferCenter, v56, v57);
      v96 = objc_msgSend_transferGUID(v126, v94, v95);
      v65 = objc_msgSend_transferForGUID_(v93, v97, v96);

      v78 = objc_msgSend_attributionInfo(v65, v98, v99);
      if (objc_msgSend__shouldDisplayAttributionInfo_(self, v100, v78))
      {
        v78 = v78;

        v102 = objc_msgSend_objectForKey_(v78, v101, *MEMORY[0x1E69A6FB0]);
        v104 = objc_msgSend_containsString_(v102, v103, *MEMORY[0x1E69A6A20]);

        v105 = 2;
        if (!v104)
        {
          v105 = 3;
        }

        v91 = v78;
LABEL_61:
        v149[3] = v105;
        v128 = v91;
      }

LABEL_62:

LABEL_63:
    }
  }

  v106 = v149;
  if (!v149[3])
  {
    if (objc_msgSend_requiresSiriAttribution(v126, v56, v57))
    {
      v106 = v149;
      v109 = 6;
      goto LABEL_69;
    }

    if (objc_msgSend_requiresFaceTimeAttribution(v126, v107, v108))
    {
      v106 = v149;
      v109 = 7;
LABEL_69:
      v106[3] = v109;
    }

    else
    {
      v117 = objc_msgSend_requiresCriticalMessagingAPIAttribution(v126, v110, v111);
      v106 = v149;
      if (v117)
      {
        v149[3] = 10;
        v152 = *MEMORY[0x1E69A6FA8];
        v120 = objc_msgSend_messageItem(v126, v118, v119);
        v123 = objc_msgSend_criticalMessagingAppName(v120, v121, v122);
        v153 = v123;
        v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v124, &v153, &v152, 1);

        v106 = v149;
        v128 = v125;
      }
    }
  }

  if (v106[3])
  {
    v112 = [IMMessageAttributionChatItem alloc];
    v115 = objc_msgSend__item(v126, v113, v114);
    v8 = objc_msgSend__initWithItem_attributionInfo_attributionType_showsLearnMoreLink_statusItemSequenceNumber_(v112, v116, v115, v128, v149[3], 0, 0);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(&v148, 8);

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_effectControlForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend__item(itemCopy, v5, v6);
    v10 = objc_msgSend_expressiveSendStyleID(v7, v8, v9);
    if (objc_msgSend__shouldShowEffectPlayButtonForMessage_(self, v11, v7))
    {
      v12 = [IMMessageEffectControlChatItem alloc];
      v14 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v12, v13, v7, v10, 0);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_processChatItemsForIsShowingEditHistory:(id)history
{
  historyCopy = history;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259C30;
  v30 = sub_1A825AF44;
  v31 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259C30;
  v24 = sub_1A825AF44;
  v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A8388220;
  v19[3] = &unk_1E7813A70;
  v19[4] = self;
  v19[5] = &v26;
  v19[6] = &v20;
  objc_msgSend_enumerateObjectsUsingBlock_(historyCopy, v9, v19);
  if (objc_msgSend_count(v27[5], v10, v11))
  {
    v14 = objc_msgSend_copy(v27[5], v12, v13);
    v17 = objc_msgSend_copy(v21[5], v15, v16);
    objc_msgSend_replaceObjectsAtIndexes_withObjects_(historyCopy, v18, v14, v17);
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

- (void)_processChatItemsForShowTranslationAlternateText:(id)text
{
  textCopy = text;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259C30;
  v30 = sub_1A825AF44;
  v31 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259C30;
  v24 = sub_1A825AF44;
  v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A83884FC;
  v19[3] = &unk_1E7813A70;
  v19[4] = self;
  v19[5] = &v26;
  v19[6] = &v20;
  objc_msgSend_enumerateObjectsUsingBlock_(textCopy, v9, v19);
  if (objc_msgSend_count(v27[5], v10, v11))
  {
    v14 = objc_msgSend_copy(v27[5], v12, v13);
    v17 = objc_msgSend_copy(v21[5], v15, v16);
    objc_msgSend_replaceObjectsAtIndexes_withObjects_(textCopy, v18, v14, v17);
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

- (void)_processChatItemsForEditedStatus:(id)status
{
  statusCopy = status;
  v50 = 0;
  v51[0] = &v50;
  v51[1] = 0x3032000000;
  v51[2] = sub_1A8259C30;
  v51[3] = sub_1A825AF44;
  v52 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v47 = 0;
  v48[0] = &v47;
  v48[1] = 0x3032000000;
  v48[2] = sub_1A8259C30;
  v48[3] = sub_1A825AF44;
  v49 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v44 = 0;
  v45[0] = &v44;
  v45[1] = 0x3032000000;
  v45[2] = sub_1A8259C30;
  v45[3] = sub_1A825AF44;
  v46 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10);
  v41 = 0;
  v42[0] = &v41;
  v42[1] = 0x3032000000;
  v42[2] = sub_1A8259C30;
  v42[3] = sub_1A825AF44;
  v43 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = sub_1A83889A8;
  v34 = &unk_1E7813A98;
  v13 = statusCopy;
  v35 = v13;
  selfCopy = self;
  v37 = &v44;
  v38 = &v41;
  v39 = &v50;
  v40 = &v47;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, &v31);
  if (objc_msgSend_count(*(v45[0] + 40), v15, v16, v31, v32, v33, v34))
  {
    v19 = objc_msgSend_count(*(v45[0] + 40), v17, v18);
    if (v19 == objc_msgSend_count(*(v42[0] + 40), v20, v21))
    {
      objc_msgSend_replaceObjectsAtIndexes_withObjects_(v13, v22, *(v45[0] + 40), *(v42[0] + 40));
    }

    else
    {
      v23 = IMLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1A84E230C(v42, v45);
      }
    }
  }

  if (objc_msgSend_count(*(v51[0] + 40), v17, v18))
  {
    v26 = objc_msgSend_count(*(v51[0] + 40), v24, v25);
    if (v26 == objc_msgSend_count(*(v48[0] + 40), v27, v28))
    {
      objc_msgSend_insertObjects_atIndexes_(v13, v29, *(v48[0] + 40), *(v51[0] + 40));
    }

    else
    {
      v30 = IMLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1A84E2374(v48, v51);
      }
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v50, 8);
}

- (BOOL)isReadStatusItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_statusType(itemCopy, v5, v6);
    StatusType = objc_msgSend_isReadStatusType_(self, v8, v7);
  }

  else
  {
    StatusType = 0;
  }

  return StatusType;
}

- (BOOL)isDeliveredStatusItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_statusType(itemCopy, v5, v6);
    isDeliveredStatusType = objc_msgSend_isDeliveredStatusType_(self, v8, v7);
  }

  else
  {
    isDeliveredStatusType = 0;
  }

  return isDeliveredStatusType;
}

- (id)serviceForChatItems:(id)items
{
  itemsCopy = items;
  if (!objc_msgSend_count(itemsCopy, v5, v6))
  {
    goto LABEL_4;
  }

  v9 = objc_msgSend_lastObject(itemsCopy, v7, v8);
  v12 = objc_msgSend__item(v9, v10, v11);
  v15 = objc_msgSend_service(v12, v13, v14);
  v18 = objc_msgSend_length(v15, v16, v17);

  if (v18)
  {
    WeakRetained = objc_msgSend_lastObject(itemsCopy, v19, v20);
    v24 = objc_msgSend__item(WeakRetained, v22, v23);
    v27 = objc_msgSend_service(v24, v25, v26);
    v29 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v28, v27);
  }

  else
  {
LABEL_4:
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    v24 = objc_msgSend_account(WeakRetained, v30, v31);
    v29 = objc_msgSend_service(v24, v32, v33);
  }

  return v29;
}

- (void)_processChatItemsForReplayButton:(id)button
{
  buttonCopy = button;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1A8259C30;
  v35 = sub_1A825AF44;
  v36 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1A8259C30;
  v29 = sub_1A825AF44;
  v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A83890EC;
  v19[3] = &unk_1E7813AC0;
  v9 = buttonCopy;
  v20 = v9;
  selfCopy = self;
  v22 = &v37;
  v23 = &v25;
  v24 = &v31;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v19);
  v12 = v38[3];
  if (v12)
  {
    objc_msgSend_removeObjectAtIndex_(v9, v11, v12);
  }

  v13 = objc_msgSend_count(v32[5], v11, v12);
  if (v13 == objc_msgSend_count(v26[5], v14, v15) && objc_msgSend_count(v26[5], v16, v17))
  {
    objc_msgSend_insertObjects_atIndexes_(v9, v18, v26[5], v32[5]);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
}

- (void)_processChatItemsForMessageStatusSequenceNumber:(id)number
{
  numberCopy = number;
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8389398;
  v8[3] = &unk_1E7813AE8;
  v9 = v4;
  v10 = numberCopy;
  v5 = numberCopy;
  v6 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v7, v8);
}

- (int64_t)_lastItemIndexExcludingScheduledSection:(id)section
{
  sectionCopy = section;
  v6 = objc_msgSend_lastObject(sectionCopy, v4, v5);
  v9 = objc_msgSend__item(v6, v7, v8);

  objc_opt_class();
  v12 = (objc_opt_isKindOfClass() & 1) != 0 && _IMScheduledMessageShouldBePinnedToBottom(v9);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = objc_msgSend_count(sectionCopy, v10, v11);
  if (v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A83895D0;
    v17[3] = &unk_1E78139A8;
    v17[4] = &v18;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(sectionCopy, v13, 2, v17);
  }

  v14 = v19[3];
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (int64_t)_lastItemIndexExcludingWatchReplyOptions:(id)options
{
  v3 = objc_msgSend_count(options, a2, options);
  if (v3)
  {
    return v3 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)addChatItem:(id)item toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:(id)items
{
  itemsCopy = items;
  itemCopy = item;
  ItemIndexExcludingScheduledSection = objc_msgSend__lastItemIndexExcludingScheduledSection_(self, v7, itemsCopy);
  if (ItemIndexExcludingScheduledSection == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addObject_(itemsCopy, v9, itemCopy);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(itemsCopy, v9, itemCopy, ItemIndexExcludingScheduledSection + 1);
  }
}

- (void)_processChatItemsForKeyTransparencyStatus:(id)status
{
  statusCopy = status;
  v5 = objc_opt_class();
  v8 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1A83898D0;
  v31[3] = &unk_1E7813B10;
  v33 = v5;
  v9 = v8;
  v32 = v9;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(statusCopy, v10, 2, v31);
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v30 = 0;
  v13 = objc_msgSend_keyTransparencyStatusForAffectedHandles_(WeakRetained, v12, &v30);
  v14 = v30;

  if (v13 <= 0xB && ((1 << v13) & 0xA60) != 0)
  {
    v17 = [IMKeyTransparencyStatusChangedChatItem alloc];
    v18 = objc_loadWeakRetained(&self->_chat);
    isGroupChat = objc_msgSend_isGroupChat(v18, v19, v20);
    v23 = objc_msgSend__initWithHandles_status_isGroupChat_(v17, v22, v14, v13, isGroupChat);

    v25 = objc_msgSend_chatItemForIMChatItem_(self, v24, v23);
    if (objc_msgSend_count(v9, v26, v27))
    {
      objc_msgSend_removeObjectsAtIndexes_(statusCopy, v28, v9);
    }

    if (v25)
    {
      objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v28, v25, statusCopy);
    }
  }

  else if (objc_msgSend_count(v9, v15, v16))
  {
    objc_msgSend_removeObjectsAtIndexes_(statusCopy, v29, v9);
  }
}

- (void)_processChatItemsForExpandedEditedMessageHistory:(id)history
{
  historyCopy = history;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v6 = objc_opt_class();
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v7, v8);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A8389BB4;
  v32[3] = &unk_1E7813B10;
  v34 = v6;
  v10 = v9;
  v33 = v10;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(historyCopy, v11, 0, v32);
  objc_msgSend_removeObjectsAtIndexes_(historyCopy, v12, v10);
  if (objc_msgSend_isShowingEditHistoryForAnyChatItem(WeakRetained, v13, v14))
  {
    v15 = objc_opt_class();
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1A8389C10;
    v26[3] = &unk_1E7813B60;
    v30[1] = v15;
    v27 = WeakRetained;
    objc_copyWeak(v30, &location);
    v18 = v16;
    v28 = v18;
    v19 = v17;
    v29 = v19;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(historyCopy, v20, 0, v26);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A8389E88;
    v23[3] = &unk_1E7813BB0;
    v21 = v19;
    v24 = v21;
    v25 = historyCopy;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v18, v22, 2, v23);

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }
}

- (id)_historyToDisplayForMessageItem:(id)item partIndex:(int64_t)index
{
  v4 = objc_msgSend_historyForMessagePart_(item, a2, index);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    objc_msgSend_removeLastObject(v7, v10, v11);
  }

  v12 = objc_msgSend_copy(v7, v10, v11);

  return v12;
}

- (void)_processChatItemsForSatelliteAvailabilityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if ((IMGetDomainBoolForKey() & 1) != 0 || (v5 = objc_loadWeakRetained(&self->_chat), shouldDisplayOffGridModeStatus = objc_msgSend_shouldDisplayOffGridModeStatus(v5, v6, v7), v5, shouldDisplayOffGridModeStatus))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    v12 = objc_msgSend_chatStyle(WeakRetained, v10, v11);

    if (v12 == 45)
    {
      v15 = objc_msgSend___imLastMessageItem(indicatorCopy, v13, v14);
      if (objc_msgSend_isPendingSatelliteSend(v15, v16, v17))
      {
        shouldDisplayOffGridModeStatus = 0;
      }

      else
      {
        v20 = objc_msgSend_service(v15, v18, v19);
        v21 = MEMORY[0x1E69A7AF8];
        if (objc_msgSend_isEqualToString_(v20, v22, *MEMORY[0x1E69A7AF8]))
        {
          shouldDisplayOffGridModeStatus = 0;
        }

        else
        {
          v23 = objc_loadWeakRetained(&self->_chat);
          v26 = objc_msgSend_account(v23, v24, v25);
          v29 = objc_msgSend_service(v26, v27, v28);
          v32 = objc_msgSend_internalName(v29, v30, v31);
          shouldDisplayOffGridModeStatus = objc_msgSend_isEqualToString_(v32, v33, *v21) ^ 1;
        }
      }
    }

    else
    {
      shouldDisplayOffGridModeStatus = 0;
    }
  }

  v34 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1A838A18C;
  v36[3] = &unk_1E7813868;
  v36[4] = self;
  objc_msgSend__insertOrMoveChatItemToEndOfChatItems_chatItemClass_shouldInsert_chatItemCreationBlock_(self, v35, indicatorCopy, v34, shouldDisplayOffGridModeStatus, v36);
}

- (void)_processChatItemsForPollAddChoiceButton:(id)button
{
  buttonCopy = button;
  if ((IMIsRunningInMessagesViewService() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    if ((objc_msgSend_hasLeftGroup(WeakRetained, v6, v7) & 1) == 0)
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = sub_1A8259C30;
      v68 = sub_1A825AF44;
      v69 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v8, v9);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1A838A6C0;
      v61[3] = &unk_1E7813BD8;
      v10 = buttonCopy;
      v62 = v10;
      v63 = &v64;
      objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, v61);
      objc_msgSend_removeObjectsAtIndexes_(v10, v12, v65[5]);
      v58 = 0;
      v59[0] = &v58;
      v59[1] = 0x3032000000;
      v59[2] = sub_1A8259C30;
      v59[3] = sub_1A825AF44;
      v60 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v13, v14);
      v55 = 0;
      v56[0] = &v55;
      v56[1] = 0x3032000000;
      v56[2] = sub_1A8259C30;
      v56[3] = sub_1A825AF44;
      v57 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
      v52 = 0;
      v53[0] = &v52;
      v53[1] = 0x3032000000;
      v53[2] = sub_1A8259C30;
      v53[3] = sub_1A825AF44;
      v54 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v17, v18);
      v49 = 0;
      v50[0] = &v49;
      v50[1] = 0x3032000000;
      v50[2] = sub_1A8259C30;
      v50[3] = sub_1A825AF44;
      v51 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20);
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = sub_1A838A7EC;
      v42 = &unk_1E7813A98;
      v21 = v10;
      v43 = v21;
      selfCopy = self;
      v45 = &v52;
      v46 = &v49;
      v47 = &v58;
      v48 = &v55;
      objc_msgSend_enumerateObjectsUsingBlock_(v21, v22, &v39);
      if (objc_msgSend_count(*(v53[0] + 40), v23, v24, v39, v40, v41, v42))
      {
        v27 = objc_msgSend_count(*(v53[0] + 40), v25, v26);
        if (v27 == objc_msgSend_count(*(v50[0] + 40), v28, v29))
        {
          objc_msgSend_replaceObjectsAtIndexes_withObjects_(v21, v30, *(v53[0] + 40), *(v50[0] + 40));
        }

        else
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            sub_1A84E23DC(v50, v53);
          }
        }
      }

      if (objc_msgSend_count(*(v59[0] + 40), v25, v26))
      {
        v34 = objc_msgSend_count(*(v59[0] + 40), v32, v33);
        if (v34 == objc_msgSend_count(*(v56[0] + 40), v35, v36))
        {
          objc_msgSend_insertObjects_atIndexes_(v21, v37, *(v56[0] + 40), *(v59[0] + 40));
        }

        else
        {
          v38 = IMLogHandleForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            sub_1A84E2444(v56, v59);
          }
        }
      }

      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v52, 8);

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v58, 8);

      _Block_object_dispose(&v64, 8);
    }
  }
}

- (void)_processChatItemsForSatelliteNoDeliveryStatusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v8 = objc_msgSend_lastSentMessage(WeakRetained, v6, v7);

  v9 = objc_loadWeakRetained(&self->_chat);
  v12 = objc_msgSend_account(v9, v10, v11);
  v15 = objc_msgSend_service(v12, v13, v14);
  v18 = objc_msgSend_internalName(v15, v16, v17);
  v19 = MEMORY[0x1E69A7AF8];
  isEqualToString = objc_msgSend_isEqualToString_(v18, v20, *MEMORY[0x1E69A7AF8]);

  v24 = objc_msgSend_sharedInstance(IMChorosMonitor, v22, v23);
  LOBYTE(v15) = objc_msgSend_isSatelliteConnectionActive(v24, v25, v26);

  v29 = objc_msgSend_sentOrReceivedOffGrid(v8, v27, v28);
  v32 = 0;
  if ((v15 & 1) == 0 && isEqualToString)
  {
    if ((objc_msgSend_isDelivered(v8, v30, v31) | v29))
    {
      v32 = 0;
    }

    else
    {
      v35 = objc_msgSend__imMessageItem(v8, v33, v34);
      v38 = objc_msgSend_service(v35, v36, v37);
      v32 = objc_msgSend_isEqualToString_(v38, v39, *v19);
    }
  }

  v40 = objc_opt_class();
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A838AE18;
  v42[3] = &unk_1E7813868;
  v42[4] = self;
  objc_msgSend__insertOrMoveChatItemToEndOfChatItems_chatItemClass_shouldInsert_chatItemCreationBlock_(self, v41, indicatorCopy, v40, v32, v42);
}

- (void)_insertOrMoveChatItemToEndOfChatItems:(id)items chatItemClass:(Class)class shouldInsert:(BOOL)insert chatItemCreationBlock:(id)block
{
  insertCopy = insert;
  itemsCopy = items;
  blockCopy = block;
  v14 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v12, v13);
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = sub_1A838B02C;
  v35 = &unk_1E7813B10;
  classCopy = class;
  v15 = v14;
  v36 = v15;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(itemsCopy, v16, 2, &v32);
  v19 = objc_msgSend_count(v15, v17, v18, v32, v33, v34, v35);
  if (insertCopy)
  {
    if (v19)
    {
      v22 = objc_msgSend_count(itemsCopy, v20, v21) - 1;
      Index = objc_msgSend_lastIndex(v15, v23, v24);
      if (v22 == Index)
      {
        goto LABEL_10;
      }

      v27 = objc_msgSend_objectAtIndex_(itemsCopy, v26, Index);
      objc_msgSend_removeObjectsAtIndexes_(itemsCopy, v28, v15);
      if (!v27)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v30 = blockCopy[2](blockCopy);
      v27 = objc_msgSend_chatItemForIMChatItem_(self, v31, v30);

      if (!v27)
      {
        goto LABEL_10;
      }
    }

    objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v29, v27, itemsCopy);

    goto LABEL_10;
  }

  if (v19)
  {
    objc_msgSend_removeObjectsAtIndexes_(itemsCopy, v20, v15);
  }

LABEL_10:
}

- (void)_processChatItemsForUnknownInternationalSender:(id)sender
{
  v76 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (!IMIsInternationalFilteringAccount(senderCopy, v4, v5))
  {
    goto LABEL_49;
  }

  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasKnownParticipants = objc_msgSend_hasKnownParticipants(WeakRetained, v7, v8);

  if (!hasKnownParticipants)
  {
    v58 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v10, v11);
    *buf = 0;
    v68 = buf;
    v69 = 0x2020000000;
    v70 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = objc_msgSend__items(self, v13, v14);
    v17 = objc_msgSend___imArrayByFilteringWithBlock_(v15, v16, &unk_1F1B6F1A0);

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = v17;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v63, v75, 16);
    if (v20)
    {
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v63 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v23;
            v29 = objc_msgSend_originalUnformattedID(v25, v26, v27);
            if (v29)
            {
              shouldShowInternationalSenderWarningForHandleID = objc_msgSend_shouldShowInternationalSenderWarningForHandleID_(MEMORY[0x1E69A8320], v28, v29);

              if (shouldShowInternationalSenderWarningForHandleID)
              {
                v31 = 1;
                goto LABEL_20;
              }
            }

            else
            {
            }
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, &v63, v75, 16);
      }

      while (v20);
    }

    v31 = 0;
LABEL_20:

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_1A838B634;
    v60[3] = &unk_1E7813BD8;
    v32 = v58;
    v61 = v32;
    v62 = buf;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(senderCopy, v33, 2, v60);
    v34 = objc_loadWeakRetained(&self->_chat);
    isFiltered = objc_msgSend_isFiltered(v34, v35, v36);

    if ((v31 & (isFiltered != 0)) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = @"NO";
          if (isFiltered)
          {
            v51 = @"YES";
          }

          else
          {
            v51 = @"NO";
          }

          if (v31)
          {
            v50 = @"YES";
          }

          *v71 = 138412546;
          v72 = v51;
          v73 = 2112;
          v74 = v50;
          _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "Not showing unknown international status item. chat.isFiltered=%@ and hasUnknownInternationalParticipant=%@", v71, 0x16u);
        }
      }

      if (objc_msgSend_count(v32, v47, v48))
      {
        objc_msgSend_removeObjectsAtIndexes_(senderCopy, v52, v32);
      }

      goto LABEL_48;
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v71 = 0;
        _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Chat has unknown international participant, inserting status item for unknown international number.", v71, 2u);
      }
    }

    if (objc_msgSend_count(v32, v38, v39))
    {
      v43 = *(v68 + 3);
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = objc_msgSend_count(senderCopy, v41, v42);
      }

      Index = objc_msgSend_lastIndex(v32, v41, v42);
      if (v43 - 1 == Index)
      {
        v46 = 0;
LABEL_47:

LABEL_48:
        _Block_object_dispose(buf, 8);

        goto LABEL_49;
      }

      v46 = objc_msgSend_objectAtIndex_(senderCopy, v44, Index);
      objc_msgSend_removeObjectsAtIndexes_(senderCopy, v56, v32);
    }

    else
    {
      v53 = [IMUnknownInternationalSenderChatItem alloc];
      v46 = objc_msgSend__initWithItem_(v53, v54, 0);
    }

    if (v46)
    {
      if (*(v68 + 3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v55, v46, senderCopy);
      }

      else
      {
        objc_msgSend_insertObject_atIndex_(senderCopy, v55, v46);
      }
    }

    goto LABEL_47;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Not showing unknown international status item because chat has known participants.", buf, 2u);
    }
  }

LABEL_49:

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_processChatItemsForSMSFallbackStatusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1A8259C30;
  v54 = sub_1A825AF44;
  v55 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v8 = objc_msgSend_account(WeakRetained, v6, v7);
  v11 = objc_msgSend_service(v8, v9, v10);
  v14 = objc_msgSend_internalName(v11, v12, v13);
  v15 = MEMORY[0x1E69A7AE8];
  isEqualToString = objc_msgSend_isEqualToString_(v14, v16, *MEMORY[0x1E69A7AE8]);
  if (!isEqualToString)
  {

    v38 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v18 = objc_loadWeakRetained(&self->_chat);
  isGroupChat = objc_msgSend_isGroupChat(v18, v19, v20);

  if ((isGroupChat & 1) == 0)
  {
    v22 = objc_opt_class();
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A838B9AC;
    v49[3] = &unk_1E7813C20;
    v49[4] = &v50;
    v49[5] = v22;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(indicatorCopy, v23, 2, v49);
    v24 = v51[5];
    if (objc_opt_isKindOfClass())
    {
      v27 = objc_msgSend__item(v51[5], v25, v26);
      v30 = objc_msgSend__service(v27, v28, v29);
      v33 = objc_msgSend_name(v30, v31, v32);
      v35 = objc_msgSend_isEqualToString_(v33, v34, *v15);

      if ((v35 & 1) == 0)
      {
        WeakRetained = objc_msgSend__item(v51[5], v36, v37);
        v8 = objc_msgSend__service(WeakRetained, v42, v43);
        v38 = objc_msgSend_internalName(v8, v44, v45);
        goto LABEL_7;
      }
    }
  }

  v38 = 0;
  isEqualToString = 0;
LABEL_8:
  v39 = objc_opt_class();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1A838BA28;
  v46[3] = &unk_1E7813840;
  v46[4] = self;
  v48 = &v50;
  v40 = v38;
  v47 = v40;
  objc_msgSend__insertOrMoveChatItemToEndOfChatItems_chatItemClass_shouldInsert_chatItemCreationBlock_(self, v41, indicatorCopy, v39, isEqualToString, v46);

  _Block_object_dispose(&v50, 8);
}

- (void)_processChatItemsForAutomaticTranslationIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v5 = objc_opt_class();
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = sub_1A8259C30;
  v135 = sub_1A825AF44;
  v136 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7);
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = sub_1A838C17C;
  v130[3] = &unk_1E7813C20;
  v130[4] = &v131;
  v130[5] = v5;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(indicatorCopy, v8, 2, v130);
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldDisplayAutomaticTranslation = objc_msgSend_shouldDisplayAutomaticTranslation(WeakRetained, v10, v11);

  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = sub_1A8259C30;
  v128 = sub_1A825AF44;
  v129 = 0;
  v13 = objc_loadWeakRetained(&self->_chat);
  v16 = objc_msgSend_incomingTranslationLanguageCode(v13, v14, v15);

  if (shouldDisplayAutomaticTranslation)
  {
    v19 = objc_loadWeakRetained(&self->_chat);
    isAutomaticTranslationEnabled = objc_msgSend_isAutomaticTranslationEnabled(v19, v20, v21);

    if ((isAutomaticTranslationEnabled & 1) == 0)
    {
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = sub_1A838C1E0;
      v121[3] = &unk_1E7813BD8;
      v122 = v16;
      v123 = &v124;
      objc_msgSend_enumerateObjectsWithOptions_usingBlock_(indicatorCopy, v23, 2, v121);
    }

    if (v125[5])
    {
      goto LABEL_8;
    }
  }

  else if (v125[5])
  {
    goto LABEL_20;
  }

  v24 = objc_loadWeakRetained(&self->_chat);
  v27 = objc_msgSend_isAutomaticTranslationEnabled(v24, v25, v26);

  if (v27 & shouldDisplayAutomaticTranslation)
  {
LABEL_8:
    v28 = objc_loadWeakRetained(&self->_chat);
    v31 = objc_msgSend_translationLanguageCode(v28, v29, v30);

    v32 = objc_loadWeakRetained(&self->_chat);
    v35 = objc_msgSend_userTranslationLanguageCode(v32, v33, v34);

    v38 = objc_msgSend_chat(self, v36, v37);
    v41 = objc_msgSend_chat(self, v39, v40);
    v44 = objc_msgSend_translationLanguageCode(v41, v42, v43);
    v120 = objc_msgSend_checkTranslationLanguageStatusForLanguageCode_(v38, v45, v44);

    v48 = objc_msgSend_chat(self, v46, v47);
    v51 = objc_msgSend_chat(self, v49, v50);
    v54 = objc_msgSend_userTranslationLanguageCode(v51, v52, v53);
    v119 = objc_msgSend_checkTranslationLanguageStatusForLanguageCode_(v48, v55, v54);

    v58 = objc_msgSend_chat(self, v56, v57);
    isShowingTranslationText = objc_msgSend_isShowingTranslationText(v58, v59, v60);

    v63 = objc_msgSend_chat(self, v61, v62);
    v66 = objc_msgSend_isShowingTranslationText(v63, v64, v65);

    if (objc_msgSend_count(v132[5], v67, v68))
    {
      v71 = objc_msgSend_count(indicatorCopy, v69, v70);
      Index = objc_msgSend_lastIndex(v132[5], v72, v73);
      v75 = objc_msgSend_objectAtIndex_(indicatorCopy, v74, Index);
      v78 = objc_msgSend_translationLanguageCode(v75, v76, v77);
      v81 = objc_msgSend_userTranslationLanguageCode(v75, v79, v80);
      v118 = objc_msgSend_incomingLanguageCode(v75, v82, v83);
      v113 = v71;
      v115 = objc_msgSend_isShowingTranslationText(v75, v84, v85);
      v88 = 0;
      if (v78 && v31)
      {
        v88 = objc_msgSend_isEqualToString_(v78, v86, v31) ^ 1;
      }

      v114 = v31;
      v89 = 0;
      if (v81 && v35)
      {
        v89 = objc_msgSend_isEqualToString_(v81, v86, v35) ^ 1;
      }

      v111 = v81;
      v90 = v16;
      v91 = 0;
      if (v118 && v90)
      {
        v91 = objc_msgSend_isEqualToString_(v118, v86, v90, v111) ^ 1;
      }

      v92 = objc_msgSend_translationLanguageStatus(v75, v86, v87, v111);
      v97 = v88 | v89 | isShowingTranslationText ^ v115 | (v92 != v120) | (objc_msgSend_userTranslationLanguageStatus(v75, v93, v94) != v119) | v91;
      if (v97)
      {
        v98 = [IMAutomaticTranslationIndicatorChatItem alloc];
        v31 = v114;
        v16 = v90;
        v100 = objc_msgSend__initWithTranslationLanguageCode_userLanguageCode_incomingLanguageCode_senderHandle_isShowingTranslationText_(v98, v99, v114, v35, v90, v125[5], isShowingTranslationText);

        objc_msgSend_setTranslationLanguageStatus_(v100, v101, v120);
        objc_msgSend_setUserTranslationLanguageStatus_(v100, v102, v119);
      }

      else
      {
        v100 = v75;
        v16 = v90;
        v31 = v114;
      }

      if (v113 - 1 != Index || ((objc_msgSend_count(v132[5], v95, v96) < 2) & ~v97) == 0)
      {
        objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v95, v132[5]);
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v110, v100, indicatorCopy);
      }
    }

    else
    {
      v104 = [IMAutomaticTranslationIndicatorChatItem alloc];
      v100 = objc_msgSend__initWithTranslationLanguageCode_userLanguageCode_incomingLanguageCode_senderHandle_isShowingTranslationText_(v104, v105, v31, v35, v16, v125[5], v66);
      objc_msgSend_setTranslationLanguageStatus_(v100, v106, v120);
      objc_msgSend_setUserTranslationLanguageStatus_(v100, v107, v119);
      v78 = objc_msgSend_chatItemForIMChatItem_(self, v108, v100);
      if (v78)
      {
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v109, v78, indicatorCopy);
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  if (objc_msgSend_count(v132[5], v17, v18))
  {
    objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v103, v132[5]);
  }

LABEL_30:

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v131, 8);
}

- (void)_processChatItemsForIntroductionsButtons:(id)buttons
{
  buttonsCopy = buttons;
  v5 = objc_opt_class();
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1A8259C30;
  v56 = sub_1A825AF44;
  v57 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1A838C618;
  v51[3] = &unk_1E7813C20;
  v51[4] = &v52;
  v51[5] = v5;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(buttonsCopy, v8, 2, v51);
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldShowIntroductionsButtons = objc_msgSend_shouldShowIntroductionsButtons(WeakRetained, v10, v11);

  v15 = objc_msgSend_chat(self, v13, v14);
  if (objc_msgSend_isFiltered(v15, v16, v17) == 2)
  {
    v20 = objc_msgSend_chat(self, v18, v19);
    v23 = objc_msgSend_allowsJunkConfiguration(v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  v26 = v53[5];
  if (shouldShowIntroductionsButtons)
  {
    if (objc_msgSend_count(v26, v24, v25))
    {
      v29 = objc_msgSend_count(buttonsCopy, v27, v28);
      Index = objc_msgSend_lastIndex(v53[5], v30, v31);
      v34 = objc_msgSend_objectAtIndex_(buttonsCopy, v33, Index);
      v39 = v23 ^ objc_msgSend_chatWantsIntroductionsLabel(v34, v35, v36);
      if ((v39 & 1) == 0)
      {
        v40 = [IMIntroductionsButtonsChatItem alloc];
        v42 = objc_msgSend__initWithChatWantsIntroductionsLabel_(v40, v41, v23 ^ 1u);

        v34 = v42;
      }

      if (v29 - 1 != Index || (objc_msgSend_count(v53[5], v37, v38) < 2 ? (v43 = v39) : (v43 = 0), (v43 & 1) == 0))
      {
        objc_msgSend_removeObjectsAtIndexes_(buttonsCopy, v37, v53[5]);
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v44, v34, buttonsCopy);
      }
    }

    else
    {
      v46 = [IMIntroductionsButtonsChatItem alloc];
      v34 = objc_msgSend__initWithChatWantsIntroductionsLabel_(v46, v47, v23 ^ 1u);
      v50 = objc_msgSend_chatItemForIMChatItem_(self, v48, v34);
      if (v50)
      {
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v49, v50, buttonsCopy);
      }
    }
  }

  else if (objc_msgSend_count(v26, v24, v25))
  {
    objc_msgSend_removeObjectsAtIndexes_(buttonsCopy, v45, v53[5]);
  }

  _Block_object_dispose(&v52, 8);
}

- (void)_processChatItemsForUnavailabilityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v8, v9);
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v89 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_1A838CB1C;
  v76[3] = &unk_1E7813C48;
  v81 = v5;
  v11 = v10;
  v77 = v11;
  v78 = &v84;
  v79 = &v90;
  v80 = v88;
  v82 = v6;
  v83 = v7;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(indicatorCopy, v12, 2, v76);
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldDisplayUnavailabilityIndicator = objc_msgSend_shouldDisplayUnavailabilityIndicator(WeakRetained, v14, v15);

  if (*(v91 + 24) == 1)
  {
    v19 = objc_loadWeakRetained(&self->_chat);
    v21 = objc_msgSend_supportsCapabilities_(v19, v20, 0x200000);

    if (!shouldDisplayUnavailabilityIndicator)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = 0;
    if (!shouldDisplayUnavailabilityIndicator)
    {
LABEL_3:
      if (objc_msgSend_count(v11, v17, v18))
      {
        objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v22, v11);
      }

      if (v21)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (objc_msgSend_count(v11, v17, v18))
  {
    v26 = objc_msgSend_count(indicatorCopy, v24, v25);
    Index = objc_msgSend_lastIndex(v11, v27, v28);
    v31 = objc_msgSend_objectAtIndex_(indicatorCopy, v30, Index);
    objc_msgSend_setDisplayNotifyAnywayButton_(v31, v32, v21);
    if (v26 - 1 != Index || objc_msgSend_count(v11, v33, v34) >= 2)
    {
      objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v33, v11);
      objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v35, v31, indicatorCopy);
    }
  }

  else
  {
    v36 = objc_loadWeakRetained(&self->_chat);
    v38 = objc_msgSend_participantsWithState_(v36, v37, 16);
    v31 = objc_msgSend_firstObject(v38, v39, v40);

    v41 = [IMUnavailabilityIndicatorChatItem alloc];
    v43 = objc_msgSend__initWithHandle_displayNotifyAnywayButton_(v41, v42, v31, v21);
    v46 = objc_msgSend_chatItemForIMChatItem_(self, v44, v43);
    if (v46)
    {
      objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v45, v46, indicatorCopy);
    }
  }

  if (v21)
  {
LABEL_17:
    v47 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v22, v23);
    v70 = MEMORY[0x1E69E9820];
    v71 = 3221225472;
    v72 = sub_1A838CC4C;
    v73 = &unk_1E7813B10;
    v75 = v6;
    v48 = v47;
    v74 = v48;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(indicatorCopy, v49, 2, &v70);
    if (!v21)
    {
      if (objc_msgSend_count(v48, v50, v51, v70, v71, v72, v73))
      {
        objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v63, v48);
      }

      goto LABEL_28;
    }

    if (objc_msgSend_count(v48, v50, v51, v70, v71, v72, v73))
    {
      v54 = objc_msgSend_count(indicatorCopy, v52, v53);
      v59 = objc_msgSend_lastIndex(v48, v55, v56);
      if (v54 - 1 == v59 && objc_msgSend_count(v48, v57, v58) < 2)
      {
        goto LABEL_28;
      }

      v60 = objc_msgSend_objectAtIndex_(indicatorCopy, v57, v59);
      objc_msgSend_removeObjectsAtIndexes_(indicatorCopy, v61, v48);
      objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v62, v60, indicatorCopy);
    }

    else
    {
      v64 = [IMNotifyAnywayChatItem alloc];
      v60 = objc_msgSend__init(v64, v65, v66);
      v69 = objc_msgSend_chatItemForIMChatItem_(self, v67, v60);
      if (v69)
      {
        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v68, v69, indicatorCopy);
      }
    }

LABEL_28:
    goto LABEL_29;
  }

LABEL_16:
  if (*(v85 + 24) == 1)
  {
    goto LABEL_17;
  }

LABEL_29:

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(v88, 8);
  _Block_object_dispose(&v90, 8);
}

- (void)_processChatItemsForJunkRecoveryItem:(id)item inChat:(id)chat
{
  v66 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  v8 = objc_opt_class();
  v11 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10);
  v56 = MEMORY[0x1E69E9820];
  v57 = 3221225472;
  v58 = sub_1A838CF88;
  v59 = &unk_1E7813B10;
  v61 = v8;
  v12 = v11;
  v60 = v12;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(itemCopy, v13, 2, &v56);
  v14 = chatCopy;
  v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16, v56, v57, v58, v59);
  isModernFilteringEnabled = objc_msgSend_isModernFilteringEnabled(v17, v18, v19);

  isFiltered = objc_msgSend_isFiltered(v14, v21, v22);
  if (isModernFilteringEnabled)
  {
    if (isFiltered != 2)
    {
      goto LABEL_11;
    }

    v26 = objc_msgSend_allowsJunkConfiguration(v14, v24, v25);
  }

  else
  {
    if (isFiltered != 2)
    {
      goto LABEL_11;
    }

    v26 = IMIsOscarEnabled(2, v24, v25);
  }

  if ((v26 & 1) == 0)
  {
LABEL_11:

    if (objc_msgSend_count(v12, v38, v39))
    {
      objc_msgSend_removeObjectsAtIndexes_(itemCopy, v40, v12);
    }

    goto LABEL_13;
  }

  if (objc_msgSend_count(v12, v27, v28))
  {
    v31 = objc_msgSend_count(itemCopy, v29, v30);
    Index = objc_msgSend_lastIndex(v12, v32, v33);
    if (v31 - 1 == Index)
    {
      goto LABEL_13;
    }

    v36 = objc_msgSend_objectAtIndex_(itemCopy, v34, Index);
    objc_msgSend_removeObjectsAtIndexes_(itemCopy, v37, v12);
    if (!v36)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v42 = [v8 alloc];
    v36 = objc_msgSend__initWithItem_(v42, v43, 0);
    if (!v36)
    {
      goto LABEL_13;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v49 = objc_msgSend_earliestCachedMessageDate(v14, v47, v48);
      v52 = objc_msgSend_guid(v14, v50, v51);
      *buf = 138412546;
      v63 = v49;
      v64 = 2112;
      v65 = v52;
      _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "Inserting JunkRecovery chat item with date %@ for chat %@", buf, 0x16u);
    }
  }

  v53 = objc_msgSend_earliestCachedMessageDate(v14, v44, v45);
  objc_msgSend_setEarliestMessageDate_(v36, v54, v53);

  objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v55, v36, itemCopy);
LABEL_13:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_processChatItemsForStewieResumeButtons:(id)buttons inChat:(id)chat
{
  buttonsCopy = buttons;
  chatCopy = chat;
  v8 = objc_opt_class();
  v11 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10);
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = sub_1A838D18C;
  v37 = &unk_1E7813B10;
  v39 = v8;
  v12 = v11;
  v38 = v12;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(buttonsCopy, v13, 2, &v34);
  shouldShowStewieResumeButtonsForChat = objc_msgSend__shouldShowStewieResumeButtonsForChat_(self, v14, chatCopy, v34, v35, v36, v37);
  v18 = objc_msgSend_count(v12, v16, v17);
  if (shouldShowStewieResumeButtonsForChat)
  {
    if (v18)
    {
      v21 = objc_msgSend_count(buttonsCopy, v19, v20) - 1;
      Index = objc_msgSend_lastIndex(v12, v22, v23);
      if (v21 == Index)
      {
        goto LABEL_10;
      }

      v26 = objc_msgSend_objectAtIndex_(buttonsCopy, v25, Index);
      objc_msgSend_removeObjectsAtIndexes_(buttonsCopy, v27, v12);
      if (!v26)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v29 = [IMStewieResumeItem alloc];
      v32 = objc_msgSend_chatIdentifier(chatCopy, v30, v31);
      v26 = objc_msgSend__initWithItem_chatIdentifier_(v29, v33, 0, v32);

      if (!v26)
      {
        goto LABEL_10;
      }
    }

    objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v28, v26, buttonsCopy);

    goto LABEL_10;
  }

  if (v18)
  {
    objc_msgSend_removeObjectsAtIndexes_(buttonsCopy, v19, v12);
  }

LABEL_10:
}

- (void)_processChatItemsForDownloadingPendingMessages:(id)messages
{
  messagesCopy = messages;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v8 = objc_msgSend_account(WeakRetained, v6, v7);
  v11 = objc_msgSend_service(v8, v9, v10);

  if (objc_msgSend_supportsShowingSatelliteMessageDownloadCount(v11, v12, v13))
  {
    v14 = objc_opt_class();
    v15 = objc_loadWeakRetained(&self->_chat);
    v18 = objc_msgSend_pendingIncomingSatelliteMessageCount(v15, v16, v17);

    v21 = objc_msgSend_sharedInstance(IMChorosMonitor, v19, v20);
    if (objc_msgSend_isSatelliteConnectionActive(v21, v22, v23))
    {
      v24 = objc_loadWeakRetained(&self->_chat);
      isDownloadingPendingSatelliteMessages = 0;
      if ((objc_msgSend_isGroupChat(v24, v25, v26) & 1) == 0 && v18)
      {
        v28 = objc_loadWeakRetained(&self->_chat);
        isDownloadingPendingSatelliteMessages = objc_msgSend_isDownloadingPendingSatelliteMessages(v28, v29, v30);
      }
    }

    else
    {
      isDownloadingPendingSatelliteMessages = 0;
    }

    v33 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v31, v32);
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = sub_1A838D440;
    v60 = &unk_1E7813B10;
    v62 = v14;
    v34 = v33;
    v61 = v34;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(messagesCopy, v35, 2, &v57);
    v38 = objc_msgSend_count(v34, v36, v37, v57, v58, v59, v60);
    if (!isDownloadingPendingSatelliteMessages)
    {
      if (v38)
      {
        objc_msgSend_removeObjectsAtIndexes_(messagesCopy, v39, v34);
      }

      goto LABEL_17;
    }

    if (v38)
    {
      v41 = objc_msgSend_count(messagesCopy, v39, v40) - 1;
      Index = objc_msgSend_lastIndex(v34, v42, v43);
      if (v41 == Index)
      {
        goto LABEL_17;
      }

      v46 = objc_msgSend_objectAtIndex_(messagesCopy, v45, Index);
      objc_msgSend_removeObjectsAtIndexes_(messagesCopy, v47, v34);
      if (!v46)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v49 = [IMDownloadingPendingMessagesChatItem alloc];
      v46 = objc_msgSend__initWithItem_(v49, v50, 0);
      if (!v46)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    objc_msgSend__setPendingIncomingSatelliteMessageCount_(v46, v48, v18);
    v51 = objc_loadWeakRetained(&self->_chat);
    v54 = objc_msgSend_totalSatelliteMessageCount(v51, v52, v53);
    objc_msgSend__setTotalSatelliteMessageCount_(v46, v55, v54);

    objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v56, v46, messagesCopy);
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_processChatItemsForSuggestedReplies:(id)replies inChat:(id)chat
{
  v58[1] = *MEMORY[0x1E69E9840];
  repliesCopy = replies;
  chatCopy = chat;
  v10 = objc_msgSend_suggestedRepliesData(chatCopy, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8280], v11, v12);
    isRBMEnabled = objc_msgSend_isRBMEnabled(v13, v14, v15);

    if (isRBMEnabled)
    {
      v19 = MEMORY[0x1E69A7F48];
      v20 = objc_msgSend_suggestedRepliesData(chatCopy, v17, v18);
      v22 = objc_msgSend_IMChipListFromSuggestions_(v19, v21, v20);

      v25 = objc_msgSend_suggestedReplies(v22, v23, v24);
      if (objc_msgSend_count(v25, v26, v27))
      {
        v30 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v28, v29);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = sub_1A838D76C;
        v52[3] = &unk_1E7811FA8;
        v31 = v30;
        v53 = v31;
        objc_msgSend_enumerateObjectsWithOptions_usingBlock_(repliesCopy, v32, 2, v52);
        if (objc_msgSend_count(v31, v33, v34))
        {
          objc_msgSend_removeObjectsAtIndexes_(repliesCopy, v35, v31);
        }

        v37 = objc_msgSend_suggestedReplies(v22, v35, v36);
        v58[0] = v37;
        v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v38, v58, 1);

        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v43 = objc_msgSend_suggestedReplies(v22, v41, v42);
            *buf = 138412546;
            v55 = v43;
            v56 = 2112;
            v57 = chatCopy;
            _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "stage suggested replies: %@, chat: %@", buf, 0x16u);
          }
        }

        v44 = [IMNewComposeSuggestedRepliesMessagePartChatItem alloc];
        v47 = objc_msgSend_messageItem(v22, v45, v46);
        v49 = objc_msgSend_initWithItem_suggestedRepliesList_selectedIndex_(v44, v48, v47, v39, 0);

        objc_msgSend_addChatItem_toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems_(self, v50, v49, repliesCopy);
      }
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)_processChatItemsForAttribution:(id)attribution
{
  v107 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = sub_1A8259C30;
  v101 = sub_1A825AF44;
  v102 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_1A8259C30;
  v95 = sub_1A825AF44;
  v96 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_1A8259C30;
  v89 = sub_1A825AF44;
  v90 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_1A838DE8C;
  v82[3] = &unk_1E7813BD8;
  v11 = attributionCopy;
  v83 = v11;
  v84 = &v85;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v11, v12, 2, v82);
  objc_msgSend_removeObjectsAtIndexes_(v11, v13, v86[5]);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_1A838DF64;
  v77[3] = &unk_1E7813C70;
  v14 = v11;
  v78 = v14;
  selfCopy = self;
  v80 = &v91;
  v81 = &v97;
  objc_msgSend_enumerateObjectsUsingBlock_(v14, v15, v77);
  v18 = objc_msgSend_count(v92[5], v16, v17);
  if (v18 == objc_msgSend_count(v98[5], v19, v20))
  {
    objc_msgSend_insertObjects_atIndexes_(v14, v21, v92[5], v98[5]);
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v92[5];
      v26 = v98[5];
      *buf = 138412546;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Attribution chat items to insert: %@ did not match indices: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v104 = sub_1A8259C30;
  v105 = sub_1A825AF44;
  v106 = objc_msgSend_set(MEMORY[0x1E695DFA8], v22, v23);
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1A8259C30;
  v75 = sub_1A825AF44;
  v76 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v27, v28);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1A838E07C;
  v66[3] = &unk_1E7813C98;
  v29 = v14;
  v69 = buf;
  v70 = &v71;
  v67 = v29;
  selfCopy2 = self;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v29, v30, 2, v66);
  objc_msgSend_removeObjectsAtIndexes_(v29, v31, v72[5]);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_1A8259C30;
  v64 = sub_1A825AF44;
  v65 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v32, v33);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_1A838E414;
  v57[3] = &unk_1E7813BD8;
  v34 = v29;
  v58 = v34;
  v59 = &v60;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v34, v35, 2, v57);
  objc_msgSend_removeObjectsAtIndexes_(v34, v36, v61[5]);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 1;
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = sub_1A838E528;
  v52 = &unk_1E7813CC0;
  v54 = v55;
  v37 = v34;
  v53 = v37;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v37, v38, 2, &v49);
  if (objc_msgSend_count(*(*&buf[8] + 40), v39, v40, v49, v50, v51, v52))
  {
    v43 = objc_msgSend_sharedInstance(IMBalloonPluginAttributionController, v41, v42);
    v46 = objc_msgSend_allObjects(*(*&buf[8] + 40), v44, v45);
    objc_msgSend_didShowAttributionForBundleIDs_(v43, v47, v46);
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(&v97, 8);
  v48 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldReloadChatItemWithAssociatedChatItems:(id)items oldAssociatedChatItems:(id)chatItems
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  chatItemsCopy = chatItems;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(chatItemsCopy, v7, &v18, v22, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(chatItemsCopy);
        }

        if (objc_msgSend_fileTransferReloadStatus(*(*(&v18 + 1) + 8 * i), v9, v10, v18))
        {

          goto LABEL_15;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(chatItemsCopy, v9, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (itemsCopy == chatItemsCopy)
  {
    goto LABEL_16;
  }

  if (itemsCopy && !objc_msgSend_isEqual_(itemsCopy, v14, chatItemsCopy))
  {
LABEL_15:
    LOBYTE(v15) = 1;
    goto LABEL_17;
  }

  if (!chatItemsCopy)
  {
LABEL_16:
    LOBYTE(v15) = 0;
    goto LABEL_17;
  }

  v15 = objc_msgSend_isEqual_(chatItemsCopy, v14, itemsCopy) ^ 1;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_shouldReloadChatItem:(id)item oldChatItem:(id)chatItem
{
  itemCopy = item;
  chatItemCopy = chatItem;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  if (itemCopy == chatItemCopy)
  {
    goto LABEL_89;
  }

  v11 = objc_msgSend_contiguousType(itemCopy, v9, v10);
  if (v11 != objc_msgSend_contiguousType(chatItemCopy, v12, v13))
  {
    goto LABEL_19;
  }

  v16 = objc_msgSend_attachmentContiguousType(itemCopy, v14, v15);
  if (v16 != objc_msgSend_attachmentContiguousType(chatItemCopy, v17, v18))
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_statusType(itemCopy, v19, v20);
    if (v21 != objc_msgSend_statusType(chatItemCopy, v22, v23))
    {
      goto LABEL_19;
    }

    v26 = objc_msgSend_count(itemCopy, v24, v25);
    if (v26 != objc_msgSend_count(chatItemCopy, v27, v28))
    {
      goto LABEL_19;
    }

    v31 = objc_msgSend_expireStatusType(itemCopy, v29, v30);
    if (v31 != objc_msgSend_expireStatusType(chatItemCopy, v32, v33))
    {
      goto LABEL_19;
    }

    v36 = objc_msgSend__item(itemCopy, v34, v35);
    v39 = objc_msgSend_message(v36, v37, v38);

    v42 = objc_msgSend__item(chatItemCopy, v40, v41);
    v45 = objc_msgSend_message(v42, v43, v44);

    v48 = objc_msgSend_error(v39, v46, v47);
    v51 = objc_msgSend_code(v48, v49, v50);
    v54 = objc_msgSend_error(v45, v52, v53);
    v57 = objc_msgSend_code(v54, v55, v56);

    if (v51 != v57)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_wasReportedAsSpam(itemCopy, v58, v59))
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = chatItemCopy;
    v63 = objc_msgSend_extensionName(itemCopy, v61, v62);
    v66 = objc_msgSend_extensionName(v60, v64, v65);

    LODWORD(v60) = objc_msgSend_isEqualToString_(v63, v67, v66);
    if (!v60)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || objc_msgSend_supportsCommunicationSafety(itemCopy, v68, v69) && objc_msgSend_fileTransferReloadStatus(chatItemCopy, v72, v73) == 1)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = chatItemCopy;
    v77 = objc_msgSend_failed(itemCopy, v75, v76);
    v80 = objc_msgSend_failed(v74, v78, v79);

    if (v77 != v80)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = chatItemCopy;
    v84 = objc_msgSend_failed(itemCopy, v82, v83);
    v87 = objc_msgSend_failed(v81, v85, v86);

    if (v84 != v87)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = chatItemCopy;
    v91 = objc_msgSend_failed(itemCopy, v89, v90);
    v94 = objc_msgSend_failed(v88, v92, v93);

    if (v91 != v94)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = chatItemCopy;
    v98 = objc_msgSend_selectedIndex(itemCopy, v96, v97);
    v101 = objc_msgSend_selectedIndex(v95, v99, v100);

    if (v98 != v101)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v102 = itemCopy;
    v103 = chatItemCopy;
    v106 = objc_msgSend_visibleAssociatedMessageChatItems(v102, v104, v105);
    v109 = objc_msgSend_visibleAssociatedMessageChatItems(v103, v107, v108);
    shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems = objc_msgSend__shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems_(self, v110, v106, v109);

    if (shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems)
    {
      goto LABEL_49;
    }

    v114 = objc_msgSend_syndicationType(v103, v112, v113);
    if (v114 != objc_msgSend_syndicationType(v102, v115, v116))
    {
      goto LABEL_49;
    }

    if (objc_msgSend_scheduleType(v103, v117, v118) == 2 || objc_msgSend_scheduleType(v102, v119, v120) == 2)
    {
      v290 = objc_msgSend_scheduleType(v103, v119, v120);
      v288 = objc_msgSend_scheduleType(v102, v121, v122);
      v286 = objc_msgSend_scheduleState(v103, v123, v124);
      v127 = objc_msgSend_scheduleState(v102, v125, v126);
      v130 = objc_msgSend_time(v103, v128, v129);
      v133 = objc_msgSend_time(v102, v131, v132);
      isEqualToDate = objc_msgSend_isEqualToDate_(v130, v134, v133);

      v138 = objc_msgSend_text(v103, v136, v137);
      v141 = objc_msgSend_text(v102, v139, v140);
      isEqualToAttributedString = objc_msgSend_isEqualToAttributedString_(v138, v142, v141);

      if (v290 != v288 || v286 != v127 || !isEqualToAttributedString || !isEqualToDate)
      {
LABEL_49:

        goto LABEL_19;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v146 = objc_msgSend__item(itemCopy, v144, v145);
    v149 = objc_msgSend_message(v146, v147, v148);

    v152 = objc_msgSend__item(chatItemCopy, v150, v151);
    v155 = objc_msgSend_message(v152, v153, v154);

    v291 = v149;
    v158 = objc_msgSend_sender(v149, v156, v157);
    v161 = objc_msgSend_service(v158, v159, v160);
    v164 = objc_msgSend_sender(v155, v162, v163);
    v169 = objc_msgSend_service(v164, v165, v166);
    if (v161 != v169)
    {
LABEL_46:

      goto LABEL_47;
    }

    v289 = objc_msgSend_error(v149, v167, v168);
    v174 = objc_msgSend_error(v155, v170, v171);
    if ((v289 == 0) == (v174 != 0) || (isPlayed = objc_msgSend_isPlayed(v149, v172, v173), isPlayed != objc_msgSend_isPlayed(v155, v176, v177)))
    {

      goto LABEL_46;
    }

    hasDataDetectorResults = objc_msgSend_hasDataDetectorResults(v291, v178, v179);
    v287 = objc_msgSend_hasDataDetectorResults(v155, v181, v182);

    if (hasDataDetectorResults != v287)
    {
      goto LABEL_48;
    }

    v158 = objc_msgSend_syndicationRanges(v155, v183, v184);
    v187 = objc_msgSend_syndicationRanges(v291, v185, v186);
    v161 = v187;
    if (v158 != v187 && (!v158 || !v187 || !objc_msgSend_isEqualToArray_(v158, v188, v187)))
    {
LABEL_47:

LABEL_48:
      goto LABEL_19;
    }

    hasEditedParts = objc_msgSend_hasEditedParts(v291, v188, v189);

    if (hasEditedParts)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v191 = itemCopy;
      v192 = chatItemCopy;
      isShowingEditHistory = objc_msgSend_isShowingEditHistory(v191, v193, v194);
      if (isShowingEditHistory != objc_msgSend_isShowingEditHistory(v192, v196, v197))
      {
        goto LABEL_68;
      }

      v200 = objc_msgSend_showTranslationAlternateText(v191, v198, v199);
      if (v200 != objc_msgSend_showTranslationAlternateText(v192, v201, v202))
      {
        goto LABEL_68;
      }

      v205 = objc_msgSend_alternateTranscriptText(v191, v203, v204);
      v208 = objc_msgSend_length(v205, v206, v207);
      v211 = objc_msgSend_alternateTranscriptText(v192, v209, v210);
      v214 = objc_msgSend_length(v211, v212, v213);

      if (v208 != v214)
      {
        goto LABEL_19;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v215 = chatItemCopy;
    v218 = objc_msgSend_richCards(itemCopy, v216, v217);
    v221 = objc_msgSend_richCards(v215, v219, v220);

    v70 = objc_msgSend_isEqual_(v218, v222, v221) ^ 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_transferGUID(itemCopy, v223, v224), v225 = objc_claimAutoreleasedReturnValue(), objc_msgSend_transferGUID(chatItemCopy, v226, v227), v228 = objc_claimAutoreleasedReturnValue(), v230 = objc_msgSend_isEqualToString_(v225, v229, v228), v228, v225, v230))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v191 = itemCopy;
      v233 = objc_msgSend_dataSource(v191, v231, v232);
      hasInvalidatedSize = objc_msgSend_hasInvalidatedSize(v233, v234, v235);

      if (hasInvalidatedSize)
      {
        v192 = objc_msgSend_dataSource(v191, v237, v238);
        objc_msgSend_setHasInvalidatedSize_(v192, v239, 0);
LABEL_68:

        goto LABEL_19;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v242 = objc_msgSend_offerState(itemCopy, v240, v241);
      if (v242 != objc_msgSend_offerState(chatItemCopy, v243, v244))
      {
        goto LABEL_19;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_isEqual_(itemCopy, v245, chatItemCopy))
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (!objc_msgSend_isEqual_(itemCopy, v246, chatItemCopy))
      {
        goto LABEL_19;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v247 = chatItemCopy;
        isPendingSatelliteSend = objc_msgSend_isPendingSatelliteSend(itemCopy, v248, v249);
        v253 = objc_msgSend_isPendingSatelliteSend(v247, v251, v252);

        if (isPendingSatelliteSend != v253)
        {
          goto LABEL_19;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v191 = itemCopy;
        v192 = chatItemCopy;
        isShowingTranslationText = objc_msgSend_isShowingTranslationText(v191, v254, v255);
        if (isShowingTranslationText != objc_msgSend_isShowingTranslationText(v192, v257, v258))
        {
          goto LABEL_68;
        }

        v261 = objc_msgSend_translationLanguageCode(v191, v259, v260);
        v264 = objc_msgSend_translationLanguageCode(v192, v262, v263);
        isEqualToString = objc_msgSend_isEqualToString_(v261, v265, v264);

        if (!isEqualToString)
        {
          goto LABEL_68;
        }

        v269 = objc_msgSend_userTranslationLanguageCode(v191, v267, v268);
        v272 = objc_msgSend_userTranslationLanguageCode(v192, v270, v271);
        v274 = objc_msgSend_isEqualToString_(v269, v273, v272);

        if (!v274)
        {
          goto LABEL_68;
        }

        v277 = objc_msgSend_translationLanguageStatus(v191, v275, v276);
        if (v277 != objc_msgSend_translationLanguageStatus(v192, v278, v279))
        {
          goto LABEL_68;
        }

        v282 = objc_msgSend_userTranslationLanguageStatus(v191, v280, v281);
        v285 = objc_msgSend_userTranslationLanguageStatus(v192, v283, v284);

        if (v282 != v285)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_89:
    LOBYTE(v70) = 0;
    goto LABEL_20;
  }

LABEL_19:
  LOBYTE(v70) = 1;
LABEL_20:

  return v70;
}

- (BOOL)_shouldReloadSatelliteChatItems:(id)items
{
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  UsedSatelliteStatus = objc_msgSend_lastUsedSatelliteStatus(WeakRetained, v6, v7);
  v11 = objc_msgSend_sharedInstance(IMChorosMonitor, v9, v10);
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v11, v12, v13);

  if (UsedSatelliteStatus != isSatelliteConnectionActive)
  {
    goto LABEL_4;
  }

  v15 = objc_loadWeakRetained(&self->_chat);
  UsedShowTextRoadsideProviderStatus = objc_msgSend_lastUsedShowTextRoadsideProviderStatus(v15, v16, v17);
  v21 = objc_msgSend_sharedInstance(IMChorosMonitor, v19, v20);
  shouldShowTextRoadsideProviderButton = objc_msgSend_shouldShowTextRoadsideProviderButton(v21, v22, v23);

  if (UsedShowTextRoadsideProviderStatus != shouldShowTextRoadsideProviderButton)
  {
    goto LABEL_4;
  }

  v25 = objc_loadWeakRetained(&self->_chat);
  UsedShowTextEmergencyServicesStatus = objc_msgSend_lastUsedShowTextEmergencyServicesStatus(v25, v26, v27);
  v31 = objc_msgSend_sharedInstance(IMChorosMonitor, v29, v30);
  shouldShowTextEmergencyServicesButton = objc_msgSend_shouldShowTextEmergencyServicesButton(v31, v32, v33);

  if (UsedShowTextEmergencyServicesStatus != shouldShowTextEmergencyServicesButton)
  {
    goto LABEL_4;
  }

  v39 = objc_msgSend_lastObject(itemsCopy, v35, v36);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = objc_loadWeakRetained(&self->_chat);
  v44 = objc_msgSend_account(v41, v42, v43);
  v47 = objc_msgSend_service(v44, v45, v46);
  v50 = objc_msgSend_iMessageLiteService(IMService, v48, v49);
  v51 = v50;
  if (v47 == v50)
  {

    LOBYTE(v37) = 1;
    goto LABEL_13;
  }

  v52 = objc_loadWeakRetained(&self->_chat);
  v55 = objc_msgSend_account(v52, v53, v54);
  v58 = objc_msgSend_service(v55, v56, v57);
  v61 = objc_msgSend_satelliteSMSService(IMService, v59, v60);

  if (v58 != v61)
  {
LABEL_9:
    v41 = objc_loadWeakRetained(&self->_chat);
    if (!objc_msgSend_isStewieChat(v41, v62, v63))
    {
      LOBYTE(v37) = 0;
LABEL_14:

      goto LABEL_5;
    }

    v44 = objc_loadWeakRetained(&self->_chat);
    shouldShowStewieResumeButtonsForChat = objc_msgSend__shouldShowStewieResumeButtonsForChat_(self, v64, v44);
    v66 = objc_opt_class();
    v37 = shouldShowStewieResumeButtonsForChat ^ sub_1A838F810(v66, itemsCopy, v66);
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  LOBYTE(v37) = 1;
LABEL_5:

  return v37;
}

- (id)_itemWithChatItemsDeleted:(id)deleted fromItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapOfItemsDeleted:(id *)ofItemsDeleted
{
  v40 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  itemCopy = item;
  objc_opt_class();
  v10 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    itemsDeletedCopy = itemsDeleted;
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = objc_msgSend_count(deletedCopy, v12, v13);
    v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = deletedCopy;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v31, v39, 16);
    if (v19)
    {
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_addObject_(v16, v23, v22);
          }

          else if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v36 = v22;
              v37 = 2112;
              v38 = itemCopy;
              _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Can only delete message parts. Tried to delete %@ from message:%@", buf, 0x16u);
            }
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v31, v39, 16);
      }

      while (v19);
    }

    v10 = objc_msgSend__messageItemWithPartsDeleted_fromMessageItem_indexesOfItemsDeleted_indexToRangeMapping_(IMMessagePartChatItem, v26, v16, itemCopy, itemsDeletedCopy, ofItemsDeleted);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_initWithChat:(id)chat
{
  chatCopy = chat;
  v12.receiver = self;
  v12.super_class = IMTranscriptChatItemRules;
  v5 = [(IMTranscriptChatItemRules *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chat, chatCopy);
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = objc_msgSend_initWithCapacity_(v7, v8, 10);
    chatItems = v6->_chatItems;
    v6->_chatItems = v9;
  }

  return v6;
}

- (void)_invalidateSpamIndicatorCachedValues
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  objc_msgSend_invalidateSpamIndicatorCachedValues(WeakRetained, v2, v3);
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

- (id)testChatItems
{
  v103[16] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v5 = objc_msgSend_participants(WeakRetained, v3, v4);

  v7 = objc_msgSend_objectAtIndex_(v5, v6, 0);
  v11 = 0;
  if (objc_msgSend_count(v5, v8, v9) >= 2)
  {
    v11 = objc_msgSend_objectAtIndex_(v5, v10, 1);
  }

  v78 = v11;
  v102 = v5;
  v12 = [IMGroupActionChatItem alloc];
  v101 = objc_alloc_init(MEMORY[0x1E69A8098]);
  objc_msgSend_setActionType_(v101, v13, 0);
  v100 = objc_msgSend__initWithItem_sender_(v12, v14, v101, 0);
  v103[0] = v100;
  v15 = [IMGroupActionChatItem alloc];
  v99 = objc_alloc_init(MEMORY[0x1E69A8098]);
  objc_msgSend_setActionType_(v99, v16, 0);
  v98 = objc_msgSend__initWithItem_sender_(v15, v17, v99, v7);
  v103[1] = v98;
  v18 = [IMGroupTitleChangeChatItem alloc];
  v97 = objc_alloc_init(MEMORY[0x1E69A80A0]);
  objc_msgSend_setTitle_(v97, v19, @"Vegas Trip");
  v96 = objc_msgSend__initWithItem_sender_(v18, v20, v97, 0);
  v103[2] = v96;
  v21 = [IMGroupTitleChangeChatItem alloc];
  v95 = objc_alloc_init(MEMORY[0x1E69A80A0]);
  objc_msgSend_setTitle_(v95, v22, @"Vegas Trip");
  v94 = objc_msgSend__initWithItem_sender_(v21, v23, v95, v7);
  v103[3] = v94;
  v24 = [IMParticipantChangeChatItem alloc];
  v93 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v93, v25, 0);
  v92 = objc_msgSend__initWithItem_sender_otherHandle_(v24, v26, v93, 0, v7);
  v103[4] = v92;
  v27 = [IMParticipantChangeChatItem alloc];
  v91 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v91, v28, 0);
  v90 = objc_msgSend__initWithItem_sender_otherHandle_(v27, v29, v91, v7, 0);
  v103[5] = v90;
  v30 = [IMParticipantChangeChatItem alloc];
  v89 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v89, v31, 0);
  v88 = objc_msgSend__initWithItem_sender_otherHandle_(v30, v32, v89, v7, v11);
  v103[6] = v88;
  v33 = [IMParticipantChangeChatItem alloc];
  v87 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v87, v34, 1);
  v86 = objc_msgSend__initWithItem_sender_otherHandle_(v33, v35, v87, 0, v7);
  v103[7] = v86;
  v36 = [IMParticipantChangeChatItem alloc];
  v85 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v85, v37, 1);
  v84 = objc_msgSend__initWithItem_sender_otherHandle_(v36, v38, v85, v7, 0);
  v103[8] = v84;
  v39 = [IMParticipantChangeChatItem alloc];
  v83 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  objc_msgSend_setChangeType_(v83, v40, 1);
  v82 = objc_msgSend__initWithItem_sender_otherHandle_(v39, v41, v83, v7, v11);
  v103[9] = v82;
  v42 = [IMLocationShareActionChatItem alloc];
  v81 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  objc_msgSend_setStatus_(v81, v43, 0);
  objc_msgSend_setDirection_(v81, v44, 0);
  v80 = objc_msgSend__initWithItem_sender_otherHandle_(v42, v45, v81, 0, v7);
  v103[10] = v80;
  v46 = [IMLocationShareActionChatItem alloc];
  v47 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  objc_msgSend_setStatus_(v47, v48, 1);
  objc_msgSend_setDirection_(v47, v49, 0);
  v79 = objc_msgSend__initWithItem_sender_otherHandle_(v46, v50, v47, 0, v7);
  v103[11] = v79;
  v51 = [IMLocationShareActionChatItem alloc];
  v52 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  objc_msgSend_setStatus_(v52, v53, 0);
  objc_msgSend_setDirection_(v52, v54, 1);
  v77 = objc_msgSend__initWithItem_sender_otherHandle_(v51, v55, v52, v7, 0);
  v103[12] = v77;
  v56 = [IMLocationShareActionChatItem alloc];
  v57 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  objc_msgSend_setStatus_(v57, v58, 1);
  objc_msgSend_setDirection_(v57, v59, 1);
  v61 = objc_msgSend__initWithItem_sender_otherHandle_(v56, v60, v57, v7, 0);
  v103[13] = v61;
  v62 = [IMTranscriptSharingChatItem alloc];
  v63 = objc_alloc_init(MEMORY[0x1E69A8300]);
  v65 = objc_msgSend__initWithItem_(v62, v64, v63);
  v103[14] = v65;
  v66 = [IMLocationUpdateSentChatItem alloc];
  v67 = objc_alloc_init(MEMORY[0x1E69A80F0]);
  v70 = objc_msgSend_ID(v7, v68, v69);
  v72 = objc_msgSend__initWithItem_chatIdentifier_(v66, v71, v67, v70);
  v103[15] = v72;
  v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v73, v103, 16);

  v74 = *MEMORY[0x1E69E9840];

  return v76;
}

@end