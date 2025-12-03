@interface CUIKCompositeEditor
- (BOOL)calendarUsesEditor:(id)editor;
- (BOOL)commitEventForOOPModificationRecording:(id)recording error:(id *)error;
- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)eventUsesEditor:(id)editor;
- (BOOL)saveCalendar:(id)calendar error:(id *)error;
- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error;
- (BOOL)saveEventForOOPModificationRecording:(id)recording span:(int64_t)span error:(id *)error;
- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error;
- (BOOL)sourceUsesEditor:(id)editor;
- (CUIKCompositeEditor)initWithEditors:(id)editors;
- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type;
- (void)deleteEvents:(id)events span:(int64_t)span;
- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result;
- (void)dispatchCalendar:(id)calendar block:(id)block;
- (void)dispatchCalendars:(id)calendars block:(id)block;
- (void)dispatchEvent:(id)event block:(id)block;
- (void)dispatchEvents:(id)events block:(id)block;
- (void)dispatchSources:(id)sources block:(id)block;
- (void)performWithOptions:(id)options block:(id)block;
- (void)saveChangesToEvents:(id)events impliedCommitDecision:(BOOL)decision;
- (void)saveChangesToEvents:(id)events span:(int64_t)span;
- (void)saveNewSources:(id)sources commit:(BOOL)commit;
@end

@implementation CUIKCompositeEditor

- (CUIKCompositeEditor)initWithEditors:(id)editors
{
  editorsCopy = editors;
  v9.receiver = self;
  v9.super_class = CUIKCompositeEditor;
  v6 = [(CUIKCompositeEditor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editors, editors);
  }

  return v7;
}

- (BOOL)saveNewEvents:(id)events commit:(BOOL)commit error:(id *)error
{
  eventsCopy = events;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__CUIKCompositeEditor_saveNewEvents_commit_error___block_invoke;
  v11[3] = &unk_1E839A050;
  commitCopy = commit;
  v11[4] = &v17;
  v11[5] = &v13;
  [(CUIKCompositeEditor *)self dispatchEvents:eventsCopy block:v11];
  if (error)
  {
    *error = v18[5];
  }

  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __50__CUIKCompositeEditor_saveNewEvents_commit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v8 = [a2 saveNewEvents:a3 commit:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)saveChangesToEvents:(id)events span:(int64_t)span
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__CUIKCompositeEditor_saveChangesToEvents_span___block_invoke;
  v4[3] = &__block_descriptor_40_e44_v32__0___CUIKEditorExtended__8__NSSet_16_B24l;
  v4[4] = span;
  [(CUIKCompositeEditor *)self dispatchEvents:events block:v4];
}

- (BOOL)saveEvent:(id)event span:(int64_t)span error:(id *)error
{
  eventCopy = event;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__CUIKCompositeEditor_saveEvent_span_error___block_invoke;
  v12[3] = &unk_1E839A098;
  v14 = &v17;
  v9 = eventCopy;
  v15 = &v21;
  spanCopy = span;
  v13 = v9;
  [(CUIKCompositeEditor *)self dispatchEvent:v9 block:v12];
  if (error)
  {
    *error = v22[5];
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void __44__CUIKCompositeEditor_saveEvent_span_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [a2 saveEvent:v3 span:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

- (BOOL)commitEventForOOPModificationRecording:(id)recording error:(id *)error
{
  recordingCopy = recording;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CUIKCompositeEditor_commitEventForOOPModificationRecording_error___block_invoke;
  v10[3] = &unk_1E839A0C0;
  v12 = &v14;
  v7 = recordingCopy;
  v11 = v7;
  v13 = &v18;
  [(CUIKCompositeEditor *)self dispatchEvent:v7 block:v10];
  if (error)
  {
    *error = v19[5];
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __68__CUIKCompositeEditor_commitEventForOOPModificationRecording_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 commitEventForOOPModificationRecording:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (BOOL)saveEventForOOPModificationRecording:(id)recording span:(int64_t)span error:(id *)error
{
  recordingCopy = recording;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CUIKCompositeEditor_saveEventForOOPModificationRecording_span_error___block_invoke;
  v12[3] = &unk_1E839A098;
  v14 = &v17;
  v9 = recordingCopy;
  v15 = &v21;
  spanCopy = span;
  v13 = v9;
  [(CUIKCompositeEditor *)self dispatchEvent:v9 block:v12];
  if (error)
  {
    *error = v22[5];
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void __71__CUIKCompositeEditor_saveEventForOOPModificationRecording_span_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [a2 saveEventForOOPModificationRecording:v3 span:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

- (void)saveChangesToEvents:(id)events impliedCommitDecision:(BOOL)decision
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CUIKCompositeEditor_saveChangesToEvents_impliedCommitDecision___block_invoke;
  v4[3] = &__block_descriptor_33_e44_v32__0___CUIKEditorExtended__8__NSSet_16_B24l;
  decisionCopy = decision;
  [(CUIKCompositeEditor *)self dispatchEvents:events block:v4];
}

- (BOOL)deleteEvent:(id)event span:(int64_t)span error:(id *)error
{
  eventCopy = event;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CUIKCompositeEditor_deleteEvent_span_error___block_invoke;
  v12[3] = &unk_1E839A098;
  v14 = &v17;
  v9 = eventCopy;
  v15 = &v21;
  spanCopy = span;
  v13 = v9;
  [(CUIKCompositeEditor *)self dispatchEvent:v9 block:v12];
  if (error)
  {
    *error = v22[5];
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void __46__CUIKCompositeEditor_deleteEvent_span_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [a2 deleteEvent:v3 span:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

- (void)deleteEvents:(id)events span:(int64_t)span result:(id)result
{
  eventsCopy = events;
  resultCopy = result;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 1;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__5;
  v25[4] = __Block_byref_object_dispose__5;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke;
  aBlock[3] = &unk_1E839A128;
  v10 = resultCopy;
  v22 = v10;
  v23 = v27;
  v24 = v25;
  v11 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke_2;
  v14[3] = &unk_1E839A178;
  v19 = v25;
  spanCopy = span;
  v16 = &v33;
  v17 = &v29;
  v18 = v27;
  v12 = v11;
  v15 = v12;
  [(CUIKCompositeEditor *)self dispatchEvents:eventsCopy block:v14];
  v13 = *(v34 + 6) - 1;
  *(v34 + 6) = v13;
  if (*(v30 + 6) == v13)
  {
    v12[2](v12);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

uint64_t __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 40));
  }

  return result;
}

void __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke_3;
  v8[3] = &unk_1E839A150;
  v10 = *(a1 + 48);
  v5 = *(a1 + 72);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = *(a1 + 64);
  v12 = v6;
  v9 = v7;
  [a2 deleteEvents:a3 span:v5 result:v8];
}

void __48__CUIKCompositeEditor_deleteEvents_span_result___block_invoke_3(void *a1, char a2, void *a3)
{
  v6 = a3;
  ++*(*(a1[5] + 8) + 24);
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }

  if (*(*(a1[5] + 8) + 24) == *(*(a1[8] + 8) + 24))
  {
    (*(a1[4] + 16))();
  }
}

- (void)deleteEvents:(id)events span:(int64_t)span
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CUIKCompositeEditor_deleteEvents_span___block_invoke;
  v4[3] = &__block_descriptor_40_e44_v32__0___CUIKEditorExtended__8__NSSet_16_B24l;
  v4[4] = span;
  [(CUIKCompositeEditor *)self dispatchEvents:events block:v4];
}

- (void)deleteCalendar:(id)calendar forEntityType:(unint64_t)type
{
  calendarCopy = calendar;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CUIKCompositeEditor_deleteCalendar_forEntityType___block_invoke;
  v8[3] = &unk_1E839A1A0;
  v9 = calendarCopy;
  typeCopy = type;
  v7 = calendarCopy;
  [(CUIKCompositeEditor *)self dispatchCalendar:v7 block:v8];
}

- (BOOL)saveCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CUIKCompositeEditor_saveCalendar_error___block_invoke;
  v10[3] = &unk_1E839A0C0;
  v12 = &v14;
  v7 = calendarCopy;
  v11 = v7;
  v13 = &v18;
  [(CUIKCompositeEditor *)self dispatchCalendar:v7 block:v10];
  if (error)
  {
    *error = v19[5];
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __42__CUIKCompositeEditor_saveCalendar_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 saveCalendar:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (void)saveNewSources:(id)sources commit:(BOOL)commit
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CUIKCompositeEditor_saveNewSources_commit___block_invoke;
  v4[3] = &__block_descriptor_33_e44_v32__0___CUIKEditorExtended__8__NSSet_16_B24l;
  commitCopy = commit;
  [(CUIKCompositeEditor *)self dispatchSources:sources block:v4];
}

- (BOOL)eventUsesEditor:(id)editor
{
  v15 = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_editors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) eventUsesEditor:{editorCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)calendarUsesEditor:(id)editor
{
  v15 = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_editors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) calendarUsesEditor:{editorCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)sourceUsesEditor:(id)editor
{
  v15 = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_editors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) sourceUsesEditor:{editorCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)dispatchEvents:(id)events block:(id)block
{
  v57 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  blockCopy = block;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = eventsCopy;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = self->_editors;
        blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16, blockCopy];
        if (blockCopy)
        {
          v11 = 0;
          v12 = *v47;
          while (2)
          {
            v13 = 0;
            v14 = v11;
            v11 += blockCopy;
            do
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v46 + 1) + 8 * v13) eventUsesEditor:v8])
              {
                v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                v16 = [v30 objectForKeyedSubscript:v15];

                if (!v16)
                {
                  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                  [v30 setObject:v16 forKeyedSubscript:v17];
                }

                [v16 addObject:v8];

                goto LABEL_18;
              }

              ++v14;
              ++v13;
            }

            while (blockCopy != v13);
            blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (blockCopy)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v6);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v30;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v19)
  {
    v20 = *v39;
LABEL_22:
    v21 = 0;
    while (1)
    {
      if (*v39 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v38 + 1) + 8 * v21);
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      v24 = [v18 objectForKeyedSubscript:v22];
      v25 = [(NSArray *)self->_editors objectAtIndexedSubscript:unsignedIntegerValue];
      options = self->_options;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __44__CUIKCompositeEditor_dispatchEvents_block___block_invoke;
      v33[3] = &unk_1E839A1C8;
      v35 = blockCopy;
      v33[4] = self;
      v37 = unsignedIntegerValue;
      v27 = v24;
      v34 = v27;
      v36 = &v42;
      [v25 performWithOptions:options block:v33];

      LOBYTE(v25) = *(v43 + 24);
      if (v25)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v19)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v42, 8);
}

void __44__CUIKCompositeEditor_dispatchEvents_block___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = [*(a1[4] + 8) objectAtIndexedSubscript:a1[8]];
  (*(v2 + 16))(v2, v3, a1[5], *(a1[7] + 8) + 24);
}

- (void)dispatchEvent:(id)event block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_editors;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 eventUsesEditor:eventCopy])
        {
          options = self->_options;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __43__CUIKCompositeEditor_dispatchEvent_block___block_invoke;
          v15[3] = &unk_1E839A1F0;
          v15[4] = v13;
          v16 = blockCopy;
          [v13 performWithOptions:options block:v15];

          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)dispatchCalendars:(id)calendars block:(id)block
{
  v57 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  blockCopy = block;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = calendarsCopy;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = self->_editors;
        blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16, blockCopy];
        if (blockCopy)
        {
          v11 = 0;
          v12 = *v47;
          while (2)
          {
            v13 = 0;
            v14 = v11;
            v11 += blockCopy;
            do
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v46 + 1) + 8 * v13) calendarUsesEditor:v8])
              {
                v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                v16 = [v30 objectForKeyedSubscript:v15];

                if (!v16)
                {
                  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                  [v30 setObject:v16 forKeyedSubscript:v17];
                }

                [v16 addObject:v8];

                goto LABEL_18;
              }

              ++v14;
              ++v13;
            }

            while (blockCopy != v13);
            blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (blockCopy)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v6);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v30;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v19)
  {
    v20 = *v39;
LABEL_22:
    v21 = 0;
    while (1)
    {
      if (*v39 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v38 + 1) + 8 * v21);
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      v24 = [v18 objectForKeyedSubscript:v22];
      v25 = [(NSArray *)self->_editors objectAtIndexedSubscript:unsignedIntegerValue];
      options = self->_options;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __47__CUIKCompositeEditor_dispatchCalendars_block___block_invoke;
      v33[3] = &unk_1E839A1C8;
      v35 = blockCopy;
      v33[4] = self;
      v37 = unsignedIntegerValue;
      v27 = v24;
      v34 = v27;
      v36 = &v42;
      [v25 performWithOptions:options block:v33];

      LOBYTE(v25) = *(v43 + 24);
      if (v25)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v19)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v42, 8);
}

void __47__CUIKCompositeEditor_dispatchCalendars_block___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = [*(a1[4] + 8) objectAtIndexedSubscript:a1[8]];
  (*(v2 + 16))(v2, v3, a1[5], *(a1[7] + 8) + 24);
}

- (void)dispatchCalendar:(id)calendar block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_editors;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 calendarUsesEditor:calendarCopy])
        {
          options = self->_options;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __46__CUIKCompositeEditor_dispatchCalendar_block___block_invoke;
          v15[3] = &unk_1E839A1F0;
          v15[4] = v13;
          v16 = blockCopy;
          [v13 performWithOptions:options block:v15];

          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)dispatchSources:(id)sources block:(id)block
{
  v57 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  blockCopy = block;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = sourcesCopy;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = self->_editors;
        blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16, blockCopy];
        if (blockCopy)
        {
          v11 = 0;
          v12 = *v47;
          while (2)
          {
            v13 = 0;
            v14 = v11;
            v11 += blockCopy;
            do
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v46 + 1) + 8 * v13) sourceUsesEditor:v8])
              {
                v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                v16 = [v30 objectForKeyedSubscript:v15];

                if (!v16)
                {
                  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
                  [v30 setObject:v16 forKeyedSubscript:v17];
                }

                [v16 addObject:v8];

                goto LABEL_18;
              }

              ++v14;
              ++v13;
            }

            while (blockCopy != v13);
            blockCopy = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (blockCopy)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v6);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v30;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v19)
  {
    v20 = *v39;
LABEL_22:
    v21 = 0;
    while (1)
    {
      if (*v39 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v38 + 1) + 8 * v21);
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      v24 = [v18 objectForKeyedSubscript:v22];
      v25 = [(NSArray *)self->_editors objectAtIndexedSubscript:unsignedIntegerValue];
      options = self->_options;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __45__CUIKCompositeEditor_dispatchSources_block___block_invoke;
      v33[3] = &unk_1E839A1C8;
      v35 = blockCopy;
      v33[4] = self;
      v37 = unsignedIntegerValue;
      v27 = v24;
      v34 = v27;
      v36 = &v42;
      [v25 performWithOptions:options block:v33];

      LOBYTE(v25) = *(v43 + 24);
      if (v25)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v19)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v42, 8);
}

void __45__CUIKCompositeEditor_dispatchSources_block___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = [*(a1[4] + 8) objectAtIndexedSubscript:a1[8]];
  (*(v2 + 16))(v2, v3, a1[5], *(a1[7] + 8) + 24);
}

- (void)performWithOptions:(id)options block:(id)block
{
  optionsCopy = options;
  v7 = self->_options;
  options = self->_options;
  self->_options = optionsCopy;
  v11 = optionsCopy;
  blockCopy = block;

  blockCopy[2](blockCopy);
  v10 = self->_options;
  self->_options = v7;
}

@end