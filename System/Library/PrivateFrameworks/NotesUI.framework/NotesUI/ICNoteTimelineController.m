@interface ICNoteTimelineController
+ (id)adjustedDateForReferenceDate:(id)a3;
+ (id)invitationsTimelineSectionIdentifierWithTitle:(id)a3 referenceDate:(id)a4;
+ (id)pinnedTimelineSectionIdentifierWithTitle:(id)a3 referenceDate:(id)a4;
+ (id)sanitizedDatesForDates:(id)a3 referenceDate:(id)a4;
+ (id)timelineSectionIdentifierForNoteObjectID:(id)a3 date:(id)a4 referenceDate:(id)a5;
+ (id)timelineSectionIdentifierForNoteObjectID:(id)a3 date:(id)a4 sectionIdentifiersToManagedObjectIDs:(id)a5;
+ (id)timelineSectionsForNoteObjectIDs:(id)a3 dates:(id)a4 referenceDate:(id)a5 direction:(int64_t)a6;
@end

@implementation ICNoteTimelineController

+ (id)timelineSectionsForNoteObjectIDs:(id)a3 dates:(id)a4 referenceDate:(id)a5 direction:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && v11 && (v13 = [v10 count], v13 == objc_msgSend(v11, "count")))
  {
    v14 = [a1 adjustedDateForReferenceDate:v12];
    v15 = [a1 sanitizedDatesForDates:v11 referenceDate:v14];
    if (a6 == 1)
    {
      v16 = [v10 reverseObjectEnumerator];
      v17 = [v16 allObjects];

      v18 = [v15 reverseObjectEnumerator];
      v19 = [v18 allObjects];
    }

    else
    {
      v17 = v10;
      v19 = v15;
    }

    v22 = [_TtC7NotesUI32ICNoteTimelineControllerInternal ascendingTimelineSectionsForNoteObjectIds:v17 dates:v19 referenceDate:v14 direction:a6];
    v23 = v22;
    if (a6 == 1)
    {
      v24 = [v22 reverseObjectEnumerator];
      v25 = [v24 allObjects];

      v23 = v25;
    }

    v26 = MEMORY[0x1E695E0F0];
    if (v23)
    {
      v26 = v23;
    }

    v21 = v26;
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICNoteTimelineController timelineSectionsForNoteObjectIDs:v20 dates:? referenceDate:? direction:?];
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

+ (id)timelineSectionIdentifierForNoteObjectID:(id)a3 date:(id)a4 sectionIdentifiersToManagedObjectIDs:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF00] now];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v10 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v25 = a1;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v17 referenceDate];

          v11 = v18;
          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_11:
    a1 = v25;
  }

  v31 = v8;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v30 = v9;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v21 = [a1 timelineSectionsForNoteObjectIDs:v19 dates:v20 referenceDate:v11 direction:0];
  v22 = [v21 firstObject];
  v23 = [v22 identifier];

  return v23;
}

+ (id)timelineSectionIdentifierForNoteObjectID:(id)a3 date:(id)a4 referenceDate:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:v19 count:1];
  v18 = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

  v14 = [a1 timelineSectionsForNoteObjectIDs:v12 dates:v13 referenceDate:v9 direction:0];

  v15 = [v14 firstObject];
  v16 = [v15 identifier];

  return v16;
}

+ (id)invitationsTimelineSectionIdentifierWithTitle:(id)a3 referenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ICNoteTimelineSectionIdentifier alloc];
  v9 = [a1 adjustedDateForReferenceDate:v6];

  v10 = [(ICNoteTimelineSectionIdentifier *)v8 initWithTimelineSectionType:0 referenceDate:v9 title:v7 sortOrder:0];

  return v10;
}

+ (id)pinnedTimelineSectionIdentifierWithTitle:(id)a3 referenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ICNoteTimelineSectionIdentifier alloc];
  v9 = [a1 adjustedDateForReferenceDate:v6];

  v10 = [(ICNoteTimelineSectionIdentifier *)v8 initWithTimelineSectionType:1 referenceDate:v9 title:v7 sortOrder:0];

  return v10;
}

+ (id)adjustedDateForReferenceDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  objc_opt_class();
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"dateForTimelineGroups"];
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = v7;

    v4 = v8;
  }

  return v4;
}

+ (id)sanitizedDatesForDates:(id)a3 referenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__5;
    v12[4] = __Block_byref_object_dispose__5;
    v13 = [v5 ic_objectPassingTest:&__block_literal_global_8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__ICNoteTimelineController_sanitizedDatesForDates_referenceDate___block_invoke_2;
    v9[3] = &unk_1E8469688;
    v11 = v12;
    v10 = v6;
    v7 = [v5 ic_map:v9];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

BOOL __65__ICNoteTimelineController_sanitizedDatesForDates_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3 != 0;
}

id __65__ICNoteTimelineController_sanitizedDatesForDates_referenceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  v5 = *(*(a1 + 40) + 8);
  if (v4)
  {
    objc_storeStrong((v5 + 40), v4);
    v6 = v4;
  }

  else
  {
    v6 = *(v5 + 40);
    if (!v6)
    {
      objc_storeStrong((v5 + 40), *(a1 + 32));
      v6 = *(*(*(a1 + 40) + 8) + 40);
    }
  }

  v7 = v6;

  return v7;
}

@end