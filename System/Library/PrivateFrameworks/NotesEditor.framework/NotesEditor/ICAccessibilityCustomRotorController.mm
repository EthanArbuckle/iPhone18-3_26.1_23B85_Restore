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
- (id)searchForAXElementWithPredicate:(id)predicate rotorType:(id)type;
@end

@implementation ICAccessibilityCustomRotorController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICAccessibilityCustomRotorController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  storedLinksRotor = [(ICAccessibilityCustomRotorController *)self storedLinksRotor];
  if (!storedLinksRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Links" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __50__ICAccessibilityCustomRotorController_linksRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedLinksRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredLinksRotor:storedLinksRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedLinksRotor;
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
  storedChecklistRotor = [(ICAccessibilityCustomRotorController *)self storedChecklistRotor];
  if (!storedChecklistRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Checklist items" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__ICAccessibilityCustomRotorController_checklistRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedChecklistRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredChecklistRotor:storedChecklistRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedChecklistRotor;
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
  storedAttachmentsRotor = [(ICAccessibilityCustomRotorController *)self storedAttachmentsRotor];
  if (!storedAttachmentsRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Attachments" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __56__ICAccessibilityCustomRotorController_attachmentsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedAttachmentsRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredAttachmentsRotor:storedAttachmentsRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedAttachmentsRotor;
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
  storedTagsRotor = [(ICAccessibilityCustomRotorController *)self storedTagsRotor];
  if (!storedTagsRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Tags" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __49__ICAccessibilityCustomRotorController_tagsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedTagsRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredTagsRotor:storedTagsRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedTagsRotor;
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
  storedMentionsRotor = [(ICAccessibilityCustomRotorController *)self storedMentionsRotor];
  if (!storedMentionsRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Mentions" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __53__ICAccessibilityCustomRotorController_mentionsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedMentionsRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredMentionsRotor:storedMentionsRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedMentionsRotor;
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
  storedTablesRotor = [(ICAccessibilityCustomRotorController *)self storedTablesRotor];
  if (!storedTablesRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Tables" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __51__ICAccessibilityCustomRotorController_tablesRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedTablesRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredTablesRotor:storedTablesRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedTablesRotor;
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
  storedCalculationResultRotor = [(ICAccessibilityCustomRotorController *)self storedCalculationResultRotor];
  if (!storedCalculationResultRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Calculation Results" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __63__ICAccessibilityCustomRotorController_calculationResultsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedCalculationResultRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredCalculationResultRotor:storedCalculationResultRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedCalculationResultRotor;
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
  storedCalculationErrorsRotor = [(ICAccessibilityCustomRotorController *)self storedCalculationErrorsRotor];
  if (!storedCalculationErrorsRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75090]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Calculation Errors" value:&stru_282757698 table:0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __62__ICAccessibilityCustomRotorController_calculationErrorsRotor__block_invoke;
    v11 = &unk_2781AE928;
    objc_copyWeak(&v12, &location);
    storedCalculationErrorsRotor = [v4 initWithName:v6 itemSearchBlock:&v8];

    [(ICAccessibilityCustomRotorController *)self setStoredCalculationErrorsRotor:storedCalculationErrorsRotor, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return storedCalculationErrorsRotor;
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
  array = [MEMORY[0x277CBEB18] array];
  noteEditorViewController = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  textView = [noteEditorViewController textView];

  v6 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeLinks"];
  v7 = [v6 count];

  if (v7)
  {
    linksRotor = [(ICAccessibilityCustomRotorController *)self linksRotor];
    [array addObject:linksRotor];
  }

  v9 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeChecklist"];
  v10 = [v9 count];

  if (v10)
  {
    checklistRotor = [(ICAccessibilityCustomRotorController *)self checklistRotor];
    [array addObject:checklistRotor];
  }

  v12 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeAttachments"];
  v13 = [v12 count];

  if (v13)
  {
    attachmentsRotor = [(ICAccessibilityCustomRotorController *)self attachmentsRotor];
    [array addObject:attachmentsRotor];
  }

  v15 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeTags"];
  v16 = [v15 count];

  if (v16)
  {
    tagsRotor = [(ICAccessibilityCustomRotorController *)self tagsRotor];
    [array addObject:tagsRotor];
  }

  v18 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeMentions"];
  v19 = [v18 count];

  if (v19)
  {
    mentionsRotor = [(ICAccessibilityCustomRotorController *)self mentionsRotor];
    [array addObject:mentionsRotor];
  }

  v21 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeTables"];
  v22 = [v21 count];

  if (v22)
  {
    tablesRotor = [(ICAccessibilityCustomRotorController *)self tablesRotor];
    [array addObject:tablesRotor];
  }

  v24 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeCalculationResults"];
  v25 = [v24 count];

  if (v25)
  {
    calculationResultsRotor = [(ICAccessibilityCustomRotorController *)self calculationResultsRotor];
    [array addObject:calculationResultsRotor];

    v27 = [textView elementsForAccessibilityRotorType:@"ICAccessibilityRotorTypeCalculationErrors"];
    v28 = [v27 count];

    if (v28)
    {
      calculationErrorsRotor = [(ICAccessibilityCustomRotorController *)self calculationErrorsRotor];
      [array addObject:calculationErrorsRotor];
    }
  }

  v30 = [array copy];

  return v30;
}

- (id)searchForAXElementWithPredicate:(id)predicate rotorType:(id)type
{
  v56 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  typeCopy = type;
  objc_opt_class();
  noteEditorViewController = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  textView = [noteEditorViewController textView];
  v10 = ICDynamicCast();

  currentItem = [predicateCopy currentItem];
  targetElement = [currentItem targetElement];

  noteEditorViewController2 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  textView2 = [noteEditorViewController2 textView];

  v45 = v10;
  if (targetElement == textView2)
  {
    if ([v10 isFirstResponder])
    {
      selectedRange = [v10 selectedRange];
      v18 = v19;
    }

    else
    {
      selectedRange = 0;
      v18 = 0;
    }
  }

  else
  {
    v15 = ICCheckedProtocolCast();
    selectedRange = [v15 textRangeInNote];
    v18 = v17;
  }

  searchDirection = [predicateCopy searchDirection];
  noteEditorViewController3 = [(ICAccessibilityCustomRotorController *)self noteEditorViewController];
  textView3 = [noteEditorViewController3 textView];
  v23 = [textView3 elementsForAccessibilityRotorType:typeCopy];

  v24 = [v23 sortedArrayUsingComparator:&__block_literal_global_17];

  if (searchDirection == 1)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  v26 = selectedRange + v25;
  if (searchDirection == 1)
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    reverseObjectEnumerator = v24;
    v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v27)
    {
      v28 = v27;
      v41 = v24;
      v42 = targetElement;
      v43 = typeCopy;
      v44 = predicateCopy;
      v29 = *v51;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
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

        v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v55 count:16];
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
  reverseObjectEnumerator = [v24 reverseObjectEnumerator];
  v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v33)
  {
    goto LABEL_37;
  }

  v34 = v33;
  v41 = v24;
  v42 = targetElement;
  v43 = typeCopy;
  v44 = predicateCopy;
  v35 = *v47;
  do
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v47 != v35)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
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

    v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v54 count:16];
  }

  while (v34);
LABEL_34:
  v37 = 0;
LABEL_36:
  typeCopy = v43;
  predicateCopy = v44;
  v38 = v45;
  v24 = v41;
  targetElement = v42;
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