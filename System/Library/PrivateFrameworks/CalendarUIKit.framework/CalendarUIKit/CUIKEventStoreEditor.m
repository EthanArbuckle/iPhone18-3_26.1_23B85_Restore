@interface CUIKEventStoreEditor
- (BOOL)_saveEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6;
- (BOOL)commitEventForOOPModificationRecording:(id)a3 error:(id *)a4;
- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (BOOL)saveCalendar:(id)a3 error:(id *)a4;
- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4;
- (void)deleteEvents:(id)a3 span:(int64_t)a4 result:(id)a5;
- (void)saveChangesToEvents:(id)a3 span:(int64_t)a4;
@end

@implementation CUIKEventStoreEditor

- (BOOL)saveNewEvents:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([v7 count])
  {
    v28 = v6;
    v29 = a5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
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
          v17 = [v16 eventStore];
          v31 = v15;
          v18 = [v17 saveEvent:v16 span:0 commit:0 error:&v31];
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
      v20 = [v8 anyObject];
      v21 = [v20 eventStore];
      v30 = v11;
      v22 = [v21 commit:&v30];
      v23 = v30;

      if ((v22 & 1) == 0)
      {
        v24 = +[CUIKLogSubsystem eventStoreEditor];
        v25 = v29;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CUIKEventStoreEditor saveNewEvents:commit:error:];
        }

        v13 = 0;
        if (!v29)
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

    v25 = v29;
    if (!v29)
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

- (void)saveChangesToEvents:(id)a3 span:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v6 = v5;
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
          v14 = [v13 eventStore];
          v24 = v12;
          v15 = [v14 saveEvent:v13 span:a4 commit:0 error:&v24];
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

    v17 = [v6 anyObject];
    v18 = [v17 eventStore];
    v23 = v9;
    v19 = [v18 commit:&v23];
    v20 = v23;

    v5 = v22;
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

- (BOOL)_saveEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = [v9 eventStore];
  v16 = 0;
  v11 = [v10 saveEvent:v9 span:a4 commit:v7 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor _saveEvent:span:commit:error:];
    }

    if (([v9 isNew] & 1) == 0)
    {
      [v9 rollback];
    }
  }

  if (a6)
  {
    v14 = v12;
    *a6 = v12;
  }

  return v11;
}

- (BOOL)commitEventForOOPModificationRecording:(id)a3 error:(id *)a4
{
  v5 = [a3 eventStore];
  LOBYTE(a4) = [v5 commitWithRollback:a4];

  return a4;
}

- (BOOL)deleteEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 eventStore];
  v14 = 0;
  v9 = [v8 removeEvent:v7 span:a4 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor deleteEvent:span:error:];
    }

    [v7 rollback];
  }

  if (a5)
  {
    v12 = v10;
    *a5 = v10;
  }

  return v9;
}

- (void)deleteEvents:(id)a3 span:(int64_t)a4 result:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (![v7 count])
  {
    v21 = 0;
    v14 = 1;
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v26 = v8;
  v27 = v7;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
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
        v18 = [v17 eventStore];
        v29 = v16;
        v19 = [v18 removeEvent:v17 span:a4 commit:0 error:&v29];
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

  v22 = [v9 anyObject];
  v23 = [v22 eventStore];
  v28 = v12;
  v24 = [v23 commit:&v28];
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

  v8 = v26;
  v7 = v27;
  if (v26)
  {
LABEL_22:
    v8[2](v8, v14 & 1, v21);
  }

LABEL_23:
}

- (BOOL)saveCalendar:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 eventStore];
  v12 = 0;
  v7 = [v6 saveCalendar:v5 commit:1 error:&v12];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = +[CUIKLogSubsystem eventStoreEditor];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventStoreEditor saveCalendar:error:];
    }
  }

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v7;
}

- (void)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 eventStore];
  v7 = v6;
  if (a4)
  {
    v13 = 0;
    v8 = [v6 deleteCalendar:v5 forEntityType:a4 error:&v13];
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
    v11 = [v6 removeCalendar:v5 commit:1 error:&v12];
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