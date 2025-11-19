@interface CUIKUndoableEditor
- (BOOL)_saveChangesToEvents:(id)a3 span:(int64_t)a4 impliedCommitDecision:(BOOL)a5 error:(id *)a6;
- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (BOOL)saveCalendar:(id)a3 error:(id *)a4;
- (BOOL)saveEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (CUIKCommitDelegate)commitDelegate;
- (CUIKDecisionDelegate)decisionDelegate;
- (CUIKUndoDelegate)undoDelegate;
- (CUIKUndoableEditor)initWithEditingManager:(id)a3;
- (id)_openEditingContextForObjects:(id)a3;
- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4;
- (void)deleteCalendars:(id)a3;
- (void)deleteEvents:(id)a3 span:(int64_t)a4;
- (void)deleteEvents:(id)a3 span:(int64_t)a4 result:(id)a5;
- (void)deleteSources:(id)a3;
- (void)saveCalendars:(id)a3;
- (void)saveChangesToSources:(id)a3;
- (void)saveNewSources:(id)a3 commit:(BOOL)a4;
@end

@implementation CUIKUndoableEditor

- (CUIKUndoableEditor)initWithEditingManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CUIKUndoableEditor;
  v6 = [(CUIKUndoableEditor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingManager, a3);
  }

  return v7;
}

- (id)_openEditingContextForObjects:(id)a3
{
  editingManager = self->_editingManager;
  v5 = [a3 allObjects];
  v6 = [(CUIKEditingManager *)editingManager openEditingContextWithObjects:v5 interfaceType:0];

  v7 = [(CUIKUndoableEditor *)self decisionDelegate];
  [v6 setDecisionDelegate:v7];

  v8 = [(CUIKUndoableEditor *)self undoDelegate];
  [v6 setUndoDelegate:v8];

  v9 = [(CUIKUndoableEditor *)self commitDelegate];
  [v6 setCommitDelegate:v9];

  return v6;
}

- (BOOL)_saveChangesToEvents:(id)a3 span:(int64_t)a4 impliedCommitDecision:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  if (a4 != -1)
  {
    [v9 _specifySpanDecision:{+[CUIKEditingContext spanDecisionFromSpan:](CUIKEditingContext, "spanDecisionFromSpan:", a4)}];
  }

  if (v7)
  {
    v10 = [v9 saveCompleteChangeWithImpliedCommitDecisionAndClose:1 error:a6];
  }

  else
  {
    v10 = [v9 saveCompleteChangeAndClose:1 error:a6];
  }

  v11 = v10;

  return v11;
}

- (void)saveCalendars:(id)a3
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  [v4 saveCompleteChange];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)deleteCalendars:(id)a3
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  [v4 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)saveNewSources:(id)a3 commit:(BOOL)a4
{
  v5 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3, a4];
  [v5 addAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v5];
}

- (void)saveChangesToSources:(id)a3
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  [v4 saveCompleteChange];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (void)deleteSources:(id)a3
{
  v4 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  [v4 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v4];
}

- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count])
  {
    v27 = a5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v8;
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
          v15 = [v14 startDate];

          if (!v15)
          {
            v16 = [MEMORY[0x1E695DF00] nextRoundedHour];
            [v14 setStartDate:v16];
          }

          v17 = [v14 endDateUnadjustedForLegacyClients];

          if (!v17)
          {
            v18 = [v14 startDate];
            v19 = [v18 dateByAddingHours:1 inCalendar:0];
            [v14 setEndDateUnadjustedForLegacyClients:v19];
          }

          v20 = [v14 calendar];

          if (!v20)
          {
            v21 = [v14 eventStore];
            v22 = [v21 acquireDefaultCalendarForNewEvents];
            [v14 setCalendar:v22];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v23 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:v9];
    if ([v23 addAllObjects])
    {
      v24 = [v23 savePartialChange];
    }

    else
    {
      v24 = 0;
    }

    if (v27 && (v24 & 1) == 0)
    {
      *v27 = [v23 error];
    }

    editingManager = self->_editingManager;
    if (a4)
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
    v24 = 1;
  }

  return v24;
}

- (BOOL)saveEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isNew];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    if (v10)
    {
      v12 = [(CUIKUndoableEditor *)self saveNewEvents:v11 commit:1 error:a5];
    }

    else
    {
      v12 = [(CUIKUndoableEditor *)self _saveChangesToEvents:v11 span:a4 impliedCommitDecision:0 error:a5];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v7 = [MEMORY[0x1E695DFD8] setWithObject:{a3, a4, a5}];
  [(CUIKUndoableEditor *)self deleteEvents:v7 span:a4];

  return 1;
}

- (void)deleteEvents:(id)a3 span:(int64_t)a4
{
  v6 = [(CUIKUndoableEditor *)self _openEditingContextForObjects:a3];
  if (a4 != -1)
  {
    [v6 _specifySpanDecision:{+[CUIKEditingContext spanDecisionFromSpan:](CUIKEditingContext, "spanDecisionFromSpan:", a4)}];
  }

  [v6 deleteAllObjects];
  [(CUIKEditingManager *)self->_editingManager closeEditingContext:v6];
}

- (void)deleteEvents:(id)a3 span:(int64_t)a4 result:(id)a5
{
  v9 = a5;
  [(CUIKUndoableEditor *)self deleteEvents:a3 span:a4];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
    v8 = v9;
  }
}

- (BOOL)saveCalendar:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:{a3, a4}];
  [(CUIKUndoableEditor *)self saveCalendars:v5];

  return 1;
}

- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:{a3, a4}];
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