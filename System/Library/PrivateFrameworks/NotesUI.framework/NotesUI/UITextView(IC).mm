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
  subviews = [self subviews];
  v2 = [subviews copy];

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
  textStorage = [self textStorage];
  if (!textStorage)
  {
    goto LABEL_7;
  }

  v3 = textStorage;
  textStorage2 = [self textStorage];
  if (![textStorage2 length])
  {

    goto LABEL_7;
  }

  textStorage3 = [self textStorage];
  string = [textStorage3 string];
  selectedRange = [self selectedRange];
  v9 = [string ic_rangeIsValid:{selectedRange, v8}];

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
  textStorage4 = [self textStorage];
  string2 = [textStorage4 string];
  selectedRange2 = [self selectedRange];
  v14 = [string2 paragraphRangeForRange:{selectedRange2, v13}];
  v16 = v15;

  textStorage5 = [self textStorage];
  v18 = *MEMORY[0x1E69DB5F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__UITextView_IC__ic_shouldEnableBlockQuoteForAttachmentsOnlySelection__block_invoke;
  v21[3] = &unk_1E846E6A8;
  v21[5] = &v26;
  v21[6] = &v22;
  v21[4] = self;
  [textStorage5 enumerateAttribute:v18 inRange:v14 options:v16 usingBlock:{0, v21}];

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
  selectedRange = [self selectedRange];
  v4 = [v1 valueWithRange:{selectedRange, v3}];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)ic_scrollRangeToVisible:()IC consideringInsets:animated:
{
  [self contentSize];
  if (v12 <= 0.0 || v11 <= 0.0)
  {
    [self layoutIfNeeded];
  }

  v13 = [self ic_textRangeFromCharacterRange:{a3, a4}];
  [self firstRectForRange:v13];
  [self ic_scrollRectToVisible:a6 animated:a5 consideringInsets:?];
}

- (void)ic_scrollRangeToTop:()IC
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    textStorage = [self textStorage];
    v8 = [textStorage length];

    if (a3 < v8)
    {
      v9 = [self ic_textRangeFromCharacterRange:{a3, a4}];
      [self firstRectForRange:v9];
      v11 = v10;
      v13 = v12;

      [self setContentOffset:{0.0, v11 + v13 + 1.0}];
    }
  }
}

- (void)setIc_selectedRanges:()IC
{
  v7 = a3;
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    rangeValue = [firstObject rangeValue];
    [self setSelectedRange:{rangeValue, v6}];
  }
}

- (uint64_t)ic_markedTextRange
{
  markedTextRange = [self markedTextRange];
  if (markedTextRange)
  {
    markedTextRange2 = [self markedTextRange];
    v4 = [self ic_characterRangeFromTextRange:markedTextRange2];
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
  beginningOfDocument = [self beginningOfDocument];
  start = [v4 start];
  v7 = [v4 end];

  v8 = [self offsetFromPosition:beginningOfDocument toPosition:start];
  [self offsetFromPosition:start toPosition:v7];

  return v8;
}

- (id)ic_textRangeFromCharacterRange:()IC
{
  beginningOfDocument = [self beginningOfDocument];
  v8 = [self positionFromPosition:beginningOfDocument offset:a3];

  v9 = [self positionFromPosition:v8 offset:a4];
  v10 = [self textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (uint64_t)ic_characterRangeFromTextPosition:()IC
{
  v4 = a3;
  beginningOfDocument = [self beginningOfDocument];
  v6 = [self offsetFromPosition:beginningOfDocument toPosition:v4];

  return v6;
}

- (uint64_t)ic_visibleRange
{
  [self visibleTextRect];
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
  v10 = [self closestPositionToPoint:{MidX, MinY}];
  v11 = [self closestPositionToPoint:{v8, MaxY}];
  v12 = [self textRangeFromPosition:v10 toPosition:v11];
  v13 = [self ic_characterRangeFromTextRange:v12];

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
  v14 = [self characterRangeAtPoint:{MinX, MinY}];
  v15 = [self characterRangeAtPoint:{MaxX, MaxY}];
  v16 = [self ic_characterRangeFromTextRange:v14];
  v18 = v17;
  v23.location = [self ic_characterRangeFromTextRange:v15];
  v23.length = v19;
  v22.location = v16;
  v22.length = v18;
  location = NSUnionRange(v22, v23).location;

  return location;
}

- (double)ic_rectForRange:()IC
{
  v7 = a3 + a4;
  textStorage = [self textStorage];
  [textStorage ic_range];
  v10 = v9;

  if (v7 > v10)
  {
    return *MEMORY[0x1E695F058];
  }

  if (ICInternalSettingsIsTextKit2Enabled() && ([self textLayoutManager], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    textLayoutManager = [self textLayoutManager];
    [textLayoutManager ic_rectForRange:{a3, a4}];
    v11 = v14;
  }

  else
  {
    textLayoutManager = [self textContainer];
    layoutManager = [self layoutManager];
    v16 = layoutManager;
    if (textLayoutManager && layoutManager)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x4010000000;
      v30 = &unk_1D449C2A9;
      v17 = *(MEMORY[0x1E695F058] + 16);
      v31 = *MEMORY[0x1E695F058];
      v32 = v17;
      textStorage2 = [self textStorage];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __34__UITextView_IC__ic_rectForRange___block_invoke;
      v20[3] = &unk_1E846E658;
      v25 = a3;
      v26 = a4;
      v21 = v16;
      selfCopy = self;
      v24 = &v27;
      v23 = textLayoutManager;
      [textStorage2 coordinateReading:v20];

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
    textLayoutManager = [self textLayoutManager];

    if (textLayoutManager)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[UITextView(IC) ic_imageForRange:]" simulateCrash:1 showAlert:0 format:@"Unavailable in TextKit 2"];
LABEL_5:
      v12 = 0;
      goto LABEL_7;
    }
  }

  [self ic_rectForRange:{a3, a4}];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  if (CGRectIsEmpty(v28))
  {
    goto LABEL_5;
  }

  layoutManager = [self layoutManager];
  [self convertSize:0 toView:{width, height}];
  v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v14, v15}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__UITextView_IC__ic_imageForRange___block_invoke;
  v19[3] = &unk_1E846E680;
  v20 = layoutManager;
  v21 = a3;
  v22 = a4;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v17 = layoutManager;
  v12 = [v16 imageWithActions:v19];

LABEL_7:

  return v12;
}

- (id)ic_pkSelectionInteraction
{
  ic_pkTiledView = [self ic_pkTiledView];
  selectionInteraction = [ic_pkTiledView selectionInteraction];

  return selectionInteraction;
}

- (double)ic_textContainerOrigin
{
  textContainer = [self textContainer];
  [textContainer textContainerOrigin];
  v3 = v2;

  return v3;
}

- (id)containerViewForAttachments
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!containerViewForAttachments_UITextContainerViewClass)
  {
    containerViewForAttachments_UITextContainerViewClass = NSClassFromString(&cfstr_Uitextcontaine.isa);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [selfCopy subviews];
  v3 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;

          selfCopy = v8;
          goto LABEL_13;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return selfCopy;
}

- (void)ic_scrollRangeToVisible:()IC animated:completionHandler:
{
  v10 = a6;
  [self ic_rectForRange:{a3, a4}];
  [self ic_scrollRectToVisible:a5 animated:v10 completionHandler:?];
}

- (void)ic_scrollRectToVisible:()IC animated:completionHandler:
{
  v14 = a8;
  [self ic_scrollRectToVisible:a7 animated:1 consideringInsets:{a2, a3, a4, a5}];
  if (v14)
  {
    [MEMORY[0x1E6979518] animationDuration];
    dispatchMainAfterDelay();
  }
}

- (uint64_t)currentBIUSForStyleSelector
{
  selectedRange = [self selectedRange];
  if (v3)
  {
    v4 = selectedRange;
    v5 = v3;
    textStorage = [self textStorage];
    typingAttributes = [textStorage attributesAtIndex:v4 longestEffectiveRange:0 inRange:{v4, v5}];
  }

  else
  {
    typingAttributes = [self typingAttributes];
  }

  v8 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v9 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
  intValue = [v9 intValue];

  fontDescriptor = [v8 fontDescriptor];
  symbolicTraits = [fontDescriptor symbolicTraits];

  v13 = intValue | (symbolicTraits >> 1);
  fontDescriptor2 = [v8 fontDescriptor];
  LOBYTE(symbolicTraits) = [fontDescriptor2 symbolicTraits];

  v15 = (intValue | (2 * symbolicTraits)) & 2 | v13 & 1u;
  v16 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if ([v16 integerValue])
  {
  }

  else
  {
    v17 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7620]];
    bOOLValue = [v17 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_8;
    }
  }

  v15 |= 4uLL;
LABEL_8:
  v19 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  if ([v19 integerValue])
  {
  }

  else
  {
    v20 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7608]];
    bOOLValue2 = [v20 BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_12;
    }
  }

  v15 |= 8uLL;
LABEL_12:
  v22 = MEMORY[0x1E69B75D8];
  v23 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
  if ([v23 integerValue])
  {

LABEL_15:
    v15 |= 0x10uLL;
    goto LABEL_16;
  }

  v24 = [typingAttributes objectForKeyedSubscript:*v22];
  bOOLValue3 = [v24 BOOLValue];

  if (bOOLValue3)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

- (id)currentParagraphStyleForStyleSelector
{
  selectedRange = [self selectedRange];
  textStorage = [self textStorage];
  v4 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:selectedRange effectiveRange:&v8];

  if (v4)
  {
    defaultParagraphStyle = v4;
  }

  else
  {
    defaultParagraphStyle = [MEMORY[0x1E69B78C0] defaultParagraphStyle];
  }

  v6 = defaultParagraphStyle;

  return v6;
}

- (id)currentEmphasisColorsForStyleSelector
{
  v22[1] = *MEMORY[0x1E69E9840];
  selectedRange = [self selectedRange];
  if (v3)
  {
    v4 = selectedRange;
    v5 = v3;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__83;
    v20 = __Block_byref_object_dispose__83;
    array = [MEMORY[0x1E695DF70] array];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__83;
    v14[4] = __Block_byref_object_dispose__83;
    v15 = [MEMORY[0x1E695DFA8] set];
    textStorage = [self textStorage];
    v7 = *MEMORY[0x1E69B75D8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__UITextView_IC__currentEmphasisColorsForStyleSelector__block_invoke;
    v13[3] = &unk_1E846A678;
    v13[4] = v14;
    v13[5] = &v16;
    [textStorage enumerateAttribute:v7 inRange:v4 options:v5 usingBlock:{0, v13}];

    v8 = [v17[5] copy];
    _Block_object_dispose(v14, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    objc_opt_class();
    typingAttributes = [self typingAttributes];
    v10 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
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
  selectedRange = [self selectedRange];
  if (v3)
  {
    v4 = selectedRange;
    v5 = v3;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__83;
    v20 = __Block_byref_object_dispose__83;
    array = [MEMORY[0x1E695DF70] array];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__83;
    v14[4] = __Block_byref_object_dispose__83;
    v15 = [MEMORY[0x1E695DFA8] set];
    textStorage = [self textStorage];
    v7 = *MEMORY[0x1E69B7600];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__UITextView_IC__currentListStylesForStyleSelector__block_invoke;
    v13[3] = &unk_1E846E6D0;
    v13[4] = v14;
    v13[5] = &v16;
    [textStorage enumerateAttribute:v7 inRange:v4 options:v5 usingBlock:{0, v13}];

    v8 = [v17[5] copy];
    _Block_object_dispose(v14, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    typingAttributes = [self typingAttributes];
    v10 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

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
  selectedRange = [self selectedRange];
  v4 = v3;
  v14 = 0;
  v15 = 0;
  textStorage = [self textStorage];
  v6 = [textStorage attribute:*MEMORY[0x1E69DB5F8] atIndex:selectedRange effectiveRange:&v14];

  if (v6 && (v14 == selectedRange ? (v7 = v15 == v4) : (v7 = 0), v7 && ([v6 fileType], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69B7558]), v8, (v9 & 1) != 0)))
  {
    v10 = 1;
  }

  else
  {
    textStorage2 = [self textStorage];
    v12 = [textStorage2 attribute:*MEMORY[0x1E69DB670] atIndex:selectedRange effectiveRange:&v14];

    v10 = v12 && v14 == selectedRange && v15 == v4;
  }

  return v10;
}

@end