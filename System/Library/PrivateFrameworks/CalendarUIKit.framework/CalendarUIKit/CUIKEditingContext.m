@interface CUIKEditingContext
+ (int64_t)spanFromSpanDecision:(unint64_t)a3;
+ (unint64_t)spanDecisionFromSpan:(int64_t)a3;
+ (void)postLiveEditNotificationForObject:(id)a3;
- (BOOL)_allObjectsAreCalendars;
- (BOOL)_allObjectsAreEvents;
- (BOOL)_allObjectsAreItems;
- (BOOL)_deleteIsUndoable;
- (BOOL)_doManualDelete;
- (BOOL)_earlyCommitDecisionSpecified;
- (BOOL)_editingObjectsNeverCommitted;
- (BOOL)_hasChangesRequiringSpanAllAndSpanIsThis;
- (BOOL)_hasChangesToSave;
- (BOOL)_prepareForCommitWithDecision:(unint64_t)a3 shouldClose:(BOOL *)a4;
- (BOOL)_requestEarlyCommitDecisionAtSaveTimeForAction:(unint64_t)a3;
- (BOOL)_requestSaveAndSpanDecisionIfNeededForAction:(unint64_t)a3;
- (BOOL)_requestSaveDecisionIfNeededForAction:(unint64_t)a3 diffSummary:(id)a4 delegate:(id)a5;
- (BOOL)_requestSpanDecisionIfNeededForAction:(unint64_t)a3 diffSummary:(id)a4 delegate:(id)a5;
- (BOOL)_saveActionIsDecline;
- (BOOL)_savePartialChangeAndPostNotification:(BOOL)a3;
- (BOOL)_shouldSilentlyTransitionToSpanAllAfterSave;
- (BOOL)_spanDecisionSpecified;
- (BOOL)addAllObjects;
- (BOOL)deleteAllObjects;
- (BOOL)performUndoableOperation:(id)a3;
- (BOOL)saveCompleteChangeAndClose:(BOOL)a3 error:(id *)a4;
- (BOOL)saveCompleteChangeWithImpliedCommitDecisionAndClose:(BOOL)a3 error:(id *)a4;
- (CUIKCommitDelegate)commitDelegate;
- (CUIKDecisionDelegate)decisionDelegate;
- (CUIKEditingContext)initWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5;
- (CUIKEditingContextGroup)group;
- (CUIKEditingContextObserver)observer;
- (CUIKEditingManager)editingManager;
- (CUIKUndoDelegate)undoDelegate;
- (id)_diffSummarySinceLastSave;
- (id)changeUserInfoForObjects:(id)a3;
- (id)trackedObjects;
- (int64_t)_currentSpan;
- (unint64_t)_actionToCommit;
- (unint64_t)_currentSpanDecision;
- (unint64_t)_earlyCommitDecision;
- (unint64_t)_requestCommitDecisionIfNeededForAction:(unint64_t)a3;
- (void)_cancelCurrentSave;
- (void)_clearLiveChanges;
- (void)_earlyCommitDecisionSpecified;
- (void)_setAllObjectsToDontNotify;
- (void)_specifyEarlyCommitDecision:(unint64_t)a3;
- (void)_specifySpanDecision:(unint64_t)a3;
- (void)_unspecifyEarlyCommitDecision;
- (void)_unspecifySpanDecision;
- (void)addOriginalIdentifiersForObjectsBeingEdited:(id)a3;
- (void)createAutoBugCapture;
- (void)hide;
- (void)notifyObservers;
- (void)postLiveEditNotificationForEditedObjects;
- (void)revert:(BOOL)a3;
- (void)setObjectsBeingEdited:(id)a3;
- (void)trackedObjectsDidRevert:(id)a3;
- (void)trackedObjectsDidUpdate:(id)a3;
- (void)unhide;
@end

@implementation CUIKEditingContext

- (CUIKEditingContext)initWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_1CAB19000, v10, OS_LOG_TYPE_DEBUG, "Creating context %@ with objects %@ and observer %@", buf, 0x20u);
  }

  v16.receiver = self;
  v16.super_class = CUIKEditingContext;
  v11 = [(CUIKEditingContext *)&v16 init];
  if (v11)
  {
    v12 = [v8 firstObject];
    v13 = [v12 eventStore];
    eventStore = v11->_eventStore;
    v11->_eventStore = v13;

    [(CUIKEditingContext *)v11 setObjectsBeingEdited:v8];
    [(CUIKEditingContext *)v11 setInterfaceType:a4];
    [(CUIKEditingContext *)v11 setObserver:v9];
  }

  return v11;
}

- (void)setObjectsBeingEdited:(id)a3
{
  objc_storeStrong(&self->_objectsBeingEdited, a3);
  v5 = a3;
  [(CUIKEditingContext *)self addOriginalIdentifiersForObjectsBeingEdited:v5];
}

- (void)addOriginalIdentifiersForObjectsBeingEdited:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEventStore *)self->_eventStore uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:v4];
  v6 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];

  if (v6)
  {
    v7 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];
    v8 = [v7 setByAddingObjectsFromSet:v5];
    [(CUIKEditingContext *)self setOriginalIdentifiersForObjectsBeingEdited:v8];
  }

  else
  {
    [(CUIKEditingContext *)self setOriginalIdentifiersForObjectsBeingEdited:v5];
  }

  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 eventOccurrenceID];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];

  if (v17)
  {
    v18 = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];
    v19 = [v18 setByAddingObjectsFromSet:v9];
    [(CUIKEditingContext *)self setOriginalEventOccurrenceIDsForObjectsBeingEdited:v19];
  }

  else
  {
    [(CUIKEditingContext *)self setOriginalEventOccurrenceIDsForObjectsBeingEdited:v9];
  }
}

- (BOOL)_allObjectsAreItems
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)_allObjectsAreEvents
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)_allObjectsAreCalendars
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)addAllObjects
{
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext addAllObjects];
  }

  [(CUIKEditingContext *)self _markAsActive];
  v4 = [CUIKUndoManager operationForAction:1 context:self];
  v5 = [(CUIKEditingContext *)self performUndoableOperation:v4];

  return v5;
}

- (BOOL)deleteAllObjects
{
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext deleteAllObjects];
  }

  if ([(CUIKEditingContext *)self _requestSaveAndSpanDecisionIfNeededForAction:4]&& [(CUIKEditingContext *)self _requestEarlyCommitDecisionAtSaveTimeForAction:4])
  {
    v4 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext deleteAllObjects];
    }

    [(CUIKEditingContext *)self _markAsActive];
    if ([(CUIKEditingContext *)self _earlyCommitDecision]== 2)
    {
      [(CUIKEditingContext *)self _setAllObjectsToDontNotify];
    }

    v5 = [(CUIKEditingContext *)self _editingObjectsNeverCommitted];
    if ([(CUIKEditingContext *)self _deleteIsUndoable])
    {
      v6 = [CUIKUndoManager operationForAction:4 context:self];
      v7 = [(CUIKEditingContext *)self performUndoableOperation:v6];
    }

    else
    {
      v7 = [(CUIKEditingContext *)self _doManualDelete];
    }

    if (v7 && v5)
    {
      [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_editingObjectsNeverCommitted
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) hasEverBeenCommitted])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_deleteIsUndoable
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(CUIKEditingContext *)self _allObjectsAreCalendars])
  {
    return 1;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CUIKEditingContext *)self objectsBeingEdited];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) isSubscribed])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (BOOL)_doManualDelete
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(CUIKEditingContext *)self _allObjectsAreCalendars];
  if (v3)
  {
    v20 = v3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(CUIKEditingContext *)self objectsBeingEdited];
    v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = v4;
    v6 = *v26;
    v7 = 0x1E6959000uLL;
    v8 = 0x1E6992000uLL;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 isSubscribedHolidayCalendar])
        {
          v11 = objc_alloc_init(*(v7 + 2632));
          [*(v8 + 4032) setHolidayCalendarIsEnabled:0 withAccountStore:v11];
        }

        else
        {
          if (![v10 isSubscribed])
          {
            goto LABEL_16;
          }

          v11 = [v10 subcalAccountID];
          v12 = objc_alloc_init(*(v7 + 2632));
          v13 = [v12 accountWithIdentifier:v11];
          if (v13)
          {
            v14 = [MEMORY[0x1E69998A8] sharedConnection];
            v15 = v5;
            v16 = v7;
            v17 = [v14 requestDaemonStopMonitoringAgents];

            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __37__CUIKEditingContext__doManualDelete__block_invoke;
            v22[3] = &unk_1E839A238;
            v24 = v17;
            v7 = v16;
            v5 = v15;
            v8 = 0x1E6992000;
            v23 = v11;
            [v12 removeAccount:v13 withCompletionHandler:v22];
            v18 = v23;
          }

          else
          {
            v18 = +[CUIKLogSubsystem editingContext];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v11;
              _os_log_error_impl(&dword_1CAB19000, v18, OS_LOG_TYPE_ERROR, "Can't find account with ID %{public}@ for calendar being removed", buf, 0xCu);
            }
          }
        }

LABEL_16:
        [v10 CUIKEditingContext_removeWithSpan:0];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (!v5)
      {
LABEL_18:

        LOBYTE(v3) = v20;
        return v3;
      }
    }
  }

  return v3;
}

void __37__CUIKEditingContext__doManualDelete__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E69998A8] sharedConnection];
  [v6 requestDaemonStartMonitoringAgentsWithToken:*(a1 + 40)];

  v7 = +[CUIKLogSubsystem editingContext];
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __37__CUIKEditingContext__doManualDelete__block_invoke_cold_2(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __37__CUIKEditingContext__doManualDelete__block_invoke_cold_1(a1);
  }
}

- (BOOL)saveCompleteChangeWithImpliedCommitDecisionAndClose:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext saveCompleteChangeWithImpliedCommitDecisionAndClose:error:];
  }

  [(CUIKEditingContext *)self _specifyEarlyCommitDecision:1];
  return [(CUIKEditingContext *)self saveCompleteChangeAndClose:v5 error:a4];
}

- (BOOL)saveCompleteChangeAndClose:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext saveCompleteChangeAndClose:error:];
  }

  if (![(CUIKEditingContext *)self _hasChangesToSave])
  {
    v10 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext saveCompleteChangeAndClose:error:];
    }

    v11 = 1;
    goto LABEL_11;
  }

  [(CUIKEditingContext *)self _savePartialChangeAndPostNotification:0];
  v8 = [(CUIKEditingContext *)self _hasChangesRequiringSpanAllAndSpanIsThis];
  if (v8)
  {
    v9 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext saveCompleteChangeAndClose:error:];
    }

    [(CUIKEditingContext *)self _unspecifySpanDecision];
  }

  else if ([(CUIKEditingContext *)self _shouldSilentlyTransitionToSpanAllAfterSave])
  {
    v14 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext saveCompleteChangeAndClose:error:];
    }

    v15 = 1;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  v16 = [(CUIKEditingContext *)self _saveActionIsDecline];
  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = [(CUIKEditingContext *)self _requestSaveAndSpanDecisionIfNeededForAction:v17];
  if (v16 && v18)
  {
    LOBYTE(v18) = [(CUIKEditingContext *)self _requestEarlyCommitDecisionAtSaveTimeForAction:3];
  }

  if (!v18)
  {
    [(CUIKEditingContext *)self _cancelCurrentSave];
    v11 = 0;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_12;
  }

  [(CUIKEditingContext *)self _markAsActive];
  v10 = [CUIKUndoManager operationForAction:2 context:self];
  v11 = [(CUIKEditingContext *)self performUndoableOperation:v10];
  if (!v5)
  {
    [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
  }

  if (v8)
  {
    [(CUIKEditingContext *)self _unspecifySpanDecision];
  }

  else if (v15)
  {
    [(CUIKEditingContext *)self _specifySpanDecision:2];
  }

  v19 = [v10 error];

  if (a4 && v19)
  {
    *a4 = [v10 error];
  }

LABEL_11:

  if (v5)
  {
LABEL_12:
    v12 = [(CUIKEditingContext *)self editingManager];
    [v12 closeEditingContext:self];
  }

  return v11;
}

- (BOOL)_hasChangesToSave
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (v5)
        {
          v5 = 1;
          goto LABEL_12;
        }

        v5 = [*(*(&v9 + 1) + 8 * i) hasUnsavedChanges];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:

  return v5;
}

- (BOOL)_hasChangesRequiringSpanAllAndSpanIsThis
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CUIKEditingContext *)self _currentSpan])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(CUIKEditingContext *)self objectsBeingEdited];
    v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 hasChangesRequiringSpanAll])
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v3;
}

- (BOOL)_shouldSilentlyTransitionToSpanAllAfterSave
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CUIKEditingContext *)self _currentSpan])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(CUIKEditingContext *)self objectsBeingEdited];
    v3 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v5 = *v14;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 recurrenceRuleString];
            if (v8)
            {
              v9 = v8;
              v10 = [v7 shallowCopyWithoutChanges];
              v11 = [v10 recurrenceRuleString];

              if (!v11)
              {
                LOBYTE(v3) = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v3;
}

- (BOOL)_saveActionIsDecline
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CUIKEditingContext *)self _diffSummarySinceLastSave];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69668B0]];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CUIKEditingContext *)self objectsBeingEdited];
    v4 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) selfAttendee];
          v9 = [v8 participantStatus];

          if (v9 == 3)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v4;
}

- (id)_diffSummarySinceLastSave
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CUIKEditingContext *)self objectsBeingEdited];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v10 = [v9 shallowCopyWithoutChanges];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_12:
          v12 = 0;
          goto LABEL_13;
        }

        v11 = [MEMORY[0x1E6966A60] diffSummaryBetweenObject:v10 andObject:v9];
        [v3 addEntriesFromDictionary:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = v3;
LABEL_13:

  return v12;
}

- (BOOL)_requestSaveAndSpanDecisionIfNeededForAction:(unint64_t)a3
{
  v5 = [(CUIKEditingContext *)self decisionDelegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(CUIKEditingContext *)self _diffSummarySinceLastSave];
    v7 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _requestSaveAndSpanDecisionIfNeededForAction:];
    }

    if ([(CUIKEditingContext *)self _requestSaveDecisionIfNeededForAction:a3 diffSummary:v6 delegate:v5])
    {
      v8 = [(CUIKEditingContext *)self _requestSpanDecisionIfNeededForAction:a3 diffSummary:v6 delegate:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_requestSaveDecisionIfNeededForAction:(unint64_t)a3 diffSummary:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (-[CUIKEditingContext _allObjectsAreItems](self, "_allObjectsAreItems") && (-[CUIKEditingContext objectsBeingEdited](self, "objectsBeingEdited"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 shouldSaveForItems:v10 forEditingAction:a3 diffSummary:v8], v10, (v11 & 1) == 0))
  {
    v13 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _requestSaveDecisionIfNeededForAction:diffSummary:delegate:];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_requestSpanDecisionIfNeededForAction:(unint64_t)a3 diffSummary:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(CUIKEditingContext *)self _spanDecisionSpecified]|| ![(CUIKEditingContext *)self _allObjectsAreEvents])
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v10 = [(CUIKEditingContext *)self objectsBeingEdited];
  v11 = [v9 spanDecisionForEvents:v10 forEditingAction:a3 diffSummary:v8];

  v12 = +[CUIKLogSubsystem editingContext];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 != 4)
  {
    if (v13)
    {
      [CUIKEditingContext _requestSpanDecisionIfNeededForAction:diffSummary:delegate:];
    }

    [(CUIKEditingContext *)self _specifySpanDecision:v11];
    goto LABEL_10;
  }

  if (v13)
  {
    [CUIKEditingContext _requestSaveDecisionIfNeededForAction:diffSummary:delegate:];
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)_cancelCurrentSave
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _cancelCurrentSave];
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v20 + 1) + 8 * v9) shallowCopyWithoutChanges];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v11 = [(CUIKEditingContext *)self objectsBeingEdited];
  [(CUIKEditingContext *)self setObjectsBeingEdited:v4];
  [(CUIKEditingContext *)self _clearLiveChanges];
  v12 = [(CUIKEditingContext *)self observer];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    if ([v4 count])
    {
      v14 = 0;
      do
      {
        v15 = [v11 objectAtIndexedSubscript:v14];
        v16 = [v4 objectAtIndexedSubscript:v14];
        v17 = [(CUIKEditingContext *)self observer];
        v18 = [v17 oldObject:v15 didUpdateTo:v16];

        ++v14;
      }

      while ([v4 count] > v14);
    }

    v19 = [(CUIKEditingContext *)self observer];
    [v19 saveCancelled];
  }
}

- (void)_clearLiveChanges
{
  v3 = [(CUIKEditingContext *)self editingManager];
  v4 = [(CUIKEditingContext *)self objectsBeingEdited];
  [v3 clearLiveChangesForObjects:v4];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (BOOL)_requestEarlyCommitDecisionAtSaveTimeForAction:(unint64_t)a3
{
  v4 = [(CUIKEditingContext *)self _requestCommitDecisionIfNeededForAction:a3];
  if (v4 == 4)
  {
    v5 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _requestEarlyCommitDecisionAtSaveTimeForAction:];
    }
  }

  else
  {
    [(CUIKEditingContext *)self _specifyEarlyCommitDecision:v4];
  }

  return v4 != 4;
}

- (unint64_t)_requestCommitDecisionIfNeededForAction:(unint64_t)a3
{
  v5 = [(CUIKEditingContext *)self _earlyCommitDecision];
  v6 = [(CUIKEditingContext *)self decisionDelegate];
  if (v6)
  {
    if ([(CUIKEditingContext *)self _allObjectsAreItems]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [(CUIKEditingContext *)self objectsBeingEdited];
      v8 = [v6 editingContext:self commitDecisionForItems:v7 forEditingAction:a3 userImpliedDecision:v5 != 0 withSpanDecision:{-[CUIKEditingContext _currentSpanDecision](self, "_currentSpanDecision")}];
LABEL_8:
      v5 = v8;

      goto LABEL_9;
    }

    if ([(CUIKEditingContext *)self _allObjectsAreCalendars]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [(CUIKEditingContext *)self objectsBeingEdited];
      v8 = [v6 commitDecisionForCalendars:v7 forEditingAction:a3];
      goto LABEL_8;
    }
  }

LABEL_9:
  v9 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _requestCommitDecisionIfNeededForAction:];
  }

  v10 = [(CUIKEditingContext *)self _earlyCommitDecision];
  if (v5 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (unint64_t)_currentSpanDecision
{
  if (![(CUIKEditingContext *)self _spanDecisionSpecified])
  {
    return 0;
  }

  v3 = [(CUIKEditingContext *)self group];
  v4 = [v3 spanDecisionForGroup];

  return v4;
}

- (int64_t)_currentSpan
{
  v3 = objc_opt_class();
  v4 = [(CUIKEditingContext *)self _currentSpanDecision];

  return [v3 spanFromSpanDecision:v4];
}

- (BOOL)_spanDecisionSpecified
{
  v2 = [(CUIKEditingContext *)self group];
  v3 = [v2 spanDecisionForGroupIsSet];

  return v3;
}

- (void)_specifySpanDecision:(unint64_t)a3
{
  v4 = [(CUIKEditingContext *)self group];
  [v4 specifySpanDecisionForGroup:a3];
}

- (void)_unspecifySpanDecision
{
  v2 = [(CUIKEditingContext *)self group];
  [v2 unspecifySpanDecisionForGroup];
}

- (unint64_t)_earlyCommitDecision
{
  if (![(CUIKEditingContext *)self _earlyCommitDecisionSpecified])
  {
    return 0;
  }

  v3 = [(CUIKEditingContext *)self group];
  v4 = [v3 earlyCommitDecisionForGroup];

  return v4;
}

- (BOOL)_earlyCommitDecisionSpecified
{
  v2 = [(CUIKEditingContext *)self group];
  v3 = [v2 earlyCommitDecisionForGroupIsSet];

  v4 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _earlyCommitDecisionSpecified];
  }

  return v3;
}

- (void)_specifyEarlyCommitDecision:(unint64_t)a3
{
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _specifyEarlyCommitDecision:];
  }

  v6 = [(CUIKEditingContext *)self group];
  [v6 specifyEarlyCommitDecisionForGroup:a3];
}

- (void)_unspecifyEarlyCommitDecision
{
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _unspecifyEarlyCommitDecision];
  }

  v4 = [(CUIKEditingContext *)self group];
  [v4 unspecifyEarlyCommitDecisionForGroup];
}

- (void)_setAllObjectsToDontNotify
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _setAllObjectsToDontNotify];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CUIKEditingContext *)self objectsBeingEdited];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 setSuppressNotificationForChanges:1];
          v11 = [v10 eventStore];
          v12 = self;
          v13 = [(CUIKEditingContext *)self _currentSpan];
          v18 = v6;
          v14 = [v11 saveEvent:v10 span:v13 commit:0 error:&v18];
          v15 = v18;

          if ((v14 & 1) == 0)
          {
            v16 = +[CUIKLogSubsystem editingContext];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v15;
              _os_log_error_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_ERROR, "Failed to save event with dontNotify with error %@", buf, 0xCu);
            }
          }

          v6 = v15;
          self = v12;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }
}

- (BOOL)_savePartialChangeAndPostNotification:(BOOL)a3
{
  v14 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        [(CUIKEditingContext *)self _markAsActive];
        v11 = [(CUIKEditingContext *)self editingManager];
        [v11 partialSaveObject:v10];

        v12 = [v10 specificIdentifier];
        [v4 setObject:v10 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(CUIKEditingContext *)self trackedObjectsDidUpdate:v4];
  [(CUIKEditingContext *)self notifyObservers];
  if (v14)
  {
    [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
  }

  return 1;
}

- (void)postLiveEditNotificationForEditedObjects
{
  v3 = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [(CUIKEditingContext *)self changeUserInfoForObjects:v3];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [(CUIKEditingContext *)self _eventStore];
  if (v6)
  {
    [v4 postNotificationName:@"CUIKLiveEditNotification" object:v5 userInfo:v6];
  }

  else
  {
    [v4 postNotificationName:@"CUIKLiveEditNotification" object:v5];
  }
}

+ (void)postLiveEditNotificationForObject:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 eventStore];
  v12[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = [v4 uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:v5];

  if ([v6 count])
  {
    v10 = @"CUIKLiveEditNotificationModifiedObjectUniqueIdentifiersUserInfoKey";
    v11 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [v3 eventStore];
  [v8 postNotificationName:@"CUIKLiveEditNotification" object:v9 userInfo:v7];
}

- (id)changeUserInfoForObjects:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self->_eventStore uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:a3];
  v5 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];

  if (v5)
  {
    v6 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  if ([v4 count])
  {
    v8 = MEMORY[0x1E695DF90];
    v12 = @"CUIKLiveEditNotificationModifiedObjectUniqueIdentifiersUserInfoKey";
    v13[0] = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 dictionaryWithDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)hide
{
  v3 = [(CUIKEditingContext *)self editingManager];
  v4 = [(CUIKEditingContext *)self objectsBeingEdited];
  [v3 hide:v4];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (void)unhide
{
  v3 = [(CUIKEditingContext *)self editingManager];
  v4 = [(CUIKEditingContext *)self objectsBeingEdited];
  [v3 unhide:v4];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (void)revert:(BOOL)a3
{
  v3 = a3;
  v5 = [CUIKUndoManager operationForAction:5 context:self];
  if (v3)
  {
    v6 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext revert:];
    }

    [(CUIKEditingContext *)self performUndoableOperation:v5];
  }

  else
  {
    v7 = [(CUIKEditingContext *)self undoDelegate];
    [v5 executeWithUndoDelegate:v7];
  }

  [(CUIKEditingContext *)self _clearLiveChanges];
  [(CUIKEditingContext *)self _unspecifyEarlyCommitDecision];
  [(CUIKEditingContext *)self _cancelCurrentSave];
}

- (void)createAutoBugCapture
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"EditingContext" subtype:@"UnexpectedDiff" context:0];
  v23 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0x1E6966000uLL;
    v6 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 diffFromCommitted];
          if ([v10 result])
          {
            v25 = [v9 exportToICSWithOptions:1];
            v11 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:v25 options:0 error:0];
            v12 = [v11 ICSStringWithOptions:0];
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = &stru_1F4AA8958;
            }

            v30[0] = @"ICS";
            v30[1] = @"Diff";
            v31[0] = v14;
            v15 = [v10 summaryString];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = &stru_1F4AA8958;
            }

            v31[1] = v17;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
            v18 = v4;
            v19 = v6;
            v21 = v20 = v5;
            [v23 addObject:v21];

            v5 = v20;
            v6 = v19;
            v4 = v18;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  [v22 setEvents:v23];
  [v22 report];
}

- (BOOL)_prepareForCommitWithDecision:(unint64_t)a3 shouldClose:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 1;
  }

  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
  }

  if ([(CUIKEditingContext *)self _earlyCommitDecision]== 4)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
    }

    [(CUIKEditingContext *)self _revert];
    goto LABEL_9;
  }

  v10 = [(CUIKEditingContext *)self _earlyCommitDecision];
  if (v10 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  [(CUIKEditingContext *)self _specifyEarlyCommitDecision:v11];
  v12 = [(CUIKEditingContext *)self _actionToCommit];
  if (![(CUIKEditingContext *)self _allObjectsAreEvents]|| !v12)
  {
LABEL_57:
    [(CUIKEditingContext *)self _markAsInactive];
    v9 = 1;
    if (!a4)
    {
LABEL_61:
      [(CUIKEditingContext *)self _unspecifyEarlyCommitDecision];
      return v9;
    }

LABEL_58:
    v25 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
    }

    goto LABEL_61;
  }

  v13 = [(CUIKEditingContext *)self _requestCommitDecisionIfNeededForAction:v12];
  if (v13 > 4)
  {
    if (v13 != 5)
    {
      if (v13 == 6)
      {
        v22 = +[CUIKLogSubsystem editingContext];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
        }

        if (a4)
        {
          *a4 = 1;
        }

        [(CUIKEditingContext *)self deleteAllObjects];
      }

      else if (v13 == 7)
      {
        v14 = +[CUIKLogSubsystem editingContext];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
        }

        if (a4)
        {
          v15 = [(CUIKEditingContext *)self commitDelegate];
          if (v15)
          {
            v16 = [(CUIKEditingContext *)self commitDelegate];
            *a4 = [v16 contextShouldStayOpenWhenCommitIsDeferred] ^ 1;
          }

          else
          {
            *a4 = 1;
          }
        }

        v27 = [(CUIKEditingContext *)self commitDelegate];
        v28 = [(CUIKEditingContext *)self objectsBeingEdited];
        v29 = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];
        [v27 commitDeferredForObjects:v28 originalIdentifiers:v29];

LABEL_9:
        v9 = 0;
        if (!a4)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v21 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
    }

    [(CUIKEditingContext *)self _revert];
    if (!a4)
    {
      goto LABEL_52;
    }

    v18 = [(CUIKEditingContext *)self commitDelegate];
    if (v18)
    {
      v19 = [(CUIKEditingContext *)self commitDelegate];
      v20 = [v19 contextShouldStayOpenWhenCommitIsReverted];
      goto LABEL_37;
    }

    goto LABEL_50;
  }

  if (v13 != 2)
  {
    if (v13 != 4)
    {
      goto LABEL_57;
    }

    v17 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
    }

    [(CUIKEditingContext *)self _revert];
    if (!a4)
    {
      goto LABEL_52;
    }

    v18 = [(CUIKEditingContext *)self commitDelegate];
    if (v18)
    {
      v19 = [(CUIKEditingContext *)self commitDelegate];
      v20 = [v19 contextShouldStayOpenWhenCommitIsCanceled];
LABEL_37:
      *a4 = v20 ^ 1;

LABEL_51:
LABEL_52:
      v24 = 1;
      goto LABEL_53;
    }

LABEL_50:
    *a4 = 1;
    goto LABEL_51;
  }

  v23 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (v12 == 2)
  {
    [(CUIKEditingContext *)self _setAllObjectsToDontNotify];
  }

  v24 = 0;
LABEL_53:
  if (![(CUIKEditingContext *)self _actionToCommit]|| ([(CUIKEditingContext *)self createAutoBugCapture], !a4))
  {
    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

  v9 = 1;
  *a4 = 1;
  return v9;
}

- (unint64_t)_actionToCommit
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isDeleted])
        {
          v5 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 isDifferentFromCommitted];
          }

          else
          {
            v9 = [v8 hasChanges];
          }

          if (v9)
          {
            v5 = 2;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)performUndoableOperation:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingContext *)self editingManager];
  v6 = [(CUIKEditingContext *)self objectsBeingEdited];
  [v5 clearLiveChangesForObjects:v6];

  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext performUndoableOperation:];
  }

  v8 = [(CUIKEditingContext *)self undoDelegate];
  v9 = [v4 executeWithUndoDelegate:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v4 error];
    [(CUIKEditingContext *)self setError:v10];
  }

  v11 = [(CUIKEditingContext *)self undoDelegate];
  [v11 handleUndoForOperation:v4];

  return v9;
}

- (id)trackedObjects
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(CUIKEditingContext *)self isOpen])
  {
    goto LABEL_20;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 specificIdentifier];
        [v4 addObject:v11];

        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(CUIKEditingContext *)self group];
  v13 = [v12 trackedObjects];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [v18 specificIdentifier];
        if (([v4 containsObject:v19] & 1) == 0)
        {
          [v3 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v20 = [v3 count];
  if (!v20)
  {

LABEL_20:
    v3 = 0;
  }

  return v3;
}

- (void)trackedObjectsDidUpdate:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v4 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext trackedObjectsDidUpdate:v4];
  }

  if ([(CUIKEditingContext *)self isOpen])
  {
    v37 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = self;
    obj = [(CUIKEditingContext *)self objectsBeingEdited];
    v7 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 specificIdentifier];
            v14 = [v38 objectForKeyedSubscript:v13];

            if (v14 || (-[CUIKEditingContext group](v35, "group"), v19 = objc_claimAutoreleasedReturnValue(), [v12 specificIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "newIdentifierForIdentifier:", v20), v20, v19, v21) && (objc_msgSend(v38, "objectForKeyedSubscript:", v21), v14 = objc_claimAutoreleasedReturnValue(), v21, v14))
            {
              [v37 addObject:v14];
              v15 = [v14 specificIdentifier];
              [v5 addObject:v15];

              v16 = v14;
              v17 = v16;
            }

            else
            {
              v16 = [MEMORY[0x1E695DFB0] null];
              v17 = 0;
            }

            v50[0] = v12;
            v50[1] = v16;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
            [v6 addObject:v22];
          }

          else
          {
            v49[0] = v11;
            v49[1] = v11;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
            [v6 addObject:v18];

            [v37 addObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v8);
    }

    [(CUIKEditingContext *)v35 setObjectsBeingEdited:v37];
    v23 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = [(CUIKEditingContext *)v35 group];
    v25 = [v24 trackedObjects];

    v26 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v39 + 1) + 8 * j);
          v31 = [v30 specificIdentifier];
          if (([v5 containsObject:v31] & 1) == 0)
          {
            v32 = [v38 objectForKeyedSubscript:v31];
            v33 = v32;
            if (v32)
            {
              v47[0] = v30;
              v47[1] = v32;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
              [v23 addObject:v34];
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }

    [(CUIKEditingContext *)v35 setPendingObserverUpdates:v6];
    [(CUIKEditingContext *)v35 setPendingGroupUpdates:v23];
  }
}

- (void)notifyObservers
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(CUIKEditingContext *)self pendingObserverUpdates];
  v3 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    v28 = v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [v7 objectAtIndexedSubscript:{0, v28}];
        v9 = [v7 objectAtIndexedSubscript:1];
        v10 = [MEMORY[0x1E695DFB0] null];
        v11 = [v9 isEqual:v10];

        if (v11)
        {

          v9 = 0;
        }

        if (([MEMORY[0x1E696AF00] isMainThread] & 1) != 0 || (-[CUIKEditingContext observer](self, "observer"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isTestObserver"), v12, v13))
        {
          v14 = [(CUIKEditingContext *)self observer];
          v15 = [v14 oldObject:v8 didUpdateTo:v9];
        }

        else
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v35[0] = __37__CUIKEditingContext_notifyObservers__block_invoke;
          v35[1] = &unk_1E839A260;
          v35[2] = self;
          v36 = v8;
          v37 = v9;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v4);
  }

  [(CUIKEditingContext *)self setPendingObserverUpdates:0];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [(CUIKEditingContext *)self pendingGroupUpdates];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v21 objectAtIndexedSubscript:1];
        v24 = [MEMORY[0x1E695DFB0] null];
        v25 = [v23 isEqual:v24];

        if (v25)
        {

          v23 = 0;
        }

        v26 = [(CUIKEditingContext *)self group];
        v27 = [v26 oldObject:v22 didUpdateTo:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v18);
  }

  [(CUIKEditingContext *)self setPendingGroupUpdates:0];
}

void __37__CUIKEditingContext_notifyObservers__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observer];
  v2 = [v3 oldObject:*(a1 + 40) didUpdateTo:*(a1 + 48)];
}

- (void)trackedObjectsDidRevert:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = [(CUIKEditingContext *)self group];
  v5 = [v7 originalObjects];
  v6 = [v4 initWithArray:v5 copyItems:1];
  [(CUIKEditingContext *)self setObjectsBeingEdited:v6];
}

+ (int64_t)spanFromSpanDecision:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1CAD58068[a3 - 1];
  }
}

+ (unint64_t)spanDecisionFromSpan:(int64_t)a3
{
  if (a3 > 4)
  {
    return 4;
  }

  else
  {
    return qword_1CAD58080[a3];
  }
}

- (CUIKEditingContextGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (CUIKEditingManager)editingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_editingManager);

  return WeakRetained;
}

- (CUIKDecisionDelegate)decisionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_decisionDelegate);

  return WeakRetained;
}

- (CUIKUndoDelegate)undoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_undoDelegate);

  return WeakRetained;
}

- (CUIKCommitDelegate)commitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_commitDelegate);

  return WeakRetained;
}

- (CUIKEditingContextObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

void __37__CUIKEditingContext__doManualDelete__block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1CAB19000, v1, v2, "Error removing account %{public}@: %@", v3, DWORD2(v3));
}

- (void)_requestSaveAndSpanDecisionIfNeededForAction:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_requestSpanDecisionIfNeededForAction:diffSummary:delegate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_requestCommitDecisionIfNeededForAction:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_earlyCommitDecisionSpecified
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_specifyEarlyCommitDecision:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_prepareForCommitWithDecision:shouldClose:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_prepareForCommitWithDecision:shouldClose:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)performUndoableOperation:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end