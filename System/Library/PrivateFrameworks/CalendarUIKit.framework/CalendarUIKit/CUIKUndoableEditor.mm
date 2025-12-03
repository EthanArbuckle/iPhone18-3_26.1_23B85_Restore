@interface CUIKUndoableEditor
- (BOOL)_saveChangesToEvents:(id)events span:(int64_t)span impliedCommitDecision:(BOOL)decision error:(id *)error;
- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveCalendar:(id)calendar error:(id *)error;
- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error;
- (CUIKCommitDelegate)commitDelegate;
- (CUIKDecisionDelegate)decisionDelegate;
- (CUIKUndoDelegate)undoDelegate;
- (CUIKUndoableEditor)initWithEditingManager:(id)manager;
- (id)_openEditingContextForObjects:(id)objects;
- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type;
- (void)deleteCalendars:(id)calendars;
- (void)deleteEvents:(id)events span:(int64_t)span;
- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result;
- (void)deleteSources:(id)sources;
- (void)saveCalendars:(id)calendars;
- (void)saveChangesToSources:(id)sources;
- (void)saveNewSources:(id)sources commit:(BOOL)commit;
@end

@implementation CUIKUndoableEditor

- (CUIKUndoableEditor)initWithEditingManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = CUIKUndoableEditor;
  v6 = [(CUIKUndoableEditor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingManager, manager);
  }

  return v7;
}

- (id)_openEditingContextForObjects:(id)objects
{
  editingManager = self->_editingManager;
  allObjects = [objects allObjects];
  v6 = [(CUIKEditingManager *)editingManager openEditingContextWithObjects:allObjects interfaceType:0];

  decisionDelegate = [(CUIKUndoableEditor *)self decisionDelegate];
  [v6 setDecisionDelegate:decisionDelegate];

  undoDelegate = [(CUIKUndoableEditor *)self undoDelegate];
  [v6 setUndoDelegate:undoDelegate];

  commitDelegate = [(CUIKUndoableEditor *)self commitDelegate];
  [v6 setCommitDelegate:commitDelegate];

  return v6;
}

- (BOOL)_saveChangesToEvents:(id)events span:(int64_t)span impliedCommitDecision:(BOOL)decision error:(id *)error
{
  decisionCopy = decision;
  v9 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:events];
  if (span != -1)
  {
    [v9 _specifySpanDecision:{+[CUIKEditingContext spanDecisionFromSpan:](CUIKEditingContext, "spanDecisionFromSpan:", span)}];
  }

  if (decisionCopy)
  {
    v10 = [v9 saveCompleteChangeWithImpliedCommitDecisionAndClose:1 error:error];
  }

  else
  {
    v10 = [v9 saveCompleteChangeAndClose:1 error:error];
  }

  v11 = v10;

  return v11;
}

- (void)saveCalendars:(id)calendars
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:calendars];
  [v4 saveCompleteChange];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)deleteCalendars:(id)calendars
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:calendars];
  [v4 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)saveNewSources:(id)sources commit:(BOOL)commit
{
  commit = [(CUIKUndoableEditor *)self _openEditingContextForObjects:sources, commit];
  [commit addAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:commit];
}

- (void)saveChangesToSources:(id)sources
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:sources];
  [v4 saveCompleteChange];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)deleteSources:(id)sources
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:sources];
  [v4 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if ([eventsCopy count])
  {
    errorCopy = error;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = eventsCopy;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          startDate = [v14 startDate];

          if (!startDate)
          {
            nextRoundedHour = [MEMORY[0x1E695DF00] nextRoundedHour];
            [v14 setStartDate:nextRoundedHour];
          }

          endDateUnadjustedForLegacyClients = [v14 endDateUnadjustedForLegacyClients];

          if (!endDateUnadjustedForLegacyClients)
          {
            startDate2 = [v14 startDate];
            v19 = [startDate2 dateByAddingHours:1 inCalendar:0];
            [v14 setEndDateUnadjustedForLegacyClients:v19];
          }

          calendar = [v14 calendar];

          if (!calendar)
          {
            eventStore = [v14 eventStore];
            acquireDefaultCalendarForNewEvents = [eventStore acquireDefaultCalendarForNewEvents];
            [v14 setCalendar:acquireDefaultCalendarForNewEvents];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v23 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:v9];
    if ([v23 addAllObjects])
    {
      savePartialChange = [v23 savePartialChange];
    }

    else
    {
      savePartialChange = 0;
    }

    if (errorCopy && (savePartialChange & 1) == 0)
    {
      *errorCopy = [v23 error];
    }

    editingManager = self->_editingManager;
    if (commit)
    {
      [(CUIKEditingManager *)editingManager closeEditingContext:v23];
    }

    else
    {
      [(CUIKEditingManager *)editingManager closeEditingContextWithoutCommittingChanges:v23];
    }
  }

  else
  {
    savePartialChange = 1;
  }

  return savePartialChange;
}

- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error
{
  eventCopy = event;
  v9 = eventCopy;
  if (eventCopy)
  {
    isNew = [eventCopy isNew];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    if (isNew)
    {
      v12 = [(CUIKUndoableEditor *)self saveNewEvents:v11 commit:1 error:error];
    }

    else
    {
      v12 = [(CUIKUndoableEditor *)self _saveChangesToEvents:v11 span:span impliedCommitDecision:0 error:error];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error
{
  v7 = [MEMORY[0x1E695DFD8] setWithObject:{event, span, error}];
  [(CUIKUndoableEditor *)self deleteEvents:v7 span:span];

  return 1;
}

- (void)deleteEvents:(id)events span:(int64_t)span
{
  v6 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:events];
  if (span != -1)
  {
    [v6 _specifySpanDecision:{+[CUIKEditingContext spanDecisionFromSpan:](CUIKEditingContext, "spanDecisionFromSpan:", span)}];
  }

  [v6 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v6];
}

- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result
{
  resultCopy = result;
  [(CUIKUndoableEditor *)self deleteEvents:events span:span];
  v8 = resultCopy;
  if (resultCopy)
  {
    (*(resultCopy + 2))(resultCopy, 1, 0);
    v8 = resultCopy;
  }
}

- (BOOL)saveCalendar:(id)calendar error:(id *)error
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:{calendar, error}];
  [(CUIKUndoableEditor *)self saveCalendars:v5];

  return 1;
}

- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:{calendar, type}];
  [(CUIKUndoableEditor *)self deleteCalendars:v5];
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

@end