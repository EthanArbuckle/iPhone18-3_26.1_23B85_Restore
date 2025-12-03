@interface ICTextController
+ (BOOL)shouldRetainFirstListStyleForFilteredAttributedSubstring:(id)substring fromRange:(_NSRange)range;
+ (double)extraBulletWidthForNumberedListWithMaxItemNumber:(id)number textFont:(id)font;
+ (double)extraWidthNeededForStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view;
+ (double)indentForStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view;
+ (id)attributedStringToPasteWithAdaptedParagraphStyles:(id)styles pasteRange:(_NSRange)range textStorage:(id)storage;
+ (id)removeBeginningListStyleIfNecessaryForAttributedString:(id)string fromTextStorage:(id)storage andRange:(_NSRange)range;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)p_setCellsInTable:(id)table fromAttributedString:(id)string textTable:(id)textTable atCellOffset:(id)offset filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard;
- (BOOL)attachmentsExistInRange:(_NSRange)range textStorage:(id)storage;
- (BOOL)canAddToTagsInTextView:(id)view forRange:(_NSRange)range;
- (BOOL)canChangeStyleForSelectedRanges:(id)ranges inTextStorage:(id)storage;
- (BOOL)canConvertInlineAttachmentToTextInTextView:(id)view forRange:(_NSRange)range;
- (BOOL)canIndentTextView:(id)view byDelta:(int64_t)delta;
- (BOOL)canIndentTextView:(id)view byDelta:(int64_t)delta forRanges:(id)ranges;
- (BOOL)containsOnlyStyle:(unsigned int)style inRange:(_NSRange)range inTextStorage:(id)storage;
- (BOOL)deleteBackwardForSpecialCasesInTextView:(id)view;
- (BOOL)deleteWordBackwardForSpecialCasesInTextView:(id)view;
- (BOOL)inlineAttachmentInTextView:(id)view atIndex:(unint64_t)index outAttachment:(id *)attachment;
- (BOOL)insertNewlineForSpecialCasesInTextView:(id)view;
- (BOOL)insertedSpaceInTextView:(id)view replacementRange:(_NSRange)range;
- (BOOL)isTodoDoneRange:(_NSRange)range inTextStorage:(id)storage;
- (BOOL)removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:(id)view textStorage:(id)storage rangeToBeDeleted:(_NSRange)deleted blockBeforeEndEditing:(id)editing;
- (BOOL)removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:(id)view textStorage:(id)storage paragraphRange:(_NSRange)range andLocation:(unint64_t)location;
- (BOOL)selectionContainsBlockQuoteAndOthers:(id)others;
- (BOOL)setDone:(BOOL)done range:(_NSRange)range inTextStorage:(id)storage;
- (ICAttachmentInsertionController)attachmentInsertionController;
- (ICAuthorHighlightsController)authorHighlightsController;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNote)note;
- (ICTextController)init;
- (_NSRange)addExtraLinesIfNeededToTextStorage:(id)storage editedRange:(_NSRange)range actualLengthIncrease:(int64_t *)increase;
- (_NSRange)cleanupTextStorage:(id)storage afterProcessingEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length changeInLengthAfterCleanup:(int64_t *)cleanup;
- (_NSRange)expandRangeToIncludeFullList:(_NSRange)list inAttributedString:(id)string;
- (_NSRange)extendedSelectionRangeForCollapsedSectionHeadingWithRange:(_NSRange)range textView:(id)view;
- (_NSRange)firstParagraphForSetListStyleRange:(_NSRange)range inTextStorage:(id)storage;
- (_NSRange)numberListsInAttributedString:(id)string inRange:(_NSRange)range;
- (id)addTableAttachmentWithNSTextTable:(id)table attributedString:(id)string filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard;
- (id)indentParagraphStyle:(id)style byAmount:(int64_t)amount;
- (id)keyboardLanguageForTextView:(id)view;
- (id)nsParagraphStyleForICTTParagraphStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view;
- (id)scaleFont:(id)font withScale:(double)scale;
- (id)strippedTypingAttributesAtStartOfParagraph:(id)paragraph atTheEndOfDocument:(BOOL)document isTyping:(BOOL)typing;
- (id)tabStopsForAttributedString:(id)string inRange:(_NSRange)range;
- (id)todoForRange:(_NSRange)range inTextStorage:(id)storage;
- (int64_t)setTextStyle:(unsigned int)style range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view;
- (int64_t)setTextStyle:(unsigned int)style removeExtraStyling:(BOOL)styling range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view;
- (int64_t)writingDirectionForRange:(_NSRange)range inTextView:(id)view inTextStorage:(id)storage;
- (unsigned)paragraphStyleForRange:(_NSRange)range inTextView:(id)view inTextStorage:(id)storage ignoreTypingAttributes:(BOOL)attributes;
- (void)addToTagsInTextView:(id)view forRange:(_NSRange)range;
- (void)convertInlineAttachmentToTextInTextView:(id)view forRange:(_NSRange)range;
- (void)convertNSTablesToICTables:(id)tables pasteboardTypes:(id)types filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard;
- (void)createToDoItemForCharacterRange:(_NSRange)range paragraphStyle:(id)style textStorage:(id)storage;
- (void)ensureUniqueParagraphStyleUUIDsInTextStorage:(id)storage range:(_NSRange)range;
- (void)filterAttachmentsForPrintingInAttributedString:(id)string traitCollection:(id)collection textContainer:(id)container;
- (void)fixListWritingDirectionInAttributedString:(id)string forListItemsInRange:(_NSRange)range;
- (void)fixModelAttributesInTextStorage:(id)storage inRange:(_NSRange)range;
- (void)fixTextStorage:(id)storage afterProcessingEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
- (void)indentRange:(_NSRange)range byAmount:(int64_t)amount inTextStorage:(id)storage textView:(id)view forceUpdateAttributes:(BOOL)attributes;
- (void)insertNewlineAtCharacterIndex:(unint64_t)index textStorage:(id)storage;
- (void)insertedText:(id)text replacementRange:(_NSRange)range inTextView:(id)view hashtagController:(id)controller mentionsController:(id)mentionsController languageHasSpaces:(BOOL)spaces parentAttachment:(id)attachment;
- (void)p_populateTable:(id)table withNSTextTable:(id)textTable attributedString:(id)string filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard;
- (void)refreshTextStylingForTextStorage:(id)storage withTextController:(id)controller;
- (void)refreshTypingAttributesForAllTextViewsOfTextStorage:(id)storage;
- (void)refreshTypingAttributesForTextView:(id)view textStorage:(id)storage;
- (void)removeFontsAndColorsForRange:(_NSRange)range inTextStorage:(id)storage;
- (void)resetTrackedToDoParagraphs;
- (void)scaleFontPointSize:(double)size range:(_NSRange)range inTextStorage:(id)storage;
- (void)setNote:(id)note stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering withLayoutManager:(id)manager traitCollection:(id)collection firstVisibleCharLocation:(unint64_t)location;
- (void)setParagraphWritingDirectionInRange:(_NSRange)range toDirection:(int64_t)direction inTextView:(id)view;
- (void)setSelectionToIndex:(unint64_t)index onTextView:(id)view;
- (void)setTextAlignment:(int64_t)alignment range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view;
- (void)setTrackAddedExtraNewlineRanges:(BOOL)ranges;
- (void)setTypingAttributesForUndo:(id)undo;
- (void)setTypingTextStyle:(unsigned int)style textView:(id)view;
- (void)styleDataDetectorTypesForPreviewInTextStorage:(id)storage;
- (void)styleListsAndIndentsInAttributedString:(id)string inRange:(_NSRange)range;
- (void)superscriptDelta:(int64_t)delta range:(_NSRange)range inTextStorage:(id)storage;
- (void)superscriptUpdate:(id)update range:(_NSRange)range inTextStorage:(id)storage;
- (void)toggleBlockQuoteInTextView:(id)view;
- (void)trackExtraNewLineRangeIfNecessary:(_NSRange)necessary;
- (void)uniqueParagraphStylesInTextStorage:(id)storage inRange:(_NSRange)range;
- (void)updateAttachmentsInNote;
- (void)updateAttachmentsSelectionStateInTextStorage:(id)storage forSelectedRanges:(id)ranges layoutManager:(id)manager textView:(id)view;
- (void)updateCellInTable:(id)table atColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex fromAttributedString:(id)string andTextTableBlock:(id)block filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard;
- (void)updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:(_NSRange)range textStorage:(id)storage textView:(id)view;
- (void)updateTrackedAttributesInTextStorage:(id)storage range:(_NSRange)range changeInLength:(int64_t)length;
- (void)updateTrackedToDoParagraphsAfterIndex:(unint64_t)index byDelta:(int64_t)delta excludingSeenParagraphs:(id)paragraphs;
- (void)updateTrackingInTextStorage:(id)storage range:(_NSRange)range changeInLength:(int64_t)length;
- (void)workAroundSageTables:(id)tables;
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

- (void)convertNSTablesToICTables:(id)tables pasteboardTypes:(id)types filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard
{
  pasteboardCopy = pasteboard;
  attributesCopy = attributes;
  v48 = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  typesCopy = types;
  if (![(ICTextController *)self isConvertingTables])
  {
    [(ICTextController *)self setIsConvertingTables:1];
    v30 = typesCopy;
    if ([typesCopy containsObject:@"SFVNativePBMetaDataPBType09"])
    {
      [(ICTextController *)self workAroundSageTables:tablesCopy];
    }

    if ([tablesCopy ic_numberOfTables])
    {
      v34 = *MEMORY[0x1E69DB5F8];
      v32 = pasteboardCopy;
      selfCopy = self;
      do
      {
        v44 = 0;
        v45 = 0;
        v11 = tablesCopy;
        v12 = [tablesCopy ic_nextTableStringFromIndex:0 tableRange:&v44];
        v13 = [v12 ic_textTablesInRange:{0, objc_msgSend(v12, "length")}];
        array = [MEMORY[0x1E695DF70] array];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v13;
        reverseObjectEnumerator = [v13 reverseObjectEnumerator];
        v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v47 count:16];
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
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v20 = [(ICTextController *)self addTableAttachmentWithNSTextTable:*(*(&v40 + 1) + 8 * i) attributedString:v12 filterPastedAttributes:attributesCopy isReadingSelectionFromPasteboard:pasteboardCopy];
              if (v20)
              {
                [array addObject:v20];
              }
            }

            v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v17);
        }

        tablesCopy = v11;
        [v11 deleteCharactersInRange:{v44, v45}];
        v21 = v44;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = array;
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
              tablesCopy = v11;
              [v11 insertAttributedString:v29 atIndex:v21];
            }

            v24 = [v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v24);
        }

        pasteboardCopy = v32;
        self = selfCopy;
      }

      while ([tablesCopy ic_numberOfTables]);
    }

    [(ICTextController *)self setIsConvertingTables:0];
    typesCopy = v30;
  }
}

- (void)workAroundSageTables:(id)tables
{
  v30 = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  if ([tablesCopy ic_numberOfTables])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [tablesCopy length];
    v6 = 0;
    do
    {
      v7 = [tablesCopy ic_rangeofNextTableFromIndex:v6];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v7;
      v10 = v8;
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v7, v8}];
      [array addObject:v11];

      v6 = v9 + v10;
    }

    while (v9 + v10 < v5);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    reverseObjectEnumerator = [array reverseObjectEnumerator];
    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          rangeValue = [*(*(&v25 + 1) + 8 * v16) rangeValue];
          v19 = rangeValue + v18;
          if (rangeValue + v18 + 1 <= [tablesCopy length])
          {
            v20 = [tablesCopy attributedSubstringFromRange:{v19, 1}];
            string = [v20 string];

            if ([string characterAtIndex:0] == 10)
            {
              [tablesCopy deleteCharactersInRange:{v19, 1}];
            }
          }

          if (rangeValue)
          {
            v22 = rangeValue - 1;
            v23 = [tablesCopy attributedSubstringFromRange:{v22, 1}];
            string2 = [v23 string];

            if ([string2 characterAtIndex:0] == 10)
            {
              [tablesCopy deleteCharactersInRange:{v22, 1}];
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }
}

- (id)addTableAttachmentWithNSTextTable:(id)table attributedString:(id)string filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard
{
  pasteboardCopy = pasteboard;
  attributesCopy = attributes;
  tableCopy = table;
  stringCopy = string;
  v29 = 0;
  v12 = [stringCopy ic_numRowsForTextTable:tableCopy outNumColumns:&v29];
  v13 = 0;
  if (v12 && v29)
  {
    v14 = v12;
    note = [(ICTextController *)self note];
    currentReplicaID = [note currentReplicaID];
    v17 = currentReplicaID;
    if (currentReplicaID)
    {
      uUID = currentReplicaID;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    v19 = uUID;

    v20 = objc_alloc(MEMORY[0x1E69B78F0]);
    v21 = [v20 initWithColumnCount:v29 rowCount:v14 replicaID:v19];
    table = [v21 table];
    [(ICTextController *)self p_populateTable:table withNSTextTable:tableCopy attributedString:stringCopy filterPastedAttributes:attributesCopy isReadingSelectionFromPasteboard:pasteboardCopy];
    serialize = [v21 serialize];
    note2 = [(ICTextController *)self note];

    if (note2)
    {
      note3 = [(ICTextController *)self note];
      v26 = [note3 addTableAttachmentWithTableData:serialize];

      [v26 updateChangeCountWithReason:@"Created table from text table"];
      v13 = [ICTextAttachment textAttachmentWithAttachment:v26];
    }

    else
    {
      v27 = objc_alloc(MEMORY[0x1E69DB7F0]);
      v13 = [v27 initWithData:serialize ofType:*MEMORY[0x1E69B7458]];
    }
  }

  return v13;
}

- (void)p_populateTable:(id)table withNSTextTable:(id)textTable attributedString:(id)string filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard
{
  attributesCopy = attributes;
  v50 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  textTableCopy = textTable;
  stringCopy = string;
  v35 = [stringCopy length];
  if (v35)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v33 = stringCopy;
    v34 = *MEMORY[0x1E69DB688];
    do
    {
      v47 = 0;
      v48 = 0;
      v16 = [stringCopy attribute:v34 atIndex:v13 effectiveRange:&v47];
      textBlocks = [v16 textBlocks];
      if ([textBlocks count])
      {
        v39 = textBlocks;
        v40 = v16;
        v18 = [textBlocks objectAtIndex:0];
        table = [v18 table];

        v38 = table;
        v20 = [stringCopy rangeOfTextTable:table atIndex:v47];
        v36 = v21;
        v37 = v20;
        v22 = [stringCopy attributedSubstringFromRange:?];
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
              if (!textTableCopy || v28 == textTableCopy)
              {
                LOBYTE(v32) = pasteboard;
                v14 = [(ICTextController *)self p_setCellsInTable:tableCopy fromAttributedString:v22 textTable:v28 atCellOffset:v14 filterPastedAttributes:v15 isReadingSelectionFromPasteboard:attributesCopy, v32];
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

        stringCopy = v33;
        textBlocks = v39;
        v16 = v40;
        v30 = v38;
      }

      else
      {
        v30 = [stringCopy attributedSubstringFromRange:{v47, v48}];
        LOBYTE(v32) = pasteboard;
        v14 = [(ICTextController *)self p_setCellsInTable:tableCopy fromAttributedString:v30 textTable:0 atCellOffset:v14 filterPastedAttributes:v15 isReadingSelectionFromPasteboard:attributesCopy, v32];
        v15 = v31;
        v13 = v48 + v47;
      }
    }

    while (v13 < v35);
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)p_setCellsInTable:(id)table fromAttributedString:(id)string textTable:(id)textTable atCellOffset:(id)offset filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard
{
  attributesCopy = attributes;
  var1 = offset.var1;
  var0 = offset.var0;
  tableCopy = table;
  stringCopy = string;
  textTableCopy = textTable;
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
  v24 = [stringCopy attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:&v44];
  textBlocks = [v24 textBlocks];
  if ([textBlocks count])
  {
    v16 = [stringCopy length];
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
    v29 = textTableCopy;
    v37 = var0;
    v38 = var1;
    v30 = tableCopy;
    v33 = v14;
    v34 = v42;
    v35 = v43;
    v36 = v41;
    v31 = stringCopy;
    selfCopy = self;
    v39 = attributesCopy;
    pasteboardCopy = pasteboard;
    [v31 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v28}];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v43, 8);
  }

  else
  {
    (*(v14 + 2))(v14, var0, 1, var1, 1);
    v17 = [stringCopy attributedSubstringFromRange:{v44, v45}];
    LOBYTE(v22) = pasteboard;
    [(ICTextController *)self updateCellInTable:tableCopy atColumnIndex:var0 rowIndex:var1 fromAttributedString:v17 andTextTableBlock:0 filterPastedAttributes:attributesCopy isReadingSelectionFromPasteboard:v22];
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

- (void)updateCellInTable:(id)table atColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex fromAttributedString:(id)string andTextTableBlock:(id)block filterPastedAttributes:(BOOL)attributes isReadingSelectionFromPasteboard:(BOOL)pasteboard
{
  attributesCopy = attributes;
  tableCopy = table;
  stringCopy = string;
  ic_stringWithoutAttachments = stringCopy;
  if ([stringCopy containsAttachmentsInRange:{0, objc_msgSend(stringCopy, "length")}])
  {
    ic_stringWithoutAttachments = [stringCopy ic_stringWithoutAttachments];
  }

  v16 = [tableCopy textStorageForCellAtColumnIndex:index rowIndex:rowIndex];
  [v16 setStyler:self];
  [v16 setFilterPastedAttributes:attributesCopy];
  [v16 setIsReadingSelectionFromPasteboard:pasteboard];
  [v16 setConvertAttributes:1];
  [v16 setIsReadingSelectionFromPasteboard:1];
  [v16 setWantsUndoCommands:0];
  [v16 beginEditing];
  [v16 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v16, "length"), ic_stringWithoutAttachments}];
  [v16 endEditing];
  [v16 fixupAfterEditing];
}

- (unsigned)paragraphStyleForRange:(_NSRange)range inTextView:(id)view inTextStorage:(id)storage ignoreTypingAttributes:(BOOL)attributes
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v11 = storageCopy;
  if (length || !view || attributes)
  {
    string = [storageCopy string];
    v16 = [string paragraphRangeForRange:{location, length}];

    if (v16 >= [v11 length])
    {
      style = 3;
      goto LABEL_11;
    }

    v13 = [v11 attribute:*MEMORY[0x1E69B7600] atIndex:v16 effectiveRange:0];
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    style = 3;
    goto LABEL_9;
  }

  typingAttributes = [view typingAttributes];
  v13 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  style = [v13 style];
LABEL_9:

LABEL_11:
  return style;
}

- (int64_t)writingDirectionForRange:(_NSRange)range inTextView:(id)view inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  storageCopy = storage;
  if (location < [storageCopy length])
  {
    v10 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    _isNaturallyRTL = -1;
    goto LABEL_10;
  }

  typingAttributes = [viewCopy typingAttributes];
  v10 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([v10 writingDirection] == -1)
  {
    string = [storageCopy string];
    v14 = string;
    if (!length)
    {
      location = [string lineRangeForRange:{location, 0}];
      length = v15;
    }

    v16 = [v14 substringWithRange:{location, length}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v18 = [v16 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    _isNaturallyRTL = [v18 _isNaturallyRTL];
  }

  else
  {
    _isNaturallyRTL = [v10 writingDirection];
  }

LABEL_10:

  return _isNaturallyRTL;
}

- (BOOL)attachmentsExistInRange:(_NSRange)range textStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
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
  [storageCopy enumerateAttribute:v7 inRange:location options:length usingBlock:{0x100000, v9}];
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

- (BOOL)canIndentTextView:(id)view byDelta:(int64_t)delta
{
  viewCopy = view;
  ic_selectedRanges = [viewCopy ic_selectedRanges];
  LOBYTE(delta) = [(ICTextController *)self canIndentTextView:viewCopy byDelta:delta forRanges:ic_selectedRanges];

  return delta;
}

- (BOOL)canIndentTextView:(id)view byDelta:(int64_t)delta forRanges:(id)ranges
{
  v52 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  rangesCopy = ranges;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  textStorage = [viewCopy textStorage];
  if ([textStorage length])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = rangesCopy;
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
        string = [textStorage string];
        rangeValue = [v10 rangeValue];
        v14 = [string ic_rangeIsValid:{rangeValue, v13}];

        if (v14)
        {
          string2 = [textStorage string];
          rangeValue2 = [v10 rangeValue];
          v18 = [string2 paragraphRangeForRange:{rangeValue2, v17}];
          v20 = v19;
        }

        else
        {
          v20 = 0;
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if ([(ICTextController *)self attachmentsExistInRange:v18 textStorage:v20, textStorage])
        {
          *(v48 + 24) = 0;
          goto LABEL_35;
        }

        v21 = v18;
        while (1)
        {
          v41 = v21;
          v42 = 1;
          if (v21 >= [textStorage length])
          {
            typingAttributes = [viewCopy typingAttributes];
            v22 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
          }

          else
          {
            v22 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:v21 longestEffectiveRange:&v41 inRange:{v18, v20}];
          }

          if (v22)
          {
            if ([v22 canIndent] && (delta > 0 || delta < 0 && objc_msgSend(v22, "indent")))
            {
              goto LABEL_24;
            }
          }

          else if (delta >= 1)
          {
            goto LABEL_24;
          }

          if ([v22 style] == 4)
          {
            if (delta < 1)
            {
              whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              string3 = [textStorage string];
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __56__ICTextController_canIndentTextView_byDelta_forRanges___block_invoke;
              v37[3] = &unk_1E846C160;
              v28 = whitespaceCharacterSet;
              v38 = v28;
              v39 = textStorage;
              v40 = &v47;
              [string3 ic_enumerateParagraphsInRange:v41 usingBlock:{v42, v37}];

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

- (id)indentParagraphStyle:(id)style byAmount:(int64_t)amount
{
  styleCopy = style;
  v6 = styleCopy;
  if (styleCopy)
  {
    v7 = styleCopy;
    if (![styleCopy canIndent])
    {
      goto LABEL_11;
    }

    v8 = [v6 mutableCopy];
    v9 = [v8 indent] + amount;
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
    if (amount < 1)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];
    [v8 setIndent:amount];
    v7 = [v8 copy];
  }

LABEL_11:

  return v7;
}

- (void)indentRange:(_NSRange)range byAmount:(int64_t)amount inTextStorage:(id)storage textView:(id)view forceUpdateAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  viewCopy = view;
  [storageCopy beginEditing];
  string = [storageCopy string];
  v41 = location;
  v43 = length;
  v14 = [string paragraphRangeForRange:{location, length}];
  v16 = v15;

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__47;
  v65 = __Block_byref_object_dispose__47;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__47;
  v59 = __Block_byref_object_dispose__47;
  array = [MEMORY[0x1E695DF70] array];
  v17 = *MEMORY[0x1E69B7600];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __86__ICTextController_indentRange_byAmount_inTextStorage_textView_forceUpdateAttributes___block_invoke;
  v50[3] = &unk_1E846C1B0;
  v50[4] = self;
  v18 = storageCopy;
  v51 = v18;
  v52 = &v61;
  v53 = &v55;
  amountCopy = amount;
  [v18 ic_enumerateClampedAttribute:v17 inRange:v14 options:v16 usingBlock:{0, v50}];
  amountCopy2 = amount;
  selfCopy = self;
  v21 = v43;
  if ([v62[5] count] || objc_msgSend(v56[5], "count")) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    mergeableString = [v18 mergeableString];
    ic_selectedRanges = [viewCopy ic_selectedRanges];
    v24 = [mergeableString selectionForCharacterRanges:ic_selectedRanges selectionAffinity:amountCopy2 > 0];
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
  v49 = amountCopy2;
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
  if (!v43 || attributesCopy)
  {
    typingAttributes = [viewCopy typingAttributes];
    v35 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    v36 = [(ICTextController *)self indentParagraphStyle:v35 byAmount:amountCopy2];
    if (v36 != v35)
    {
      v37 = [typingAttributes mutableCopy];
      [v37 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69B7600]];
      if (v41 >= [v28 length] && objc_msgSend(v28, "length"))
      {
        v21 = 0;
        v41 = [v28 length] - 1;
      }

      viewCopy = [(ICTextController *)selfCopy nsParagraphStyleForICTTParagraphStyle:v36 range:v41 attributedString:v21 textView:v28, viewCopy];
      if (viewCopy)
      {
        [v37 setObject:viewCopy forKeyedSubscript:*MEMORY[0x1E69DB688]];
      }

      else
      {
        [v37 removeObjectForKey:*MEMORY[0x1E69DB688]];
      }

      [viewCopy setTypingAttributes:v37];
    }

    if (v24)
    {
      goto LABEL_9;
    }

LABEL_19:
    selectedRange = [viewCopy selectedRange];
    [viewCopy setSelectedRange:{selectedRange, v40}];
    goto LABEL_20;
  }

  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_9:
  mergeableString2 = [v28 mergeableString];
  v30 = [mergeableString2 characterRangesForSelection:v24];
  firstObject = [v30 firstObject];
  rangeValue = [firstObject rangeValue];
  [viewCopy setSelectedRange:{rangeValue, v33}];

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

- (id)todoForRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__47;
  v20 = __Block_byref_object_dispose__47;
  v21 = 0;
  if (location < [storageCopy length])
  {
    v24.length = [storageCopy length];
    v23.location = location;
    v23.length = length;
    v24.location = 0;
    v7 = NSIntersectionRange(v23, v24);
    string = [storageCopy string];
    v9 = [string paragraphRangeForRange:{v7.location, v7.length}];
    v11 = v10;

    v12 = *MEMORY[0x1E69B7600];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__ICTextController_todoForRange_inTextStorage___block_invoke;
    v15[3] = &unk_1E846A0D0;
    v15[4] = &v16;
    [storageCopy enumerateAttribute:v12 inRange:v9 options:v11 usingBlock:{0, v15}];
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

- (_NSRange)firstParagraphForSetListStyleRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  string = [storageCopy string];
  v8 = [string paragraphRangeForRange:{location, length}];
  v10 = v9;

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];

  string2 = [storageCopy string];
  v14 = [string2 rangeOfCharacterFromSet:invertedSet options:0 range:{v8, v10}];
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

  string3 = [storageCopy string];

  v19 = [string3 paragraphRangeForRange:{v8, v17}];
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (BOOL)canChangeStyleForSelectedRanges:(id)ranges inTextStorage:(id)storage
{
  rangesCopy = ranges;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  storageCopy = storage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__ICTextController_canChangeStyleForSelectedRanges_inTextStorage___block_invoke;
  v10[3] = &unk_1E846C278;
  v7 = storageCopy;
  v11 = v7;
  v12 = &v13;
  [rangesCopy enumerateObjectsUsingBlock:v10];
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

- (int64_t)setTextStyle:(unsigned int)style range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view
{
  length = range.length;
  location = range.location;
  v9 = *&style;
  storageCopy = storage;
  viewCopy = view;
  [storageCopy beginEditing];
  viewCopy = [(ICTextController *)self setTextStyle:v9 removeExtraStyling:ICTTNamedStyleIsList() ^ 1 range:location inTextStorage:length inTextView:storageCopy, viewCopy];
  if ([storageCopy editedRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
    string = [storageCopy string];
    v15 = [string paragraphRangeForRange:{location, length}];
    v17 = v16;

    [storageCopy removeAttribute:*MEMORY[0x1E69B75E8] range:{v15, v17}];
    [storageCopy removeAttribute:*MEMORY[0x1E69B7620] range:{v15, v17}];
    [storageCopy removeAttribute:*MEMORY[0x1E69B7608] range:{v15, v17}];
    [storageCopy removeAttribute:*MEMORY[0x1E69B7610] range:{v15, v17}];
    [storageCopy removeAttribute:*MEMORY[0x1E69B75D8] range:{v15, v17}];
    [storageCopy removeAttribute:*MEMORY[0x1E69DB670] range:{v15, v17}];
    v18 = *MEMORY[0x1E69B7600];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__ICTextController_setTextStyle_range_inTextStorage_inTextView___block_invoke;
    v26[3] = &unk_1E846C2A0;
    v27 = storageCopy;
    [v27 enumerateAttribute:v18 inRange:location options:length usingBlock:{0x100000, v26}];
  }

  [storageCopy endEditing];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    string2 = [storageCopy string];
    v20 = [string2 paragraphRangeForRange:{location, length}];

    if (v20)
    {
      v21 = v20 - 1;
    }

    else
    {
      v21 = 0;
    }

    textLayoutManager = [viewCopy textLayoutManager];
    v23 = [textLayoutManager ic_textRangeForRange:{v21, 1}];

    textLayoutManager2 = [viewCopy textLayoutManager];
    [textLayoutManager2 invalidateLayoutForRange:v23];
  }

  return viewCopy;
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

- (BOOL)containsOnlyStyle:(unsigned int)style inRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v9 = [MEMORY[0x1E69B7AD0] range:location liesWithinRange:length assert:{0, objc_msgSend(storageCopy, "length"), 1}];
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
    styleCopy = style;
    v16 = storageCopy;
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

- (void)setTextAlignment:(int64_t)alignment range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  viewCopy = view;
  [storageCopy beginEditing];
  string = [storageCopy string];
  v13 = [string paragraphRangeForRange:{location, length}];
  v15 = v14;

  v16 = *MEMORY[0x1E69B7600];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __68__ICTextController_setTextAlignment_range_inTextStorage_inTextView___block_invoke;
  v27 = &unk_1E846C2F0;
  alignmentCopy = alignment;
  v17 = storageCopy;
  v28 = v17;
  [v17 enumerateAttribute:v16 inRange:v13 options:v15 usingBlock:{0x100000, &v24}];
  [v17 endEditing];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    string2 = [v17 string];
    v19 = [string2 paragraphRangeForRange:{location, length}];

    if (v19)
    {
      v20 = v19 - 1;
    }

    else
    {
      v20 = 0;
    }

    textLayoutManager = [viewCopy textLayoutManager];
    v22 = [textLayoutManager ic_textRangeForRange:{v20, 1}];

    textLayoutManager2 = [viewCopy textLayoutManager];
    [textLayoutManager2 invalidateLayoutForRange:v22];
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

- (void)removeFontsAndColorsForRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
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
  [storageCopy enumerateAttribute:v8 inRange:location options:length usingBlock:{0x100000, v12}];
  v9 = MEMORY[0x1E69B75F0];
  if (v14[3] & 1) != 0 || (v10 = *MEMORY[0x1E69B75F0], v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __63__ICTextController_removeFontsAndColorsForRange_inTextStorage___block_invoke_2, v11[3] = &unk_1E846A0D0, v11[4] = &v13, [storageCopy enumerateAttribute:v10 inRange:location options:length usingBlock:{0x100000, v11}], (v14[3]))
  {
    [storageCopy removeAttribute:*v7 range:{location, length}];
    [storageCopy removeAttribute:*v9 range:{location, length}];
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

- (void)updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:(_NSRange)range textStorage:(id)storage textView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  v9 = [(ICTextController *)self keyboardLanguageForTextView:viewCopy];
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

  -[ICTextController setParagraphWritingDirectionInRange:toDirection:inTextView:](self, "setParagraphWritingDirectionInRange:toDirection:inTextView:", location, length, [v12 defaultWritingDirectionForLanguage:v11], viewCopy);
}

- (int64_t)setTextStyle:(unsigned int)style removeExtraStyling:(BOOL)styling range:(_NSRange)range inTextStorage:(id)storage inTextView:(id)view
{
  length = range.length;
  location = range.location;
  stylingCopy = styling;
  v11 = *&style;
  storageCopy = storage;
  viewCopy = view;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__47;
  v54 = __Block_byref_object_dispose__47;
  v55 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:v11];
  string = [storageCopy string];
  v16 = [string paragraphRangeForRange:{location, length}];
  v18 = v17;

  v35 = viewCopy;
  if ([v51[5] wantsFollowingNewLine] && v16 == objc_msgSend(storageCopy, "length"))
  {
    [storageCopy breakUndoCoalescing];
    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [storageCopy replaceCharactersInRange:v16 withAttributedString:{v18, v19}];

    v18 = 1;
    [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v16, 1];
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  isList = [v51[5] isList];
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
  if (isList)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];

    string2 = [storageCopy string];
    v26 = [string2 rangeOfCharacterFromSet:invertedSet options:0 range:{v16, v18}];

    v27 = v26 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
    invertedSet = 0;
  }

  [storageCopy beginEditing];
  string3 = [storageCopy string];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __83__ICTextController_setTextStyle_removeExtraStyling_range_inTextStorage_inTextView___block_invoke;
  v36[3] = &unk_1E846C318;
  v43 = isList;
  v44 = v27;
  v29 = storageCopy;
  v37 = v29;
  v30 = invertedSet;
  v42 = v11;
  v45 = stylingCopy;
  v46 = v22;
  v38 = v30;
  v39 = v47;
  v40 = v49;
  v41 = &v50;
  [string3 ic_enumerateParagraphsInRange:v16 usingBlock:{v18, v36}];

  if (stylingCopy)
  {
    [v33 removeFontsAndColorsForRange:v16 inTextStorage:{v18, v29}];
  }

  [v29 endEditing];
  [v29 breakUndoCoalescing];
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard removeAutocorrectPrompt];

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

- (void)setTypingAttributesForUndo:(id)undo
{
  v14[2] = *MEMORY[0x1E69E9840];
  undoCopy = undo;
  v5 = [undoCopy objectForKeyedSubscript:@"View"];
  v6 = [undoCopy objectForKeyedSubscript:@"Attrs"];

  note = [(ICTextController *)self note];
  textStorage = [note textStorage];
  undoManager = [textStorage undoManager];

  v13[0] = @"Attrs";
  typingAttributes = [v5 typingAttributes];
  v13[1] = @"View";
  v14[0] = typingAttributes;
  v14[1] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [undoManager registerUndoWithTarget:self selector:sel_setTypingAttributesForUndo_ object:v11];

  v12 = __ICLocalizedFrameworkString_impl(@"Style Change", @"Style Change", 0, 1);
  [undoManager setActionName:v12];

  [v5 setTypingAttributes:v6];
}

- (void)setTypingTextStyle:(unsigned int)style textView:(id)view
{
  v4 = *&style;
  v38[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  typingAttributes = [viewCopy typingAttributes];
  v8 = [typingAttributes mutableCopy];

  v9 = MEMORY[0x1E69B7600];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  IsList = ICTTNamedStyleIsList();
  note = [(ICTextController *)self note];
  textStorage = [note textStorage];
  wantsUndoCommands = [textStorage wantsUndoCommands];

  if (wantsUndoCommands)
  {
    note2 = [(ICTextController *)self note];
    textStorage2 = [note2 textStorage];
    undoManager = [textStorage2 undoManager];

    v37[0] = @"Attrs";
    typingAttributes2 = [viewCopy typingAttributes];
    v37[1] = @"View";
    v38[0] = typingAttributes2;
    v38[1] = viewCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [undoManager registerUndoWithTarget:self selector:sel_setTypingAttributesForUndo_ object:v19];

    v9 = MEMORY[0x1E69B7600];
    v20 = __ICLocalizedFrameworkString_impl(@"Style Change", @"Style Change", 0, 1);
    [undoManager setActionName:v20];
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
    typingAttributes3 = [viewCopy typingAttributes];
    v26 = MEMORY[0x1E69B75E0];
    v27 = [typingAttributes3 objectForKeyedSubscript:*MEMORY[0x1E69B75E0]];
    [v8 setObject:v27 forKeyedSubscript:*v26];

    typingAttributes4 = [viewCopy typingAttributes];
    v29 = *MEMORY[0x1E69DB648];
    v30 = [typingAttributes4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    [v8 setObject:v30 forKeyedSubscript:v29];

    typingAttributes5 = [viewCopy typingAttributes];
    v32 = MEMORY[0x1E69B75F0];
    v33 = [typingAttributes5 objectForKeyedSubscript:*MEMORY[0x1E69B75F0]];
    [v8 setObject:v33 forKeyedSubscript:*v32];

    typingAttributes6 = [viewCopy typingAttributes];
    v35 = *MEMORY[0x1E69DB650];
    v36 = [typingAttributes6 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    [v8 setObject:v36 forKeyedSubscript:v35];
  }

  [viewCopy setTypingAttributes:v8];
}

- (BOOL)setDone:(BOOL)done range:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  doneCopy = done;
  storageCopy = storage;
  v43.length = [storageCopy length];
  v42.location = location;
  v42.length = length;
  v43.location = 0;
  v9 = NSIntersectionRange(v42, v43);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  string = [storageCopy string];
  [string getParagraphStart:&v41 end:&v40 contentsEnd:&v39 forRange:{v9.location, v9.length}];

  v11 = doneCopy;
  v12 = v41;
  if (v41 != v39)
  {
    LODWORD(doneCopy) = 0;
  }

  if ((doneCopy & 1) == 0)
  {
    HIDWORD(v35) = doneCopy;
    v13 = v40;
    objc_opt_class();
    v14 = ICDynamicCast();
    [v14 setHasUserEditSinceFixupAfterEditing:1];

    [storageCopy beginEditing];
    if (v13 > v12)
    {
      v15 = MEMORY[0x1E69B7600];
      v16 = v12;
      LODWORD(v35) = v11;
      do
      {
        v37 = 0;
        v38 = 0;
        v17 = [storageCopy attribute:*v15 atIndex:v16 longestEffectiveRange:&v37 inRange:{v12, v13 - v12, v35}];
        v18 = v17;
        if (v17)
        {
          if ([v17 style] == 103)
          {
            todo = [v18 todo];
            if (todo)
            {
              v20 = todo;
              todo2 = [v18 todo];
              v22 = v15;
              done = [todo2 done];

              v24 = done == v11;
              v15 = v22;
              if (!v24)
              {
                v25 = [v18 mutableCopy];
                todo3 = [v25 todo];
                v27 = [todo3 todoWithDone:v11];
                [v25 setTodo:v27];

                note = [(ICTextController *)self note];
                LOBYTE(v27) = objc_opt_respondsToSelector();

                if (v27)
                {
                  note2 = [(ICTextController *)self note];
                  note3 = [(ICTextController *)self note];
                  todo4 = [v25 todo];
                  v32 = [note2 persistToggleChecklistItemActivityEventForObject:note3 todo:todo4];

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

    [storageCopy endEditing];
    LOBYTE(doneCopy) = BYTE4(v35);
  }

  return doneCopy ^ 1;
}

- (void)refreshTypingAttributesForAllTextViewsOfTextStorage:(id)storage
{
  v15 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  textViews = [storageCopy textViews];
  v6 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(textViews);
        }

        [(ICTextController *)self refreshTypingAttributesForTextView:*(*(&v10 + 1) + 8 * v9++) textStorage:storageCopy];
      }

      while (v7 != v9);
      v7 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)refreshTypingAttributesForTextView:(id)view textStorage:(id)storage
{
  if (view)
  {
    storageCopy = storage;
    viewCopy = view;
    selectedRange = [viewCopy selectedRange];
    v10 = v9;
    typingAttributes = [viewCopy typingAttributes];
    storageCopy = [(ICTTTextController *)self typingAttributesForRange:selectedRange forSelectionChange:v10 currentTypingAttributes:1 inTextStorage:typingAttributes, storageCopy];

    [viewCopy setTypingAttributes:storageCopy];
  }
}

- (BOOL)isTodoDoneRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  string = [storageCopy string];
  v8 = [string paragraphRangeForRange:{location, length}];
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
  [storageCopy enumerateAttribute:v11 inRange:v8 options:v10 usingBlock:{0, v13}];
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

- (void)scaleFontPointSize:(double)size range:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [storageCopy beginEditing];
  v10 = *MEMORY[0x1E69DB648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__ICTextController_scaleFontPointSize_range_inTextStorage___block_invoke;
  v12[3] = &unk_1E846C340;
  sizeCopy = size;
  v12[4] = self;
  v13 = storageCopy;
  v11 = storageCopy;
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

- (id)scaleFont:(id)font withScale:(double)scale
{
  fontCopy = font;
  [fontCopy pointSize];
  scale = [fontCopy fontWithSize:v6 * scale];

  return scale;
}

- (void)superscriptUpdate:(id)update range:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  updateCopy = update;
  storageCopy = storage;
  [storageCopy beginEditing];
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
  v12 = updateCopy;
  v20 = v12;
  v13 = storageCopy;
  v21 = v22;
  v18 = v13;
  selfCopy = self;
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

- (void)superscriptDelta:(int64_t)delta range:(_NSRange)range inTextStorage:(id)storage
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__ICTextController_superscriptDelta_range_inTextStorage___block_invoke;
  v5[3] = &__block_descriptor_40_e8_q16__0q8l;
  v5[4] = delta;
  [(ICTextController *)self superscriptUpdate:v5 range:range.location inTextStorage:range.length, storage];
}

- (id)nsParagraphStyleForICTTParagraphStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view
{
  length = range.length;
  location = range.location;
  v48[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  stringCopy = string;
  viewCopy = view;
  if (([styleCopy isList] & 1) != 0 || location >= objc_msgSend(stringCopy, "length") || (objc_msgSend(stringCopy, "attribute:atIndex:effectiveRange:", *MEMORY[0x1E69DB5F8], location, 0), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = -[ICTTTextController preferredAttributesForICTTTextStyle:](self, "preferredAttributesForICTTTextStyle:", [styleCopy style]);
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    v16 = [v17 mutableCopy];
  }

  else
  {
    v15 = [stringCopy attribute:*MEMORY[0x1E69DB688] atIndex:location effectiveRange:0];
    v16 = [v15 mutableCopy];
  }

  [v16 setAlignment:{objc_msgSend(styleCopy, "alignment")}];
  [v16 setBaseWritingDirection:{objc_msgSend(styleCopy, "writingDirection")}];
  if ([styleCopy isList])
  {
    if (!ICInternalSettingsIsTextKit2Enabled() || [(ICTTTextController *)self isInPreviewMode]|| [(ICTextController *)self isForPrint])
    {
      if ([styleCopy style] == 103)
      {
        zoomController = [(ICTTTextController *)self zoomController];
        [zoomController checklistZoomFactor];
        v20 = 5.0 * v19;

        [v16 setParagraphSpacingBefore:v20];
        [v16 setParagraphSpacing:v20];
      }
    }

    else if ([styleCopy style] == 103)
    {
      v25 = objc_alloc(MEMORY[0x1E69DB838]);
      v26 = [v25 initWithMarkerFormat:*MEMORY[0x1E69DB708] options:0];
      v27 = [ICTK2TodoTextAttachment alloc];
      todo = [styleCopy todo];
      v29 = [(ICTK2TodoTextAttachment *)v27 initWithTodo:todo];
      [v26 setMarkerTextAttachment:v29];

      v48[0] = v26;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      [v16 setTextLists:v30];

      zoomController2 = [(ICTTTextController *)self zoomController];
      [zoomController2 checklistZoomFactor];
      v33 = 3.5 * v32;

      [v16 setParagraphSpacingBefore:v33];
      [v16 setParagraphSpacing:v33];
    }

    else if ([styleCopy style] == 100)
    {
      v34 = objc_alloc(MEMORY[0x1E69DB838]);
      v35 = [v34 initWithMarkerFormat:*MEMORY[0x1E69DB708] options:0];
      v36 = [stringCopy attribute:*MEMORY[0x1E69DB648] atIndex:location effectiveRange:0];
      zoomController3 = [(ICTTTextController *)self zoomController];
      [zoomController3 zoomFactor];
      v38 = [ICTTTextStorage bulletTextAttributesWithTextFont:v36 paragraphStyle:styleCopy zoomFactor:?];

      v39 = [styleCopy listBulletInAttributedString:stringCopy atIndex:location];
      v40 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v39 attributes:v38];
      v41 = [[ICTK2BulletTextAttachment alloc] initWithMarker:v40];
      [v35 setMarkerTextAttachment:v41];

      v47 = v35;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v16 setTextLists:v42];
    }

    else
    {
      v43 = [styleCopy listBulletInAttributedString:stringCopy atIndex:location];
      v44 = [objc_alloc(MEMORY[0x1E69DB838]) initWithMarkerFormat:v43 options:0];
      v46 = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [v16 setTextLists:v45];
    }
  }

  else if ([(ICTextController *)self shouldUpdateIndentFor:styleCopy])
  {
    [objc_opt_class() indentForStyle:styleCopy range:location attributedString:length textView:{stringCopy, viewCopy}];
    v22 = v21;
    [v16 setHeadIndent:?];
    [v16 setFirstLineHeadIndent:v22];
  }

  v23 = [v16 copy];

  return v23;
}

- (id)tabStopsForAttributedString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v38[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v8 = stringCopy;
  if (length && ([stringCopy string], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "ic_rangeIsValid:", location, length), v9, v10))
  {
    v11 = [v8 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    if ([v8 length])
    {
      zoomController = [(ICTTTextController *)self zoomController];
      [zoomController checklistZoomFactor];
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
        zoomController2 = [(ICTTTextController *)self zoomController];
        [zoomController2 zoomFactor];
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

- (void)fixTextStorage:(id)storage afterProcessingEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [storageCopy beginEditing];
  [storageCopy setDisableUndoCoalesceBreaking:1];
  v18 = 0;
  v12 = [(ICTextController *)self cleanupTextStorage:storageCopy afterProcessingEditing:editing range:location changeInLength:length changeInLengthAfterCleanup:length, &v18];
  v14 = v13;
  if ([(ICTextController *)self disableAddingExtraLinesIfNeeded])
  {
    v15 = v18;
  }

  else
  {
    v17 = 0;
    v12 = [(ICTextController *)self addExtraLinesIfNeededToTextStorage:storageCopy editedRange:v12 actualLengthIncrease:v14, &v17];
    v14 = v16;
    v15 = v18 + v17;
    v18 += v17;
  }

  [(ICTextController *)self updateTrackingInTextStorage:storageCopy range:v12 changeInLength:v14, v15];
  [storageCopy setDisableUndoCoalesceBreaking:0];
  [storageCopy endEditing];
}

- (void)ensureUniqueParagraphStyleUUIDsInTextStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v78 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v7 = [MEMORY[0x1E695DFA8] set];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
  string = [storageCopy string];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __71__ICTextController_ensureUniqueParagraphStyleUUIDsInTextStorage_range___block_invoke;
  v65[3] = &unk_1E846C3F8;
  v50 = storageCopy;
  v66 = v50;
  v54 = dictionary;
  v67 = v54;
  v53 = dictionary2;
  v68 = v53;
  v70 = v72;
  v71 = v74;
  v48 = v7;
  v69 = v48;
  [string ic_enumerateParagraphsInRange:location usingBlock:{length, v65}];

  if ([v54 count])
  {
    allKeys = [v54 allKeys];
    v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_89];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
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
          rangeValue = [v19 rangeValue];
          v22 = v21;
          v23 = [v54 objectForKeyedSubscript:v19];
          v24 = v23;
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (rangeValue == v17 + v15 && [v23 isEqual:v13])
            {
              v79.location = v17;
              v79.length = v15;
              v80.location = rangeValue;
              v80.length = v22;
              v25 = NSUnionRange(v79, v80);
              v17 = v25.location;
              v15 = v25.length;
              goto LABEL_13;
            }

            v26 = [MEMORY[0x1E696B098] valueWithRange:{v17, v15}];
            [dictionary3 setObject:v13 forKeyedSubscript:v26];
          }

          v27 = v24;

          v13 = v27;
          v15 = v22;
          v17 = rangeValue;
LABEL_13:
        }

        v14 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (!v14)
        {

          if (v17 != 0x7FFFFFFFFFFFFFFFLL && v13)
          {
            v28 = [MEMORY[0x1E696B098] valueWithRange:{v17, v15}];
            [dictionary3 setObject:v13 forKeyedSubscript:v28];
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
    [dictionary3 enumerateKeysAndObjectsUsingBlock:v59];
    [v30 endEditing];
    [v29 endSkippingTimestampUpdates];
  }

  note = [(ICTextController *)self note];
  textContentStorage = [note textContentStorage];
  outlineController = [textContentStorage outlineController];
  collapsedUUIDs = [outlineController collapsedUUIDs];
  v35 = [collapsedUUIDs mutableCopy];

  v36 = MEMORY[0x1E695DFA8];
  allKeys2 = [v53 allKeys];
  v38 = [v36 setWithArray:allKeys2];

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

    note2 = [(ICTextController *)self note];
    textContentStorage2 = [note2 textContentStorage];
    outlineController2 = [textContentStorage2 outlineController];
    [outlineController2 setCollapsedUUIDs:v35];
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

- (void)updateTrackingInTextStorage:(id)storage range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [(ICTextController *)self updateAttachmentsInNote];
  [(ICTextController *)self updateTrackedAttributesInTextStorage:storageCopy range:location changeInLength:length, length];
  if ([storageCopy hasUserEditSinceFixupAfterEditing])
  {
    ic_range = [storageCopy ic_range];
    [(ICTextController *)self ensureUniqueParagraphStyleUUIDsInTextStorage:storageCopy range:ic_range, v10];
  }
}

- (void)updateAttachmentsInNote
{
  v7 = *MEMORY[0x1E69E9840];
  note = [self note];
  loggingDescription = [note loggingDescription];
  v5 = 138412290;
  v6 = loggingDescription;
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

- (void)updateAttachmentsSelectionStateInTextStorage:(id)storage forSelectedRanges:(id)ranges layoutManager:(id)manager textView:(id)view
{
  rangesCopy = ranges;
  managerCopy = manager;
  v10 = *MEMORY[0x1E69DB5F8];
  storageCopy = storage;
  v12 = [storageCopy length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__ICTextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_layoutManager_textView___block_invoke;
  v15[3] = &unk_1E8469E68;
  v16 = rangesCopy;
  v17 = managerCopy;
  v13 = managerCopy;
  v14 = rangesCopy;
  [storageCopy enumerateAttribute:v10 inRange:0 options:v12 usingBlock:{0, v15}];
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

- (_NSRange)cleanupTextStorage:(id)storage afterProcessingEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length changeInLengthAfterCleanup:(int64_t *)cleanup
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v44 = 0;
  v45 = 0;
  if ([storageCopy length])
  {
    cleanupCopy = cleanup;
    v42 = location;
    v12 = 0;
    v13 = 0;
    v14 = MEMORY[0x1E69B7600];
    do
    {
      v15 = v12;
      v12 = [storageCopy attribute:*v14 atIndex:v13 longestEffectiveRange:&v44 inRange:{0, objc_msgSend(storageCopy, "length")}];

      if ([v12 needsParagraphCleanup])
      {
        string = [storageCopy string];
        v17 = [string paragraphRangeForRange:{v44, v45}];
        v19 = v18;

        if (v17 == v44 && v19 == v45)
        {
          v20 = [v12 mutableCopy];
          [v20 setNeedsParagraphCleanup:0];
          [storageCopy addAttribute:*v14 value:v20 range:{v44, v45}];
        }

        else
        {
          v20 = storageCopy;
          convertAttributes = [v20 convertAttributes];
          [v20 setConvertAttributes:0];
          [v20 removeAttribute:*v14 range:{v44, v45}];
          [(ICTTTextController *)self styleText:v20 inExactRange:v44 fixModelAttributes:v45, 1];
          if (convertAttributes)
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
          string2 = [storageCopy string];
          v26 = [string2 paragraphRangeForRange:{v23, 0}];
          v28 = v27;

          string3 = [storageCopy string];
          v30 = [v22 rangeOfFirstMatchInString:string3 options:4 range:{v26, v28}];
          v32 = v31;

          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = v26 + v28;
            v33 = v45;
          }

          else
          {
            [storageCopy deleteCharactersInRange:{v30, v32}];
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
            v35 = (length - v34) & ~((length - v34) >> 63);
            if (length > 0)
            {
              length = v35;
            }

            v23 = v26 + v28 - v32;
          }
        }

        v36 = [v12 mutableCopy];
        [v36 setNeedsListCleanup:0];
        v14 = MEMORY[0x1E69B7600];
        v37 = *MEMORY[0x1E69B7600];
        v38 = [v36 copy];
        [storageCopy addAttribute:v37 value:v38 range:{v44, v45}];
      }

      v13 = v45 + v44;
    }

    while (v13 < [storageCopy length]);

    cleanup = cleanupCopy;
    location = v42;
  }

  *cleanup = length;

  v39 = location;
  lengthCopy = length;
  result.length = lengthCopy;
  result.location = v39;
  return result;
}

- (void)insertNewlineAtCharacterIndex:(unint64_t)index textStorage:(id)storage
{
  storageCopy = storage;
  [storageCopy breakUndoCoalescing];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [storageCopy replaceCharactersInRange:index withAttributedString:{0, v7}];

  [(ICTextController *)self trackExtraNewLineRangeIfNecessary:index, 1];
}

- (void)toggleBlockQuoteInTextView:(id)view
{
  v43[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  textStorage = [viewCopy textStorage];
  string = [textStorage string];
  selectedRange = [viewCopy selectedRange];
  v9 = [string paragraphRangeForRange:{selectedRange, v8}];
  v11 = v10;

  objc_opt_class();
  textStorage2 = [viewCopy textStorage];
  v13 = ICDynamicCast();

  note = [(ICTextController *)self note];
  isEmpty = [note isEmpty];

  textStorage3 = [viewCopy textStorage];
  v17 = [textStorage3 length];

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
    [(ICTextController *)self updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v9 textStorage:1 textView:v13, viewCopy];
    [viewCopy setSelectedRange:{v9, 0}];
    if (isEmpty)
    {
      [(ICTextController *)self setTextStyle:+[ICTextStyle removeExtraStyling:"noteDefaultNamedStyle"]range:0 inTextStorage:v9, 1, v13];
    }

    v11 = 1;
  }

  else
  {
    v21 = v11;
  }

  textStorage4 = [viewCopy textStorage];
  [textStorage4 beginEditing];

  textLayoutManager = [viewCopy textLayoutManager];
  v26 = [textLayoutManager ic_textRangeForRange:{v9, v21}];

  LOBYTE(textLayoutManager) = [(ICTextController *)self selectionContainsBlockQuoteAndOthers:viewCopy];
  textLayoutManager2 = [viewCopy textLayoutManager];
  textContentManager = [textLayoutManager2 textContentManager];
  location = [v26 location];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __47__ICTextController_toggleBlockQuoteInTextView___block_invoke;
  v37[3] = &unk_1E846C470;
  v38 = viewCopy;
  v39 = v9;
  v40 = v11;
  v41 = textLayoutManager;
  v30 = viewCopy;
  v31 = [textContentManager enumerateTextElementsFromLocation:location options:0 usingBlock:v37];

  textStorage5 = [v30 textStorage];
  [textStorage5 endEditing];

  textStorage6 = [v30 textStorage];
  v34 = [textStorage6 attributesAtIndex:v9 effectiveRange:0];
  v35 = [v34 mutableCopy];
  [v30 setTypingAttributes:v35];

  note2 = [(ICTextController *)self note];
  [note2 updateModificationDateAndChangeCountAndSaveAfterDelay];
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

- (BOOL)selectionContainsBlockQuoteAndOthers:(id)others
{
  othersCopy = others;
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
  textStorage = [othersCopy textStorage];
  string = [textStorage string];
  selectedRange = [othersCopy selectedRange];
  v8 = [string ic_rangeIsValid:{selectedRange, v7}];

  if (v8)
  {
    textStorage2 = [othersCopy textStorage];
    string2 = [textStorage2 string];
    selectedRange2 = [othersCopy selectedRange];
    v13 = [string2 paragraphRangeForRange:{selectedRange2, v12}];
    v15 = v14;

    textStorage3 = [othersCopy textStorage];
    v17 = *MEMORY[0x1E69B7600];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__ICTextController_selectionContainsBlockQuoteAndOthers___block_invoke;
    v20[3] = &unk_1E846C498;
    v21 = othersCopy;
    v22 = v27;
    v23 = v25;
    v24 = &v29;
    [textStorage3 enumerateAttribute:v17 inRange:v13 options:v15 usingBlock:{0, v20}];
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

- (BOOL)insertNewlineForSpecialCasesInTextView:(id)view
{
  v55[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy selectedRange];
  if (v5)
  {
    goto LABEL_19;
  }

  textStorage = [viewCopy textStorage];
  selectedRange = [viewCopy selectedRange];
  v52 = 0;
  v53 = 0;
  v51 = 0;
  string = [textStorage string];
  selectedRange2 = [viewCopy selectedRange];
  [string getParagraphStart:&v53 end:&v52 contentsEnd:&v51 forRange:{selectedRange2, v10}];

  v11 = v53;
  if (v11 >= [textStorage length])
  {
    v13 = 0;
    goto LABEL_9;
  }

  v12 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:v53 effectiveRange:0];
  v13 = v12;
  if (!v12 || ![v12 isList])
  {
LABEL_9:
    v14 = selectedRange - 1;
    attributedString = [textStorage attributedString];
    v16 = [attributedString length];

    if (v14 < v16)
    {
      attributedString2 = [textStorage attributedString];
      v18 = [attributedString2 attribute:*MEMORY[0x1E69B7600] atIndex:v14 effectiveRange:0];

      attributedString3 = [textStorage attributedString];
      string2 = [attributedString3 string];
      v21 = [string2 substringWithRange:{v14, 1}];

      if ([v18 blockQuoteLevel] && objc_msgSend(v21, "isEqualToString:", @"\n"))
      {
        [(ICTextController *)self toggleBlockQuoteInTextView:viewCopy];
        bodyAttributes = [(ICTTTextController *)self bodyAttributes];
        [viewCopy setTypingAttributes:bodyAttributes];
      }

      if (ICInternalSettingsIsCollapsibleSectionsEnabled())
      {
        objc_opt_class();
        textLayoutManager = [viewCopy textLayoutManager];
        textContentManager = [textLayoutManager textContentManager];
        v25 = ICDynamicCast();
        outlineController = [v25 outlineController];

        uuid = [v18 uuid];
        LODWORD(textContentManager) = [outlineController isUUIDCollapsed:uuid];

        if (textContentManager)
        {
          v28 = [textStorage attributesAtIndex:v53 effectiveRange:0];
          v29 = MEMORY[0x1E69B7600];
          v50 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

          v54 = *v29;
          v30 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{objc_msgSend(v50, "style")}];
          v55[0] = v30;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
          v31 = v49 = v21;

          uuid2 = [v18 uuid];
          v33 = [outlineController descendantRangeForUUID:uuid2];
          v35 = v34;

          v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v31];
          [textStorage replaceCharactersInRange:v33 + v35 withAttributedString:{0, v36}];

          [viewCopy setSelectedRange:{v33 + v35, 0}];
          goto LABEL_24;
        }
      }
    }

    goto LABEL_18;
  }

  if (v53 != v51)
  {
    [textStorage breakUndoCoalescing];
LABEL_18:

LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  if ([v13 indent])
  {
    [(ICTextController *)self indentRange:v53 byAmount:0 inTextStorage:-1 textView:textStorage, viewCopy];
  }

  else
  {
    [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:v53 inTextStorage:0, textStorage];
    v39 = __ICLocalizedFrameworkString_impl(@"body", @"body", 0, 1);
    v40 = __ICLocalizedFrameworkString_impl(@"exited list", @"exited list", 0, 1);
    v47 = __ICAccessibilityStringForVariables(1, v39, v41, v42, v43, v44, v45, v46, v40);

    ICAccessibilityPostHighPriorityAnnouncementNotification(0, v47);
  }

  v48 = [textStorage attributesAtIndex:v53 effectiveRange:0];
  [viewCopy setTypingAttributes:v48];

  [textStorage breakUndoCoalescing];
LABEL_24:

  if ([viewCopy conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewCopy textControllerDidHandleSpecialCaseEditing:self];
  }

  v37 = 1;
LABEL_20:

  return v37;
}

- (BOOL)insertedSpaceInTextView:(id)view replacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  if (length || !+[ICTextStyle autoListInsertionEnabled]|| [(ICTextController *)self isAutoListInsertionDisabled])
  {
    v8 = 0;
  }

  else
  {
    textStorage = [viewCopy textStorage];
    v33 = 0;
    v34 = 0;
    v32 = 0;
    string = [textStorage string];
    selectedRange = [viewCopy selectedRange];
    [string getParagraphStart:&v34 end:&v33 contentsEnd:&v32 forRange:{selectedRange, v13}];

    v14 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:v34 effectiveRange:0];
    v15 = v14;
    if (v14 && ([v14 isList] & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(?:(\\* |•)|(-)|(^(?!^0)\\d+\\. |^(?!^0)\\d+\\))" options:? error:?], 0, 0);
      string2 = [textStorage string];
      v18 = [v16 firstMatchInString:string2 options:4 range:{v34, v32 - v34}];

      if (v18 && (v19 = [v18 range], v19 + v20 > location))
      {
        undoManager = [textStorage undoManager];
        v22 = [undoManager prepareWithInvocationTarget:self];
        [v22 setSelectionToIndex:objc_msgSend(viewCopy onTextView:{"selectedRange"), viewCopy}];

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __61__ICTextController_insertedSpaceInTextView_replacementRange___block_invoke;
        v24[3] = &unk_1E846C4C0;
        v25 = v18;
        v29 = v34;
        v30 = v32;
        v23 = textStorage;
        v31 = v33;
        v26 = v23;
        selfCopy = self;
        v28 = viewCopy;
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

- (void)setSelectionToIndex:(unint64_t)index onTextView:(id)view
{
  viewCopy = view;
  textStorage = [viewCopy textStorage];
  v6 = [textStorage length];

  if (v6 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v6;
  }

  [viewCopy setSelectedRange:{indexCopy, 0}];
}

- (void)insertedText:(id)text replacementRange:(_NSRange)range inTextView:(id)view hashtagController:(id)controller mentionsController:(id)mentionsController languageHasSpaces:(BOOL)spaces parentAttachment:(id)attachment
{
  length = range.length;
  location = range.location;
  textCopy = text;
  viewCopy = view;
  controllerCopy = controller;
  mentionsControllerCopy = mentionsController;
  attachmentCopy = attachment;
  textStorage = [viewCopy textStorage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = textCopy;
  }

  else
  {
    string = [textCopy string];
  }

  v19 = string;
  v20 = [string length];
  v57.length = [textStorage length];
  v56.location = location;
  v56.length = v20;
  v57.location = 0;
  v21 = NSIntersectionRange(v56, v57);
  if (![v19 isEqualToString:@"\n"] || length)
  {
    if ([v19 isEqualToString:@" "] && !length)
    {
      [(ICTextController *)self insertedSpaceInTextView:viewCopy replacementRange:location, 0];
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
    string2 = [textStorage string];
    [string2 getParagraphStart:&v55 end:0 contentsEnd:&v54 forRange:{v21.location + 1, 0}];

    if (v54 == v55)
    {
      string3 = [textStorage string];
      v24 = [string3 paragraphRangeForRange:{v21.location + 1, 0}];
      v26 = v25;

      if (v26)
      {
        v27 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:v24 effectiveRange:0];
        v28 = v27;
        if (v27)
        {
          if ([v27 preferSingleLine])
          {
            [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:v24 inTextStorage:v26, textStorage];
            if (viewCopy)
            {
              v29 = [textStorage attributesAtIndex:v24 effectiveRange:0];
              [viewCopy setTypingAttributes:v29];
            }
          }
        }
      }
    }
  }

  attachmentInsertionController = [(ICTextController *)self attachmentInsertionController];
  if (attachmentInsertionController)
  {
    v31 = attachmentInsertionController;
    note = [(ICTextController *)self note];

    if (note)
    {
      string4 = [textStorage string];
      v34 = [string4 length];

      if (v21.location + v21.length > v34)
      {
        goto LABEL_30;
      }

      mentionsController = [(ICTextController *)self mentionsController];
      note2 = [(ICTextController *)self note];
      BYTE1(v49) = spaces;
      LOBYTE(v49) = 0;
      v37 = [mentionsController checkForMentionInEditedRange:v21.location ofTextStorage:v21.length note:textStorage textView:note2 allowAutoExplicitMention:viewCopy isEndingEditing:1 languageHasSpaces:v49 parentAttachment:0];

      v38 = 0;
      if (v37)
      {
        goto LABEL_30;
      }

LABEL_29:
      hashtagController = [(ICTextController *)self hashtagController];
      note3 = [(ICTextController *)self note];
      BYTE1(v50) = spaces;
      LOBYTE(v50) = 0;
      [hashtagController checkForHashtagInEditedRange:v21.location ofTextStorage:v21.length note:textStorage textView:note3 allowAutoExplicitHashtag:viewCopy isEndingEditing:1 languageHasSpaces:v50 parentAttachment:v38];

      goto LABEL_30;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    note4 = [(ICTextController *)self note];

    if (note4)
    {
      if (controllerCopy)
      {
        [(ICTextController *)self setHashtagController:?];
      }

      if (mentionsControllerCopy)
      {
        [(ICTextController *)self setMentionsController:?];
      }

      string5 = [textStorage string];
      v41 = [string5 length];

      if (v21.location + v21.length <= v41)
      {
        mentionsController2 = [(ICTextController *)self mentionsController];
        note5 = [(ICTextController *)self note];
        v38 = attachmentCopy;
        BYTE1(v49) = spaces;
        LOBYTE(v49) = 0;
        v44 = [mentionsController2 checkForMentionInEditedRange:v21.location ofTextStorage:v21.length note:textStorage textView:note5 allowAutoExplicitMention:viewCopy isEndingEditing:1 languageHasSpaces:v49 parentAttachment:attachmentCopy];

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
    mentionsController3 = [(ICTextController *)self mentionsController];
    note6 = [(ICTextController *)self note];
    [mentionsController3 newlineEnteredInNote:note6];
  }

  self->_userChangedWritingDirection = 0;
}

- (void)setParagraphWritingDirectionInRange:(_NSRange)range toDirection:(int64_t)direction inTextView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textStorage = [viewCopy textStorage];
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
  directionCopy = direction;
  v12 = textStorage;
  v21 = v12;
  v23 = &v25;
  [v12 ic_enumerateClampedAttribute:v11 inRange:location options:length usingBlock:{0, &v17}];
  if (v32[5] || v26[5])
  {
    typingAttributes = [viewCopy typingAttributes];
    v14 = [typingAttributes mutableCopy];

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

    [viewCopy setTypingAttributes:v14];
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

- (BOOL)deleteBackwardForSpecialCasesInTextView:(id)view
{
  v72[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  textStorage = [viewCopy textStorage];
  v6 = ICCheckedDynamicCast();

  [viewCopy selectedRange];
  if (v7)
  {
    selectedRange = [viewCopy selectedRange];
    if ([(ICTextController *)self removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:viewCopy textStorage:v6 rangeToBeDeleted:selectedRange blockBeforeEndEditing:v9, &__block_literal_global_206_0])
    {
      [viewCopy setSelectedRange:{selectedRange, 0}];
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  string = [v6 string];
  selectedRange2 = [viewCopy selectedRange];
  v14 = [string paragraphRangeForRange:{selectedRange2, v13}];
  v16 = v15;

  selectedRange3 = [viewCopy selectedRange];
  v18 = selectedRange3;
  if (selectedRange3 == v14)
  {
    if (!v14)
    {
      if ([(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:viewCopy textStorage:v6 paragraphRange:0 andLocation:v16, 0])
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (!selectedRange3)
    {
      goto LABEL_28;
    }

    if (selectedRange3 != 1 || [(ICTextController *)self attachmentsExistInRange:0 textStorage:1, v6])
    {
      v19 = [v6 attribute:*MEMORY[0x1E69DB5F8] atIndex:v18 - 1 effectiveRange:0];
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [viewCopy setSelectedRange:{v18 - 1, 1}];

          goto LABEL_4;
        }
      }

      goto LABEL_28;
    }
  }

  v20 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:v18 - 1 effectiveRange:0];
  v21 = [(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:viewCopy textStorage:v6 paragraphRange:v14 andLocation:v16, v18];
  if (!v21 && v20 && [v20 isList])
  {
    v69 = 0;
    v70 = 0;
    string2 = [v6 string];
    [string2 getParagraphStart:&v70 end:0 contentsEnd:&v69 forRange:{v18 - 1, 0}];

    if (v70 != v69)
    {
      if (v18 >= [v6 length])
      {
        [viewCopy setSelectedRange:{v18 - 1, 0}];

LABEL_4:
        if ([viewCopy conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [viewCopy textControllerDidHandleSpecialCaseEditing:self];
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
  string3 = [v6 string];
  selectedRange4 = [viewCopy selectedRange];
  v26 = [string3 paragraphRangeForRange:{selectedRange4, v25}];
  v28 = v27;

  selectedRange5 = [viewCopy selectedRange];
  string4 = [v6 string];
  v31 = [string4 paragraphRangeForRange:{selectedRange5, 0}];
  v33 = v32;

  if (selectedRange5 == v26 || selectedRange5 == v26 + 1)
  {
    selectedRange6 = [viewCopy selectedRange];
    v36 = v31 + v33;
    if (selectedRange6 + v35 >= v36 - 1)
    {
      selectedRange7 = [viewCopy selectedRange];
      if (selectedRange7 + v38 <= v36)
      {
        v39 = [v6 attribute:*MEMORY[0x1E69B7600] atIndex:selectedRange5 effectiveRange:0];
        objc_opt_class();
        textLayoutManager = [viewCopy textLayoutManager];
        textContentManager = [textLayoutManager textContentManager];
        v42 = ICDynamicCast();

        uuid = [v39 uuid];
        if (uuid)
        {
          v44 = uuid;
          outlineController = [v42 outlineController];
          [v39 uuid];
          v46 = v28;
          v47 = v39;
          v49 = v48 = v42;
          v67 = [outlineController isUUIDCollapsed:v49];

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
            tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
            v72[1] = tertiaryLabelColor;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
            v66 = [v65 initWithString:v51 attributes:v54];

            v55 = [v6 attributedSubstringFromRange:{v26, v50}];
            string5 = [v55 string];

            v57 = [string5 characterAtIndex:{objc_msgSend(string5, "length") - 1}];
            newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
            LODWORD(v57) = [newlineCharacterSet characterIsMember:v57];

            v59 = [viewCopy ic_textRangeFromCharacterRange:{v26, v50 - v57}];
            [viewCopy replaceRange:v59 withText:&stru_1F4F94F00];

            [viewCopy setAttributedMarkedText:v66 selectedRange:{0, 0}];
            [v6 setIsMarkingTextForHeadingRename:1];

            goto LABEL_4;
          }
        }
      }
    }
  }

  selectedRange8 = [viewCopy selectedRange];
  v62 = v61;
  [viewCopy selectedRange];
  if (!v63 && [viewCopy selectedRange])
  {
    selectedRange8 = [viewCopy selectedRange] - 1;
    v62 = 1;
  }

  [(ICTextController *)self notifyInlineAttachmentsDeletedInRange:selectedRange8 ofTextStorage:v62, v6];
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

- (_NSRange)extendedSelectionRangeForCollapsedSectionHeadingWithRange:(_NSRange)range textView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  objc_opt_class();
  textLayoutManager = [viewCopy textLayoutManager];

  textContentManager = [textLayoutManager textContentManager];
  v9 = ICDynamicCast();

  textStorage = [v9 textStorage];
  v11 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];

  outlineController = [v9 outlineController];
  uuid = [v11 uuid];
  if (uuid)
  {
    if ([outlineController isUUIDCollapsed:uuid])
    {
      v14 = [outlineController rangeForUUID:uuid];
      if (location == v14)
      {
        v16 = v15;
        if (length == v15 || length == v15 - 1)
        {
          v18 = v14;
          v25.location = [outlineController descendantRangeForUUID:uuid];
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

- (BOOL)removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:(id)view textStorage:(id)storage rangeToBeDeleted:(_NSRange)deleted blockBeforeEndEditing:(id)editing
{
  length = deleted.length;
  location = deleted.location;
  viewCopy = view;
  storageCopy = storage;
  editingCopy = editing;
  v13 = location + length;
  if ([storageCopy length] <= location + length)
  {
    v18 = 0;
  }

  else
  {
    v14 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:location + length effectiveRange:0];
    v15 = *MEMORY[0x1E69DB688];
    v16 = [storageCopy attribute:*MEMORY[0x1E69DB688] atIndex:location + length effectiveRange:0];
    if ([v14 isList])
    {
      v27 = 0;
      v28 = 0;
      string = [storageCopy string];
      [string getParagraphStart:0 end:&v27 contentsEnd:&v28 forRange:{location, length}];

      v18 = v28 == v13;
      if (v28 == v13)
      {
        v24 = v15;
        v26 = v16;
        [storageCopy beginEditing];
        v19 = [v14 mutableCopy];
        [v19 setStyle:3];
        v20 = [storageCopy attributesAtIndex:location + length effectiveRange:0];
        v25 = [v20 mutableCopy];

        v21 = [v19 copy];
        [v25 setObject:v21 forKey:*MEMORY[0x1E69B7600]];

        if (ICInternalSettingsIsTextKit2Enabled())
        {
          v22 = [v26 mutableCopy];
          [v22 setTextLists:MEMORY[0x1E695E0F0]];
          [v25 setObject:v22 forKey:v24];
        }

        [storageCopy setAttributes:v25 range:{location + length, v27 - v28}];
        if (editingCopy)
        {
          editingCopy[2](editingCopy, viewCopy, storageCopy, location, length);
        }

        [storageCopy endEditing];

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

- (BOOL)deleteWordBackwardForSpecialCasesInTextView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  textStorage = [viewCopy textStorage];
  v6 = ICCheckedDynamicCast();

  string = [v6 string];
  selectedRange = [viewCopy selectedRange];
  v10 = [string paragraphRangeForRange:{selectedRange + v9, 0}];
  v12 = v11;

  selectedRange2 = [viewCopy selectedRange];
  v15 = selectedRange2 + v14;
  if (selectedRange2 + v14 == v10 || selectedRange2 + v14 >= v10 && [viewCopy selectedRange] <= v10 || !(objc_msgSend(viewCopy, "selectedRange") | v10))
  {
    v16 = [(ICTextController *)self removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:viewCopy textStorage:v6 paragraphRange:v10 andLocation:v12, v15];
    textStorage2 = [viewCopy textStorage];
    [textStorage2 beginEditing];

    textStorage3 = [viewCopy textStorage];
    v19 = textStorage3;
    if (v16)
    {
      selectedRange3 = [viewCopy selectedRange];
      [v19 deleteCharactersInRange:{selectedRange3, v21}];

      textStorage4 = [viewCopy textStorage];
      [textStorage4 endEditing];

      [viewCopy setSelectedRange:{objc_msgSend(viewCopy, "selectedRange"), 0}];
      if ([viewCopy conformsToProtocol:&unk_1F5091BC0] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [viewCopy textControllerDidHandleSpecialCaseEditing:self];
      }

      v23 = 1;
      goto LABEL_15;
    }

    [textStorage3 endEditing];
  }

  selectedRange4 = [viewCopy selectedRange];
  v26 = v25;
  [viewCopy selectedRange];
  if (!v27 && [viewCopy selectedRange])
  {
    selectedRange4 = [viewCopy selectedRange] - 1;
    v26 = 1;
  }

  [(ICTextController *)self notifyInlineAttachmentsDeletedInRange:selectedRange4 ofTextStorage:v26, v6];
  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)removeListStyleForDeletingEmptyParagrahIfNecessaryForTextView:(id)view textStorage:(id)storage paragraphRange:(_NSRange)range andLocation:(unint64_t)location
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  storageCopy = storage;
  v13 = [storageCopy length];
  v14 = MEMORY[0x1E69B7600];
  if (v13 <= location)
  {
    typingAttributes = [viewCopy typingAttributes];
    v15 = [typingAttributes objectForKeyedSubscript:*v14];
  }

  else
  {
    v15 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
  }

  if ([viewCopy selectedRange])
  {
    v17 = [storageCopy attribute:*v14 atIndex:objc_msgSend(viewCopy effectiveRange:{"selectedRange") - 1, 0}];
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
    style = [v17 style];
    if (style == [v15 style])
    {
      goto LABEL_11;
    }
  }

  [(ICTextController *)self setTextStyle:3 removeExtraStyling:0 range:location inTextStorage:length, storageCopy];
  selectedRange = [viewCopy selectedRange];
  if (selectedRange >= [storageCopy length])
  {
    [viewCopy setTypingAttributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v21 = [storageCopy attributesAtIndex:objc_msgSend(viewCopy effectiveRange:{"selectedRange"), 0}];
    [viewCopy setTypingAttributes:v21];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (void)refreshTextStylingForTextStorage:(id)storage withTextController:(id)controller
{
  controllerCopy = controller;
  storageCopy = storage;
  [storageCopy beginSkippingTimestampUpdates];
  [controllerCopy updateTrackedAttributesInTextStorage:storageCopy range:0 changeInLength:{objc_msgSend(storageCopy, "length"), 0}];
  [controllerCopy ensureUniqueParagraphStyleUUIDsInTextStorage:storageCopy range:{0, objc_msgSend(storageCopy, "length")}];
  [controllerCopy styleText:storageCopy inRange:0 fixModelAttributes:{objc_msgSend(storageCopy, "length"), 0}];

  [storageCopy endSkippingTimestampUpdates];
}

- (id)strippedTypingAttributesAtStartOfParagraph:(id)paragraph atTheEndOfDocument:(BOOL)document isTyping:(BOOL)typing
{
  typingCopy = typing;
  documentCopy = document;
  paragraphCopy = paragraph;
  note = [(ICTextController *)self note];
  isPerformingMerge = [note isPerformingMerge];

  v11 = paragraphCopy;
  if ((isPerformingMerge & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = ICTextController;
    v11 = [(ICTTTextController *)&v13 strippedTypingAttributesAtStartOfParagraph:paragraphCopy atTheEndOfDocument:documentCopy isTyping:typingCopy];
  }

  return v11;
}

+ (BOOL)shouldRetainFirstListStyleForFilteredAttributedSubstring:(id)substring fromRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  substringCopy = substring;
  v7 = location + length;
  if (location + length >= [substringCopy length])
  {
    v9 = 0;
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  v8 = [substringCopy attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
  v9 = v8;
  if (!v8 || ![v8 isList])
  {
    goto LABEL_14;
  }

  v18 = 0;
  string = [substringCopy string];
  v11 = [string ic_paragraphRangeForRange:location contentEnd:{0, &v18}];
  v13 = v12;

  v16 = location == v11 && v7 >= v18 || v7 > v11 + v13;
LABEL_15:

  return v16;
}

+ (id)removeBeginningListStyleIfNecessaryForAttributedString:(id)string fromTextStorage:(id)storage andRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  storageCopy = storage;
  if (![ICTextController shouldRetainFirstListStyleForFilteredAttributedSubstring:storageCopy fromRange:location, length])
  {
    v10 = MEMORY[0x1E69B7600];
    v11 = [stringCopy attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:0];
    v12 = [v11 mutableCopy];

    [v12 setStyle:3];
    v13 = [stringCopy mutableCopy];
    [storageCopy beginSkippingTimestampUpdates];
    v14 = *v10;
    string = [v13 string];
    v16 = [string paragraphRangeForRange:{0, 0}];
    [v13 addAttribute:v14 value:v12 range:{v16, v17}];

    [storageCopy endSkippingTimestampUpdates];
    stringCopy = v13;
  }

  return stringCopy;
}

- (void)setNote:(id)note stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering withLayoutManager:(id)manager traitCollection:(id)collection firstVisibleCharLocation:(unint64_t)location
{
  renderingCopy = rendering;
  noteCopy = note;
  managerCopy = manager;
  collectionCopy = collection;
  [(ICTextController *)self setNote:noteCopy];
  if (noteCopy)
  {
    textStorage = [noteCopy textStorage];
    v15 = textStorage;
    if (renderingCopy)
    {
      [textStorage setWantsUndoCommands:0];

      objc_opt_class();
      textStorage2 = [noteCopy textStorage];
      styler = [textStorage2 styler];
      v15 = ICCheckedDynamicCast();

      zoomController = [v15 zoomController];
      v19 = [ICTTTextStorage alloc];
      textStorage3 = [noteCopy textStorage];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      if ([(ICTextController *)self isForPrint])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      v23 = [(ICTTTextStorage *)v19 initWithAttributedString:textStorage3 replicaID:uUID sourceZoomController:zoomController keepSourceZoomController:0 existingStyler:selfCopy];
      v24 = v23;

      if ([(ICTTTextController *)self disableSingleLineA])
      {
        [(ICTTTextController *)self styleText:v23 inRange:0 fixModelAttributes:[(ICTTTextStorage *)v23 length], 0];
      }

      [noteCopy setNoteHasChanges:MEMORY[0x1E695E110]];
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
            string = [(ICTTTextStorage *)v23 string];
            v49 = [string characterAtIndex:{-[ICTTTextStorage length](v23, "length") - 1}];

            v31 = v52[4];
            v30 = v52[5];
            if (v30 + v31 == -[ICTTTextStorage length](v23, "length") || (v38 = v52[4], v37 = v52[5], v37 + v38 == -[ICTTTextStorage length](v23, "length") - 1) && ([MEMORY[0x1E696AB08] newlineCharacterSet], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "characterIsMember:", v49), v39, v40))
            {
              mutableString = [(ICTTTextStorage *)v23 mutableString];
              [mutableString appendString:@" "];
            }
          }
        }
      }

      if ([(ICTextController *)self isForPrint])
      {
        calculateDocumentController = [noteCopy calculateDocumentController];
        if ([calculateDocumentController hasExpressions] && objc_msgSend(noteCopy, "calculatePreviewBehavior") != 1)
        {
          [calculateDocumentController updateAffectingChangeCounts:0];
          ic_range = [(ICTTTextStorage *)v23 ic_range];
          [calculateDocumentController formatExpressionsInAttributedString:v23 range:ic_range textStorageOffset:v43 skipStaleExpressions:{0, 1}];
        }
      }

      textContainers = [managerCopy textContainers];
      lastObject = [textContainers lastObject];

      [(ICTextController *)self filterAttachmentsForPrintingInAttributedString:v23 traitCollection:collectionCopy textContainer:lastObject];
      [managerCopy icReplaceTextStorage:v23];
      trackedToDoParagraphs = [(ICTextController *)self trackedToDoParagraphs];
      [managerCopy setTrackedToDoParagraphs:trackedToDoParagraphs];

      textStorage4 = [managerCopy textStorage];
      [managerCopy invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(textStorage4, "length"), 0}];

      textStorage5 = [noteCopy textStorage];
      [textStorage5 setWantsUndoCommands:1];

      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v57, 8);
    }

    else
    {
      [textStorage setStyler:self];
      [v15 setWantsUndoCommands:0];
      [(ICTextController *)self refreshTextStylingForTextStorage:v15 withTextController:self];
      [v15 setWantsUndoCommands:1];
      [noteCopy setNoteHasChanges:MEMORY[0x1E695E110]];
      [managerCopy icReplaceTextStorage:v15];
    }
  }

  else
  {
    v33 = [ICTTTextStorage alloc];
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    v35 = [(ICTTTextStorage *)v33 initWithData:0 replicaID:uUID2];
    [(ICTextController *)self setEmptyTextStorage:v35];

    emptyTextStorage = [(ICTextController *)self emptyTextStorage];
    [managerCopy icReplaceTextStorage:emptyTextStorage];
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

+ (double)extraWidthNeededForStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  stringCopy = string;
  v13 = [style mutableCopy];
  [v13 setIndent:0];
  v14 = [v13 copy];
  [self indentForStyle:v14 range:location attributedString:length textView:{stringCopy, viewCopy}];
  v16 = v15;

  return v16;
}

+ (double)indentForStyle:(id)style range:(_NSRange)range attributedString:(id)string textView:(id)view
{
  location = range.location;
  styleCopy = style;
  stringCopy = string;
  viewCopy = view;
  if ([styleCopy style] == 103)
  {
    if (ICInternalSettingsIsTextKit2Enabled() && ([viewCopy textLayoutManager], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = 36.0 * [styleCopy indent];
    }

    else
    {
      v14 = [styleCopy indent] * 36.0 + 36.0;
    }

    goto LABEL_26;
  }

  if (![styleCopy indent])
  {
    v14 = 0.0;
    if (![styleCopy isList])
    {
      goto LABEL_26;
    }
  }

  if (location >= [stringCopy length])
  {
    if (viewCopy)
    {
      typingAttributes = [viewCopy typingAttributes];
      v17 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

      goto LABEL_14;
    }

    ic_preferredFontForBodyText = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
  }

  else
  {
    ic_preferredFontForBodyText = [stringCopy attribute:*MEMORY[0x1E69DB648] atIndex:location effectiveRange:0];
  }

  v17 = ic_preferredFontForBodyText;
LABEL_14:
  v18 = 0.0;
  if ([styleCopy style] == 102 && location <= objc_msgSend(stringCopy, "length"))
  {
    v19 = *MEMORY[0x1E69B7918];
    v20 = [stringCopy length];
    if (location)
    {
      v21 = location >= v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [stringCopy attribute:v19 atIndex:location - v22 effectiveRange:0];
    [self extraBulletWidthForNumberedListWithMaxItemNumber:v23 textFont:v17];
    v18 = v24;
  }

  textLayoutManager = [viewCopy textLayoutManager];

  indent = [styleCopy indent];
  if (!textLayoutManager)
  {
    indent += [styleCopy isList];
  }

  v14 = v18 + indent * 36.0;

LABEL_26:
  return v14;
}

+ (double)extraBulletWidthForNumberedListWithMaxItemNumber:(id)number textFont:(id)font
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB878];
  fontCopy = font;
  numberCopy = number;
  ic_preferredFontForBodyText = [v5 ic_preferredFontForBodyText];
  [fontCopy pointSize];
  v10 = v9;

  v11 = [ic_preferredFontForBodyText ic_fontWithSize:v10];
  ic_fontWithTabularNumbers = [v11 ic_fontWithTabularNumbers];

  v13 = MEMORY[0x1E696AEC0];
  longValue = [numberCopy longValue];

  v15 = [v13 localizedStringWithFormat:@"%ld.", longValue];
  v21 = *MEMORY[0x1E69DB648];
  v22[0] = ic_fontWithTabularNumbers;
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

- (void)setTrackAddedExtraNewlineRanges:(BOOL)ranges
{
  if (self->_trackAddedExtraNewlineRanges != ranges)
  {
    if (ranges)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(ICTextController *)self setTrackedRangesForAddedExtraNewlines:array];
    }

    else
    {
      [(ICTextController *)self setTrackedRangesForAddedExtraNewlines:0];
    }

    self->_trackAddedExtraNewlineRanges = ranges;
  }
}

- (void)trackExtraNewLineRangeIfNecessary:(_NSRange)necessary
{
  length = necessary.length;
  location = necessary.location;
  if (![(ICTextController *)self trackAddedExtraNewlineRanges])
  {
    return;
  }

  trackedRangesForAddedExtraNewlines = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
  v7 = [trackedRangesForAddedExtraNewlines count];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    trackedRangesForAddedExtraNewlines2 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v11 = [trackedRangesForAddedExtraNewlines2 objectAtIndexedSubscript:v8];
    rangeValue = [v11 rangeValue];
    v14 = v13;

    if (location >= rangeValue)
    {
      if (location > rangeValue + v14)
      {
        goto LABEL_9;
      }

      trackedRangesForAddedExtraNewlines3 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
      v16 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v14 + length}];
      [trackedRangesForAddedExtraNewlines3 replaceObjectAtIndex:v8 withObject:v16];
      v9 = 0;
    }

    else
    {
      trackedRangesForAddedExtraNewlines3 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
      v16 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue + length, v14}];
      [trackedRangesForAddedExtraNewlines3 replaceObjectAtIndex:v8 withObject:v16];
    }

LABEL_9:
    ++v8;
    trackedRangesForAddedExtraNewlines4 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v18 = [trackedRangesForAddedExtraNewlines4 count];
  }

  while (v18 > v8);
  if (v9)
  {
LABEL_11:
    trackedRangesForAddedExtraNewlines5 = [(ICTextController *)self trackedRangesForAddedExtraNewlines];
    v19 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    [trackedRangesForAddedExtraNewlines5 addObject:v19];
  }
}

- (_NSRange)addExtraLinesIfNeededToTextStorage:(id)storage editedRange:(_NSRange)range actualLengthIncrease:(int64_t *)increase
{
  length = range.length;
  location = range.location;
  v69[1] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (location + length > [storageCopy length])
  {
    v73.length = [storageCopy length];
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

  *increase = 0;
  string = [storageCopy string];
  v60 = [string paragraphRangeForRange:{location, length}];
  v13 = v12;

  if ([storageCopy length])
  {
    string2 = [storageCopy string];
    v15 = [string2 paragraphRangeForRange:{objc_msgSend(storageCopy, "length"), 0}];
    v17 = v16;

    if (v17)
    {
      v18 = v13;
      v19 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:v15 effectiveRange:0];
      v20 = v19;
      if (v19 && [v19 wantsFollowingNewLine] && (objc_msgSend(storageCopy, "shouldInhibitAddingExtraNewlinesAtEndDuringFixup") & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
        [storageCopy replaceCharactersInRange:v15 + v17 withAttributedString:{0, v21}];

        [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v15 + v17, 1];
      }

      v13 = v18;
    }

    increaseCopy = increase;
    v58 = length;
    v67.location = 0;
    v67.length = 0;
    v22 = [storageCopy length];
    note = [(ICTextController *)self note];
    attachmentViewType = [note attachmentViewType];

    v24 = v60;
    if (v60 < [storageCopy length])
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
        v27 = [storageCopy attribute:v61 atIndex:v25 longestEffectiveRange:&v67 inRange:{0, v22}];
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
          string3 = [storageCopy string];
          [string3 getParagraphStart:&v66 end:&v64 contentsEnd:&v65 forRange:{v67.location, v67.length}];

          if (v30 && [v30 supportsMultipleThumbnailsOnSameLine] && attachmentViewType == 1)
          {
            v35 = v25 + 1;
            while (v35 < [storageCopy length])
            {
              v63.location = 0;
              v63.length = 0;
              v36 = [storageCopy attribute:v61 atIndex:v35 longestEffectiveRange:&v63 inRange:{0, v22}];
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
              v33 = v39 < [storageCopy length];
            }

            if (v30 || v33)
            {
              v41 = objc_alloc(MEMORY[0x1E696AAB0]);
              v68 = *MEMORY[0x1E69B7600];
              v42 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
              v69[0] = v42;
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
              v44 = [v41 initWithString:@"\n" attributes:v43];

              [storageCopy insertAttributedString:v44 atIndex:v67.length + v67.location];
              [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v67.length + v67.location, 1];
              ++v67.length;
              if (v26 < [storageCopy length])
              {
                ++v62;
                ++v58;
                ++*increaseCopy;
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
            [storageCopy insertAttributedString:v45 atIndex:v67.location];

            [(ICTextController *)self trackExtraNewLineRangeIfNecessary:v67.location++, 1];
            ++v22;
            if (v62 + v24 < [storageCopy length])
            {
              ++v62;
              ++v58;
              ++*increaseCopy;
            }
          }

          v63.location = 0;
          v63.length = 0;
          v47 = v67.location;
          v46 = v67.length;
          v48 = v67.length + v67.location;
          if (v48 >= [storageCopy length])
          {
            v49 = v46;
          }

          else
          {
            v49 = 2;
          }

          v50 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:v67.location longestEffectiveRange:&v63 inRange:{v47, v49}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v50 style] != 3 || (v75.location = v47, v75.length = v49, v51 = NSIntersectionRange(v63, v75), v51.location != v47) || v51.length != v49)
            {
              v52 = [v50 mutableCopy];
              [v52 setBlockQuoteLevel:{objc_msgSend(v50, "blockQuoteLevel")}];
              [storageCopy addAttribute:*MEMORY[0x1E69B7600] value:v52 range:{v47, v49}];
            }
          }
        }

        v25 = v67.length + v67.location;

        v13 = v62;
      }

      while (v25 < [storageCopy length]);
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

- (void)updateTrackedAttributesInTextStorage:(id)storage range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3010000000;
  v54 = &unk_1D449C2A9;
  v55 = xmmword_1D4433FC0;
  v59.length = [storageCopy length];
  v56.location = location;
  v56.length = length;
  v59.location = 0;
  v9 = NSIntersectionRange(v56, v59);
  v10 = v9.location;
  v11 = v9.length;
  if (!(v9.location + v9.length))
  {
    v12 = [storageCopy length];
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

  string = [storageCopy string];
  v14 = [string paragraphRangeForRange:{v10, v11}];
  v16 = v15;

  if (v14 + v16 < [storageCopy length])
  {
    string2 = [storageCopy string];
    v18 = [string2 paragraphRangeForRange:{v14 + v16, 0}];
    v20 = v19;

    v57.location = v14;
    v57.length = v16;
    v60.location = v18;
    v60.length = v20;
    v21 = NSUnionRange(v57, v60);
    v14 = v21.location;
    v16 = v21.length;
  }

  v22 = ((1 - length) & ~((1 - length) >> 63)) + length;
  v58.location = location;
  v58.length = v22;
  v61.location = v14;
  v61.length = v16;
  v23 = NSUnionRange(v58, v61);
  v62.length = [storageCopy length];
  v62.location = 0;
  v24 = NSIntersectionRange(v23, v62);
  objc_opt_class();
  v25 = ICDynamicCast();
  [v25 beginSkippingTimestampUpdates];

  [storageCopy beginEditing];
  string3 = [storageCopy string];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __78__ICTextController_updateTrackedAttributesInTextStorage_range_changeInLength___block_invoke;
  v46[3] = &unk_1E846C5A0;
  v27 = storageCopy;
  v47 = v27;
  selfCopy = self;
  v28 = v37;
  v49 = v28;
  v50 = &v51;
  [string3 ic_enumerateParagraphsInRange:v24.location usingBlock:{v24.length, v46}];

  if (length >= 1)
  {
    [(ICTextController *)self updateTrackedToDoParagraphsAfterIndex:v10 byDelta:length excludingSeenParagraphs:v28];
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  trackedToDoParagraphs = [(ICTextController *)self trackedToDoParagraphs];
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
  selfCopy2 = self;
  [trackedToDoParagraphs enumerateKeysAndObjectsUsingBlock:v39];

  trackedToDoParagraphs2 = [(ICTextController *)self trackedToDoParagraphs];
  [trackedToDoParagraphs2 removeObjectsForKeys:v32];

  if (length < 0)
  {
    [(ICTextController *)self updateTrackedToDoParagraphsAfterIndex:v10 byDelta:length excludingSeenParagraphs:v31];
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

- (void)createToDoItemForCharacterRange:(_NSRange)range paragraphStyle:(id)style textStorage:(id)storage
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  storageCopy = storage;
  v11 = objc_alloc_init(ICTrackedParagraph);
  [(ICTrackedParagraph *)v11 setParagraph:styleCopy];
  [(ICTrackedParagraph *)v11 setCharacterRange:location, length];
  trackedToDoParagraphs = [(ICTextController *)self trackedToDoParagraphs];
  todoTrackingUUID = [styleCopy todoTrackingUUID];
  [trackedToDoParagraphs setObject:v11 forKeyedSubscript:todoTrackingUUID];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    objc_opt_class();
    v14 = ICDynamicCast();
    textLayoutManagers = [v14 textLayoutManagers];

    v16 = [textLayoutManagers countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(textLayoutManagers);
          }

          v20 = ICProtocolCast();
          [v20 textController:self addedTrackedAttribute:v11];

          ++v19;
        }

        while (v17 != v19);
        v17 = [textLayoutManagers countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }
  }

  else
  {
    layoutManagers = [storageCopy layoutManagers];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__ICTextController_createToDoItemForCharacterRange_paragraphStyle_textStorage___block_invoke;
    v22[3] = &unk_1E846C578;
    v22[4] = self;
    v23 = v11;
    [layoutManagers enumerateObjectsUsingBlock:v22];
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

- (void)updateTrackedToDoParagraphsAfterIndex:(unint64_t)index byDelta:(int64_t)delta excludingSeenParagraphs:(id)paragraphs
{
  paragraphsCopy = paragraphs;
  trackedToDoParagraphs = [(ICTextController *)self trackedToDoParagraphs];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__ICTextController_updateTrackedToDoParagraphsAfterIndex_byDelta_excludingSeenParagraphs___block_invoke;
  v11[3] = &unk_1E846C5F0;
  v12 = paragraphsCopy;
  indexCopy = index;
  deltaCopy = delta;
  v10 = paragraphsCopy;
  [trackedToDoParagraphs enumerateKeysAndObjectsUsingBlock:v11];
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

- (void)filterAttachmentsForPrintingInAttributedString:(id)string traitCollection:(id)collection textContainer:(id)container
{
  stringCopy = string;
  collectionCopy = collection;
  containerCopy = container;
  v11 = *MEMORY[0x1E69DB5F8];
  v12 = [stringCopy length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__ICTextController_filterAttachmentsForPrintingInAttributedString_traitCollection_textContainer___block_invoke;
  v16[3] = &unk_1E846A740;
  v16[4] = self;
  v17 = collectionCopy;
  v18 = containerCopy;
  v19 = stringCopy;
  v13 = stringCopy;
  v14 = containerCopy;
  v15 = collectionCopy;
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

- (BOOL)inlineAttachmentInTextView:(id)view atIndex:(unint64_t)index outAttachment:(id *)attachment
{
  textStorage = [view textStorage];
  v9 = [textStorage attribute:*MEMORY[0x1E69B7628] atIndex:index effectiveRange:0];
  if ([v9 conformsToProtocol:&unk_1F4FC5D80])
  {
    v10 = v9;
    v11 = [MEMORY[0x1E69B7888] isInlineAttachment:v10];
    v12 = v11;
    if (attachment && v11)
    {
      note = [(ICTextController *)self note];
      *attachment = [note inlineAttachmentWithICTTAttachment:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canConvertInlineAttachmentToTextInTextView:(id)view forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  v12 = location != 0x7FFFFFFFFFFFFFFFLL && ([viewCopy textStorage], v9 = v8 = viewCopy;

  return v12;
}

- (void)convertInlineAttachmentToTextInTextView:(id)view forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v27[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v8 = viewCopy;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    textStorage = [viewCopy textStorage];
    string = [textStorage string];
    v11 = [string ic_rangeIsValid:{location, length}];

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

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v16 = *MEMORY[0x1E69B74A0];
        note = [v14 note];
        v26 = *MEMORY[0x1E69B74A8];
        v27[0] = v14;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        [defaultCenter postNotificationName:v16 object:note userInfo:v18];

        displayText = [v14 displayText];
        ic_stringByRemovingLanguageDirectionCharacters = [displayText ic_stringByRemovingLanguageDirectionCharacters];

        textStorage2 = [v8 textStorage];
        [textStorage2 replaceCharactersInRange:location withString:{1, ic_stringByRemovingLanguageDirectionCharacters}];

        v22 = [ic_stringByRemovingLanguageDirectionCharacters length];
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

- (BOOL)canAddToTagsInTextView:(id)view forRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v15 = 0;
  v6 = [(ICTextController *)self inlineAttachmentInTextView:view atIndex:range.location outAttachment:&v15];
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
    tokenContentIdentifier = [v8 tokenContentIdentifier];
    note = [(ICTextController *)self note];
    account = [note account];
    v13 = [v9 hashtagWithStandardizedContent:tokenContentIdentifier account:account];

    v4 = v13 == 0;
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4;
}

- (void)addToTagsInTextView:(id)view forRange:(_NSRange)range
{
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18[7] = v4;
    v18[8] = v5;
    v18[0] = 0;
    v7 = [(ICTextController *)self inlineAttachmentInTextView:view atIndex:range.location outAttachment:v18];
    v8 = v18[0];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((inlineAttachment) != nil)" functionName:"-[ICTextController addToTagsInTextView:forRange:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "inlineAttachment"}];
      }

      v10 = MEMORY[0x1E69B7768];
      displayText = [v9 displayText];
      note = [(ICTextController *)self note];
      account = [note account];
      v14 = [v10 hashtagWithDisplayText:displayText account:account createIfNecessary:1];

      v15 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICTextController addToTagsInTextView:v14 forRange:v9];
      }

      note2 = [(ICTextController *)self note];
      managedObjectContext = [note2 managedObjectContext];
      [managedObjectContext ic_save];
    }
  }
}

- (void)styleListsAndIndentsInAttributedString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = [(ICTextController *)self numberListsInAttributedString:stringCopy inRange:location, length];
  v10 = v9;
  objc_opt_class();
  v11 = ICDynamicCast();
  [v11 beginSkippingTimestampUpdates];

  v12 = *MEMORY[0x1E69B7600];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __67__ICTextController_styleListsAndIndentsInAttributedString_inRange___block_invoke;
  v18 = &unk_1E846C668;
  v19 = stringCopy;
  selfCopy = self;
  v13 = stringCopy;
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

- (void)fixListWritingDirectionInAttributedString:(id)string forListItemsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  stringCopy = [(ICTextController *)self expandRangeToIncludeFullList:location inAttributedString:length, stringCopy];
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
  v12 = stringCopy;
  v14 = v12;
  [v12 enumerateAttribute:v11 inRange:stringCopy options:v10 usingBlock:{0, v13}];

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

- (_NSRange)expandRangeToIncludeFullList:(_NSRange)list inAttributedString:(id)string
{
  length = list.length;
  location = list.location;
  stringCopy = string;
  v7 = stringCopy;
  if (length && [stringCopy length])
  {
    string = [v7 string];
    v9 = MEMORY[0x1E69B7600];
    v10 = [v7 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    v11 = v10;
    if (v10 && [v10 isList])
    {
      style = [v11 style];
      if (location)
      {
        v13 = location;
        while (1)
        {
          v14 = [string paragraphRangeForRange:{v13 - 1, 0}];
          v15 = [v7 attribute:*v9 atIndex:v14 effectiveRange:0];
          v16 = v15;
          if (!v15 || ![v15 isList] || objc_msgSend(v16, "style") != style)
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
        v18 = [string paragraphRangeForRange:{v17, 0}];
        v20 = v19;
        if (v18 >= [v7 length])
        {
          break;
        }

        v21 = [v7 attribute:*v9 atIndex:v18 effectiveRange:0];
        v22 = v21;
        if (!v21 || ![v21 isList] || objc_msgSend(v22, "style") != style)
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

- (void)styleDataDetectorTypesForPreviewInTextStorage:(id)storage
{
  v46 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v44 = 0;
  v5 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2080 error:&v44];
  v6 = v44;
  v7 = v6;
  if (v5)
  {
    v33 = v6;
    attributedString = [storageCopy attributedString];
    string = [attributedString string];

    v34 = v5;
    v32 = string;
    range1 = [storageCopy length];
    v10 = [v5 matchesInString:string options:0 range:0];
    [storageCopy beginSkippingTimestampUpdates];
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
          range = [v16 range];
          v19 = v18;
          v20 = [storageCopy attribute:*v14 atIndex:range effectiveRange:0];
          if (-[ICTextController shouldHighlightStyleAsLink:](self, "shouldHighlightStyleAsLink:", [v20 style]))
          {
            selfCopy = self;
            v47.location = 0;
            v47.length = range1;
            v48.location = range;
            v48.length = v19;
            length = NSIntersectionRange(v47, v48).length;
            v23 = storageCopy;
            v24 = [MEMORY[0x1E69B77E8] hasMentionInTextStorage:storageCopy inRange:{range, v19}];
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
              [v23 addAttribute:v35 value:v25 range:{range, v19}];
            }

            phoneNumber = [v16 phoneNumber];
            if (phoneNumber)
            {
              v28 = length == 0;
            }

            else
            {
              v28 = 1;
            }

            v29 = v28;
            v30 = v29 | v24;
            storageCopy = v23;
            if ((v30 & 1) == 0)
            {
              [v23 addAttribute:v35 value:phoneNumber range:{range, v19}];
            }

            self = selfCopy;
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

    [storageCopy endSkippingTimestampUpdates];
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

- (void)uniqueParagraphStylesInTextStorage:(id)storage inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  string = [storageCopy string];
  v8 = [string paragraphRangeForRange:{location, length}];
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
      v12 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:v11 longestEffectiveRange:&v35 inRange:{v31, v30, v29}];
      string2 = [storageCopy string];
      v14 = [string2 paragraphRangeForRange:{v35, v36}];
      v16 = v15;

      string3 = [storageCopy string];
      v18 = [string3 paragraphRangeForRange:{v35, 0}];
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
      string4 = [storageCopy string];
      [string4 getParagraphStart:&v32 end:&v33 contentsEnd:&v34 forRange:{v11, 0}];

      v33 -= v32;
      if ([v12 style] != 103)
      {
        break;
      }

      todo = [v12 todo];

      if (todo == 0 || v21)
      {
        if (todo)
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

      [storageCopy addAttribute:*MEMORY[0x1E69B7600] value:v27 range:{v32, v33}];
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

- (_NSRange)numberListsInAttributedString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
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
      v10 = [stringCopy attribute:*v7 atIndex:v8 longestEffectiveRange:&v45 inRange:{0, objc_msgSend(stringCopy, "length")}];
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
          string = [stringCopy string];
          v15 = [string paragraphRangeForRange:{i, 0}];

          v16 = [stringCopy attribute:v9 atIndex:v15 effectiveRange:0];

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
  v18 = [stringCopy length];
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
  v20 = [stringCopy length] - v8;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __58__ICTextController_numberListsInAttributedString_inRange___block_invoke;
  v32[3] = &unk_1E846C6E0;
  v34 = &v39;
  v21 = stringCopy;
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

- (void)fixModelAttributesInTextStorage:(id)storage inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  storageCopy = storage;
  beforeEndEditedRange = [storageCopy beforeEndEditedRange];
  [storageCopy beginEditing];
  string = [storageCopy string];
  v8 = [string paragraphRangeForRange:{location, length}];
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
      v13 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:v12 longestEffectiveRange:&v49 inRange:{v8, v10, selfCopy, v38}];
      v50.length = v11 - v12;
      v50.location = v12;
      v49 = NSIntersectionRange(v49, v50);
      v47 = 0;
      v48 = 0;
      v46 = 0;
      string2 = [storageCopy string];
      [string2 getParagraphStart:&v47 end:&v48 contentsEnd:&v46 forRange:{v49.location, v49.length}];

      v48 -= v47;
      v15 = [storageCopy attribute:v41 atIndex:v12 effectiveRange:0];
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
          attachment = [v28 attachment];
          isTable = [attachment isTable];

          if (!isTable || !v13)
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
        if (v49.location >= beforeEndEditedRange && v49.length + v49.location < v46)
        {
          string3 = [storageCopy string];
          v21 = [string3 paragraphRangeForRange:{v46, 0}];
          v23 = v22;

          v24 = [storageCopy attribute:*MEMORY[0x1E69B7600] atIndex:v46 effectiveRange:0];
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
          v45 = storageCopy;
          [v45 enumerateAttribute:v27 inRange:v47 options:v48 usingBlock:{0, v42}];
        }

        else
        {
          [storageCopy removeAttribute:*MEMORY[0x1E69B7600] range:{v47, v48}];
        }
      }

      v32 = [storageCopy attribute:v40 atIndex:? effectiveRange:?];
      v28 = v32;
      if (!v32)
      {
        goto LABEL_33;
      }

      baseWritingDirection = [v32 baseWritingDirection];
      if (baseWritingDirection == [v13 writingDirection])
      {
        goto LABEL_33;
      }

      if (v13)
      {
        v31 = [v13 mutableCopy];
      }

      else
      {
        defaultParagraphStyle = [MEMORY[0x1E69B78C0] defaultParagraphStyle];
        v31 = [defaultParagraphStyle mutableCopy];
      }

      [v31 setWritingDirection:{objc_msgSend(v28, "baseWritingDirection")}];
LABEL_32:
      v35 = *MEMORY[0x1E69B7600];
      v36 = [v31 copy];
      [storageCopy addAttribute:v35 value:v36 range:{v47, v48}];

LABEL_33:
      v12 = v48 + v47;
    }

    while (v12 < v11);
  }

  [(ICTextController *)selfCopy uniqueParagraphStylesInTextStorage:storageCopy inRange:v8, v10, selfCopy];
  [storageCopy endEditing];
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

- (id)keyboardLanguageForTextView:(id)view
{
  if (view)
  {
    v4 = ICKeyboardLanguageForBaseView(view);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)attributedStringToPasteWithAdaptedParagraphStyles:(id)styles pasteRange:(_NSRange)range textStorage:(id)storage
{
  length = range.length;
  location = range.location;
  stylesCopy = styles;
  storageCopy = storage;
  if (![stylesCopy length])
  {
    v19 = stylesCopy;
    goto LABEL_38;
  }

  v10 = [stylesCopy mutableCopy];
  v60 = xmmword_1D4433FC0;
  v61 = xmmword_1D4433FC0;
  v11 = MEMORY[0x1E69B7600];
  v12 = [stylesCopy attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:&v61];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_29;
  }

  style = [v12 style];
  if (stylesCopy && [stylesCopy length])
  {
    v15 = [stylesCopy attribute:*v11 atIndex:objc_msgSend(stylesCopy effectiveRange:{"length") - 1, &v60}];

    if (v15)
    {
      style2 = [v15 style];
      LODWORD(v17) = style2 == 3;
      if (style2 == 3 && style == 3)
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
        v20 = [storageCopy attribute:*v11 atIndex:location effectiveRange:0];
        if (v20)
        {
          v58 = [stylesCopy attribute:*v11 atIndex:0 effectiveRange:0];
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
  if (style == 3)
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

    v26 = [storageCopy attribute:*v11 atIndex:location + v25 effectiveRange:0];
    if (v26)
    {
      v27 = [stylesCopy attribute:*v11 atIndex:objc_msgSend(stylesCopy effectiveRange:{"length") - 1, 0}];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v34 = [(ICTTTextStorage *)v31 initWithAttributedString:v32 replicaID:uUID];

    ic_range = [(ICTTTextStorage *)v34 ic_range];
    [(ICTTTextStorage *)v34 replaceCharactersInRange:ic_range withAttributedString:v36, v10];
    identifier = [*MEMORY[0x1E6983060] identifier];
    ic_range2 = [v10 ic_range];
    v40 = [(ICTTTextStorage *)v34 filteredAttributedStringForUTI:identifier range:ic_range2, v39];
    v41 = [v40 mutableCopy];

    v42 = *v11;
    ic_range3 = [v41 ic_range];
    [v41 removeAttribute:v42 range:{ic_range3, v44}];
    v45 = *MEMORY[0x1E69B7630];
    ic_range4 = [v41 ic_range];
    [v41 removeAttribute:v45 range:{ic_range4, v47}];

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
        newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v53 = [v10 ic_rangeByTrimmingCharactersInSet:newlineCharacterSet inRange:v61];
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