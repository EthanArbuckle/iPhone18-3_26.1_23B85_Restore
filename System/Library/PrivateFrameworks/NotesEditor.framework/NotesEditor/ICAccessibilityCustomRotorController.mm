@interface ICAccessibilityCustomRotorController
+ (id)sharedInstance;
- (ICNoteEditorViewController)noteEditorViewController;
- (NSArray)sharedTextViewRotors;
- (UIAccessibilityCustomRotor)attachmentsRotor;
- (UIAccessibilityCustomRotor)calculationErrorsRotor;
- (UIAccessibilityCustomRotor)calculationResultsRotor;
- (UIAccessibilityCustomRotor)checklistRotor;
- (UIAccessibilityCustomRotor)linksRotor;
- (UIAccessibilityCustomRotor)mentionsRotor;
- (UIAccessibilityCustomRotor)tablesRotor;
- (UIAccessibilityCustomRotor)tagsRotor;
- (id)searchForAXElementWithPredicate:(id)a3 rotorType:(id)a4;
@end

@implementation ICAccessibilityCustomRotorController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICAccessibilityCustomRotorController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

void __54__ICAccessibilityCustomRotorController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v1;
}

- (UIAccessibilityCustomRotor)linksRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedLinksRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Links" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __50__ICAccessibilityCustomRotorController_linksRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredLinksRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __50__ICAccessibilityCustomRotorController_linksRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeLinks"];

  return v5;
}

- (UIAccessibilityCustomRotor)checklistRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedChecklistRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Checklist items" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__ICAccessibilityCustomRotorController_checklistRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredChecklistRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __54__ICAccessibilityCustomRotorController_checklistRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeChecklist"];

  return v5;
}

- (UIAccessibilityCustomRotor)attachmentsRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedAttachmentsRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Attachments" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __56__ICAccessibilityCustomRotorController_attachmentsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredAttachmentsRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __56__ICAccessibilityCustomRotorController_attachmentsRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeAttachments"];

  return v5;
}

- (UIAccessibilityCustomRotor)tagsRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedTagsRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Tags" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __49__ICAccessibilityCustomRotorController_tagsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredTagsRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __49__ICAccessibilityCustomRotorController_tagsRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeTags"];

  return v5;
}

- (UIAccessibilityCustomRotor)mentionsRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedMentionsRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Mentions" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __53__ICAccessibilityCustomRotorController_mentionsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredMentionsRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __53__ICAccessibilityCustomRotorController_mentionsRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeMentions"];

  return v5;
}

- (UIAccessibilityCustomRotor)tablesRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedTablesRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Tables" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __51__ICAccessibilityCustomRotorController_tablesRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredTablesRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __51__ICAccessibilityCustomRotorController_tablesRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeTables"];

  return v5;
}

- (UIAccessibilityCustomRotor)calculationResultsRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedCalculationResultRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Calculation Results" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __63__ICAccessibilityCustomRotorController_calculationResultsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredCalculationResultRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __63__ICAccessibilityCustomRotorController_calculationResultsRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeCalculationResults"];

  return v5;
}

- (UIAccessibilityCustomRotor)calculationErrorsRotor
{
  v3 = [(ICAccessibilityCustomRotorController *)self storedCalculationErrorsRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Calculation Errors" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __62__ICAccessibilityCustomRotorController_calculationErrorsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredCalculationErrorsRotor:v3, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __62__ICAccessibilityCustomRotorController_calculationErrorsRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchForAXElementWithPredicate:v3 rotorType:@"ICAccessibilityRotorTypeCalculationErrors"];

  return v5;
}

- (NSArray)sharedTextViewRotors
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  v5 = [v4 textView];

  v6 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeLinks"];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(ICAccessibilityCustomRotorController *)self linksRotor];
    [v3 addObject:v8];
  }

  v9 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeChecklist"];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(ICAccessibilityCustomRotorController *)self checklistRotor];
    [v3 addObject:v11];
  }

  v12 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeAttachments"];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(ICAccessibilityCustomRotorController *)self attachmentsRotor];
    [v3 addObject:v14];
  }

  v15 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeTags"];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(ICAccessibilityCustomRotorController *)self tagsRotor];
    [v3 addObject:v17];
  }

  v18 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeMentions"];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(ICAccessibilityCustomRotorController *)self mentionsRotor];
    [v3 addObject:v20];
  }

  v21 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeTables"];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(ICAccessibilityCustomRotorController *)self tablesRotor];
    [v3 addObject:v23];
  }

  v24 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeCalculationResults"];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(ICAccessibilityCustomRotorController *)self calculationResultsRotor];
    [v3 addObject:v26];

    v27 = [v5 elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeCalculationErrors"];
    v28 = [v27 count];

    if (v28)
    {
      v29 = [(ICAccessibilityCustomRotorController *)self calculationErrorsRotor];
      [v3 addObject:v29];
    }
  }

  v30 = [v3 copy];

  return v30;
}

- (id)searchForAXElementWithPredicate:(id)a3 rotorType:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  v9 = [v8 textView];
  v10 = ICDynamicCast();

  v11 = [v6 currentItem];
  v12 = [v11 targetElement];

  v13 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  v14 = [v13 textView];

  v45 = v10;
  if (v12 == v14)
  {
    if ([v10 isFirstResponder])
    {
      v16 = [v10 selectedRange];
      v18 = v19;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }
  }

  else
  {
    v15 = ICCheckedProtocolCast();
    v16 = [v15 textRangeInNote];
    v18 = v17;
  }

  v20 = [v6 searchDirection];
  v21 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  v22 = [v21 textView];
  v23 = [v22 elementsForAccessibilityRotorType:v7];

  v24 = [v23 sortedArrayUsingComparator:&__block_literal_global_17];

  if (v20 == 1)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  v26 = v16 + v25;
  if (v20 == 1)
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v32 = v24;
    v27 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v27)
    {
      v28 = v27;
      v41 = v24;
      v42 = v12;
      v43 = v7;
      v44 = v6;
      v29 = *v51;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(v32);
          }

          v31 = *(*(&v50 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            if ([v31 textRangeInNote] >= v26)
            {
LABEL_35:
              v37 = v31;
              goto LABEL_36;
            }
          }

          else
          {
            [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccessibilityCustomRotorController searchForAXElementWithPredicate:rotorType:]" simulateCrash:1 showAlert:0 format:{@"%@ does not respond to 'textRangeInNote'", v31}];
          }
        }

        v28 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v28)
        {
          continue;
        }

        goto LABEL_34;
      }
    }

LABEL_37:
    v37 = 0;
    v38 = v45;
    goto LABEL_38;
  }

  v48 = 0uLL;
  v49 = 0uLL;
  v46 = 0uLL;
  v47 = 0uLL;
  v32 = [v24 reverseObjectEnumerator];
  v33 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v33)
  {
    goto LABEL_37;
  }

  v34 = v33;
  v41 = v24;
  v42 = v12;
  v43 = v7;
  v44 = v6;
  v35 = *v47;
  do
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v47 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v31 = *(*(&v46 + 1) + 8 * j);
      if (objc_opt_respondsToSelector())
      {
        if ([v31 textRangeInNote] < v26)
        {
          goto LABEL_35;
        }
      }

      else
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccessibilityCustomRotorController searchForAXElementWithPredicate:rotorType:]" simulateCrash:1 showAlert:0 format:{@"%@ does not respond to 'textRangeInNote'", v31}];
      }
    }

    v34 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
  }

  while (v34);
LABEL_34:
  v37 = 0;
LABEL_36:
  v7 = v43;
  v6 = v44;
  v38 = v45;
  v24 = v41;
  v12 = v42;
LABEL_38:

  if (v37)
  {
    v39 = [objc_alloc(MEMORY[0x277D75098]) initWithTargetElement:v37 targetRange:0];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t __82__ICAccessibilityCustomRotorController_searchForAXElementWithPredicate_rotorType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 textRangeInNote];
  if (v6 >= [v5 textRangeInNote])
  {
    v8 = [v4 textRangeInNote];
    if (v8 <= [v5 textRangeInNote])
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccessibilityCustomRotorController searchForAXElementWithPredicate:rotorType:]_block_invoke" simulateCrash:1 showAlert:0 format:@"We really should never have two rotor search elements at the same text position"];
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (ICNoteEditorViewController)noteEditorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_noteEditorViewController);

  return WeakRetained;
}

@end