@interface CUIKEventStoreEditor
- (BOOL)_saveEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error;
- (BOOL)commitEventForOOPModificationRecording:(id)recording error:(id *)error;
- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveCalendar:(id)calendar error:(id *)error;
- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error;
- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type;
- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result;
- (void)saveChangesToEvents:(id)events span:(int64_t)span;
@end

@implementation CUIKEventStoreEditor

- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  v39 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v28 = commitCopy;
    errorCopy = error;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = eventsCopy;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v33;
      v13 = 1;
      do
      {
        v14 = 0;
        v15 = v11;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v32 + 1) + 8 * v14);
          eventStore = [v16 eventStore];
          v31 = v15;
          v18 = [eventStore saveEvent:v16 span:0 commit:0 error:&v31];
          v11 = v31;

          if ((v18 & 1) == 0)
          {
            v19 = +[CUIKLogSubsystem eventStoreEditor];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v11;
              _os_log_error_impl(&dword_1CAB19000, v19, OS_LOG_TYPE_ERROR, "Failed to save new event: %@", buf, 0xCu);
            }

            v13 = 0;
          }

          ++v14;
          v15 = v11;
        }

        while (v10 != v14);
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v13 = 1;
    }

    if (v28)
    {
      anyObject = [v8 anyObject];
      eventStore2 = [anyObject eventStore];
      v30 = v11;
      v22 = [eventStore2 commit:&v30];
      v23 = v30;

      if ((v22 & 1) == 0)
      {
        v24 = +[CUIKLogSubsystem eventStoreEditor];
        v25 = errorCopy;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CUIKEventStoreEditor saveNewEvents:commit:error:];
        }

        v13 = 0;
        if (!errorCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v23 = v11;
    }

    v25 = errorCopy;
    if (!errorCopy)
    {
LABEL_26:

      goto LABEL_27;
    }

LABEL_24:
    if (v23)
    {
      v26 = v23;
      *v25 = v23;
    }

    goto LABEL_26;
  }

  v13 = 1;
LABEL_27:

  return v13 & 1;
}

- (void)saveChangesToEvents:(id)events span:(int64_t)span
{
  v32 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = eventsCopy;
    v6 = eventsCopy;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v26;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v25 + 1) + 8 * v11);
          eventStore = [v13 eventStore];
          v24 = v12;
          v15 = [eventStore saveEvent:v13 span:span commit:0 error:&v24];
          v9 = v24;

          if ((v15 & 1) == 0)
          {
            v16 = +[CUIKLogSubsystem eventStoreEditor];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v9;
              _os_log_error_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_ERROR, "Failed to save new event: %@", buf, 0xCu);
            }
          }

          ++v11;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    anyObject = [v6 anyObject];
    eventStore2 = [anyObject eventStore];
    v23 = v9;
    v19 = [eventStore2 commit:&v23];
    v20 = v23;

    eventsCopy = v22;
    if ((v19 & 1) == 0)
    {
      v21 = +[CUIKLogSubsystem eventStoreEditor];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CUIKEventStoreEditor saveNewEvents:commit:error:];
      }
    }
  }
}

- (BOOL)_saveEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  eventCopy = event;
  eventStore = [eventCopy eventStore];
  v16 = 0;
  v11 = [eventStore saveEvent:eventCopy span:span commit:commitCopy error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor _saveEvent:span:commit:error:];
    }

    if (([eventCopy isNew] & 1) == 0)
    {
      [eventCopy rollback];
    }
  }

  if (error)
  {
    v14 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)commitEventForOOPModificationRecording:(id)recording error:(id *)error
{
  eventStore = [recording eventStore];
  LOBYTE(error) = [eventStore commitWithRollback:error];

  return error;
}

- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error
{
  eventCopy = event;
  eventStore = [eventCopy eventStore];
  v14 = 0;
  v9 = [eventStore removeEvent:eventCopy span:span error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor deleteEvent:span:error:];
    }

    [eventCopy rollback];
  }

  if (error)
  {
    v12 = v10;
    *error = v10;
  }

  return v9;
}

- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result
{
  v37 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  resultCopy = result;
  if (![eventsCopy count])
  {
    v21 = 0;
    v14 = 1;
    if (!resultCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v26 = resultCopy;
  v27 = eventsCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    v14 = 1;
    do
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v30 + 1) + 8 * v15);
        eventStore = [v17 eventStore];
        v29 = v16;
        v19 = [eventStore removeEvent:v17 span:span commit:0 error:&v29];
        v12 = v29;

        if ((v19 & 1) == 0)
        {
          v20 = +[CUIKLogSubsystem eventStoreEditor];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_error_impl(&dword_1CAB19000, v20, OS_LOG_TYPE_ERROR, "Failed to remove event: %@", buf, 0xCu);
          }

          v14 = 0;
        }

        ++v15;
        v16 = v12;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v14 = 1;
  }

  anyObject = [v9 anyObject];
  eventStore2 = [anyObject eventStore];
  v28 = v12;
  v24 = [eventStore2 commit:&v28];
  v21 = v28;

  if ((v24 & 1) == 0)
  {
    v25 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor deleteEvents:span:result:];
    }

    v14 = 0;
  }

  resultCopy = v26;
  eventsCopy = v27;
  if (v26)
  {
LABEL_22:
    resultCopy[2](resultCopy, v14 & 1, v21);
  }

LABEL_23:
}

- (BOOL)saveCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  eventStore = [calendarCopy eventStore];
  v12 = 0;
  v7 = [eventStore saveCalendar:calendarCopy commit:1 error:&v12];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor saveCalendar:error:];
    }
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v7;
}

- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type
{
  calendarCopy = calendar;
  eventStore = [calendarCopy eventStore];
  v7 = eventStore;
  if (type)
  {
    v13 = 0;
    v8 = [eventStore deleteCalendar:calendarCopy forEntityType:type error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = +[CUIKLogSubsystem eventStoreEditor];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CUIKEventStoreEditor deleteCalendar:forEntityType:];
      }

LABEL_8:
    }
  }

  else
  {
    v12 = 0;
    v11 = [eventStore removeCalendar:calendarCopy commit:1 error:&v12];
    v9 = v12;

    if ((v11 & 1) == 0)
    {
      v10 = +[CUIKLogSubsystem eventStoreEditor];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CUIKEventStoreEditor deleteCalendar:forEntityType:];
      }

      goto LABEL_8;
    }
  }
}

@end