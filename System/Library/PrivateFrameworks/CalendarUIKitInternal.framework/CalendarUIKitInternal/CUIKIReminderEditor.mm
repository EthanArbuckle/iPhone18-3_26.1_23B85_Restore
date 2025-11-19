@interface CUIKIReminderEditor
- (BOOL)_saveChangesToEvents:(id)a3 error:(id *)a4;
- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (BOOL)saveCalendar:(id)a3 error:(id *)a4;
- (BOOL)saveEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (CUIKIReminderEditor)initWithEventStore:(id)a3 undoManager:(id)a4 alertDisplayer:(id)a5 pendingReminderTracker:(id)a6;
- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4;
- (void)deleteEvents:(id)a3 resultHandler:(id)a4;
- (void)performWithOptions:(id)a3 block:(id)a4;
@end

@implementation CUIKIReminderEditor

- (CUIKIReminderEditor)initWithEventStore:(id)a3 undoManager:(id)a4 alertDisplayer:(id)a5 pendingReminderTracker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CUIKIReminderEditor;
  v14 = [(CUIKIReminderEditor *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation alloc] initWithEventStore:v10 alertDisplayer:v12 undoManager:v11 changeTracker:v13];
    reminderEditor = v14->_reminderEditor;
    v14->_reminderEditor = v15;
  }

  return v14;
}

- (BOOL)_saveChangesToEvents:(id)a3 error:(id *)a4
{
  reminderEditor = self->_reminderEditor;
  v6 = [a3 allObjects];
  LOBYTE(a4) = [(CUIKIReminderEditorImplementation *)reminderEditor saveChangesToEvents:v6 error:a4];

  return a4;
}

- (void)deleteEvents:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  reminderEditor = self->_reminderEditor;
  v8 = [a3 allObjects];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__CUIKIReminderEditor_deleteEvents_resultHandler___block_invoke;
  v10[3] = &unk_278D73C78;
  v11 = v6;
  v9 = v6;
  [(CUIKIReminderEditorImplementation *)reminderEditor delete:v8 completionHandler:v10];
}

uint64_t __50__CUIKIReminderEditor_deleteEvents_resultHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = 1;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * v12);
        v15 = [v14 eventStore];
        v27 = 0;
        v16 = [v15 saveEvent:v14 span:0 commit:0 error:&v27];
        v17 = v27;

        v11 = 0;
        if (v16)
        {
          [v6 addObject:v14];
          v11 = v13;
        }

        ++v12;
        v13 = v11;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  if ([v6 count])
  {
    v18 = [v6 firstObject];
    v19 = [v18 eventStore];

    v20 = [v19 uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:v6];
    if ([v20 count])
    {
      v21 = MEMORY[0x277CBEB38];
      v32 = *MEMORY[0x277CF7C68];
      v33 = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v23 = [v21 dictionaryWithDictionary:v22];
    }

    else
    {
      v23 = 0;
    }

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 postNotificationName:*MEMORY[0x277CF7C60] object:v19 userInfo:v23];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)saveEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isNew];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
    if (v9)
    {
      v11 = [(CUIKIReminderEditor *)self saveNewEvents:v10 commit:1 error:a5];
    }

    else
    {
      v11 = [(CUIKIReminderEditor *)self _saveChangesToEvents:v10 error:a5];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v7 = [MEMORY[0x277CBEB98] setWithObject:{a3, a4, a5}];
  [(CUIKIReminderEditor *)self deleteEvents:v7 span:a4];

  return 1;
}

- (BOOL)saveCalendar:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBEB98] setWithObject:{a3, a4}];
  [(CUIKIReminderEditor *)self saveCalendars:v5];

  return 1;
}

- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4
{
  v5 = [MEMORY[0x277CBEB98] setWithObject:{a3, a4}];
  [(CUIKIReminderEditor *)self deleteCalendars:v5];
}

- (void)performWithOptions:(id)a3 block:(id)a4
{
  v10 = a4;
  reminderEditor = self->_reminderEditor;
  v7 = a3;
  v8 = [(CUIKIReminderEditorImplementation *)reminderEditor alertDisplayer];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF7C58]];

  if (v9)
  {
    [(CUIKIReminderEditorImplementation *)self->_reminderEditor setAlertDisplayer:v9];
    v10[2]();
    [(CUIKIReminderEditorImplementation *)self->_reminderEditor setAlertDisplayer:v8];
  }

  else
  {
    v10[2]();
  }
}

@end