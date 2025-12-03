@interface ICTextController(Checklist)
+ (uint64_t)checklistAutoAlertShown;
+ (uint64_t)needsToShowFirstTimeAutoSortChecklistAlert;
+ (void)setChecklistAutoAlertShown:()Checklist;
- (BOOL)canMoveListItemInDirection:()Checklist inTextView:forRange:;
- (ICChecklistInfo)analyticsInfoForChecklistAtIndex:()Checklist textView:;
- (ICParagraphInfo)paragraphInfoForCharacterAtIndex:()Checklist includeChildren:textStorage:;
- (ICTrackedParagraphTreeNode)createTreeFromTrackedParagraphs:()Checklist textView:;
- (id)adjacentTrackedParagraphFromTrackedParagraph:()Checklist inDirection:inTextView:;
- (id)rangeForChecklistItemInRange:()Checklist textStorage:;
- (id)rangesForTodosInRange:()Checklist markedCompleted:textStorage:;
- (id)sortTrackedParagraphsMovingCheckedItemsToBottom:()Checklist;
- (id)trackedParagraphsForTodosInRange:()Checklist textStorage:;
- (id)validAdjacentParagraphInfoFromParagraphInfo:()Checklist inDirection:inTextView:;
- (uint64_t)canMoveCheckedChecklistsToBottomInTextView:()Checklist forRange:;
- (uint64_t)checklistItemExistsMarkedCompleted:()Checklist inTextView:forRanges:;
- (uint64_t)containsAnyTodoItemMarkedCompleted:()Checklist inRange:textStorage:;
- (uint64_t)containsOnlyChecklistItemsInTextView:()Checklist forRange:;
- (uint64_t)expandedRangeForContiguousTodosForRange:()Checklist textView:;
- (uint64_t)moveCheckedChecklistsToBottomInTextView:()Checklist forRange:animated:;
- (uint64_t)moveListItemInDirection:()Checklist inTextView:forRange:;
- (void)applySortFromOriginalParagraphs:()Checklist sortedTrackedParagraphs:forTextView:checklistRange:;
- (void)autoSortChecklistForUnitTestAtIndex:()Checklist textView:;
- (void)autoSortChecklistIfNecessaryForTrackedParagraph:()Checklist textView:analyticsHandler:;
- (void)expandedChecklistTrackedParagraphsInTextView:()Checklist forIndex:;
- (void)getTodoSelected:()Checklist andAtLeastOneTodoUnchecked:inTextView:;
- (void)markAllChecklistItemsCompleted:()Checklist inTextview:forSelectedRanges:;
- (void)removeChecklistItemsMarkedCompleted:()Checklist inTextView:forRanges:;
- (void)sendTextDidChangeNotificationForTextView:()Checklist;
- (void)showFirstTimeAutoSortEnabledAlertIfNecessaryWithTextView:()Checklist completionHandler:analyticsHandler:;
- (void)showFirstTimeAutoSortEnabledAlertWithTextView:()Checklist completionHandler:analyticsHandler:;
@end

@implementation ICTextController(Checklist)

+ (uint64_t)checklistAutoAlertShown
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [standardUserDefaults BOOLForKey:@"AutoSortChecklistAlertShown"];

  return v1;
}

+ (void)setChecklistAutoAlertShown:()Checklist
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:a3 forKey:@"AutoSortChecklistAlertShown"];
}

- (void)sendTextDidChangeNotificationForTextView:()Checklist
{
  v6 = a3;
  delegate = [v6 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [v6 delegate];
    [delegate2 textViewDidChange:v6];
  }
}

- (void)markAllChecklistItemsCompleted:()Checklist inTextview:forSelectedRanges:
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        rangeValue = [*(*(&v20 + 1) + 8 * v13) rangeValue];
        v16 = [self expandedRangeForContiguousTodosForRange:rangeValue textView:{v15, v8}];
        v18 = v17;
        textStorage = [v8 textStorage];
        [self setDone:a3 range:v16 inTextStorage:{v18, textStorage}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [self sendTextDidChangeNotificationForTextView:v8];
}

- (uint64_t)checklistItemExistsMarkedCompleted:()Checklist inTextView:forRanges:
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  textStorage = [v8 textStorage];
  v11 = v9;
  firstObject = [v11 firstObject];
  v13 = [self todoForRange:objc_msgSend(firstObject inTextStorage:{"rangeValue"), 0, textStorage}];

  if (v13)
  {
    done = [v13 done];
    if (a3)
    {
      if (done)
      {
LABEL_4:
        v15 = 1;
        goto LABEL_17;
      }
    }

    else if (!done)
    {
      goto LABEL_4;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        rangeValue = [*(*(&v26 + 1) + 8 * v20) rangeValue];
        v23 = [self expandedRangeForContiguousTodosForRange:rangeValue textView:{v22, v8}];
        if ([self containsAnyTodoItemMarkedCompleted:a3 inRange:v23 textStorage:{v24, textStorage}])
        {
          v15 = 1;
          goto LABEL_16;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_16:

LABEL_17:
  return v15;
}

- (void)getTodoSelected:()Checklist andAtLeastOneTodoUnchecked:inTextView:
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a5;
  [v6 selectedRanges];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * v11);
      rangeValue = [v12 rangeValue];
      v15 = v14;
      textStorage = [v6 textStorage];
      v17 = [self todoForRange:rangeValue inTextStorage:{v15, textStorage}];

      if (v17)
      {
        rangeValue2 = [v12 rangeValue];
        v20 = v19;
        textStorage2 = [v6 textStorage];
        LODWORD(rangeValue2) = [self isTodoDoneRange:rangeValue2 inTextStorage:{v20, textStorage2}];

        v9 = 1;
        v22 = 1;
        if (!rangeValue2)
        {
          break;
        }
      }

      if (v8 == ++v11)
      {
        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v22 = 0;
        break;
      }
    }
  }

  else
  {
    v22 = 0;
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v9 & 1;
  }

  if (a4)
  {
    *a4 = v22;
  }
}

- (uint64_t)containsOnlyChecklistItemsInTextView:()Checklist forRange:
{
  v8 = a3;
  objc_opt_class();
  textStorage = [v8 textStorage];

  v10 = ICCheckedDynamicCast();

  v11 = [self containsOnlyStyle:103 inRange:a4 inTextStorage:{a5, v10}];
  return v11;
}

- (void)removeChecklistItemsMarkedCompleted:()Checklist inTextView:forRanges:
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  v50 = v7;
  textStorage = [v7 textStorage];
  v10 = ICCheckedDynamicCast();

  v52 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v51 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(obj);
        }

        rangeValue = [*(*(&v61 + 1) + 8 * i) rangeValue];
        v18 = [self expandedRangeForContiguousTodosForRange:rangeValue textView:{v17, v50}];
        v20 = v19;
        [v51 addIndexesInRange:{v18, v19}];
        v21 = [self rangesForTodosInRange:v18 markedCompleted:v20 textStorage:{a3, v10}];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v58;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v58 != v24)
              {
                objc_enumerationMutation(v21);
              }

              rangeValue2 = [*(*(&v57 + 1) + 8 * j) rangeValue];
              [v11 addIndexesInRange:{rangeValue2, v27}];
            }

            v23 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v23);
        }

        [v52 addObjectsFromArray:v21];
      }

      v13 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v13);
  }

  allObjects = [v52 allObjects];
  v29 = [allObjects sortedArrayUsingComparator:&__block_literal_global_19];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v54;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        rangeValue3 = [*(*(&v53 + 1) + 8 * k) rangeValue];
        [v10 deleteCharactersInRange:{rangeValue3, v36}];
      }

      v32 = [v30 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v32);
  }

  if ([v30 count] && objc_msgSend(v11, "isEqualToIndexSet:", v51))
  {
    lastObject = [v30 lastObject];
    rangeValue4 = [lastObject rangeValue];

    v39 = [self todoForRange:rangeValue4 inTextStorage:{0, v10}];
    if (!v39)
    {
      string = [v10 string];
      [string lineRangeForRange:{rangeValue4, 0}];
      v42 = v41;

      if (v42)
      {
        [v10 replaceCharactersInRange:rangeValue4 withString:{0, @"\n"}];
      }

      [self setTextStyle:103 range:rangeValue4 inTextStorage:{0, v10}];
    }

    objc_opt_class();
    textStorage2 = [v50 textStorage];
    v44 = ICCheckedDynamicCast();
    v45 = [v44 safeCharacterRangeForRange:{rangeValue4, 0}];
    v47 = v46;

    [v50 setSelectedRange:{v45, v47}];
  }

  [self sendTextDidChangeNotificationForTextView:v50];
}

- (uint64_t)moveListItemInDirection:()Checklist inTextView:forRange:
{
  v8 = a4;
  textStorage = [v8 textStorage];
  v10 = [self paragraphInfoForCharacterAtIndex:a5 includeChildren:1 textStorage:textStorage];

  v11 = [self validAdjacentParagraphInfoFromParagraphInfo:v10 inDirection:a3 inTextView:v8];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    indent = [v10 indent];
    if (indent < [v12 indent])
    {
      v13 = 0;
      goto LABEL_15;
    }

    rangeIncludingChildren = [v10 rangeIncludingChildren];
    v17 = v16;
    rangeIncludingChildren2 = [v12 rangeIncludingChildren];
    v13 = 0;
    if (rangeIncludingChildren != 0x7FFFFFFFFFFFFFFFLL && rangeIncludingChildren2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = v19;
      v32 = rangeIncludingChildren2;
      textStorage2 = [v8 textStorage];
      v21 = [textStorage2 attributedSubstringFromRange:{rangeIncludingChildren, v17}];

      paragraphStyle = [v10 paragraphStyle];
      v33 = v21;
      if (([paragraphStyle isList] & 1) == 0)
      {
        string = [v21 string];
        ic_isLastCharacterANewline = [string ic_isLastCharacterANewline];

        if (ic_isLastCharacterANewline)
        {
LABEL_11:
          if (a3)
          {
            v27 = v31 - v17;
          }

          else
          {
            v27 = 0;
          }

          textStorage3 = [v8 textStorage];
          [textStorage3 deleteCharactersInRange:{rangeIncludingChildren, v17}];

          textStorage4 = [v8 textStorage];
          [textStorage4 insertAttributedString:v33 atIndex:v32 + v27];

          [v8 setSelectedRange:{v32 + v27, 0}];
          [self sendTextDidChangeNotificationForTextView:v8];

          v13 = 1;
          goto LABEL_15;
        }

        paragraphStyle = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v33];
        v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
        [paragraphStyle appendAttributedString:v25];

        v26 = [paragraphStyle copy];
        v33 = v26;
      }

      goto LABEL_11;
    }
  }

LABEL_15:

  return v13;
}

- (BOOL)canMoveListItemInDirection:()Checklist inTextView:forRange:
{
  v8 = a4;
  textStorage = [v8 textStorage];
  v10 = [self paragraphInfoForCharacterAtIndex:a5 includeChildren:1 textStorage:textStorage];

  if (v10)
  {
    v11 = [self validAdjacentParagraphInfoFromParagraphInfo:v10 inDirection:a3 inTextView:v8];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)expandedChecklistTrackedParagraphsInTextView:()Checklist forIndex:
{
  v6 = a3;
  textStorage = [v6 textStorage];
  v8 = [textStorage length];

  if (v8 <= a4)
  {
    v13 = 0;
  }

  else
  {
    v9 = [self expandedRangeForContiguousTodosForRange:a4 textView:{0, v6}];
    v11 = v10;
    textStorage2 = [v6 textStorage];
    v13 = [self trackedParagraphsForTodosInRange:v9 textStorage:{v11, textStorage2}];
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = v14;

  return v14;
}

- (id)adjacentTrackedParagraphFromTrackedParagraph:()Checklist inDirection:inTextView:
{
  v8 = a5;
  characterRange = [a3 characterRange];
  if (a4)
  {
    v11 = v9;
  }

  else
  {
    v11 = -1;
  }

  textStorage = [v8 textStorage];

  v13 = [self todoForRange:characterRange + v11 inTextStorage:{0, textStorage}];

  trackedToDoParagraphs = [self trackedToDoParagraphs];
  uuid = [v13 uuid];
  v16 = [trackedToDoParagraphs ic_objectForNonNilKey:uuid];

  return v16;
}

- (id)validAdjacentParagraphInfoFromParagraphInfo:()Checklist inDirection:inTextView:
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = v10;
  do
  {
    while (1)
    {
      paragraphStyle = [v10 paragraphStyle];
      isList = [paragraphStyle isList];

      if (!isList)
      {
        break;
      }

      characterRange = [v11 characterRange];
      if (a4)
      {
        v16 = v14;
      }

      else
      {
        v16 = -1;
      }

      textStorage = [v9 textStorage];
      v18 = [self paragraphInfoForCharacterAtIndex:characterRange + v16 includeChildren:0 textStorage:textStorage];

      style = [v10 style];
      if (style != [v18 style])
      {
        v31 = 0;
        goto LABEL_21;
      }

      indent = [v10 indent];
      indent2 = [v18 indent];
      v22 = indent < indent2;
      if (indent == indent2)
      {
        textStorage2 = [v9 textStorage];
        v33 = [self paragraphInfoForCharacterAtIndex:characterRange + v16 includeChildren:1 textStorage:textStorage2];

        v34 = v33;
        goto LABEL_19;
      }

      v11 = v18;
      if (!v22)
      {
        v34 = v18;
LABEL_19:
        v18 = v34;
        v31 = v34;
        goto LABEL_21;
      }
    }

    rangeIncludingChildren = [v11 rangeIncludingChildren];
    if (a4)
    {
      v25 = v23;
    }

    else
    {
      v25 = -1;
    }

    textStorage3 = [v9 textStorage];
    v27 = [self paragraphInfoForCharacterAtIndex:rangeIncludingChildren + v25 includeChildren:0 textStorage:textStorage3];

    LODWORD(textStorage3) = [v27 style];
    v11 = v27;
  }

  while (textStorage3 > [v10 style]);
  v28 = v27;
  v18 = v28;
  if (a4 && (v29 = [v28 style], v29 == objc_msgSend(v10, "style")))
  {
    textStorage4 = [v9 textStorage];
    v31 = [self paragraphInfoForCharacterAtIndex:rangeIncludingChildren + v25 includeChildren:1 textStorage:textStorage4];
  }

  else
  {
    v31 = v18;
  }

LABEL_21:

  return v31;
}

- (uint64_t)canMoveCheckedChecklistsToBottomInTextView:()Checklist forRange:
{
  v8 = a3;
  v9 = [self expandedRangeForContiguousTodosForRange:a4 textView:{a5, v8}];
  v11 = v10;
  textStorage = [v8 textStorage];
  v13 = [self trackedParagraphsForTodosInRange:v9 textStorage:{v11, textStorage}];

  v14 = [self createTreeFromTrackedParagraphs:v13 textView:v8];

  [v14 recursivlySortCheckedItemsToBottom];
  linerizedRepresentation = [v14 linerizedRepresentation];
  LODWORD(v8) = [v13 isEqualToArray:linerizedRepresentation];

  return v8 ^ 1;
}

- (uint64_t)moveCheckedChecklistsToBottomInTextView:()Checklist forRange:animated:
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  [v10 icaxClearCaches];
  tTTextStorage = [v10 TTTextStorage];
  tTTextStorage2 = [v10 TTTextStorage];
  ic_range = [tTTextStorage2 ic_range];
  [self updateTrackedAttributesInTextStorage:tTTextStorage range:ic_range changeInLength:{v14, 0}];

  v15 = [self expandedRangeForContiguousTodosForRange:a4 textView:{a5, v10}];
  v17 = v16;
  textStorage = [v10 textStorage];
  v19 = [self trackedParagraphsForTodosInRange:v15 textStorage:{v17, textStorage}];

  v20 = [self createTreeFromTrackedParagraphs:v19 textView:v10];
  [v20 recursivlySortCheckedItemsToBottom];
  linerizedRepresentation = [v20 linerizedRepresentation];
  v22 = [v19 isEqualToArray:linerizedRepresentation];
  if (v22)
  {
    goto LABEL_20;
  }

  v23 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v54 = [v19 count];
    _os_log_impl(&dword_2151A1000, v23, OS_LOG_TYPE_INFO, "Sorting a checklist with %d items", buf, 8u);
  }

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v35 = [[ICTextElementAnimator alloc] initWithTextView:v10 originTrackedParagraphs:v19 destinationTrackedParagraphs:linerizedRepresentation];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__ICTextController_Checklist__moveCheckedChecklistsToBottomInTextView_forRange_animated___block_invoke;
    aBlock[3] = &unk_2781AED38;
    aBlock[4] = self;
    v48 = v19;
    v49 = linerizedRepresentation;
    v24 = v10;
    v50 = v24;
    v51 = v15;
    v52 = v17;
    v25 = _Block_copy(aBlock);
    v26 = v25;
    if (a6)
    {
      [v24 clampTextView];
      [v24 setIsDraggingChecklistItem:1];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __89__ICTextController_Checklist__moveCheckedChecklistsToBottomInTextView_forRange_animated___block_invoke_2;
      v44[3] = &unk_2781AEEC0;
      v46 = v26;
      v45 = v24;
      v27 = v35;
      [(ICTextElementAnimator *)v35 animateWithCompletion:v44];
    }

    else
    {
      (*(v25 + 2))(v25);
      v27 = v35;
    }

    goto LABEL_20;
  }

  v37 = v22;
  if (a6)
  {
    if ([v19 count] < 0x1F5)
    {
      v36 = 1;
      goto LABEL_16;
    }

    v28 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v19 count];
      *buf = 67109120;
      v54 = v29;
      _os_log_impl(&dword_2151A1000, v28, OS_LOG_TYPE_INFO, "Disabling animation for checklist sort of %d items", buf, 8u);
    }
  }

  v36 = 0;
LABEL_16:
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__ICTextController_Checklist__moveCheckedChecklistsToBottomInTextView_forRange_animated___block_invoke_76;
  v38[3] = &unk_2781AED38;
  v38[4] = self;
  v30 = v19;
  v39 = v30;
  v40 = linerizedRepresentation;
  v31 = v10;
  v41 = v31;
  v42 = v15;
  v43 = v17;
  v32 = _Block_copy(v38);
  v33 = v32;
  if (v36)
  {
    [self performAnimatedSortForTrackedParagraphs:v30 expandedRange:v15 textView:v17 sortChecklistsBlock:{v31, v32}];
  }

  else
  {
    (*(v32 + 2))(v32);
  }

  v22 = v37;

LABEL_20:
  return v22 ^ 1u;
}

- (void)applySortFromOriginalParagraphs:()Checklist sortedTrackedParagraphs:forTextView:checklistRange:
{
  v52 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v9 = a4;
  v10 = a5;
  tTTextStorage = [v10 TTTextStorage];
  undoManager = [tTTextStorage undoManager];
  [undoManager beginUndoGrouping];

  [tTTextStorage beginSkippingTimestampUpdates];
  [tTTextStorage beginEditing];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = a6;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke;
  v46[3] = &unk_2781AEEE8;
  v46[4] = v47;
  v13 = [v9 ic_map:v46];
  v14 = [v9 differenceFromArray:v35];
  removals = [v14 removals];
  v16 = objc_alloc(MEMORY[0x277CBEB38]);
  removals2 = [v14 removals];
  v18 = [v16 initWithCapacity:{objc_msgSend(removals2, "count")}];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_2;
  v43[3] = &unk_2781AEF10;
  v19 = tTTextStorage;
  v44 = v19;
  v20 = v18;
  v45 = v20;
  [removals enumerateObjectsUsingBlock:v43];
  v21 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [removals count];
    v23 = [v35 count];
    *buf = 67109376;
    v49 = v22;
    v50 = 1024;
    v51 = v23;
    _os_log_impl(&dword_2151A1000, v21, OS_LOG_TYPE_INFO, "Beginning checklist reorder with number of changes %d for total item count %d", buf, 0xEu);
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_82;
  v40[3] = &unk_2781AEF10;
  v24 = v20;
  v41 = v24;
  v25 = v19;
  v42 = v25;
  [removals enumerateObjectsWithOptions:2 usingBlock:v40];
  insertions = [v14 insertions];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_2_83;
  v36[3] = &unk_2781AEF38;
  v27 = v24;
  v37 = v27;
  v28 = v13;
  v38 = v28;
  v29 = v25;
  v39 = v29;
  [insertions enumerateObjectsUsingBlock:v36];
  [v29 endEditing];
  [v29 endSkippingTimestampUpdates];
  undoManager2 = [v29 undoManager];
  [undoManager2 endUndoGrouping];

  [self sendTextDidChangeNotificationForTextView:v10];
  textStorage = [v10 textStorage];
  [self updateTrackedAttributesInTextStorage:textStorage range:a6 changeInLength:{a7, 0}];

  _Block_object_dispose(v47, 8);
}

- (ICTrackedParagraphTreeNode)createTreeFromTrackedParagraphs:()Checklist textView:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ICTrackedParagraphTreeNode);
  [(ICTrackedParagraphTreeNode *)v7 setIndent:-1];
  v8 = v7;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  v28 = v8;
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
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        paragraph = [v13 paragraph];
        indent = [paragraph indent];

        if (indent)
        {
          indent2 = [(ICTrackedParagraphTreeNode *)v8 indent];
          paragraph2 = [v13 paragraph];
          indent3 = [paragraph2 indent];

          if (indent3 <= indent2 + 1)
          {
            if (indent3 > indent2 || indent2 < 1)
            {
              parent = v8;
            }

            else
            {
              parent = v8;
              do
              {
                v24 = parent;
                parent = [(ICTrackedParagraphTreeNode *)parent parent];

                indent4 = [(ICTrackedParagraphTreeNode *)parent indent];
                v8 = parent;
              }

              while (indent3 <= indent4 && indent4 > 0);
            }
          }

          else
          {
            do
            {
              v19 = [ICTrackedParagraphTreeNode placeholderNodeWithIndentation:?];
              [(ICTrackedParagraphTreeNode *)v8 addChild:v19];
              parent = v19;

              indent5 = [(ICTrackedParagraphTreeNode *)parent indent];
              v22 = indent5 + 1;
              v8 = parent;
            }

            while (indent3 > v22);
          }
        }

        else
        {
          parent = v28;
        }

        v26 = v8;
        v8 = [ICTrackedParagraphTreeNode nodeFromTrackedParagraph:v13 textView:v6];
        [(ICTrackedParagraphTreeNode *)parent addChild:v8];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  return v28;
}

- (id)sortTrackedParagraphsMovingCheckedItemsToBottom:()Checklist
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 ic_objectsPassingTest:&__block_literal_global_93];

  [v4 removeObjectsInArray:v5];
  [v4 addObjectsFromArray:v5];
  v6 = [v4 copy];

  return v6;
}

- (uint64_t)expandedRangeForContiguousTodosForRange:()Checklist textView:
{
  v8 = a5;
  objc_opt_class();
  textStorage = [v8 textStorage];
  v10 = ICCheckedDynamicCast();

  if ([self containsOnlyStyle:103 inRange:a3 inTextStorage:{a4, v10}])
  {
    v11 = a3 + a4;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [self rangeForChecklistItemInRange:a3 textStorage:{0, v10}];
      if (v13)
      {
        v14 = a3;
        do
        {
          [v13 rangeValue];
          if (!v15)
          {
            break;
          }

          rangeValue = [v13 rangeValue];
          v14 = rangeValue;
          if (rangeValue - 1 >= a3 - 1)
          {
            --a3;
          }

          else
          {
            a3 = rangeValue - 1;
          }

          objc_autoreleasePoolPop(v12);
          if (a3 < 0)
          {
            goto LABEL_14;
          }

          v12 = objc_autoreleasePoolPush();
          v13 = [self rangeForChecklistItemInRange:a3 textStorage:{0, v10}];
        }

        while (v13);
      }

      else
      {
        v14 = a3;
      }

      objc_autoreleasePoolPop(v12);
LABEL_14:
      a3 = v14;
    }

    if (v11 < [v10 length])
    {
      v17 = objc_autoreleasePoolPush();
      for (i = [self rangeForChecklistItemInRange:v11 textStorage:{0, v10}];
      {
        [i rangeValue];
        if (!v19)
        {
          break;
        }

        rangeValue2 = [i rangeValue];
        if (rangeValue2 + v21 <= (v11 + 1))
        {
          ++v11;
        }

        else
        {
          v11 = rangeValue2 + v21;
        }

        objc_autoreleasePoolPop(v17);
        if (v11 >= [v10 length])
        {
          goto LABEL_24;
        }

        v17 = objc_autoreleasePoolPush();
        [self rangeForChecklistItemInRange:v11 textStorage:{0, v10}];
      }

      objc_autoreleasePoolPop(v17);
    }
  }

LABEL_24:

  return a3;
}

- (id)rangesForTodosInRange:()Checklist markedCompleted:textStorage:
{
  v9 = a6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = *MEMORY[0x277D35DA8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__ICTextController_Checklist__rangesForTodosInRange_markedCompleted_textStorage___block_invoke;
  v13[3] = &unk_2781AEF80;
  v14 = a5;
  v13[4] = &v15;
  [v9 enumerateAttribute:v10 inRange:a3 options:a4 usingBlock:{0, v13}];
  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (id)trackedParagraphsForTodosInRange:()Checklist textStorage:
{
  v8 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *MEMORY[0x277D35DA8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ICTextController_Checklist__trackedParagraphsForTodosInRange_textStorage___block_invoke;
  v12[3] = &unk_2781AC9B8;
  v12[4] = self;
  v12[5] = &v13;
  [v8 enumerateAttribute:v9 inRange:a3 options:a4 usingBlock:{0, v12}];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)rangeForChecklistItemInRange:()Checklist textStorage:
{
  v2 = [self todoForRange:? inTextStorage:?];
  uuid = [v2 uuid];

  if (uuid)
  {
    trackedToDoParagraphs = [self trackedToDoParagraphs];
    uuid2 = [v2 uuid];
    v6 = [trackedToDoParagraphs objectForKeyedSubscript:uuid2];

    if (v6)
    {
      characterRange = [v6 characterRange];
      uuid = [MEMORY[0x277CCAE60] valueWithRange:{characterRange, v8}];
    }

    else
    {
      uuid = 0;
    }
  }

  return uuid;
}

- (uint64_t)containsAnyTodoItemMarkedCompleted:()Checklist inRange:textStorage:
{
  v9 = a6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10 = *MEMORY[0x277D35DA8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__ICTextController_Checklist__containsAnyTodoItemMarkedCompleted_inRange_textStorage___block_invoke;
  v13[3] = &unk_2781AEF80;
  v14 = a3;
  v13[4] = &v15;
  [v9 enumerateAttribute:v10 inRange:a4 options:a5 usingBlock:{0, v13}];
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (ICParagraphInfo)paragraphInfoForCharacterAtIndex:()Checklist includeChildren:textStorage:
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a5;
  string = [v7 string];
  v61 = v7;
  v9 = [v7 attribute:*MEMORY[0x277D35DA8] atIndex:a3 effectiveRange:0];
  v60 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc_init(ICParagraphInfo);
    [(ICParagraphInfo *)v11 setParagraphStyle:v10];
    if ([v10 isList])
    {
      v12 = [string ic_lineRangeIgnoringLineBreakCharactersForIndex:a3];
      [(ICParagraphInfo *)v11 setCharacterRange:v12, v13];
      v14 = v11;
      indent = [v10 indent];
      if (v14)
      {
        v16 = indent;
        outlineController = v14;
        do
        {
          v66[0] = 0;
          v66[1] = 0;
          characterRange = [outlineController characterRange];
          if (!a4)
          {
            outlineController = v14;
            goto LABEL_29;
          }

          v20 = characterRange;
          v21 = v19;
          if ([v10 isList])
          {
            v22 = v21 + v20;
            v23 = [v61 attribute:*MEMORY[0x277D35DA8] atIndex:v21 + v20 + 1 effectiveRange:v66];
            style = [v23 style];
            if (style != [v10 style] || objc_msgSend(v23, "indent") <= v16)
            {

              goto LABEL_29;
            }

            v25 = objc_alloc_init(ICParagraphInfo);
            [(ICParagraphInfo *)v25 setParagraphStyle:v23];
            v26 = [string ic_lineRangeIgnoringLineBreakCharactersForIndex:v22 + 1];
            [(ICParagraphInfo *)v25 setCharacterRange:v26, v27];
            children = [(ICParagraphInfo *)v14 children];

            if (!children)
            {
              v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [(ICParagraphInfo *)v14 setChildren:v29];
            }

            children2 = [(ICParagraphInfo *)v14 children];
            [children2 addObject:v25];

            outlineController = v25;
            v10 = v60;
          }
        }

        while (outlineController);
      }

      v11 = v14;
    }

    else
    {
      uuid = [v10 uuid];

      if (uuid)
      {
        v32 = [string paragraphRangeForRange:{a3, 0}];
        [(ICParagraphInfo *)v11 setCharacterRange:v32, v33];
        if (a4)
        {
          v59 = string;
          objc_opt_class();
          v34 = ICDynamicCast();
          outlineController = [v34 outlineController];

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          uuid2 = [v60 uuid];
          v36 = [outlineController descendantsForUUID:uuid2];

          v37 = [v36 countByEnumeratingWithState:&v62 objects:v67 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v63;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v63 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = [outlineController rangeForUUID:*(*(&v62 + 1) + 8 * i)];
                v43 = v42;
                v44 = [v61 attribute:*MEMORY[0x277D35DA8] atIndex:v41 effectiveRange:0];
                v45 = objc_alloc_init(ICParagraphInfo);
                [(ICParagraphInfo *)v45 setParagraphStyle:v44];
                [(ICParagraphInfo *)v45 setCharacterRange:v41, v43];
                children3 = [(ICParagraphInfo *)v11 children];

                if (!children3)
                {
                  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [(ICParagraphInfo *)v11 setChildren:v47];
                }

                children4 = [(ICParagraphInfo *)v11 children];
                [children4 addObject:v45];
              }

              v38 = [v36 countByEnumeratingWithState:&v62 objects:v67 count:16];
            }

            while (v38);
          }

          string = v59;
LABEL_29:
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  children5 = [(ICParagraphInfo *)v11 children];
  v50 = [children5 count];

  characterRange2 = [(ICParagraphInfo *)v11 characterRange];
  if (v50)
  {
    children6 = [(ICParagraphInfo *)v11 children];
    lastObject = [children6 lastObject];
    characterRange3 = [lastObject characterRange];
    v57 = v56;

    v51 = v57 - characterRange2 + characterRange3;
  }

  [(ICParagraphInfo *)v11 setRangeIncludingChildren:characterRange2, v51];

  return v11;
}

- (void)autoSortChecklistIfNecessaryForTrackedParagraph:()Checklist textView:analyticsHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__ICTextController_Checklist__autoSortChecklistIfNecessaryForTrackedParagraph_textView_analyticsHandler___block_invoke;
    v11[3] = &unk_2781AC5B0;
    v11[4] = self;
    v12 = v9;
    v13 = v8;
    [self showFirstTimeAutoSortEnabledAlertIfNecessaryWithTextView:v12 completionHandler:v11 analyticsHandler:a5];
  }
}

- (void)autoSortChecklistForUnitTestAtIndex:()Checklist textView:
{
  v8 = a4;
  v6 = [self expandedRangeForContiguousTodosForRange:a3 textView:{0, v8}];
  [self moveCheckedChecklistsToBottomInTextView:v8 forRange:v6 animated:{v7, 0}];
}

- (void)showFirstTimeAutoSortEnabledAlertIfNecessaryWithTextView:()Checklist completionHandler:analyticsHandler:
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (([objc_opt_class() checklistAutoAlertShown] & 1) != 0 || objc_msgSend(objc_opt_class(), "checklistAutoSortEnabled"))
  {
    v8[2](v8);
  }

  else
  {
    [self showFirstTimeAutoSortEnabledAlertWithTextView:v10 completionHandler:v8 analyticsHandler:v9];
  }
}

- (void)showFirstTimeAutoSortEnabledAlertWithTextView:()Checklist completionHandler:analyticsHandler:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CCA8D8];
  v28 = a3;
  mainBundle = [v10 mainBundle];
  v30 = [mainBundle localizedStringForKey:@"Enable Automatic Sorting?" value:&stru_282757698 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v29 = [mainBundle2 localizedStringForKey:@"Would you like checked items to automatically move to the bottom of your lists? You can change this later in Notes Settings." value:&stru_282757698 table:0];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v30 message:v29 preferredStyle:1];
  v14 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle3 localizedStringForKey:@"Not Now" value:&stru_282757698 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __112__ICTextController_Checklist__showFirstTimeAutoSortEnabledAlertWithTextView_completionHandler_analyticsHandler___block_invoke;
  v34[3] = &unk_2781AEFA8;
  v34[4] = self;
  v17 = v9;
  v35 = v17;
  v18 = v8;
  v36 = v18;
  v19 = [v14 actionWithTitle:v16 style:1 handler:v34];
  [v13 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [mainBundle4 localizedStringForKey:@"Enable Sorting" value:&stru_282757698 table:0];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __112__ICTextController_Checklist__showFirstTimeAutoSortEnabledAlertWithTextView_completionHandler_analyticsHandler___block_invoke_2;
  v31[3] = &unk_2781AEFA8;
  v31[4] = self;
  v32 = v17;
  v33 = v18;
  v23 = v18;
  v24 = v17;
  v25 = [v20 actionWithTitle:v22 style:0 handler:v31];

  [v13 addAction:v25];
  [v13 setPreferredAction:v25];
  objc_opt_class();
  editorContainer = [v28 editorContainer];

  v27 = ICDynamicCast();
  [v27 presentViewController:v13 animated:1 completion:0];
}

+ (uint64_t)needsToShowFirstTimeAutoSortChecklistAlert
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [standardUserDefaults BOOLForKey:@"AutoSortChecklistAlertShown"];

  return v1;
}

- (ICChecklistInfo)analyticsInfoForChecklistAtIndex:()Checklist textView:
{
  v6 = a4;
  v7 = objc_alloc_init(ICChecklistInfo);
  textStorage = [v6 textStorage];
  v9 = [textStorage length];

  if (v9 > a3)
  {
    tTTextStorage = [v6 TTTextStorage];
    tTTextStorage2 = [v6 TTTextStorage];
    ic_range = [tTTextStorage2 ic_range];
    [self updateTrackedAttributesInTextStorage:tTTextStorage range:ic_range changeInLength:{v13, 0}];

    [v6 visibleBounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      icTextLayoutManager = [v6 icTextLayoutManager];
      v23 = [icTextLayoutManager characterRangeForBoundingRect:{v15, v17, v19, v21}];
      v25 = v24;

      icTextLayoutManager2 = [v6 icTextLayoutManager];
      icTextLayoutManager3 = [v6 icTextLayoutManager];
      v28 = [icTextLayoutManager3 ic_textRangeForRange:{v23, v25}];
      [icTextLayoutManager2 ensureLayoutForRange:v28];
    }

    else
    {
      icTextLayoutManager2 = [v6 layoutManager];
      icTextLayoutManager3 = [v6 textContainer];
      [icTextLayoutManager2 ensureLayoutForBoundingRect:icTextLayoutManager3 inTextContainer:{v15, v17, v19, v21}];
    }

    v29 = [self expandedRangeForContiguousTodosForRange:a3 textView:{0, v6}];
    v31 = v30;
    textStorage2 = [v6 textStorage];
    v33 = [self trackedParagraphsForTodosInRange:v29 textStorage:{v31, textStorage2}];

    v34 = [v33 ic_objectsPassingTest:&__block_literal_global_119];
    -[ICChecklistInfo setNumberOfItems:](v7, "setNumberOfItems:", [v33 count]);
    -[ICChecklistInfo setNumberOfCheckedItems:](v7, "setNumberOfCheckedItems:", [v34 count]);
    [(ICChecklistInfo *)v7 setNumberOfUncheckedItems:[(ICChecklistInfo *)v7 numberOfItems]- [(ICChecklistInfo *)v7 numberOfCheckedItems]];
  }

  return v7;
}

@end