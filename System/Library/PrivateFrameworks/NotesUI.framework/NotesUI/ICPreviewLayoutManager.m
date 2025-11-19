@interface ICPreviewLayoutManager
- (ICPreviewLayoutManager)initWithNote:(id)a3 maxCharacterCount:(unint64_t)a4 textContainer:(id)a5 textController:(id)a6;
- (id)todoImageForParagraphStyle:(id)a3;
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)drawTodoItemForListRange:(_NSRange)a3 paragraphStyle:(id)a4 atOrigin:(CGPoint)a5;
- (void)drawTodosForCharacterRange:(_NSRange)a3 atOrigin:(CGPoint)a4;
@end

@implementation ICPreviewLayoutManager

- (ICPreviewLayoutManager)initWithNote:(id)a3 maxCharacterCount:(unint64_t)a4 textContainer:(id)a5 textController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v61.receiver = self;
  v61.super_class = ICPreviewLayoutManager;
  v13 = [(ICPreviewLayoutManager *)&v61 init];
  v14 = v13;
  if (v13)
  {
    v13->_maxCharacterCount = a4;
    [(ICPreviewLayoutManager *)v13 setAllowsNonContiguousLayout:1];
    v15 = [v10 textStorage];
    v16 = [v15 attributedString];

    v17 = [v10 textStorage];
    v18 = [v17 styler];

    if (!v18)
    {
      v19 = objc_opt_new();

      v20 = [v10 textStorage];
      [v19 refreshTextStylingForTextStorage:v20 withTextController:v19];

      v12 = v19;
    }

    if ([v10 calculatePreviewBehavior] != 1)
    {
      v21 = [v10 calculateDocumentController];
      [v21 updateAffectingChangeCounts:0];
      if ([v21 hasExpressions])
      {
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__70;
        v59 = __Block_byref_object_dispose__70;
        v60 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke;
        aBlock[3] = &unk_1E846DD08;
        v54 = &v55;
        v22 = v16;
        v53 = v22;
        v23 = _Block_copy(aBlock);
        v24 = v23[2]();
        v25 = [v56[5] ic_range];
        [v21 formatExpressionsInAttributedString:v24 range:v25 textStorageOffset:v26 skipStaleExpressions:{0, 1}];

        v16 = v56[5];
        _Block_object_dispose(&v55, 8);
      }
    }

    v27 = [v16 length];
    if (v27 >= a4)
    {
      v28 = a4;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v16 attributedSubstringFromRange:{0, v28}];

    v30 = [v10 managedObjectContext];
    v31 = [v29 ic_attributedStringByFlatteningInlineAttachmentsWithContext:v30 formatter:0];

    v32 = [v31 mutableCopy];
    v33 = *MEMORY[0x1E69B7630];
    v34 = [v32 ic_range];
    v36 = v35;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke_2;
    v49[3] = &unk_1E846A768;
    v12 = v12;
    v50 = v12;
    v51 = v32;
    v37 = v32;
    [v37 enumerateAttribute:v33 inRange:v34 options:v36 usingBlock:{0, v49}];
    v38 = [v37 copy];

    v39 = [ICTTTextStorage alloc];
    v40 = [MEMORY[0x1E696AFB0] UUID];
    v41 = [(ICTTTextStorage *)v39 initWithData:0 replicaID:v40];

    [(ICTTTextStorage *)v41 setWantsUndoCommands:0];
    [(ICTTTextStorage *)v41 replaceCharactersInRange:0 withAttributedString:0, v38];
    [v12 styleDataDetectorTypesForPreviewInTextStorage:v41];
    v42 = *MEMORY[0x1E69DB5F8];
    v43 = [(ICTTTextStorage *)v41 length];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke_3;
    v46[3] = &unk_1E846A768;
    v47 = v10;
    v48 = v41;
    v44 = v41;
    [(ICTTTextStorage *)v44 enumerateAttribute:v42 inRange:0 options:v43 usingBlock:0, v46];
    [(ICTTTextStorage *)v44 setStyler:v12];
    [v12 styleText:v44 inExactRange:0 fixModelAttributes:{-[ICTTTextStorage length](v44, "length"), 0}];
    [(ICPreviewLayoutManager *)v14 setTextStorage:v44];
    [(ICPreviewLayoutManager *)v14 setStrongTextStorage:v44];
    [(ICPreviewLayoutManager *)v14 addTextContainer:v11];
  }

  return v14;
}

id __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 40);
    *(v2 + 40) = v4;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v6 ic_range];
    v5 = [v6 attributedSubstringFromRange:{v7, v8}];
    v9 = [v5 mutableCopy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *(*(*(a1 + 40) + 8) + 40);

  return v12;
}

void __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) writingDirectionForRange:a3 inTextView:a4 inTextStorage:{0, *(a1 + 40)}];
  v8 = MEMORY[0x1E69B7600];
  v9 = [*(a1 + 40) attribute:*MEMORY[0x1E69B7600] atIndex:a3 effectiveRange:0];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E69B78B8] defaultParagraphStyle];
  }

  v16 = v12;

  [v16 setAlignment:2 * (v7 == 1)];
  [v16 setWritingDirection:v7];
  v13 = *(a1 + 40);
  v14 = *v8;
  v15 = [v16 copy];
  [v13 addAttribute:v14 value:v15 range:{a3, a4}];
}

void __86__ICPreviewLayoutManager_initWithNote_maxCharacterCount_textContainer_textController___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if ([v12 conformsToProtocol:&unk_1F4FC5D80])
  {
    v7 = *(a1 + 32);
    v8 = v12;
    v9 = [v7 managedObjectContext];
    v10 = [v8 attachmentInContext:v9];

    v11 = [ICTextAttachment textAttachmentWithAttachment:v10];
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB5F8] value:v11 range:{a3, a4}];
  }
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v7 = [(ICPreviewLayoutManager *)self characterRangeForGlyphRange:a3.location actualGlyphRange:a3.length, 0];
  v9 = v8;
  v10 = [(ICPreviewLayoutManager *)self textStorage];
  v11 = *MEMORY[0x1E69DB5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICPreviewLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke;
  v12[3] = &unk_1E846DD30;
  *&v12[6] = x;
  *&v12[7] = y;
  v12[4] = self;
  v12[5] = v13;
  [v10 enumerateAttribute:v11 inRange:v7 options:v9 usingBlock:{0, v12}];

  _Block_object_dispose(v13, 8);
}

void __58__ICPreviewLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [*(a1 + 32) glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
  v11 = v10;
  v12 = [v8 attachment];

  if (v12)
  {
    v13 = [*(a1 + 32) textContainerForGlyphAtIndex:v9 effectiveRange:0];
    [*(a1 + 32) boundingRectForGlyphRange:v9 inTextContainer:{v11, v13}];
    v32 = CGRectOffset(v31, *(a1 + 48), *(a1 + 56) + *(*(*(a1 + 40) + 8) + 24));
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v18 = [v8 attachment];
    v19 = [v18 usesLinkPresentation];

    if (v19)
    {
      v20 = [ICLinkSnapshotGenerator alloc];
      v21 = [v8 attachment];
      v22 = [(ICLinkSnapshotGenerator *)v20 initWithAttachment:v21];

      -[ICLinkSnapshotGenerator setInsideSystemPaper:](v22, "setInsideSystemPaper:", [*(a1 + 32) isInsideSystemPaper]);
      v23 = [(ICLinkSnapshotGenerator *)v22 snapshot];
      [v23 size];
      v25 = v24;
      [v23 size];
      v27 = v26;
      [v23 drawInRect:{x, y, v25, v26}];
      *(*(*(a1 + 40) + 8) + 24) = v27 - height + *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v22 = [v8 attachment];
      v23 = [(ICLinkSnapshotGenerator *)v22 attachmentModel];
      [v23 drawPreviewInRect:{x, y, width, height}];
    }
  }

  else
  {
    v28 = *(a1 + 48);
    v29 = *(a1 + 56) + *(*(*(a1 + 40) + 8) + 24);
    v30.receiver = *(a1 + 32);
    v30.super_class = ICPreviewLayoutManager;
    objc_msgSendSuper2(&v30, sel_drawGlyphsForGlyphRange_atPoint_, v9, v11, v28, v29);
    [*(a1 + 32) drawListStylesForCharacterRange:a3 atPoint:{a4, v28, v29}];
    [*(a1 + 32) drawTodosForCharacterRange:a3 atOrigin:{a4, v28, v29}];
  }
}

- (void)drawTodosForCharacterRange:(_NSRange)a3 atOrigin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v9 = [(ICPreviewLayoutManager *)self textStorage];
  v10 = *MEMORY[0x1E69B7600];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__ICPreviewLayoutManager_drawTodosForCharacterRange_atOrigin___block_invoke;
  v11[3] = &unk_1E8469868;
  v11[4] = self;
  *&v11[5] = x;
  *&v11[6] = y;
  [v9 ic_enumerateUnclampedAttribute:v10 inRange:location options:length usingBlock:{0, v11}];
}

void __62__ICPreviewLayoutManager_drawTodosForCharacterRange_atOrigin___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isList] && objc_msgSend(v7, "style") == 103)
    {
      [*(a1 + 32) drawTodoItemForListRange:a3 paragraphStyle:a4 atOrigin:{v7, *(a1 + 40), *(a1 + 48)}];
    }
  }
}

- (id)todoImageForParagraphStyle:(id)a3
{
  v3 = [a3 todo];
  v4 = [v3 done];

  v5 = @"circle";
  if (v4)
  {
    v5 = @"checkmark.circle.fill";
  }

  v6 = v5;
  v7 = [MEMORY[0x1E69DC888] ICGrayTodoButtonColor];
  v8 = [MEMORY[0x1E69DC888] ICControlAccentColor];
  v9 = v8;
  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v12 = ICAccessibilitySystemDarkenedColor(v11);

    v11 = v12;
  }

  v13 = [MEMORY[0x1E69DCAB8] ic_largeSystemImageNamed:v6];
  v14 = [v13 ic_imageWithTint:v11];

  return v14;
}

- (void)drawTodoItemForListRange:(_NSRange)a3 paragraphStyle:(id)a4 atOrigin:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  length = a3.length;
  location = a3.location;
  v40 = [(ICPreviewLayoutManager *)self todoImageForParagraphStyle:a4];
  [(ICPreviewLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:[(ICPreviewLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:length effectiveRange:0], 0];
  v43 = CGRectOffset(v42, x, y);
  v10 = v43.origin.x;
  v11 = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v14 = [(ICBaseLayoutManager *)self textContainer];
  [v14 lineFragmentPadding];
  v16 = v15;
  v44.origin.x = v10;
  v44.origin.y = v11;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectInset(v44, v16, 0.0);
  v17 = v45.origin.x;
  v18 = v45.origin.y;
  v19 = v45.size.width;
  v20 = v45.size.height;

  v46.origin.x = v17;
  v46.origin.y = v18;
  v46.size.width = v19;
  v46.size.height = v20;
  IsNull = CGRectIsNull(v46);
  if ((IsNull & 1) == 0 && v40)
  {
    v22 = [(ICBaseLayoutManager *)self textController];
    v23 = [(ICPreviewLayoutManager *)self textStorage];
    v24 = [v22 writingDirectionForRange:location inTextView:length inTextStorage:{0, v23}];

    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    if (v24)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 8.0;
    }

    else
    {
      MinX = CGRectGetMinX(*&v25);
      [v40 size];
      MaxX = MinX - v32;
      v30 = -8.0;
    }

    v33 = MaxX + v30;
    v47.origin.x = v17;
    v47.origin.y = v18;
    v47.size.width = v19;
    v47.size.height = v20;
    MidY = CGRectGetMidY(v47);
    [v40 size];
    v36 = round(MidY + v35 * -0.5);
    [v40 size];
    v38 = v37;
    [v40 size];
    IsNull = [v40 drawInRect:{v33, v36, v38, v39}];
  }

  MEMORY[0x1EEE66BB8](IsNull);
}

@end