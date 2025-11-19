@interface ICTextController
+ (BOOL)shouldRetainFirstListStyleForFilteredAttributedSubstring:(id)a3 fromRange:(_NSRange)a4;
+ (double)extraBulletWidthForNumberedListWithMaxItemNumber:(id)a3 textFont:(id)a4;
+ (double)extraWidthNeededForStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6;
+ (double)indentForStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6;
+ (id)attributedStringToPasteWithAdaptedParagraphStyles:(id)a3 pasteRange:(_NSRange)a4 textStorage:(id)a5;
+ (id)removeBeginningListStyleIfNecessaryForAttributedString:(id)a3 fromTextStorage:(id)a4 andRange:(_NSRange)a5;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)p_setCellsInTable:(id)a3 fromAttributedString:(id)a4 textTable:(id)a5 atCellOffset:(id)a6 filterPastedAttributes:(BOOL)a7 isReadingSelectionFromPasteboard:(BOOL)a8;
- (BOOL)attachmentsExistInRange:(_NSRange)a3 textStorage:(id)a4;
- (BOOL)canAddToTagsInTextView:(id)a3 forRange:(_NSRange)a4;
- (BOOL)canChangeStyleForSelectedRanges:(id)a3 inTextStorage:(id)a4;
- (BOOL)canConvertInlineAttachmentToTextInTextView:(id)a3 forRange:(_NSRange)a4;
- (BOOL)canIndentTextView:(id)a3 byDelta:(int64_t)a4;
- (BOOL)canIndentTextView:(id)a3 byDelta:(int64_t)a4 forRanges:(id)a5;
- (BOOL)containsOnlyStyle:(unsigned int)a3 inRange:(_NSRange)a4 inTextStorage:(id)a5;
- (BOOL)deleteBackwardForSpecialCasesInTextView:(id)a3;
- (BOOL)deleteWordBackwardForSpecialCasesInTextView:(id)a3;
- (BOOL)inlineAttachmentInTextView:(id)a3 atIndex:(unint64_t)a4 outAttachment:(id *)a5;
- (BOOL)insertNewlineForSpecialCasesInTextView:(id)a3;
- (BOOL)insertedSpaceInTextView:(id)a3 replacementRange:(_NSRange)a4;
- (BOOL)isTodoDoneRange:(_NSRange)a3 inTextStorage:(id)a4;
- (BOOL)removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:(id)a3 textStorage:(id)a4 rangeToBeDeleted:(_NSRange)a5 blockBeforeEndEditing:(id)a6;
- (BOOL)removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:(id)a3 textStorage:(id)a4 paragraphRange:(_NSRange)a5 andLocation:(unint64_t)a6;
- (BOOL)selectionContainsBlockQuoteAndOthers:(id)a3;
- (BOOL)setDone:(BOOL)a3 range:(_NSRange)a4 inTextStorage:(id)a5;
- (ICAttachmentInsertionController)attachmentInsertionController;
- (ICAuthorHighlightsController)authorHighlightsController;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNote)note;
- (ICTextController)init;
- (_NSRange)addExtraLinesIfNeededToTextStorage:(id)a3 editedRange:(_NSRange)a4 actualLengthIncrease:(int64_t *)a5;
- (_NSRange)cleanupTextStorage:(id)a3 afterProcessingEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 changeInLengthAfterCleanup:(int64_t *)a7;
- (_NSRange)expandRangeToIncludeFullList:(_NSRange)a3 inAttributedString:(id)a4;
- (_NSRange)extendedSelectionRangeForCollapsedSectionHeadingWithRange:(_NSRange)a3 textView:(id)a4;
- (_NSRange)firstParagraphForSetListStyleRange:(_NSRange)a3 inTextStorage:(id)a4;
- (_NSRange)numberListsInAttributedString:(id)a3 inRange:(_NSRange)a4;
- (id)addTableAttachmentWithNSTextTable:(id)a3 attributedString:(id)a4 filterPastedAttributes:(BOOL)a5 isReadingSelectionFromPasteboard:(BOOL)a6;
- (id)indentParagraphStyle:(id)a3 byAmount:(int64_t)a4;
- (id)keyboardLanguageForTextView:(id)a3;
- (id)nsParagraphStyleForICTTParagraphStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6;
- (id)scaleFont:(id)a3 withScale:(double)a4;
- (id)strippedTypingAttributesAtStartOfParagraph:(id)a3 atTheEndOfDocument:(BOOL)a4 isTyping:(BOOL)a5;
- (id)tabStopsForAttributedString:(id)a3 inRange:(_NSRange)a4;
- (id)todoForRange:(_NSRange)a3 inTextStorage:(id)a4;
- (int64_t)setTextStyle:(unsigned int)a3 range:(_NSRange)a4 inTextStorage:(id)a5 inTextView:(id)a6;
- (int64_t)setTextStyle:(unsigned int)a3 removeExtraStyling:(BOOL)a4 range:(_NSRange)a5 inTextStorage:(id)a6 inTextView:(id)a7;
- (int64_t)writingDirectionForRange:(_NSRange)a3 inTextView:(id)a4 inTextStorage:(id)a5;
- (unsigned)paragraphStyleForRange:(_NSRange)a3 inTextView:(id)a4 inTextStorage:(id)a5 ignoreTypingAttributes:(BOOL)a6;
- (void)addToTagsInTextView:(id)a3 forRange:(_NSRange)a4;
- (void)convertInlineAttachmentToTextInTextView:(id)a3 forRange:(_NSRange)a4;
- (void)convertNSTablesToICTables:(id)a3 pasteboardTypes:(id)a4 filterPastedAttributes:(BOOL)a5 isReadingSelectionFromPasteboard:(BOOL)a6;
- (void)createToDoItemForCharacterRange:(_NSRange)a3 paragraphStyle:(id)a4 textStorage:(id)a5;
- (void)ensureUniqueParagraphStyleUUIDsInTextStorage:(id)a3 range:(_NSRange)a4;
- (void)filterAttachmentsForPrintingInAttributedString:(id)a3 traitCollection:(id)a4 textContainer:(id)a5;
- (void)fixListWritingDirectionInAttributedString:(id)a3 forListItemsInRange:(_NSRange)a4;
- (void)fixModelAttributesInTextStorage:(id)a3 inRange:(_NSRange)a4;
- (void)fixTextStorage:(id)a3 afterProcessingEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
- (void)indentRange:(_NSRange)a3 byAmount:(int64_t)a4 inTextStorage:(id)a5 textView:(id)a6 forceUpdateAttributes:(BOOL)a7;
- (void)insertNewlineAtCharacterIndex:(unint64_t)a3 textStorage:(id)a4;
- (void)insertedText:(id)a3 replacementRange:(_NSRange)a4 inTextView:(id)a5 hashtagController:(id)a6 mentionsController:(id)a7 languageHasSpaces:(BOOL)a8 parentAttachment:(id)a9;
- (void)p_populateTable:(id)a3 withNSTextTable:(id)a4 attributedString:(id)a5 filterPastedAttributes:(BOOL)a6 isReadingSelectionFromPasteboard:(BOOL)a7;
- (void)refreshTextStylingForTextStorage:(id)a3 withTextController:(id)a4;
- (void)refreshTypingAttributesForAllTextViewsOfTextStorage:(id)a3;
- (void)refreshTypingAttributesForTextView:(id)a3 textStorage:(id)a4;
- (void)removeFontsAndColorsForRange:(_NSRange)a3 inTextStorage:(id)a4;
- (void)resetTrackedToDoParagraphs;
- (void)scaleFontPointSize:(double)a3 range:(_NSRange)a4 inTextStorage:(id)a5;
- (void)setNote:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4 withLayoutManager:(id)a5 traitCollection:(id)a6 firstVisibleCharLocation:(unint64_t)a7;
- (void)setParagraphWritingDirectionInRange:(_NSRange)a3 toDirection:(int64_t)a4 inTextView:(id)a5;
- (void)setSelectionToIndex:(unint64_t)a3 onTextView:(id)a4;
- (void)setTextAlignment:(int64_t)a3 range:(_NSRange)a4 inTextStorage:(id)a5 inTextView:(id)a6;
- (void)setTrackAddedExtraNewlineRanges:(BOOL)a3;
- (void)setTypingAttributesForUndo:(id)a3;
- (void)setTypingTextStyle:(unsigned int)a3 textView:(id)a4;
- (void)styleDataDetectorTypesForPreviewInTextStorage:(id)a3;
- (void)styleListsAndIndentsInAttributedString:(id)a3 inRange:(_NSRange)a4;
- (void)superscriptDelta:(int64_t)a3 range:(_NSRange)a4 inTextStorage:(id)a5;
- (void)superscriptUpdate:(id)a3 range:(_NSRange)a4 inTextStorage:(id)a5;
- (void)toggleBlockQuoteInTextView:(id)a3;
- (void)trackExtraNewLineRangeIfNecessary:(_NSRange)a3;
- (void)uniqueParagraphStylesInTextStorage:(id)a3 inRange:(_NSRange)a4;
- (void)updateAttachmentsInNote;
- (void)updateAttachmentsSelectionStateInTextStorage:(id)a3 forSelectedRanges:(id)a4 layoutManager:(id)a5 textView:(id)a6;
- (void)updateCellInTable:(id)a3 atColumnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5 fromAttributedString:(id)a6 andTextTableBlock:(id)a7 filterPastedAttributes:(BOOL)a8 isReadingSelectionFromPasteboard:(BOOL)a9;
- (void)updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:(_NSRange)a3 textStorage:(id)a4 textView:(id)a5;
- (void)updateTrackedAttributesInTextStorage:(id)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)updateTrackedToDoParagraphsAfterIndex:(unint64_t)a3 byDelta:(int64_t)a4 excludingSeenParagraphs:(id)a5;
- (void)updateTrackingInTextStorage:(id)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)workAroundSageTables:(id)a3;
@end

@implementation ICTextController

- (ICTextController)init
{
  v5.receiver = self;
  v5.super_class = ICTextController;
  v2 = [(ICTTTextController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_userChangedWritingDirection = 0;
    [(ICTextController *)v2 resetTrackedToDoParagraphs];
  }

  return v3;
}

- (void)resetTrackedToDoParagraphs
{
  self->_trackedToDoParagraphs = objc_alloc_init(MEMORY[0x1E695DF90]);

  MEMORY[0x1EEE66BB8]();
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (ICAuthorHighlightsController)authorHighlightsController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorHighlightsController);

  return WeakRetained;
}

- (void)convertNSTablesToICTables:(id)a3 pasteboardTypes:(id)a4 filterPastedAttributes:(BOOL)a5 isReadingSelectionFromPasteboard:(BOOL)a6
{
  v6 = a6;
  v35 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (![(ICTextController *)self isConvertingTables])
  {
    [(ICTextController *)self setIsConvertingTables:1];
    v30 = v10;
    if ([v10 containsObject:@"SFVNativePBMetaDataPBType09"])
    {
      [(ICTextController *)self workAroundSageTables:v9];
    }

    if ([v9 ic_numberOfTables])
    {
      v34 = *MEMORY[0x1E69DB5F8];
      v32 = v6;
      v31 = self;
      do
      {
        v44 = 0;
        v45 = 0;
        v11 = v9;
        v12 = [v9 ic_nextTableStringFromIndex:0 tableRange:&v44];
        v13 = [v12 ic_textTablesInRange:{0, objc_msgSend(v12, "length")}];
        v14 = [MEMORY[0x1E695DF70] array];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v13;
        v15 = [v13 reverseObjectEnumerator];
        v16 = [v15 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v41;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [(ICTextController *)self addTableAttachmentWithNSTextTable:*(*(&v40 + 1) + 8 * i) attributedString:v12 filterPastedAttributes:v35 isReadingSelectionFromPasteboard:v6];
              if (v20)
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v17);
        }

        v9 = v11;
        [v11 deleteCharactersInRange:{v44, v45}];
        v21 = v44;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = v14;
        v23 = [v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v37;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v37 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v36 + 1) + 8 * j);
              v28 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
              v29 = [v28 mutableCopy];

              [v29 addAttribute:v34 value:v27 range:{0, objc_msgSend(v29, "length")}];
              v9 = v11;
              [v11 insertAttributedString:v29 atIndex:v21];
            }

            v24 = [v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v24);
        }

        v6 = v32;
        self = v31;
      }

      while ([v9 ic_numberOfTables]);
    }

    [(ICTextController *)self setIsConvertingTables:0];
    v10 = v30;
  }
}

- (void)workAroundSageTables:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 ic_numberOfTables])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v3 length];
    v6 = 0;
    do
    {
      v7 = [v3 ic_rangeofNextTableFromIndex:v6];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v7;
      v10 = v8;
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v7, v8}];
      [v4 addObject:v11];

      v6 = v9 + v10;
    }

    while (v9 + v10 < v5);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v4 reverseObjectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v25 + 1) + 8 * v16) rangeValue];
          v19 = v17 + v18;
          if (v17 + v18 + 1 <= [v3 length])
          {
            v20 = [v3 attributedSubstringFromRange:{v19, 1}];
            v21 = [v20 string];

            if ([v21 characterAtIndex:0] == 10)
            {
              [v3 deleteCharactersInRange:{v19, 1}];
            }
          }

          if (v17)
          {
            v22 = v17 - 1;
            v23 = [v3 attributedSubstringFromRange:{v22, 1}];
            v24 = [v23 string];

            if ([v24 characterAtIndex:0] == 10)
            {
              [v3 deleteCharactersInRange:{v22, 1}];
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }
}

- (id)addTableAttachmentWithNSTextTable:(id)a3 attributedString:(id)a4 filterPastedAttributes:(BOOL)a5 isReadingSelectionFromPasteboard:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v29 = 0;
  v12 = [v11 ic_numRowsForTextTable:v10 outNumColumns:&v29];
  v13 = 0;
  if (v12 && v29)
  {
    v14 = v12;
    v15 = [(ICTextController *)self note];
    v16 = [v15 currentReplicaID];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x1E696AFB0] UUID];
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x1E69B78F0]);
    v21 = [v20 initWithColumnCount:v29 rowCount:v14 replicaID:v19];
    v22 = [v21 table];
    [(ICTextController *)self p_populateTable:v22 withNSTextTable:v10 attributedString:v11 filterPastedAttributes:v7 isReadingSelectionFromPasteboard:v6];
    v23 = [v21 serialize];
    v24 = [(ICTextController *)self note];

    if (v24)
    {
      v25 = [(ICTextController *)self note];
      v26 = [v25 addTableAttachmentWithTableData:v23];

      [v26 updateChangeCountWithReason:@"Created table from text table"];
      v13 = [ICTextAttachment textAttachmentWithAttachment:v26];
    }

    else
    {
      v27 = objc_alloc(MEMORY[0x1E69DB7F0]);
      v13 = [v27 initWithData:v23 ofType:*MEMORY[0x1E69B7458]];
    }
  }

  return v13;
}

- (void)p_populateTable:(id)a3 withNSTextTable:(id)a4 attributedString:(id)a5 filterPastedAttributes:(BOOL)a6 isReadingSelectionFromPasteboard:(BOOL)a7
{
  v7 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v11 = a4;
  v12 = a5;
  v35 = [v12 length];
  if (v35)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v33 = v12;
    v34 = *MEMORY[0x1E69DB688];
    do
    {
      v47 = 0;
      v48 = 0;
      v16 = [v12 attribute:v34 atIndex:v13 effectiveRange:&v47];
      v17 = [v16 textBlocks];
      if ([v17 count])
      {
        v39 = v17;
        v40 = v16;
        v18 = [v17 objectAtIndex:0];
        v19 = [v18 table];

        v38 = v19;
        v20 = [v12 rangeOfTextTable:v19 atIndex:v47];
        v36 = v21;
        v37 = v20;
        v22 = [v12 attributedSubstringFromRange:?];
        v23 = [v22 ic_textTablesInRange:{0, objc_msgSend(v22, "length")}];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v44;
          do
          {
            v27 = 0;
            do
            {
              if (*v44 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v43 + 1) + 8 * v27);
              if (!v11 || v28 == v11)
              {
                LOBYTE(v32) = a7;
                v14 = [(ICTextController *)self p_setCellsInTable:v42 fromAttributedString:v22 textTable:v28 atCellOffset:v14 filterPastedAttributes:v15 isReadingSelectionFromPasteboard:v7, v32];
                v15 = v29;
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
          }

          while (v25);
        }

        v13 = v37 + v36;

        v12 = v33;
        v17 = v39;
        v16 = v40;
        v30 = v38;
      }

      else
      {
        v30 = [v12 attributedSubstringFromRange:{v47, v48}];
        LOBYTE(v32) = a7;
        v14 = [(ICTextController *)self p_setCellsInTable:v42 fromAttributedString:v30 textTable:0 atCellOffset:v14 filterPastedAttributes:v15 isReadingSelectionFromPasteboard:v7, v32];
        v15 = v31;
        v13 = v48 + v47;
      }
    }

    while (v13 < v35);
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)p_setCellsInTable:(id)a3 fromAttributedString:(id)a4 textTable:(id)a5 atCellOffset:(id)a6 filterPastedAttributes:(BOOL)a7 isReadingSelectionFromPasteboard:(BOOL)a8
{
  v26 = a7;
  var1 = a6.var1;
  var0 = a6.var0;
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3010000000;
  v59 = 0;
  v60 = 0;
  v58 = &unk_1D449C2A9;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3010000000;
  v53 = 0;
  v54 = 0;
  v52 = &unk_1D449C2A9;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __156__ICTextController_ICTableAdditions__p_setCellsInTable_fromAttributedString_textTable_atCellOffset_filterPastedAttributes_isReadingSelectionFromPasteboard___block_invoke;
  aBlock[3] = &unk_1E846ACC8;
  aBlock[4] = v47;
  aBlock[5] = &v55;
  aBlock[6] = &v49;
  v14 = _Block_copy(aBlock);
  v44 = 0;
  v45 = 0;
  v15 = *MEMORY[0x1E69DB688];
  v24 = [v12 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:&v44];
  v23 = [v24 textBlocks];
  if ([v23 count])
  {
    v16 = [v12 length];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = 0x7FFFFFFFFFFFFFFFLL;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0x7FFFFFFFFFFFFFFFLL;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __156__ICTextController_ICTableAdditions__p_setCellsInTable_fromAttributedString_textTable_atCellOffset_filterPastedAttributes_isReadingSelectionFromPasteboard___block_invoke_2;
    v28[3] = &unk_1E846ACF0;
    v29 = v13;
    v37 = var0;
    v38 = var1;
    v30 = v27;
    v33 = v14;
    v34 = v42;
    v35 = v43;
    v36 = v41;
    v31 = v12;
    v32 = self;
    v39 = v26;
    v40 = a8;
    [v31 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v28}];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v43, 8);
  }

  else
  {
    (*(v14 + 2))(v14, var0, 1, var1, 1);
    v17 = [v12 attributedSubstringFromRange:{v44, v45}];
    LOBYTE(v22) = a8;
    [(ICTextController *)self updateCellInTable:v27 atColumnIndex:var0 rowIndex:var1 fromAttributedString:v17 andTextTableBlock:0 filterPastedAttributes:v26 isReadingSelectionFromPasteboard:v22];
  }

  v18 = v50[5];
  if (v56[5] && v18)
  {
    v19 = var1 + 1;
  }

  else
  {
    var0 = 0;
    v19 = v18 + v50[4];
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v20 = var0;
  v21 = v19;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

void __156__ICTextController_ICTableAdditions__p_setCellsInTable_fromAttributedString_textTable_atCellOffset_filterPastedAttributes_isReadingSelectionFromPasteboard___block_invoke(int a1, NSRange range2, uint64_t a3, NSUInteger a4)
{
  v6 = v5;
  length = range2.length;
  range2.length = range2.location;
  v9 = v8;
  v10 = *(*(v8 + 32) + 8);
  if (*(v10 + 24) == 1)
  {
    *(v10 + 24) = 0;
    v12 = *(*(v11 + 40) + 8);
    *(v12 + 32) = range2.location;
    *(v12 + 40) = v13;
    v14 = v11 + 48;
  }

  else
  {
    v16 = *(*(v15 + 40) + 8);
    v17 = *(v16 + 32);
    range2.location = *(v16 + 40);
    *(*(*(v9 + 40) + 8) + 32) = NSUnionRange(range2, *&range2.length);
    v18 = *(v9 + 48);
    v14 = v9 + 48;
    v22.location = v6;
    v22.length = a4;
    v20 = NSUnionRange(*(*(v18 + 8) + 32), v22);
    location = v20.location;
    v6 = v20.location;
    a4 = v20.length;
  }

  v21 = *(*v14 + 8);
  *(v21 + 32) = v6;
  *(v21 + 40) = a4;
}

void __156__ICTextController_ICTableAdditions__p_setCellsInTable_fromAttributedString_textTable_atCellOffset_filterPastedAttributes_isReadingSelectionFromPasteboard___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = [a2 textBlocks];
  v5 = [v19 lastObject];
  v6 = [v5 table];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = [v5 startingColumn];
    v9 = *(a1 + 96);
    v10 = *(a1 + 104) + [v5 startingRow];
    v11 = v10 + [v5 rowSpan];
    if (v11 <= [*(a1 + 40) rowCount])
    {
      v12 = v9 + v8;
      v13 = [v5 columnSpan] + v12;
      if (v13 <= [*(a1 + 40) columnCount])
      {
        [v5 columnSpan];
        [v5 rowSpan];
        (*(*(a1 + 64) + 16))();
        v14 = *(*(a1 + 80) + 8);
        if (*(*(*(a1 + 72) + 8) + 24) == v10)
        {
          v15 = a3;
          if (*(v14 + 24) == v12)
          {
            v15 = *(*(*(a1 + 88) + 8) + 24);
          }
        }

        else
        {
          v15 = a3;
        }

        *(v14 + 24) = v12;
        *(*(*(a1 + 72) + 8) + 24) = v10;
        *(*(*(a1 + 88) + 8) + 24) = v15;
        v16 = [*(a1 + 48) attributedSubstringFromRange:?];
        v17 = [v16 ic_stringByTrimmingLeadingTrailingWhitespace];

        LOBYTE(v18) = *(a1 + 113);
        [*(a1 + 56) updateCellInTable:*(a1 + 40) atColumnIndex:v12 rowIndex:v10 fromAttributedString:v17 andTextTableBlock:v5 filterPastedAttributes:*(a1 + 112) isReadingSelectionFromPasteboard:v18];
      }
    }
  }
}

- (void)updateCellInTable:(id)a3 atColumnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5 fromAttributedString:(id)a6 andTextTableBlock:(id)a7 filterPastedAttributes:(BOOL)a8 isReadingSelectionFromPasteboard:(BOOL)a9
{
  v9 = a8;
  v17 = a3;
  v14 = a6;
  v15 = v14;
  if ([v14 containsAttachmentsInRange:{0, objc_msgSend(v14, "length")}])
  {
    v15 = [v14 ic_stringWithoutAttachments];
  }

  v16 = [v17 textStorageForCellAtColumnIndex:a4 rowIndex:a5];
  [v16 setStyler:self];
  [v16 setFilterPastedAttributes:v9];
  [v16 setIsReadingSelectionFromPasteboard:a9];
  [v16 setConvertAttributes:1];
  [v16 setIsReadingSelectionFromPasteboard:1];
  [v16 setWantsUndoCommands:0];
  [v16 beginEditing];
  [v16 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v16, "length"), v15}];
  [v16 endEditing];
  [v16 fixupAfterEditing];
}

- (unsigned)paragraphStyleForRange:(_NSRange)a3 inTextView:(id)a4 inTextStorage:(id)a5 ignoreTypingAttributes:(BOOL)a6
{
  length = a3.length;
  location = a3.location;
  v10 = a5;
  v11 = v10;
  if (length || !a4 || a6)
  {
    v15 = [v10 string];
    v16 = [v15 paragraphRangeForRange:{location, length}];

    if (v16 >= [v11 length])
    {
      v14 = 3;
      goto LABEL_11;
    }

    v13 = [v11 attribute:*MEMORY[0x1E69B7600] atIndex:v16 effectiveRange:0];
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    v14 = 3;
    goto LABEL_9;
  }

  v12 = [a4 typingAttributes];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = [v13 style];
LABEL_9:

LABEL_11:
  return v14;
}

- (int64_t)writingDirectionForRange:(_NSRange)a3 inTextView:(id)a4 inTextStorage:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = a5;
  if (location < [v9 length])
  {
    v10 = [v9 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = -1;
    goto LABEL_10;
  }

  v12 = [v8 typingAttributes];
  v10 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([v10 writingDirection] == -1)
  {
    v13 = [v9 string];
    v14 = v13;
    if (!length)
    {
      location = [v13 lineRangeForRange:{location, 0}];
      length = v15;
    }

    v16 = [v14 substringWithRange:{location, length}];
    v17 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v18 = [v16 stringByTrimmingCharactersInSet:v17];

    v11 = [v18 _isNaturallyRTL];
  }

  else
  {
    v11 = [v10 writingDirection];
  }

LABEL_10:

  return v11;
}

- (BOOL)attachmentsExistInRange:(_NSRange)a3 textStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = *MEMORY[0x1E69DB5F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ICTextController_attachmentsExistInRange_textStorage___block_invoke;
  v9[3] = &unk_1E846A0D0;
  v9[4] = &v10;
  [v6 enumerateAttribute:v7 inRange:location options:length usingBlock:{0x100000, v9}];
  LOBYTE(length) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return length;
}

void __56__ICTextController_attachmentsExistInRange_textStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (BOOL)canIndentTextView:(id)a3 byDelta:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 ic_selectedRanges];
  LOBYTE(a4) = [(ICTextController *)self canIndentTextView:v6 byDelta:a4 forRanges:v7];

  return a4;
}

- (BOOL)canIndentTextView:(id)a3 byDelta:(int64_t)a4 forRanges:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v36 = a5;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v8 = [v7 textStorage];
  if ([v8 length])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v36;
    v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v31)
    {
      goto LABEL_35;
    }

    v33 = *v44;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v9;
        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = [v8 string];
        v12 = [v10 rangeValue];
        v14 = [v11 ic_rangeIsValid:{v12, v13}];

        if (v14)
        {
          v15 = [v8 string];
          v16 = [v10 rangeValue];
          v18 = [v15 paragraphRangeForRange:{v16, v17}];
          v20 = v19;
        }

        else
        {
          v20 = 0;
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if ([(ICTextController *)self attachmentsExistInRange:v18 textStorage:v20, v8])
        {
          *(v48 + 24) = 0;
          goto LABEL_35;
        }

        v21 = v18;
        while (1)
        {
          v41 = v21;
          v42 = 1;
          if (v21 >= [v8 length])
          {
            v23 = [v7 typingAttributes];
            v22 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
          }

          else
          {
            v22 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:v21 longestEffectiveRange:&v41 inRange:{v18, v20}];
          }

          if (v22)
          {
            if ([v22 canIndent] && (a4 > 0 || a4 < 0 && objc_msgSend(v22, "indent")))
            {
              goto LABEL_24;
            }
          }

          else if (a4 >= 1)
          {
            goto LABEL_24;
          }

          if ([v22 style] == 4)
          {
            if (a4 < 1)
            {
              v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v27 = [v8 string];
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __56__ICTextController_canIndentTextView_byDelta_forRanges___block_invoke;
              v37[3] = &unk_1E846C160;
              v28 = v26;
              v38 = v28;
              v39 = v8;
              v40 = &v47;
              [v27 ic_enumerateParagraphsInRange:v41 usingBlock:{v42, v37}];

              goto LABEL_25;
            }

LABEL_24:
            *(v48 + 24) = 1;
          }

LABEL_25:
          v24 = v41;
          v25 = v42;

          v21 = v25 + v24;
          if (v21 >= v18 + v20 || v21 <= v18)
          {
            break;
          }

          if (v48[3])
          {
            goto LABEL_35;
          }
        }

        if (v48[3])
        {
          goto LABEL_35;
        }

        ++v9;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (!v31)
      {
LABEL_35:

        break;
      }
    }
  }

  v29 = *(v48 + 24);

  _Block_object_dispose(&v47, 8);
  return v29 & 1;
}

void __56__ICTextController_canIndentTextView_byDelta_forRanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) string];
  LODWORD(a2) = [v8 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", a2)}];

  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (a5)
    {
      *a5 = 1;
    }
  }
}

- (id)indentParagraphStyle:(id)a3 byAmount:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (![v5 canIndent])
    {
      goto LABEL_11;
    }

    v8 = [v6 mutableCopy];
    v9 = [v8 indent] + a4;
    if (v9 < 0)
    {
      v10 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
    }

    else
    {
      [v8 setIndent:v9];
      v10 = [v8 copy];
    }

    v7 = v10;
  }

  else
  {
    if (a4 < 1)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];
    [v8 setIndent:a4];
    v7 = [v8 copy];
  }

LABEL_11:

  return v7;
}

- (void)indentRange:(_NSRange)a3 byAmount:(int64_t)a4 inTextStorage:(id)a5 textView:(id)a6 forceUpdateAttributes:(BOOL)a7
{
  v42 = a7;
  length = a3.length;
  location = a3.location;
  v12 = a5;
  v44 = a6;
  [v12 beginEditing];
  v13 = [v12 string];
  v41 = location;
  v43 = length;
  v14 = [v13 paragraphRangeForRange:{location, length}];
  v16 = v15;

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__47;
  v65 = __Block_byref_object_dispose__47;
  v66 = [MEMORY[0x1E696AD50] indexSet];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__47;
  v59 = __Block_byref_object_dispose__47;
  v60 = [MEMORY[0x1E695DF70] array];
  v17 = *MEMORY[0x1E69B7600];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke;
  v50[3] = &unk_1E846C1B0;
  v50[4] = self;
  v18 = v12;
  v51 = v18;
  v52 = &v61;
  v53 = &v55;
  v54 = a4;
  [v18 ic_enumerateClampedAttribute:v17 inRange:v14 options:v16 usingBlock:{0, v50}];
  v19 = a4;
  v20 = self;
  v21 = v43;
  if ([v62[5] count] || objc_msgSend(v56[5], "count")) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v22 = [v18 mergeableString];
    v23 = [v44 ic_selectedRanges];
    v24 = [v22 selectionForCharacterRanges:v23 selectionAffinity:v19 > 0];
  }

  else
  {
    v24 = 0;
  }

  v25 = v62[5];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_3;
  v47[3] = &unk_1E846C1D8;
  v49 = v19;
  v26 = v18;
  v48 = v26;
  [v25 enumerateIndexesWithOptions:2 usingBlock:v47];
  v27 = v56[5];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_4;
  v45[3] = &unk_1E846C200;
  v28 = v26;
  v46 = v28;
  [v27 enumerateObjectsWithOptions:2 usingBlock:v45];
  [v28 endEditing];
  if (!v43 || v42)
  {
    v34 = [v44 typingAttributes];
    v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    v36 = [(ICTextController *)self indentParagraphStyle:v35 byAmount:v19];
    if (v36 != v35)
    {
      v37 = [v34 mutableCopy];
      [v37 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69B7600]];
      if (v41 >= [v28 length] && objc_msgSend(v28, "length"))
      {
        v21 = 0;
        v41 = [v28 length] - 1;
      }

      v38 = [(ICTextController *)v20 nsParagraphStyleForICTTParagraphStyle:v36 range:v41 attributedString:v21 textView:v28, v44];
      if (v38)
      {
        [v37 setObject:v38 forKeyedSubscript:*MEMORY[0x1E69DB688]];
      }

      else
      {
        [v37 removeObjectForKey:*MEMORY[0x1E69DB688]];
      }

      [v44 setTypingAttributes:v37];
    }

    if (v24)
    {
      goto LABEL_9;
    }

LABEL_19:
    v39 = [v44 selectedRange];
    [v44 setSelectedRange:{v39, v40}];
    goto LABEL_20;
  }

  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_9:
  v29 = [v28 mergeableString];
  v30 = [v29 characterRangesForSelection:v24];
  v31 = [v30 firstObject];
  v32 = [v31 rangeValue];
  [v44 setSelectedRange:{v32, v33}];

LABEL_20:
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
}

void __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if ([v7 style] == 4)
  {
    v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v9 = [v8 invertedSet];

    v10 = [*(a1 + 40) string];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_2;
    v15[3] = &unk_1E846C188;
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v20 = *(a1 + 64);
    v18 = v11;
    v16 = v12;
    v17 = v9;
    v19 = *(a1 + 56);
    v13 = v9;
    [v10 ic_enumerateContentLineRangesInRange:a3 usingBlock:{a4, v15}];
  }

  else if (([*(a1 + 32) attachmentsExistInRange:a3 textStorage:{a4, *(a1 + 40)}] & 1) == 0)
  {
    v14 = [*(a1 + 32) indentParagraphStyle:v7 byAmount:*(a1 + 64)];
    if (v14 != v7)
    {
      [*(a1 + 40) addAttribute:*MEMORY[0x1E69B7600] value:v14 range:{a3, a4}];
    }
  }
}

void __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 64) < 1)
  {
    v7 = [*(a1 + 32) string];
    v8 = [v7 rangeOfCharacterFromSet:*(a1 + 40) options:0 range:{a2, a3}];

    v9 = [@"    " length] * *(a1 + 64);
    if (v8 - a2 >= -v9)
    {
      v10 = -v9;
    }

    else
    {
      v10 = v8 - a2;
    }

    if (v10)
    {
      v11 = v10 + 1 >= a3;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*(*(a1 + 56) + 8) + 40);
      v13 = [MEMORY[0x1E696B098] valueWithRange:a2];
      [v12 addObject:v13];
    }
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);

    [v5 addIndex:a2];
  }
}

uint64_t __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (*(result + 40) >= 1)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result;
    v10 = 0;
    do
    {
      result = [*(v9 + 32) replaceCharactersInRange:a2 withString:{0, @"    ", v11, v12, v13, v14, v15, v16}];
      ++v10;
    }

    while (v10 < *(v9 + 40));
  }

  return result;
}

uint64_t __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 deleteCharactersInRange:{v4, v3}];
}

- (id)todoForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__47;
  v20 = __Block_byref_object_dispose__47;
  v21 = 0;
  if (location < [v6 length])
  {
    v24.length = [v6 length];
    v23.location = location;
    v23.length = length;
    v24.location = 0;
    v7 = NSIntersectionRange(v23, v24);
    v8 = [v6 string];
    v9 = [v8 paragraphRangeForRange:{v7.location, v7.length}];
    v11 = v10;

    v12 = *MEMORY[0x1E69B7600];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__ICTextController_todoForRange_inTextStorage___block_invoke;
    v15[3] = &unk_1E846A0D0;
    v15[4] = &v16;
    [v6 enumerateAttribute:v12 inRange:v9 options:v11 usingBlock:{0, v15}];
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __47__ICTextController_todoForRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  if (v12)
  {
    v8 = [v12 todo];

    if (v8)
    {
      v9 = [v12 todo];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *a5 = 1;
    }
  }
}

- (_NSRange)firstParagraphForSetListStyleRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [v6 string];
  v8 = [v7 paragraphRangeForRange:{location, length}];
  v10 = v9;

  v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v11 invertedSet];

  v13 = [v6 string];
  v14 = [v13 rangeOfCharacterFromSet:v12 options:0 range:{v8, v10}];
  v16 = v15;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v8 = v14;
    v17 = v16;
  }

  v18 = [v6 string];

  v19 = [v18 paragraphRangeForRange:{v8, v17}];
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (BOOL)canChangeStyleForSelectedRanges:(id)a3 inTextStorage:(id)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke;
  v10[3] = &unk_1E846C278;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 rangeValue];
  v8 = v7;
  if (v6 <= [*(a1 + 32) length])
  {
    v9 = [*(a1 + 32) string];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke_2;
    v12[3] = &unk_1E846C250;
    v14 = a4;
    v11 = *(a1 + 32);
    v10 = v11;
    v13 = v11;
    [v9 ic_enumerateContentLineRangesInRange:v6 usingBlock:{v8, v12}];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[6];
  if (!a3)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *v7 = 1;
    *a4 = 1;
  }

  v11[7] = v4;
  v11[8] = v5;
  v8 = *MEMORY[0x1E69DB5F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke_3;
  v11[3] = &unk_1E846C228;
  v9 = a1[4];
  v11[4] = a1[5];
  v11[5] = v7;
  v11[6] = a4;
  return [v9 enumerateAttribute:v8 inRange:a2 options:a3 usingBlock:{0x100000, v11}];
}

uint64_t __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  isKindOfClass = a2;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v8 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *v8 = 1;
    **(a1 + 48) = 1;
    *a5 = 1;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

- (int64_t)setTextStyle:(unsigned int)a3 range:(_NSRange)a4 inTextStorage:(id)a5 inTextView:(id)a6
{
  length = a4.length;
  location = a4.location;
  v9 = *&a3;
  v11 = a5;
  v12 = a6;
  [v11 beginEditing];
  v13 = [(ICTextController *)self setTextStyle:v9 removeExtraStyling:ICTTNamedStyleIsList() ^ 1 range:location inTextStorage:length inTextView:v11, v12];
  if ([v11 editedRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v11 string];
    v15 = [v14 paragraphRangeForRange:{location, length}];
    v17 = v16;

    [v11 removeAttribute:*MEMORY[0x1E69B75E8] range:{v15, v17}];
    [v11 removeAttribute:*MEMORY[0x1E69B7620] range:{v15, v17}];
    [v11 removeAttribute:*MEMORY[0x1E69B7608] range:{v15, v17}];
    [v11 removeAttribute:*MEMORY[0x1E69B7610] range:{v15, v17}];
    [v11 removeAttribute:*MEMORY[0x1E69B75D8] range:{v15, v17}];
    [v11 removeAttribute:*MEMORY[0x1E69DB670] range:{v15, v17}];
    v18 = *MEMORY[0x1E69B7600];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__ICTextController_setTextStyle_range_inTextStorage_inTextView___block_invoke;
    v26[3] = &unk_1E846C2A0;
    v27 = v11;
    [v27 enumerateAttribute:v18 inRange:location options:length usingBlock:{0x100000, v26}];
  }

  [v11 endEditing];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v19 = [v11 string];
    v20 = [v19 paragraphRangeForRange:{location, length}];

    if (v20)
    {
      v21 = v20 - 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v12 textLayoutManager];
    v23 = [v22 ic_textRangeForRange:{v21, 1}];

    v24 = [v12 textLayoutManager];
    [v24 invalidateLayoutForRange:v23];
  }

  return v13;
}

uint64_t __64__ICTextController_setTextStyle_range_inTextStorage_inTextView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v13 = v7;
    v7 = [v7 indent];
    if (v7)
    {
      v7 = [v13 isList];
      if ((v7 & 1) == 0)
      {
        v8 = [v13 mutableCopy];
        [v8 setIndent:0];
        v9 = *(a1 + 32);
        v10 = *MEMORY[0x1E69B7600];
        v11 = [v8 copy];
        [v9 addAttribute:v10 value:v11 range:{a3, a4}];
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v7);
}

- (BOOL)containsOnlyStyle:(unsigned int)a3 inRange:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [MEMORY[0x1E69B7AD0] range:location liesWithinRange:length assert:{0, objc_msgSend(v8, "length"), 1}];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__ICTextController_containsOnlyStyle_inRange_inTextStorage___block_invoke;
    v15[3] = &unk_1E846C2C8;
    v18 = a3;
    v16 = v8;
    v17 = &v19;
    [v16 enumerateAttributesInRange:v12 options:v13 usingBlock:{0, v15}];
    v11 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v11 & 1;
}

void __60__ICTextController_containsOnlyStyle_inRange_inTextStorage___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (a4)
  {
    v12 = a3 + a4;
    v13 = a3 + a4 - 1;
    while (a3 < v12)
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v14 = [*(a1 + 32) string];
      [v14 getParagraphStart:&v19 end:&v18 contentsEnd:&v17 forRange:{a3, 0}];

      v15 = v19;
      if (v19 <= a3)
      {
        v15 = a3;
      }

      v16 = v17;
      a3 = v18;
      if (v17 >= v13)
      {
        v16 = v13;
      }

      if (v15 < v16)
      {
        if (!v11 && [v10 style] != *(a1 + 48))
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a5 = 1;
        }

        break;
      }
    }
  }
}

- (void)setTextAlignment:(int64_t)a3 range:(_NSRange)a4 inTextStorage:(id)a5 inTextView:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a5;
  v11 = a6;
  [v10 beginEditing];
  v12 = [v10 string];
  v13 = [v12 paragraphRangeForRange:{location, length}];
  v15 = v14;

  v16 = *MEMORY[0x1E69B7600];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __68__ICTextController_setTextAlignment_range_inTextStorage_inTextView___block_invoke;
  v27 = &unk_1E846C2F0;
  v29 = a3;
  v17 = v10;
  v28 = v17;
  [v17 enumerateAttribute:v16 inRange:v13 options:v15 usingBlock:{0x100000, &v24}];
  [v17 endEditing];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v18 = [v17 string];
    v19 = [v18 paragraphRangeForRange:{location, length}];

    if (v19)
    {
      v20 = v19 - 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v11 textLayoutManager];
    v22 = [v21 ic_textRangeForRange:{v20, 1}];

    v23 = [v11 textLayoutManager];
    [v23 invalidateLayoutForRange:v22];
  }
}

void __68__ICTextController_setTextAlignment_range_inTextStorage_inTextView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v9 = [v8 mutableCopy];

    v7 = v9;
  }

  v10 = v7;
  [v7 setAlignment:*(a1 + 40)];
  [*(a1 + 32) addAttribute:*MEMORY[0x1E69B7600] value:v10 range:{a3, a4}];
}

- (void)removeFontsAndColorsForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x1E69B75E0];
  v8 = *MEMORY[0x1E69B75E0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICTextController_removeFontsAndColorsForRange_inTextStorage___block_invoke;
  v12[3] = &unk_1E846A0D0;
  v12[4] = &v13;
  [v6 enumerateAttribute:v8 inRange:location options:length usingBlock:{0x100000, v12}];
  v9 = MEMORY[0x1E69B75F0];
  if (v14[3] & 1) != 0 || (v10 = *MEMORY[0x1E69B75F0], v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __63__ICTextController_removeFontsAndColorsForRange_inTextStorage___block_invoke_2, v11[3] = &unk_1E846A0D0, v11[4] = &v13, [v6 enumerateAttribute:v10 inRange:location options:length usingBlock:{0x100000, v11}], (v14[3]))
  {
    [v6 removeAttribute:*v7 range:{location, length}];
    [v6 removeAttribute:*v9 range:{location, length}];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __63__ICTextController_removeFontsAndColorsForRange_inTextStorage___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __63__ICTextController_removeFontsAndColorsForRange_inTextStorage___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:(_NSRange)a3 textStorage:(id)a4 textView:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a5;
  v9 = [(ICTextController *)self keyboardLanguageForTextView:v8];
  v13 = v9;
  if (v9 && (v10 = [v9 isEqualToString:@"dictation"], v11 = v13, (v10 & 1) == 0))
  {
    v12 = MEMORY[0x1E69DB7D0];
  }

  else
  {
    v12 = MEMORY[0x1E69DB7D0];
    v11 = 0;
  }

  -[ICTextController setParagraphWritingDirectionInRange:toDirection:inTextView:](self, "setParagraphWritingDirectionInRange:toDirection:inTextView:", location, length, [v12 defaultWritingDirectionForLanguage:v11], v8);
}

- (int64_t)setTextStyle:(unsigned int)a3 removeExtraStyling:(BOOL)a4 range:(_NSRange)a5 inTextStorage:(id)a6 inTextView:(id)a7
{
  length = a5.length;
  location = a5.location;
  v10 = a4;
  v11 = *&a3;
  v13 = a6;
  v14 = a7;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__47;
  v54 = __Block_byref_object_dispose__47;
  v55 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:v11];
  v15 = [v13 string];
  v16 = [v15 paragraphRangeForRange:{location, length}];
  v18 = v17;

  v35 = v14;
  if ([v51[5] wantsFollowingNewLine] && v16 == objc_msgSend(v13, "length"))
  {
    [v13 breakUndoCoalescing];
    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v13 replaceCharactersInRange:v16 withAttributedString:{v18, v19}];

    v18 = 1;
    [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v16, 1];
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v51[5] isList];
  v34 = v20;
  v22 = [v51[5] style] == 102;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 1;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  if (v21)
  {
    v23 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v24 = [v23 invertedSet];

    v25 = [v13 string];
    v26 = [v25 rangeOfCharacterFromSet:v24 options:0 range:{v16, v18}];

    v27 = v26 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
    v24 = 0;
  }

  [v13 beginEditing];
  v28 = [v13 string];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __83__ICTextController_setTextStyle_removeExtraStyling_range_inTextStorage_inTextView___block_invoke;
  v36[3] = &unk_1E846C318;
  v43 = v21;
  v44 = v27;
  v29 = v13;
  v37 = v29;
  v30 = v24;
  v42 = v11;
  v45 = v10;
  v46 = v22;
  v38 = v30;
  v39 = v47;
  v40 = v49;
  v41 = &v50;
  [v28 ic_enumerateParagraphsInRange:v16 usingBlock:{v18, v36}];

  if (v10)
  {
    [v33 removeFontsAndColorsForRange:v16 inTextStorage:{v18, v29}];
  }

  [v29 endEditing];
  [v29 breakUndoCoalescing];
  v31 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v31 removeAutocorrectPrompt];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);

  return v34;
}

void __83__ICTextController_setTextStyle_removeExtraStyling_range_inTextStorage_inTextView___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a3 - a2;
  v9 = MEMORY[0x1E69B7600];
  if (*(a1 + 76) == 1 && (*(a1 + 77) & 1) == 0)
  {
    v11 = [*(a1 + 32) string];
    v12 = [v11 rangeOfCharacterFromSet:*(a1 + 40) options:0 range:{a2, v8}];

    v13 = [*(a1 + 32) attribute:*v9 atIndex:a2 effectiveRange:0];
    v14 = v13;
    v10 = v12 == 0x7FFFFFFFFFFFFFFFLL && (!v13 || ([v13 isList] & 1) == 0);
  }

  else
  {
    v10 = 0;
  }

  v31 = [*(a1 + 32) attribute:*v9 atIndex:a2 effectiveRange:0];
  v15 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB5F8] atIndex:a2 effectiveRange:0];
  v16 = v15;
  if (*(a1 + 72) != 4 || v15 == 0)
  {
    v18 = 0;
  }

  else
  {
    objc_opt_class();
    v18 = objc_opt_isKindOfClass() ^ 1;
  }

  if ((v10 | v18))
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) != 0;
    goto LABEL_38;
  }

  if (!v31)
  {
    if (*(a1 + 79) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) >= 2uLL)
    {
      v21 = [*(*(*(a1 + 64) + 8) + 40) mutableCopy];
      [v21 setStartingItemNumber:*(*(*(a1 + 56) + 8) + 24)];
      v22 = [v21 copy];
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    if (([*(*(*(a1 + 64) + 8) + 40) isEqual:0] & 1) == 0)
    {
      v25 = *(a1 + 32);
      v26 = *v9;
      v27 = [*(*(*(a1 + 64) + 8) + 40) copy];
      [v25 addAttribute:v26 value:v27 range:{a2, v8}];
    }

    goto LABEL_37;
  }

  v19 = [v31 mutableCopy];
  [v19 setStyle:*(a1 + 72)];
  if (*(a1 + 78) == 1)
  {
    [v19 setAlignment:*MEMORY[0x1E69B7638]];
  }

  if (*(a1 + 79) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) >= 2uLL)
  {
    if ([v19 indent])
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(*(a1 + 56) + 8) + 24);
    }

    [v19 setStartingItemNumber:v20];
  }

  if (([v19 isEqual:v31] & 1) == 0)
  {
    v28 = *(a1 + 32);
    v29 = *v9;
    v30 = [v19 copy];
    [v28 addAttribute:v29 value:v30 range:{a2, v8}];
  }

  if (![v31 indent])
  {
LABEL_37:
    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_38:
  if (*(a1 + 77) == 1)
  {
    *a5 = 1;
  }
}

- (void)setTypingAttributesForUndo:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"View"];
  v6 = [v4 objectForKeyedSubscript:@"Attrs"];

  v7 = [(ICTextController *)self note];
  v8 = [v7 textStorage];
  v9 = [v8 undoManager];

  v13[0] = @"Attrs";
  v10 = [v5 typingAttributes];
  v13[1] = @"View";
  v14[0] = v10;
  v14[1] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v9 registerUndoWithTarget:self selector:sel_setTypingAttributesForUndo_ object:v11];

  v12 = __ICLocalizedFrameworkString_impl(@"Style Change", @"Style Change", 0, 1);
  [v9 setActionName:v12];

  [v5 setTypingAttributes:v6];
}

- (void)setTypingTextStyle:(unsigned int)a3 textView:(id)a4
{
  v4 = *&a3;
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 typingAttributes];
  v8 = [v7 mutableCopy];

  v9 = MEMORY[0x1E69B7600];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  IsList = ICTTNamedStyleIsList();
  v12 = [(ICTextController *)self note];
  v13 = [v12 textStorage];
  v14 = [v13 wantsUndoCommands];

  if (v14)
  {
    v15 = [(ICTextController *)self note];
    v16 = [v15 textStorage];
    v17 = [v16 undoManager];

    v37[0] = @"Attrs";
    v18 = [v6 typingAttributes];
    v37[1] = @"View";
    v38[0] = v18;
    v38[1] = v6;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v17 registerUndoWithTarget:self selector:sel_setTypingAttributesForUndo_ object:v19];

    v9 = MEMORY[0x1E69B7600];
    v20 = __ICLocalizedFrameworkString_impl(@"Style Change", @"Style Change", 0, 1);
    [v17 setActionName:v20];
  }

  if (v10)
  {
    v21 = [v10 mutableCopy];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E69B78B8]);
  }

  v22 = v21;
  [v21 setStyle:v4];
  v23 = [v22 copy];
  [v8 setObject:v23 forKeyedSubscript:*v9];

  v24 = -[ICTTTextController preferredAttributesForICTTTextStyle:](self, "preferredAttributesForICTTTextStyle:", [v22 style]);
  [v8 addEntriesFromDictionary:v24];

  if (IsList)
  {
    v25 = [v6 typingAttributes];
    v26 = MEMORY[0x1E69B75E0];
    v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69B75E0]];
    [v8 setObject:v27 forKeyedSubscript:*v26];

    v28 = [v6 typingAttributes];
    v29 = *MEMORY[0x1E69DB648];
    v30 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    [v8 setObject:v30 forKeyedSubscript:v29];

    v31 = [v6 typingAttributes];
    v32 = MEMORY[0x1E69B75F0];
    v33 = [v31 objectForKeyedSubscript:*MEMORY[0x1E69B75F0]];
    [v8 setObject:v33 forKeyedSubscript:*v32];

    v34 = [v6 typingAttributes];
    v35 = *MEMORY[0x1E69DB650];
    v36 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    [v8 setObject:v36 forKeyedSubscript:v35];
  }

  [v6 setTypingAttributes:v8];
}

- (BOOL)setDone:(BOOL)a3 range:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = a5;
  v43.length = [v8 length];
  v42.location = location;
  v42.length = length;
  v43.location = 0;
  v9 = NSIntersectionRange(v42, v43);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v10 = [v8 string];
  [v10 getParagraphStart:&v41 end:&v40 contentsEnd:&v39 forRange:{v9.location, v9.length}];

  v11 = v7;
  v12 = v41;
  if (v41 != v39)
  {
    LODWORD(v7) = 0;
  }

  if ((v7 & 1) == 0)
  {
    HIDWORD(v35) = v7;
    v13 = v40;
    objc_opt_class();
    v14 = ICDynamicCast();
    [v14 setHasUserEditSinceFixupAfterEditing:1];

    [v8 beginEditing];
    if (v13 > v12)
    {
      v15 = MEMORY[0x1E69B7600];
      v16 = v12;
      LODWORD(v35) = v11;
      do
      {
        v37 = 0;
        v38 = 0;
        v17 = [v8 attribute:*v15 atIndex:v16 longestEffectiveRange:&v37 inRange:{v12, v13 - v12, v35}];
        v18 = v17;
        if (v17)
        {
          if ([v17 style] == 103)
          {
            v19 = [v18 todo];
            if (v19)
            {
              v20 = v19;
              v21 = [v18 todo];
              v22 = v15;
              v23 = [v21 done];

              v24 = v23 == v11;
              v15 = v22;
              if (!v24)
              {
                v25 = [v18 mutableCopy];
                v26 = [v25 todo];
                v27 = [v26 todoWithDone:v11];
                [v25 setTodo:v27];

                v28 = [(ICTextController *)self note];
                LOBYTE(v27) = objc_opt_respondsToSelector();

                if (v27)
                {
                  v29 = [(ICTextController *)self note];
                  v30 = [(ICTextController *)self note];
                  v31 = [v25 todo];
                  v32 = [v29 persistToggleChecklistItemActivityEventForObject:v30 todo:v31];

                  v11 = v35;
                }

                objc_opt_class();
                v33 = ICCheckedDynamicCast();
                [v33 beginSkippingTimestampUpdates];
                v15 = v22;
                [v33 addAttribute:*v22 value:v25 range:{v37, v38}];
                [v33 endSkippingTimestampUpdates];
                if (v33)
                {
                  [(ICTextController *)self refreshTypingAttributesForAllTextViewsOfTextStorage:v33];
                }
              }
            }
          }
        }

        v16 = v38 + v37;
      }

      while (v16 < v13);
    }

    [v8 endEditing];
    LOBYTE(v7) = BYTE4(v35);
  }

  return v7 ^ 1;
}

- (void)refreshTypingAttributesForAllTextViewsOfTextStorage:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 textViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICTextController *)self refreshTypingAttributesForTextView:*(*(&v10 + 1) + 8 * v9++) textStorage:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)refreshTypingAttributesForTextView:(id)a3 textStorage:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 selectedRange];
    v10 = v9;
    v12 = [v7 typingAttributes];
    v11 = [(ICTTTextController *)self typingAttributesForRange:v8 forSelectionChange:v10 currentTypingAttributes:1 inTextStorage:v12, v6];

    [v7 setTypingAttributes:v11];
  }
}

- (BOOL)isTodoDoneRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [v6 string];
  v8 = [v7 paragraphRangeForRange:{location, length}];
  v10 = v9;

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = *MEMORY[0x1E69B7600];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__ICTextController_isTodoDoneRange_inTextStorage___block_invoke;
  v13[3] = &unk_1E846A0D0;
  v13[4] = &v14;
  [v6 enumerateAttribute:v11 inRange:v8 options:v10 usingBlock:{0, v13}];
  LOBYTE(v8) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __50__ICTextController_isTodoDoneRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  if (v11)
  {
    v7 = [v11 todo];
    if (v7)
    {
      v8 = v7;
      v9 = [v11 todo];
      v10 = [v9 done];

      if ((v10 & 1) == 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a5 = 1;
      }
    }
  }
}

- (void)scaleFontPointSize:(double)a3 range:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  [v9 beginEditing];
  v10 = *MEMORY[0x1E69DB648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__ICTextController_scaleFontPointSize_range_inTextStorage___block_invoke;
  v12[3] = &unk_1E846C340;
  v14 = a3;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v11 enumerateAttribute:v10 inRange:location options:length usingBlock:{0, v12}];
  [v11 endEditing];
}

void __59__ICTextController_scaleFontPointSize_range_inTextStorage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [*(a1 + 32) scaleFont:a2 withScale:*(a1 + 48)];
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{a3, a4}];
  }
}

- (id)scaleFont:(id)a3 withScale:(double)a4
{
  v5 = a3;
  [v5 pointSize];
  v7 = [v5 fontWithSize:v6 * a4];

  return v7;
}

- (void)superscriptUpdate:(id)a3 range:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  [v10 beginEditing];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3010000000;
  v22[3] = &unk_1D449C2A9;
  v22[4] = location;
  v22[5] = length;
  v11 = *MEMORY[0x1E69B7610];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __58__ICTextController_superscriptUpdate_range_inTextStorage___block_invoke;
  v17 = &unk_1E846C368;
  v12 = v9;
  v20 = v12;
  v13 = v10;
  v21 = v22;
  v18 = v13;
  v19 = self;
  [v13 enumerateAttribute:v11 inRange:location options:length usingBlock:{0, &v14}];
  [v13 endEditing];

  _Block_object_dispose(v22, 8);
}

void __58__ICTextController_superscriptUpdate_range_inTextStorage___block_invoke(void *a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a1[6];
  v8 = a2;
  v9 = (*(v7 + 16))(v7, [v8 integerValue]);
  v10 = a1[4];
  v11 = *MEMORY[0x1E69B7610];
  if (v9)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v21.location = a3;
    v21.length = a4;
    v13 = NSIntersectionRange(*(*(a1[7] + 8) + 32), v21);
    [v10 addAttribute:v11 value:v12 range:{v13.location, v13.length}];

    v14 = [v8 integerValue];
    if (!v14)
    {
      v15 = a1[5];
      +[(ICTTTextController *)ICTextController];
      v17 = a1[4];
LABEL_6:
      [v15 scaleFontPointSize:a3 range:a4 inTextStorage:{v17, v16}];
    }
  }

  else
  {
    v22.location = a3;
    v22.length = a4;
    v18 = NSIntersectionRange(*(*(a1[7] + 8) + 32), v22);
    [v10 removeAttribute:v11 range:{v18.location, v18.length}];
    v19 = [v8 integerValue];

    if (v19)
    {
      v15 = a1[5];
      +[(ICTTTextController *)ICTextController];
      v17 = a1[4];
      v16 = 1.0 / v20;
      goto LABEL_6;
    }
  }

  *(*(a1[7] + 8) + 32) = a3 + a4;
}

- (void)superscriptDelta:(int64_t)a3 range:(_NSRange)a4 inTextStorage:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__ICTextController_superscriptDelta_range_inTextStorage___block_invoke;
  v5[3] = &__block_descriptor_40_e8_q16__0q8l;
  v5[4] = a3;
  [(ICTextController *)self superscriptUpdate:v5 range:a4.location inTextStorage:a4.length, a5];
}

- (id)nsParagraphStyleForICTTParagraphStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6
{
  length = a4.length;
  location = a4.location;
  v48[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (([v11 isList] & 1) != 0 || location >= objc_msgSend(v12, "length") || (objc_msgSend(v12, "attribute:atIndex:effectiveRange:", *MEMORY[0x1E69DB5F8], location, 0), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = -[ICTTTextController preferredAttributesForICTTTextStyle:](self, "preferredAttributesForICTTTextStyle:", [v11 style]);
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    v16 = [v17 mutableCopy];
  }

  else
  {
    v15 = [v12 attribute:*MEMORY[0x1E69DB688] atIndex:location effectiveRange:0];
    v16 = [v15 mutableCopy];
  }

  [v16 setAlignment:{objc_msgSend(v11, "alignment")}];
  [v16 setBaseWritingDirection:{objc_msgSend(v11, "writingDirection")}];
  if ([v11 isList])
  {
    if (!ICInternalSettingsIsTextKit2Enabled() || [(ICTTTextController *)self isInPreviewMode]|| [(ICTextController *)self isForPrint])
    {
      if ([v11 style] == 103)
      {
        v18 = [(ICTTTextController *)self zoomController];
        [v18 checklistZoomFactor];
        v20 = 5.0 * v19;

        [v16 setParagraphSpacingBefore:v20];
        [v16 setParagraphSpacing:v20];
      }
    }

    else if ([v11 style] == 103)
    {
      v25 = objc_alloc(MEMORY[0x1E69DB838]);
      v26 = [v25 initWithMarkerFormat:*MEMORY[0x1E69DB708] options:0];
      v27 = [ICTK2TodoTextAttachment alloc];
      v28 = [v11 todo];
      v29 = [(ICTK2TodoTextAttachment *)v27 initWithTodo:v28];
      [v26 setMarkerTextAttachment:v29];

      v48[0] = v26;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      [v16 setTextLists:v30];

      v31 = [(ICTTTextController *)self zoomController];
      [v31 checklistZoomFactor];
      v33 = 3.5 * v32;

      [v16 setParagraphSpacingBefore:v33];
      [v16 setParagraphSpacing:v33];
    }

    else if ([v11 style] == 100)
    {
      v34 = objc_alloc(MEMORY[0x1E69DB838]);
      v35 = [v34 initWithMarkerFormat:*MEMORY[0x1E69DB708] options:0];
      v36 = [v12 attribute:*MEMORY[0x1E69DB648] atIndex:location effectiveRange:0];
      v37 = [(ICTTTextController *)self zoomController];
      [v37 zoomFactor];
      v38 = [ICTTTextStorage bulletTextAttributesWithTextFont:v36 paragraphStyle:v11 zoomFactor:?];

      v39 = [v11 listBulletInAttributedString:v12 atIndex:location];
      v40 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v39 attributes:v38];
      v41 = [[ICTK2BulletTextAttachment alloc] initWithMarker:v40];
      [v35 setMarkerTextAttachment:v41];

      v47 = v35;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v16 setTextLists:v42];
    }

    else
    {
      v43 = [v11 listBulletInAttributedString:v12 atIndex:location];
      v44 = [objc_alloc(MEMORY[0x1E69DB838]) initWithMarkerFormat:v43 options:0];
      v46 = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [v16 setTextLists:v45];
    }
  }

  else if ([(ICTextController *)self shouldUpdateIndentFor:v11])
  {
    [objc_opt_class() indentForStyle:v11 range:location attributedString:length textView:{v12, v13}];
    v22 = v21;
    [v16 setHeadIndent:?];
    [v16 setFirstLineHeadIndent:v22];
  }

  v23 = [v16 copy];

  return v23;
}

- (id)tabStopsForAttributedString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v38[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (length && ([v7 string], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "ic_rangeIsValid:", location, length), v9, v10))
  {
    v11 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    if ([v8 length])
    {
      v12 = [(ICTTTextController *)self zoomController];
      [v12 checklistZoomFactor];
      v14 = v13;

      if (v14 < 1.0)
      {
        v14 = 1.0;
      }

      v15 = v14 * 22.0 + v14 * ([v11 indent] * 36.0);
      v16 = v14 * 13.0 + v15;
      if ([v11 style] == 102)
      {
        v17 = [v8 attribute:*MEMORY[0x1E69DB648] atIndex:location effectiveRange:0];
        v18 = [(ICTTTextController *)self zoomController];
        [v18 zoomFactor];
        v19 = [ICTTTextStorage bulletTextAttributesWithTextFont:v17 paragraphStyle:v11 zoomFactor:?];

        v20 = [v11 listBulletInAttributedString:v8 atIndex:location];
        v21 = [v8 attribute:*MEMORY[0x1E69B7918] atIndex:location effectiveRange:0];
        [objc_opt_class() extraBulletWidthForNumberedListWithMaxItemNumber:v21 textFont:v17];
        v16 = v16 + v22;
        v15 = v15 + v22;
        if ([v20 length] >= 2)
        {
          v37 = [v20 substringWithRange:{objc_msgSend(v20, "length") - 2, 1}];
          [v37 boundingRectWithSize:0 options:v19 attributes:0 context:{1.79769313e308, 1.79769313e308}];
          v24 = v23;
          v25 = [v20 substringFromIndex:{objc_msgSend(v20, "length") - 2}];
          [v25 boundingRectWithSize:0 options:v19 attributes:0 context:{1.79769313e308, 1.79769313e308}];
          v15 = v15 + v26 - v24;
          if (v15 >= v16)
          {
            v16 = v16 + v26 - v24;
          }
        }
      }

      v27 = [(ICTextController *)self writingDirectionForRange:location inTextStorage:length, v8];
      v28 = v27 != 1;
      v29 = v27 == 1;
      v30 = objc_alloc(MEMORY[0x1E69DB858]);
      v31 = 2 * v28;
      v32 = MEMORY[0x1E695E0F8];
      v33 = [v30 initWithTextAlignment:v31 location:MEMORY[0x1E695E0F8] options:v15];
      v34 = [objc_alloc(MEMORY[0x1E69DB858]) initWithTextAlignment:2 * v29 location:v32 options:v16];
      v38[0] = v33;
      v38[1] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v35 = MEMORY[0x1E695E0F0];
  }

  return v35;
}

- (void)fixTextStorage:(id)a3 afterProcessingEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  [v11 beginEditing];
  [v11 setDisableUndoCoalesceBreaking:1];
  v18 = 0;
  v12 = [(ICTextController *)self cleanupTextStorage:v11 afterProcessingEditing:a4 range:location changeInLength:length changeInLengthAfterCleanup:a6, &v18];
  v14 = v13;
  if ([(ICTextController *)self disableAddingExtraLinesIfNeeded])
  {
    v15 = v18;
  }

  else
  {
    v17 = 0;
    v12 = [(ICTextController *)self addExtraLinesIfNeededToTextStorage:v11 editedRange:v12 actualLengthIncrease:v14, &v17];
    v14 = v16;
    v15 = v18 + v17;
    v18 += v17;
  }

  [(ICTextController *)self updateTrackingInTextStorage:v11 range:v12 changeInLength:v14, v15];
  [v11 setDisableUndoCoalesceBreaking:0];
  [v11 endEditing];
}

- (void)ensureUniqueParagraphStyleUUIDsInTextStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__47;
  v74[4] = __Block_byref_object_dispose__47;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__47;
  v72[4] = __Block_byref_object_dispose__47;
  v73 = 0;
  v10 = [v6 string];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke;
  v65[3] = &unk_1E846C3F8;
  v50 = v6;
  v66 = v50;
  v54 = v8;
  v67 = v54;
  v53 = v9;
  v68 = v53;
  v70 = v72;
  v71 = v74;
  v48 = v7;
  v69 = v48;
  [v10 ic_enumerateParagraphsInRange:location usingBlock:{length, v65}];

  if ([v54 count])
  {
    v11 = [v54 allKeys];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_89];

    v51 = [MEMORY[0x1E695DF90] dictionary];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v12;
    v13 = 0;
    v14 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v62;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v61 + 1) + 8 * i);
          v20 = [v19 rangeValue];
          v22 = v21;
          v23 = [v54 objectForKeyedSubscript:v19];
          v24 = v23;
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v20 == v17 + v15 && [v23 isEqual:v13])
            {
              v79.location = v17;
              v79.length = v15;
              v80.location = v20;
              v80.length = v22;
              v25 = NSUnionRange(v79, v80);
              v17 = v25.location;
              v15 = v25.length;
              goto LABEL_13;
            }

            v26 = [MEMORY[0x1E696B098] valueWithRange:{v17, v15}];
            [v51 setObject:v13 forKeyedSubscript:v26];
          }

          v27 = v24;

          v13 = v27;
          v15 = v22;
          v17 = v20;
LABEL_13:
        }

        v14 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (!v14)
        {

          if (v17 != 0x7FFFFFFFFFFFFFFFLL && v13)
          {
            v28 = [MEMORY[0x1E696B098] valueWithRange:{v17, v15}];
            [v51 setObject:v13 forKeyedSubscript:v28];
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }
    }

    v28 = obj;
LABEL_19:

LABEL_20:
    objc_opt_class();
    v29 = ICDynamicCast();
    [v29 beginSkippingTimestampUpdates];
    [v50 beginEditing];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke_4;
    v59[3] = &unk_1E846C420;
    v30 = v50;
    v60 = v30;
    [v51 enumerateKeysAndObjectsUsingBlock:v59];
    [v30 endEditing];
    [v29 endSkippingTimestampUpdates];
  }

  v31 = [(ICTextController *)self note];
  v32 = [v31 textContentStorage];
  v33 = [v32 outlineController];
  v34 = [v33 collapsedUUIDs];
  v35 = [v34 mutableCopy];

  v36 = MEMORY[0x1E695DFA8];
  v37 = [v53 allKeys];
  v38 = [v36 setWithArray:v37];

  [v38 intersectSet:v35];
  if ([v38 count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v55 objects:v76 count:16];
    if (v40)
    {
      v41 = *v56;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v55 + 1) + 8 * j);
          [v35 removeObject:v43];
          v44 = [v53 objectForKeyedSubscript:v43];
          [v35 addObject:v44];
        }

        v40 = [v39 countByEnumeratingWithState:&v55 objects:v76 count:16];
      }

      while (v40);
    }

    v45 = [(ICTextController *)self note];
    v46 = [v45 textContentStorage];
    v47 = [v46 outlineController];
    [v47 setCollapsedUUIDs:v35];
  }

  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v74, 8);
}

void __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = 0;
  v41 = 0;
  v6 = MEMORY[0x1E69B7600];
  v7 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7600] atIndex:a2 effectiveRange:&v40];
  v8 = a3 - a2;
  v9 = [v7 uuid];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
  }

  v12 = v11;

  if (v41 + v40 < a3)
  {
    v13 = *(a1 + 32);
    v14 = *v6;
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke_2;
    v35 = &unk_1E846C3D0;
    v39 = a2;
    v36 = v12;
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    [v13 enumerateAttribute:v14 inRange:a2 options:v8 usingBlock:{0, &v32}];
  }

  if (([v7 isHeader] & 1) != 0 || (objc_msgSend(v7, "isList") & 1) != 0 || !*(*(*(a1 + 64) + 8) + 40) || !objc_msgSend(v7, "isHierarchicallyEqualToParagraphStyle:", *(*(*(a1 + 72) + 8) + 40)))
  {
    if ([*(a1 + 56) containsObject:v12])
    {
      v17 = [v7 mutableCopy];
      v21 = [MEMORY[0x1E696AFB0] UUID];
      [v17 setUuid:v21];

      v22 = [v17 copy];
      v23 = *(a1 + 40);
      v24 = [MEMORY[0x1E696B098] valueWithRange:{a2, v8}];
      [v23 setObject:v22 forKeyedSubscript:v24];

      v25 = [v17 uuid];
      v26 = *(*(a1 + 64) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    else
    {
      v28 = [v7 uuid];
      v29 = *(*(a1 + 64) + 8);
      v17 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    goto LABEL_15;
  }

  v15 = *(*(*(a1 + 64) + 8) + 40);
  v16 = [v7 uuid];
  LOBYTE(v15) = [v15 isEqual:v16];

  if ((v15 & 1) == 0)
  {
    v17 = [v7 mutableCopy];
    [v17 setUuid:*(*(*(a1 + 64) + 8) + 40)];
    v18 = [v17 copy];
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x1E696B098] valueWithRange:{a2, v8}];
    [v19 setObject:v18 forKeyedSubscript:v20];

LABEL_15:
  }

  [*(a1 + 56) addObject:v12];
  v30 = *(*(a1 + 72) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v7;
}

void __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v17 = v7;
  if (a3 != a1[7] || ([v7 uuid], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 = v17, !v8))
  {
    v9 = [v7 mutableCopy];
    [v9 setUuid:a1[4]];
    v10 = [v9 copy];
    v11 = a1[5];
    v12 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v11 setObject:v10 forKeyedSubscript:v12];

    v13 = [v17 uuid];

    if (v13)
    {
      v14 = a1[4];
      v15 = a1[6];
      v16 = [v17 uuid];
      [v15 setObject:v14 forKeyedSubscript:v16];
    }

    v7 = v17;
  }
}

uint64_t __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 >= [v5 rangeValue])
  {
    v8 = [v4 rangeValue];
    v7 = v8 > [v5 rangeValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69B7600];
  v8 = a3;
  v6 = [a2 rangeValue];
  [v4 addAttribute:v5 value:v8 range:{v6, v7}];
}

- (void)updateTrackingInTextStorage:(id)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  [(ICTextController *)self updateAttachmentsInNote];
  [(ICTextController *)self updateTrackedAttributesInTextStorage:v11 range:location changeInLength:length, a5];
  if ([v11 hasUserEditSinceFixupAfterEditing])
  {
    v9 = [v11 ic_range];
    [(ICTextController *)self ensureUniqueParagraphStyleUUIDsInTextStorage:v11 range:v9, v10];
  }
}

- (void)updateAttachmentsInNote
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 note];
  v4 = [v3 loggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "This note's textStorage is nil and it contains attachments/inlineAttachments: %@", &v5, 0xCu);
}

void __43__ICTextController_updateAttachmentsInNote__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 conformsToProtocol:&unk_1F4FC5D80])
    {
      v5 = ICProtocolCast();
      v6 = [v5 attachmentIdentifier];

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = [v5 attachmentIdentifier];
        LODWORD(v7) = [v7 containsObject:v8];

        if (v7)
        {
          [MEMORY[0x1E69B7AC0] postBasicEvent:6];
          v9 = MEMORY[0x1E69B7A38];
          v10 = [v5 attachmentIdentifier];
          v11 = [v5 attachmentUTI];
          [v9 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTextController updateAttachmentsInNote]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Same attachment is referenced twice in note body {attachmentIdentifier: %@, attachmentUTI: %@}", v10, v11}];
        }

        else
        {
          v14 = *(a1 + 32);
          v10 = [v5 attachmentIdentifier];
          [v14 addObject:v10];
        }
      }

      else
      {
        v13 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __43__ICTextController_updateAttachmentsInNote__block_invoke_cold_2(v4, v13);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __43__ICTextController_updateAttachmentsInNote__block_invoke_cold_1(v4, v12);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)updateAttachmentsSelectionStateInTextStorage:(id)a3 forSelectedRanges:(id)a4 layoutManager:(id)a5 textView:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x1E69DB5F8];
  v11 = a3;
  v12 = [v11 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__ICTextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_layoutManager_textView___block_invoke;
  v15[3] = &unk_1E8469E68;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v11 enumerateAttribute:v10 inRange:0 options:v12 usingBlock:{0, v15}];
}

void __106__ICTextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_layoutManager_textView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__ICTextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_layoutManager_textView___block_invoke_2;
  aBlock[3] = &unk_1E846C448;
  v12 = *(a1 + 32);
  v13 = a3;
  v14 = a4;
  v8 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v9 = [*(a1 + 40) viewForTextAttachmentNoCreate:v7];
    v10 = ICDynamicCast();

    [v10 setSelected:v8[2](v8)];
  }
}

uint64_t __106__ICTextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_layoutManager_textView___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v16.location = [*(*(&v10 + 1) + 8 * v6) rangeValue];
        v16.length = v7;
        if (NSIntersectionRange(*(a1 + 40), v16).length)
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (_NSRange)cleanupTextStorage:(id)a3 afterProcessingEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 changeInLengthAfterCleanup:(int64_t *)a7
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v44 = 0;
  v45 = 0;
  if ([v11 length])
  {
    v41 = a7;
    v42 = location;
    v12 = 0;
    v13 = 0;
    v14 = MEMORY[0x1E69B7600];
    do
    {
      v15 = v12;
      v12 = [v11 attribute:*v14 atIndex:v13 longestEffectiveRange:&v44 inRange:{0, objc_msgSend(v11, "length")}];

      if ([v12 needsParagraphCleanup])
      {
        v16 = [v11 string];
        v17 = [v16 paragraphRangeForRange:{v44, v45}];
        v19 = v18;

        if (v17 == v44 && v19 == v45)
        {
          v20 = [v12 mutableCopy];
          [v20 setNeedsParagraphCleanup:0];
          [v11 addAttribute:*v14 value:v20 range:{v44, v45}];
        }

        else
        {
          v20 = v11;
          v21 = [v20 convertAttributes];
          [v20 setConvertAttributes:0];
          [v20 removeAttribute:*v14 range:{v44, v45}];
          [(ICTTTextController *)self styleText:v20 inExactRange:v44 fixModelAttributes:v45, 1];
          if (v21)
          {
            [v20 setConvertAttributes:1];
          }
        }
      }

      if ([v12 isList] && objc_msgSend(v12, "needsListCleanup"))
      {
        v22 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\t\\S+?\t" options:0 error:0];
        v23 = v44;
        for (i = v45 + v44; v23 < i; i = v33 + v44)
        {
          v25 = [v11 string];
          v26 = [v25 paragraphRangeForRange:{v23, 0}];
          v28 = v27;

          v29 = [v11 string];
          v30 = [v22 rangeOfFirstMatchInString:v29 options:4 range:{v26, v28}];
          v32 = v31;

          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = v26 + v28;
            v33 = v45;
          }

          else
          {
            [v11 deleteCharactersInRange:{v30, v32}];
            if (v45 >= v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = v45;
            }

            v33 = v45 - v34;
            v45 -= v34;
            length -= v34;
            v35 = (a6 - v34) & ~((a6 - v34) >> 63);
            if (a6 > 0)
            {
              a6 = v35;
            }

            v23 = v26 + v28 - v32;
          }
        }

        v36 = [v12 mutableCopy];
        [v36 setNeedsListCleanup:0];
        v14 = MEMORY[0x1E69B7600];
        v37 = *MEMORY[0x1E69B7600];
        v38 = [v36 copy];
        [v11 addAttribute:v37 value:v38 range:{v44, v45}];
      }

      v13 = v45 + v44;
    }

    while (v13 < [v11 length]);

    a7 = v41;
    location = v42;
  }

  *a7 = a6;

  v39 = location;
  v40 = length;
  result.length = v40;
  result.location = v39;
  return result;
}

- (void)insertNewlineAtCharacterIndex:(unint64_t)a3 textStorage:(id)a4
{
  v6 = a4;
  [v6 breakUndoCoalescing];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v6 replaceCharactersInRange:a3 withAttributedString:{0, v7}];

  [(ICTextController *)self trackExtraNewLineRangeIfNecessary:a3, 1];
}

- (void)toggleBlockQuoteInTextView:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v5 string];
  v7 = [v4 selectedRange];
  v9 = [v6 paragraphRangeForRange:{v7, v8}];
  v11 = v10;

  objc_opt_class();
  v12 = [v4 textStorage];
  v13 = ICDynamicCast();

  v14 = [(ICTextController *)self note];
  v15 = [v14 isEmpty];

  v16 = [v4 textStorage];
  v17 = [v16 length];

  if (v9 == v17)
  {
    v18 = MEMORY[0x1E69B7600];
    v19 = [v13 attribute:*MEMORY[0x1E69B7600] atIndex:v9 effectiveRange:0];
    if (!v19)
    {
      v19 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{+[ICTextStyle noteDefaultNamedStyle](ICTextStyle, "noteDefaultNamedStyle")}];
    }

    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    v42 = *v18;
    v43[0] = v19;
    v21 = 1;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v23 = [v20 initWithString:@"\n" attributes:v22];

    [v13 breakUndoCoalescing];
    [v13 replaceCharactersInRange:v9 withAttributedString:{v11, v23}];
    [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v9, 1];
    [(ICTextController *)self updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v9 textStorage:1 textView:v13, v4];
    [v4 setSelectedRange:{v9, 0}];
    if (v15)
    {
      [(ICTextController *)self setTextStyle:+[ICTextStyle removeExtraStyling:"noteDefaultNamedStyle"]range:0 inTextStorage:v9, 1, v13];
    }

    v11 = 1;
  }

  else
  {
    v21 = v11;
  }

  v24 = [v4 textStorage];
  [v24 beginEditing];

  v25 = [v4 textLayoutManager];
  v26 = [v25 ic_textRangeForRange:{v9, v21}];

  LOBYTE(v25) = [(ICTextController *)self selectionContainsBlockQuoteAndOthers:v4];
  v27 = [v4 textLayoutManager];
  v28 = [v27 textContentManager];
  v29 = [v26 location];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __47__ICTextController_toggleBlockQuoteInTextView___block_invoke;
  v37[3] = &unk_1E846C470;
  v38 = v4;
  v39 = v9;
  v40 = v11;
  v41 = v25;
  v30 = v4;
  v31 = [v28 enumerateTextElementsFromLocation:v29 options:0 usingBlock:v37];

  v32 = [v30 textStorage];
  [v32 endEditing];

  v33 = [v30 textStorage];
  v34 = [v33 attributesAtIndex:v9 effectiveRange:0];
  v35 = [v34 mutableCopy];
  [v30 setTypingAttributes:v35];

  v36 = [(ICTextController *)self note];
  [v36 updateModificationDateAndChangeCountAndSaveAfterDelay];
}

uint64_t __47__ICTextController_toggleBlockQuoteInTextView___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 textLayoutManager];
  v6 = [v4 elementRange];

  v7 = [v5 ic_rangeForTextRange:v6];
  v9 = v8;

  v10 = [*(a1 + 32) textStorage];
  v11 = MEMORY[0x1E69B7600];
  v12 = [v10 attribute:*MEMORY[0x1E69B7600] atIndex:v7 effectiveRange:0];

  v13 = [*(a1 + 32) textStorage];
  v14 = [v13 attribute:*MEMORY[0x1E69DB5F8] atIndex:v7 effectiveRange:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && *(a1 + 48) + *(a1 + 40) > v7 && v12)
    {
      if (*(a1 + 56) != 1)
      {
        v15 = [v12 mutableCopy];
        [v15 setBlockQuoteLevel:{objc_msgSend(v12, "isBlockQuote") ^ 1}];
        v18 = [*(a1 + 32) textStorage];
        v19 = *v11;
        v20 = [v15 copy];
        [v18 addAttribute:v19 value:v20 range:{v7, v9}];

        v17 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
LABEL_10:
          __47__ICTextController_toggleBlockQuoteInTextView___block_invoke_cold_1(v12, v15);
        }

LABEL_11:

        goto LABEL_12;
      }

      if (([v12 isBlockQuote] & 1) == 0)
      {
        v15 = [v12 mutableCopy];
        [v15 setBlockQuoteLevel:1];
        v16 = [*(a1 + 32) textStorage];
        [v16 addAttribute:*v11 value:v15 range:{v7, v9}];

        v17 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:

  return 1;
}

- (BOOL)selectionContainsBlockQuoteAndOthers:(id)a3
{
  v3 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v4 = [v3 textStorage];
  v5 = [v4 string];
  v6 = [v3 selectedRange];
  v8 = [v5 ic_rangeIsValid:{v6, v7}];

  if (v8)
  {
    v9 = [v3 textStorage];
    v10 = [v9 string];
    v11 = [v3 selectedRange];
    v13 = [v10 paragraphRangeForRange:{v11, v12}];
    v15 = v14;

    v16 = [v3 textStorage];
    v17 = *MEMORY[0x1E69B7600];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__ICTextController_selectionContainsBlockQuoteAndOthers___block_invoke;
    v20[3] = &unk_1E846C498;
    v21 = v3;
    v22 = v27;
    v23 = v25;
    v24 = &v29;
    [v16 enumerateAttribute:v17 inRange:v13 options:v15 usingBlock:{0, v20}];
  }

  v18 = *(v30 + 24);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

void __57__ICTextController_selectionContainsBlockQuoteAndOthers___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  objc_opt_class();
  v14 = ICDynamicCast();

  v9 = [*(a1 + 32) textStorage];
  v10 = [v9 attribute:*MEMORY[0x1E69DB5F8] atIndex:a3 effectiveRange:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() ^ 1;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  if ([v14 isBlockQuote])
  {
    v12 = 40;
  }

  else
  {
    if (!((v10 == 0) | v11 & 1))
    {
      goto LABEL_10;
    }

    v12 = 48;
  }

  *(*(*(a1 + v12) + 8) + 24) = 1;
LABEL_10:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v13 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v13 & 1;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

LABEL_15:
}

- (BOOL)insertNewlineForSpecialCasesInTextView:(id)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 selectedRange];
  if (v5)
  {
    goto LABEL_19;
  }

  v6 = [v4 textStorage];
  v7 = [v4 selectedRange];
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v8 = [v6 string];
  v9 = [v4 selectedRange];
  [v8 getParagraphStart:&v53 end:&v52 contentsEnd:&v51 forRange:{v9, v10}];

  v11 = v53;
  if (v11 >= [v6 length])
  {
    v13 = 0;
    goto LABEL_9;
  }

  v12 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v53 effectiveRange:0];
  v13 = v12;
  if (!v12 || ![v12 isList])
  {
LABEL_9:
    v14 = v7 - 1;
    v15 = [v6 attributedString];
    v16 = [v15 length];

    if (v14 < v16)
    {
      v17 = [v6 attributedString];
      v18 = [v17 attribute:*MEMORY[0x1E69B7600] atIndex:v14 effectiveRange:0];

      v19 = [v6 attributedString];
      v20 = [v19 string];
      v21 = [v20 substringWithRange:{v14, 1}];

      if ([v18 blockQuoteLevel] && objc_msgSend(v21, "isEqualToString:", @"\n"))
      {
        [(ICTextController *)self toggleBlockQuoteInTextView:v4];
        v22 = [(ICTTTextController *)self bodyAttributes];
        [v4 setTypingAttributes:v22];
      }

      if (ICInternalSettingsIsCollapsibleSectionsEnabled())
      {
        objc_opt_class();
        v23 = [v4 textLayoutManager];
        v24 = [v23 textContentManager];
        v25 = ICDynamicCast();
        v26 = [v25 outlineController];

        v27 = [v18 uuid];
        LODWORD(v24) = [v26 isUUIDCollapsed:v27];

        if (v24)
        {
          v28 = [v6 attributesAtIndex:v53 effectiveRange:0];
          v29 = MEMORY[0x1E69B7600];
          v50 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

          v54 = *v29;
          v30 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{objc_msgSend(v50, "style")}];
          v55[0] = v30;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
          v31 = v49 = v21;

          v32 = [v18 uuid];
          v33 = [v26 descendantRangeForUUID:v32];
          v35 = v34;

          v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v31];
          [v6 replaceCharactersInRange:v33 + v35 withAttributedString:{0, v36}];

          [v4 setSelectedRange:{v33 + v35, 0}];
          goto LABEL_24;
        }
      }
    }

    goto LABEL_18;
  }

  if (v53 != v51)
  {
    [v6 breakUndoCoalescing];
LABEL_18:

LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  if ([v13 indent])
  {
    [(ICTextController *)self indentRange:v53 byAmount:0 inTextStorage:-1 textView:v6, v4];
  }

  else
  {
    [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:v53 inTextStorage:0, v6];
    v39 = __ICLocalizedFrameworkString_impl(@"body", @"body", 0, 1);
    v40 = __ICLocalizedFrameworkString_impl(@"exited list", @"exited list", 0, 1);
    v47 = __ICAccessibilityStringForVariables(1, v39, v41, v42, v43, v44, v45, v46, v40);

    ICAccessibilityPostHighPriorityAnnouncementNotification(0, v47);
  }

  v48 = [v6 attributesAtIndex:v53 effectiveRange:0];
  [v4 setTypingAttributes:v48];

  [v6 breakUndoCoalescing];
LABEL_24:

  if ([v4 conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 textControllerDidHandleSpecialCaseEditing:self];
  }

  v37 = 1;
LABEL_20:

  return v37;
}

- (BOOL)insertedSpaceInTextView:(id)a3 replacementRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (length || !+[ICTextStyle autoListInsertionEnabled]|| [(ICTextController *)self isAutoListInsertionDisabled])
  {
    v8 = 0;
  }

  else
  {
    v10 = [v7 textStorage];
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v11 = [v10 string];
    v12 = [v7 selectedRange];
    [v11 getParagraphStart:&v34 end:&v33 contentsEnd:&v32 forRange:{v12, v13}];

    v14 = [v10 attribute:*MEMORY[0x1E69B7600] atIndex:v34 effectiveRange:0];
    v15 = v14;
    if (v14 && ([v14 isList] & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(?:(\\* |•)|(-)|(^(?!^0)\\d+\\. |^(?!^0)\\d+\\))" options:? error:?], 0, 0);
      v17 = [v10 string];
      v18 = [v16 firstMatchInString:v17 options:4 range:{v34, v32 - v34}];

      if (v18 && (v19 = [v18 range], v19 + v20 > location))
      {
        v21 = [v10 undoManager];
        v22 = [v21 prepareWithInvocationTarget:self];
        [v22 setSelectionToIndex:objc_msgSend(v7 onTextView:{"selectedRange"), v7}];

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __61__ICTextController_insertedSpaceInTextView_replacementRange___block_invoke;
        v24[3] = &unk_1E846C4C0;
        v25 = v18;
        v29 = v34;
        v30 = v32;
        v23 = v10;
        v31 = v33;
        v26 = v23;
        v27 = self;
        v28 = v7;
        [v23 saveSelectionDuringBlock:v24];

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

void __61__ICTextController_insertedSpaceInTextView_replacementRange___block_invoke(uint64_t a1)
{
  v33.location = [*(a1 + 32) range];
  v34.location = *(a1 + 64);
  v34.length = *(a1 + 72) - v34.location;
  v2 = NSIntersectionRange(v33, v34);
  v3 = MEMORY[0x1E69DB5E8];
  if (v2.length == *(a1 + 72) - *(a1 + 64))
  {
    v4 = [*(a1 + 40) attributesAtIndex:? effectiveRange:?];
    v5 = *(a1 + 80);
    if (*(a1 + 72) == v5)
    {
      _UIAccessibilityBlockPostingOfNotification();
      dispatchMainAfterDelay();
      v6 = *(a1 + 40);
      v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v4];
      [v6 appendAttributedString:v7];

      [*(a1 + 48) trackExtraNewLineRangeIfNecessary:{objc_msgSend(*(a1 + 40), "length") - 1, 1}];
    }

    else
    {
      [*(a1 + 40) setAttributes:v4 range:{*(a1 + 64), v5 - *(a1 + 64)}];
    }
  }

  v8 = [*(a1 + 40) string];
  v9 = [*(a1 + 32) range];
  v11 = [v8 substringWithRange:{v9, v10}];

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) range];
  [v12 deleteCharactersInRange:{v13, v14}];
  v15 = &unk_1D443442C;
  v16 = 1;
  do
  {
    if (v16 == 4)
    {
      v19 = 0;
      v18 = 101;
      goto LABEL_13;
    }

    v17 = [*(a1 + 32) rangeAtIndex:v16++];
    ++v15;
  }

  while (v17 == 0x7FFFFFFFFFFFFFFFLL);
  v18 = *v15;
  if (v16 == 4)
  {
    v19 = [v11 integerValue];
  }

  else
  {
    v19 = 0;
  }

LABEL_13:
  [*(a1 + 48) setTextStyle:v18 removeExtraStyling:0 range:*(a1 + 64) inTextStorage:{0, *(a1 + 40)}];
  if (v19)
  {
    v20 = [*(a1 + 40) string];
    v21 = [v20 paragraphRangeForRange:{*(a1 + 64), 0}];
    v23 = v22;

    v24 = MEMORY[0x1E69B7600];
    v25 = [*(a1 + 40) attribute:*MEMORY[0x1E69B7600] atIndex:*(a1 + 64) effectiveRange:0];
    v26 = [v25 mutableCopy];
    [v26 setStartingItemNumber:v19];
    [*(a1 + 40) addAttribute:*v24 value:v26 range:{v21, v23}];
  }

  if (*(a1 + 56))
  {
    v27 = [*(a1 + 40) attributesAtIndex:*(a1 + 64) effectiveRange:0];
    [*(a1 + 56) setTypingAttributes:v27];
  }

  v28 = __ICLocalizedFrameworkString_impl(@"Created list", @"Created list", 0, 1);
  UIAccessibilityPostNotification(*v3, *(a1 + 56));
  v29 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ICTextController_insertedSpaceInTextView_replacementRange___block_invoke_3;
  block[3] = &unk_1E8468BA0;
  v32 = v28;
  v30 = v28;
  dispatch_after(v29, MEMORY[0x1E69E96A0], block);
}

- (void)setSelectionToIndex:(unint64_t)a3 onTextView:(id)a4
{
  v8 = a4;
  v5 = [v8 textStorage];
  v6 = [v5 length];

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  [v8 setSelectedRange:{v7, 0}];
}

- (void)insertedText:(id)a3 replacementRange:(_NSRange)a4 inTextView:(id)a5 hashtagController:(id)a6 mentionsController:(id)a7 languageHasSpaces:(BOOL)a8 parentAttachment:(id)a9
{
  length = a4.length;
  location = a4.location;
  v15 = a3;
  v16 = a5;
  v53 = a6;
  v52 = a7;
  v51 = a9;
  v17 = [v16 textStorage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v15;
  }

  else
  {
    v18 = [v15 string];
  }

  v19 = v18;
  v20 = [v18 length];
  v57.length = [v17 length];
  v56.location = location;
  v56.length = v20;
  v57.location = 0;
  v21 = NSIntersectionRange(v56, v57);
  if (![v19 isEqualToString:@"\n"] || length)
  {
    if ([v19 isEqualToString:@" "] && !length)
    {
      [(ICTextController *)self insertedSpaceInTextView:v16 replacementRange:location, 0];
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v22 = [v17 string];
    [v22 getParagraphStart:&v55 end:0 contentsEnd:&v54 forRange:{v21.location + 1, 0}];

    if (v54 == v55)
    {
      v23 = [v17 string];
      v24 = [v23 paragraphRangeForRange:{v21.location + 1, 0}];
      v26 = v25;

      if (v26)
      {
        v27 = [v17 attribute:*MEMORY[0x1E69B7600] atIndex:v24 effectiveRange:0];
        v28 = v27;
        if (v27)
        {
          if ([v27 preferSingleLine])
          {
            [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:v24 inTextStorage:v26, v17];
            if (v16)
            {
              v29 = [v17 attributesAtIndex:v24 effectiveRange:0];
              [v16 setTypingAttributes:v29];
            }
          }
        }
      }
    }
  }

  v30 = [(ICTextController *)self attachmentInsertionController];
  if (v30)
  {
    v31 = v30;
    v32 = [(ICTextController *)self note];

    if (v32)
    {
      v33 = [v17 string];
      v34 = [v33 length];

      if (v21.location + v21.length > v34)
      {
        goto LABEL_30;
      }

      v35 = [(ICTextController *)self mentionsController];
      v36 = [(ICTextController *)self note];
      BYTE1(v49) = a8;
      LOBYTE(v49) = 0;
      v37 = [v35 checkForMentionInEditedRange:v21.location ofTextStorage:v21.length note:v17 textView:v36 allowAutoExplicitMention:v16 isEndingEditing:1 languageHasSpaces:v49 parentAttachment:0];

      v38 = 0;
      if (v37)
      {
        goto LABEL_30;
      }

LABEL_29:
      v45 = [(ICTextController *)self hashtagController];
      v46 = [(ICTextController *)self note];
      BYTE1(v50) = a8;
      LOBYTE(v50) = 0;
      [v45 checkForHashtagInEditedRange:v21.location ofTextStorage:v21.length note:v17 textView:v46 allowAutoExplicitHashtag:v16 isEndingEditing:1 languageHasSpaces:v50 parentAttachment:v38];

      goto LABEL_30;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = [(ICTextController *)self note];

    if (v39)
    {
      if (v53)
      {
        [(ICTextController *)self setHashtagController:?];
      }

      if (v52)
      {
        [(ICTextController *)self setMentionsController:?];
      }

      v40 = [v17 string];
      v41 = [v40 length];

      if (v21.location + v21.length <= v41)
      {
        v42 = [(ICTextController *)self mentionsController];
        v43 = [(ICTextController *)self note];
        v38 = v51;
        BYTE1(v49) = a8;
        LOBYTE(v49) = 0;
        v44 = [v42 checkForMentionInEditedRange:v21.location ofTextStorage:v21.length note:v17 textView:v43 allowAutoExplicitMention:v16 isEndingEditing:1 languageHasSpaces:v49 parentAttachment:v51];

        if ((v44 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_30:
  if ([v19 containsString:@"\n"])
  {
    v47 = [(ICTextController *)self mentionsController];
    v48 = [(ICTextController *)self note];
    [v47 newlineEnteredInNote:v48];
  }

  self->_userChangedWritingDirection = 0;
}

- (void)setParagraphWritingDirectionInRange:(_NSRange)a3 toDirection:(int64_t)a4 inTextView:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a5;
  v9 = [v8 textStorage];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__47;
  v35 = __Block_byref_object_dispose__47;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__47;
  v10 = MEMORY[0x1E69B7600];
  v29 = __Block_byref_object_dispose__47;
  v30 = 0;
  v11 = *MEMORY[0x1E69B7600];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __79__ICTextController_setParagraphWritingDirectionInRange_toDirection_inTextView___block_invoke;
  v20 = &unk_1E846C4E8;
  v22 = &v31;
  v24 = a4;
  v12 = v9;
  v21 = v12;
  v23 = &v25;
  [v12 ic_enumerateClampedAttribute:v11 inRange:location options:length usingBlock:{0, &v17}];
  if (v32[5] || v26[5])
  {
    v13 = [v8 typingAttributes];
    v14 = [v13 mutableCopy];

    v15 = v32[5];
    if (v15)
    {
      [v14 setObject:v15 forKeyedSubscript:*v10];
    }

    v16 = v26[5];
    if (v16)
    {
      [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69DB688]];
    }

    [v8 setTypingAttributes:v14];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __79__ICTextController_setParagraphWritingDirectionInRange_toDirection_inTextView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v22 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(*(*(a1 + 40) + 8) + 40) setWritingDirection:*(a1 + 56)];
  if (![*(*(*(a1 + 40) + 8) + 40) alignment] || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "alignment") == 2)
  {
    [*(*(*(a1 + 40) + 8) + 40) setAlignment:4];
  }

  v11 = *MEMORY[0x1E69B7600];
  v12 = *(a1 + 32);
  v13 = [*(*(*(a1 + 40) + 8) + 40) copy];
  [v12 addAttribute:v11 value:v13 range:{a3, a4}];

  v14 = *MEMORY[0x1E69DB688];
  v15 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB688] atIndex:a3 effectiveRange:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 mutableCopy];
  }

  else
  {
    v17 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
  }

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  [*(*(*(a1 + 48) + 8) + 40) setBaseWritingDirection:*(a1 + 56)];
  if (![*(*(*(a1 + 48) + 8) + 40) alignment] || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "alignment") == 2)
  {
    [*(*(*(a1 + 48) + 8) + 40) setAlignment:4];
  }

  v20 = *(a1 + 32);
  v21 = [*(*(*(a1 + 48) + 8) + 40) copy];
  [v20 addAttribute:v14 value:v21 range:{a3, a4}];
}

- (BOOL)deleteBackwardForSpecialCasesInTextView:(id)a3
{
  v72[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 textStorage];
  v6 = ICCheckedDynamicCast();

  [v4 selectedRange];
  if (v7)
  {
    v8 = [v4 selectedRange];
    if ([(ICTextController *)self removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:v4 textStorage:v6 rangeToBeDeleted:v8 blockBeforeEndEditing:v9, &__block_literal_global_206_0])
    {
      [v4 setSelectedRange:{v8, 0}];
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v11 = [v6 string];
  v12 = [v4 selectedRange];
  v14 = [v11 paragraphRangeForRange:{v12, v13}];
  v16 = v15;

  v17 = [v4 selectedRange];
  v18 = v17;
  if (v17 == v14)
  {
    if (!v14)
    {
      if ([(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:v4 textStorage:v6 paragraphRange:0 andLocation:v16, 0])
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_28;
    }

    if (v17 != 1 || [(ICTextController *)self attachmentsExistInRange:0 textStorage:1, v6])
    {
      v19 = [v6 attribute:*MEMORY[0x1E69DB5F8] atIndex:v18 - 1 effectiveRange:0];
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setSelectedRange:{v18 - 1, 1}];

          goto LABEL_4;
        }
      }

      goto LABEL_28;
    }
  }

  v20 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v18 - 1 effectiveRange:0];
  v21 = [(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:v4 textStorage:v6 paragraphRange:v14 andLocation:v16, v18];
  if (!v21 && v20 && [v20 isList])
  {
    v69 = 0;
    v70 = 0;
    v22 = [v6 string];
    [v22 getParagraphStart:&v70 end:0 contentsEnd:&v69 forRange:{v18 - 1, 0}];

    if (v70 != v69)
    {
      if (v18 >= [v6 length])
      {
        [v4 setSelectedRange:{v18 - 1, 0}];

LABEL_4:
        if ([v4 conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v4 textControllerDidHandleSpecialCaseEditing:self];
        }

        v10 = 1;
        goto LABEL_40;
      }

      [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:v14 inTextStorage:v16, v6];
    }
  }

  else
  {

    if (v21)
    {
      goto LABEL_4;
    }
  }

LABEL_28:
  v23 = [v6 string];
  v24 = [v4 selectedRange];
  v26 = [v23 paragraphRangeForRange:{v24, v25}];
  v28 = v27;

  v29 = [v4 selectedRange];
  v30 = [v6 string];
  v31 = [v30 paragraphRangeForRange:{v29, 0}];
  v33 = v32;

  if (v29 == v26 || v29 == v26 + 1)
  {
    v34 = [v4 selectedRange];
    v36 = v31 + v33;
    if (v34 + v35 >= v36 - 1)
    {
      v37 = [v4 selectedRange];
      if (v37 + v38 <= v36)
      {
        v39 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v29 effectiveRange:0];
        objc_opt_class();
        v40 = [v4 textLayoutManager];
        v41 = [v40 textContentManager];
        v42 = ICDynamicCast();

        v43 = [v39 uuid];
        if (v43)
        {
          v44 = v43;
          v45 = [v42 outlineController];
          [v39 uuid];
          v46 = v28;
          v47 = v39;
          v49 = v48 = v42;
          v67 = [v45 isUUIDCollapsed:v49];

          v42 = v48;
          v39 = v47;
          v50 = v46;

          if (v67)
          {
            v65 = objc_alloc(MEMORY[0x1E696AAB0]);
            v51 = __ICLocalizedFrameworkString_impl(@"Heading", @"Heading", 0, 1);
            v71[0] = *MEMORY[0x1E69DB600];
            [MEMORY[0x1E69DC888] clearColor];
            v52 = v68 = v42;
            v72[0] = v52;
            v71[1] = *MEMORY[0x1E69DB650];
            v53 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
            v72[1] = v53;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
            v66 = [v65 initWithString:v51 attributes:v54];

            v55 = [v6 attributedSubstringFromRange:{v26, v50}];
            v56 = [v55 string];

            v57 = [v56 characterAtIndex:{objc_msgSend(v56, "length") - 1}];
            v58 = [MEMORY[0x1E696AB08] newlineCharacterSet];
            LODWORD(v57) = [v58 characterIsMember:v57];

            v59 = [v4 ic_textRangeFromCharacterRange:{v26, v50 - v57}];
            [v4 replaceRange:v59 withText:&stru_1F4F94F00];

            [v4 setAttributedMarkedText:v66 selectedRange:{0, 0}];
            [v6 setIsMarkingTextForHeadingRename:1];

            goto LABEL_4;
          }
        }
      }
    }
  }

  v60 = [v4 selectedRange];
  v62 = v61;
  [v4 selectedRange];
  if (!v63 && [v4 selectedRange])
  {
    v60 = [v4 selectedRange] - 1;
    v62 = 1;
  }

  [(ICTextController *)self notifyInlineAttachmentsDeletedInRange:v60 ofTextStorage:v62, v6];
  v10 = 0;
LABEL_40:

  return v10;
}

void __60__ICTextController_deleteBackwardForSpecialCasesInTextView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v4 = [a2 selectedRange];
  [v6 deleteCharactersInRange:{v4, v5}];
}

void __72__ICTextController_notifyInlineAttachmentsDeletedInRange_ofTextStorage___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v3 attachment];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69B74A0];
    v7 = [v4 note];
    v9 = *MEMORY[0x1E69B74A8];
    v10[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 postNotificationName:v6 object:v7 userInfo:v8];
  }
}

- (_NSRange)extendedSelectionRangeForCollapsedSectionHeadingWithRange:(_NSRange)a3 textView:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  objc_opt_class();
  v7 = [v6 textLayoutManager];

  v8 = [v7 textContentManager];
  v9 = ICDynamicCast();

  v10 = [v9 textStorage];
  v11 = [v10 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];

  v12 = [v9 outlineController];
  v13 = [v11 uuid];
  if (v13)
  {
    if ([v12 isUUIDCollapsed:v13])
    {
      v14 = [v12 rangeForUUID:v13];
      if (location == v14)
      {
        v16 = v15;
        if (length == v15 || length == v15 - 1)
        {
          v18 = v14;
          v25.location = [v12 descendantRangeForUUID:v13];
          v25.length = v19;
          v23.location = v18;
          v23.length = v16;
          v20 = NSUnionRange(v23, v25);
          location = v20.location;
          length = v20.length;
        }
      }
    }
  }

  v21 = location;
  v22 = length;
  result.length = v22;
  result.location = v21;
  return result;
}

- (BOOL)removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:(id)a3 textStorage:(id)a4 rangeToBeDeleted:(_NSRange)a5 blockBeforeEndEditing:(id)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = location + length;
  if ([v11 length] <= location + length)
  {
    v18 = 0;
  }

  else
  {
    v14 = [v11 attribute:*MEMORY[0x1E69B7600] atIndex:location + length effectiveRange:0];
    v15 = *MEMORY[0x1E69DB688];
    v16 = [v11 attribute:*MEMORY[0x1E69DB688] atIndex:location + length effectiveRange:0];
    if ([v14 isList])
    {
      v27 = 0;
      v28 = 0;
      v17 = [v11 string];
      [v17 getParagraphStart:0 end:&v27 contentsEnd:&v28 forRange:{location, length}];

      v18 = v28 == v13;
      if (v28 == v13)
      {
        v24 = v15;
        v26 = v16;
        [v11 beginEditing];
        v19 = [v14 mutableCopy];
        [v19 setStyle:3];
        v20 = [v11 attributesAtIndex:location + length effectiveRange:0];
        v25 = [v20 mutableCopy];

        v21 = [v19 copy];
        [v25 setObject:v21 forKey:*MEMORY[0x1E69B7600]];

        if (ICInternalSettingsIsTextKit2Enabled())
        {
          v22 = [v26 mutableCopy];
          [v22 setTextLists:MEMORY[0x1E695E0F0]];
          [v25 setObject:v22 forKey:v24];
        }

        [v11 setAttributes:v25 range:{location + length, v27 - v28}];
        if (v12)
        {
          v12[2](v12, v10, v11, location, length);
        }

        [v11 endEditing];

        v16 = v26;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)deleteWordBackwardForSpecialCasesInTextView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 textStorage];
  v6 = ICCheckedDynamicCast();

  v7 = [v6 string];
  v8 = [v4 selectedRange];
  v10 = [v7 paragraphRangeForRange:{v8 + v9, 0}];
  v12 = v11;

  v13 = [v4 selectedRange];
  v15 = v13 + v14;
  if (v13 + v14 == v10 || v13 + v14 >= v10 && [v4 selectedRange] <= v10 || !(objc_msgSend(v4, "selectedRange") | v10))
  {
    v16 = [(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:v4 textStorage:v6 paragraphRange:v10 andLocation:v12, v15];
    v17 = [v4 textStorage];
    [v17 beginEditing];

    v18 = [v4 textStorage];
    v19 = v18;
    if (v16)
    {
      v20 = [v4 selectedRange];
      [v19 deleteCharactersInRange:{v20, v21}];

      v22 = [v4 textStorage];
      [v22 endEditing];

      [v4 setSelectedRange:{objc_msgSend(v4, "selectedRange"), 0}];
      if ([v4 conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v4 textControllerDidHandleSpecialCaseEditing:self];
      }

      v23 = 1;
      goto LABEL_15;
    }

    [v18 endEditing];
  }

  v24 = [v4 selectedRange];
  v26 = v25;
  [v4 selectedRange];
  if (!v27 && [v4 selectedRange])
  {
    v24 = [v4 selectedRange] - 1;
    v26 = 1;
  }

  [(ICTextController *)self notifyInlineAttachmentsDeletedInRange:v24 ofTextStorage:v26, v6];
  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:(id)a3 textStorage:(id)a4 paragraphRange:(_NSRange)a5 andLocation:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a4;
  v13 = [v12 length];
  v14 = MEMORY[0x1E69B7600];
  if (v13 <= a6)
  {
    v16 = [v11 typingAttributes];
    v15 = [v16 objectForKeyedSubscript:*v14];
  }

  else
  {
    v15 = [v12 attribute:*MEMORY[0x1E69B7600] atIndex:a6 effectiveRange:0];
  }

  if ([v11 selectedRange])
  {
    v17 = [v12 attribute:*v14 atIndex:objc_msgSend(v11 effectiveRange:{"selectedRange") - 1, 0}];
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 0;
    if (!v15)
    {
LABEL_11:
      v19 = 0;
      goto LABEL_16;
    }
  }

  if (![v15 isList])
  {
    goto LABEL_11;
  }

  if (v17)
  {
    v18 = [v17 style];
    if (v18 == [v15 style])
    {
      goto LABEL_11;
    }
  }

  [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:location inTextStorage:length, v12];
  v20 = [v11 selectedRange];
  if (v20 >= [v12 length])
  {
    [v11 setTypingAttributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v21 = [v12 attributesAtIndex:objc_msgSend(v11 effectiveRange:{"selectedRange"), 0}];
    [v11 setTypingAttributes:v21];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (void)refreshTextStylingForTextStorage:(id)a3 withTextController:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 beginSkippingTimestampUpdates];
  [v5 updateTrackedAttributesInTextStorage:v6 range:0 changeInLength:{objc_msgSend(v6, "length"), 0}];
  [v5 ensureUniqueParagraphStyleUUIDsInTextStorage:v6 range:{0, objc_msgSend(v6, "length")}];
  [v5 styleText:v6 inRange:0 fixModelAttributes:{objc_msgSend(v6, "length"), 0}];

  [v6 endSkippingTimestampUpdates];
}

- (id)strippedTypingAttributesAtStartOfParagraph:(id)a3 atTheEndOfDocument:(BOOL)a4 isTyping:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(ICTextController *)self note];
  v10 = [v9 isPerformingMerge];

  v11 = v8;
  if ((v10 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = ICTextController;
    v11 = [(ICTTTextController *)&v13 strippedTypingAttributesAtStartOfParagraph:v8 atTheEndOfDocument:v6 isTyping:v5];
  }

  return v11;
}

+ (BOOL)shouldRetainFirstListStyleForFilteredAttributedSubstring:(id)a3 fromRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = location + length;
  if (location + length >= [v6 length])
  {
    v9 = 0;
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  v8 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
  v9 = v8;
  if (!v8 || ![v8 isList])
  {
    goto LABEL_14;
  }

  v18 = 0;
  v10 = [v6 string];
  v11 = [v10 ic_paragraphRangeForRange:location contentEnd:{0, &v18}];
  v13 = v12;

  v16 = location == v11 && v7 >= v18 || v7 > v11 + v13;
LABEL_15:

  return v16;
}

+ (id)removeBeginningListStyleIfNecessaryForAttributedString:(id)a3 fromTextStorage:(id)a4 andRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a3;
  v9 = a4;
  if (![ICTextController shouldRetainFirstListStyleForFilteredAttributedSubstring:v9 fromRange:location, length])
  {
    v10 = MEMORY[0x1E69B7600];
    v11 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:0];
    v12 = [v11 mutableCopy];

    [v12 setStyle:3];
    v13 = [v8 mutableCopy];
    [v9 beginSkippingTimestampUpdates];
    v14 = *v10;
    v15 = [v13 string];
    v16 = [v15 paragraphRangeForRange:{0, 0}];
    [v13 addAttribute:v14 value:v12 range:{v16, v17}];

    [v9 endSkippingTimestampUpdates];
    v8 = v13;
  }

  return v8;
}

- (void)setNote:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4 withLayoutManager:(id)a5 traitCollection:(id)a6 firstVisibleCharLocation:(unint64_t)a7
{
  v9 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  [(ICTextController *)self setNote:v11];
  if (v11)
  {
    v14 = [v11 textStorage];
    v15 = v14;
    if (v9)
    {
      [v14 setWantsUndoCommands:0];

      objc_opt_class();
      v16 = [v11 textStorage];
      v17 = [v16 styler];
      v15 = ICCheckedDynamicCast();

      v18 = [v15 zoomController];
      v19 = [ICTTTextStorage alloc];
      v20 = [v11 textStorage];
      v21 = [MEMORY[0x1E696AFB0] UUID];
      if ([(ICTextController *)self isForPrint])
      {
        v22 = self;
      }

      else
      {
        v22 = 0;
      }

      v23 = [(ICTTTextStorage *)v19 initWithAttributedString:v20 replicaID:v21 sourceZoomController:v18 keepSourceZoomController:0 existingStyler:v22];
      v24 = v23;

      if ([(ICTTTextController *)self disableSingleLineA])
      {
        [(ICTTTextController *)self styleText:v23 inRange:0 fixModelAttributes:[(ICTTTextStorage *)v23 length], 0];
      }

      [v11 setNoteHasChanges:MEMORY[0x1E695E110]];
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__47;
      v61 = __Block_byref_object_dispose__47;
      v62 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3010000000;
      v55 = 0;
      v56 = 0;
      v54 = &unk_1D449C2A9;
      v25 = [(ICTTTextStorage *)v23 length];
      v26 = *MEMORY[0x1E69DB5F8];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __135__ICTextController_setNote_stylingTextUsingSeparateTextStorageForRendering_withLayoutManager_traitCollection_firstVisibleCharLocation___block_invoke;
      v50[3] = &unk_1E846C550;
      v50[4] = &v57;
      v50[5] = &v51;
      [(ICTTTextStorage *)v23 enumerateAttribute:v26 inRange:0 options:v25 usingBlock:2, v50];
      if (v58[5] && [(ICTTTextStorage *)v23 length])
      {
        objc_opt_class();
        v27 = ICDynamicCast();
        v28 = v27;
        if (v27)
        {
          if ([v27 requiresSpaceAfterAttachmentForPrinting])
          {
            v29 = [(ICTTTextStorage *)v23 string];
            v49 = [v29 characterAtIndex:{-[ICTTTextStorage length](v23, "length") - 1}];

            v31 = v52[4];
            v30 = v52[5];
            if (v30 + v31 == -[ICTTTextStorage length](v23, "length") || (v38 = v52[4], v37 = v52[5], v37 + v38 == -[ICTTTextStorage length](v23, "length") - 1) && ([MEMORY[0x1E696AB08] newlineCharacterSet], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "characterIsMember:", v49), v39, v40))
            {
              v32 = [(ICTTTextStorage *)v23 mutableString];
              [v32 appendString:@" "];
            }
          }
        }
      }

      if ([(ICTextController *)self isForPrint])
      {
        v41 = [v11 calculateDocumentController];
        if ([v41 hasExpressions] && objc_msgSend(v11, "calculatePreviewBehavior") != 1)
        {
          [v41 updateAffectingChangeCounts:0];
          v42 = [(ICTTTextStorage *)v23 ic_range];
          [v41 formatExpressionsInAttributedString:v23 range:v42 textStorageOffset:v43 skipStaleExpressions:{0, 1}];
        }
      }

      v44 = [v12 textContainers];
      v45 = [v44 lastObject];

      [(ICTextController *)self filterAttachmentsForPrintingInAttributedString:v23 traitCollection:v13 textContainer:v45];
      [v12 icReplaceTextStorage:v23];
      v46 = [(ICTextController *)self trackedToDoParagraphs];
      [v12 setTrackedToDoParagraphs:v46];

      v47 = [v12 textStorage];
      [v12 invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v47, "length"), 0}];

      v48 = [v11 textStorage];
      [v48 setWantsUndoCommands:1];

      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v57, 8);
    }

    else
    {
      [v14 setStyler:self];
      [v15 setWantsUndoCommands:0];
      [(ICTextController *)self refreshTextStylingForTextStorage:v15 withTextController:self];
      [v15 setWantsUndoCommands:1];
      [v11 setNoteHasChanges:MEMORY[0x1E695E110]];
      [v12 icReplaceTextStorage:v15];
    }
  }

  else
  {
    v33 = [ICTTTextStorage alloc];
    v34 = [MEMORY[0x1E696AFB0] UUID];
    v35 = [(ICTTTextStorage *)v33 initWithData:0 replicaID:v34];
    [(ICTextController *)self setEmptyTextStorage:v35];

    v36 = [(ICTextController *)self emptyTextStorage];
    [v12 icReplaceTextStorage:v36];
  }
}

void __135__ICTextController_setNote_stylingTextUsingSeparateTextStorageForRendering_withLayoutManager_traitCollection_firstVisibleCharLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  if (v10)
  {
    v12 = v10;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v10 = v12;
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    if (a5)
    {
      *a5 = 1;
    }
  }
}

+ (double)extraWidthNeededForStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v13 = [a3 mutableCopy];
  [v13 setIndent:0];
  v14 = [v13 copy];
  [a1 indentForStyle:v14 range:location attributedString:length textView:{v12, v11}];
  v16 = v15;

  return v16;
}

+ (double)indentForStyle:(id)a3 range:(_NSRange)a4 attributedString:(id)a5 textView:(id)a6
{
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 style] == 103)
  {
    if (ICInternalSettingsIsTextKit2Enabled() && ([v12 textLayoutManager], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = 36.0 * [v10 indent];
    }

    else
    {
      v14 = [v10 indent] * 36.0 + 36.0;
    }

    goto LABEL_26;
  }

  if (![v10 indent])
  {
    v14 = 0.0;
    if (![v10 isList])
    {
      goto LABEL_26;
    }
  }

  if (location >= [v11 length])
  {
    if (v12)
    {
      v16 = [v12 typingAttributes];
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

      goto LABEL_14;
    }

    v15 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
  }

  else
  {
    v15 = [v11 attribute:*MEMORY[0x1E69DB648] atIndex:location effectiveRange:0];
  }

  v17 = v15;
LABEL_14:
  v18 = 0.0;
  if ([v10 style] == 102 && location <= objc_msgSend(v11, "length"))
  {
    v19 = *MEMORY[0x1E69B7918];
    v20 = [v11 length];
    if (location)
    {
      v21 = location >= v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v11 attribute:v19 atIndex:location - v22 effectiveRange:0];
    [a1 extraBulletWidthForNumberedListWithMaxItemNumber:v23 textFont:v17];
    v18 = v24;
  }

  v25 = [v12 textLayoutManager];

  v26 = [v10 indent];
  if (!v25)
  {
    v26 += [v10 isList];
  }

  v14 = v18 + v26 * 36.0;

LABEL_26:
  return v14;
}

+ (double)extraBulletWidthForNumberedListWithMaxItemNumber:(id)a3 textFont:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB878];
  v6 = a4;
  v7 = a3;
  v8 = [v5 ic_preferredFontForBodyText];
  [v6 pointSize];
  v10 = v9;

  v11 = [v8 ic_fontWithSize:v10];
  v12 = [v11 ic_fontWithTabularNumbers];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v7 longValue];

  v15 = [v13 localizedStringWithFormat:@"%ld.", v14];
  v21 = *MEMORY[0x1E69DB648];
  v22[0] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v15 sizeWithAttributes:v16];
  v18 = v17;

  if (v18 + 9.2 <= 36.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18 + 9.2 - 36.0;
  }

  return v19;
}

- (void)setTrackAddedExtraNewlineRanges:(BOOL)a3
{
  if (self->_trackAddedExtraNewlineRanges != a3)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      [(ICTextController *)self setTrackedRangesForAddedExtraNewlines:v5];
    }

    else
    {
      [(ICTextController *)self setTrackedRangesForAddedExtraNewlines:0];
    }

    self->_trackAddedExtraNewlineRanges = a3;
  }
}

- (void)trackExtraNewLineRangeIfNecessary:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (![(ICTextController *)self trackAddedExtraNewlineRanges])
  {
    return;
  }

  v6 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    v10 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v12 = [v11 rangeValue];
    v14 = v13;

    if (location >= v12)
    {
      if (location > v12 + v14)
      {
        goto LABEL_9;
      }

      v15 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
      v16 = [MEMORY[0x1E696B098] valueWithRange:{v12, v14 + length}];
      [v15 replaceObjectAtIndex:v8 withObject:v16];
      v9 = 0;
    }

    else
    {
      v15 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
      v16 = [MEMORY[0x1E696B098] valueWithRange:{v12 + length, v14}];
      [v15 replaceObjectAtIndex:v8 withObject:v16];
    }

LABEL_9:
    ++v8;
    v17 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v18 = [v17 count];
  }

  while (v18 > v8);
  if (v9)
  {
LABEL_11:
    v20 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v19 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    [v20 addObject:v19];
  }
}

- (_NSRange)addExtraLinesIfNeededToTextStorage:(id)a3 editedRange:(_NSRange)a4 actualLengthIncrease:(int64_t *)a5
{
  length = a4.length;
  location = a4.location;
  v69[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (location + length > [v8 length])
  {
    v73.length = [v8 length];
    v70.location = location;
    v70.length = length;
    v73.location = 0;
    v9 = NSIntersectionRange(v70, v73);
    location = v9.location;
    length = v9.length;
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICTextController addExtraLinesIfNeededToTextStorage:v10 editedRange:? actualLengthIncrease:?];
    }
  }

  *a5 = 0;
  v11 = [v8 string];
  v60 = [v11 paragraphRangeForRange:{location, length}];
  v13 = v12;

  if ([v8 length])
  {
    v14 = [v8 string];
    v15 = [v14 paragraphRangeForRange:{objc_msgSend(v8, "length"), 0}];
    v17 = v16;

    if (v17)
    {
      v18 = v13;
      v19 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:v15 effectiveRange:0];
      v20 = v19;
      if (v19 && [v19 wantsFollowingNewLine] && (objc_msgSend(v8, "shouldInhibitAddingExtraNewlinesAtEndDuringFixup") & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
        [v8 replaceCharactersInRange:v15 + v17 withAttributedString:{0, v21}];

        [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v15 + v17, 1];
      }

      v13 = v18;
    }

    v56 = a5;
    v58 = length;
    v67.location = 0;
    v67.length = 0;
    v22 = [v8 length];
    v23 = [(ICTextController *)self note];
    v57 = [v23 attachmentViewType];

    v24 = v60;
    if (v60 < [v8 length])
    {
      v61 = *MEMORY[0x1E69DB5F8];
      v25 = v60;
      do
      {
        v26 = v13 + v24;
        if (v25 > v13 + v24)
        {
          break;
        }

        objc_opt_class();
        v27 = [v8 attribute:v61 atIndex:v25 longestEffectiveRange:&v67 inRange:{0, v22}];
        v28 = ICDynamicCast();

        v71.location = v24;
        v62 = v13;
        v71.length = v13;
        v29 = NSIntersectionRange(v71, v67).length;
        objc_opt_class();
        v30 = ICDynamicCast();
        v31 = PKIsInlineDrawingOrPaperAttachment();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((v30 != 0) | (v31 | isKindOfClass) & 1 && v29)
        {
          v33 = isKindOfClass;
          v65 = 0;
          v66 = 0;
          v64 = 0;
          v34 = [v8 string];
          [v34 getParagraphStart:&v66 end:&v64 contentsEnd:&v65 forRange:{v67.location, v67.length}];

          if (v30 && [v30 supportsMultipleThumbnailsOnSameLine] && v57 == 1)
          {
            v35 = v25 + 1;
            while (v35 < [v8 length])
            {
              v63.location = 0;
              v63.length = 0;
              v36 = [v8 attribute:v61 atIndex:v35 longestEffectiveRange:&v63 inRange:{0, v22}];
              v37 = objc_opt_class();
              if (v37 != objc_opt_class() || v63.location != v35)
              {

                break;
              }

              v74.length = v63.length;
              v74.location = v35;
              v67 = NSUnionRange(v67, v74);
              v35 = v67.location + v67.length;
            }
          }

          if (v65 > v67.length + v67.location || v64 == v65)
          {
            v24 = v60;
            if (!v33 && (v31 & 1) != 0)
            {
              v39 = v67.length + v67.location;
              v33 = v39 < [v8 length];
            }

            if (v30 || v33)
            {
              v41 = objc_alloc(MEMORY[0x1E696AAB0]);
              v68 = *MEMORY[0x1E69B7600];
              v42 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
              v69[0] = v42;
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
              v44 = [v41 initWithString:@"\n" attributes:v43];

              [v8 insertAttributedString:v44 atIndex:v67.length + v67.location];
              [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v67.length + v67.location, 1];
              ++v67.length;
              if (v26 < [v8 length])
              {
                ++v62;
                ++v58;
                ++*v56;
              }

              ++v22;
            }
          }

          else
          {
            v24 = v60;
          }

          if (v66 < v67.location)
          {
            v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
            [v8 insertAttributedString:v45 atIndex:v67.location];

            [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v67.location++, 1];
            ++v22;
            if (v62 + v24 < [v8 length])
            {
              ++v62;
              ++v58;
              ++*v56;
            }
          }

          v63.location = 0;
          v63.length = 0;
          v47 = v67.location;
          v46 = v67.length;
          v48 = v67.length + v67.location;
          if (v48 >= [v8 length])
          {
            v49 = v46;
          }

          else
          {
            v49 = 2;
          }

          v50 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:v67.location longestEffectiveRange:&v63 inRange:{v47, v49}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v50 style] != 3 || (v75.location = v47, v75.length = v49, v51 = NSIntersectionRange(v63, v75), v51.location != v47) || v51.length != v49)
            {
              v52 = [v50 mutableCopy];
              [v52 setBlockQuoteLevel:{objc_msgSend(v50, "blockQuoteLevel")}];
              [v8 addAttribute:*MEMORY[0x1E69B7600] value:v52 range:{v47, v49}];
            }
          }
        }

        v25 = v67.length + v67.location;

        v13 = v62;
      }

      while (v25 < [v8 length]);
    }

    length = v58;
    location = v55;
  }

  v53 = location;
  v54 = length;
  result.length = v54;
  result.location = v53;
  return result;
}

- (void)updateTrackedAttributesInTextStorage:(id)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3010000000;
  v54 = &unk_1D449C2A9;
  v55 = xmmword_1D4433FC0;
  v59.length = [v8 length];
  v56.location = location;
  v56.length = length;
  v59.location = 0;
  v9 = NSIntersectionRange(v56, v59);
  v10 = v9.location;
  v11 = v9.length;
  if (!(v9.location + v9.length))
  {
    v12 = [v8 length];
    v11 = 0;
    if (location >= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = location;
    }
  }

  v13 = [v8 string];
  v14 = [v13 paragraphRangeForRange:{v10, v11}];
  v16 = v15;

  if (v14 + v16 < [v8 length])
  {
    v17 = [v8 string];
    v18 = [v17 paragraphRangeForRange:{v14 + v16, 0}];
    v20 = v19;

    v57.location = v14;
    v57.length = v16;
    v60.location = v18;
    v60.length = v20;
    v21 = NSUnionRange(v57, v60);
    v14 = v21.location;
    v16 = v21.length;
  }

  v22 = ((1 - a5) & ~((1 - a5) >> 63)) + length;
  v58.location = location;
  v58.length = v22;
  v61.location = v14;
  v61.length = v16;
  v23 = NSUnionRange(v58, v61);
  v62.length = [v8 length];
  v62.location = 0;
  v24 = NSIntersectionRange(v23, v62);
  objc_opt_class();
  v25 = ICDynamicCast();
  [v25 beginSkippingTimestampUpdates];

  [v8 beginEditing];
  v26 = [v8 string];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke;
  v46[3] = &unk_1E846C5A0;
  v27 = v8;
  v47 = v27;
  v48 = self;
  v28 = v37;
  v49 = v28;
  v50 = &v51;
  [v26 ic_enumerateParagraphsInRange:v24.location usingBlock:{v24.length, v46}];

  if (a5 >= 1)
  {
    [(ICTextController *)self updateTrackedToDoParagraphsAfterIndex:v10 byDelta:a5 excludingSeenParagraphs:v28];
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [(ICTextController *)self trackedToDoParagraphs];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_3;
  v39[3] = &unk_1E846C5C8;
  v44 = location;
  v45 = v22;
  v31 = v28;
  v40 = v31;
  v32 = v29;
  v41 = v32;
  v33 = v27;
  v42 = v33;
  v43 = self;
  [v30 enumerateKeysAndObjectsUsingBlock:v39];

  v34 = [(ICTextController *)self trackedToDoParagraphs];
  [v34 removeObjectsForKeys:v32];

  if (a5 < 0)
  {
    [(ICTextController *)self updateTrackedToDoParagraphsAfterIndex:v10 byDelta:a5 excludingSeenParagraphs:v31];
  }

  v35 = v52[4];
  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTextController *)self styleListsAndIndentsInAttributedString:v33 inRange:v35, v52[5]];
  }

  [v33 endEditing];
  objc_opt_class();
  v36 = ICDynamicCast();
  [v36 endSkippingTimestampUpdates];

  _Block_object_dispose(&v51, 8);
}

void __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke(uint64_t a1, NSUInteger a2, uint64_t a3)
{
  location = a2;
  v62 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69B7600];
  v7 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7600] atIndex:a2 effectiveRange:0];
  length = a3 - location;
  v9 = [*(a1 + 40) trackedToDoParagraphs];
  v10 = [v7 todoTrackingUUID];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
LABEL_7:
    v28 = [v7 todoTrackingUUID];
    if (v28)
    {
      v29 = v28;
      v30 = [*(a1 + 40) trackedToDoParagraphs];
      v31 = [v7 todoTrackingUUID];
      v32 = [v30 objectForKeyedSubscript:v31];

      if (!v32)
      {
        [*(a1 + 40) createToDoItemForCharacterRange:location paragraphStyle:length textStorage:{v7, *(a1 + 32)}];
        v33 = *(a1 + 48);
        v34 = [v7 todoTrackingUUID];
        [v33 addObject:v34];

        v35 = *(*(a1 + 56) + 8);
        v36.location = *(v35 + 32);
        if (v36.location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v36.length = *(v35 + 40);
          v64.location = location;
          v64.length = length;
          v37 = NSUnionRange(v36, v64);
          location = v37.location;
          length = v37.length;
          v35 = *(*(a1 + 56) + 8);
        }

        *(v35 + 32) = location;
        *(v35 + 40) = length;
      }
    }

    goto LABEL_27;
  }

  v12 = *(a1 + 48);
  v13 = [v11 paragraph];
  v14 = [v13 todoTrackingUUID];
  LOBYTE(v12) = [v12 containsObject:v14];

  if (v12)
  {
    v15 = *(a1 + 48);
    v16 = [v11 paragraph];
    v17 = [v16 todoTrackingUUID];
    LODWORD(v15) = [v15 containsObject:v17];

    if (v15)
    {
      v18 = [v7 mutableCopy];
      v19 = objc_alloc_init(MEMORY[0x1E69B78E0]);
      [v18 setTodo:v19];

      v20 = *(a1 + 32);
      v21 = *v6;
      v22 = [v18 copy];
      [v20 addAttribute:v21 value:v22 range:{location, length}];

      [*(a1 + 40) createToDoItemForCharacterRange:location paragraphStyle:length textStorage:{v18, *(a1 + 32)}];
      v23 = *(a1 + 48);
      v24 = [v18 todoTrackingUUID];
      [v23 addObject:v24];

      v25 = *(*(a1 + 56) + 8);
      v26.location = *(v25 + 32);
      if (v26.location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26.length = *(v25 + 40);
        v63.location = location;
        v63.length = length;
        v27 = NSUnionRange(v26, v63);
        location = v27.location;
        length = v27.length;
        v25 = *(*(a1 + 56) + 8);
      }

      *(v25 + 32) = location;
      *(v25 + 40) = length;

      goto LABEL_27;
    }

    goto LABEL_7;
  }

  [v11 setParagraph:v7];
  if ([v11 characterRange] != location || v38 != length)
  {
    [v11 setCharacterRange:{location, length}];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      objc_opt_class();
      v40 = ICDynamicCast();
      v41 = [v40 textLayoutManagers];

      v42 = [v41 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v58;
        do
        {
          v45 = 0;
          do
          {
            if (*v58 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = ICProtocolCast();
            [v46 textController:*(a1 + 40) updatedTrackedAttribute:v11];

            ++v45;
          }

          while (v43 != v45);
          v43 = [v41 countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v43);
      }
    }

    else
    {
      v47 = [*(a1 + 32) layoutManagers];
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_2;
      v54 = &unk_1E846C578;
      v55 = *(a1 + 40);
      v56 = v11;
      [v47 enumerateObjectsUsingBlock:&v51];
    }
  }

  v48 = *(a1 + 48);
  v49 = [v11 paragraph];
  v50 = [v49 todoTrackingUUID];
  [v48 addObject:v50];

LABEL_27:
}

void __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 textController:*(a1 + 32) updatedTrackedAttribute:*(a1 + 40)];
  }
}

void __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23.location = [v6 characterRange];
  if (NSIntersectionRange(v23, *(a1 + 64)).length && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      objc_opt_class();
      v7 = ICDynamicCast();
      v8 = [v7 textLayoutManagers];

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = ICProtocolCast();
            [v13 textController:*(a1 + 56) removedTrackedAttribute:v6];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v14 = [*(a1 + 48) layoutManagers];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_4;
      v15[3] = &unk_1E846C578;
      v15[4] = *(a1 + 56);
      v16 = v6;
      [v14 enumerateObjectsUsingBlock:v15];
    }
  }
}

void __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 textController:*(a1 + 32) removedTrackedAttribute:*(a1 + 40)];
  }
}

- (void)createToDoItemForCharacterRange:(_NSRange)a3 paragraphStyle:(id)a4 textStorage:(id)a5
{
  length = a3.length;
  location = a3.location;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(ICTrackedParagraph);
  [(ICTrackedParagraph *)v11 setParagraph:v9];
  [(ICTrackedParagraph *)v11 setCharacterRange:location, length];
  v12 = [(ICTextController *)self trackedToDoParagraphs];
  v13 = [v9 todoTrackingUUID];
  [v12 setObject:v11 forKeyedSubscript:v13];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    objc_opt_class();
    v14 = ICDynamicCast();
    v15 = [v14 textLayoutManagers];

    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = ICProtocolCast();
          [v20 textController:self addedTrackedAttribute:v11];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = [v10 layoutManagers];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__ICTextController_createToDoItemForCharacterRange_paragraphStyle_textStorage___block_invoke;
    v22[3] = &unk_1E846C578;
    v22[4] = self;
    v23 = v11;
    [v21 enumerateObjectsUsingBlock:v22];
  }
}

void __79__ICTextController_createToDoItemForCharacterRange_paragraphStyle_textStorage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 textController:*(a1 + 32) addedTrackedAttribute:*(a1 + 40)];
  }
}

- (void)updateTrackedToDoParagraphsAfterIndex:(unint64_t)a3 byDelta:(int64_t)a4 excludingSeenParagraphs:(id)a5
{
  v8 = a5;
  v9 = [(ICTextController *)self trackedToDoParagraphs];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__ICTextController_updateTrackedToDoParagraphsAfterIndex_byDelta_excludingSeenParagraphs___block_invoke;
  v11[3] = &unk_1E846C5F0;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __90__ICTextController_updateTrackedToDoParagraphsAfterIndex_byDelta_excludingSeenParagraphs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 characterRange];
  if (v6 >= *(a1 + 40))
  {
    v8 = v6;
    v9 = v7;
    if (([*(a1 + 32) containsObject:v13] & 1) == 0)
    {
      v10 = *(a1 + 40);
      if (v8 == v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = *(a1 + 48) + v8;
      }

      if (v8 == v10)
      {
        v12 = *(a1 + 48);
      }

      else
      {
        v12 = 0;
      }

      [v5 setCharacterRange:{v11, v9 + v12}];
    }
  }
}

- (void)filterAttachmentsForPrintingInAttributedString:(id)a3 traitCollection:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x1E69DB5F8];
  v12 = [v8 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__ICTextController_filterAttachmentsForPrintingInAttributedString_traitCollection_textContainer___block_invoke;
  v16[3] = &unk_1E846A740;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [v13 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v16}];
}

void __97__ICTextController_filterAttachmentsForPrintingInAttributedString_traitCollection_textContainer___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v15 printableTextContentForAppearanceType:objc_msgSend(*(a1 + 32) traitCollection:"overrideAppearanceType") textContainer:{*(a1 + 40), *(a1 + 48)}];
    if (v7)
    {
      [*(a1 + 56) replaceCharactersInRange:a3 withAttributedString:{a4, v7}];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = v15;
    v7 = [*(a1 + 56) attributesAtIndex:a3 effectiveRange:0];
    v9 = [v8 printableTextContentForAppearanceType:objc_msgSend(*(a1 + 32) traitCollection:"overrideAppearanceType") styleAttributes:*(a1 + 40) textContainer:{v7, *(a1 + 48)}];
    v10 = v9;
    if (v9)
    {
      v11 = *(a1 + 56);
      v12 = [v9 string];
      [v11 replaceCharactersInRange:a3 withString:{a4, v12}];

      v13 = *(a1 + 56);
      v14 = [v10 attributesAtIndex:0 effectiveRange:0];
      [v13 addAttributes:v14 range:{a3, objc_msgSend(v10, "length")}];
    }
  }

LABEL_9:
}

- (BOOL)inlineAttachmentInTextView:(id)a3 atIndex:(unint64_t)a4 outAttachment:(id *)a5
{
  v8 = [a3 textStorage];
  v9 = [v8 attribute:*MEMORY[0x1E69B7628] atIndex:a4 effectiveRange:0];
  if ([v9 conformsToProtocol:&unk_1F4FC5D80])
  {
    v10 = v9;
    v11 = [MEMORY[0x1E69B7888] isInlineAttachment:v10];
    v12 = v11;
    if (a5 && v11)
    {
      v13 = [(ICTextController *)self note];
      *a5 = [v13 inlineAttachmentWithICTTAttachment:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canConvertInlineAttachmentToTextInTextView:(id)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v12 = location != 0x7FFFFFFFFFFFFFFFLL && ([v7 textStorage], v9 = v8 = v7;

  return v12;
}

- (void)convertInlineAttachmentToTextInTextView:(id)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v7 textStorage];
    v10 = [v9 string];
    v11 = [v10 ic_rangeIsValid:{location, length}];

    if (v11)
    {
      v25 = 0;
      v12 = [(ICTextController *)self inlineAttachmentInTextView:v8 atIndex:location outAttachment:&v25];
      v13 = v25;
      v14 = v13;
      if (v12)
      {
        if (!v13)
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((inlineAttachment) != nil)" functionName:"-[ICTextController convertInlineAttachmentToTextInTextView:forRange:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "inlineAttachment"}];
        }

        v15 = [MEMORY[0x1E696AD88] defaultCenter];
        v16 = *MEMORY[0x1E69B74A0];
        v17 = [v14 note];
        v26 = *MEMORY[0x1E69B74A8];
        v27[0] = v14;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        [v15 postNotificationName:v16 object:v17 userInfo:v18];

        v19 = [v14 displayText];
        v20 = [v19 ic_stringByRemovingLanguageDirectionCharacters];

        v21 = [v8 textStorage];
        [v21 replaceCharactersInRange:location withString:{1, v20}];

        v22 = [v20 length];
        if (length)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (length)
        {
          v24 = location;
        }

        else
        {
          v24 = v22 + location;
        }

        [v8 setSelectedRange:{v24, v23}];
      }
    }
  }
}

- (BOOL)canAddToTagsInTextView:(id)a3 forRange:(_NSRange)a4
{
  if (a4.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v15 = 0;
  v6 = [(ICTextController *)self inlineAttachmentInTextView:a3 atIndex:a4.location outAttachment:&v15];
  v7 = v15;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!v7)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((inlineAttachment) != nil)" functionName:"-[ICTextController canAddToTagsInTextView:forRange:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "inlineAttachment"}];
  }

  if ([v8 isHashtagAttachment])
  {
    v9 = MEMORY[0x1E69B7768];
    v10 = [v8 tokenContentIdentifier];
    v11 = [(ICTextController *)self note];
    v12 = [v11 account];
    v13 = [v9 hashtagWithStandardizedContent:v10 account:v12];

    v4 = v13 == 0;
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4;
}

- (void)addToTagsInTextView:(id)a3 forRange:(_NSRange)a4
{
  if (a4.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18[7] = v4;
    v18[8] = v5;
    v18[0] = 0;
    v7 = [(ICTextController *)self inlineAttachmentInTextView:a3 atIndex:a4.location outAttachment:v18];
    v8 = v18[0];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((inlineAttachment) != nil)" functionName:"-[ICTextController addToTagsInTextView:forRange:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "inlineAttachment"}];
      }

      v10 = MEMORY[0x1E69B7768];
      v11 = [v9 displayText];
      v12 = [(ICTextController *)self note];
      v13 = [v12 account];
      v14 = [v10 hashtagWithDisplayText:v11 account:v13 createIfNecessary:1];

      v15 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICTextController addToTagsInTextView:v14 forRange:v9];
      }

      v16 = [(ICTextController *)self note];
      v17 = [v16 managedObjectContext];
      [v17 ic_save];
    }
  }
}

- (void)styleListsAndIndentsInAttributedString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(ICTextController *)self numberListsInAttributedString:v7 inRange:location, length];
  v10 = v9;
  objc_opt_class();
  v11 = ICDynamicCast();
  [v11 beginSkippingTimestampUpdates];

  v12 = *MEMORY[0x1E69B7600];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke;
  v18 = &unk_1E846C668;
  v19 = v7;
  v20 = self;
  v13 = v7;
  [v13 enumerateAttribute:v12 inRange:v8 options:v10 usingBlock:{0, &v15}];
  [(ICTextController *)self fixListWritingDirectionInAttributedString:v13 forListItemsInRange:v8, v10, v15, v16, v17, v18];
  objc_opt_class();
  v14 = ICDynamicCast();
  [v14 endSkippingTimestampUpdates];
}

void __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if ([v7 isList])
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      if ([v7 style] == 102)
      {
        v8 = MEMORY[0x1E69B7950];
        v9 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7950] atIndex:a3 effectiveRange:0];

        if (v9)
        {
          v10 = *v8;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke_2;
          v19[3] = &unk_1E846C618;
          v11 = *(a1 + 32);
          v19[4] = *(a1 + 40);
          v20 = v7;
          v21 = *(a1 + 32);
          [v11 enumerateAttribute:v10 inRange:a3 options:a4 usingBlock:{0, v19}];

          v12 = v20;
LABEL_9:

          goto LABEL_13;
        }
      }
    }

    v15 = [*(a1 + 40) nsParagraphStyleForICTTParagraphStyle:v7 range:a3 attributedString:a4 textView:{*(a1 + 32), 0}];
    if (v15)
    {
      [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB688] value:v15 range:{a3, a4}];
    }
  }

  else if ([v7 style] == 3 || objc_msgSend(v7, "style") == 4 || objc_msgSend(v7, "isBlockQuote") && ICInternalSettingsIsBlockQuoteEnabled())
  {
    v13 = *MEMORY[0x1E69DB688];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke_3;
    v16[3] = &unk_1E846C640;
    v14 = *(a1 + 32);
    v16[4] = *(a1 + 40);
    v17 = v7;
    v18 = *(a1 + 32);
    [v14 enumerateAttribute:v13 inRange:a3 options:a4 usingBlock:{0, v16}];

    v12 = v17;
    goto LABEL_9;
  }

LABEL_13:
}

uint64_t __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) nsParagraphStyleForICTTParagraphStyle:*(a1 + 40) range:a3 attributedString:a4 textView:{*(a1 + 48), 0}];
  if (v7)
  {
    v7 = [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{a3, a4}];
  }

  return MEMORY[0x1EEE66BB8](v7);
}

uint64_t __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) nsParagraphStyleForICTTParagraphStyle:*(a1 + 40) range:a3 attributedString:a4 textView:{*(a1 + 48), 0}];
  if (v7)
  {
    v7 = [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{a3, a4}];
  }

  return MEMORY[0x1EEE66BB8](v7);
}

- (void)fixListWritingDirectionInAttributedString:(id)a3 forListItemsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(ICTextController *)self expandRangeToIncludeFullList:location inAttributedString:length, v7];
  v10 = v9;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[3] = &unk_1D449C2A9;
  v19 = xmmword_1D4433FC0;
  v11 = *MEMORY[0x1E69B7600];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__ICTextController_fixListWritingDirectionInAttributedString_forListItemsInRange___block_invoke;
  v13[3] = &unk_1E846C6B8;
  v16 = v18;
  v17 = v22;
  v15 = v20;
  v13[4] = self;
  v12 = v7;
  v14 = v12;
  [v12 enumerateAttribute:v11 inRange:v8 options:v10 usingBlock:{0, v13}];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __82__ICTextController_fixListWritingDirectionInAttributedString_forListItemsInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7 && [v7 isList])
  {
    if ([v8 style] != *(*(*(a1 + 48) + 8) + 24) || *(*(*(a1 + 56) + 8) + 32) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *(*(*(a1 + 48) + 8) + 24) = [v8 style];
      v9 = *(*(a1 + 56) + 8);
      *(v9 + 32) = a3;
      *(v9 + 40) = a4;
    }

    v10 = *(*(a1 + 64) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      v11 = [*(a1 + 32) writingDirectionForRange:*(*(*(a1 + 56) + 8) + 32) inTextStorage:{*(*(*(a1 + 56) + 8) + 40), *(a1 + 40)}];
      v12 = *(a1 + 40);
      v13 = *MEMORY[0x1E69DB688];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82__ICTextController_fixListWritingDirectionInAttributedString_forListItemsInRange___block_invoke_2;
      v15[3] = &unk_1E846C690;
      v17 = v11;
      v16 = v12;
      [v16 enumerateAttribute:v13 inRange:a3 options:a4 usingBlock:{0, v15}];

      v10 = *(*(a1 + 64) + 8);
    }

    *(v10 + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 3;
    v14 = *(*(a1 + 56) + 8);
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
  }
}

void __82__ICTextController_fixListWritingDirectionInAttributedString_forListItemsInRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v12 = [v8 mutableCopy];

    v7 = v12;
  }

  v13 = v7;
  [v7 setBaseWritingDirection:*(a1 + 40)];
  v9 = *(a1 + 32);
  v10 = *MEMORY[0x1E69DB688];
  v11 = [v13 copy];
  [v9 addAttribute:v10 value:v11 range:{a3, a4}];
}

- (_NSRange)expandRangeToIncludeFullList:(_NSRange)a3 inAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = v6;
  if (length && [v6 length])
  {
    v8 = [v7 string];
    v9 = MEMORY[0x1E69B7600];
    v10 = [v7 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    v11 = v10;
    if (v10 && [v10 isList])
    {
      v12 = [v11 style];
      if (location)
      {
        v13 = location;
        while (1)
        {
          v14 = [v8 paragraphRangeForRange:{v13 - 1, 0}];
          v15 = [v7 attribute:*v9 atIndex:v14 effectiveRange:0];
          v16 = v15;
          if (!v15 || ![v15 isList] || objc_msgSend(v16, "style") != v12)
          {
            break;
          }

          v13 = v14;
          if (!v14)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_15:
      v17 = location + length;
      while (v17 < [v7 length])
      {
        v18 = [v8 paragraphRangeForRange:{v17, 0}];
        v20 = v19;
        if (v18 >= [v7 length])
        {
          break;
        }

        v21 = [v7 attribute:*v9 atIndex:v18 effectiveRange:0];
        v22 = v21;
        if (!v21 || ![v21 isList] || objc_msgSend(v22, "style") != v12)
        {

          break;
        }

        v17 = v18 + v20;
      }

      length = v17 - v13;
    }

    else
    {
      v13 = location;
    }

    location = v13;
  }

  v23 = location;
  v24 = length;
  result.length = v24;
  result.location = v23;
  return result;
}

- (void)styleDataDetectorTypesForPreviewInTextStorage:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44 = 0;
  v5 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2080 error:&v44];
  v6 = v44;
  v7 = v6;
  if (v5)
  {
    v33 = v6;
    v8 = [v4 attributedString];
    v9 = [v8 string];

    v34 = v5;
    v32 = v9;
    range1 = [v4 length];
    v10 = [v5 matchesInString:v9 options:0 range:0];
    [v4 beginSkippingTimestampUpdates];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v35 = *MEMORY[0x1E69DB670];
      v14 = MEMORY[0x1E69B7600];
      v36 = *v41;
      do
      {
        v15 = 0;
        v38 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v40 + 1) + 8 * v15);
          v17 = [v16 range];
          v19 = v18;
          v20 = [v4 attribute:*v14 atIndex:v17 effectiveRange:0];
          if (-[ICTextController shouldHighlightStyleAsLink:](self, "shouldHighlightStyleAsLink:", [v20 style]))
          {
            v21 = self;
            v47.location = 0;
            v47.length = range1;
            v48.location = v17;
            v48.length = v19;
            length = NSIntersectionRange(v47, v48).length;
            v23 = v4;
            v24 = [MEMORY[0x1E69B77E8] hasMentionInTextStorage:v4 inRange:{v17, v19}];
            v25 = [v16 URL];
            if (v25)
            {
              v26 = length == 0;
            }

            else
            {
              v26 = 1;
            }

            if (!v26 && (v24 & 1) == 0)
            {
              [v23 addAttribute:v35 value:v25 range:{v17, v19}];
            }

            v27 = [v16 phoneNumber];
            if (v27)
            {
              v28 = length == 0;
            }

            else
            {
              v28 = 1;
            }

            v29 = v28;
            v30 = v29 | v24;
            v4 = v23;
            if ((v30 & 1) == 0)
            {
              [v23 addAttribute:v35 value:v27 range:{v17, v19}];
            }

            self = v21;
            v13 = v36;
            v12 = v38;
            v14 = MEMORY[0x1E69B7600];
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    [v4 endSkippingTimestampUpdates];
    v7 = v33;
    v5 = v34;
    v31 = v32;
  }

  else
  {
    v31 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ICTextController styleDataDetectorTypesForPreviewInTextStorage:v31];
    }
  }
}

- (void)uniqueParagraphStylesInTextStorage:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [v6 string];
  v8 = [v7 paragraphRangeForRange:{location, length}];
  v10 = v9;

  v35 = 0;
  v36 = 0;
  v30 = v10;
  v31 = v8;
  v29 = v8 + v10;
  if (v8 < v8 + v10)
  {
    v11 = v8;
    while (1)
    {
      v12 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v11 longestEffectiveRange:&v35 inRange:{v31, v30, v29}];
      v13 = [v6 string];
      v14 = [v13 paragraphRangeForRange:{v35, v36}];
      v16 = v15;

      v17 = [v6 string];
      v18 = [v17 paragraphRangeForRange:{v35, 0}];
      v20 = v35 == v18 && v36 == v19;
      v21 = v20;

      if (v12)
      {
        v22 = v14 + v16;
        if ([v12 uniqueToLine] && v11 < v22)
        {
          break;
        }
      }

LABEL_24:
      v11 = v14 + v16;

      if (v14 + v16 >= v29)
      {
        goto LABEL_25;
      }
    }

    v24 = 1;
    while (1)
    {
      v33 = 0;
      v34 = 0;
      v32 = 0;
      v25 = [v6 string];
      [v25 getParagraphStart:&v32 end:&v33 contentsEnd:&v34 forRange:{v11, 0}];

      v33 -= v32;
      if ([v12 style] != 103)
      {
        break;
      }

      v26 = [v12 todo];

      if (v26 == 0 || v21)
      {
        if (v26)
        {
          break;
        }
      }

      else if ((v24 & 1) != 0 && v34 != v32)
      {
        break;
      }

      v27 = [v12 mutableCopy];
      v28 = objc_alloc_init(MEMORY[0x1E69B78E0]);
      [v27 setTodo:v28];

      [v6 addAttribute:*MEMORY[0x1E69B7600] value:v27 range:{v32, v33}];
LABEL_23:
      v11 = v33 + v32;
      if (v33 + v32 >= v22)
      {
        goto LABEL_24;
      }
    }

    v24 = 0;
    goto LABEL_23;
  }

LABEL_25:
}

- (_NSRange)numberListsInAttributedString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3010000000;
  v54 = &unk_1D449C2A9;
  v55 = location;
  v56 = length;
  v7 = MEMORY[0x1E69B7600];
  v8 = location;
  if (location >= 1)
  {
    v9 = *MEMORY[0x1E69DB5F8];
    v8 = location;
    do
    {
      v45 = 0;
      v46 = 0;
      v10 = [v6 attribute:*v7 atIndex:v8 longestEffectiveRange:&v45 inRange:{0, objc_msgSend(v6, "length")}];
      v11 = v10;
      if (v10)
      {
        if ([v10 style] != 102 && (!objc_msgSend(v11, "isList") || !objc_msgSend(v11, "indent")))
        {
          goto LABEL_22;
        }

        if (v45)
        {
          v8 = v45 - 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v12 = v45;
        for (i = v8; i > v45; i = v15 ? v15 - 1 : 0)
        {
          v14 = [v6 string];
          v15 = [v14 paragraphRangeForRange:{i, 0}];

          v16 = [v6 attribute:v9 atIndex:v15 effectiveRange:0];

          v12 = v45;
          if (!v16)
          {
            break;
          }
        }

        v17 = v12 - 1;
        if (!v12)
        {
          v17 = 0;
        }

        if (i > v12)
        {
LABEL_22:

          break;
        }

        v8 = v17;
      }
    }

    while (v8 > 0);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3010000000;
  v49 = 0;
  v50 = 0;
  v48 = &unk_1D449C2A9;
  v18 = [v6 length];
  v49 = v8;
  v50 = (v18 - v8) & ~((v18 - v8) >> 63);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__47;
  v43 = __Block_byref_object_dispose__47;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v40[5] addObject:&unk_1F4FC3F60];
  v19 = *v7;
  v20 = [v6 length] - v8;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __58__ICTextController_numberListsInAttributedString_inRange___block_invoke;
  v32[3] = &unk_1E846C6E0;
  v34 = &v39;
  v21 = v6;
  v33 = v21;
  v35 = &v51;
  v37 = location;
  v38 = length;
  v36 = &v45;
  [v21 ic_enumerateClampedAttribute:v19 inRange:v8 options:v20 usingBlock:{0, v32}];
  [v40[5] removeAllObjects];
  v22 = *MEMORY[0x1E69B7950];
  v23 = v46;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__ICTextController_numberListsInAttributedString_inRange___block_invoke_2;
  v29[3] = &unk_1E846C708;
  v24 = v21;
  v30 = v24;
  v31 = &v39;
  [v24 enumerateAttribute:v22 inRange:v23[4] options:v23[5] usingBlock:{2, v29}];
  v25 = v52[4];
  v26 = v52[5];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  v27 = v25;
  v28 = v26;
  result.length = v28;
  result.location = v27;
  return result;
}

void __58__ICTextController_numberListsInAttributedString_inRange___block_invoke(uint64_t a1, void *a2, NSUInteger a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v51 = v9;
  if (!v9 || ![v9 isList])
  {
    v17 = a3 + a4;
    if (a3 >= a3 + a4)
    {
      v19 = a3;
    }

    else
    {
      v18 = *MEMORY[0x1E69DB5F8];
      v19 = a3;
      do
      {
        v20 = [*(a1 + 32) string];
        v21 = [v20 paragraphRangeForRange:{v19, 0}];
        v23 = v22;

        v24 = [*(a1 + 32) attribute:v18 atIndex:v19 effectiveRange:0];
        if (!v24)
        {
          break;
        }

        v19 = v21 + v23;
      }

      while (v21 + v23 < v17);
    }

    if (v19 < v17)
    {
      [*(*(*(a1 + 40) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 40) + 8) + 40) addObject:&unk_1F4FC3F60];
    }

    goto LABEL_21;
  }

  v10 = [v51 indent] + 1;
  if (v10 > [*(*(*(a1 + 40) + 8) + 40) count])
  {
    do
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:&unk_1F4FC3F60];
      v11 = [v51 indent] + 1;
    }

    while (v11 > [*(*(*(a1 + 40) + 8) + 40) count]);
  }

  v12 = [v51 indent] + 1;
  if (v12 < [*(*(*(a1 + 40) + 8) + 40) count])
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObjectsInRange:{objc_msgSend(v51, "indent") + 1, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count") + ~objc_msgSend(v51, "indent")}];
  }

  v13 = [v51 style];
  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (v13 != 102)
  {
    if ([v14 count])
    {
      [*(*(*(a1 + 40) + 8) + 40) replaceObjectAtIndex:objc_msgSend(*(*(*(a1 + 40) + 8) + 40) withObject:{"count") - 1, &unk_1F4FC3F60}];
    }

LABEL_21:
    LOBYTE(v25) = 0;
    goto LABEL_22;
  }

  v15 = [v14 lastObject];
  v16 = [v15 unsignedIntegerValue];

  if (!v16)
  {
    if ([v51 startingItemNumber])
    {
      v16 = [v51 startingItemNumber];
    }

    else
    {
      v16 = 1;
    }
  }

  v47 = a5;
  v26 = a3 + a4;
  if (a3 >= a3 + a4)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = 0;
    v27 = a3;
    v49 = a3 + a4;
    do
    {
      v28 = [*(a1 + 32) string];
      v29 = [v28 paragraphRangeForRange:{v27, 0}];
      v31 = v30;

      v32 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7950] atIndex:v27 effectiveRange:0];
      v33 = [v32 unsignedIntegerValue];

      if (v16 != v33)
      {
        v34 = *(a1 + 32);
        v35 = *MEMORY[0x1E69B7950];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [v34 addAttribute:v35 value:v36 range:{v29, v31}];

        v53.location = v29;
        v53.length = v31;
        *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(*(*(*(a1 + 48) + 8) + 32), v53);
        v25 = 1;
      }

      v37 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7600] atIndex:v29 effectiveRange:0];
      if ([v37 startingItemNumber] && v16 != objc_msgSend(v37, "startingItemNumber"))
      {
        v38 = [v37 mutableCopy];
        [v38 setStartingItemNumber:0];
        v39 = *(a1 + 32);
        v50 = v25;
        v40 = a3;
        v41 = *MEMORY[0x1E69B7600];
        v42 = [v38 copy];
        v43 = v41;
        a3 = v40;
        v25 = v50;
        [v39 addAttribute:v43 value:v42 range:{v29, v31}];

        v26 = v49;
        v54.location = v29;
        v54.length = v31;
        *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(*(*(*(a1 + 48) + 8) + 32), v54);
      }

      ++v16;
      v27 = v29 + v31;
    }

    while (v29 + v31 < v26);
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v44 = *(*(*(a1 + 40) + 8) + 40);
    v45 = [v44 count] - 1;
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    [v44 replaceObjectAtIndex:v45 withObject:v46];
  }

  a5 = v48;
LABEL_22:
  if (a3 > *(a1 + 72) + *(a1 + 64) && !(([v51 indent] != 0) | v25 & 1))
  {
    *(*(*(a1 + 56) + 8) + 40) = a3 - *(*(*(a1 + 56) + 8) + 32);
    *a5 = 1;
  }
}

void __58__ICTextController_numberListsInAttributedString_inRange___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 intValue];
    v8 = a3 + a4;
    v23 = a3 + a4;
    v24 = 0;
    v9 = MEMORY[0x1E69B7918];
    do
    {
      v10 = [*(a1 + 32) attribute:*MEMORY[0x1E69B7600] atIndex:v8 - 1 effectiveRange:&v23];
      v11 = [v10 indent];
      v12 = v11 + 1;
      while (v12 < [*(*(*(a1 + 40) + 8) + 40) count])
      {
        [*(*(*(a1 + 40) + 8) + 40) removeLastObject];
      }

      while (v12 > [*(*(*(a1 + 40) + 8) + 40) count])
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:&unk_1F4FC3F60];
      }

      v13 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:v11];
      v14 = [v13 intValue];

      if (!v14)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInt:v7];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v15 atIndexedSubscript:v11];

        v14 = v7;
      }

      v16 = [*(a1 + 32) attribute:*v9 atIndex:v23 effectiveRange:0];
      v17 = [v16 integerValue];

      v18 = floor(log10(v17));
      if (v18 != floor(log10(v14)))
      {
        v19 = *(a1 + 32);
        v20 = *v9;
        v21 = [MEMORY[0x1E696AD98] numberWithInt:v14];
        [v19 addAttribute:v20 value:v21 range:{v23, v24}];
      }

      v8 = v23;
    }

    while (v23 > a3);
  }

  else
  {
    v22 = *(*(*(a1 + 40) + 8) + 40);

    [v22 removeAllObjects];
  }
}

- (void)fixModelAttributesInTextStorage:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v37 = self;
  v6 = a3;
  v39 = [v6 beforeEndEditedRange];
  [v6 beginEditing];
  v7 = [v6 string];
  v8 = [v7 paragraphRangeForRange:{location, length}];
  v10 = v9;

  v49.location = 0;
  v49.length = 0;
  v11 = v8 + v10;
  if (v8 < v8 + v10)
  {
    v41 = *MEMORY[0x1E69DB5F8];
    v38 = v43;
    v40 = *MEMORY[0x1E69DB688];
    v12 = v8;
    do
    {
      v13 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v12 longestEffectiveRange:&v49 inRange:{v8, v10, v37, v38}];
      v50.length = v11 - v12;
      v50.location = v12;
      v49 = NSIntersectionRange(v49, v50);
      v47 = 0;
      v48 = 0;
      v46 = 0;
      v14 = [v6 string];
      [v14 getParagraphStart:&v47 end:&v48 contentsEnd:&v46 forRange:{v49.location, v49.length}];

      v48 -= v47;
      v15 = [v6 attribute:v41 atIndex:v12 effectiveRange:0];
      v16 = ICProtocolCast();

      if (v16)
      {
        v17 = [MEMORY[0x1E69B7888] isInlineAttachment:v16] ^ 1;
      }

      else
      {
        v17 = 0;
      }

      v19 = v47 == v49.location && v48 == v49.length;
      if ((v17 & 1) != 0 || v19)
      {
        if (v17)
        {
          objc_opt_class();
          v28 = ICDynamicCast();
          v29 = [v28 attachment];
          v30 = [v29 isTable];

          if (!v30 || !v13)
          {
            goto LABEL_33;
          }

          v31 = [v13 mutableCopy];
          [v31 setStyle:3];
          goto LABEL_32;
        }
      }

      else
      {
        if (v49.location >= v39 && v49.length + v49.location < v46)
        {
          v20 = [v6 string];
          v21 = [v20 paragraphRangeForRange:{v46, 0}];
          v23 = v22;

          v24 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v46 effectiveRange:0];
          v25 = v24;
          if (v24)
          {
            v26 = v24;

            v47 = v21;
            v48 = v23;
            v13 = v26;
          }
        }

        v27 = *MEMORY[0x1E69B7600];
        if (v13)
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v43[0] = __60__ICTextController_fixModelAttributesInTextStorage_inRange___block_invoke;
          v43[1] = &unk_1E846C668;
          v44 = v13;
          v45 = v6;
          [v45 enumerateAttribute:v27 inRange:v47 options:v48 usingBlock:{0, v42}];
        }

        else
        {
          [v6 removeAttribute:*MEMORY[0x1E69B7600] range:{v47, v48}];
        }
      }

      v32 = [v6 attribute:v40 atIndex:? effectiveRange:?];
      v28 = v32;
      if (!v32)
      {
        goto LABEL_33;
      }

      v33 = [v32 baseWritingDirection];
      if (v33 == [v13 writingDirection])
      {
        goto LABEL_33;
      }

      if (v13)
      {
        v31 = [v13 mutableCopy];
      }

      else
      {
        v34 = [MEMORY[0x1E69B78C0] defaultParagraphStyle];
        v31 = [v34 mutableCopy];
      }

      [v31 setWritingDirection:{objc_msgSend(v28, "baseWritingDirection")}];
LABEL_32:
      v35 = *MEMORY[0x1E69B7600];
      v36 = [v31 copy];
      [v6 addAttribute:v35 value:v36 range:{v47, v48}];

LABEL_33:
      v12 = v48 + v47;
    }

    while (v12 < v11);
  }

  [(ICTextController *)v37 uniqueParagraphStylesInTextStorage:v6 inRange:v8, v10, v37];
  [v6 endEditing];
}

void __60__ICTextController_fixModelAttributesInTextStorage_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v14 = [v7 mutableCopy];
  v9 = [v8 uuid];

  if (v9)
  {
    [v14 setUuid:v9];
  }

  else
  {
    v10 = [*(a1 + 32) uuid];
    [v14 setUuid:v10];
  }

  v11 = *(a1 + 40);
  v12 = *MEMORY[0x1E69B7600];
  v13 = [v14 copy];
  [v11 addAttribute:v12 value:v13 range:{a3, a4}];
}

- (id)keyboardLanguageForTextView:(id)a3
{
  if (a3)
  {
    v4 = ICKeyboardLanguageForBaseView(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)attributedStringToPasteWithAdaptedParagraphStyles:(id)a3 pasteRange:(_NSRange)a4 textStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  if (![v8 length])
  {
    v19 = v8;
    goto LABEL_38;
  }

  v10 = [v8 mutableCopy];
  v60 = xmmword_1D4433FC0;
  v61 = xmmword_1D4433FC0;
  v11 = MEMORY[0x1E69B7600];
  v12 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:&v61];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_29;
  }

  v14 = [v12 style];
  if (v8 && [v8 length])
  {
    v15 = [v8 attribute:*v11 atIndex:objc_msgSend(v8 effectiveRange:{"length") - 1, &v60}];

    if (v15)
    {
      v16 = [v15 style];
      LODWORD(v17) = v16 == 3;
      if (v16 == 3 && v14 == 3)
      {
        if (NSIntersectionRange(v61, v60).length)
        {
          v18 = v60.length + v60.location - (v61.length + v61.location);
          if (v60.length + v60.location <= v61.length + v61.location)
          {
            LOBYTE(v17) = 0;
            goto LABEL_20;
          }

          v60.location = v61.length + v61.location;
          v60.length = v18;
        }

        LOBYTE(v17) = 1;
LABEL_20:
        v13 = v15;
LABEL_21:
        v20 = [v9 attribute:*v11 atIndex:location effectiveRange:0];
        if (v20)
        {
          v58 = [v8 attribute:*v11 atIndex:0 effectiveRange:0];
          v59 = v17;
          v17 = [v20 mutableCopy];
          [v17 setWritingDirection:{objc_msgSend(v58, "writingDirection")}];
          v21 = *MEMORY[0x1E69B7600];
          v22 = length;
          v23 = [v17 copy];
          v24 = v21;
          v11 = MEMORY[0x1E69B7600];
          [v10 addAttribute:v24 value:v23 range:v61];

          length = v22;
          LOBYTE(v17) = v59;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      v13 = v15;
      goto LABEL_15;
    }

    v13 = 0;
  }

  LODWORD(v17) = 0;
LABEL_15:
  if (v14 == 3)
  {
    goto LABEL_21;
  }

  if (v17)
  {
LABEL_24:
    v25 = length - 1;
    if (!length)
    {
      v25 = 0;
    }

    v26 = [v9 attribute:*v11 atIndex:location + v25 effectiveRange:0];
    if (v26)
    {
      v27 = [v8 attribute:*v11 atIndex:objc_msgSend(v8 effectiveRange:{"length") - 1, 0}];
      v28 = [v26 mutableCopy];
      [v28 setWritingDirection:{objc_msgSend(v27, "writingDirection")}];
      v29 = *v11;
      v30 = [v28 copy];
      [v10 addAttribute:v29 value:v30 range:v60];
    }
  }

LABEL_29:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [ICTTTextStorage alloc];
    v32 = objc_alloc_init(MEMORY[0x1E696AAB0]);
    v33 = [MEMORY[0x1E696AFB0] UUID];
    v34 = [(ICTTTextStorage *)v31 initWithAttributedString:v32 replicaID:v33];

    v35 = [(ICTTTextStorage *)v34 ic_range];
    [(ICTTTextStorage *)v34 replaceCharactersInRange:v35 withAttributedString:v36, v10];
    v37 = [*MEMORY[0x1E6983060] identifier];
    v38 = [v10 ic_range];
    v40 = [(ICTTTextStorage *)v34 filteredAttributedStringForUTI:v37 range:v38, v39];
    v41 = [v40 mutableCopy];

    v42 = *v11;
    v43 = [v41 ic_range];
    [v41 removeAttribute:v42 range:{v43, v44}];
    v45 = *MEMORY[0x1E69B7630];
    v46 = [v41 ic_range];
    [v41 removeAttribute:v45 range:{v46, v47}];

    v10 = v41;
  }

  v48 = [v10 attribute:*v11 atIndex:0 effectiveRange:&v61];
  v49 = v48;
  if (v48)
  {
    if ([v48 isList])
    {
      v50 = v61.length;
      [v10 ic_range];
      if (v50 == v51)
      {
        v52 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v53 = [v10 ic_rangeByTrimmingCharactersInSet:v52 inRange:v61];
        v55 = v54;

        if (v53 != 0x7FFFFFFFFFFFFFFFLL && v55 != v61.length)
        {
          v56 = [v10 attributedSubstringFromRange:{v53, v55}];
          [v10 replaceCharactersInRange:v61 withAttributedString:v56];
        }
      }
    }
  }

  v19 = [v10 copy];

LABEL_38:

  return v19;
}

- (ICAttachmentInsertionController)attachmentInsertionController
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentInsertionController);

  return WeakRetained;
}

- (ICMentionsController)mentionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsController);

  return WeakRetained;
}

- (ICHashtagController)hashtagController
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagController);

  return WeakRetained;
}

void __43__ICTextController_updateAttachmentsInNote__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "found a non-ICTTAttachment attachment: %@", &v2, 0xCu);
}

void __43__ICTextController_updateAttachmentsInNote__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = [v4 attachment];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "attempted to update an attachment without an identifier: %@ %@", &v6, 0x16u);
}

void __47__ICTextController_toggleBlockQuoteInTextView___block_invoke_cold_1(void *a1, void *a2)
{
  [a1 blockQuoteLevel];
  [a2 blockQuoteLevel];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v3, v4, "blockQuoteLevel changed from %ld to %ld.", v5, v6, v7, v8, v9);
}

- (void)addToTagsInTextView:(void *)a1 forRange:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 ic_loggingDescription];
  v10 = [a2 ic_loggingIdentifier];
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v4, v5, "User adopted tag (%@) for inline attachment (%@)", v6, v7, v8, v9, 2u);
}

@end