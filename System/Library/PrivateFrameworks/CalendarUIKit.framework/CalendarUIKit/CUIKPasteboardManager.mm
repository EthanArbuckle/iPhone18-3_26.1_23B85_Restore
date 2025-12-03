@interface CUIKPasteboardManager
+ (id)_pasteboardItemForEvent:(id)event;
- (BOOL)_calendarIsPasteableTo:(id)to allCalendars:(id)calendars;
- (BOOL)canPerformPaste;
- (CGColor)colorOfCalendarToPasteTo;
- (CUIKPasteboardManager)initWithEventStoreProvider:(id)provider pasteboard:(id)pasteboard calendarProvider:(id)calendarProvider;
- (id)_eventsFromPasteboard:(id)pasteboard;
- (id)calendarToPasteTo;
- (id)calendarToPasteToWithEvents:(id)events;
- (unint64_t)numberOfEventsToPaste;
- (void)_copyEvents:(id)events toDict:(id)dict;
- (void)_cutEvents:(id)events editor:(id)editor;
- (void)_pasteEvents:(id)events atDate:(id)date dateMode:(unint64_t)mode pasteDelegate:(id)delegate duplicate:(BOOL)duplicate;
- (void)_saveNewEventsOrOpenEditor:(id)editor pasteDelegate:(id)delegate duplicate:(BOOL)duplicate;
- (void)_validateAction:(unint64_t)action forEvents:(id)events delegate:(id)delegate completion:(id)completion;
- (void)copyEvents:(id)events delegate:(id)delegate;
- (void)cutEvents:(id)events delegate:(id)delegate;
- (void)duplicateEvents:(id)events withDateMode:(unint64_t)mode delegate:(id)delegate;
- (void)pasteEventsWithDateMode:(unint64_t)mode delegate:(id)delegate;
@end

@implementation CUIKPasteboardManager

- (CUIKPasteboardManager)initWithEventStoreProvider:(id)provider pasteboard:(id)pasteboard calendarProvider:(id)calendarProvider
{
  providerCopy = provider;
  pasteboardCopy = pasteboard;
  calendarProviderCopy = calendarProvider;
  v16.receiver = self;
  v16.super_class = CUIKPasteboardManager;
  v11 = [(CUIKPasteboardManager *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_eventStoreProvider, providerCopy);
    objc_storeStrong(&v12->_pasteboard, pasteboard);
    objc_storeWeak(&v12->_calendarProvider, calendarProviderCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    copiedEvents = v12->_copiedEvents;
    v12->_copiedEvents = dictionary;
  }

  return v12;
}

- (void)cutEvents:(id)events delegate:(id)delegate
{
  eventsCopy = events;
  delegateCopy = delegate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CUIKPasteboardManager_cutEvents_delegate___block_invoke;
  v10[3] = &unk_1E839A2D8;
  v11 = delegateCopy;
  selfCopy = self;
  v13 = eventsCopy;
  v8 = eventsCopy;
  v9 = delegateCopy;
  [(CUIKPasteboardManager *)self _validateAction:0 forEvents:v8 delegate:v9 completion:v10];
}

void __44__CUIKPasteboardManager_cutEvents_delegate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) editorForPasteboardManager:*(a1 + 40)];
    [*(a1 + 40) _cutEvents:*(a1 + 48) editor:v3];
  }
}

- (void)_cutEvents:(id)events editor:(id)editor
{
  copiedEvents = self->_copiedEvents;
  editorCopy = editor;
  eventsCopy = events;
  [(CUIKPasteboardManager *)self _copyEvents:eventsCopy toDict:copiedEvents];
  [editorCopy deleteEvents:eventsCopy span:0];
}

- (void)copyEvents:(id)events delegate:(id)delegate
{
  eventsCopy = events;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CUIKPasteboardManager_copyEvents_delegate___block_invoke;
  v8[3] = &unk_1E839A300;
  v8[4] = self;
  v9 = eventsCopy;
  v7 = eventsCopy;
  [(CUIKPasteboardManager *)self _validateAction:1 forEvents:v7 delegate:delegate completion:v8];
}

uint64_t __45__CUIKPasteboardManager_copyEvents_delegate___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _copyEvents:*(result + 40) toDict:*(*(result + 32) + 32)];
  }

  return result;
}

- (void)_copyEvents:(id)events toDict:(id)dict
{
  v37 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dictCopy = dict;
  [dictCopy removeAllObjects];
  [(CUIKPasteboardManager *)self setDateForPaste:0];
  [(CUIKPasteboardManager *)self setCalendarForPaste:0];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
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
        eventOccurrenceID = [v13 eventOccurrenceID];
        duplicate = [v13 duplicate];
        [dictCopy setObject:duplicate forKeyedSubscript:eventOccurrenceID];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v35 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v18 = [v8 sortedArrayUsingDescriptors:v17];

  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [objc_opt_class() _pasteboardItemForEvent:{*(*(&v26 + 1) + 8 * j), v26}];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  [(CUIKPasteboard *)self->_pasteboard setItems:v19];
}

- (BOOL)_calendarIsPasteableTo:(id)to allCalendars:(id)calendars
{
  toCopy = to;
  calendarsCopy = calendars;
  if ([toCopy allowsContentModifications])
  {
    v7 = [calendarsCopy containsObject:toCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)calendarToPasteToWithEvents:(id)events
{
  v28[1] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_eventStoreProvider);
  eventStore = [WeakRetained eventStore];
  v7 = [eventStore calendarsForEntityType:0];

  calendarForPaste = self->_calendarForPaste;
  if (calendarForPaste && [(CUIKPasteboardManager *)self _calendarIsPasteableTo:calendarForPaste allCalendars:v7])
  {
    calendar2 = self->_calendarForPaste;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
    v28[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v12 = [eventsCopy sortedArrayUsingDescriptors:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          calendar = [v18 calendar];
          v20 = [(CUIKPasteboardManager *)self _calendarIsPasteableTo:calendar allCalendars:v7];

          if (v20)
          {
            calendar2 = [v18 calendar];
            v21 = v13;
            goto LABEL_14;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = objc_loadWeakRetained(&self->_calendarProvider);
    calendar2 = [v21 defaultCalendarForNewEvents];
LABEL_14:
  }

  return calendar2;
}

- (BOOL)canPerformPaste
{
  if (![(CUIKPasteboardManager *)self numberOfEventsToPaste])
  {
    return 0;
  }

  calendarToPasteTo = [(CUIKPasteboardManager *)self calendarToPasteTo];
  v4 = calendarToPasteTo != 0;

  return v4;
}

- (unint64_t)numberOfEventsToPaste
{
  v7[1] = *MEMORY[0x1E69E9840];
  pasteboard = self->_pasteboard;
  v7[0] = @"com.apple.calendar.pasteboard.event";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(CUIKPasteboard *)pasteboard itemSetWithPasteboardTypes:v3];

  v5 = [v4 count];
  return v5;
}

- (void)pasteEventsWithDateMode:(unint64_t)mode delegate:(id)delegate
{
  pasteboard = self->_pasteboard;
  delegateCopy = delegate;
  v8 = [(CUIKPasteboardManager *)self _eventsFromPasteboard:pasteboard];
  [(CUIKPasteboardManager *)self _pasteEvents:v8 atDate:self->_dateForPaste dateMode:mode pasteDelegate:delegateCopy duplicate:0];
}

- (void)duplicateEvents:(id)events withDateMode:(unint64_t)mode delegate:(id)delegate
{
  eventsCopy = events;
  delegateCopy = delegate;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CUIKPasteboardManager_duplicateEvents_withDateMode_delegate___block_invoke;
  v12[3] = &unk_1E839A328;
  v12[4] = self;
  v13 = eventsCopy;
  v14 = delegateCopy;
  modeCopy = mode;
  v10 = delegateCopy;
  v11 = eventsCopy;
  [(CUIKPasteboardManager *)self _validateAction:2 forEvents:v11 delegate:v10 completion:v12];
}

uint64_t __63__CUIKPasteboardManager_duplicateEvents_withDateMode_delegate___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _pasteEvents:*(result + 40) atDate:*(*(result + 32) + 48) dateMode:*(result + 56) pasteDelegate:*(result + 48) duplicate:1];
  }

  return result;
}

- (void)_pasteEvents:(id)events atDate:(id)date dateMode:(unint64_t)mode pasteDelegate:(id)delegate duplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  delegateCopy = delegate;
  dateCopy = date;
  eventsCopy = events;
  v17 = [(CUIKPasteboardManager *)self calendarToPasteToWithEvents:eventsCopy];
  v15 = [CUIKPasteboardUtilities duplicateEventsByStrippingUnsupportedFields:eventsCopy toNewCalendar:v17];

  v16 = CUIKCalendar();
  [CUIKPasteboardUtilities adjustTimesForEventsToPaste:v15 pasteDate:dateCopy dateMode:mode calendar:v16];

  [(CUIKPasteboardManager *)self _saveNewEventsOrOpenEditor:v15 pasteDelegate:delegateCopy duplicate:duplicateCopy];
}

- (void)_saveNewEventsOrOpenEditor:(id)editor pasteDelegate:(id)delegate duplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  v53 = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  delegateCopy = delegate;
  v39 = [delegateCopy editorForPasteboardManager:self];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = editorCopy;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        if ([v17 hasAttendees])
        {
          v18 = v11;
        }

        else
        {
          v18 = v10;
        }

        [v18 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v14);
  }

  if ([v11 count] >= 2)
  {
    v19 = CUIKBundle();
    v20 = v19;
    if (duplicateCopy)
    {
      v21 = @"You’re duplicating multiple events with attendees.";
    }

    else
    {
      v21 = @"You’re pasting multiple events with attendees.";
    }

    if (duplicateCopy)
    {
      v22 = @"More than one of the events you are trying to duplicate has attendees.";
    }

    else
    {
      v22 = @"More than one of the events you are trying to paste has attendees.";
    }

    v38 = delegateCopy;
    if (duplicateCopy)
    {
      v23 = @"Duplicate And Send Invitations";
    }

    else
    {
      v23 = @"Paste And Send Invitations";
    }

    v36 = [v19 localizedStringForKey:v21 value:&stru_1F4AA8958 table:0];

    v24 = CUIKBundle();
    v37 = [v24 localizedStringForKey:v22 value:&stru_1F4AA8958 table:0];

    v25 = CUIKBundle();
    v35 = [v25 localizedStringForKey:v23 value:&stru_1F4AA8958 table:0];

    v26 = [CUIKAlertController alertControllerWithTitle:v36 message:v37];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76__CUIKPasteboardManager__saveNewEventsOrOpenEditor_pasteDelegate_duplicate___block_invoke;
    v43[3] = &unk_1E839A350;
    v44 = v39;
    v45 = v12;
    v27 = v38;
    v46 = v27;
    selfCopy = self;
    v28 = [CUIKAlertAction actionWithTitle:v35 style:0 handler:v43];
    [v26 addAction:v28];
    v29 = CUIKBundle();
    v30 = [v29 localizedStringForKey:@"Cancel" value:&stru_1F4AA8958 table:0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __76__CUIKPasteboardManager__saveNewEventsOrOpenEditor_pasteDelegate_duplicate___block_invoke_2;
    v40[3] = &unk_1E839A378;
    v31 = v27;
    v41 = v31;
    selfCopy2 = self;
    v32 = [CUIKAlertAction actionWithTitle:v30 style:1 handler:v40];

    v33 = v39;
    [v26 addAction:v32];
    [v31 pasteboardManager:self presentAlert:v26];

    anyObject = v36;
    delegateCopy = v38;

    goto LABEL_26;
  }

  v33 = v39;
  [v39 saveNewEvents:v10 commit:1 error:0];
  if (objc_opt_respondsToSelector())
  {
    [delegateCopy pasteboardManager:self didFinishPasteWithResult:0 willOpenEditor:{objc_msgSend(v11, "count") != 0}];
  }

  if ([v11 count] == 1)
  {
    anyObject = [v11 anyObject];
    [delegateCopy pasteboardManager:self beginEditingEvent:anyObject];
LABEL_26:
  }
}

uint64_t __76__CUIKPasteboardManager__saveNewEventsOrOpenEditor_pasteDelegate_duplicate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveNewEvents:*(a1 + 40) commit:1 error:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [v3 pasteboardManager:v4 didFinishPasteWithResult:0 willOpenEditor:1];
  }

  return result;
}

uint64_t __76__CUIKPasteboardManager__saveNewEventsOrOpenEditor_pasteDelegate_duplicate___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 pasteboardManager:v4 didFinishPasteWithResult:1 willOpenEditor:0];
  }

  return result;
}

- (void)_validateAction:(unint64_t)action forEvents:(id)events delegate:(id)delegate completion:(id)completion
{
  v73 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  delegateCopy = delegate;
  completionCopy = completion;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = [eventsCopy countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v69;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v15 += [*(*(&v68 + 1) + 8 * i) isOnlyOccurrence] ^ 1;
      }

      v14 = [eventsCopy countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v14);
    if (v15 >= 1)
    {
      selfCopy = self;
      v18 = [CUIKAlertController alertControllerWithTitle:0 message:0];
      v19 = CUIKBundle();
      v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_1F4AA8958 table:0];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke;
      v66[3] = &unk_1E839A3A0;
      v21 = completionCopy;
      v67 = v21;
      v22 = [CUIKAlertAction actionWithTitle:v20 style:1 handler:v66];

      [v18 addAction:v22];
      if (action)
      {
        if (action == 2)
        {
          v33 = CUIKBundle();
          v34 = v33;
          if (v15 == 1)
          {
            v35 = [v33 localizedStringForKey:@"You’re duplicating an event." value:&stru_1F4AA8958 table:0];
            [v18 setTitle:v35];

            v36 = CUIKBundle();
            v37 = [v36 localizedStringForKey:@"This event is an occurrence of a repeating event. Calendar will duplicate only this selected occurrence." value:&stru_1F4AA8958 table:0];
            [v18 setMessage:v37];

            v29 = CUIKBundle();
            v30 = [v29 localizedStringForKey:@"Duplicate This Event" value:&stru_1F4AA8958 table:0];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_7;
            v54[3] = &unk_1E839A3A0;
            v31 = &v55;
            v55 = v21;
            v32 = v54;
          }

          else
          {
            v43 = [v33 localizedStringForKey:@"You’re duplicating events." value:&stru_1F4AA8958 table:0];
            [v18 setTitle:v43];

            v44 = CUIKBundle();
            v45 = [v44 localizedStringForKey:@"Some of the selected events are repeating events. Calendar will duplicate only the selected occurrences of these events." value:&stru_1F4AA8958 table:0];
            [v18 setMessage:v45];

            v29 = CUIKBundle();
            v30 = [v29 localizedStringForKey:@"Duplicate These Events" value:&stru_1F4AA8958 table:0];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_6;
            v56[3] = &unk_1E839A3A0;
            v31 = &v57;
            v57 = v21;
            v32 = v56;
          }
        }

        else
        {
          v23 = selfCopy;
          if (action != 1)
          {
LABEL_23:
            [delegateCopy pasteboardManager:v23 presentAlert:v18];

            goto LABEL_24;
          }

          v24 = CUIKBundle();
          v25 = v24;
          if (v15 == 1)
          {
            v26 = [v24 localizedStringForKey:@"You’re copying an event." value:&stru_1F4AA8958 table:0];
            [v18 setTitle:v26];

            v27 = CUIKBundle();
            v28 = [v27 localizedStringForKey:@"This event is an occurrence of a repeating event. Calendar will copy only this selected occurrence." value:&stru_1F4AA8958 table:0];
            [v18 setMessage:v28];

            v29 = CUIKBundle();
            v30 = [v29 localizedStringForKey:@"Copy This Event" value:&stru_1F4AA8958 table:0];
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_3;
            v62[3] = &unk_1E839A3A0;
            v31 = &v63;
            v63 = v21;
            v32 = v62;
          }

          else
          {
            v49 = [v24 localizedStringForKey:@"You’re copying events." value:&stru_1F4AA8958 table:0];
            [v18 setTitle:v49];

            v50 = CUIKBundle();
            v51 = [v50 localizedStringForKey:@"Some of the selected events are repeating events. Calendar will copy only the selected occurrences of these events." value:&stru_1F4AA8958 table:0];
            [v18 setMessage:v51];

            v29 = CUIKBundle();
            v30 = [v29 localizedStringForKey:@"Copy These Events" value:&stru_1F4AA8958 table:0];
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_2;
            v64[3] = &unk_1E839A3A0;
            v31 = &v65;
            v65 = v21;
            v32 = v64;
          }
        }
      }

      else
      {
        v38 = CUIKBundle();
        v39 = v38;
        if (v15 == 1)
        {
          v40 = [v38 localizedStringForKey:@"You’re cutting an event." value:&stru_1F4AA8958 table:0];
          [v18 setTitle:v40];

          v41 = CUIKBundle();
          v42 = [v41 localizedStringForKey:@"This event is an occurrence of a repeating event. Calendar will cut only this selected occurrence." value:&stru_1F4AA8958 table:0];
          [v18 setMessage:v42];

          v29 = CUIKBundle();
          v30 = [v29 localizedStringForKey:@"Cut This Event" value:&stru_1F4AA8958 table:0];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_5;
          v58[3] = &unk_1E839A3A0;
          v31 = &v59;
          v59 = v21;
          v32 = v58;
        }

        else
        {
          v46 = [v38 localizedStringForKey:@"You’re cutting events." value:&stru_1F4AA8958 table:0];
          [v18 setTitle:v46];

          v47 = CUIKBundle();
          v48 = [v47 localizedStringForKey:@"Some of the selected events are repeating events. Calendar will cut only the selected occurrences of these events." value:&stru_1F4AA8958 table:0];
          [v18 setMessage:v48];

          v29 = CUIKBundle();
          v30 = [v29 localizedStringForKey:@"Cut These Events" value:&stru_1F4AA8958 table:0];
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __71__CUIKPasteboardManager__validateAction_forEvents_delegate_completion___block_invoke_4;
          v60[3] = &unk_1E839A3A0;
          v31 = &v61;
          v61 = v21;
          v32 = v60;
        }
      }

      v52 = [CUIKAlertAction actionWithTitle:v30 style:0 handler:v32];
      [v18 addAction:v52];

      v23 = selfCopy;
      goto LABEL_23;
    }
  }

  (*(completionCopy + 2))(completionCopy, 1);
LABEL_24:
}

+ (id)_pasteboardItemForEvent:(id)event
{
  v23[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  eventOccurrenceID = [eventCopy eventOccurrenceID];
  v6 = [eventOccurrenceID dataUsingEncoding:4];
  [dictionary setObject:v6 forKeyedSubscript:@"com.apple.calendar.pasteboard.event"];
  v7 = +[CUIKEventDescriptionGenerator sharedGenerator];
  v8 = [v7 textRepresentationForEvent:eventCopy withTextFormat:0 showURI:1];

  identifier = [*MEMORY[0x1E6983060] identifier];
  [dictionary setObject:v8 forKeyedSubscript:identifier];

  v10 = +[CUIKEventDescriptionGenerator sharedGenerator];
  v11 = [v10 textRepresentationForEvent:eventCopy withTextFormat:1 showURI:1];

  v12 = [v11 length];
  v22 = *MEMORY[0x1E69DB628];
  v23[0] = *MEMORY[0x1E69DB6A0];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v21 = 0;
  v14 = [v11 dataFromRange:0 documentAttributes:v12 error:{v13, &v21}];
  v15 = v21;

  if (v14)
  {
    identifier2 = [*MEMORY[0x1E6982F90] identifier];
    [dictionary setObject:v14 forKeyedSubscript:identifier2];
  }

  else
  {
    identifier2 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
    {
      [(CUIKPasteboardManager *)v15 _pasteboardItemForEvent:identifier2];
    }
  }

  v17 = +[CUIKEventDescriptionGenerator sharedGenerator];
  v18 = [v17 textRepresentationForEvent:eventCopy withTextFormat:2 showURI:1];

  identifier3 = [*MEMORY[0x1E6982E18] identifier];
  [dictionary setObject:v18 forKeyedSubscript:identifier3];

  return dictionary;
}

- (id)_eventsFromPasteboard:(id)pasteboard
{
  v25[1] = *MEMORY[0x1E69E9840];
  pasteboardCopy = pasteboard;
  v5 = [MEMORY[0x1E695DFA8] set];
  v25[0] = @"com.apple.calendar.pasteboard.event";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v7 = [pasteboardCopy itemSetWithPasteboardTypes:v6];

  v18 = v7;
  [pasteboardCopy dataForPasteboardType:@"com.apple.calendar.pasteboard.event" inItemSet:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(obj);
        }

        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:*(*(&v20 + 1) + 8 * i) encoding:4];
        v13 = [(NSMutableDictionary *)self->_copiedEvents objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_eventStoreProvider);
          eventStore = [WeakRetained eventStore];
          v14 = [eventStore eventWithIdentifier:v12];

          if (!v14)
          {
            goto LABEL_10;
          }
        }

        [v5 addObject:v14];

LABEL_10:
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v5;
}

- (CGColor)colorOfCalendarToPasteTo
{
  calendarToPasteTo = [(CUIKPasteboardManager *)self calendarToPasteTo];
  v3 = CGColorRetain([calendarToPasteTo CGColor]);
  v4 = CFAutorelease(v3);

  return v4;
}

- (id)calendarToPasteTo
{
  v3 = [(CUIKPasteboardManager *)self _eventsFromPasteboard:self->_pasteboard];
  v4 = [(CUIKPasteboardManager *)self calendarToPasteToWithEvents:v3];

  return v4;
}

+ (void)_pasteboardItemForEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Unable to convert attributed string to RTF for the pasteboard: %@", &v2, 0xCu);
}

@end