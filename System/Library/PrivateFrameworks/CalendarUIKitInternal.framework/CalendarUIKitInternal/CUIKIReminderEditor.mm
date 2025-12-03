@interface CUIKIReminderEditor
- (BOOL)_saveChangesToEvents:(id)events error:(id *)error;
- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveCalendar:(id)calendar error:(id *)error;
- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error;
- (CUIKIReminderEditor)initWithEventStore:(id)store undoManager:(id)manager alertDisplayer:(id)displayer pendingReminderTracker:(id)tracker;
- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type;
- (void)deleteEvents:(id)events resultHandler:(id)handler;
- (void)performWithOptions:(id)options block:(id)block;
@end

@implementation CUIKIReminderEditor

- (CUIKIReminderEditor)initWithEventStore:(id)store undoManager:(id)manager alertDisplayer:(id)displayer pendingReminderTracker:(id)tracker
{
  storeCopy = store;
  managerCopy = manager;
  displayerCopy = displayer;
  trackerCopy = tracker;
  v18.receiver = self;
  v18.super_class = CUIKIReminderEditor;
  v14 = [(CUIKIReminderEditor *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation alloc] initWithEventStore:storeCopy alertDisplayer:displayerCopy undoManager:managerCopy changeTracker:trackerCopy];
    reminderEditor = v14->_reminderEditor;
    v14->_reminderEditor = v15;
  }

  return v14;
}

- (BOOL)_saveChangesToEvents:(id)events error:(id *)error
{
  reminderEditor = self->_reminderEditor;
  allObjects = [events allObjects];
  LOBYTE(error) = [(CUIKIReminderEditorImplementation *)reminderEditor saveChangesToEvents:allObjects error:error];

  return error;
}

- (void)deleteEvents:(id)events resultHandler:(id)handler
{
  handlerCopy = handler;
  reminderEditor = self->_reminderEditor;
  allObjects = [events allObjects];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__CUIKIReminderEditor_deleteEvents_resultHandler___block_invoke;
  v10[3] = &unk_278D73C78;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(CUIKIReminderEditorImplementation *)reminderEditor delete:allObjects completionHandler:v10];
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

- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = eventsCopy;
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
        eventStore = [v14 eventStore];
        v27 = 0;
        v16 = [eventStore saveEvent:v14 span:0 commit:0 error:&v27];
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
    firstObject = [v6 firstObject];
    eventStore2 = [firstObject eventStore];

    v20 = [eventStore2 uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:v6];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277CF7C60] object:eventStore2 userInfo:v23];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error
{
  eventCopy = event;
  v8 = eventCopy;
  if (eventCopy)
  {
    isNew = [eventCopy isNew];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
    if (isNew)
    {
      v11 = [(CUIKIReminderEditor *)self saveNewEvents:v10 commit:1 error:error];
    }

    else
    {
      v11 = [(CUIKIReminderEditor *)self _saveChangesToEvents:v10 error:error];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error
{
  v7 = [MEMORY[0x277CBEB98] setWithObject:{event, span, error}];
  [(CUIKIReminderEditor *)self deleteEvents:v7 span:span];

  return 1;
}

- (BOOL)saveCalendar:(id)calendar error:(id *)error
{
  v5 = [MEMORY[0x277CBEB98] setWithObject:{calendar, error}];
  [(CUIKIReminderEditor *)self saveCalendars:v5];

  return 1;
}

- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type
{
  v5 = [MEMORY[0x277CBEB98] setWithObject:{calendar, type}];
  [(CUIKIReminderEditor *)self deleteCalendars:v5];
}

- (void)performWithOptions:(id)options block:(id)block
{
  blockCopy = block;
  reminderEditor = self->_reminderEditor;
  optionsCopy = options;
  alertDisplayer = [(CUIKIReminderEditorImplementation *)reminderEditor alertDisplayer];
  v9 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CF7C58]];

  if (v9)
  {
    [(CUIKIReminderEditorImplementation *)self->_reminderEditor setAlertDisplayer:v9];
    blockCopy[2]();
    [(CUIKIReminderEditorImplementation *)self->_reminderEditor setAlertDisplayer:alertDisplayer];
  }

  else
  {
    blockCopy[2]();
  }
}

@end