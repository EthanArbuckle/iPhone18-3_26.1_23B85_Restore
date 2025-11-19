@interface ICTextController
@end

@implementation ICTextController

void __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v7 = a1[9];
  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = a2;
  v17 = [v3 imageInfoForTrackedParagraph:v11 textView:v4 characterRangeToRender:v5 visibleRectToRender:{v6, v7, v8, v9, v10}];
  v12 = *(a1 + 6);
  v13 = [v11 paragraph];

  v14 = [v13 todo];
  v15 = [v14 uuid];
  v16 = [v15 UUIDString];
  [v12 ic_addKey:v16 forNonNilObject:v17];
}

void __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 paragraph];
  v5 = [v4 todo];
  v6 = [v5 uuid];
  v13 = [v6 UUIDString];

  v7 = [*(a1 + 32) trackedToDoParagraphs];
  v8 = [v3 paragraph];

  v9 = [v8 todo];
  v10 = [v9 uuid];
  v11 = [v7 objectForKeyedSubscript:v10];

  v12 = [*(a1 + 32) imageInfoForTrackedParagraph:v11 textView:*(a1 + 40) characterRangeToRender:*(a1 + 56) visibleRectToRender:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 48) ic_addKey:v13 forNonNilObject:v12];
}

uint64_t __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearAllTodoSupplementalViews];
  [*(a1 + 32) cleanupStaleTodoButtons];
  [*(a1 + 32) updateVisibleSupplementalViews];
  [*(a1 + 40) removeFromSuperview];
  v2 = [*(a1 + 48) allValues];
  [v2 makeObjectsPerformSelector:sel_removeFromSuperview];

  v3 = *(a1 + 56);

  return [v3 unclampTextView];
}

void __147__ICTextController_ICChecklistSortAnimation__addImageViewsBeforeSortIfNecessaryForTrackedInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 estimated] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    [v5 rect];
    v7 = [v6 initWithFrame:?];
    v8 = [v5 image];
    [v7 setImage:v8];

    [v5 rect];
    TSDAddPoints();
    [v7 setFrameOrigin:?];
    [*(a1 + 32) addSubview:v7];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];
  }
}

void __160__ICTextController_ICChecklistSortAnimation__addImageViewsAfterSortIfNecessaryForTrackedInfos_existingInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  if (([v21 estimated] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v21 uuid];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [v21 uuid];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        [v21 rect];
        v11 = v10;
        v13 = v12;
        TSDAddPoints();
        v15 = v14;
        [v9 rect];
        v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v15, *(a1 + 64) + v16, v11, v13}];
        v18 = [v21 image];
        [v17 setImage:v18];

        [*(a1 + 48) addSubview:v17];
        v19 = *(a1 + 32);
        v20 = [v21 uuid];
        [v19 setObject:v17 forKeyedSubscript:v20];
      }
    }
  }
}

void __126__ICTextController_ICChecklistSortAnimation__setFinalFramesForSortedInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v7 = [*(a1 + 32) trackedToDoParagraphs];
    v8 = [v7 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = [*(a1 + 40) icLayoutManager];
    v9 = [v7 trackedToDoParagraphs];
    v8 = [v9 objectForKeyedSubscript:v6];
  }

  if (v8)
  {
    v10 = [*(a1 + 48) ic_objectForNonNilKey:v17];
    v11 = v10;
    if (v10)
    {
      [v10 frame];
      v13 = v12;
      [v5 rect];
      v15 = *(a1 + 64) + v14;
      v16 = [v11 ic_animator];
      [v16 setFrameOrigin:{v13, v15}];

      [v11 setFrameOrigin:{v13, v15}];
    }
  }
}

void __127__ICTextController_ICChecklistSortAnimation__imageInfoForTrackedParagraph_textView_characterRangeToRender_visibleRectToRender___block_invoke(uint64_t a1)
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v2 = [*(a1 + 32) icLayoutManager];
    [v2 setShouldManuallyRenderSeparateSubviews:1];

    v3 = [*(a1 + 32) icLayoutManager];
    [v3 setIsDraggingChecklistItem:1];

    v4 = [*(a1 + 32) icLayoutManager];
    v5 = [*(a1 + 40) characterRange];
    [v4 updateSubviewsForCharacterRange:{v5, v6}];
  }

  [*(a1 + 32) ic_rectForRange:{*(a1 + 64), *(a1 + 72)}];
  v7 = *(*(a1 + 48) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = [*(a1 + 32) ic_imageForRange:{*(a1 + 64), *(a1 + 72)}];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v15 = [*(a1 + 32) icLayoutManager];
    [v15 setShouldManuallyRenderSeparateSubviews:0];

    v16 = [*(a1 + 32) icLayoutManager];
    [v16 setIsDraggingChecklistItem:0];
  }
}

uint64_t __88__ICTextController_Checklist__removeChecklistItemsMarkedCompleted_inTextView_forRanges___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __89__ICTextController_Checklist__moveCheckedChecklistsToBottomInTextView_forRange_animated___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) unclampTextView];
  v2 = *(a1 + 32);

  return [v2 setIsDraggingChecklistItem:0];
}

uint64_t __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  [a2 characterRange];
  *(*(*(a1 + 32) + 8) + 24) = v4 + v3;
  v5 = MEMORY[0x277CCAE60];

  return [v5 valueWithRange:{v3, v4}];
}

void __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = [a2 object];
  v3 = objc_alloc_init(ICParagraphInfoSortInfo);
  [(ICParagraphInfoSortInfo *)v3 setTrackedParagraph:v15];
  v4 = *(a1 + 32);
  v5 = [v15 characterRange];
  v7 = [v4 attributedSubstringFromRange:{v5, v6}];
  [(ICParagraphInfoSortInfo *)v3 setAttributedString:v7];

  v8 = [v15 characterRange];
  [(ICParagraphInfoSortInfo *)v3 setCharacterRange:v8, v9];
  v10 = *(a1 + 40);
  v11 = [v15 paragraph];
  v12 = [v11 todo];
  v13 = [v12 uuid];
  v14 = [v13 UUIDString];
  [v10 setObject:v3 forKeyedSubscript:v14];
}

void __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_82(uint64_t a1, void *a2)
{
  v15 = [a2 object];
  v3 = *(a1 + 32);
  v4 = [v15 paragraph];
  v5 = [v4 todo];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = [v3 objectForKeyedSubscript:v7];

  v9 = [*(a1 + 40) string];
  v10 = [v8 characterRange];
  v12 = [v9 ic_safeCharacterRangeForRange:{v10, v11}];
  v14 = v13;

  [*(a1 + 40) deleteCharactersInRange:{v12, v14}];
}

void __114__ICTextController_Checklist__applySortFromOriginalParagraphs_sortedTrackedParagraphs_forTextView_checklistRange___block_invoke_2_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = [v3 object];
  v4 = [v16 paragraph];
  v5 = [v4 todo];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];

  v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v9 = *(a1 + 40);
  v10 = [v3 index];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v12 = [v11 rangeValue];

  if (!v8)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((sortInfo) != nil)" functionName:"-[ICTextController(Checklist) applySortFromOriginalParagraphs:sortedTrackedParagraphs:forTextView:checklistRange:]_block_invoke_2" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "sortInfo"}];
  }

  v13 = [*(a1 + 48) length];
  v14 = *(a1 + 48);
  if (v12 <= v13)
  {
    v15 = [v8 attributedString];
    [v14 replaceCharactersInRange:v12 withAttributedString:{0, v15}];
  }

  else
  {
    v15 = [v8 attributedString];
    [v14 appendAttributedString:v15];
  }
}

uint64_t __79__ICTextController_Checklist__sortTrackedParagraphsMovingCheckedItemsToBottom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 paragraph];
  v3 = [v2 todo];
  v4 = [v3 done];

  return v4;
}

void __81__ICTextController_Checklist__rangesForTodosInRange_markedCompleted_textStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [v12 todo];

  if (v7)
  {
    v8 = [v12 todo];
    v9 = [v8 done];

    if (v9 == *(a1 + 40))
    {
      v10 = *(*(*(a1 + 32) + 8) + 40);
      v11 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
      [v10 addObject:v11];
    }
  }
}

void __76__ICTextController_Checklist__trackedParagraphsForTodosInRange_textStorage___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 todo];

  if (v3)
  {
    v4 = [*(a1 + 32) trackedToDoParagraphs];
    v5 = [v8 todo];
    v6 = [v5 uuid];
    v7 = [v4 objectForKeyedSubscript:v6];

    [*(*(*(a1 + 40) + 8) + 40) ic_addNonNilObject:v7];
  }
}

void __86__ICTextController_Checklist__containsAnyTodoItemMarkedCompleted_inRange_textStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  v7 = [v11 todo];
  if (v7)
  {
    v8 = [v11 todo];
    if ([v8 done] && *(a1 + 40) == 1)
    {

LABEL_8:
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
      goto LABEL_9;
    }

    v9 = [v11 todo];
    if ([v9 done])
    {

      goto LABEL_9;
    }

    v10 = *(a1 + 40);

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

void __105__ICTextController_Checklist__autoSortChecklistIfNecessaryForTrackedParagraph_textView_analyticsHandler___block_invoke(uint64_t a1)
{
  if ([objc_opt_class() checklistAutoSortEnabled])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    dispatchMainAfterDelay();
  }
}

uint64_t __105__ICTextController_Checklist__autoSortChecklistIfNecessaryForTrackedParagraph_textView_analyticsHandler___block_invoke_2(uint64_t a1)
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [*(a1 + 48) characterRange];

  return [v3 moveCheckedChecklistsToBottomInTextView:v4 forRange:v6 animated:{v5, !IsVoiceOverRunning}];
}

uint64_t __112__ICTextController_Checklist__showFirstTimeAutoSortEnabledAlertWithTextView_completionHandler_analyticsHandler___block_invoke(uint64_t a1)
{
  [objc_opt_class() setChecklistAutoAlertShown:1];
  [objc_opt_class() setChecklistAutoSortEnabled:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t __112__ICTextController_Checklist__showFirstTimeAutoSortEnabledAlertWithTextView_completionHandler_analyticsHandler___block_invoke_2(uint64_t a1)
{
  [objc_opt_class() setChecklistAutoAlertShown:1];
  [objc_opt_class() setChecklistAutoSortEnabled:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t __73__ICTextController_Checklist__analyticsInfoForChecklistAtIndex_textView___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 paragraph];
  v3 = [v2 todo];
  v4 = [v3 done];

  return v4;
}

@end