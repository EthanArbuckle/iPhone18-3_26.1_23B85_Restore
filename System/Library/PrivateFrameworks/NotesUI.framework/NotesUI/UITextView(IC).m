@interface UITextView(IC)
- (BOOL)currentSelectionIsLink;
- (NSUInteger)ic_rangeFromRect:()IC;
- (double)ic_rectForRange:()IC;
- (double)ic_textContainerOrigin;
- (id)containerViewForAttachments;
- (id)currentEmphasisColorsForStyleSelector;
- (id)currentListStylesForStyleSelector;
- (id)currentParagraphStyleForStyleSelector;
- (id)ic_imageForRange:()IC;
- (id)ic_pkSelectionInteraction;
- (id)ic_pkTiledView;
- (id)ic_selectedRanges;
- (id)ic_textRangeFromCharacterRange:()IC;
- (uint64_t)currentBIUSForStyleSelector;
- (uint64_t)ic_characterRangeFromTextPosition:()IC;
- (uint64_t)ic_characterRangeFromTextRange:()IC;
- (uint64_t)ic_markedTextRange;
- (uint64_t)ic_shouldEnableBlockQuoteForAttachmentsOnlySelection;
- (uint64_t)ic_visibleRange;
- (void)ic_scrollRangeToTop:()IC;
- (void)ic_scrollRangeToVisible:()IC animated:completionHandler:;
- (void)ic_scrollRangeToVisible:()IC consideringInsets:animated:;
- (void)ic_scrollRectToVisible:()IC animated:completionHandler:;
- (void)setIc_selectedRanges:()IC;
@end

@implementation UITextView(IC)

- (id)ic_pkTiledView
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 subviews];
  v2 = [v1 copy];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (uint64_t)ic_shouldEnableBlockQuoteForAttachmentsOnlySelection
{
  v2 = [a1 textStorage];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [a1 textStorage];
  if (![v4 length])
  {

    goto LABEL_7;
  }

  v5 = [a1 textStorage];
  v6 = [v5 string];
  v7 = [a1 selectedRange];
  v9 = [v6 ic_rangeIsValid:{v7, v8}];

  if (!v9)
  {
LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v10 = [a1 textStorage];
  v11 = [v10 string];
  v12 = [a1 selectedRange];
  v14 = [v11 paragraphRangeForRange:{v12, v13}];
  v16 = v15;

  v17 = [a1 textStorage];
  v18 = *MEMORY[0x1E69DB5F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__UITextView_IC__ic_shouldEnableBlockQuoteForAttachmentsOnlySelection__block_invoke;
  v21[3] = &unk_1E846E6A8;
  v21[5] = &v26;
  v21[6] = &v22;
  v21[4] = a1;
  [v17 enumerateAttribute:v18 inRange:v14 options:v16 usingBlock:{0, v21}];

  if (*(v27 + 24) == 1)
  {
    v19 = *(v23 + 24) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v19 & 1;
}

- (id)ic_selectedRanges
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696B098];
  v2 = [a1 selectedRange];
  v4 = [v1 valueWithRange:{v2, v3}];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)ic_scrollRangeToVisible:()IC consideringInsets:animated:
{
  [a1 contentSize];
  if (v12 <= 0.0 || v11 <= 0.0)
  {
    [a1 layoutIfNeeded];
  }

  v13 = [a1 ic_textRangeFromCharacterRange:{a3, a4}];
  [a1 firstRectForRange:v13];
  [a1 ic_scrollRectToVisible:a6 animated:a5 consideringInsets:?];
}

- (void)ic_scrollRangeToTop:()IC
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a1 textStorage];
    v8 = [v7 length];

    if (a3 < v8)
    {
      v9 = [a1 ic_textRangeFromCharacterRange:{a3, a4}];
      [a1 firstRectForRange:v9];
      v11 = v10;
      v13 = v12;

      [a1 setContentOffset:{0.0, v11 + v13 + 1.0}];
    }
  }
}

- (void)setIc_selectedRanges:()IC
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 firstObject];
    v5 = [v4 rangeValue];
    [a1 setSelectedRange:{v5, v6}];
  }
}

- (uint64_t)ic_markedTextRange
{
  v2 = [a1 markedTextRange];
  if (v2)
  {
    v3 = [a1 markedTextRange];
    v4 = [a1 ic_characterRangeFromTextRange:v3];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (uint64_t)ic_characterRangeFromTextRange:()IC
{
  v4 = a3;
  v5 = [a1 beginningOfDocument];
  v6 = [v4 start];
  v7 = [v4 end];

  v8 = [a1 offsetFromPosition:v5 toPosition:v6];
  [a1 offsetFromPosition:v6 toPosition:v7];

  return v8;
}

- (id)ic_textRangeFromCharacterRange:()IC
{
  v7 = [a1 beginningOfDocument];
  v8 = [a1 positionFromPosition:v7 offset:a3];

  v9 = [a1 positionFromPosition:v8 offset:a4];
  v10 = [a1 textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (uint64_t)ic_characterRangeFromTextPosition:()IC
{
  v4 = a3;
  v5 = [a1 beginningOfDocument];
  v6 = [a1 offsetFromPosition:v5 toPosition:v4];

  return v6;
}

- (uint64_t)ic_visibleRange
{
  [a1 visibleTextRect];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v10 = [a1 closestPositionToPoint:{MidX, MinY}];
  v11 = [a1 closestPositionToPoint:{v8, MaxY}];
  v12 = [a1 textRangeFromPosition:v10 toPosition:v11];
  v13 = [a1 ic_characterRangeFromTextRange:v12];

  return v13;
}

- (NSUInteger)ic_rangeFromRect:()IC
{
  MinX = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MaxY = CGRectGetMaxY(v26);
  v14 = [a1 characterRangeAtPoint:{MinX, MinY}];
  v15 = [a1 characterRangeAtPoint:{MaxX, MaxY}];
  v16 = [a1 ic_characterRangeFromTextRange:v14];
  v18 = v17;
  v23.location = [a1 ic_characterRangeFromTextRange:v15];
  v23.length = v19;
  v22.location = v16;
  v22.length = v18;
  location = NSUnionRange(v22, v23).location;

  return location;
}

- (double)ic_rectForRange:()IC
{
  v7 = a3 + a4;
  v8 = [a1 textStorage];
  [v8 ic_range];
  v10 = v9;

  if (v7 > v10)
  {
    return *MEMORY[0x1E695F058];
  }

  if (ICInternalSettingsIsTextKit2Enabled() && ([a1 textLayoutManager], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [a1 textLayoutManager];
    [v13 ic_rectForRange:{a3, a4}];
    v11 = v14;
  }

  else
  {
    v13 = [a1 textContainer];
    v15 = [a1 layoutManager];
    v16 = v15;
    if (v13 && v15)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x4010000000;
      v30 = &unk_1D449C2A9;
      v17 = *(MEMORY[0x1E695F058] + 16);
      v31 = *MEMORY[0x1E695F058];
      v32 = v17;
      v18 = [a1 textStorage];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __34__UITextView_IC__ic_rectForRange___block_invoke;
      v20[3] = &unk_1E846E658;
      v25 = a3;
      v26 = a4;
      v21 = v16;
      v22 = a1;
      v24 = &v27;
      v23 = v13;
      [v18 coordinateReading:v20];

      v11 = v28[4];
      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v11 = *MEMORY[0x1E695F058];
    }
  }

  return v11;
}

- (id)ic_imageForRange:()IC
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v7 = [a1 textLayoutManager];

    if (v7)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[UITextView(IC) ic_imageForRange:]" simulateCrash:1 showAlert:0 format:@"Unavailable in TextKit 2"];
LABEL_5:
      v12 = 0;
      goto LABEL_7;
    }
  }

  [a1 ic_rectForRange:{a3, a4}];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  if (CGRectIsEmpty(v28))
  {
    goto LABEL_5;
  }

  v13 = [a1 layoutManager];
  [a1 convertSize:0 toView:{width, height}];
  v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v14, v15}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__UITextView_IC__ic_imageForRange___block_invoke;
  v19[3] = &unk_1E846E680;
  v20 = v13;
  v21 = a3;
  v22 = a4;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v17 = v13;
  v12 = [v16 imageWithActions:v19];

LABEL_7:

  return v12;
}

- (id)ic_pkSelectionInteraction
{
  v1 = [a1 ic_pkTiledView];
  v2 = [v1 selectionInteraction];

  return v2;
}

- (double)ic_textContainerOrigin
{
  v1 = [a1 textContainer];
  [v1 textContainerOrigin];
  v3 = v2;

  return v3;
}

- (id)containerViewForAttachments
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!containerViewForAttachments_UITextContainerViewClass)
  {
    containerViewForAttachments_UITextContainerViewClass = NSClassFromString(&cfstr_Uitextcontaine.isa);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 subviews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;

          v1 = v8;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

- (void)ic_scrollRangeToVisible:()IC animated:completionHandler:
{
  v10 = a6;
  [a1 ic_rectForRange:{a3, a4}];
  [a1 ic_scrollRectToVisible:a5 animated:v10 completionHandler:?];
}

- (void)ic_scrollRectToVisible:()IC animated:completionHandler:
{
  v14 = a8;
  [a1 ic_scrollRectToVisible:a7 animated:1 consideringInsets:{a2, a3, a4, a5}];
  if (v14)
  {
    [MEMORY[0x1E6979518] animationDuration];
    dispatchMainAfterDelay();
  }
}

- (uint64_t)currentBIUSForStyleSelector
{
  v2 = [a1 selectedRange];
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = [a1 textStorage];
    v7 = [v6 attributesAtIndex:v4 longestEffectiveRange:0 inRange:{v4, v5}];
  }

  else
  {
    v7 = [a1 typingAttributes];
  }

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
  v10 = [v9 intValue];

  v11 = [v8 fontDescriptor];
  v12 = [v11 symbolicTraits];

  v13 = v10 | (v12 >> 1);
  v14 = [v8 fontDescriptor];
  LOBYTE(v12) = [v14 symbolicTraits];

  v15 = (v10 | (2 * v12)) & 2 | v13 & 1u;
  v16 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if ([v16 integerValue])
  {
  }

  else
  {
    v17 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B7620]];
    v18 = [v17 BOOLValue];

    if (!v18)
    {
      goto LABEL_8;
    }
  }

  v15 |= 4uLL;
LABEL_8:
  v19 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  if ([v19 integerValue])
  {
  }

  else
  {
    v20 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B7608]];
    v21 = [v20 BOOLValue];

    if (!v21)
    {
      goto LABEL_12;
    }
  }

  v15 |= 8uLL;
LABEL_12:
  v22 = MEMORY[0x1E69B75D8];
  v23 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
  if ([v23 integerValue])
  {

LABEL_15:
    v15 |= 0x10uLL;
    goto LABEL_16;
  }

  v24 = [v7 objectForKeyedSubscript:*v22];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

- (id)currentParagraphStyleForStyleSelector
{
  v2 = [a1 selectedRange];
  v3 = [a1 textStorage];
  v4 = [v3 attribute:*MEMORY[0x1E69B7600] atIndex:v2 effectiveRange:&v8];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E69B78C0] defaultParagraphStyle];
  }

  v6 = v5;

  return v6;
}

- (id)currentEmphasisColorsForStyleSelector
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 selectedRange];
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__83;
    v20 = __Block_byref_object_dispose__83;
    v21 = [MEMORY[0x1E695DF70] array];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__83;
    v14[4] = __Block_byref_object_dispose__83;
    v15 = [MEMORY[0x1E695DFA8] set];
    v6 = [a1 textStorage];
    v7 = *MEMORY[0x1E69B75D8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__UITextView_IC__currentEmphasisColorsForStyleSelector__block_invoke;
    v13[3] = &unk_1E846A678;
    v13[4] = v14;
    v13[5] = &v16;
    [v6 enumerateAttribute:v7 inRange:v4 options:v5 usingBlock:{0, v13}];

    v8 = [v17[5] copy];
    _Block_object_dispose(v14, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    objc_opt_class();
    v9 = [a1 typingAttributes];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
    v11 = ICDynamicCast();

    if (v11)
    {
      v22[0] = v11;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  return v8;
}

- (id)currentListStylesForStyleSelector
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 selectedRange];
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__83;
    v20 = __Block_byref_object_dispose__83;
    v21 = [MEMORY[0x1E695DF70] array];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__83;
    v14[4] = __Block_byref_object_dispose__83;
    v15 = [MEMORY[0x1E695DFA8] set];
    v6 = [a1 textStorage];
    v7 = *MEMORY[0x1E69B7600];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__UITextView_IC__currentListStylesForStyleSelector__block_invoke;
    v13[3] = &unk_1E846E6D0;
    v13[4] = v14;
    v13[5] = &v16;
    [v6 enumerateAttribute:v7 inRange:v4 options:v5 usingBlock:{0, v13}];

    v8 = [v17[5] copy];
    _Block_object_dispose(v14, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = [a1 typingAttributes];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

    if ([v10 isList])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v10, "style")}];
      v22[0] = v11;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  return v8;
}

- (BOOL)currentSelectionIsLink
{
  v2 = [a1 selectedRange];
  v4 = v3;
  v14 = 0;
  v15 = 0;
  v5 = [a1 textStorage];
  v6 = [v5 attribute:*MEMORY[0x1E69DB5F8] atIndex:v2 effectiveRange:&v14];

  if (v6 && (v14 == v2 ? (v7 = v15 == v4) : (v7 = 0), v7 && ([v6 fileType], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69B7558]), v8, (v9 & 1) != 0)))
  {
    v10 = 1;
  }

  else
  {
    v11 = [a1 textStorage];
    v12 = [v11 attribute:*MEMORY[0x1E69DB670] atIndex:v2 effectiveRange:&v14];

    v10 = v12 && v14 == v2 && v15 == v4;
  }

  return v10;
}

@end