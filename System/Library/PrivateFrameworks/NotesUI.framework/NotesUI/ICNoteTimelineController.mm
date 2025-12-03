@interface ICNoteTimelineController
+ (id)adjustedDateForReferenceDate:(id)date;
+ (id)invitationsTimelineSectionIdentifierWithTitle:(id)title referenceDate:(id)date;
+ (id)pinnedTimelineSectionIdentifierWithTitle:(id)title referenceDate:(id)date;
+ (id)sanitizedDatesForDates:(id)dates referenceDate:(id)date;
+ (id)timelineSectionIdentifierForNoteObjectID:(id)d date:(id)date referenceDate:(id)referenceDate;
+ (id)timelineSectionIdentifierForNoteObjectID:(id)d date:(id)date sectionIdentifiersToManagedObjectIDs:(id)ds;
+ (id)timelineSectionsForNoteObjectIDs:(id)ds dates:(id)dates referenceDate:(id)date direction:(int64_t)direction;
@end

@implementation ICNoteTimelineController

+ (id)timelineSectionsForNoteObjectIDs:(id)ds dates:(id)dates referenceDate:(id)date direction:(int64_t)direction
{
  dsCopy = ds;
  datesCopy = dates;
  dateCopy = date;
  if (dsCopy && datesCopy && (v13 = [dsCopy count], v13 == objc_msgSend(datesCopy, "count")))
  {
    v14 = [self adjustedDateForReferenceDate:dateCopy];
    v15 = [self sanitizedDatesForDates:datesCopy referenceDate:v14];
    if (direction == 1)
    {
      reverseObjectEnumerator = [dsCopy reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      reverseObjectEnumerator2 = [v15 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];
    }

    else
    {
      allObjects = dsCopy;
      allObjects2 = v15;
    }

    v22 = [_TtC7NotesUI32ICNoteTimelineControllerInternal ascendingTimelineSectionsForNoteObjectIds:allObjects dates:allObjects2 referenceDate:v14 direction:direction];
    v23 = v22;
    if (direction == 1)
    {
      reverseObjectEnumerator3 = [v22 reverseObjectEnumerator];
      allObjects3 = [reverseObjectEnumerator3 allObjects];

      v23 = allObjects3;
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

+ (id)timelineSectionIdentifierForNoteObjectID:(id)d date:(id)date sectionIdentifiersToManagedObjectIDs:(id)ds
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  dsCopy = ds;
  v11 = [MEMORY[0x1E695DF00] now];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [dsCopy allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    selfCopy = self;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          referenceDate = [v17 referenceDate];

          v11 = referenceDate;
          goto LABEL_11;
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_11:
    self = selfCopy;
  }

  v31 = dCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v30 = dateCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v21 = [self timelineSectionsForNoteObjectIDs:v19 dates:v20 referenceDate:v11 direction:0];
  firstObject = [v21 firstObject];
  identifier = [firstObject identifier];

  return identifier;
}

+ (id)timelineSectionIdentifierForNoteObjectID:(id)d date:(id)date referenceDate:(id)referenceDate
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = d;
  v8 = MEMORY[0x1E695DEC8];
  referenceDateCopy = referenceDate;
  dateCopy = date;
  dCopy = d;
  v12 = [v8 arrayWithObjects:v19 count:1];
  v18 = dateCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

  v14 = [self timelineSectionsForNoteObjectIDs:v12 dates:v13 referenceDate:referenceDateCopy direction:0];

  firstObject = [v14 firstObject];
  identifier = [firstObject identifier];

  return identifier;
}

+ (id)invitationsTimelineSectionIdentifierWithTitle:(id)title referenceDate:(id)date
{
  dateCopy = date;
  titleCopy = title;
  v8 = [ICNoteTimelineSectionIdentifier alloc];
  v9 = [self adjustedDateForReferenceDate:dateCopy];

  v10 = [(ICNoteTimelineSectionIdentifier *)v8 initWithTimelineSectionType:0 referenceDate:v9 title:titleCopy sortOrder:0];

  return v10;
}

+ (id)pinnedTimelineSectionIdentifierWithTitle:(id)title referenceDate:(id)date
{
  dateCopy = date;
  titleCopy = title;
  v8 = [ICNoteTimelineSectionIdentifier alloc];
  v9 = [self adjustedDateForReferenceDate:dateCopy];

  v10 = [(ICNoteTimelineSectionIdentifier *)v8 initWithTimelineSectionType:1 referenceDate:v9 title:titleCopy sortOrder:0];

  return v10;
}

+ (id)adjustedDateForReferenceDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (!dateCopy)
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  objc_opt_class();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"dateForTimelineGroups"];
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = v7;

    v4 = v8;
  }

  return v4;
}

+ (id)sanitizedDatesForDates:(id)dates referenceDate:(id)date
{
  datesCopy = dates;
  dateCopy = date;
  if ([datesCopy count])
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__5;
    v12[4] = __Block_byref_object_dispose__5;
    v13 = [datesCopy ic_objectPassingTest:&__block_literal_global_8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__ICNoteTimelineController_sanitizedDatesForDates_referenceDate___block_invoke_2;
    v9[3] = &unk_1E8469688;
    v11 = v12;
    v10 = dateCopy;
    v7 = [datesCopy ic_map:v9];

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