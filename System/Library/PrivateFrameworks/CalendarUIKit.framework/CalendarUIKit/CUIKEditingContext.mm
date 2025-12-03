@interface CUIKEditingContext
+ (int64_t)spanFromSpanDecision:(unint64_t)decision;
+ (unint64_t)spanDecisionFromSpan:(int64_t)span;
+ (void)postLiveEditNotificationForObject:(id)object;
- (BOOL)_allObjectsAreCalendars;
- (BOOL)_allObjectsAreEvents;
- (BOOL)_allObjectsAreItems;
- (BOOL)_deleteIsUndoable;
- (BOOL)_doManualDelete;
- (BOOL)_earlyCommitDecisionSpecified;
- (BOOL)_editingObjectsNeverCommitted;
- (BOOL)_hasChangesRequiringSpanAllAndSpanIsThis;
- (BOOL)_hasChangesToSave;
- (BOOL)_prepareForCommitWithDecision:(unint64_t)decision shouldClose:(BOOL *)close;
- (BOOL)_requestEarlyCommitDecisionAtSaveTimeForAction:(unint64_t)action;
- (BOOL)_requestSaveAndSpanDecisionIfNeededForAction:(unint64_t)action;
- (BOOL)_requestSaveDecisionIfNeededForAction:(unint64_t)action diffSummary:(id)summary delegate:(id)delegate;
- (BOOL)_requestSpanDecisionIfNeededForAction:(unint64_t)action diffSummary:(id)summary delegate:(id)delegate;
- (BOOL)_saveActionIsDecline;
- (BOOL)_savePartialChangeAndPostNotification:(BOOL)notification;
- (BOOL)_shouldSilentlyTransitionToSpanAllAfterSave;
- (BOOL)_spanDecisionSpecified;
- (BOOL)addAllObjects;
- (BOOL)deleteAllObjects;
- (BOOL)performUndoableOperation:(id)operation;
- (BOOL)saveCompleteChangeAndClose:(BOOL)close error:(id *)error;
- (BOOL)saveCompleteChangeWithImpliedCommitDecisionAndClose:(BOOL)close error:(id *)error;
- (CUIKCommitDelegate)commitDelegate;
- (CUIKDecisionDelegate)decisionDelegate;
- (CUIKEditingContext)initWithObjects:(id)objects interfaceType:(unint64_t)type observer:(id)observer;
- (CUIKEditingContextGroup)group;
- (CUIKEditingContextObserver)observer;
- (CUIKEditingManager)editingManager;
- (CUIKUndoDelegate)undoDelegate;
- (id)_diffSummarySinceLastSave;
- (id)changeUserInfoForObjects:(id)objects;
- (id)trackedObjects;
- (int64_t)_currentSpan;
- (unint64_t)_actionToCommit;
- (unint64_t)_currentSpanDecision;
- (unint64_t)_earlyCommitDecision;
- (unint64_t)_requestCommitDecisionIfNeededForAction:(unint64_t)action;
- (void)_cancelCurrentSave;
- (void)_clearLiveChanges;
- (void)_earlyCommitDecisionSpecified;
- (void)_setAllObjectsToDontNotify;
- (void)_specifyEarlyCommitDecision:(unint64_t)decision;
- (void)_specifySpanDecision:(unint64_t)decision;
- (void)_unspecifyEarlyCommitDecision;
- (void)_unspecifySpanDecision;
- (void)addOriginalIdentifiersForObjectsBeingEdited:(id)edited;
- (void)createAutoBugCapture;
- (void)hide;
- (void)notifyObservers;
- (void)postLiveEditNotificationForEditedObjects;
- (void)revert:(BOOL)revert;
- (void)setObjectsBeingEdited:(id)edited;
- (void)trackedObjectsDidRevert:(id)revert;
- (void)trackedObjectsDidUpdate:(id)update;
- (void)unhide;
@end

@implementation CUIKEditingContext

- (CUIKEditingContext)initWithObjects:(id)objects interfaceType:(unint64_t)type observer:(id)observer
{
  v23 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  observerCopy = observer;
  v10 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = objectsCopy;
    v21 = 2112;
    v22 = observerCopy;
    _os_log_debug_impl(&dword_1CAB19000, v10, OS_LOG_TYPE_DEBUG, "Creating context %@ with objects %@ and observer %@", buf, 0x20u);
  }

  v16.receiver = self;
  v16.super_class = CUIKEditingContext;
  v11 = [(CUIKEditingContext *)&v16 init];
  if (v11)
  {
    firstObject = [objectsCopy firstObject];
    eventStore = [firstObject eventStore];
    eventStore = v11->_eventStore;
    v11->_eventStore = eventStore;

    [(CUIKEditingContext *)v11 setObjectsBeingEdited:objectsCopy];
    [(CUIKEditingContext *)v11 setInterfaceType:type];
    [(CUIKEditingContext *)v11 setObserver:observerCopy];
  }

  return v11;
}

- (void)setObjectsBeingEdited:(id)edited
{
  objc_storeStrong(&self->_objectsBeingEdited, edited);
  editedCopy = edited;
  [(CUIKEditingContext *)self addOriginalIdentifiersForObjectsBeingEdited:editedCopy];
}

- (void)addOriginalIdentifiersForObjectsBeingEdited:(id)edited
{
  v25 = *MEMORY[0x1E69E9840];
  editedCopy = edited;
  v5 = [(EKEventStore *)self->_eventStore uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:editedCopy];
  originalIdentifiersForObjectsBeingEdited = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];

  if (originalIdentifiersForObjectsBeingEdited)
  {
    originalIdentifiersForObjectsBeingEdited2 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];
    v8 = [originalIdentifiersForObjectsBeingEdited2 setByAddingObjectsFromSet:v5];
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
  v10 = editedCopy;
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
          eventOccurrenceID = [v15 eventOccurrenceID];
          [v9 addObject:eventOccurrenceID];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  originalEventOccurrenceIDsForObjectsBeingEdited = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];

  if (originalEventOccurrenceIDsForObjectsBeingEdited)
  {
    originalEventOccurrenceIDsForObjectsBeingEdited2 = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];
    v19 = [originalEventOccurrenceIDsForObjectsBeingEdited2 setByAddingObjectsFromSet:v9];
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

    _editingObjectsNeverCommitted = [(CUIKEditingContext *)self _editingObjectsNeverCommitted];
    if ([(CUIKEditingContext *)self _deleteIsUndoable])
    {
      v6 = [CUIKUndoManager operationForAction:4 context:self];
      _doManualDelete = [(CUIKEditingContext *)self performUndoableOperation:v6];
    }

    else
    {
      _doManualDelete = [(CUIKEditingContext *)self _doManualDelete];
    }

    if (_doManualDelete && _editingObjectsNeverCommitted)
    {
      [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
      LOBYTE(_doManualDelete) = 1;
    }
  }

  else
  {
    LOBYTE(_doManualDelete) = 0;
  }

  return _doManualDelete;
}

- (BOOL)_editingObjectsNeverCommitted
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [objectsBeingEdited countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectsBeingEdited);
        }

        if (![*(*(&v7 + 1) + 8 * i) hasEverBeenCommitted])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectsBeingEdited countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v4 = [objectsBeingEdited countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
        }

        if ([*(*(&v10 + 1) + 8 * i) isSubscribed])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [objectsBeingEdited countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  _allObjectsAreCalendars = [(CUIKEditingContext *)self _allObjectsAreCalendars];
  if (_allObjectsAreCalendars)
  {
    v20 = _allObjectsAreCalendars;
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
          subcalAccountID = objc_alloc_init(*(v7 + 2632));
          [*(v8 + 4032) setHolidayCalendarIsEnabled:0 withAccountStore:subcalAccountID];
        }

        else
        {
          if (![v10 isSubscribed])
          {
            goto LABEL_16;
          }

          subcalAccountID = [v10 subcalAccountID];
          v12 = objc_alloc_init(*(v7 + 2632));
          v13 = [v12 accountWithIdentifier:subcalAccountID];
          if (v13)
          {
            mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
            v15 = v5;
            v16 = v7;
            requestDaemonStopMonitoringAgents = [mEMORY[0x1E69998A8] requestDaemonStopMonitoringAgents];

            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __37__CUIKEditingContext__doManualDelete__block_invoke;
            v22[3] = &unk_1E839A238;
            v24 = requestDaemonStopMonitoringAgents;
            v7 = v16;
            v5 = v15;
            v8 = 0x1E6992000;
            v23 = subcalAccountID;
            [v12 removeAccount:v13 withCompletionHandler:v22];
            v18 = v23;
          }

          else
          {
            v18 = +[CUIKLogSubsystem editingContext];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = subcalAccountID;
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

        LOBYTE(_allObjectsAreCalendars) = v20;
        return _allObjectsAreCalendars;
      }
    }
  }

  return _allObjectsAreCalendars;
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

- (BOOL)saveCompleteChangeWithImpliedCommitDecisionAndClose:(BOOL)close error:(id *)error
{
  closeCopy = close;
  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext saveCompleteChangeWithImpliedCommitDecisionAndClose:error:];
  }

  [(CUIKEditingContext *)self _specifyEarlyCommitDecision:1];
  return [(CUIKEditingContext *)self saveCompleteChangeAndClose:closeCopy error:error];
}

- (BOOL)saveCompleteChangeAndClose:(BOOL)close error:(id *)error
{
  closeCopy = close;
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
  _hasChangesRequiringSpanAllAndSpanIsThis = [(CUIKEditingContext *)self _hasChangesRequiringSpanAllAndSpanIsThis];
  if (_hasChangesRequiringSpanAllAndSpanIsThis)
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
  _saveActionIsDecline = [(CUIKEditingContext *)self _saveActionIsDecline];
  if (_saveActionIsDecline)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = [(CUIKEditingContext *)self _requestSaveAndSpanDecisionIfNeededForAction:v17];
  if (_saveActionIsDecline && v18)
  {
    LOBYTE(v18) = [(CUIKEditingContext *)self _requestEarlyCommitDecisionAtSaveTimeForAction:3];
  }

  if (!v18)
  {
    [(CUIKEditingContext *)self _cancelCurrentSave];
    v11 = 0;
    if (!closeCopy)
    {
      return v11;
    }

    goto LABEL_12;
  }

  [(CUIKEditingContext *)self _markAsActive];
  v10 = [CUIKUndoManager operationForAction:2 context:self];
  v11 = [(CUIKEditingContext *)self performUndoableOperation:v10];
  if (!closeCopy)
  {
    [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
  }

  if (_hasChangesRequiringSpanAllAndSpanIsThis)
  {
    [(CUIKEditingContext *)self _unspecifySpanDecision];
  }

  else if (v15)
  {
    [(CUIKEditingContext *)self _specifySpanDecision:2];
  }

  error = [v10 error];

  if (error && error)
  {
    *error = [v10 error];
  }

LABEL_11:

  if (closeCopy)
  {
LABEL_12:
    editingManager = [(CUIKEditingContext *)self editingManager];
    [editingManager closeEditingContext:self];
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
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [objectsBeingEdited countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    hasUnsavedChanges = 0;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectsBeingEdited);
        }

        if (hasUnsavedChanges)
        {
          hasUnsavedChanges = 1;
          goto LABEL_12;
        }

        hasUnsavedChanges = [*(*(&v9 + 1) + 8 * i) hasUnsavedChanges];
      }

      v4 = [objectsBeingEdited countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    hasUnsavedChanges = 0;
  }

LABEL_12:

  return hasUnsavedChanges;
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
    objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
    v3 = [objectsBeingEdited countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(objectsBeingEdited);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 hasChangesRequiringSpanAll])
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [objectsBeingEdited countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
    v3 = [objectsBeingEdited countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v5 = *v14;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(objectsBeingEdited);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            recurrenceRuleString = [v7 recurrenceRuleString];
            if (recurrenceRuleString)
            {
              v9 = recurrenceRuleString;
              shallowCopyWithoutChanges = [v7 shallowCopyWithoutChanges];
              recurrenceRuleString2 = [shallowCopyWithoutChanges recurrenceRuleString];

              if (!recurrenceRuleString2)
              {
                LOBYTE(v3) = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v3 = [objectsBeingEdited countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  _diffSummarySinceLastSave = [(CUIKEditingContext *)self _diffSummarySinceLastSave];
  v4 = [_diffSummarySinceLastSave objectForKeyedSubscript:*MEMORY[0x1E69668B0]];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
    v4 = [objectsBeingEdited countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(objectsBeingEdited);
          }

          selfAttendee = [*(*(&v11 + 1) + 8 * i) selfAttendee];
          participantStatus = [selfAttendee participantStatus];

          if (participantStatus == 3)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [objectsBeingEdited countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v5 = [objectsBeingEdited countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        shallowCopyWithoutChanges = [v9 shallowCopyWithoutChanges];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_12:
          v12 = 0;
          goto LABEL_13;
        }

        v11 = [MEMORY[0x1E6966A60] diffSummaryBetweenObject:shallowCopyWithoutChanges andObject:v9];
        [v3 addEntriesFromDictionary:v11];
      }

      v6 = [objectsBeingEdited countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_requestSaveAndSpanDecisionIfNeededForAction:(unint64_t)action
{
  decisionDelegate = [(CUIKEditingContext *)self decisionDelegate];
  if (decisionDelegate && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _diffSummarySinceLastSave = [(CUIKEditingContext *)self _diffSummarySinceLastSave];
    v7 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CUIKEditingContext _requestSaveAndSpanDecisionIfNeededForAction:];
    }

    if ([(CUIKEditingContext *)self _requestSaveDecisionIfNeededForAction:action diffSummary:_diffSummarySinceLastSave delegate:decisionDelegate])
    {
      v8 = [(CUIKEditingContext *)self _requestSpanDecisionIfNeededForAction:action diffSummary:_diffSummarySinceLastSave delegate:decisionDelegate];
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

- (BOOL)_requestSaveDecisionIfNeededForAction:(unint64_t)action diffSummary:(id)summary delegate:(id)delegate
{
  summaryCopy = summary;
  delegateCopy = delegate;
  if (-[CUIKEditingContext _allObjectsAreItems](self, "_allObjectsAreItems") && (-[CUIKEditingContext objectsBeingEdited](self, "objectsBeingEdited"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [delegateCopy shouldSaveForItems:v10 forEditingAction:action diffSummary:summaryCopy], v10, (v11 & 1) == 0))
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

- (BOOL)_requestSpanDecisionIfNeededForAction:(unint64_t)action diffSummary:(id)summary delegate:(id)delegate
{
  summaryCopy = summary;
  delegateCopy = delegate;
  if ([(CUIKEditingContext *)self _spanDecisionSpecified]|| ![(CUIKEditingContext *)self _allObjectsAreEvents])
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v11 = [delegateCopy spanDecisionForEvents:objectsBeingEdited forEditingAction:action diffSummary:summaryCopy];

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

  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [objectsBeingEdited countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
        }

        shallowCopyWithoutChanges = [*(*(&v20 + 1) + 8 * v9) shallowCopyWithoutChanges];
        [array addObject:shallowCopyWithoutChanges];

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectsBeingEdited countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  objectsBeingEdited2 = [(CUIKEditingContext *)self objectsBeingEdited];
  [(CUIKEditingContext *)self setObjectsBeingEdited:array];
  [(CUIKEditingContext *)self _clearLiveChanges];
  observer = [(CUIKEditingContext *)self observer];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    if ([array count])
    {
      v14 = 0;
      do
      {
        v15 = [objectsBeingEdited2 objectAtIndexedSubscript:v14];
        v16 = [array objectAtIndexedSubscript:v14];
        observer2 = [(CUIKEditingContext *)self observer];
        v18 = [observer2 oldObject:v15 didUpdateTo:v16];

        ++v14;
      }

      while ([array count] > v14);
    }

    observer3 = [(CUIKEditingContext *)self observer];
    [observer3 saveCancelled];
  }
}

- (void)_clearLiveChanges
{
  editingManager = [(CUIKEditingContext *)self editingManager];
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  [editingManager clearLiveChangesForObjects:objectsBeingEdited];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (BOOL)_requestEarlyCommitDecisionAtSaveTimeForAction:(unint64_t)action
{
  v4 = [(CUIKEditingContext *)self _requestCommitDecisionIfNeededForAction:action];
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

- (unint64_t)_requestCommitDecisionIfNeededForAction:(unint64_t)action
{
  _earlyCommitDecision = [(CUIKEditingContext *)self _earlyCommitDecision];
  decisionDelegate = [(CUIKEditingContext *)self decisionDelegate];
  if (decisionDelegate)
  {
    if ([(CUIKEditingContext *)self _allObjectsAreItems]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
      v8 = [decisionDelegate editingContext:self commitDecisionForItems:objectsBeingEdited forEditingAction:action userImpliedDecision:_earlyCommitDecision != 0 withSpanDecision:{-[CUIKEditingContext _currentSpanDecision](self, "_currentSpanDecision")}];
LABEL_8:
      _earlyCommitDecision = v8;

      goto LABEL_9;
    }

    if ([(CUIKEditingContext *)self _allObjectsAreCalendars]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
      v8 = [decisionDelegate commitDecisionForCalendars:objectsBeingEdited forEditingAction:action];
      goto LABEL_8;
    }
  }

LABEL_9:
  v9 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _requestCommitDecisionIfNeededForAction:];
  }

  _earlyCommitDecision2 = [(CUIKEditingContext *)self _earlyCommitDecision];
  if (_earlyCommitDecision <= _earlyCommitDecision2)
  {
    v11 = _earlyCommitDecision2;
  }

  else
  {
    v11 = _earlyCommitDecision;
  }

  return v11;
}

- (unint64_t)_currentSpanDecision
{
  if (![(CUIKEditingContext *)self _spanDecisionSpecified])
  {
    return 0;
  }

  group = [(CUIKEditingContext *)self group];
  spanDecisionForGroup = [group spanDecisionForGroup];

  return spanDecisionForGroup;
}

- (int64_t)_currentSpan
{
  v3 = objc_opt_class();
  _currentSpanDecision = [(CUIKEditingContext *)self _currentSpanDecision];

  return [v3 spanFromSpanDecision:_currentSpanDecision];
}

- (BOOL)_spanDecisionSpecified
{
  group = [(CUIKEditingContext *)self group];
  spanDecisionForGroupIsSet = [group spanDecisionForGroupIsSet];

  return spanDecisionForGroupIsSet;
}

- (void)_specifySpanDecision:(unint64_t)decision
{
  group = [(CUIKEditingContext *)self group];
  [group specifySpanDecisionForGroup:decision];
}

- (void)_unspecifySpanDecision
{
  group = [(CUIKEditingContext *)self group];
  [group unspecifySpanDecisionForGroup];
}

- (unint64_t)_earlyCommitDecision
{
  if (![(CUIKEditingContext *)self _earlyCommitDecisionSpecified])
  {
    return 0;
  }

  group = [(CUIKEditingContext *)self group];
  earlyCommitDecisionForGroup = [group earlyCommitDecisionForGroup];

  return earlyCommitDecisionForGroup;
}

- (BOOL)_earlyCommitDecisionSpecified
{
  group = [(CUIKEditingContext *)self group];
  earlyCommitDecisionForGroupIsSet = [group earlyCommitDecisionForGroupIsSet];

  v4 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _earlyCommitDecisionSpecified];
  }

  return earlyCommitDecisionForGroupIsSet;
}

- (void)_specifyEarlyCommitDecision:(unint64_t)decision
{
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _specifyEarlyCommitDecision:];
  }

  group = [(CUIKEditingContext *)self group];
  [group specifyEarlyCommitDecisionForGroup:decision];
}

- (void)_unspecifyEarlyCommitDecision
{
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _unspecifyEarlyCommitDecision];
  }

  group = [(CUIKEditingContext *)self group];
  [group unspecifyEarlyCommitDecisionForGroup];
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
          eventStore = [v10 eventStore];
          selfCopy = self;
          _currentSpan = [(CUIKEditingContext *)self _currentSpan];
          v18 = v6;
          v14 = [eventStore saveEvent:v10 span:_currentSpan commit:0 error:&v18];
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
          self = selfCopy;
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

- (BOOL)_savePartialChangeAndPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [objectsBeingEdited countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
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
        editingManager = [(CUIKEditingContext *)self editingManager];
        [editingManager partialSaveObject:v10];

        specificIdentifier = [v10 specificIdentifier];
        [v4 setObject:v10 forKeyedSubscript:specificIdentifier];
      }

      v7 = [objectsBeingEdited countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(CUIKEditingContext *)self trackedObjectsDidUpdate:v4];
  [(CUIKEditingContext *)self notifyObservers];
  if (notificationCopy)
  {
    [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
  }

  return 1;
}

- (void)postLiveEditNotificationForEditedObjects
{
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [(CUIKEditingContext *)self changeUserInfoForObjects:objectsBeingEdited];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  _eventStore = [(CUIKEditingContext *)self _eventStore];
  if (v6)
  {
    [defaultCenter postNotificationName:@"CUIKLiveEditNotification" object:_eventStore userInfo:v6];
  }

  else
  {
    [defaultCenter postNotificationName:@"CUIKLiveEditNotification" object:_eventStore];
  }
}

+ (void)postLiveEditNotificationForObject:(id)object
{
  v12[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  eventStore = [objectCopy eventStore];
  v12[0] = objectCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = [eventStore uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:v5];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  eventStore2 = [objectCopy eventStore];
  [defaultCenter postNotificationName:@"CUIKLiveEditNotification" object:eventStore2 userInfo:v7];
}

- (id)changeUserInfoForObjects:(id)objects
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self->_eventStore uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:objects];
  originalIdentifiersForObjectsBeingEdited = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];

  if (originalIdentifiersForObjectsBeingEdited)
  {
    originalIdentifiersForObjectsBeingEdited2 = [(CUIKEditingContext *)self originalIdentifiersForObjectsBeingEdited];
    v7 = [v4 setByAddingObjectsFromSet:originalIdentifiersForObjectsBeingEdited2];

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
  editingManager = [(CUIKEditingContext *)self editingManager];
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  [editingManager hide:objectsBeingEdited];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (void)unhide
{
  editingManager = [(CUIKEditingContext *)self editingManager];
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  [editingManager unhide:objectsBeingEdited];

  [(CUIKEditingContext *)self postLiveEditNotificationForEditedObjects];
}

- (void)revert:(BOOL)revert
{
  revertCopy = revert;
  v5 = [CUIKUndoManager operationForAction:5 context:self];
  if (revertCopy)
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
    undoDelegate = [(CUIKEditingContext *)self undoDelegate];
    [v5 executeWithUndoDelegate:undoDelegate];
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
          diffFromCommitted = [v9 diffFromCommitted];
          if ([diffFromCommitted result])
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
            summaryString = [diffFromCommitted summaryString];
            v16 = summaryString;
            if (summaryString)
            {
              v17 = summaryString;
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

- (BOOL)_prepareForCommitWithDecision:(unint64_t)decision shouldClose:(BOOL *)close
{
  if (close)
  {
    *close = 1;
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

  _earlyCommitDecision = [(CUIKEditingContext *)self _earlyCommitDecision];
  if (_earlyCommitDecision <= decision)
  {
    decisionCopy = decision;
  }

  else
  {
    decisionCopy = _earlyCommitDecision;
  }

  [(CUIKEditingContext *)self _specifyEarlyCommitDecision:decisionCopy];
  _actionToCommit = [(CUIKEditingContext *)self _actionToCommit];
  if (![(CUIKEditingContext *)self _allObjectsAreEvents]|| !_actionToCommit)
  {
LABEL_57:
    [(CUIKEditingContext *)self _markAsInactive];
    v9 = 1;
    if (!close)
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

  v13 = [(CUIKEditingContext *)self _requestCommitDecisionIfNeededForAction:_actionToCommit];
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

        if (close)
        {
          *close = 1;
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

        if (close)
        {
          commitDelegate = [(CUIKEditingContext *)self commitDelegate];
          if (commitDelegate)
          {
            commitDelegate2 = [(CUIKEditingContext *)self commitDelegate];
            *close = [commitDelegate2 contextShouldStayOpenWhenCommitIsDeferred] ^ 1;
          }

          else
          {
            *close = 1;
          }
        }

        commitDelegate3 = [(CUIKEditingContext *)self commitDelegate];
        objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
        originalEventOccurrenceIDsForObjectsBeingEdited = [(CUIKEditingContext *)self originalEventOccurrenceIDsForObjectsBeingEdited];
        [commitDelegate3 commitDeferredForObjects:objectsBeingEdited originalIdentifiers:originalEventOccurrenceIDsForObjectsBeingEdited];

LABEL_9:
        v9 = 0;
        if (!close)
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
    if (!close)
    {
      goto LABEL_52;
    }

    commitDelegate4 = [(CUIKEditingContext *)self commitDelegate];
    if (commitDelegate4)
    {
      commitDelegate5 = [(CUIKEditingContext *)self commitDelegate];
      contextShouldStayOpenWhenCommitIsReverted = [commitDelegate5 contextShouldStayOpenWhenCommitIsReverted];
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
    if (!close)
    {
      goto LABEL_52;
    }

    commitDelegate4 = [(CUIKEditingContext *)self commitDelegate];
    if (commitDelegate4)
    {
      commitDelegate5 = [(CUIKEditingContext *)self commitDelegate];
      contextShouldStayOpenWhenCommitIsReverted = [commitDelegate5 contextShouldStayOpenWhenCommitIsCanceled];
LABEL_37:
      *close = contextShouldStayOpenWhenCommitIsReverted ^ 1;

LABEL_51:
LABEL_52:
      v24 = 1;
      goto LABEL_53;
    }

LABEL_50:
    *close = 1;
    goto LABEL_51;
  }

  v23 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext _prepareForCommitWithDecision:shouldClose:];
  }

  if (close)
  {
    *close = 1;
  }

  if (_actionToCommit == 2)
  {
    [(CUIKEditingContext *)self _setAllObjectsToDontNotify];
  }

  v24 = 0;
LABEL_53:
  if (![(CUIKEditingContext *)self _actionToCommit]|| ([(CUIKEditingContext *)self createAutoBugCapture], !close))
  {
    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

  v9 = 1;
  *close = 1;
  return v9;
}

- (unint64_t)_actionToCommit
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v3 = [objectsBeingEdited countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
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
            isDifferentFromCommitted = [v8 isDifferentFromCommitted];
          }

          else
          {
            isDifferentFromCommitted = [v8 hasChanges];
          }

          if (isDifferentFromCommitted)
          {
            v5 = 2;
          }
        }
      }

      v4 = [objectsBeingEdited countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)performUndoableOperation:(id)operation
{
  operationCopy = operation;
  editingManager = [(CUIKEditingContext *)self editingManager];
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  [editingManager clearLiveChangesForObjects:objectsBeingEdited];

  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext performUndoableOperation:];
  }

  undoDelegate = [(CUIKEditingContext *)self undoDelegate];
  v9 = [operationCopy executeWithUndoDelegate:undoDelegate];

  if ((v9 & 1) == 0)
  {
    error = [operationCopy error];
    [(CUIKEditingContext *)self setError:error];
  }

  undoDelegate2 = [(CUIKEditingContext *)self undoDelegate];
  [undoDelegate2 handleUndoForOperation:operationCopy];

  return v9;
}

- (id)trackedObjects
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(CUIKEditingContext *)self isOpen])
  {
    goto LABEL_20;
  }

  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  objectsBeingEdited = [(CUIKEditingContext *)self objectsBeingEdited];
  v6 = [objectsBeingEdited countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(objectsBeingEdited);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        specificIdentifier = [v10 specificIdentifier];
        [v4 addObject:specificIdentifier];

        [array addObject:v10];
      }

      v7 = [objectsBeingEdited countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  group = [(CUIKEditingContext *)self group];
  trackedObjects = [group trackedObjects];

  v14 = [trackedObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(trackedObjects);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        specificIdentifier2 = [v18 specificIdentifier];
        if (([v4 containsObject:specificIdentifier2] & 1) == 0)
        {
          [array addObject:v18];
        }
      }

      v15 = [trackedObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v20 = [array count];
  if (!v20)
  {

LABEL_20:
    array = 0;
  }

  return array;
}

- (void)trackedObjectsDidUpdate:(id)update
{
  v52 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v4 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContext trackedObjectsDidUpdate:v4];
  }

  if ([(CUIKEditingContext *)self isOpen])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DFA8] set];
    array2 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    selfCopy = self;
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
            specificIdentifier = [v12 specificIdentifier];
            v14 = [updateCopy objectForKeyedSubscript:specificIdentifier];

            if (v14 || (-[CUIKEditingContext group](selfCopy, "group"), v19 = objc_claimAutoreleasedReturnValue(), [v12 specificIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "newIdentifierForIdentifier:", v20), v20, v19, v21) && (objc_msgSend(updateCopy, "objectForKeyedSubscript:", v21), v14 = objc_claimAutoreleasedReturnValue(), v21, v14))
            {
              [array addObject:v14];
              specificIdentifier2 = [v14 specificIdentifier];
              [v5 addObject:specificIdentifier2];

              null = v14;
              v17 = null;
            }

            else
            {
              null = [MEMORY[0x1E695DFB0] null];
              v17 = 0;
            }

            v50[0] = v12;
            v50[1] = null;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
            [array2 addObject:v22];
          }

          else
          {
            v49[0] = v11;
            v49[1] = v11;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
            [array2 addObject:v18];

            [array addObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v8);
    }

    [(CUIKEditingContext *)selfCopy setObjectsBeingEdited:array];
    v23 = [MEMORY[0x1E695DF70] arrayWithArray:array2];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    group = [(CUIKEditingContext *)selfCopy group];
    trackedObjects = [group trackedObjects];

    v26 = [trackedObjects countByEnumeratingWithState:&v39 objects:v48 count:16];
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
            objc_enumerationMutation(trackedObjects);
          }

          v30 = *(*(&v39 + 1) + 8 * j);
          specificIdentifier3 = [v30 specificIdentifier];
          if (([v5 containsObject:specificIdentifier3] & 1) == 0)
          {
            v32 = [updateCopy objectForKeyedSubscript:specificIdentifier3];
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

        v27 = [trackedObjects countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }

    [(CUIKEditingContext *)selfCopy setPendingObserverUpdates:array2];
    [(CUIKEditingContext *)selfCopy setPendingGroupUpdates:v23];
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
        null = [MEMORY[0x1E695DFB0] null];
        v11 = [v9 isEqual:null];

        if (v11)
        {

          v9 = 0;
        }

        if (([MEMORY[0x1E696AF00] isMainThread] & 1) != 0 || (-[CUIKEditingContext observer](self, "observer"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isTestObserver"), v12, v13))
        {
          observer = [(CUIKEditingContext *)self observer];
          v15 = [observer oldObject:v8 didUpdateTo:v9];
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
  pendingGroupUpdates = [(CUIKEditingContext *)self pendingGroupUpdates];
  v17 = [pendingGroupUpdates countByEnumeratingWithState:&v30 objects:v42 count:16];
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
          objc_enumerationMutation(pendingGroupUpdates);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v21 objectAtIndexedSubscript:1];
        null2 = [MEMORY[0x1E695DFB0] null];
        v25 = [v23 isEqual:null2];

        if (v25)
        {

          v23 = 0;
        }

        group = [(CUIKEditingContext *)self group];
        v27 = [group oldObject:v22 didUpdateTo:v23];
      }

      v18 = [pendingGroupUpdates countByEnumeratingWithState:&v30 objects:v42 count:16];
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

- (void)trackedObjectsDidRevert:(id)revert
{
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  group = [(CUIKEditingContext *)self group];
  originalObjects = [group originalObjects];
  v6 = [v4 initWithArray:originalObjects copyItems:1];
  [(CUIKEditingContext *)self setObjectsBeingEdited:v6];
}

+ (int64_t)spanFromSpanDecision:(unint64_t)decision
{
  if (decision - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1CAD58068[decision - 1];
  }
}

+ (unint64_t)spanDecisionFromSpan:(int64_t)span
{
  if (span > 4)
  {
    return 4;
  }

  else
  {
    return qword_1CAD58080[span];
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