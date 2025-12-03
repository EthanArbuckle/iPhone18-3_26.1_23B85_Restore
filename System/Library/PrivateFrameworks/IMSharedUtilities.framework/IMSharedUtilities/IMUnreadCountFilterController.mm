@interface IMUnreadCountFilterController
+ (id)calculateExcludedFilterActions;
+ (unint64_t)calculateExcludes;
- (BOOL)_handlesAllowedByAssistiveAccess:(id)access;
- (BOOL)_handlesAllowedByFocus:(id)focus;
- (BOOL)_isReportTimeSensitive:(id)sensitive;
- (BOOL)_muteSettingsAllowReport:(id)report;
- (BOOL)allowUnreadCountReport:(id)report;
- (BOOL)shouldExcludeFilterActionForReport:(id)report;
- (BOOL)shouldIncludeForDefaultFilterMode:(id)mode;
- (IMUnreadCountFilterController)init;
- (id)_muteIdentifiersForReport:(id)report;
- (void)_defaultFilterModeUpdated:(id)updated;
- (void)_mutedChatListUpdated:(id)updated;
- (void)setRefreshHandler:(id)handler;
- (void)willBeginCalculatingUnreadCount;
@end

@implementation IMUnreadCountFilterController

- (IMUnreadCountFilterController)init
{
  v7.receiver = self;
  v7.super_class = IMUnreadCountFilterController;
  v2 = [(IMUnreadCountFilterController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if ([(IMUnreadCountFilterController *)v2 filtersMutedChats])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__mutedChatListUpdated_ name:@"__kIMMutedChatListDidChangeNotification" object:0];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__defaultFilterModeUpdated_ name:@"IMDefaultPrimaryConversationListFilterModeChangedNotification" object:0];
  }

  return v3;
}

- (void)willBeginCalculatingUnreadCount
{
  v3 = IMLogHandleForCategory("UnreadCount");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1A88C33A0(v3);
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    v5 = IMGetDomainBoolForKey();
  }

  else
  {
    v5 = 0;
  }

  [(IMUnreadCountFilterController *)self setFiltersMutedChats:v5];

  [(IMUnreadCountFilterController *)self setExcludes:+[IMUnreadCountFilterController calculateExcludes]];
  v6 = +[IMFocusStateManager sharedManager];
  -[IMUnreadCountFilterController setFilteredByFocus:](self, "setFilteredByFocus:", [v6 shouldFilterUnreadMessageCount]);

  v7 = +[IMAssistiveAccessCommunicationLimitManager sharedManager];
  -[IMUnreadCountFilterController setFilteredByAssistiveAccess:](self, "setFilteredByAssistiveAccess:", [v7 shouldFilterIncomingMessages]);
}

- (void)_mutedChatListUpdated:(id)updated
{
  refreshHandler = [(IMUnreadCountFilterController *)self refreshHandler];

  if (refreshHandler)
  {
    refreshHandler2 = [(IMUnreadCountFilterController *)self refreshHandler];
    refreshHandler2[2]();
  }
}

- (void)_defaultFilterModeUpdated:(id)updated
{
  refreshHandler = [(IMUnreadCountFilterController *)self refreshHandler];

  if (refreshHandler)
  {
    refreshHandler2 = [(IMUnreadCountFilterController *)self refreshHandler];
    refreshHandler2[2]();
  }
}

- (BOOL)_handlesAllowedByFocus:(id)focus
{
  v20 = *MEMORY[0x1E69E9840];
  focusCopy = focus;
  if ([(IMUnreadCountFilterController *)self filteredByFocus])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = focusCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          im_stripCategoryLabel = [*(*(&v15 + 1) + 8 * i) im_stripCategoryLabel];
          if ([im_stripCategoryLabel length])
          {
            [v5 addObject:im_stripCategoryLabel];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = +[IMFocusStateManager sharedManager];
    v13 = [v12 activeFocusModeMatchesConversationWithHandleStrings:v5];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_handlesAllowedByAssistiveAccess:(id)access
{
  accessCopy = access;
  if ([(IMUnreadCountFilterController *)self filteredByAssistiveAccess])
  {
    v5 = +[IMAssistiveAccessCommunicationLimitManager sharedManager];
    v6 = [v5 allowsConversationWithHandleIDs:accessCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_muteIdentifiersForReport:(id)report
{
  reportCopy = report;
  guid = [reportCopy guid];
  IMComponentsFromChatGUID();
  v5 = 0;

  v6 = +[IMMutedChatList sharedList];
  groupID = [reportCopy groupID];
  participants = [reportCopy participants];
  lastAddressedHandleID = [reportCopy lastAddressedHandleID];
  originalGroupID = [reportCopy originalGroupID];

  v11 = [v6 muteIdentifiersForChatStyle:0 groupID:groupID domainIdentifiers:MEMORY[0x1E695E0F8] participantIDs:participants lastAddressedHandleID:lastAddressedHandleID originalGroupID:originalGroupID chatIdentifier:v5];

  return v11;
}

- (BOOL)_muteSettingsAllowReport:(id)report
{
  reportCopy = report;
  if ([(IMUnreadCountFilterController *)self filtersMutedChats])
  {
    v5 = [(IMUnreadCountFilterController *)self _muteIdentifiersForReport:reportCopy];
    v6 = +[IMMutedChatList sharedList];
    v7 = [v6 isMutedChatForMuteIdentifiers:v5] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_isReportTimeSensitive:(id)sensitive
{
  sensitiveCopy = sensitive;
  v4 = [sensitiveCopy isFiltered] != 2 && objc_msgSend(sensitiveCopy, "timeSensitiveMessageCount") > 0;

  return v4;
}

- (BOOL)shouldExcludeFilterActionForReport:(id)report
{
  reportCopy = report;
  if ([(IMUnreadCountFilterController *)self _isReportTimeSensitive:reportCopy])
  {
    goto LABEL_2;
  }

  v5 = 0;
  v6 = [reportCopy isFiltered] & 0xF;
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_18;
      }

      if ((self->_excludes & 8) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_15;
    }

    if (self->_excludes)
    {
      goto LABEL_15;
    }

LABEL_2:
    v5 = 0;
    goto LABEL_18;
  }

  if (v6 == 3)
  {
    if ((self->_excludes & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_2;
  }

  if (v6 != 4)
  {
    goto LABEL_18;
  }

  if ((self->_excludes & 2) == 0)
  {
    goto LABEL_2;
  }

LABEL_15:
  v7 = IMLogHandleForCategory("UnreadCount");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1A88C3004(reportCopy);
  }

  v5 = 1;
LABEL_18:

  return v5;
}

- (void)setRefreshHandler:(id)handler
{
  v4 = _Block_copy(handler);
  self->_refreshHandler = v4;

  MEMORY[0x1EEE66BB8](v4);
}

- (BOOL)allowUnreadCountReport:(id)report
{
  reportCopy = report;
  if ([(IMUnreadCountFilterController *)self _isReportTimeSensitive:reportCopy])
  {
    goto LABEL_2;
  }

  if ([reportCopy isBlackholed])
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C331C(reportCopy);
    }

LABEL_22:

    v5 = 0;
    goto LABEL_23;
  }

  if ([reportCopy isArchived])
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C3298(reportCopy);
    }

    goto LABEL_22;
  }

  if (([reportCopy isFiltered] & 0xF) == 2 && (self->_excludes & 8) != 0)
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C3088(reportCopy);
    }

    goto LABEL_22;
  }

  participants = [reportCopy participants];
  v8 = [(IMUnreadCountFilterController *)self _handlesAllowedByFocus:participants];

  if (!v8)
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C310C(reportCopy);
    }

    goto LABEL_22;
  }

  participants2 = [reportCopy participants];
  v10 = [(IMUnreadCountFilterController *)self _handlesAllowedByAssistiveAccess:participants2];

  if (!v10)
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C3190(reportCopy);
    }

    goto LABEL_22;
  }

  if (![(IMUnreadCountFilterController *)self _muteSettingsAllowReport:reportCopy])
  {
    v6 = IMLogHandleForCategory("UnreadCount");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C3214(reportCopy);
    }

    goto LABEL_22;
  }

LABEL_2:
  v5 = 1;
LABEL_23:

  return v5;
}

- (BOOL)shouldIncludeForDefaultFilterMode:(id)mode
{
  modeCopy = mode;
  if ([(IMUnreadCountFilterController *)self allowUnreadCountReport:modeCopy])
  {
    v5 = ![(IMUnreadCountFilterController *)self shouldExcludeFilterActionForReport:modeCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)calculateExcludedFilterActions
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = +[IMNotificationSettings excludedFilterActions];
  if (+[IMNotificationSettings isFilterUnknownSendersEnabled](IMNotificationSettings, "isFilterUnknownSendersEnabled") && ([v2 containsObject:&unk_1F1BFA6D0] & 1) == 0)
  {
    v3 = [v2 arrayByAddingObject:&unk_1F1BFA6D0];

    v2 = v3;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  v4 = 0;
  if (v18)
  {
    v17 = *v25;
    do
    {
      v5 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v5;
        v6 = *(*(&v24 + 1) + 8 * v5);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = +[IMSMSFilterCapabilitiesBinder subActionsForAction:](IMSMSFilterCapabilitiesBinder, "subActionsForAction:", [v6 integerValue]);
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * i);
              if (!v4)
              {
                v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "integerValue") & 0xF | (16 * objc_msgSend(v12, "integerValue"))}];
              [v4 addObject:v13];
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }

        v5 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v14 = [obj arrayByAddingObjectsFromArray:v4];

  return v14;
}

+ (unint64_t)calculateExcludes
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[IMNotificationSettings excludedFilterActions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) integerValue] & 0xF;
        if (v8 > 2)
        {
          if (v8 == 3)
          {
            v5 |= 4uLL;
          }

          else if (v8 == 4)
          {
            v5 |= 2uLL;
          }
        }

        else if (v8 == 1)
        {
          v5 |= 1uLL;
        }

        else if (v8 == 2)
        {
          v5 |= 8uLL;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end