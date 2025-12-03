@interface ICSharedRecentlyDeletedSharedNoteUtilities
+ (unint64_t)sharedNoteTypeForNotes:(id)notes;
+ (void)showAlertsIfNecessaryForDeletingSharedNotes:(id)notes noteDeleteType:(unint64_t)type displayWindow:(id)window completionHandler:(id)handler;
@end

@implementation ICSharedRecentlyDeletedSharedNoteUtilities

+ (void)showAlertsIfNecessaryForDeletingSharedNotes:(id)notes noteDeleteType:(unint64_t)type displayWindow:(id)window completionHandler:(id)handler
{
  notesCopy = notes;
  windowCopy = window;
  handlerCopy = handler;
  if (type || (v12 = [self sharedNoteTypeForNotes:notesCopy], v12 == 1))
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    [self showDeletingSharedNotesAlertWithType:v12 displayWindow:windowCopy completionHandler:handlerCopy];
  }
}

+ (unint64_t)sharedNoteTypeForNotes:(id)notes
{
  v40 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  v5 = [self notesSharedViaICloudFromNotes:notesCopy];
  if (![v5 count])
  {
    v11 = 1;
    goto LABEL_35;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v35;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v34 + 1) + 8 * i) isSharedRootObject])
      {

        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v30 + 1) + 8 * j);
              if ([v19 isOwnedByCurrentUser])
              {
                v20 = v12;
                v21 = v19;
              }

              else
              {
                v20 = v13;
                v21 = notesCopy;
              }

              [v20 addObject:v21];
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v16);
        }

        if ([notesCopy count] == 1)
        {
          v22 = [v12 count] == 1;
          v23 = 7;
          v24 = 4;
        }

        else
        {
          v25 = [notesCopy count];
          v26 = [v14 count];
          v27 = [v12 count];
          if (v25 == v26)
          {
            if (v27 == [v14 count])
            {
              v11 = 5;
LABEL_34:

              goto LABEL_35;
            }

            v28 = [v13 count];
            v22 = v28 == [v14 count];
            v23 = 5;
            v24 = 8;
          }

          else
          {
            v22 = v27 == 0;
            v23 = 6;
            v24 = 9;
          }
        }

        if (v22)
        {
          v11 = v24;
        }

        else
        {
          v11 = v23;
        }

        goto LABEL_34;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

  if ([v6 count] == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

LABEL_35:

  return v11;
}

uint64_t __76__ICSharedRecentlyDeletedSharedNoteUtilities_notesSharedViaICloudFromNotes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v3 isSharedViaICloud];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end